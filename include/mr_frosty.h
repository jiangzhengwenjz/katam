#ifndef GUARD_MR_FROSTY_H
#define GUARD_MR_FROSTY_H

#include "global.h"
#include "data.h"

void *CreateMrFrosty(struct ObjectTemplate *, u8);
void *CreateMrFrostyIceCube(struct ObjectTemplate *, u8);

void sub_080CD2A0(struct Object *);
void sub_080CD2CC(struct Object *);

bool8 sub_080CC6F0(struct Object *, struct Kirby *);

extern const struct AnimInfo gUnk_08355CF8[];
extern const struct AnimInfo gUnk_08355D48[];
extern const struct AnimInfo gUnk_08355D6C[];
extern const struct AnimInfo gUnk_08355DA8[];

#endif
