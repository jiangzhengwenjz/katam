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

extern const struct Unk_02021590 gUnk_08356220[];
extern const struct Unk_02021590 gUnk_0835624C[];
extern const struct Unk_02021590 gUnk_08356254[];
extern const struct Unk_02021590 gUnk_08356338[];
extern const struct Unk_02021590 gUnk_08356374[];

#endif
