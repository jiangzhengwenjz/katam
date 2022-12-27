#ifndef GUARD_MR_FROSTY_H
#define GUARD_MR_FROSTY_H

#include "global.h"
#include "data.h"

void *CreateMrFrosty(struct Object *, u8);
void *CreateMrFrostyIceCube(struct Object *, u8);

void sub_080CD2A0(struct Object2 *);
void sub_080CD2CC(struct Object2 *);

bool8 sub_080CC6F0(struct Object2 *, struct Kirby *);

extern const struct Unk_02021590 gUnk_08355CF8[];
extern const struct Unk_02021590 gUnk_08355D48[];
extern const struct Unk_02021590 gUnk_08355D6C[];
extern const struct Unk_02021590 gUnk_08355DA8[];

#endif
