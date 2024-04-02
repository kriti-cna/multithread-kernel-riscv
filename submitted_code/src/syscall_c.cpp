//
// Created by os on 9/5/22.
//

#include "../h/syscall_c.h"
#include "../h/tcb.hpp"

class TCB;

void* mem_alloc (size_t size){ // size u bajtovima
    size_t blocks = 0;
    blocks = size/ MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE? 1:0);
    //size_t nsize = blocks*MEM_BLOCK_SIZE;
    void* ret = nullptr;
    __asm__ volatile("mv a1, %0" :: "r" (blocks));
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall"); // size u blokovima
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    //ret = memoryAllocator::allocate(blocks);
    return ret;
}

int mem_free(void* addr){
    int ret;
    __asm__ volatile("mv a1, %0" :: "r" (addr));
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
};


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    //stack = MemoryAllocator::allocate(1024*sizeof(uint64))
    __asm__ volatile("mv a3, %0" :: "r" (arg));
    __asm__ volatile("mv a2, %0" :: "r" (start_routine));
    __asm__ volatile("mv a1, %0" :: "r" (handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int thread_create_pending(thread_t* handle, void(*start_routine)(void*), void* arg){
    //stack = MemoryAllocator::allocate(1024*sizeof(uint64))
    __asm__ volatile("mv a3, %0" :: "r" (arg));
    __asm__ volatile("mv a2, %0" :: "r" (start_routine));
    __asm__ volatile("mv a1, %0" :: "r" (handle));
    __asm__ volatile("li a0, 0x14");
    __asm__ volatile("ecall");
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int thread_exit() {
    int ret;
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

void thread_dispatch(){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

void exit_supervisor(){
    __asm__ volatile("li a0, 0x15");
    __asm__ volatile("ecall");
}

void putc(char c){
    __asm__ volatile("mv a1, %0" :: "r" (c));
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile("ecall");
}

char getc(){
    char cc;
    __asm__ volatile("li a0, 0x41");
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (cc));
    return cc;
}


