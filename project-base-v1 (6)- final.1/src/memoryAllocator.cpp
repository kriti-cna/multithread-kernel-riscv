//
// Created by os on 9/5/22.
//

#include "../h/memoryAllocator.hpp"


MemNode* MemoryAllocator::fMemHead = nullptr;
MemNode* MemoryAllocator::oMemHead = nullptr;


MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}

int MemoryAllocator::connectNext(MemNode *cur) {
    if(!cur) return 0;
    if(cur->next && (char *)cur + cur->size == (char*)(cur->next)) {
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        if (cur->next) cur->next->prev = cur;
        return 1;
    }
    else
        return 0;
}

int MemoryAllocator::FreeMem(void* addr) { // dobija pokazivac na neki alocirani chonk memorije
    // newSeg treba da se obrise iz liste zauzetih
    // i doda u listu slobodnih blokova
    // u listi slobodnih chonkova se primenjuje spajanje
    // a u listi zauzetih ne

    // dodavanje u listu slobodnih
    // newSeg ukazuje na element liste zauzetih clanova i njegova velicina ostaje ista
    // newSeg treba da se ubaci iza cur
    addr = (void*)((char*)addr - MEM_BLOCK_SIZE);

    if(addr == nullptr || addr> HEAP_END_ADDR) return -1;   // nevazeca adresa
    MemNode* newSeg = (MemNode*)addr;

    //trazenje segmenta u listi zauzetih
    MemNode* curr = 0;
    if(!oMemHead || addr <oMemHead){
        return -2; // adresa se ne nalazi u listi zauzetih chonkova
    }
    else{
        for(curr = oMemHead; curr!=0 && addr!=curr; curr = curr->next);}
    if(addr!=(curr)) return -2; // adresa se ne nalazi u listi zauzetih chonkova

    // sada je u addr sigurno neki element iz liste zauzetih
    // izbacivanje elementa iz liste zauzetih
    if(oMemHead == newSeg) oMemHead = newSeg->next;
    if(newSeg ->next != nullptr) newSeg->next->prev = newSeg->prev;
    if(newSeg ->prev != nullptr) newSeg->prev->next = newSeg->next;


    // trazenje mesta za novi element free liste
    MemNode* cur = 0;
    if(!fMemHead || addr <(char*)fMemHead){
        cur = 0; // block je na prvom mestu
    }
    else{
        for(cur = fMemHead; cur->next !=0 && addr>(char*)(cur->next); cur = cur->next);}


    //uvezivanje novog segmenta u free listu

    //newSeg->size je vec upisan podatak
    newSeg->prev = cur;
    if(cur) newSeg->next = cur ->next;
    else newSeg->next = fMemHead;
    if(newSeg ->next) newSeg->next->prev = newSeg;
    if(cur) cur->next = newSeg;
    else fMemHead = newSeg;

    connectNext(cur);
    connectNext(newSeg);
    return 0;
}


void *MemoryAllocator::allocate(size_t size) {
    //void *addr = fmemhead;
    //size je sada broj blokova
    //size_t nsize = size * MEM_BLOCK_SIZE;
    //nsize += sizeof(MemNode);
    //size_t blocks = nsize/ MEM_BLOCK_SIZE + (nsize % MEM_BLOCK_SIZE? 1:0);
    size_t nsize = (size + 1) * MEM_BLOCK_SIZE; // koliko blokova je potrebno + 1 blok za MemNode

    // izbacivanje iz liste slobodnih fragmenata - first fit

    MemNode *ret = 0;
    for(MemNode* cur = fMemHead; cur!=0; cur = cur->next) {
        if (cur->size < nsize) continue;
        if (cur->size - nsize <= sizeof(MemNode)) { // nema novog segmenta
            if (cur->prev) cur->prev->next = cur->next;
            else fMemHead = cur->next;
            if (cur->next) cur->next->prev = cur->prev;
            ret = cur;
            break;
        } else {
            MemNode *newSeg = (MemNode *) ((char *) cur + nsize);
            if (cur->prev) cur->prev->next = newSeg;
            else fMemHead = newSeg;
            if (cur->next) cur->next->prev = newSeg;
            newSeg->prev = cur->prev;
            newSeg->next = cur->next;
            newSeg->size = cur->size - nsize;
            ret = cur;
            break;
        }
    }
    if(ret == 0) return nullptr;

    // uvezivanje ret u listu zauzetih
    ret->size = nsize;
    MemNode *t = 0;
    if(!oMemHead || ret<oMemHead)
        t = 0;
    else
        for(t = oMemHead; t->next != 0 && (char*)ret > (char*)t->next; t = t->next);
    ret->prev = t;
    if(t) ret->next =  t->next;
    else ret->next = oMemHead;
    if(ret->next) ret->next->prev = ret;
    if(t) t->next = ret;
    else oMemHead = ret;

    return (void*)((char*)ret+ MEM_BLOCK_SIZE);
}

MemoryAllocator::MemoryAllocator() {
    fMemHead = (MemNode*)HEAP_START_ADDR;
    fMemHead->next = fMemHead->prev = nullptr;
    fMemHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    oMemHead = 0;
}

void *MemoryAllocator::allocateB(size_t size){
    //size je sada broj bajtova
    //size_t nsize = size + sizeof(MemNode);

    size_t blocks = size/ MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE? 1:0);
    blocks ++;
    size_t nsize = blocks* MEM_BLOCK_SIZE;

    // izbacivanje iz liste slobodnih fragmenata - first fit

    MemNode *ret = 0;
    for(MemNode* cur = fMemHead; cur!=0; cur = cur->next) {
        if (cur->size < nsize) continue;
        if (cur->size - nsize <= sizeof(MemNode)) { // nema novog segmenta
            if (cur->prev) cur->prev->next = cur->next;
            else fMemHead = cur->next;
            if (cur->next) cur->next->prev = cur->prev;
            ret = cur;
            break;
        } else {
            MemNode *newSeg = (MemNode *) ((char *) cur + nsize);
            if (cur->prev) cur->prev->next = newSeg;
            else fMemHead = newSeg;
            if (cur->next) cur->next->prev = newSeg;
            newSeg->prev = cur->prev;
            newSeg->next = cur->next;
            newSeg->size = cur->size - nsize;
            ret = cur;
            break;
        }
    }
    if(ret == 0) return nullptr;

    // uvezivanje ret u listu zauzetih
    ret->size = nsize;
    MemNode *t = 0;
    if(!oMemHead || ret<oMemHead)
        t = 0;
    else
        for(t = oMemHead; t->next != 0 && (char*)ret > (char*)t->next; t = t->next);
    ret->prev = t;
    if(t) ret->next =  t->next;
    else ret->next = oMemHead;
    if(ret->next) ret->next->prev = ret;
    if(t) t->next = ret;
    else oMemHead = ret;

    return (void*)((char*)ret+ MEM_BLOCK_SIZE);
}
