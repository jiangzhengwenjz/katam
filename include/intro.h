#ifndef GUARD_INTRO_H
#define GUARD_INTRO_H

#include "global.h"
#include "sprite.h"
#include "data.h"
#include "code_0814F274.h"

struct Unk_08387814 {
    u32 unk0;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u16 unkA;
    s16 unkC;
    u8 unkE;
    u8 fillerF[3];
    u16 unk12;
    u16 filler14;
    s16 unk16;
}; /* size = 0x18 */

struct Unk_08145B64;

struct Unk_08145B64_5EC {
    u8 unk0;
    s8 unk1;
    u8 unk2;
    s8 unk3; // index in Unk_08145B64::unk48
    s8 unk4; // index in Unk_08145B64::unk5EC
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u16 filler8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    struct Unk_08145B64_5EC *unk14;
    struct Unk_08145B64_5EC *unk18;
    void (*unk1C)(struct Unk_08145B64_5EC *);
    struct Unk_08145B64 *unk20;
    union Unk_08145B64_5EC_24 { // TODO: I'm confused
        s16 pat1[8];
        struct Unk_08145B64_5EC_24_Pat2 {
            u8 unk0;
            u8 unk1;
            u16 unk2;
            u16 unk4;
            u8 unk6;
            u8 unk7;
            u8 unk8;
            u8 unk9;
            u8 unkA;
            u8 unkB;
            u8 unkC;
        } pat2;
        struct Unk_08145B64_5EC_24_Pat3 {
            u16 unk0;
            u16 unk2;
            u8 unk4;
            u8 unk5;
            u16 unk6;
            u16 unk8;
            u8 unkA;
            u8 unkB;
            u8 unkC;
        } pat3;
        struct Unk_08145B64_5EC_24_Pat4 {
            s16 unk0;
            s16 unk2;
            u16 unk4;
            u16 unk6;
            u8 unk8;
            u8 unk9;
            u8 unkA;
            u8 unkB;
            u8 unkC;
        } pat4;
    } unk24;
}; /* size = 0x34 */

struct Unk_08145B64 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 unk10;
    u8 unk11;
    u8 unk12[0x10];
    struct Object11 unk24;
    u16 filler30;
    u16 unk32[2];
    u16 unk36[2];
    void (*unk3C[2])(struct Unk_08145B64 *, u8);
    u32 filler44;
    struct Sprite unk48[0x20];
    struct Sprite *unk548[0x20];
    u8 unk5C8;
    u8 unk5C9;
    u8 unk5CA;
    u8 unk5CB;
    u8 unk5CC[0x20];
    struct Unk_08145B64_5EC unk5EC[0x40];
    struct Unk_08145B64_5EC *unk12EC[0x40];
    struct Unk_08145B64_5EC *unk13EC;
    struct Unk_08145B64_5EC *unk13F0;
    u8 unk13F4;
    u8 unk13F5;
    s8 unk13F6;
    bool32 (*unk13F8)(struct Unk_08145B64 *);
    u32 filler13FC;
    void (*unk1400)(struct Unk_08145B64 *);
    u32 filler1404;
    void (*unk1408)(struct Unk_08145B64 *);
    u16 unk140C;
    s16 unk140E;
    void (*unk1410)(struct Unk_08145B64 *);
    s8 unk1414;
    s8 unk1415;
    u8 unk1416;
    u8 unk1417;
    u8 unk1418;
    u8 unk1419;
}; /* size = 0x141C */

struct Unk_08387348 {
    u8 unk0;
    s8 unk1;
    u8 unk2;
    void (*unk4)(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
    void (*unk8)(struct Unk_08145B64_5EC *);
    void (*const *unkC)(struct Unk_08145B64_5EC *);
}; /* size = 0x10 */

#endif
