#ifndef GUARD_UNKNOWN_7A_H
#define GUARD_UNKNOWN_7A_H

#include "global.h"
#include "data.h"

struct Unknown7AState {
    /* 0x0 */ u8 unk0;
    /* 0x1 */ u8 unk1;
    /* 0x2 */ u8 unk2;
    /* 0x3 */ u8 unk3;
}; /* size = 0x4 */

struct Unknown7A {
    /* 0x00 */ struct Object obj;
    /* 0xB4 */ struct Unknown7AState unkB4;
    /* 0xB8 */ struct S16Vec2 unkB8;
    /* 0xBC */ struct S16Vec2 unkBC;
    /* 0xC0 */ struct S16Vec2 unkC0;
    /* 0xC4 */ u16 unkC4;
    /* 0xC6 */ s16 unkC6;
}; /* size = 0xC8 */

void *CreateUnknown7A(struct ObjectTemplate *, u8);
void sub_0811F20C(struct Unknown7A *);

extern const struct AnimInfo gUnk_08357CD0[];

#endif
