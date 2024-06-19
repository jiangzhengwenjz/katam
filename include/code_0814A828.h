#ifndef GUARD_CODE_0814A828_H
#define GUARD_CODE_0814A828_H

#include "global.h"
#include "bg.h"
#include "sprite.h"

struct Unk_0814E394 {
    u8 unk0;
    s8 unk1;
    void (*unk4)(struct Unk_0814E394 *);
    s16 unk8;
    struct Unk_0814A828 *unkC;
    struct Sprite unk10[2];
    s32 unk60;
    s32 unk64;
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    s32 unk74;
}; /* size = 0x78 */

struct Unk_0814E918 {
    void (*unk0)(struct Unk_0814E918 *);
    u16 unk4;
    struct Unk_0814A828 *unk8;
    struct Sprite unkC[8];
    struct Sprite unk14C;
    u8 unk174;
    u8 unk175;
    u8 filler176[0x2A];
    s16 unk1A0[8][4]; // probably wrong
    u8 filler1E0[0xA0];
    u32 unk280[8];
}; /* size = 0x2A0 */

struct Unk_0814A828 {
    u8 filler0[4];
    u32 unk4;
    void (*unk8)(struct Unk_0814A828 *);
    u16 unkC;
    struct Sprite unk10;
    struct Sprite unk38;
    struct Background unk60;
    bool32 (*unkA0)(struct Unk_0814A828 *);
    s16 unkA4;
    s16 unkA6;
    struct Task *unkA8[2];
    struct Task *unkB0[2];
    struct Unk_0814E394 *unkB8[2];
    struct Task *unkC0;
    struct Unk_0814E918 *unkC4;
}; /* size = 0xC8 */

#endif
