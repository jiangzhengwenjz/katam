#ifndef GUARD_PAUSE_AREA_MAP_H
#define GUARD_PAUSE_AREA_MAP_H

#include "bg.h"
#include "data.h"
#include "global.h"

struct UnkAreaMapSprite_30 {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u16 unk2A;
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u16 unk2E;
}; /* size = 0x30 */

struct UnkAreaMapSprite_34 {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 filler29[0xb];
}; /* size = 0x34 */

struct AreaMap_6E0 {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u8 unk6;  // shown area (1-9)
    /* 0x07 */ s8 unk7;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
}; /* size = 0x14 */

struct AreaMap_6F4 {
    /* 0x0 */ u16 unk0[3];
    /* 0x6 */ u16 filler6;
    /* 0x8 */ const u8* unk8;  // Used in u16* contexts, but pointer arithmetic as if it was u8* (sub_08127834)
    /* 0xC */ u16 unkC;
    /* 0xE */ s16 unkE;
}; /* size = 0x10 */

struct AreaMap {
    /* 0x000 */ struct Background unk0;
    /* 0x040 */ u32 unk40;
    /* 0x044 */ u16 unk44;
    /* 0x046 */ s8 unk46;
    /* 0x047 */ s8 unk47;
    /* 0x048 */ s8 unk48[10];
    /* 0x052 */ u8 filler52[0x6];
    /* 0x058 */ u32 unk58;  // Toggles following pause menu screen, analogously to WorldMap::unk210
    /* 0x05C */ s16 unk5C;
    /* 0x05E */ s16 unk5E;
    /* 0x060 */ struct UnkAreaMapSprite_30 unk60[4];
    /* 0x120 */ struct UnkAreaMapSprite_34 unk120[4];
    /* 0x1F0 */ struct UnkAreaMapSprite_34 unk1F0[4];
    /* 0x2C0 */ u8 filler2C0[0x410];
    /* 0x6D0 */ struct Unk_08361220* unk6D0[4];
    /* 0x6E0 */ struct AreaMap_6E0 unk6E0;
    /* 0x6F4 */ struct AreaMap_6F4 unk6F4[2];
}; /* size = 0x714 */

struct Unk_08361220 {
    /* 0x00 */ u16 unk0;  // current roomId of kirby
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u16 filler6;
}; /* size = 0x8 */

extern const u16 gUnk_083611D0[0xb];
extern const u8 gUnk_083611E6[0xb];
extern const u8 gUnk_083611F1[][4];  // Matches regalloc as two-dimensional array, whereas not if one-dimensional
                                     // - but weird alignment
extern const struct Unk_08361220 gUnk_08361220[0x107];
extern const u16 gUnk_08361DF4[0x10];
extern const u32 gUnk_08362104[];
extern const u16 gUnk_08D6126C[0xa];
extern const u16 gUnk_08D61280[0xa][5];

#endif
