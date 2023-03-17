#ifndef GUARD_GLUNK_H
#define GUARD_GLUNK_H

#include "global.h"
#include "data.h"

void *CreateGlunk(struct Object *, u8);
void *CreateGlunkBullet(struct Object *, u8);
void sub_080AF0A8(struct Object2 *);
void sub_080AF610(struct Object2 *);

extern const struct Unk_02021590 gUnk_08353C20[];
extern const struct Unk_02021590 gUnk_08353C34[];

#endif
