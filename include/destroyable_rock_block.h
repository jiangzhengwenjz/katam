#ifndef GUARD_DESTROYABLE_ROCK_BLOCK_H
#define GUARD_DESTROYABLE_ROCK_BLOCK_H

#include "data.h"
#include "global.h"
#include "object.h"

struct RockBlock {
    struct Object base;
    u16 unkB4;
    u16 unkB6;
}; /* size = 0xB8 */

void* CreateDestroyableRockBlock(struct ObjectTemplate* arg0, u8 arg1);
void DestroyableRockBlockInit(struct RockBlock*);

extern const struct AnimInfo gUnk_08357C54[];

#endif
