#ifndef GUARD_CODE_0806F780_H
#define GUARD_CODE_0806F780_H

#include "global.h"
#include "data.h"

struct Unk_080C4EDC
{
    struct ObjectBase base;
    bool8 (*unk78[3])(struct Unk_080C4EDC *);
    void (*unk84)(struct Unk_080C4EDC *);
    u8 unk88;
    u8 unk89;
    u16 unk8A;
}; /* size = 0x8C */

bool16 sub_0806F780(struct ObjectBase *);
bool32 sub_0806F8BC(struct ObjectBase *);

#endif
