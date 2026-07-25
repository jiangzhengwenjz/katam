#ifndef GUARD_BOMBAR_H
#define GUARD_BOMBAR_H

#include "global.h"
#include "data.h"

void *CreateBombar(struct Object *, u8);
void *CreateBombarBomb(struct Object *, u8);
void *CreateBombarMissile(struct Object *, u8);

void sub_080D9E94(struct Object2 *);
void sub_080D9EE8(struct Object2 *);
void sub_080D99A4(struct Object2 *);

extern const struct AnimInfo gBombarAnimInfo[];
extern const struct AnimInfo gBombarAnimInfo2[];
extern const struct AnimInfo gBombarAnimInfo3[];
extern const struct AnimInfo gBombarAnimInfo4[];
extern const struct AnimInfo gBombarAnimInfo5[];

#endif
