#ifndef GUARD_MOLEY_H
#define GUARD_MOLEY_H

#include "global.h"
#include "data.h"

struct Moley {
    struct Object2 obj2;
    u8 unkB4;
    u8 unkB5;
    u16 unkB6;
}; /* size = 0xB8 */

void *CreateMoley(struct Object *, u8);
void MoleyStartEmerge(struct Moley *);
void *CreateMoleyItem(struct Object *, u8);
void MoleyThrowAttack(struct Object2 *);

extern const struct AnimInfo gMoleyAnimInfo[];
extern const struct AnimInfo gMoleyAnimInfo2[];
extern const struct AnimInfo gMoleyAnimInfo3[];
extern const struct AnimInfo gMoleyAnimInfo4[];
extern const struct AnimInfo gMoleyAnimInfo5[];
extern const struct AnimInfo gMoleyAnimInfo6[];
extern const struct AnimInfo gMoleyAnimInfo7[];
extern const struct AnimInfo gMoleyAnimInfo8[];
extern const struct AnimInfo gMoleyAnimInfo9[];

#endif
