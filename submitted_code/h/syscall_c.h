//
// Created by os on 9/5/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H

#include "../lib/hw.h"
#include "../h/tcb.hpp"

typedef TCB* thread_t;
void* mem_alloc (size_t);
int mem_free (void*);
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);
int thread_create_pending(thread_t* handle, void(*start_routine)(void*), void* arg);
int thread_exit ();
void exit_supervisor();
void thread_dispatch ();
void putc(char c);
char getc();

#endif //PROJECT_BASE_V1_1_SYSCALL_C_H
