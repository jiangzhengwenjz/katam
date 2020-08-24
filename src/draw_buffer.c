#include "data.h"
#include "draw_buffer.h"
#include "main.h"

// TODO: define file boundaries

struct OamData *sub_08156D84(u8 r5) {
    if (r5 > 0x1f) r5 = 0x1f;
    if ((s8)gUnk_030024F0 < 0) {
        return (void *)gUnk_03006CC4;
    }
    else {
        if (gUnk_03002450[r5] == 0xff) {
            gUnk_030031C0[gUnk_030024F0].affineParam.split.fractional = 0xff;
            gUnk_03002450[r5] = gUnk_030024F0;
            gUnk_03006080[r5] = gUnk_030024F0;
        }
        else {
            gUnk_030031C0[gUnk_030024F0].affineParam.split.fractional = 0xff;
            gUnk_030031C0[gUnk_03006080[r5]].affineParam.split.fractional = gUnk_030024F0;
            gUnk_03006080[r5] = gUnk_030024F0;
        }
        ++gUnk_030024F0;
        return &gUnk_030031C0[gUnk_030024F0 - 1];
    }
}

void DrawToOamBuffer(void) {
    struct OamData* r5 = gOamBuffer;
    u8 j = 0;
    s32 i;
    s8 r0;
    u8* unused;

    for (i = 0; i < 0x20; i++) {
        for (r0 = gUnk_03002450[i]; r0 != -1; r0 = gUnk_030031C0[r0].affineParam.all) {
            unused = gUnk_030035F0;
            DmaCopy16(3, gUnk_030031C0 + r0, r5, 6);
            r5++;
            gUnk_030035F0[r0] = j++;
            unused++; unused--;
            
        }
    }

    if (gUnk_03002440 & 0x800) {
        i = gUnk_030024F0;
        r5 = gOamBuffer + gUnk_030024F0;
        for (; i < gUnk_03003A00; i++) {
            DmaFill16(3, 0x200, r5, 0x6);
            r5++;
        }
    }
    else {
        if (gUnk_03002440 & 0x400) {
            s32 j;
            i = gUnk_030024F0 - 1;
            r5 = gOamBuffer + i; // not used, but can force r5 to be preloaded
            for (j = 0; i >= 0; i--, j++) {
                DmaCopy16(3, gOamBuffer + i, gOamBuffer + (0x7f - j), 6);
            }
            gUnk_03003A00 = 0x80 - gUnk_030024F0;
            for (i = 0; i < gUnk_03003A00; i++) {
                DmaFill16(3, 0x200, gOamBuffer + i, 6);
                unused++; unused--;
            }
        }
        else {
            gUnk_03003A00 = 0;
        }
    }

    gUnk_030024F0 = 0;
    if (gUnk_03002440 & 0x4000) {
        CpuFill32(~0, gUnk_03002450, 0x20);
        CpuFill32(~0, gUnk_03006080, 0x20);
    }
    else {
        DmaFill32(3, ~0, gUnk_03002450, 0x20);
        DmaFill32(3, ~0, gUnk_03006080, 0x20);
    }
}
