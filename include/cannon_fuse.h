#ifndef GUARD_CANNON_FUSE_H
#define GUARD_CANNON_FUSE_H

#include "global.h"
#include "data.h"

struct CannonFuse
{
    struct Object2 obj2;
    u16 unkB4;
    u16 unkB6;
    u16 unkB8;
    u16 unkBA;
    u16 unkBC;
    u16 unkBE;
    u16 unkC0;
    s8 unkC2;
}; /* size = 0xC4 */

void *CreateCannonFuse(struct Object *, u8);

void sub_0811DD94(struct CannonFuse *);

extern const struct AnimInfo gUnk_08357C64[];

#endif
