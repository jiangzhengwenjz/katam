#ifndef GUARD_SHARD_H
#define GUARD_SHARD_H

#include "global.h"
#include "data.h"

struct Shard
{
    struct Object2 obj2;
    struct Object4 *obj4[8];
    u16 unkD4;
    u16 unkD6;
    s16 unkD8;
    s16 unkDA;
    u16 unkDC;
    u16 unkDE;
    u16 unkE0;
    u16 unkE2;
}; /* size = 0xE4 */

void *CreateShard(struct Object *, u8);

void sub_0801C308(struct Shard *);
bool32 sub_0801BA18(struct ObjectBase *, bool32);

extern const struct Unk_02021590 gUnk_082DE5A8[];

#endif
