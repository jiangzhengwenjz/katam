#ifndef GUARD_MIRROR_DOOR_H
#define GUARD_MIRROR_DOOR_H

#include "global.h"
#include "data.h"

struct MirrorDoor
{
    struct Object2 obj2;
    struct Object4 *unkB4[2];
    u16 unkBC;
    u16 unkBE;
    u16 unkC0;
    u8 unkC2;
}; /* size = 0xC4 */

void *CreateMirrorDoor(struct Object *, u8);

void sub_0811A624(struct MirrorDoor *);

extern const struct AnimInfo gUnk_08357BEC[];

#endif
