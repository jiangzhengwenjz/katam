#ifndef GUARD_LARGE_STAR_STONE_BLOCK_H
#define GUARD_LARGE_STAR_STONE_BLOCK_H

#include "star_stone_block.h"
#include "functions.h"

struct LargeStarStoneBlock {
    /* 0x00 */ struct StarStoneBlock block;
    /* 0xE4 */ u8 unkE4;
    /* 0xE5 */ u8 fillerE5;
    /* 0xE6 */ u8 unkE6;
    /* 0xE7 */ u8 unkE7;
    /* 0xE8 */ s32 unkE8;
}; /* size = 0xEC */

static inline void LargeStarStoneBlockRestoreTile(u8 unk56, u8 x, u8 y)
{
    GetCollisionTile(unk56, x, y);
    sub_08001408(unk56, sub_080025AC(unk56, x, y), NULL, NULL);
}

extern const struct AnimInfo gUnk_08357D10[];

void *CreateLargeStarStoneBlock7E(struct ObjectTemplate *, u8);
void sub_08120594(struct LargeStarStoneBlock *);

#endif
