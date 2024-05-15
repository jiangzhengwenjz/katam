#ifndef GUARD_CODE_0814A828_H
#define GUARD_CODE_0814A828_H

#include "global.h"
#include "bg.h"
#include "sprite.h"

struct Unk_0814E394 {
    u8 unk0;
    void (*unk4)(struct Unk_0814E394 *);
    u16 unk8;
    struct Unk_0814A828 *unkC;
    struct Sprite unk10[2];
    s32 unk60;
    s32 unk64;
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    s32 unk74;
}; /* size = 0x78 */

struct Unk_0814A828 {
    u8 filler0[4];
    u32 unk4;
    void (*unk8)(struct Unk_0814A828 *);
    u16 unkC;
    struct Sprite unk10;
    struct Sprite unk38;
    struct Background unk60;
    void (*unkA0)(struct Unk_0814A828 *);
    u16 unkA4;
    u16 unkA6;
    struct Task *unkA8;
    struct Task *unkAC;
    u8 fillerB0[8];
    struct Unk_0814E394 *unkB8;
    struct Unk_0814E394 *unkBC;
    u8 fillerC0[8];
}; /* size = 0xC8 */

#endif
