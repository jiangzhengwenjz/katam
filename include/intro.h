#ifndef GUARD_INTRO_H
#define GUARD_INTRO_H

#include "global.h"
#include "sprite.h"
#include "data.h"
#include "code_0814F274.h"

struct Unk_08145B64_5EC { // TODO: struct LevelInfo_1E8_14?
    u8 filler[0x34];
}; /* size = 0x34 */

struct Unk_08145B64 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 filler10[2];
    u8 unk12[0x10];
    struct Object11 unk24;
    u16 filler30;
    u16 unk32[2];
    u16 unk36[2];
    void (*unk3C[2])(struct Unk_08145B64 *, u8);
    u32 filler44;
    struct Sprite unk48[0x20];
    struct Sprite *unk548[0x20];
    u8 filler5C8[0x24];
    struct Unk_08145B64_5EC unk5EC[0x40];
    struct Unk_08145B64_5EC *unk12EC[0x40];
    u32 unk13EC;
    u32 unk13F0;
    u32 filler13F8;
    bool32 (*unk13F8)(struct Unk_08145B64 *);
    u32 filler13FC;
    void (*unk1400)(struct Unk_08145B64 *);
    u32 filler1404;
    void (*unk1408)(struct Unk_08145B64 *);
    u16 unk140C;
    void (*unk1410)(struct Unk_08145B64 *);
    u8 unk1414;
    u8 unk1415;
    u8 unk1416;
    u8 unk1417;
    u8 unk1418;
    u8 unk1419;
}; /* size = 0x141C */

#endif
