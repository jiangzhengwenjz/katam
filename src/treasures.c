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

u16 sub_08019DC8(void) {
    u16 ret = 0, i;

    for (i = 0; i < 14; ++i) {
        if (gTreasures.unk14 & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019DFC(u8 x) {
    gTreasures.unk14 |= 1 << x;
}

bool32 sub_08019E14(u8 x) {
    return gTreasures.unk14 & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019E34(void) {
    u16 ret = 0, i;

    for (i = 0; i < 11; ++i) {
        if (gTreasures.unk18 & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019E68(u8 x) {
    gTreasures.unk18 |= 1 << x;
}

bool32 sub_08019E80(u8 x) {
    return gTreasures.unk18 & (1 << x) ? TRUE : FALSE;
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

u16 sub_08019F0C(void) {
    return gTreasures.unk20;
}

void sub_08019F18(void) {
    ++gTreasures.unk20;
}
