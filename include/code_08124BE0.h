#ifndef GUARD_CODE_08124BE0_H
#define GUARD_CODE_08124BE0_H

#include "data.h"
#include "global.h"
#include "pause_world_map.h"
#include "task.h"

void sub_08124BE0(void);
void sub_08124E80(void);
void sub_08124EA0(void);
void sub_08124EC8(void);
void WorldMapSetKirbySprites(struct MapKirbySprite*, u32);
struct Task* CreateWorldMapLine(u32);
void WorldMapLineDrawing(void);
void WorldMapLoadPalettes(void);
void WorldMapRemoveLines(void);
void WorldMapDrawKirbys(struct WorldMap*);

#endif
