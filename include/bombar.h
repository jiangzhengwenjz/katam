#ifndef GUARD_BOMBAR_H
#define GUARD_BOMBAR_H

#include "global.h"
#include "data.h"

void *CreateBombar(struct ObjectTemplate *, u8);
void *CreateBombarBomb(struct ObjectTemplate *, u8);
void *CreateBombarMissile(struct ObjectTemplate *, u8);

void sub_080D9E94(struct Object *);
void sub_080D9EE8(struct Object *);
void sub_080D99A4(struct Object *);

extern const struct AnimInfo gUnk_08356220[];
extern const struct AnimInfo gUnk_0835624C[];
extern const struct AnimInfo gUnk_08356254[];
extern const struct AnimInfo gUnk_08356338[];
extern const struct AnimInfo gUnk_08356374[];

#endif
