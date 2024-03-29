#ifndef GUARD_MOLEY_H
#define GUARD_MOLEY_H

#include "global.h"
#include "data.h"

struct Moley {
    struct Object2 obj2;
    u8 unkB4;
    u8 unkB5;
    u16 unkB6;
}; /* size = 0xB8 */

void *CreateMoley(struct Object *, u8);
void sub_080EB848(struct Moley *);
void *CreateMoleyItem(struct Object *, u8);
void sub_080EC8E8(struct Object2 *);

extern const struct Unk_02021590 gUnk_08356D90[];
extern const struct Unk_02021590 gUnk_08356DC4[];
extern const struct Unk_02021590 gUnk_08356DD0[];
extern const struct Unk_02021590 gUnk_08356DDC[];
extern const struct Unk_02021590 gUnk_08356DE8[];
extern const struct Unk_02021590 gUnk_08356DF4[];
extern const struct Unk_02021590 gUnk_08356E00[];
extern const struct Unk_02021590 gUnk_08356E0C[];
extern const struct Unk_02021590 gUnk_08356E18[];

#endif
