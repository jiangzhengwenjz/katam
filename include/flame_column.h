#ifndef GUARD_FLAME_COLUMN_H
#define GUARD_FLAME_COLUMN_H

#include "global.h"
#include "data.h"

struct FlameColumn
{
    struct Object2 obj2;
    s16 unkB4;
    u16 unkB6;
    u16 unkB8;
    s16 unkBA;
    s16 unkBC;
    u8 unkBE;
    u8 unkBF;
}; /* size = 0xC0 */

void *CreateFlameColumn(struct Object *, u8);
void sub_0811FDF0(struct FlameColumn *);

extern const struct AnimInfo gUnk_08357CD8[];

#endif
