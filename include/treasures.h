#ifndef GUARD_TREASURES_H
#define GUARD_TREASURES_H

// The number of treasures that are actually shown in the collection room.
#define NUM_PUBLIC_TREASURES 0x28

#include "global.h"

struct Treasures {
    u8 chestFields[0x10];
    u32 shardField;
    u32 unk14;
    u32 unk18;
    u32 bigChestField;
    u16 unk20;
}; /* size = 0x24 */

extern struct Treasures gTreasures;

u16 NumChestsCollected(void);
void CollectChest(u8);
bool32 HasChest(u8);
u16 NumShardsCollected(void);
void CollectShard(u8);
bool32 HasShard(u8);
u16 sub_08019DC8(void);
void sub_08019DFC(u8);
bool32 sub_08019E14(u8);
u16 sub_08019E34(void);
void sub_08019E68(u8);
bool32 sub_08019E80(u8);
u16 NumBigChestsCollected(void);
void CollectBigChest(u8);
bool32 HasBigChest(u8);
u16 sub_08019F0C(void);
void sub_08019F18(void);

#endif
