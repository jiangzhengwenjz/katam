#include "global.h"
#include "code_08019CB8.h"

// not referenced
void unusedChestFunction(void) {
    CpuFill16(0, &gTreasures, 4);
}

u16 numChests(void) {
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

void collectChest(u8 x) {
    gTreasures.chestFields[x >> 3] |=  1 << (x & 7);
}

bool32 hasChest(u8 x) {
    return (gTreasures.chestFields[x >> 3] >> (x & 7)) & 1;
}

u16 numShards(void) {
    u16 ret = 0, i;

    for (i = 0; i < 8; ++i) {
        if (gTreasures.shardField & (1 << i))
            ++ret;
    }
    return ret;
}

void collectShard(u8 x) {
    gTreasures.shardField |= 1 << x;
}

bool32 hasShard(u8 x) {
    return gTreasures.shardField & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019DC8(void) {
    u16 ret = 0, i;

    for (i = 0; i < 14; ++i) {
        if (gTreasures.unk10_2 & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019DFC(u8 x) {
    gTreasures.unk10_2 |= 1 << x;
}

bool32 sub_08019E14(u8 x) {
    return gTreasures.unk10_2 & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019E34(void) {
    u16 ret = 0, i;

    for (i = 0; i < 11; ++i) {
        if (gTreasures.unk10_3 & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019E68(u8 x) {
    gTreasures.unk10_3 |= 1 << x;
}

bool32 sub_08019E80(u8 x) {
    return gTreasures.unk10_3 & (1 << x) ? TRUE : FALSE;
}

u16 numBigChests(void) {
    u16 ret = 0, i;

    for (i = 0; i < 10; ++i) {
        if (gTreasures.bigChestField & (1 << i))
            ++ret;
    }
    return ret;
}

void collectBigChest(u8 x) {
    gTreasures.bigChestField |= 1 << x;
}

bool32 hasBigChest(u8 x) {
    return gTreasures.bigChestField & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019F0C(void) {
    return gTreasures.unk20;
}

void sub_08019F18(void) {
    ++gTreasures.unk20;
}
