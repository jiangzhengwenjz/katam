#ifndef GUARD_PHAN_PHAN_H
#define GUARD_PHAN_PHAN_H

#include "global.h"
#include "data.h"

void *CreatePhanPhan(struct ObjectTemplate *, u8);
void *CreatePhanPhanApple(struct ObjectTemplate *, u8);

void sub_080CF44C(struct Object *);
void sub_080CF0D4(struct Object *);

bool8 sub_080CE94C(struct Object *, struct Kirby *);

extern const struct AnimInfo gUnk_08355E84[];
extern const struct AnimInfo gUnk_08355F04[];

#endif
