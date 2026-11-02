#ifndef GUARD_UNKNOWN_87_H
#define GUARD_UNKNOWN_87_H

#include "global.h"
#include "data.h"

struct Unknown87 {
    /* 0x00 */ struct Object obj;
    /* 0xB4 */ s16 unkB4;
    /* 0xB6 */ u16 unkB6;
    /* 0xB8 */ bool16 unkB8;
    /* 0xBA */ s16 unkBA;
}; /* size = 0xBC */

extern const struct AnimInfo gUnk_08357E50[];

void *CreateUnknown87(struct ObjectTemplate *, u8);
void sub_0812102C(struct Unknown87 *);

#endif
