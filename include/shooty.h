#ifndef GUARD_SHOOTY_H
#define GUARD_SHOOTY_H

#include "global.h"
#include "data.h"

void *CreateShooty(struct Object *, u8);
void *CreateShootyBomb(struct Object *, u8);

void sub_080C2044(struct Object2 *);
void sub_080C1E38(struct Object2 *);

extern const struct AnimInfo gShootyAnimInfo[];
extern const struct AnimInfo gShootyAnimInfo2[];

#endif
