#ifndef GUARD_MR_FROSTY_H
#define GUARD_MR_FROSTY_H

#include "global.h"
#include "data.h"

void *CreateMrFrosty(struct Object *, u8);
void *CreateMrFrostyIceCube(struct Object *, u8);

void MrFrostyActivate(struct Object2 *);
void sub_080CD2CC(struct Object2 *);

bool8 MrFrostyGrabKirby(struct Object2 *, struct Kirby *);

extern const struct AnimInfo gMrFrostyAnimInfo[];
extern const struct AnimInfo gMrFrostyAnimInfo2[];
extern const struct AnimInfo gMrFrostyAnimInfo3[];
extern const struct AnimInfo gMrFrostyAnimInfo4[];

#endif
