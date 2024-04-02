//
// Created by os on 9/6/22.
//

#ifndef PROJECT_BASE_V1_1_TCB_HPP
#define PROJECT_BASE_V1_1_TCB_HPP


#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../h/memoryAllocator.hpp"
#include "syscall_c.h"

// Coroutine Control Block
class TCB
{
public:

    //TCB() = default;

    //~TCB() { MemoryAllocator::FreeMem((void*)stack); }
    ~TCB() { delete[] stack; }
    void* operator new(size_t size) {
        return MemoryAllocator::allocateB(size);
    }
    void operator delete(void* address) {
        MemoryAllocator::FreeMem(address);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    using Body = void (*)(void*);

    //static TCB *createCoroutine(Body body);
    static TCB *createThread(Body body, void*arg, uint64* stack);

    static TCB *createThreadPending(Body body, void*arg, uint64* stack);

    static void fillThread(TCB* tcb, Body body, void*arg, uint64* stack);

    static void fillThreadPending(TCB* tcb, Body body, void*arg, uint64* stack);

    static void yield();

    static void dispatch();

    static TCB *running;

    friend void wrap();

    friend class Thread;

    friend void wrapper(void*);


private:

    int id;


    explicit TCB(Body body, void *arg, uint64 *stack) :
            arg(arg),
            body(body),
            stack(body != nullptr ? stack : nullptr),
            context({body != nullptr ? (uint64) body : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false)

    {
        if (body != nullptr) { Scheduler::put(this); }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    void* arg;
    Body body;
    uint64 *stack;
    Context context;
    bool finished;

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static uint64 constexpr STACK_SIZE = 1024;
};


#endif //PROJECT_BASE_V1_1_TCB_HPP
