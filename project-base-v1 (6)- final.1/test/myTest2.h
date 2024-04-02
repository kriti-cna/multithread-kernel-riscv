//
// Created by os on 2/16/23.
//

#ifndef PROJECT_BASE_V1_5_1_MYTEST2_H
#define PROJECT_BASE_V1_5_1_MYTEST2_H

#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

bool finishedA = false;
bool finishedB = false;
bool finishedC = false;

Thread* threads[3];

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}

    void run() override {
        workerBodyA(nullptr);
    }
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}

    void run() override {
        workerBodyB(nullptr);
    }
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}

    void run() override {
        workerBodyC(nullptr);
    }
};


void WorkerA::workerBodyA(void *arg) {
    for (uint64 i = 0; i < 10; i++) {
        if(i==3){
            //join(threads[2]);
        }

        printString( "A");
        printString("\n");
        thread_dispatch();
    }
    printString("A finished!\n");
    finishedA = true;
    thread_dispatch();
}

void WorkerB::workerBodyB(void *arg) {
    for (uint64 i = 0; i < 10; i++) {
        if(i ==3){
            join(threads[2]);
        }
        printString( "B");
        printString("\n");
        thread_dispatch();
    }
    printString("B finished!\n");
    finishedB = true;
    thread_dispatch();
}

void WorkerC::workerBodyC(void *arg) {
    for (uint64 i = 0; i < 10; i++) {
        printString( "C");
        printString("\n");
        thread_dispatch();
    }
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}



void myTest2() {


    threads[0] = new WorkerA();
    printString("ThreadA created\n");

    threads[1] = new WorkerB();
    printString("ThreadB created\n");

    threads[2] = new WorkerC();
    printString("ThreadC created\n");


    for(int i=0; i<3; i++) {
        threads[i]->start();
    }

    while (!(finishedB && finishedA && finishedC)) {
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
}



#endif //PROJECT_BASE_V1_5_1_MYTEST2_H
