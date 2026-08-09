#ifndef GUARD_LARGE_STONE_BLOCK_7D_H
#define GUARD_LARGE_STONE_BLOCK_7D_H

#include "global.h"
#include "data.h"

struct LargeStarStoneBlock7D
{
    struct Object obj2;
    u8 fillerB4[0x2D];
    u8 unkE1;
    u8 unkE2;
    u8 unkE3;
}; /* size = 0xE4 */

void *CreateLargeStarStoneBlock7D(struct ObjectTemplate *, u8);
void LargeStarStoneBlock7DSetFunc(struct LargeStarStoneBlock7D *);

#endif // GUARD_LARGE_STONE_BLOCK_7D_H
