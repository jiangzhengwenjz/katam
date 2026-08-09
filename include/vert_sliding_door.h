#ifndef GUARD_VERT_SLIDING_DOOR_H
#define GUARD_VERT_SLIDING_DOOR_H

#include "global.h"
#include "data.h"
#include "object.h"

struct VertSlidingDoor {
    struct Object obj2;
    u16 unkB4;
    s8 unkB6;
    s8 unkB7;
}; /* size = 0xB8 */

void *CreateVertSlidingDoor(struct ObjectTemplate *, u8);
void VertSlidingDoorSetFunc(struct VertSlidingDoor *);

#endif
