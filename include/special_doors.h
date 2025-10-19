#ifndef GUARD_SPECIAL_DOORS_H
#define GUARD_SPECIAL_DOORS_H

#include "global.h"
#include "data.h"

struct DoorToHub
{
    struct Object2 obj2;
    struct Object4 *obj4[2];
}; /* size = 0xBC */

struct AreaDoor
{
    struct Object2 obj2;
    struct Object4 *obj4;
}; /* size = 0xB8 */

void *CreateDoorToHub(struct Object *, u8);
void *CreateAreaDoor(struct Object *, u8);

void nullsub_116(struct DoorToHub *);
void nullsub_117(struct AreaDoor *);

extern const struct AnimInfo gUnk_082EB454[];
extern const struct AnimInfo gUnk_082EB49C[];

#endif
