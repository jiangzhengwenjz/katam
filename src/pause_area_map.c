#include "pause_area_map.h"
#include "bg.h"
#include "code_08124BE0.h"
#include "constants/pause_menu.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_fade.h"
#include "pause_help.h"
#include "pause_world_map.h"
#include "subgames.h"
#include "treasures.h"

static void AreaMapChooseUI(s32, enum AreaMapVisibility);
static void AreaMapInit(void);
static void AreaMapUpdateDynamics(struct AreaMap*);
static void AreaMapMain(void);

extern const u16 gAreaMapRoomsPalette[0x40];  // Remaining 0x80 bytes seem to be zero-filled padding
extern const u32 gAreaMapRoomsTileset[0x1000];
extern const u32 gAreaMapRoomsTilemapOffsets[NUM_AREA_IDS];
extern const u8 gAreaMapRoomsTilemap[] __attribute__((aligned(4)));

extern const u16 gAreaMapPalettePulseOffsets[2];

/* Struct that is accessed as plain array:
 * 0x00 * struct AreaMapPalettePulseHeader for room pulse
 * 0x06 * Contiguous u16[6] subarrays ("states") of following format:
 * - First hword indicates time waited before next palette swap for room pulse
 * - Next five hwords are palette entries to be loaded for room pulse
 * 0x66 * struct AreaMapPalettePulseHeader for path pulse
 * 0x6C * Contiguous u16[5] subarrays with same format as above for path pulse
 * size = 0x1C8 */
extern const u16 gAreaMapPalettePulseStates[0x72];

extern const u16 gAreaMapRoomInfoOffset[NUM_AREA_IDS];
extern const u8 gAreaMapRoomInfoLength[NUM_AREA_IDS];

// Matches regalloc only as two-dimensional array, with weird alignment and size 0x47
// Indices per area - 0: startX, 1: startY, 2: endX, 3: endY
extern const u8 gAreaMapScreenSizes[][4];  // in tiles

extern const struct AreaMapRoomInfo gAreaMapRoomInfos[0x107];

extern const u16 gUnk_08361A58[NUM_AREA_IDS];
extern const u8 gAreaMapTextLabelsNum[0xe];

struct Unk_08361A7C {
    /* 0x00 */ u8 filler0;
    /* 0x01 */ u8 filler1;
    /* 0x02 */ u8 filler2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
}; /* size = 0xC */
extern const struct Unk_08361A7C gUnk_08361A7C[0x4a];

// TODO: Make static
extern const u16 gMapUIPalette[0x10];
extern const u32 gMapUITileset[0x174];
extern const u32 gWorldMapUITilemap[0x57];
extern const u32 gAreaMapUITilemap[0x65];

enum AreaMapRoomCompletion {
    AREAMAP_ROOM_UNVISITED,
    AREAMAP_ROOM_VISITED,
    AREAMAP_ROOM_COMPLETED,
    NUM_AREAMAP_ROOM_COMPLETION,
};

extern const u8 gAreaMapTilemapEntriesNormalRoom[NUM_AREAMAP_ROOM_COMPLETION][2][2];
extern const u8 gAreaMapTilemapEntriesBigRoom[NUM_AREAMAP_ROOM_COMPLETION][4][4];
extern const u8 gAreaMapTilemapEntriesStarRoom[NUM_AREAMAP_ROOM_COMPLETION][4][4];
extern const u8 gAreaMapTilemapEntriesMapRoom[1][4][4];
extern const u8 gAreaMapTilemapEntriesShardRoom[NUM_AREAMAP_ROOM_COMPLETION][4][4];
extern const struct AnimInfo gUnk_08363748[NUM_LANGUAGES][0xe];
extern const struct AnimInfo gUnk_08363898[][0xb];
extern const u8 gAreaMapNormalRoomKirbyOffsets[8];
extern const u8 gAreaMapBigRoomKirbyOffsets[8];

// TODO when pause-menu file boundaries have been set:
// data_22.s ends with gAreaMapBigRoomKirbyOffsets, perfect for defining data above

extern const u32* const gAreaMapBGTilesets[NUM_AREA_IDS];

// Array of pointers to palettes with 0x200 bytes size (except for last index, that's NULL)
// Only the last 0x100 bytes seem to be used for each
// The first 0x100 bytes look like copies for non-pulsing rooms and arrows
extern const u16* const gAreaMapBGPalette[NUM_AREA_IDS];

extern const u16 gAreaMapMapRoomPalette[NUM_AREA_IDS - 1][5];
extern const u16 gAreaMapShardPalette[0xa];
extern const u32 gAreaMapShardTileset[4][0x40];
extern const u32 gAreaMapMapRoomTileset[0x100];
extern const u16 gAreaMapRoomIdsAndShards[0xa][3];           // Indices per area: 0 - MapRoom, 1 - BossRoom, 2 - Shardnum
extern const u8 gAreaMapShardTilesetIndicesAndTimers[0x1c];  // Every pair of entries signifies one state and one timer for this state

enum MapDisableUI {
    DISABLE_WORLDMAP_B,
    DISABLE_AREAMAP_A,
    DISABLE_AREAMAP_B,
    DISABLE_AREAMAP_L,
    DISABLE_AREAMAP_R,
    NUM_DISABLE_MAP_UI,
};
extern const u16 gMapUITilemapIndices[NUM_DISABLE_MAP_UI][4];

extern const u32* const gAreaMapUIAreaTitleTilesets[NUM_AREA_IDS - 2];

#define AreaMapArrowInit(arrowp, _animId, _variant, _x, _y, _unk28, _unk2A)                                                                \
    {                                                                                                                                      \
        SpriteInitNoFunc(&(arrowp)->sprite, (u32)OBJ_VRAM0 + 0x2000, 0x1c0, (_animId), (_variant), 0, 0xff, 0x10, 8, (_x), (_y), 0xc0000); \
        (arrowp)->unk28 = (_unk28);                                                                                                        \
        (arrowp)->unk2A = (_unk2A);                                                                                                        \
        (arrowp)->unk2C = 0;                                                                                                               \
        (arrowp)->unk2E = 0;                                                                                                               \
    }

