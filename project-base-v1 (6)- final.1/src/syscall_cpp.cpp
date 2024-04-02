//
// Created by os on 9/5/22.
//

#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"

void *operator new(size_t n) { return mem_alloc(n); }
void *operator new[](size_t n) { return mem_alloc(n); }

void operator delete(void *p) noexcept { mem_free(p); }
void operator delete[](void *p) noexcept { mem_free(p); }


Thread::Thread(void (*body)(void *), void *arg) {
    started = 0;
    thread_create_pending(&myHandle, body, arg);
}

void wrapper (void* t) {
    Thread *tr = (Thread*)t;
    tr->run();
}

Thread::Thread(){
    started = 0;
    thread_create_pending(&myHandle, wrapper, this);
}

void Thread::dispatch() {
    thread_dispatch();
}


int Thread::start() {
    if(!started){
        Scheduler::put(myHandle);
        myHandle->setFinished (false);
        }
        started = 1;
        return 0;
}

Thread::~Thread() {
    thread_exit();
}

