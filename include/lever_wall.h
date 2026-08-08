#ifndef GUARD_LEVER_WALL_H
#define GUARD_LEVER_WALL_H

#include "data.h"
#include "global.h"
#include "object.h"

void* CreateLeverWall(struct ObjectTemplate*, u8);
void LeverWallSetFunc(struct Object*);

#endif
