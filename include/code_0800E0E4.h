#ifndef GUARD_CODE_0800E0E4_H
#define GUARD_CODE_0800E0E4_H

#include "global.h"
#include "data.h"

struct Unk_0800E0E4_A0
{
    u8 unk0[0x20][2];
    u16 unk40;
}; /* size = 0x44 */

struct Unk_0800E0E4
{
    struct ObjectBase objBase;
    struct Sprite sprite;
    struct Unk_0800E0E4_A0 unkA0[2];
    u32 unk128;
    u16 unk12C;
}; /* size = 0x130 */

void sub_0800E0E4(struct Object2 *, s16, s16);

#endif
