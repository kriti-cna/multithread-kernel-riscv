//
// Created by os on 9/5/22.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP


#include "../lib/hw.h"

struct MemNode{
    size_t size;
    MemNode *next, *prev;
};

class MemoryAllocator {

    static MemNode *fMemHead; // lista slobodnih blokova memorije
    static MemNode *oMemHead; // occupied memory - lista zauzetih blokova
    MemoryAllocator();
    //MemoryAllocator(MemoryAllocator const&);
    //void operator=(MemoryAllocator const&);

public:
    MemoryAllocator(MemoryAllocator const&) = delete;
    void operator=(MemoryAllocator const&)  = delete;
    static MemoryAllocator& getInstance();
    static void *allocate(size_t);
    static void *allocateB(size_t);
    //static void *allocateB(size_t);
    static int FreeMem(void *);
    static int connectNext(MemNode *);

};



#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
