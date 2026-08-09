#ifndef GUARD_BONKERS_H
#define GUARD_BONKERS_H

#include "global.h"
#include "data.h"
#include "object.h"

void* CreateBonkers(struct ObjectTemplate*, u8);
void* CreateBonkersNut(struct ObjectTemplate*, u8);

void BonkersStartIdle(struct Object*);
void BonkersNutInit(struct Object*);

extern const struct AnimInfo gUnk_08356058[];
extern const struct AnimInfo gUnk_083560B8[];
extern const struct AnimInfo gUnk_083560C0[];
extern const struct AnimInfo gUnk_083560FC[];

#endif
