#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

#include "global.h"
#include "main.h"

#define SpriteSomething(sprite, tilesVramVal, unkCVal, unk1AVal, unk1BVal, unk10Val, unk12Val, \
    unk14Val, unk16Val, unk1CVal, unk1FVal, unk8Val) ({ \
    (sprite)->tilesVram = (tilesVramVal); \
    (sprite)->unkC = (unkCVal); \
    (sprite)->unk1A = (unk1AVal); \
    (sprite)->unk1B = (unk1BVal); \
    (sprite)->unk10 = (unk10Val); \
    (sprite)->unk12 = (unk12Val); \
    (sprite)->unk14 = (unk14Val); \
    (sprite)->unk16 = (unk16Val); \
    (sprite)->unk1C = (unk1CVal); \
    (sprite)->unk1F = (unk1FVal); \
    (sprite)->unk8 = (unk8Val); \
    sub_08155128(sprite); \
    sub_0803D280(0x10 * (sprite)->unk1F, 0x10); \
})

// TODO: move the struct declaration to a proper location
struct Unk_03002400 {
    u32 filler0;
    u32 unk4; // vram
    u16 filler8;
    u16 unkA;
    u32 unkC; // vram
    const u16 *unk10;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    u16 unk28;
    u8 unk2A;
    u8 unk2B;
    u8 unk2C;
    u16 unk2E;
    u16 unk30;
    u16 unk32;
    u16 unk34;
    u16 unk36;
    u32 unk38;
    u16 unk3C;
    u16 unk3E;
}; /* size = 0x40 */

struct Sprite_20 {
    s32 unk0;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
}; /* size = 0x8 */

struct Sprite {
    u32 tilesVram;
    u32 unk4;
    u32 unk8;
    u16 unkC;
    u16 unkE;
    s16 unk10;
    s16 unk12;
    u16 unk14;
    s16 unk16;
    u16 unk18;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
    struct Sprite_20 unk20[1]; // this is indexed -- but I can't see any index other than 0. see sub_08155494
}; /* size = 0x28 */

extern u8 gUnk_030035F0[];

extern const u8 gUnk_08D6084C[][2];

void sub_08153060(struct Unk_03002400 *);
u32 sub_08153184(void);
s32 sub_08153D78(struct Sprite *);
u32 sub_0815436C(void);
void sub_081548A8(u16, s16, s16, s16, s16, s16, s16, struct BgAffineRegs *);
u32 sub_08154B14(void);
u32 sub_08155128(struct Sprite *);
void sub_0815521C(struct Sprite *, u16);
void sub_08155604(struct Sprite *, s16 *);
void sub_0815604C(struct Sprite *);
void sub_081564D8(struct Sprite *);
void DrawToOamBuffer(void);
OamData *sub_08156D84(u8);

#endif
