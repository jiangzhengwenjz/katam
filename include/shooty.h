#ifndef GUARD_SHOOTY_H
#define GUARD_SHOOTY_H

#include "global.h"
#include "data.h"

void *CreateShooty(struct ObjectTemplate *, u8);
void *CreateShootyBomb(struct ObjectTemplate *, u8);

void sub_080C2044(struct Object *);
void sub_080C1E38(struct Object *);

extern const struct AnimInfo gUnk_08354F58[];
extern const struct AnimInfo gUnk_08354FA4[];

#endif