#define AreaMapSpriteInit(mapspritep, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, unk1CVal, palIdVal, xVal, yVal, unk8Val,  \
                          globalXVal, globalYVal)                                                                                                  \
    ({                                                                                                                                             \
        SpriteInitNoFunc(&(mapspritep)->sprite, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, unk1CVal, palIdVal, xVal, yVal, \
                         unk8Val);                                                                                                                 \
        (mapspritep)->globalX = (globalXVal);                                                                                                      \
        (mapspritep)->globalY = (globalYVal);                                                                                                      \
    })

#define AreaMapCameraScroll(cameraBg2)                                                                                                       \
    ({                                                                                                                                       \
        if ((cameraBg2)->x <= gAreaMapScreenSizes[(cameraBg2)->areaId][0] * 8) {                                                             \
            (cameraBg2)->x = gAreaMapScreenSizes[(cameraBg2)->areaId][0] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->y <= gAreaMapScreenSizes[(cameraBg2)->areaId][1] * 8) {                                                             \
            (cameraBg2)->y = gAreaMapScreenSizes[(cameraBg2)->areaId][1] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->x >= gAreaMapScreenSizes[(cameraBg2)->areaId][2] * 8) {                                                             \
            (cameraBg2)->x = gAreaMapScreenSizes[(cameraBg2)->areaId][2] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->y >= gAreaMapScreenSizes[(cameraBg2)->areaId][3] * 8) {                                                             \
            (cameraBg2)->y = gAreaMapScreenSizes[(cameraBg2)->areaId][3] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->flags & 0x0001) {                                                                                                   \
            sub_081548A8(0, (cameraBg2)->zoomEffective, (cameraBg2)->zoomEffective, (cameraBg2)->x, (cameraBg2)->y, 120, 80, gBgAffineRegs); \
            (cameraBg2)->flags &= ~0x0001;                                                                                                   \
        }                                                                                                                                    \
    })

