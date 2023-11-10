#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

#include "global.h"
#include "main.h"

#define SpriteInit(sprite, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, \
    unk1CVal, palIdVal, xVal, yVal, unk8Val) ({ \
    struct Sprite *_spritep = (sprite); \
\
    _spritep->tilesVram = (tilesVramVal); \
    _spritep->unk14 = (unk14Val); \
    _spritep->animId = (animIdVal); \
    _spritep->variant = (variantVal); \
    _spritep->unk16 = (unk16Val); \
    _spritep->unk1B = (unk1BVal); \
    _spritep->unk1C = (unk1CVal); \
    _spritep->palId = (palIdVal); \
    _spritep->x = (xVal); \
    _spritep->y = (yVal); \
    _spritep->unk8 = (unk8Val); \
    sub_08155128(_spritep); \
})

#define SpriteInitNoPointer(sprite, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, \
    unk1CVal, palIdVal, xVal, yVal, unk8Val) ({ \
    (sprite)->tilesVram = (tilesVramVal); \
    (sprite)->unk14 = (unk14Val); \
    (sprite)->animId = (animIdVal); \
    (sprite)->variant = (variantVal); \
    (sprite)->unk16 = (unk16Val); \
    (sprite)->unk1B = (unk1BVal); \
    (sprite)->unk1C = (unk1CVal); \
    (sprite)->palId = (palIdVal); \
    (sprite)->x = (xVal); \
    (sprite)->y = (yVal); \
    (sprite)->unk8 = (unk8Val); \
    sub_08155128(sprite); \
})

#define SpriteSomething(sprite, tilesVramVal, animIdVal, variantVal, unk1BVal, xVal, yVal, \
    unk14Val, unk16Val, unk1CVal, palIdVal, unk8Val) ({ \
    (sprite)->tilesVram = (tilesVramVal); \
    (sprite)->animId = (animIdVal); \
    (sprite)->variant = (variantVal); \
    (sprite)->unk1B = (unk1BVal); \
    (sprite)->x = (xVal); \
    (sprite)->y = (yVal); \
    (sprite)->unk14 = (unk14Val); \
    (sprite)->unk16 = (unk16Val); \
    (sprite)->unk1C = (unk1CVal); \
    (sprite)->palId = (palIdVal); \
    (sprite)->unk8 = (unk8Val); \
    sub_08155128(sprite); \
    sub_0803D280(0x10 * (sprite)->palId, 0x10); \
})

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
    u32 unk8;       // bit 0-4: rotscale param selection
                    // bit 5: rotscale enable
                    // bit 6: rotscale double-size
                    // bit 7-8: obj mode
                    // bit 9
                    // bit 10: hflip
                    // bit 11: vflip
                    // bit 12-13: priority
                    // bit 14
                    // bit 15-16: bg id (?)
                    // bit 17
                    // bit 18
                    // bit 19
                    // bit 20-25
                    // bit 26
                    // bit 27-31
    u16 animId;
    u16 animCursor;
    s16 x;
    s16 y;
    u16 unk14;      // bit 0-5
                    // bit 6-10
                    // bit 11-15
    s16 unk16;
    u16 unk18;
    u8 variant;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D;
    u8 numSubframes;
    u8 palId;
    struct Sprite_20 unk20[1]; // this is indexed -- but I can't see any index other than 0. see sub_08155494
}; /* size = 0x28 */

struct AnimCmd_GetTiles {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ s32 tileIndex; // negative means 8BPP
    /* 0x08 */ u32 numTilesToCopy;
}; /* size = 0xC */

struct AnimCmd_GetPalette {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ s32 palId;
    /* 0x06 */ u16 numColors;
    /* 0x08 */ u16 insertOffset;
}; /* size = 0xC */

struct AnimCmd_JumpBack {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ s32 offset;
}; /* size = 8 */

struct AnimCmd_4 {
    /* 0x00 */ s32 cmdId;
}; /* size = 4 */

