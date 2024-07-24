#ifndef GUARD_CODE_0814F274_H
#define GUARD_CODE_0814F274_H

#include "global.h"

struct Object11_8 {
    u32 unk0;
    const u16 *const *unk4;
}; /* size = 0x8 */

struct Object11 {
    s16 unk0;
    s16 unk2;
    u16 unk4;
    u16 unk6;
    const struct Object11_8 *unk8;
}; /* size = 0xC */

bool32 sub_0814F274(struct Object11 *);
void sub_0814F3C4(struct Object11 *, const struct Object11_8 *);

#endif
