#ifndef GUARD_MULTI_08019F28_H
#define GUARD_MULTI_08019F28_H

#include "global.h"
#include "task.h"
#include "data.h"

struct Multi_08019F28
{
    struct Task *taskp;
    u8 filler04[8];
    u16 unk0C;
    u16 unk0E;
    u8 unk10;
    u8 unk11;
    void (*callback)(struct Multi_08019F28 *);
    u8 filler18[0x40];
    struct Sprite unk58;
    u32 unk80;
    struct Multi_08019F28_sub { // required for matching
        u32 unk00[4]; // TODO: how many elements? 
        u16 unk10; // TODO: are unk10 & unk12 really inside the substruct? 
        u16 unk12;
    } unk84;
    u16 unk98;
    u16 unk9A;
    u16 unk9C;
    u16 unk9E;
    u8 fillerA0[4];
    s32 unkA4;
    u8 unkA8;
    u8 unkA9;
    u16 unkAA;
    u16 unkAC;
    u16 unkAE;
    u8 unkB0;
    u8 unkB1;
}; /* size = 0xB4 */

struct Multi_08019F28 *sub_08019F28(s32);
void sub_0801A744(s32);

#endif // GUARD_MULTI_08019F28_H
