#ifndef GUARD_MULTI_08019F28_H
#define GUARD_MULTI_08019F28_H

#include "global.h"
#include "task.h"

struct Multi_08019F28
{
    struct Task *taskp;
    u8 filler04[8];
    u16 unk0C;
    u16 unk0E;
    u8 unk10;
    u8 unk11;
    void (*callback)(struct Multi_08019F28 *);
    u8 filler18[0x68];
    s32 unk80;
    u8 filler84[0x16];
    u16 unk9A;
    u16 unk9C;
    u16 unk9E;
    u8 fillerA0[0xA];
    u16 unkAA;
    u16 unkAC;
    u16 unkAE;
    u8 unkB0;
    u8 unkB1;
}; /* size = 0xB4 */

#endif // GUARD_MULTI_08019F28_H
