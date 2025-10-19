#ifndef GUARD_BOX_BOXER_H
#define GUARD_BOX_BOXER_H

#include "global.h"
#include "data.h"

void *CreateBoxBoxer(struct Object *, u8);
void *CreateBoxBoxerEnergyBall(struct Object *, u8);

void sub_080C75D0(struct Object2 *);
void sub_080C8FA4(struct Object2 *);

bool8 sub_080C8548(struct Object2 *, struct Kirby *);

extern const struct AnimInfo gUnk_08355738[];
extern const struct AnimInfo gUnk_08355790[];
extern const struct AnimInfo gUnk_08355798[];
extern const struct AnimInfo gUnk_083557D4[];

#endif
