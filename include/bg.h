#ifndef GUARD_BG_H
#define GUARD_BG_H

#include "global.h"

struct Background {
    // this is struct Unk_03002EC0
    u32 filler0;
    u32 unk4; // vram
    u16 filler8;
    u16 unkA;
    u32 tilemapVram;
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
    u8 paletteOffset;
    u8 animFrameCounter;
    u8 animDelayCounter;
    u8 unk2D;
    u16 unk2E;
    u16 scrollX;
    u16 scrollY;
    u16 prevScrollX;
    u16 prevScrollY;
    u32 unk38;
    u16 unk3C;
    u16 unk3E;
}; /* size = 0x40 */

#define BgInit(bg, unk4Val, unkAVal, tilemapVramVal, unk18Val, unk1AVal, unk1CVal, unk1EVal, unk20Val, \
    unk22Val, unk24Val, unk26Val, unk28Val, paletteOffsetVal, animFrameCounterVal, animDelayCounterVal, unk2EVal, \
    scrollXVal, scrollYVal, prevScrollXVal, prevScrollYVal) \
({ \
    (bg)->unk4 = (unk4Val); \
    (bg)->unkA = (unkAVal); \
    (bg)->tilemapVram = (tilemapVramVal); \
    (bg)->unk18 = (unk18Val); \
    (bg)->unk1A = (unk1AVal); \
    (bg)->unk1C = (unk1CVal); \
    (bg)->unk1E = (unk1EVal); \
    (bg)->unk20 = (unk20Val); \
    (bg)->unk22 = (unk22Val); \
    (bg)->unk24 = (unk24Val); \
    (bg)->unk26 = (unk26Val); \
    (bg)->unk28 = (unk28Val); \
    (bg)->paletteOffset = (paletteOffsetVal); \
    (bg)->animFrameCounter = (animFrameCounterVal); \
    (bg)->animDelayCounter = (animDelayCounterVal); \
    (bg)->unk2E = (unk2EVal); \
    (bg)->scrollX = (scrollXVal); \
    (bg)->scrollY = (scrollYVal); \
    (bg)->prevScrollX = (prevScrollXVal); \
    (bg)->prevScrollY = (prevScrollYVal); \
})

void sub_08153060(struct Background *);
u32 sub_08153184(void);

#endif
