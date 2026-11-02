#ifndef GUARD_UNKNOWN_82_H
#define GUARD_UNKNOWN_82_H

#include "global.h"
#include "data.h"

struct Unknown82 {
    /* 0x00 */ struct Object obj;
    /* 0xB4 */ u16 unkB4;
    /* 0xB6 */ u16 unkB6;
    /* 0xB8 */ u16 unkB8;
    /* 0xBA */ s16 unkBA;
}; /* size = 0xBC */

extern const struct AnimInfo gUnk_08357D1C[];

void sub_08120A40(struct Unknown82 *);
void *CreateUnknown82(struct ObjectTemplate *, u8);

#endif
