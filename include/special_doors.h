#ifndef GUARD_SPECIAL_DOORS_H
#define GUARD_SPECIAL_DOORS_H

#include "global.h"
#include "data.h"

struct DoorToHub
{
    struct Object obj;
    struct EffectObject *effect[2];
}; /* size = 0xBC */

struct AreaDoor
{
    struct Object obj;
    struct EffectObject *effect;
}; /* size = 0xB8 */

void *CreateDoorToHub(struct ObjectTemplate *, u8);
void *CreateAreaDoor(struct ObjectTemplate *, u8);

void nullsub_116(struct DoorToHub *);
void nullsub_117(struct AreaDoor *);

extern const struct AnimInfo gUnk_082EB454[];
extern const struct AnimInfo gUnk_082EB49C[];

#endif
