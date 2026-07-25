#ifndef GUARD_KIRBY_H
#define GUARD_KIRBY_H

#include "data.h"
#include "object.h"

struct Kirby_0_1 {
    /* 0x00 */ struct ObjectBase base;
    /* 0x78 */ u32 filler78;
    /* 0x7C */ struct Sprite unk7C[2];
}; /* size = 0xCC */

union Kirby_0 {
    struct Object2 base;
    struct Kirby_0_1 other;
}; /* size = 0xCC */

struct KirbyMoveScriptStep {
    /* 0x00 */ s8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 flags;
}; /* size = 0x8 */

struct Kirby_124 {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 filler2;
}; /* size = 0x04 */

struct Kirby {
    /* 0x000 */ union Kirby_0 base;
    /* 0x0CC */ struct Task *task;
    /* 0x0D0 */ struct S16Vec2 movementOverride;
    /* 0x0D4 */ u16 animationIndex;
    // counts upwards when we are not moving.
    /* 0x0D6 */ s16 idleTimer;
    // counts upwards to 8 when we're flying upwards.
    /* 0x0D8 */ u8 flyTimer;
    // misc timer, used when entering/exiting levels.
    /* 0x0D9 */ u8 unkD9;
    // loops from 8 to 0 when walking.
    /* 0x0DA */ u8 walkTimer;
    /* 0x0DB */ u8 unkDB;
    /* 0x0DC */ u8 battery;
    // When Kirby inhales an enemy or runs into an ability podium, this gets set to specify which ability he'll transform into.
    /* 0x0DD */ u8 transitioningAbility;
    /* 0x0DE */ u8 inhaling;
    /* 0x0DF */ u8 color;
    /* 0x0E0 */ u8 unkE0;
    // Gets set to 0 whenever Kirby collects a healing item
    /* 0x0E1 */ u8 unkE1;
    /* 0x0E2 */ u16 unkE2;
    /* 0x0E4 */ u8 unkE4;
    /* 0x0E5 */ u8 unkE5;
    /* 0x0E6 */ s16 unkE6;
    /* 0x0E8 */ struct Object2 *unkE8;
    // unused score leftover from nightmare in dreamland
    /* 0x0EC */ u32 score;
    // Increases whenever we get a new ability, maxes out at 4. Resets to 0 when we enter a new room.
    /* 0x0F0 */ u8 unkF0;
    /* 0x0F1 */ u8 unkF1;
    // Last mirror door entered? But only a top level one that goes right to the hub world.
    /* 0x0F2 */ u8 unkF2;
    // same as unkF2
    /* 0x0F3 */ u8 unkF3;
    /* 0x0F4 */ s16 unkF4;
    /* 0x0F6 */ u16 unkF6;
    /* 0x0F8 */ u16 unkF8;
    /* 0x0FA */ u16 unkFA;
    /* 0x0FC */ s16 unkFC;
    /* 0x0FE */ s16 unkFE;
    /* 0x100 */ s8 hp;
    /* 0x101 */ s8 maxHp;
    /* 0x102 */ u8 lives;
    /* 0x103 */ u8 ability;
    /* 0x104 */ u16 unk104;
    /* 0x106 */ u16 roomId;
    /* 0x108 */ struct S16Vec2 spawnLocation;
    /* 0x10C */ union LevelInfo_1E0 unk10C;
    /* 0x110 */ const struct KirbyMoveScriptStep *unk110;
    /* 0x114 */ const struct MoveStep *unk114;
    /* 0x118 */ u16 movementState;
    /* 0x11A */ u16 unk11A;
    /* 0x11C */ u16 unk11C;
    /* 0x11E */ u16 unk11E;
    /* 0x120 */ u16 unk120;
    /* 0x122 */ u16 unk122;
    /* 0x124 */ struct Kirby_124 unk124[4];
    /* 0x134 */ u8 filler134[0x6c];
    /* 0x1A0 */ u8 unk1A0[4];
    /* 0x1A4 */ u8 unk1A4;
    /* 0x1A5 */ u8 unk1A5;
}; /* size = 0x1A8 */

extern struct Kirby gKirbys[];

struct Kirby *FindClosestKirby(struct ObjectBase *);
struct Kirby *FindRandomKirby(struct ObjectBase *);
struct Kirby *FindClosestKirbyX(struct ObjectBase *);
u16 Object2IsOffscreen(struct Object2 *);
bool16 ObjectIsOffscreen(struct ObjectBase *);
bool16 Object4IsOffscreen(struct Object4 *);
void ObjectDisplaySprite(struct ObjectBase *);
void Object4DisplaySprite(struct Object4 *);
void ObjectBaseDestroy(struct Task *);
u32 sub_0803DD58(u8);
u32 sub_0803DE54(u32, u16, u8);
u8 sub_0803DF24(u16);
u8 sub_0803DFAC(u16, u8);
void ObjectSetHitbox(struct ObjectBase *, s8, s8, s8, s8);
void ObjectSetBounds(struct ObjectBase *, s8, s8, s8, s8);
bool8 sub_0803E324(struct ObjectBase *);
void ClearObjectBase(struct ObjectBase *);
void ClearObject4(struct Object4 *);
void sub_0803E458(void);
void sub_0803E4D4(u8);
void sub_0803E558(u8);
void sub_0803E868(u8);
void CreateKirby(u8, struct Kirby *, u16, const s32 *, bool32);
void KirbyStartIdle(struct Kirby *);
void KirbySlideBounce(struct Kirby *);
void KirbyStartFall(struct Kirby *);
void sub_080459B8(struct Kirby *);
void KirbyStartCupidFly(struct Kirby *);
bool8 sub_0804B6FC(struct Kirby *);
u8 sub_0804BAD8(struct Kirby *);
void sub_0804BD00(struct Kirby *);
bool8 sub_0804BD98(struct Kirby *, u8, u8, u8, s8, s8);
bool8 sub_080525C0(struct Kirby *);
bool8 sub_080528E4(struct Kirby *);
void sub_08052BB4(struct Kirby *);
void sub_08052E2C(struct Kirby *);
void KirbyStartWarpstarScript(struct Kirby *, const struct MoveStep *);
void sub_080547C4(struct Kirby *, u8);
void KirbyStartSwallow(struct Kirby *);
bool8 sub_080551FC(struct Kirby *, u16, u8, u8);
void sub_0805545C(struct Kirby *);
void KirbyStartSwim(struct Kirby *);
bool8 sub_0805BD4C(struct Kirby *, u8);
bool32 sub_0805BEC4(struct Kirby *);
bool32 sub_0805BDF4(struct Kirby *, u16, u8, u8);
void sub_08063D98(struct Kirby *, s32 __attribute__((unused)));
void sub_080641FC(struct Kirby *);
void sub_080666C0(struct Kirby *);
void sub_08067458(struct Kirby *);
void KirbyState_BombThrow(struct Kirby *);
void KirbyState_BombThrow2(struct Kirby *);
void sub_0806A798(struct Kirby *);
void KirbyResetBodyAnims(struct Kirby *);
void KirbyLoadAbilityAnims(struct Kirby *);
void sub_0806F734(void);

extern const struct AnimInfo gUnk_0834D484[];
extern const struct AnimInfo gKirbyBurningAnims[];
extern const struct AnimInfo gKirbyBurningAnims2[];
extern const struct AnimInfo gKirbySwordAnims[];
extern const struct AnimInfo gKirbyMasterSwordAnims[];
extern const struct AnimInfo gKirbyHammerAnims[];
extern const struct AnimInfo gKirbyParasolAnims[];
extern const struct AnimInfo gKirbyBombAnims[];
extern const struct AnimInfo gKirbyBombAnims2[];
extern const struct AnimInfo gUnk_08350AAC[];
extern const struct AnimInfo gUnk_08350B30[];

#endif
