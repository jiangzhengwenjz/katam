#ifndef GUARD_STAR_PLATFORM_H
#define GUARD_STAR_PLATFORM_H

#include "global.h"
#include "data.h"

struct StarPlatform
{
    struct Object2 obj2;
    u16 unkB4;
    u16 unkB6;
    u16 unkB8;
    u16 unkBA;
}; /* size = 0xBC */

void *CreateStarPlatform(struct Object *, u8);
void sub_0811FC3C(struct Object2 *);

#endif // GUARD_STAR_PLATFORM_H
