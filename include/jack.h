#ifndef GUARD_JACK_H
#define GUARD_JACK_H

#include "global.h"
#include "data.h"

void *CreateJack(struct Object *, u8);
void *CreateJackStar(struct Object *, u8);

void sub_080A8904(struct Object2 *);
void sub_080A8788(struct Object2 *);

extern const struct Unk_02021590 gUnk_08353648[];
extern const struct Unk_02021590 gUnk_08353668[];

#endif
