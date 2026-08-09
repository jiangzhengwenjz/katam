#ifndef GUARD_GLUNK_H
#define GUARD_GLUNK_H

#include "global.h"
#include "data.h"

void *CreateGlunk(struct ObjectTemplate *, u8);
void *CreateGlunkBullet(struct ObjectTemplate *, u8);
void sub_080AF0A8(struct Object *);
void sub_080AF610(struct Object *);

extern const struct AnimInfo gUnk_08353C20[];
extern const struct AnimInfo gUnk_08353C34[];

#endif
