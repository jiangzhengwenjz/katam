#ifndef GUARD_MULTI_08019F28_H
#define GUARD_MULTI_08019F28_H

#include "global.h"
#include "task.h"

struct Multi_08019F28
{
    struct Task *taskp;
    u8 filler04[0x10];
    void (*callback)(struct Multi_08019F28 *);
    u8 filler18[0x68];
    s32 unk80;
    u8 filler84[0x18];
    u16 unk9C;
    u8 filler9E[0xC];
    u16 unkAA;
    u16 unkAC;
    u16 unkAE;
    u8 unkB0;
    u8 unkB1;
    u8 fillerB2[2];

}; /* size = 0xB4 */

#endif // GUARD_MULTI_08019F28_H
