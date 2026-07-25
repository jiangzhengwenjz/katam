#ifndef GUARD_BOSS_CHALLENGE_DOOR_H
#define GUARD_BOSS_CHALLENGE_DOOR_H

#include "data.h"

struct BossChallengeDoor {
    struct Object2 obj2;
    /* 0xB4 */ struct Object4 *unkB4;
    /* 0xB8 */ struct Object4 *unkB8;
}; /* size = 0xBC */

void *CreateBossChallengeDoor(struct Object *, u8);

#endif
