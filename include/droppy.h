#ifndef GUARD_DROPPY_H
#define GUARD_DROPPY_H

#include "data.h"
#include "functions.h"
void* CreateDroppy(struct Object *arg0, u8 arg1);
void sub_0809FE9C(struct Object2 *arg0);

extern const u8 DroppyObjectTypes[];
extern const u8 DroppyObjectSubtypes1[];
extern const u8 DroppyObjectSubtypes2[];

#define Macro_0809FF6C(obj2, xOffset, yOffset) \
    (((obj2)->base.x + (xOffset)) <= gCurLevelInfo[(obj2)->base.unk56].unk50  \
        && ((obj2)->base.x + (xOffset)) >= gCurLevelInfo[(obj2)->base.unk56].unk48 \
        && ((obj2)->base.y + (yOffset)) <= gCurLevelInfo[(obj2)->base.unk56].unk54 \
        && ((obj2)->base.y + (yOffset)) >= gCurLevelInfo[(obj2)->base.unk56].unk4C) 

#endif
