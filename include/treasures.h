#ifndef GUARD_TREASURES_H
#define GUARD_TREASURES_H

#include "global.h"

struct Treasures {
    u8 chestFields[0x10];
    u32 shardField;
    u32 unk10_2;
    u32 unk10_3;
    u32 bigChestField;
    u16 unk20;
}; /* size = 0x24 */

extern struct Treasures gTreasures;

u16 numChestsCollected(void);
void collectChest(u8);
bool32 hasChest(u8);
u16 numShardsCollected(void);
void collectShard(u8);
bool32 hasShard(u8);
u16 sub_08019DC8(void);
void sub_08019DFC(u8);
bool32 sub_08019E14(u8);
u16 sub_08019E34(void);
void sub_08019E68(u8);
bool32 sub_08019E80(u8);
u16 numBigChestsCollected(void);
void collectBigChest(u8);
bool32 hasBigChest(u8);
u16 sub_08019F0C(void);
void sub_08019F18(void);

#endif
