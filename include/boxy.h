#ifndef GUARD_BOXY_H
#define GUARD_BOXY_H

#include "global.h"
#include "data.h"

struct Boxy
{
    struct Object obj2;
    struct Object *unkB4;
    u8 unkB8;
}; /* size = 0xBC */

void *CreateBoxy(struct ObjectTemplate *, u8);
void *CreateBoxyBox(struct ObjectTemplate *, u8);

void sub_080D777C(struct Boxy *);
void sub_080D7020(struct Object *);

extern const struct AnimInfo gUnk_08356184[];
extern const struct AnimInfo gUnk_083561C4[];
extern const struct AnimInfo gUnk_083561CC[];
extern const struct AnimInfo gUnk_08356208[];

#endif
