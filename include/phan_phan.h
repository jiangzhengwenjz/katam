#ifndef GUARD_PHAN_PHAN_H
#define GUARD_PHAN_PHAN_H

#include "global.h"
#include "data.h"

void *CreatePhanPhan(struct Object *, u8);
void *CreatePhanPhanApple(struct Object *, u8);

void sub_080CF44C(struct Object2 *);
void AppleInit(struct Object2 *);

bool8 PhanPhanGrabKirby(struct Object2 *, struct Kirby *);

extern const struct AnimInfo gPhanPhanAnimInfo3[];
extern const struct AnimInfo gPhanPhanAnimInfo4[];

#endif
