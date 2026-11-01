#ifndef GUARD_OBJECT_COLLISION_H
#define GUARD_OBJECT_COLLISION_H

#include "global.h"

struct ObjectBase;
struct Object;

void CreateObjectCollisionManager(void);
bool8 ObjectHitboxesOverlap(struct ObjectBase *first, struct ObjectBase *second);
// Uses a one-pixel box at the object origin and inclusive edges.
bool8 ObjectOriginOverlapsRect(struct ObjectBase *object, s32 x, s32 y, s16 xOffset, s16 yOffset, u16 width, u16 height);
// Callers must supply a registered room group; the original 0xFF path is retained.
struct ObjectBase **GetRoomObjectCollisionList(struct ObjectBase *object);
// Callers must supply a registered room group; the original 0xFF path is retained.
struct Object **GetRoomSolidCollisionList(struct ObjectBase *object);

#endif
