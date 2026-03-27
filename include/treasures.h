#ifndef GUARD_TREASURES_H
#define GUARD_TREASURES_H

// The number of treasures that are actually shown in the collection room.
#define NUM_PUBLIC_TREASURES 0x28

#include "global.h"

struct Treasures {
    u8 chestFields[0x10];
    u32 shardField;
    u32 sprayPaintField;
    u32 musicPlayerAndSheetsField;
    u32 bigChestField;
    u16 vitalityField;
}; /* size = 0x24 */

extern struct Treasures gTreasures;

u16 NumChestsCollected(void);
void CollectChest(u8);
bool32 HasChest(u8);
u16 NumShardsCollected(void);
void CollectShard(u8);
bool32 HasShard(u8);
u16 NumSprayPaintsCollected(void);
void CollectSprayPaint(u8);
bool32 HasSprayPaint(u8);
u16 NumMusicPlayerAndSheetsCollected(void);
void CollectMusicPlayerOrSheet(u8);
bool32 HasMusicPlayerOrSheet(u8);
u16 NumBigChestsCollected(void);
void CollectBigChest(u8);
bool32 HasBigChest(u8);
u16 NumVitalitiesCollected(void);
void CollectVitality(void);

#endif
