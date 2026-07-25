#ifndef GUARD_ABILITY_OBJECTS_H
#define GUARD_ABILITY_OBJECTS_H

#include "global.h"
#include "data.h"
#include "object.h"

void* CreateAbilityStar(struct Object*, u8);
void* CreateUnknown83(struct Object*, u8);
void* CreateDustCloud(struct Object*, u8);
void* CreateAbilityStatue(struct Object*, u8);
void* CreateAbilityStatueRandom(struct Object*, u8);

void sub_080AA91C(struct Object2*);
void sub_080AA94C(struct Object2*);
void sub_080AA960(struct Object2*);
void sub_080AA4EC(struct Object2*);

extern const struct AnimInfo gAbilityObjectsAnimInfo[];
extern const struct AnimInfo gAbilityObjectsAnimInfo2[];
extern const struct AnimInfo gAbilityObjectsAnimInfo3[];
extern const struct AnimInfo gAbilityObjectsAnimInfo4[];
extern const struct AnimInfo gAbilityObjectsAnimInfo5[];
extern const struct AnimInfo gAbilityObjectsAnimInfo6[];

#endif