inline void AreaMapEnableUI(enum AreaId areaId, enum AreaMapVisibility visibility) {
    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gMapUIPalette, 0x70, ARRAY_COUNT(gMapUIPalette));
    }
    else {
        DmaCopy16(3, gMapUIPalette, gBgPalette + 0x70, sizeof(gMapUIPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    LZ77UnCompVram(gMapUITileset, BG_CHAR_ADDR(2) + 0x1000);
    AreaMapChooseUI(areaId, visibility);
}

inline void AreaMapToNextMenu(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (!sub_0812A304()) {
        if (areamap->nextMenuId == MENU_WORLDMAP) {
            CreateWorldMap(WORLDMAP_NO_UNLOCK);
        }
        else if (areamap->nextMenuId == MENU_HELP) {
            CreateHelpMenu();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }
    AreaMapUpdateDynamics(areamap);
}

inline void AreaMapToGame(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    AreaMapUpdateDynamics(areamap);
    if (areamap->toGameCounter++ > 18) {
        TaskDestroy(gPauseMenus[gUnk_0203AD3C].mainTask);
        TaskDestroy(gCurTask);
        sub_08039670();
    }
}

static inline void MapDisableUIElements(enum MapDisableUI element) {
    u32 entryY, entryX;
    u16* vramAdr;

    for (entryY = gMapUITilemapIndices[element][1]; entryY <= gMapUITilemapIndices[element][3]; entryY++) {
        for (entryX = gMapUITilemapIndices[element][0], vramAdr = (u16*)BG_SCREEN_ADDR(23) + 0x20 * entryY + entryX;
             entryX <= gMapUITilemapIndices[element][2]; vramAdr++, vramAdr++, vramAdr--, entryX++) {
            *vramAdr = 0x7080;  // override tilemap with empty tile
        }
    }
}

inline void __attribute__((unused)) MapDisableUIElementsThunk(enum MapDisableUI element) {
    MapDisableUIElements(element);
}

// TODO: Revisit when sprite functions are better understood
static void AreaMapKirbySpritesInit(struct Sprite* kirby, struct Sprite* abilityAccessory, u8 playerId) {
    u16 r5 = playerId * 2 + 0xa;  // priority?
    if (playerId == gUnk_0203AD3C) {
        r5 = 0x8;
    }

    SpriteInitNoPointer2(kirby, (u32)OBJ_VRAM0 + 0x3800 + playerId * 0x100, (r5 + 1) << 6, gUnk_08350AAC[gKirbys[playerId].ability].animId,
                         gUnk_08350AAC[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId, 0, 0, 0x41000);

    SpriteInitNoPointer2(abilityAccessory, (u32)OBJ_VRAM0 + 0x3880 + playerId * 0x100, r5 << 6, gUnk_08350B30[gKirbys[playerId].ability].animId,
                         gUnk_08350B30[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId + 4, 0, 0, 0x41000);
}

// TODO: Revisit when sprite functions are better understood
static void sub_08126C48(void) {
    struct Sprite unkSprite0, unkSprite1;
    u16 animId;
    u8 variant, palette;

    // Loads correct sprites for screen arrows and TextLabels into VRAM
    u16 language = gLanguage;
    SpriteInitNoPointer2(&unkSprite0, (u32)OBJ_VRAM0 + 0x2000, 0xa << 6, gUnk_08363748[language][0xd].animId, gUnk_08363748[language][0xd].variant, 0,
                         0xff, 0x10, 0, 0, 0, 0x40000);

    // Loads correct palette for screen arrows and TextLabels
    animId = gUnk_08363748[language][0].animId;
    variant = gUnk_08363748[language][0].variant;
    palette = 0x8;
    SpriteInitNoPointer2(&unkSprite1, (u32)OBJ_VRAM0 + 0x2000, 0xa << 6, animId, variant, 0, 0xff, 0x10, palette, 0, 0, 0x80000);
}

static inline const struct AreaMapRoomInfo* AreaMapGetRoomInfo(u16 roomId) {
    u32 roomInfoIdx;
    for (roomInfoIdx = 0; roomInfoIdx < ARRAY_COUNT(gAreaMapRoomInfos); roomInfoIdx++) {
        if (roomId == gAreaMapRoomInfos[roomInfoIdx].roomId) {
            return gAreaMapRoomInfos + roomInfoIdx;
        }
    }
    return NULL;
}

static void AreaMapFindRoomsWithKirbys(struct AreaMap* areamap) {
    u32 playerId;
    for (playerId = 0; playerId < gUnk_0203AD44; playerId++) {
        const struct AreaMapRoomInfo* roomInfo;
        u16 roomId = gCurLevelInfo[playerId].currentRoom;
        if (gUnk_08D6CD0C[roomId]->unk46 == 9 || gUnk_08D6CD0C[roomId]->unk46 == 10) {
            roomInfo = NULL;
        }
        else {
            roomInfo = AreaMapGetRoomInfo(roomId);
        }
        areamap->roomInfos[playerId] = roomInfo;

        if (roomInfo) {
            areamap->kirbySprites[playerId].areaId = roomInfo->areaId;
            areamap->kirbySprites[playerId].globalX = roomInfo->tileStartColumn * 8;
            areamap->kirbySprites[playerId].globalY = roomInfo->tileStartRow * 8;
        }
        else {
            areamap->kirbySprites[playerId].areaId = 0xff;
        }
    }
}

static void AreaMapDrawKirbysInRoom(struct AreaMap* areamap) {
    u32 playerId;
    struct AreaMapCamera* cameraBg2 = &areamap->cameraBg2;
    for (playerId = 0; playerId < gUnk_0203AD44; playerId++) {
        u8 xOffset, yOffset;  // offsets from room coordinates for 4 kirbys to be drawn without overlap in one room
        struct AreaMapSprite* kirby = areamap->kirbySprites + playerId;
        struct AreaMapSprite* abilityAccessory = areamap->abilityAccessories + playerId;
        u32 x, y;
        bool32 isKirbyOnScreen;
        bool32 __attribute__((unused)) isKirbyXOnScreen;

        if (cameraBg2->areaId != kirby->areaId) continue;

        switch (areamap->roomInfos[playerId]->type) {
        case AREAMAP_ROOM_BIG:
        case AREAMAP_ROOM_STAR:
            xOffset = gAreaMapBigRoomKirbyOffsets[playerId * 2];
            yOffset = gAreaMapBigRoomKirbyOffsets[playerId * 2 + 1];
            break;
        case AREAMAP_ROOM_NORMAL:
        default:
            xOffset = gAreaMapNormalRoomKirbyOffsets[playerId * 2];
            yOffset = gAreaMapNormalRoomKirbyOffsets[playerId * 2 + 1];
            break;
        }

        kirby->sprite.x = 120 + ((kirby->globalX + xOffset - cameraBg2->x) * cameraBg2->zoomEffective >> 8);
        kirby->sprite.y = 80 + ((kirby->globalY + yOffset - cameraBg2->y) * cameraBg2->zoomEffective >> 8);
        abilityAccessory->sprite.x = kirby->sprite.x;
        abilityAccessory->sprite.y = kirby->sprite.y;

        x = (u32)abilityAccessory->sprite.x;
        y = (u32)abilityAccessory->sprite.y;

        isKirbyXOnScreen = x + 29 <= 288;
        isKirbyOnScreen = x + 29 <= 288 && y + 15 <= 190;
        if (isKirbyOnScreen) {
            sub_0815604C(&kirby->sprite);
            if (gUnk_08350B30[gKirbys[playerId].ability].animId) {
                sub_0815604C(&abilityAccessory->sprite);
            }
        }
    }
}

// TODO: Revisit when sprite functions are better understood
static void AreaMapTextLabelInit(struct AreaMap* areamap) {
    u8 textLabelIdx;
    CpuFill32(0, areamap->textLabels, sizeof(areamap->textLabels[0]) * 8);

    for (textLabelIdx = 0; textLabelIdx < gAreaMapTextLabelsNum[areamap->cameraBg2.areaId]; textLabelIdx++) {
        const struct Unk_08361A7C* unk08361A7C = &gUnk_08361A7C[gUnk_08361A58[areamap->cameraBg2.areaId] + textLabelIdx];
        AreaMapSpriteInit(areamap->textLabels + textLabelIdx, (u32)OBJ_VRAM0 + 0x2000, 0x280, gUnk_08363898[gLanguage][unk08361A7C->unk3].animId,
                          gUnk_08363898[gLanguage][unk08361A7C->unk3].variant, 0, 0xff, 0x10, 8, 0, 0, 0xc1000, unk08361A7C->unk4, unk08361A7C->unk8);
        sub_08155128(&areamap->textLabels[textLabelIdx].sprite);
    }
}

static void AreaMapDrawTextLabels(struct AreaMap* areamap) {
    u32 textLabelIdx;
    struct AreaMapCamera* cameraBg2;
    if (areamap->visibility[areamap->cameraBg2.areaId] != AREAMAP_FOUND_MAP) return;

    for (cameraBg2 = &areamap->cameraBg2, textLabelIdx = 0; textLabelIdx < gAreaMapTextLabelsNum[areamap->cameraBg2.areaId]; textLabelIdx++) {
        struct AreaMapSprite* textLabel = areamap->textLabels + textLabelIdx;
        bool32 isLabelOnScreen;
        bool32 __attribute__((unused)) isLabelXOnScreen;
        u32 x, y;

        textLabel->sprite.x = 120 + ((textLabel->globalX - cameraBg2->x) * cameraBg2->zoomEffective >> 8);
        textLabel->sprite.y = 80 + ((textLabel->globalY - cameraBg2->y) * cameraBg2->zoomEffective >> 8);

        x = (u32)textLabel->sprite.x;
        y = (u32)textLabel->sprite.y;

        isLabelXOnScreen = x + 29 <= 288;
        isLabelOnScreen = x + 29 <= 288 && y + 15 <= 190;
        if (isLabelOnScreen) {
            sub_081564D8(&textLabel->sprite);
        }
    }
}

static void AreaMapChooseUI(s32 areaId, enum AreaMapVisibility visibility) {
    if (areaId < AREA_RAINBOW_ROUTE) return;
    if (areaId > AREA_CANDY_CONSTELLATION) return;

    LZ77UnCompVram(gAreaMapUIAreaTitleTilesets[areaId - 1], BG_CHAR_ADDR(2) + 0x2800);
    LZ77UnCompVram(gAreaMapUITilemap, BG_SCREEN_ADDR(23));

    if (visibility != AREAMAP_FOUND_MAP) {
        MapDisableUIElements(DISABLE_AREAMAP_A);
    }

    if (gUnk_0203AD50 != gUnk_0203AD3C) {
        MapDisableUIElements(DISABLE_AREAMAP_B);
    }

    if (gPauseMenus[0].flags & MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE) {
        MapDisableUIElements(DISABLE_AREAMAP_L);
        MapDisableUIElements(DISABLE_AREAMAP_R);
    }
}

void WorldMapPauseEnableUI(void) {
    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gMapUIPalette, 0x70, ARRAY_COUNT(gMapUIPalette));
    }
    else {
        DmaCopy16(3, gMapUIPalette, gBgPalette + 0x70, sizeof(gMapUIPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    LZ77UnCompVram(gMapUITileset, BG_CHAR_ADDR(2) + 0x1000);
    LZ77UnCompVram(gWorldMapUITilemap, BG_SCREEN_ADDR(23));

    if (gUnk_0203AD50 != gUnk_0203AD3C) {
        MapDisableUIElements(DISABLE_WORLDMAP_B);
    }
}

static void AreaMapRoomsOverwriteTilemap(const u8 tilemapEntries[], u8 startColumn, u8 startRow, u8 numRows) {
    u32 row;
    for (row = 0; row < numRows; row++) {
        u16 newEntry;
        u32 tileAddress = (u32)BG_SCREEN_ADDR(24) + 0x80 * (startRow + row) + startColumn;
        u16 curEntry16 = *(u16*)tileAddress;
        u32 curEntry32 = *(u32*)tileAddress;

        switch (numRows) {
        case 2:
            newEntry = tilemapEntries[1] << 8 | tilemapEntries[0];
            tilemapEntries += 2;
            *(u16*)tileAddress = newEntry;
            break;

        case 3: break;

        case 4:
            if (tileAddress & 1) {
                *(u16*)tileAddress = tilemapEntries[0] << 0x8 | curEntry32 >> 0x18;
                tileAddress += 2;
                *(u16*)tileAddress = tilemapEntries[2] << 0x8 | tilemapEntries[1];
                tileAddress += 2;
                *(u16*)tileAddress = *(u8*)tileAddress << 0x8 | tilemapEntries[3];
            }
            else {
                *(u16*)tileAddress = tilemapEntries[0] << 0x8 | (*(u16*)tileAddress & 0xff00) >> 0x8;
                tileAddress += 2;
                *(u16*)tileAddress = tilemapEntries[2] << 0x8 | tilemapEntries[1];
                tileAddress += 2;
                curEntry16 = *(u16*)tileAddress;
                *(u16*)tileAddress = (curEntry16 & 0xff00) | tilemapEntries[3];
            }
            tilemapEntries += 4;
            break;
        }
    }
}

static void AreaMapRoomsChooseTile(struct AreaMap* areamap) {
    u32 i;
    enum AreaId areaId = areamap->cameraBg2.areaId;
    u32 roomInfoIdx = gAreaMapRoomInfoOffset[areaId];
    bool32 foundMap = HasBigChest(areaId);

    for (i = 0; i < gAreaMapRoomInfoLength[areaId]; roomInfoIdx++, i++) {
        u16 roomId = gAreaMapRoomInfos[roomInfoIdx].roomId;

        enum AreaMapRoomCompletion roomCompletion = AREAMAP_ROOM_UNVISITED;
        if (sub_08002A5C(roomId)) {
            roomCompletion = AREAMAP_ROOM_VISITED;
            if (sub_08002AAC(roomId) == sub_08002AD0(roomId)) {
                roomCompletion = AREAMAP_ROOM_COMPLETED;
            }
        }

        if (gAreaMapRoomIdsAndShards[areaId][0] == roomId && areamap->visibility[areaId] != AREAMAP_FOUND_MAP) {
            AreaMapRoomsOverwriteTilemap(gAreaMapTilemapEntriesMapRoom[0][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                         gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(gAreaMapTilemapEntriesMapRoom[0][0]));
        }
        else if (gAreaMapRoomIdsAndShards[areaId][1] == roomId && areamap->visibility[areaId] == AREAMAP_FOUND_MAP &&
                 !HasShard(gAreaMapRoomIdsAndShards[areaId][2])) {
            AreaMapRoomsOverwriteTilemap(gAreaMapTilemapEntriesShardRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                         gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(gAreaMapTilemapEntriesShardRoom[0][0]));
        }
        else if (!foundMap && roomCompletion == AREAMAP_ROOM_UNVISITED) {
            continue;
        }
        else
            switch (gAreaMapRoomInfos[roomInfoIdx].type) {
            case AREAMAP_ROOM_NORMAL:
                AreaMapRoomsOverwriteTilemap(gAreaMapTilemapEntriesNormalRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(gAreaMapTilemapEntriesNormalRoom[0][0]));
                break;
            case AREAMAP_ROOM_BIG:
                AreaMapRoomsOverwriteTilemap(gAreaMapTilemapEntriesBigRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(gAreaMapTilemapEntriesBigRoom[0][0]));
                break;
            case AREAMAP_ROOM_STAR:
                AreaMapRoomsOverwriteTilemap(gAreaMapTilemapEntriesStarRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(gAreaMapTilemapEntriesStarRoom[0][0]));
                break;
            }
    }
}

static void AreaMapBGInit(struct AreaMap* areamap) {
    u8 areaId = areamap->cameraBg2.areaId;

    areamap->areaBg.unkA = 0;
    areamap->areaBg.unk18 = 0;
    areamap->areaBg.unk1A = 0;
    areamap->areaBg.unk1C = areaId + 0xb7;
    areamap->areaBg.unk1E = 0;
    areamap->areaBg.unk20 = 0;
    areamap->areaBg.unk22 = 0;
    areamap->areaBg.unk24 = 0;
    areamap->areaBg.unk26 = 0x20;
    areamap->areaBg.unk28 = 0x16;
    areamap->areaBg.prevScrollX = 0x7fff;
    areamap->areaBg.prevScrollY = 0x7fff;
    areamap->areaBg.paletteOffset = 0;
    areamap->areaBg.tilesVram = (u32)BG_CHAR_ADDR(1);
    areamap->areaBg.unk2E = 0x18;
    areamap->areaBg.tilemapVram = (u32)BG_SCREEN_ADDR(22);
    LZ77UnCompVram(gAreaMapBGTilesets[areaId], BG_CHAR_ADDR(1));

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation(gAreaMapBGPalette[areaId] + 0x80, 0x80, 0x80);
    else {
        DmaCopy16(3, gAreaMapBGPalette[areaId] + 0x80, gBgPalette + 0x80, 0x100);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    sub_08153060(&areamap->areaBg);
}

static void AreaMapCameraInitPosition(struct AreaMap* areamap) {
    s32 playerId;

    switch (areamap->visibility[areamap->cameraBg2.areaId]) {
    case AREAMAP_UNVISITED:
    case AREAMAP_NO_MAP:
        areamap->cameraBg2.x = gAreaMapScreenSizes[areamap->cameraBg2.areaId][2] * 4;
        areamap->cameraBg2.y = gAreaMapScreenSizes[areamap->cameraBg2.areaId][3] * 4;
        areamap->cameraBg2.zoomEffective = 0x61;
        break;
    case AREAMAP_FOUND_MAP:
        playerId = -1;
        if (areamap->kirbySprites[gUnk_0203AD50].areaId == areamap->cameraBg2.areaId) {
            playerId = gUnk_0203AD50;
        }
        else if (areamap->kirbySprites[gUnk_0203AD3C].areaId == areamap->cameraBg2.areaId) {
            playerId = gUnk_0203AD3C;
        }

        if (playerId != -1) {
            switch (areamap->roomInfos[playerId]->type) {
            case AREAMAP_ROOM_BIG:
            case AREAMAP_ROOM_STAR:
                areamap->cameraBg2.x = areamap->roomInfos[playerId]->tileStartColumn * 8 + 0x10;
                areamap->cameraBg2.y = areamap->roomInfos[playerId]->tileStartRow * 8 + 0x10;
                break;
            case AREAMAP_ROOM_NORMAL:
            default:
                areamap->cameraBg2.x = areamap->roomInfos[playerId]->tileStartColumn * 8 + 0x8;
                areamap->cameraBg2.y = areamap->roomInfos[playerId]->tileStartRow * 8 + 0x8;
                break;
            }
        }
        else {
            // Place camera in the middle
            areamap->cameraBg2.x = gAreaMapScreenSizes[areamap->cameraBg2.areaId][2] * 4;
            areamap->cameraBg2.y = gAreaMapScreenSizes[areamap->cameraBg2.areaId][3] * 4;
        }
        areamap->cameraBg2.zoomEffective = areamap->cameraBg2.zoomUnlockedAreas;
        break;
    }
}

static void AreaMapRoomsInit(struct AreaMap* areamap) {
    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP) {
        RLUnCompVram(gAreaMapRoomsTilemap + gAreaMapRoomsTilemapOffsets[areamap->cameraBg2.areaId], BG_SCREEN_ADDR(24));
    }
    else {
        RLUnCompVram(gAreaMapRoomsTilemap + gAreaMapRoomsTilemapOffsets[AREA_TUTORIAL], BG_SCREEN_ADDR(24));
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], 0x40, ARRAY_COUNT(gAreaMapMapRoomPalette[0]));
    }
    else {
        DmaCopy16(3, gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], gBgPalette + 0x40, sizeof(gAreaMapMapRoomPalette[0]));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    AreaMapRoomsChooseTile(areamap);
}

static void AreaMapDoPalettePulse(struct AreaMapPalettePulse* palettePulse) {
    const u16* state = (u16*)(palettePulse->states + palettePulse->header.stateSize * palettePulse->stateIdx);
    palettePulse->waitCounter++;
    if (palettePulse->waitCounter <= *state) return;

    palettePulse->waitCounter = 0;
    palettePulse->stateIdx++;
    if (palettePulse->stateIdx >= palettePulse->header.maxStateIndex) {
        palettePulse->stateIdx = 0;
    }

    state = (u16*)(palettePulse->states + palettePulse->header.stateSize * palettePulse->stateIdx);
    state++;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(state, palettePulse->header.paletteOffset / 2, (palettePulse->header.stateSize - 2) >> 1);
    }
    else {
        DmaSet(3, state, gBgPalette + palettePulse->header.paletteOffset / 2,
               (DMA_ENABLE | DMA_START_NOW | DMA_16BIT | DMA_SRC_INC | DMA_DEST_INC) << 16 | (palettePulse->header.stateSize - 2) >> 1);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
}

void CreateAreaMap(void) {
    struct Task* task;
    struct AreaMap *areamap, *tmp;
    s32 playerOrAreaId, pulseType, id, numVisitedAreas;
    u16 language;
    struct AreaMapPalettePulse* palettePulse;
    const struct AreaMapRoomInfo* curRoomInfo;

    gDispCnt = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(22) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_256COLOR | BGCNT_SCREENBASE(24) | BGCNT_AFF1024x1024;
    gBgScrollRegs[0][1] = 8;
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[2][0] = 0;

    task = TaskCreate(AreaMapInit, sizeof(struct AreaMap), 0x1000, TASK_USE_IWRAM | TASK_x0004, NULL);
    areamap = tmp = TaskGetStructPtr(task);
    areamap->nextAreaMapCounter = 0;
    areamap->toGameCounter = 0;
    areamap->gotoNextAreaMap = 0;
    (&areamap->cameraBg2)->flags |= 0x0001;

    // Checks, whether at least one room of an area has already been visited
    for (playerOrAreaId = 0; playerOrAreaId < (s32)ARRAY_COUNT(areamap->visibility); playerOrAreaId++) {
        s32 roomInfoIdx;
        areamap->visibility[playerOrAreaId] = AREAMAP_UNVISITED;
        id = gAreaMapRoomInfoOffset[playerOrAreaId];  // base index
        for (roomInfoIdx = 0; roomInfoIdx < gAreaMapRoomInfoLength[playerOrAreaId]; roomInfoIdx++) {
            if (sub_08002A5C(gAreaMapRoomInfos[id + roomInfoIdx].roomId)) {
                areamap->visibility[playerOrAreaId] = AREAMAP_NO_MAP;
                break;
            }
        }
        if (HasBigChest(playerOrAreaId)) {
            areamap->visibility[playerOrAreaId] = AREAMAP_FOUND_MAP;
        }
    }

    numVisitedAreas = 0;
    for (playerOrAreaId = 1; playerOrAreaId < (s32)ARRAY_COUNT(areamap->visibility); playerOrAreaId++) {
        if (areamap->visibility[playerOrAreaId] != AREAMAP_UNVISITED) {
            numVisitedAreas++;
        }
    }
    if (numVisitedAreas < 2) {
        gPauseMenus[0].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gPauseMenus[1].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gPauseMenus[2].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gPauseMenus[3].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
    }

    AreaMapFindRoomsWithKirbys(areamap);
    sub_08126C48();

    areamap->cameraBg2.unk0 = 0;
    areamap->cameraBg2.unk2 = 0;
    curRoomInfo = areamap->roomInfos[gUnk_0203AD50];
    areamap->cameraBg2.areaId = curRoomInfo->areaId;
    areamap->cameraBg2.x = curRoomInfo->tileStartColumn * 8;
    areamap->cameraBg2.y = curRoomInfo->tileStartRow * 8;
    areamap->cameraBg2.flags = 0;
    areamap->cameraBg2.zoomEffective = areamap->cameraBg2.zoomUnlockedAreas = gPauseMenus[gUnk_0203AD3C].zoomAreaMap * 0x10;
    areamap->cameraBg2.doZoom = 0;

    AreaMapBGInit(areamap);
    for (id = 0; id < gUnk_0203AD44; id++) {  // playerIds
        AreaMapKirbySpritesInit(&areamap->kirbySprites[id].sprite, &areamap->abilityAccessories[id].sprite, id);
    }
    AreaMapTextLabelInit(areamap);

    language = gLanguage;
    AreaMapArrowInit(areamap->arrows + 0, gUnk_08363748[language][0xd].animId, gUnk_08363748[language][0xd].variant, 10, 80, 0xa0, 0x500);
    AreaMapArrowInit(areamap->arrows + 1, gUnk_08363748[language][0xa].animId, gUnk_08363748[language][0xa].variant, 120, 20, 0x780, 0x140);
    AreaMapArrowInit(areamap->arrows + 2, gUnk_08363748[language][0xb].animId, gUnk_08363748[language][0xb].variant, 230, 80, 0xe60, 0x500);
    AreaMapArrowInit(areamap->arrows + 3, gUnk_08363748[language][0xc].animId, gUnk_08363748[language][0xc].variant, 120, 140, 0x780, 0x8c0);
    sub_08155128(&areamap->arrows[0].sprite);
    sub_08155128(&areamap->arrows[1].sprite);
    sub_08155128(&areamap->arrows[2].sprite);
    sub_08155128(&areamap->arrows[3].sprite);

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapRoomsPalette, 0, ARRAY_COUNT(gAreaMapRoomsPalette));
    }
    else {
        DmaCopy16(3, gAreaMapRoomsPalette, gBgPalette, sizeof(gAreaMapRoomsPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], 0x40,
                                        ARRAY_COUNT(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId]));
    }
    else {
        DmaCopy16(3, gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], gBgPalette + 0x40, sizeof(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId]));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapShardPalette, 0x50, ARRAY_COUNT(gAreaMapShardPalette));
    }
    else {
        DmaCopy16(3, gAreaMapShardPalette, gBgPalette + 0x50, sizeof(gAreaMapShardPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    CpuCopy32(gAreaMapRoomsTileset, (void*)VRAM, sizeof(gAreaMapRoomsTileset));
    CpuCopy32(gAreaMapMapRoomTileset, BG_CHAR_ADDR(0) + 0x2000, sizeof(gAreaMapMapRoomTileset));
    CpuCopy32(gAreaMapShardTileset[0], BG_CHAR_ADDR(0) + 0x2400, sizeof(gAreaMapShardTileset[0]));

    areamap->shardRotation = -1;
    areamap->shardRotationIdx = -1;

    palettePulse = areamap->palettePulse;
    for (pulseType = 0; pulseType < ARRAY_COUNT(gAreaMapPalettePulseOffsets); pulseType++) {
        const u16* palettePulseStates = gAreaMapPalettePulseStates + gAreaMapPalettePulseOffsets[pulseType];
        CpuCopy16(palettePulseStates, &palettePulse[pulseType].header, sizeof(palettePulse[pulseType].header));
        palettePulse[pulseType].states = (u8*)(palettePulseStates + sizeof(palettePulse[pulseType].header) / 2);
        palettePulse[pulseType].stateIdx = 0;
        palettePulse[pulseType].waitCounter = 0;
    }

    AreaMapDrawKirbysInRoom(areamap);
    id = areamap->cameraBg2.areaId;
    AreaMapEnableUI(id, areamap->visibility[id]);
    AreaMapCameraInitPosition(areamap);

    AreaMapCameraScroll(&areamap->cameraBg2);
    (&areamap->cameraBg2)->flags |= 0x0001;

    for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
        gPauseMenus[playerOrAreaId].flags &= ~(MENU_FLAG_AREA_DESCEND | MENU_FLAG_AREA_ASCEND);
    }
}

static void AreaMapInit(void) {
    struct AreaMap* areamap;
    areamap = TaskGetStructPtr(gCurTask);

    if (gPauseMenus[0].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[1].flags & MENU_FLAG_BACK_TO_GAME ||
        gPauseMenus[2].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[3].flags & MENU_FLAG_BACK_TO_GAME) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = AreaMapToGame;
    }
    else {
        sub_0803D2A8(0, 0xff);
        sub_0803D280(0x80, 0x7f);
        gCurTask->main = AreaMapMain;
        AreaMapRoomsInit(areamap);
    }
}

