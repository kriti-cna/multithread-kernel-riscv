//
// Created by os on 9/5/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_SYSCALL_CPP_HPP

//#include "../lib/hw.h"
#include "syscall_c.h"
#include "../h/syscall_c.h"


void *operator new(size_t n);
void *operator new[](size_t n);

void operator delete(void *p)noexcept;
void operator delete[](void *p)noexcept;

class Thread {
public:
    Thread(void (*body)(void *), void *arg);

    virtual ~Thread();

    int start();

    static void dispatch();

    friend void wrapper(void* t);

    //static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}

private:
    int started;
    thread_t myHandle;
};


#endif //PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
