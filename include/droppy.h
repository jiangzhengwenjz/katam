#ifndef GUARD_DROPPY_H
#define GUARD_DROPPY_H

#include "data.h"
#include "functions.h"
void* CreateDroppy(struct Object *arg0, u8 arg1);
void sub_0809FE9C(struct Object2 *arg0);
bool8 sub_080A049C(struct Object2 *arg0, struct Kirby *kirby);

#define Macro_0809FF6C(obj2, xOffset, yOffset) \
    (((obj2)->base.x + (xOffset)) <= gCurLevelInfo[(obj2)->base.unk56].__levelMaxX__  \
        && ((obj2)->base.x + (xOffset)) >= gCurLevelInfo[(obj2)->base.unk56].__levelMinX__ \
        && ((obj2)->base.y + (yOffset)) <= gCurLevelInfo[(obj2)->base.unk56].__levelMaxY__ \
        && ((obj2)->base.y + (yOffset)) >= gCurLevelInfo[(obj2)->base.unk56].__levelMinY__)

extern const struct AnimInfo gUnk_08352E78[];

#endif
