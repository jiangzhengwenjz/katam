#ifndef GUARD_BATAFIRE_H
#define GUARD_BATAFIRE_H

#include "global.h"
#include "data.h"

void *CreateBatafire(struct Object *, u8);
void *CreateBatafireFireball(struct Object *, u8);

void sub_080C95D4(struct Object2 *);
void sub_080CB4A0(struct Object2 *);

extern const struct Unk_02021590 gUnk_083558E0[];
extern const struct Unk_02021590 gUnk_0835591C[];
extern const struct Unk_02021590 gUnk_08355CB0[];
extern const struct Unk_02021590 gUnk_08355CEC[];

#endif
