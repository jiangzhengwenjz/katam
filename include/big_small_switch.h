#ifndef GUARD_BIG_SMALL_SWITCH_H
#define GUARD_BIG_SMALL_SWITCH_H

#include "global.h"
#include "data.h"

struct Switch {
    /* 0x00 */ struct Object obj;
    /* 0xB4 */ s16 unkB4;
    /* 0xB6 */ u16 unkB6;
    /* 0xB8 */ bool16 unkB8;
}; /* size = 0xBC */

extern const struct AnimInfo gUnk_08357BD0[];
extern const struct AnimInfo gUnk_08357BDC[];

void *CreateSmallSwitch(struct ObjectTemplate *, u8);
void *CreateBigSwitch(struct ObjectTemplate *, u8);
void sub_0811938C(struct Switch *);

#endif
