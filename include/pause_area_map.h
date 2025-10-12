#ifndef GUARD_PAUSE_AREA_MAP_H
#define GUARD_PAUSE_AREA_MAP_H

#include "bg.h"
#include "constants/pause_menu.h"
#include "data.h"
#include "global.h"

struct AreaMapArrow {
    /* 0x00 */ struct Sprite sprite;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u16 unk2A;
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u16 unk2E;
}; /* size = 0x30 */

struct AreaMapSprite {
    /* 0x00 */ struct Sprite sprite;
    /* 0x28 */ u8 areaId;
    /* 0x29 */ u8 filler29;
    /* 0x2A */ u16 filler2A;
    /* 0x2C */ s32 globalX;
    /* 0x30 */ s32 globalY;
}; /* size = 0x34 */

struct AreaMapCamera {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 zoomEffective;
    /* 0x06 */ u8 areaId;
    /* 0x07 */ s8 doZoom;  // 1: zoom in, -1: zoom out, 0: zoom finished
    /* 0x08 */ s32 x;
    /* 0x0C */ s32 y;
    /* 0x10 */ u16 flags;              // bit0: doScroll
    /* 0x12 */ u16 zoomUnlockedAreas;  // Zoom in areas where the map has already been found
}; /* size = 0x14 */

struct __attribute__((packed)) AreaMapPalettePulseHeader {
    /* 0x0 */ u16 paletteOffset;  // in bytes
    /* 0x2 */ u16 stateSize;
    /* 0x4 */ u16 maxStateIndex;
}; /* size = 0x06 */

struct AreaMapPalettePulse {
    /* 0x0 */ struct AreaMapPalettePulseHeader header;
    /* 0x6 */ u16 filler6;
    /* 0x8 */ const u8* states;
    /* 0xC */ u16 stateIdx;
    /* 0xE */ s16 waitCounter;
}; /* size = 0x10 */

enum AreaMapRoomType {
    AREAMAP_ROOM_NORMAL,
    AREAMAP_ROOM_BIG,
    AREAMAP_ROOM_STAR,
};

struct AreaMapRoomInfo {
    /* 0x00 */ u16 roomId;
    /* 0x02 */ u8 areaId;
    /* 0x03 */ enum AreaMapRoomType __attribute__((mode(byte))) type;
    /* 0x04 */ u8 tileStartColumn;
    /* 0x05 */ u8 tileStartRow;
    /* 0x06 */ u16 filler6;
}; /* size = 0x8 */

enum AreaMapVisibility { AREAMAP_UNVISITED, AREAMAP_NO_MAP, AREAMAP_FOUND_MAP };

struct AreaMap {
    /* 0x000 */ struct Background areaBg;
    /* 0x040 */ u32 arrowPulseCounter;
    /* 0x044 */ u16 nextAreaMapCounter;
    /* 0x046 */ s8 toGameCounter;
    /* 0x047 */ s8 gotoNextAreaMap;  // 1: Right/Ascend, -1: Left/Descend, 0: Stay
    /* 0x048 */ s8 visibility[10];   // According to enum AreaMapVisibility
    /* 0x052 */ u8 filler52[0x6];
    /* 0x058 */ enum MenuId nextMenuId;
    /* 0x05C */ s16 shardRotationIdx;
    /* 0x05E */ s16 shardRotation;
    /* 0x060 */ struct AreaMapArrow arrows[4];
    /* 0x120 */ struct AreaMapSprite kirbySprites[4];
    /* 0x1F0 */ struct AreaMapSprite abilityAccessories[4];
    /* 0x2C0 */ struct AreaMapSprite textLabels[0x14];
    /* 0x6D0 */ const struct AreaMapRoomInfo* roomInfos[4];
    /* 0x6E0 */ struct AreaMapCamera cameraBg2;
    /* 0x6F4 */ struct AreaMapPalettePulse palettePulse[2];
}; /* size = 0x714 */

void WorldMapPauseEnableUI(void);
void CreateAreaMap(void);
u32 sub_08128694(u32);

#endif