struct AnimCmd_PlaySoundEffect {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ u16 songId;
}; /* size = 8 */

struct AnimCmd_6 {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ struct Sprite_20 unk4;
}; /* size = 0xC */

struct AnimCmd_TranslateSprite {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ u16 x;
    /* 0x06 */ u16 y;
}; /* size = 8 */

struct AnimCmd_8 {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
}; /* size = 0xC */

struct AnimCmd_SetIdAndVariant {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ u16 animId;
    /* 0x08 */ u16 variant;
}; /* size = 0xC */

struct AnimCmd_10 {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
}; /* size = 0x10 */

struct AnimCmd_SetPriority {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ s32 priority;
}; /* size = 8 */

struct AnimCmd_12 {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ s32 unk4;
}; /* size = 8 */

struct AnimCmd_ShowFrame {
    /* 0x00 */ s32 delay; // number of frames this will be displayed
    /* 0x04 */ s32 index; // frameId of this animation that should be displayed
}; /* size = 8 */

union __attribute__((transparent_union)) AnimCmd {
    const struct AnimCmd_GetTiles *getTiles;
    const struct AnimCmd_GetPalette *getPalette;
    const struct AnimCmd_JumpBack *jumpBack;
    const struct AnimCmd_4 *_4;
    const struct AnimCmd_PlaySoundEffect *playSoundEffect;
    const struct AnimCmd_6 *_6;
    const struct AnimCmd_TranslateSprite *translateSprite;
    const struct AnimCmd_8 *_8;
    const struct AnimCmd_SetIdAndVariant *setIdAndVariant;
    const struct AnimCmd_10 *_10;
    const struct AnimCmd_SetPriority *setPriority;
    const struct AnimCmd_12 *_12;
    const struct AnimCmd_ShowFrame *showFrame;
    /* for indexed access */
    const s32 *words;
}; /* size = 4 */

struct SpriteAttributes_Sub {
    /* 0x00 */ u16 bitfield;          // bit 0-13: oamId
                                      // bit 14: hflip
                                      // bit 15: vflip

    // some sprite frames consist of multiple images (of the same size
    // as GBA's Object Attribute Memory, e.g. 8x8, 8x32, 32x64, ...)
    /* 0x02 */ u16 numSubframes;

    // In pixels
    /* 0x04 */ u16 width;
    /* 0x06 */ u16 height;

    /* 0x08 */ s16 offsetX;
    /* 0x0A */ s16 offsetY;
}; /* size = 0xC */

struct SpriteAttributes_Full {
    struct SpriteAttributes_Sub sub;
    u32 unkC;                         // bit 0-23: unknown
                                      // bit 24-31: unknown
}; /* size = 0x10 */

union __attribute__((transparent_union)) SpriteAttributes {
    const struct SpriteAttributes_Sub *sub;
    const struct SpriteAttributes_Full *full;
};

struct SpriteTables {
    const union AnimCmd *const *anims;
    const union SpriteAttributes *attrs;
    const u16 *const *oamData;
    const u16 *palette;
    const void *tiles4bpp;
    const void *tiles8bpp;
    const s32 *unk18;
}; /* size = 0x1C */

extern const struct SpriteTables *gSpriteTables;

extern u8 gUnk_030035F0[];

extern const u8 gUnk_08D6084C[][2];

s32 sub_08153D78(struct Sprite *);
u32 sub_0815436C(void);
void sub_081548A8(u16, s16, s16, s16, s16, s16, s16, struct BgAffineReg *);
u32 sub_08154B14(void);
u16 sub_08154FE8(s16, s16); // TODO: return s16?
u32 sub_08155128(struct Sprite *);
void sub_0815521C(struct Sprite *, u16);
void sub_08155604(struct Sprite *, s16 *);
void sub_0815604C(struct Sprite *);
void sub_081564D8(struct Sprite *);
void DrawToOamBuffer(void);
OamData *sub_08156D84(u8);

#endif
