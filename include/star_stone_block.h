#ifndef GUARD_STAR_STONE_BLOCK_H
#define GUARD_STAR_STONE_BLOCK_H

#include "global.h"
#include "data.h"

struct StarStoneBlock {
    /* 0x00 */ struct Object obj;
    /* 0xB4 */ u8 fillerB4[0x2C];
    /* 0xE0 */ s8 unkE0;
    /* 0xE1 */ u8 unkE1;
    /* 0xE2 */ u8 unkE2;
    /* 0xE3 */ u8 unkE3;
}; /* size = 0xE4 */

extern const struct AnimInfo gUnk_08357CC8[];

void *CreateStarStoneBlock(struct ObjectTemplate *, u8);
void sub_0811EC80(struct StarStoneBlock *);
void sub_0811F0CC(struct StarStoneBlock *);

#endif
