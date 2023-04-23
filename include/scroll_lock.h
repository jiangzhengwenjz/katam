#ifndef GUARD_SCROLL_LOCK_H
#define GUARD_SCROLL_LOCK_H

#include "data.h"
#include "global.h"

struct Unk_0811C9D4_0 {
    u32 unk0;
    u32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    s32 unk3C;
    s32 filler40;
}; /* size = 0x44 */

struct Unk_0811C9D4 {
    struct Unk_0811C9D4_0 unk0;
    u16 unk44;
    s8 unk46;
    u16 unk48;
    s8 unk4A;
    s32 unk4C;
    s32 unk50;
}; /* size = 0x54 */

void* CreateScrollLock(struct Object* arg0, u8 arg1);
void sub_0811C9D4(struct Object2 *);

extern const struct Unk_02021590 gUnk_08357C60[];

#endif
