#ifndef GUARD_CODE_08019CB8_H
#define GUARD_CODE_08019CB8_H

#include "global.h"

struct Treasures {
    u8 chest[0x10];
    u32 shardField;
    u32 unk10_2;
    u32 unk10_3;
    u32 unk10_4;
    u16 unk20;
}; /* size = 0x24 */

extern struct Treasures gTreasures;

#endif
