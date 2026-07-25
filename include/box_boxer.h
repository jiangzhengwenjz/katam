#ifndef GUARD_BOX_BOXER_H
#define GUARD_BOX_BOXER_H

#include "global.h"
#include "data.h"

void *CreateBoxBoxer(struct Object *, u8);
void *CreateBoxBoxerEnergyBall(struct Object *, u8);

void BoxBoxerStartIdle(struct Object2 *);
void sub_080C8FA4(struct Object2 *);

bool8 BoxBoxerGrab(struct Object2 *, struct Kirby *);

extern const struct AnimInfo gBoxBoxerAnimInfo[];
extern const struct AnimInfo gBoxBoxerAnimInfo2[];
extern const struct AnimInfo gBoxBoxerAnimInfo3[];
extern const struct AnimInfo gBoxBoxerAnimInfo4[];

#endif