/* Updates:
 * - Camera Scroll
 * - Blinking screen arrow sprites on the edge of the screen
 * - Palette pulse for rooms and arrow paths
 * - Kirby and TextLabel placement
 * - Shard rotation
 */
static void AreaMapUpdateDynamics(struct AreaMap* areamap) {
    u32 playerId, pulseType;

    for (playerId = 0; playerId < 4; playerId++) {
        sub_0803E558(playerId);
    }

    AreaMapCameraScroll(&areamap->cameraBg2);

    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP && (areamap->arrowPulseCounter & 0x2f) > 0xf) {
        u8 areaId = areamap->cameraBg2.areaId;
        if (areamap->cameraBg2.x > gAreaMapScreenSizes[areaId][0] * 8) {
            sub_0815604C(&areamap->arrows[0].sprite);
        }
        if (areamap->cameraBg2.y > gAreaMapScreenSizes[areaId][1] * 8) {
            sub_0815604C(&areamap->arrows[1].sprite);
        }
        if (areamap->cameraBg2.x < gAreaMapScreenSizes[areaId][2] * 8) {
            sub_0815604C(&areamap->arrows[2].sprite);
        }
        if (areamap->cameraBg2.y < gAreaMapScreenSizes[areaId][3] * 8) {
            sub_0815604C(&areamap->arrows[3].sprite);
        }
    }

    for (pulseType = 0; pulseType < ARRAY_COUNT(areamap->palettePulse); pulseType++) {
        AreaMapDoPalettePulse(&areamap->palettePulse[pulseType]);
    }

    AreaMapDrawKirbysInRoom(areamap);
    AreaMapDrawTextLabels(areamap);
    areamap->arrowPulseCounter++;

    areamap->shardRotation--;
    if (areamap->shardRotation < 1) {
#ifndef NONMATCHING
        register s16 *shardRotationIdx2, *shardRotationIdx asm("r1");
        register u32 shardRotation asm("r4");

        shardRotationIdx = &areamap->shardRotationIdx;
        ++*shardRotationIdx;
        shardRotationIdx2 = shardRotationIdx;
        while (TRUE) {
            shardRotationIdx = shardRotationIdx2;
            shardRotation = gAreaMapShardTilesetIndicesAndTimers[*shardRotationIdx];
            if (shardRotation == 0xff) {
                *shardRotationIdx = 0;
            }
            else {
                CpuCopy32(gAreaMapShardTileset[shardRotation], BG_CHAR_ADDR(0) + 0x2400, sizeof(gAreaMapShardTileset[0]));
                ++*shardRotationIdx2;
                areamap->shardRotation = shardRotation = gAreaMapShardTilesetIndicesAndTimers[*shardRotationIdx2];
                break;
            }
        }
#else
        areamap->shardRotationIdx++;
        while (gAreaMapShardTilesetIndicesAndTimers[areamap->shardRotationIdx] == 0xff)
            areamap->shardRotationIdx = 0;
        CpuCopy32(gAreaMapShardTileset[gAreaMapShardTilesetIndicesAndTimers[areamap->shardRotationIdx]], BG_CHAR_ADDR(0) + 0x2400,
                  sizeof(gAreaMapShardTileset[0]));
        areamap->shardRotationIdx++;
        areamap->shardRotation = gAreaMapShardTilesetIndicesAndTimers[areamap->shardRotationIdx];
#endif
    }
}

