#ifndef GUARD_CODE_08124BE0_H
#define GUARD_CODE_08124BE0_H

#include "data.h"
#include "global.h"
#include "pause_world_map.h"
#include "task.h"

void PauseMenuMain(void);
void PauseMenuInitRetained(void);
void sub_08124EA0(void);
void sub_08124EC8(void);
void WorldMapSetKirbySprites(struct WorldMapKirby*, u32);
struct Task* CreateWorldMapLine(u32);
void WorldMapLineDrawing(void);
void WorldMapLoadPalettes(void);
void WorldMapRemoveLines(void);
void WorldMapDrawKirbys(struct WorldMap*);

static inline void SpriteInit_08125690(u16 animId, u8 variant, u8 palId) {
    struct Sprite sprite;
    SpriteInitNoPointer2(&sprite, (u32)OBJ_VRAM0 + 0x2000, 0x280, animId, variant, 0, 0xff, 0x10, palId, 0, 0, 0x81000);
}

#endif
