#ifndef GUARD_SHOOTY_H
#define GUARD_SHOOTY_H

#include "global.h"
#include "data.h"

void *CreateShooty(struct Object *, u8);
void *CreateShootyBomb(struct Object *, u8);

void sub_080C2044(struct Object2 *);
void sub_080C1E38(struct Object2 *);

extern const struct AnimInfo gUnk_08354F58[];
extern const struct AnimInfo gUnk_08354FA4[];

#endif
