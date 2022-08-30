#ifndef GUARD_MALLOC_VRAM_H
#define GUARD_MALLOC_VRAM_H

#include "global.h"

#define VRAM_HEAP_SEGMENT_SIZE 0x40

u32 VramMalloc(u32 numTiles);
void VramResetHeapState(void);
void VramFree(u32 addr);
u16 VramGetTotalAllocatedSize(void);

#endif