static inline s32 AreaMapSearchNextAreaAscending(struct AreaMap* areamap) {
    s32 newAreaId, oldAreaId;
    oldAreaId = newAreaId = areamap->cameraBg2.areaId;
    do {
        newAreaId++;
        if (newAreaId > AREA_CANDY_CONSTELLATION) newAreaId = AREA_RAINBOW_ROUTE;
    } while (areamap->visibility[newAreaId] == AREAMAP_UNVISITED && newAreaId != oldAreaId);
    return newAreaId;
}

static inline s32 AreaMapSearchNextAreaDescending(struct AreaMap* areamap) {
    s32 newAreaId, oldAreaId;
    oldAreaId = newAreaId = areamap->cameraBg2.areaId;
    do {
        newAreaId--;
        if (newAreaId < AREA_RAINBOW_ROUTE) newAreaId = AREA_CANDY_CONSTELLATION;
    } while (areamap->visibility[newAreaId] == AREAMAP_UNVISITED && newAreaId != oldAreaId);
    return newAreaId;
}

static void AreaMapMain(void) {
    s32 playerOrAreaId;
    u16 pressedKeys;
    u16 __attribute__((unused)) input;
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (gPauseMenus[0].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[1].flags & MENU_FLAG_BACK_TO_GAME ||
        gPauseMenus[2].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[3].flags & MENU_FLAG_BACK_TO_GAME) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = AreaMapToGame;
        AreaMapUpdateDynamics(areamap);
        return;
    }

    if (areamap->gotoNextAreaMap) {
        if (areamap->nextAreaMapCounter++ > 8) {
            s32 nextAreaId;

            areamap->nextAreaMapCounter = 0;
            nextAreaId = areamap->gotoNextAreaMap == 1 ? AreaMapSearchNextAreaAscending(areamap) : AreaMapSearchNextAreaDescending(areamap);
            playerOrAreaId = (u8)nextAreaId;
            if (playerOrAreaId) {
                ++playerOrAreaId;
                --playerOrAreaId;
            }
            areamap->cameraBg2.areaId = playerOrAreaId;

            AreaMapCameraInitPosition(areamap);
            (&areamap->cameraBg2)->flags |= 0x0001;
            sub_0803D2A8(0, 0xff);
            sub_0803D280(0x80, 0x7f);
            AreaMapTextLabelInit(areamap);
            AreaMapBGInit(areamap);
            AreaMapRoomsInit(areamap);
            playerOrAreaId = areamap->cameraBg2.areaId;
            AreaMapEnableUI(playerOrAreaId, areamap->visibility[playerOrAreaId]);
            areamap->gotoNextAreaMap = 0;
        }
        AreaMapUpdateDynamics(areamap);
        return;
    }

    input = gPauseMenus[gUnk_0203AD3C].input;
    pressedKeys = gPauseMenus[gUnk_0203AD3C].pressedKeys;
    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP) {
        if (gPauseMenus[gUnk_0203AD3C].input & DPAD_UP) {
            areamap->cameraBg2.y -= 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }
        else if (gPauseMenus[gUnk_0203AD3C].input & DPAD_DOWN) {
            areamap->cameraBg2.y += 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }

        if (gPauseMenus[gUnk_0203AD3C].input & DPAD_RIGHT) {
            areamap->cameraBg2.x += 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }
        else if (gPauseMenus[gUnk_0203AD3C].input & DPAD_LEFT) {
            areamap->cameraBg2.x -= 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }

        if (pressedKeys & A_BUTTON) {
            if (!areamap->cameraBg2.doZoom) {
                if (areamap->cameraBg2.zoomUnlockedAreas == 0x0100) {
                    areamap->cameraBg2.doZoom = -1;
                }
                else {
                    areamap->cameraBg2.doZoom = 1;
                }
            }
            else {
                areamap->cameraBg2.doZoom *= -1;
            }
        }

        if (areamap->cameraBg2.doZoom) {
            if (areamap->cameraBg2.doZoom == -1) {
                areamap->cameraBg2.zoomUnlockedAreas -= 0x10;
                if (areamap->cameraBg2.zoomUnlockedAreas == 0x80) {
                    areamap->cameraBg2.doZoom = 0;
                }
            }
            else {
                areamap->cameraBg2.zoomUnlockedAreas += 0x10;
                if (areamap->cameraBg2.zoomUnlockedAreas == 0x100) {
                    areamap->cameraBg2.doZoom = 0;
                }
            }

            areamap->cameraBg2.zoomEffective = areamap->cameraBg2.zoomUnlockedAreas;
            (&areamap->cameraBg2)->flags |= 0x0001;
            if (!areamap->cameraBg2.doZoom) {
                gPauseMenus[gUnk_0203AD3C].zoomAreaMap = areamap->cameraBg2.zoomUnlockedAreas / 0x10;
            }
        }
    }

    if (areamap->kirbySprites[gUnk_0203AD3C].areaId && (gPauseMenus[gUnk_0203AD3C].flags & (MENU_FLAG_AREA_DESCEND | MENU_FLAG_AREA_ASCEND))) {
        if (gPauseMenus[gUnk_0203AD3C].flags & MENU_FLAG_AREA_ASCEND) {
            areamap->gotoNextAreaMap = 1;
        }
        else {
            areamap->gotoNextAreaMap = -1;
        }
        for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
            gPauseMenus[playerOrAreaId].flags &= ~(MENU_FLAG_AREA_DESCEND | MENU_FLAG_AREA_ASCEND);
        }
        sub_08128BEC(0x20, 1, 2);
    }

    AreaMapUpdateDynamics(areamap);

    for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
        if (gPauseMenus[playerOrAreaId].flags & MENU_FLAG_CURRENT_PLAYER &&
            (gPauseMenus[playerOrAreaId].menuId == MENU_HELP || gPauseMenus[playerOrAreaId].menuId == MENU_WORLDMAP)) {
            areamap->nextMenuId = gPauseMenus[playerOrAreaId].menuId;
            CreatePauseFade(0x20, 1);
            gCurTask->main = AreaMapToNextMenu;
        }
    }
}

enum KirbyRoomFlagIndices GetKirbyRoomFlagIndex(u32 playerId) {
    s32 roomInfoIdx;
    u16 playerRoomId = gKirbys[playerId].base.base.base.roomId;
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 9) {
        return KIRBY_IN_TUTORIAL_ROOM;
    }
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 10) {
        return KIRBY_IN_DIMENSION_MIRROR;
    }
    for (roomInfoIdx = 0; roomInfoIdx < (s32)ARRAY_COUNT(gAreaMapRoomInfos); roomInfoIdx++) {
        if (playerRoomId == gAreaMapRoomInfos[roomInfoIdx].roomId) {
            return KIRBY_IN_NORMAL_ROOM;
        }
    }
    return KIRBY_OUTSIDE_AREAMAP;
}
