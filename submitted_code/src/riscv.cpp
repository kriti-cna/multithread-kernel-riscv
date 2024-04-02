//
// Created by os on 9/5/22.
//

#include "../h/riscv.hpp"
#include "../h/memoryAllocator.hpp"
#include  "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"

uint64 base;



void Riscv::handleSupervisorTrap(){
    uint64 scause = r_scause();
    if(scause == 0x8000000000000001UL){
        //Supervisor Software Interrupt
        mc_sip(SIP_SSIE);;
    }
    if(scause == 0x8000000000000009UL){
        //"Supervisor External Interrupt
        console_handler();
    }
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
        // desio se ecall iz korisnickog odnosno sistemskog rezima
        uint64 sepc = r_sepc() + 4;
        //uint64 sstatus = r_sstatus();
        uint64 code;
        __asm__ volatile("mv %0, a0" :"=r" (code));
        if(code == 0x1){
            uint64 bl = 0;
            __asm__ volatile("mv %0, a1" :"=r" (bl));
            // arg je sada broj blokova
            void *addr = MemoryAllocator::allocate(bl);
            __asm__ volatile("mv a0, %0" :: "r" ((uint64)addr));
            __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
            //__asm__ volatile("mv 0x50(x31), %0" :: "r" ((uint64)addr));
        }
        if(code == 0x2){
            uint64 addr;
            __asm__ volatile("mv %0, a1" :"=r" (addr));
            int ret = MemoryAllocator::FreeMem((void*)addr);
            __asm__ volatile("mv a0, %0" :: "r" (ret));
            __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
        }
        if(code == 0x11){
            thread_t *handle;
            void(*body)(void*);
            void *arg;
            __asm__ volatile("mv %0, a1" :"=r" (handle));
            __asm__ volatile("mv %0, a2" :"=r" (body));
            __asm__ volatile("mv %0, a3" :"=r" (arg));
            uint64* stack;
            volatile void* st = MemoryAllocator::allocateB(1024*sizeof(uint64));
            stack = (uint64*)st;
            *handle = TCB::createThread(body, arg, stack);
            if(*handle!= nullptr) {
                __asm__ volatile("mv a0, %0" :: "r" (1));
                __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
            }
            else {
                __asm__ volatile("mv a0, %0" :: "r" (0));
                __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
            }
        }
        if(code == 0x12){
            TCB::running->setFinished(true);
            //__asm__ volatile("mv a0, %0" :: "r" ((uint64)code));
            //__asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));

        }
        if(code == 0x13){
            uint64 sstatus = r_sstatus();
            TCB::dispatch();
            w_sstatus(sstatus);
        }
        if(code == 0x14) {
            thread_t *handle;
            void (*body)(void *);
            void *arg;
            __asm__ volatile("mv %0, a1" :"=r" (handle));
            __asm__ volatile("mv %0, a2" :"=r" (body));
            __asm__ volatile("mv %0, a3" :"=r" (arg));
            uint64 *stack;
            volatile void *st = MemoryAllocator::allocateB(1024 * sizeof(uint64));
            stack = (uint64 *) st;
            *handle = TCB::createThreadPending(body, arg, stack);
            //if(*handle!=nullptr) __asm__ volatile("li 0x50(x31), 0x01");
            if (*handle != nullptr) {
                __asm__ volatile("mv a0, %0"::"r" (1));
                __asm__ volatile("sd a0, 0x50(%0)"::"r" (base));
            } else {
                __asm__ volatile("mv a0, %0"::"r" (0));
                __asm__ volatile("sd a0, 0x50(%0)"::"r" (base));
            }
        }
        if(code == 0x15){// promena rezima pri povratku iz prekidne rutine
            mc_sstatus(SSTATUS_SPP);
            ms_sstatus(SSTATUS_SPIE);
            //sstatus = r_sstatus();
        }
        if(code == 0x41){
            char c;
            c = __getc();
            __asm__ volatile("mv a0, %0" :: "r" (c));
            __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
            console_handler();
        }

        if(code == 0x42){
            char c;
            __asm__ volatile("mv %0, a1" :"=r" (c));
            __putc(c);
            console_handler();
        }
        //w_sstatus(sstatus);
        w_sepc(sepc);

    }
    if(scause == 0x0000000000000002UL){
        printString("Ilegalna instrukcija \n");
    }
    if(scause == 0x0000000000000005UL){
        printString("Nedozvoljena adresa citanja \n");
    }
    if(scause == 0x0000000000000007UL){
        printString("Nedozvoljena adresa upisa \n");
    }
}

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}