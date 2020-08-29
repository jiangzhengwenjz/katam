#ifndef GUARD_MALLOC_EWRAM_H
#define GUARD_MALLOC_EWRAM_H

#include "global.h"

struct EwramNode
{
    struct EwramNode *next;
    s32 unk4;
    u8 space[0];
};

struct EwramNode gUnk_02000000;

void EwramInitHeap(void);
void *EwramMalloc(u32);
void EwramFree(void *);

#endif // GUARD_MALLOC_EWRAM_H
