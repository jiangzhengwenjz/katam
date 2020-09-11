#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

#include "global.h"

struct Sprite {
    s32 unk0;
    u32 unk4;
    u32 unk8;
    u16 unkC;
    u16 unkE;
    s16 unk10;
    s16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
    u32 unk20;
    u8 filler24[2];
    u8 unk26;
    u8 unk27;
};

extern u8 gUnk_030035F0[];

u32 sub_08153184(void);
u32 sub_0815436C(void);
u32 sub_08154B14(void);
u32 sub_08155128(struct Sprite*);
void sub_08155604(struct Sprite*, s16*);
void sub_0815604C(struct Sprite*);
void DrawToOamBuffer(void);
OamData *sub_08156D84(u8);

#endif
