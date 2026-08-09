#ifndef GUARD_ABILITY_OBJECTS_H
#define GUARD_ABILITY_OBJECTS_H

#include "global.h"
#include "data.h"
#include "object.h"

void* CreateAbilityStar(struct ObjectTemplate*, u8);
void* CreateUnknown83(struct ObjectTemplate*, u8);
void* CreateDustCloud(struct ObjectTemplate*, u8);
void* CreateAbilityStatue(struct ObjectTemplate*, u8);
void* CreateAbilityStatueRandom(struct ObjectTemplate*, u8);

void sub_080AA91C(struct Object*);
void sub_080AA94C(struct Object*);
void sub_080AA960(struct Object*);
void sub_080AA4EC(struct Object*);

extern const struct AnimInfo gUnk_08353684[];
extern const struct AnimInfo gUnk_0835369C[];
extern const struct AnimInfo gUnk_083536BC[];
extern const struct AnimInfo gUnk_083536D8[];
extern const struct AnimInfo gUnk_083536DC[];
extern const struct AnimInfo gUnk_083536E8[];

#endif
