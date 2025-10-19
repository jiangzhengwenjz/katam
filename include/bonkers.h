#ifndef GUARD_BONKERS_H
#define GUARD_BONKERS_H

#include "global.h"
#include "data.h"
#include "object.h"

void* CreateBonkers(struct Object*, u8);
void* CreateBonkersNut(struct Object*, u8);

void sub_080CF898(struct Object2*);
void sub_080D1394(struct Object2*);

extern const struct AnimInfo gUnk_08356058[];
extern const struct AnimInfo gUnk_083560B8[];
extern const struct AnimInfo gUnk_083560C0[];
extern const struct AnimInfo gUnk_083560FC[];

#endif
