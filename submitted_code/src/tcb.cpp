//
// Created by os on 9/6/22.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/memoryAllocator.hpp"

TCB *TCB::running = nullptr;


void wrap(){
    TCB::running->body(TCB::running->arg);
    TCB::running->setFinished(true);
    TCB::dispatch();
}

TCB *TCB::createThread(Body body, void*arg, uint64* stack)
{
    TCB* thr = (TCB*)MemoryAllocator::allocateB(sizeof(TCB));
    fillThread(thr, body, arg, stack);
    return thr;
}

void TCB::yield()
{
    //Riscv::pushRegisters();
    TCB::dispatch();
    //Riscv::popRegisters();
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::fillThread(TCB *thr, TCB::Body body, void *arg, uint64 *stack) {
    thr->arg = arg;
    thr->body = body;
    thr->finished = false;
    if(body!= nullptr) {
        thr->stack = stack;
        thr->context.ra = (uint64)(&wrap);
        thr->context.sp = (uint64)&stack[STACK_SIZE];
    }else{
        thr->stack = nullptr;
        thr->context.ra = 0;
        thr->context.sp = 0;
    }
    if (body != nullptr) { Scheduler::put(thr);}
}

TCB *TCB::createThreadPending(TCB::Body body, void *arg, uint64 *stack) {
    TCB* thr = (TCB*)MemoryAllocator::allocateB(sizeof(TCB));
    fillThreadPending(thr, body, arg, stack);
    return thr;
}

void TCB::fillThreadPending(TCB *thr, TCB::Body body, void *arg, uint64 *stack) {
    thr->arg = arg;
    thr->body = body;
    thr->finished = false;
    if(body!= nullptr) {
        thr->stack = stack;
        thr->context.ra = (uint64)(&wrap);
        thr->context.sp = (uint64)&stack[STACK_SIZE];
    }else{
        thr->stack = nullptr;
        thr->context.ra = 0;
        thr->context.sp = 0;
    }
}

