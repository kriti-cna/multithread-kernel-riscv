//
// Created by os on 9/5/22.
//

#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

extern void userMain();

int main(){
    MemoryAllocator::getInstance();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    TCB *m = nullptr;
    m = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running = m;
    exit_supervisor();
    //int a = 0;
    //asm volatile("csrw sstatus, %0" : : "r" (a));
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    /*auto *c = new MemNode[8];
    int *a = new int();
    uint64 *u = new uint64();
    delete(a);
    delete(u);
    delete[](c);*/
    userMain();
    return 0;
}