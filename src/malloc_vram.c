#include "data.h"
#include "malloc_vram.h"
#include "main.h"

u32 VramMalloc(u32 numTiles) {
    u16 i, j;
    u32 count = numTiles;

    count = (count + 1) / 2; // round up; one 8x8 4BPP tile takes 0x20 bytes so divide by 2
    for (i = 0; i < gVramHeapMaxTileSlots / 2; ++i) {
        if (gVramHeapState[i] == 0) {
            for (j = 0; j < count; ++j) {
                if (i + j >= gVramHeapMaxTileSlots / 2)
                    return (u32)ewram_end;
                if (gVramHeapState[i + j] != 0) break;
            }
            if (j == count) {
                gVramHeapState[i] = count;
                return gVramHeapStartAddr + i * VRAM_HEAP_SEGMENT_SIZE;
            }
        } else {
            i = gVramHeapState[i] - 1 + i; // next slot to check, -1 because of ++i
        }
    }
    return (u32)ewram_end;
}

void VramResetHeapState(void) {
    DmaFill16(3, 0, gVramHeapState, sizeof(gVramHeapState));
}

void VramFree(u32 addr) {
    u16 segmentId;

    if ((u32)ewram_end != addr) {
        segmentId = (addr - gVramHeapStartAddr) / VRAM_HEAP_SEGMENT_SIZE;
        gVramHeapState[segmentId] = 0;
    }
}

u16 VramGetTotalAllocatedTiles(void) {
    u16 i;
    u16 count = 0;

    for (i = 0; i < gVramHeapMaxTileSlots / 2; ++i) {
        if (gVramHeapState[i]) {
            count += gVramHeapState[i];
            i = gVramHeapState[i] - 1 + i; // next slot to check, -1 because of ++i
        }
    }
    return 2 * count;
}
