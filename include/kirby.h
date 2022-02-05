#ifndef GUARD_KIRBY_H
#define GUARD_KIRBY_H

#include "data.h"
#include "object.h"

struct Kirby_0_1 {
    struct ObjectBase base;
    u32 filler78;
    struct Sprite unk7C[2];
}; /* size = 0xCC */

union Kirby_0 {
    struct Object2 base;
    struct Kirby_0_1 other;
}; /* size = 0xCC */

struct Kirby {
    union Kirby_0 base;
    struct Task *unkCC;
    s16 unkD0;
    s16 unkD2;
    u16 unkD4;
    s16 unkD6;
    u8 unkD8;
    u8 unkD9;
    u8 unkDA;
    u8 unkDB;
    u8 battery;
    u8 unkDD;
    u8 unkDE;
    u8 unkDF;
    u8 unkE0;
    u8 unkE1;
    u16 unkE2;
    u8 unkE4;
    u8 unkE5;
    s16 unkE6;
    struct Object2 *unkE8;
    u32 unkEC;
    u8 unkF0;
    u8 unkF1;
    u8 unkF2;
    u8 unkF3;
    s16 unkF4;
    u16 unkF6;
    u16 unkF8;
    u16 unkFA;
    s16 unkFC;
    s16 unkFE;
    s8 hp;
    s8 maxHp;
    u8 lives;
    u8 unk103;
    u16 unk104;
    u16 unk106;
    u16 unk108;
    u16 unk10A;
    u32 unk10C;
    u32 unk110;
    const struct Unk_08353510 *unk114;
    u16 unk118;
    u16 unk11A;
    u16 unk11C;
    u16 unk11E;
    u16 unk120;
    u16 unk122;
    u8 filler124[0x81];
    u8 unk1A5;
}; /* size = 0x1A8 */

extern struct Kirby gKirbys[];

#endif
