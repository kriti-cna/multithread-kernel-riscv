//
// Created by os on 9/6/22.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP


#include "list.hpp"

class TCB;

class Scheduler
{
private:
    Scheduler() = default;


public:

    Scheduler(const Scheduler&) = delete;
    Scheduler& operator=(const Scheduler&) = delete;
    Scheduler(Scheduler&&) = delete;
    Scheduler& operator=(Scheduler&&) = delete;

    static List<TCB> readyCoroutineQueue;

    static TCB *get();
    static void put(TCB *tcb);

};



#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP
