#ifndef GUARD_BOSS_CHALLENGE_DOOR_H
#define GUARD_BOSS_CHALLENGE_DOOR_H

#include "data.h"

struct BossChallengeDoor {
    struct Object obj2;
    /* 0xB4 */ struct EffectObject *unkB4;
    /* 0xB8 */ struct EffectObject *unkB8;
}; /* size = 0xBC */

void *CreateBossChallengeDoor(struct ObjectTemplate *, u8);

#endif
