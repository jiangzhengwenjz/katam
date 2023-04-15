#ifndef GUARD_UFO_H
#define GUARD_UFO_H

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

void *CreateUFO(struct Object *, u8);

void sub_080C4ACC(struct Object2 *);

extern const struct Unk_02021590 gUnk_083555C0[];

#endif
