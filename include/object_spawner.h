#ifndef GUARD_OBJECT_SPAWNER_H
#define GUARD_OBJECT_SPAWNER_H

#include "global.h"
#include "object.h"

struct ObjectSpawner {
    struct Object obj;
    u8 fillerB4[0x28];
    u16 unkDC;
    u8 unkDE;
    u8 unkDF;
}; /* size = 0xE0 */

void sub_0811BA30(struct ObjectSpawner *spawner);
void sub_0811BAAC(struct ObjectSpawner *spawner);
void *CreateObjectSpawner(struct ObjectTemplate *template, u8 playerId);

#endif // GUARD_OBJECT_SPAWNER_H
