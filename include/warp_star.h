#ifndef GUARD_WARP_STAR_H
#define GUARD_WARP_STAR_H

#include "global.h"
#include "data.h"

struct StarShared
{
    struct Object2 obj2;
    u8 unkB4;
    u8 unkB5;
    u16 unkB6;
    u16 unkB8;
    u16 unkBA;
}; /* size = 0xBC */

struct WarpStar
{
    struct StarShared unk0;
    u16 unkBC;
    u16 unkBE;
    s16 unkC0;
    s16 unkC2;
}; /* size = 0xC4 */

struct GoalStar_D4
{
    u16 unk0;
    u16 unk2[0x14];
    u16 unk2A[8];
}; /* size = 0x3C */

struct GoalStar
{
    struct StarShared unk0;
    u16 unkBC;
    u8 unkBE[4];
    u16 unkC2;
    u32 unkC4;
    s32 unkC8;
    u16 unkCC;
    u16 unkCE;
    u16 unkD0;
    const struct GoalStar_D4 *unkD4;
    u16 unkD8;
    u16 unkDA;
    u32 unkDC;
    u16 unkE0;
    u16 unkE2;
    u16 unkE4;
}; /* size = 0xE8 */

struct Unk_0800D9E8
{
    struct Object4 obj4;
    struct Sprite sprites[3];
    void (*unkC0)(struct Unk_0800D9E8 *);
    struct GoalStar *unkC4;
    u16 unkC8;
}; /* size = 0xCC */

void *CreateWarpStar(struct Object *, u8);
void *CreateGoalStar(struct Object *, u8);

void nullsub_101(struct WarpStar *);
void nullsub_102(struct GoalStar *);

extern const struct Unk_02021590 gUnk_082DDE24[];
extern const struct Unk_02021590 gUnk_082DDE2C[];

#endif
