#include "global.h"
#include "treasures.h"


// not referenced
void UnusedChestFunction(void) {
    CpuFill16(0, &gTreasures, 4);
}

u16 NumChestsCollected(void) {
    u16 ret = 0;
    u16 i, j;

    for (i = 0; i < 0x10; ++i) {
        for (j = 0; j < 8; ++j) {
            if ((gTreasures.chestFields[i] >> j) & 1)
                ++ret;
        }
    }
    return ret;
}

void CollectChest(u8 x) {
    gTreasures.chestFields[x >> 3] |=  1 << (x & 7);
}

bool32 HasChest(u8 x) {
    return (gTreasures.chestFields[x >> 3] >> (x & 7)) & 1;
}

u16 NumShardsCollected(void) {
    u16 ret = 0, i;

    for (i = 0; i < 8; ++i) {
        if (gTreasures.shardField & (1 << i))
            ++ret;
    }
    return ret;
}

void CollectShard(u8 x) {
    gTreasures.shardField |= 1 << x;
}

bool32 HasShard(u8 x) {
    return gTreasures.shardField & (1 << x) ? TRUE : FALSE;
}

u16 NumSprayPaintsCollected(void) {
    u16 ret = 0, i;

    for (i = 0; i < 14; ++i) {
        if (gTreasures.sprayPaintField & (1 << i))
            ++ret;
    }
    return ret;
}

void CollectSprayPaint(u8 x) {
    gTreasures.sprayPaintField |= 1 << x;
}

bool32 HasSprayPaint(u8 x) {
    return gTreasures.sprayPaintField & (1 << x) ? TRUE : FALSE;
}

u16 NumMusicPlayerAndSheetsCollected(void) {
    u16 ret = 0, i;

    for (i = 0; i < 11; ++i) {
        if (gTreasures.musicPlayerAndSheetsField & (1 << i))
            ++ret;
    }
    return ret;
}

void CollectMusicPlayerOrSheet(u8 x) {
    gTreasures.musicPlayerAndSheetsField |= 1 << x;
}

bool32 HasMusicPlayerOrSheet(u8 x) {
    return gTreasures.musicPlayerAndSheetsField & (1 << x) ? TRUE : FALSE;
}

u16 NumBigChestsCollected(void) {
    u16 ret = 0, i;

    for (i = 0; i < 10; ++i) {
        if (gTreasures.bigChestField & (1 << i))
            ++ret;
    }
    return ret;
}

void CollectBigChest(u8 x) {
    gTreasures.bigChestField |= 1 << x;
}

/*
 * Returns whether the map of the area (according to enum AreaId) has been found.
 * TODO: Are there more uses?
 */
bool32 HasBigChest(u8 areaId) {
    return gTreasures.bigChestField & (1 << areaId) ? TRUE : FALSE;
}

u16 NumVitalitiesCollected(void) {
    return gTreasures.vitalityField;
}

void CollectVitality(void) {
    ++gTreasures.vitalityField;
}
