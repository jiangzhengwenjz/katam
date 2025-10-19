#ifndef GUARD_PHAN_PHAN_H
#define GUARD_PHAN_PHAN_H

#include "global.h"
#include "data.h"

void *CreatePhanPhan(struct Object *, u8);
void *CreatePhanPhanApple(struct Object *, u8);

void sub_080CF44C(struct Object2 *);
void sub_080CF0D4(struct Object2 *);

bool8 sub_080CE94C(struct Object2 *, struct Kirby *);

extern const struct AnimInfo gUnk_08355E84[];
extern const struct AnimInfo gUnk_08355F04[];

#endif
