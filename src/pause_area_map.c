#include "pause_area_map.h"
#include "bg.h"
#include "code_08124BE0.h"
#include "constants/pause_menu.h"
#include "functions.h"
#include "global.h"
#include "kirby.h"
#include "palette.h"
#include "pause_fade.h"
#include "pause_help.h"
#include "pause_world_map.h"
#include "subgames.h"
#include "treasures.h"

static void AreaMapChooseUIAreaTitle(s32, enum AreaMapVisibility);
static void AreaMapInit(void);
static void sub_08128074(struct AreaMap*);
static void AreaMapMain(void);

extern const u16 gAreaMapRoomsPalette[0x40];  // Remaining 0x80 bytes seem to be zero-filled padding
extern const u32 gAreaMapRoomsTileset[0x1000];
extern const u32 gAreaMapRoomsTilemapOffsets[0xb];
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

extern const u16 gAreaMapRoomInfoAreaOffset[0xb];
extern const u8 gAreaMapRoomInfoAreaLength[0xb];

// Matches regalloc only as two-dimensional array, with weird alignment and size 0x47
// Indices per area - 0: startX, 1: startY, 2: endX, 3: endY
extern const u8 gAreaMapScreenSizes[][4];  // in tiles

extern const struct AreaMapRoomInfo gAreaMapRoomInfos[0x107];

extern const u16 gUnk_08361A58[0xb];
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
extern const struct Unk_02021590 gUnk_08363748[NUM_LANGUAGES][0xe];
extern const struct Unk_02021590 gUnk_08363898[][0xb];
extern const u8 gUnk_08363A90[8];
extern const u8 gUnk_08363A98[8];
// TODO when pause-menu file boundaries have been set:
// data_22.s ends with gUnk_08363A98, perfect for defining data above

extern const u32* const gUnk_08D611C8[0xb];  // Backgrounds of areas (1-9) on the area map

// Array of pointers to arrays with 0x200 size (except for last index, that's NULL)
extern const u16* const gUnk_08D611F4[0xb];

extern const u16 gAreaMapMapRoomPalette[0xa][5];
extern const u16 gAreaMapShardPalette[0xa];
extern const u32 gAreaMapShardTileset[4][0x40];
extern const u32 gAreaMapMapRoomTileset[0x100];
extern const u16 gAreaMapRoomIdsAndShards[0xa][3];  // Indices per area: 0 - MapRoom, 1 - BossRoom, 2 - Shardnum
extern const u8 gUnk_08D61B20[0x1c];

// Holds indices to AreaMap-UI tiles for sub_08128868 to override with empty tiles:
// index 0 & 2: B-QUIT
// index 1: A-ZOOM
// index 3: <<L
// index 4: R>>
extern const u16 gUnk_08D61220[5][4];

extern const u32* const gAreaMapUIAreaTitleTilesets[9];

#define AreaMapArrowInit(arrowp, _animId, _variant, _x, _y, _unk28, _unk2A)                                                   \
    {                                                                                                                         \
        SpriteInitNoFunc(&(arrowp)->sprite, 0x06012000, 0x1c0, (_animId), (_variant), 0, 0xff, 0x10, 8, (_x), (_y), 0xc0000); \
        (arrowp)->unk28 = (_unk28);                                                                                           \
        (arrowp)->unk2A = (_unk2A);                                                                                           \
        (arrowp)->unk2C = 0;                                                                                                  \
        (arrowp)->unk2E = 0;                                                                                                  \
    }

#define AreaMapSpriteInit(mapspritep, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, unk1CVal, palIdVal, xVal, yVal, unk8Val,  \
                          globalXVal, globalYVal)                                                                                                  \
    ({                                                                                                                                             \
        SpriteInitNoFunc(&(mapspritep)->sprite, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, unk1CVal, palIdVal, xVal, yVal, \
                         unk8Val);                                                                                                                 \
        (mapspritep)->globalX = (globalXVal);                                                                                                      \
        (mapspritep)->globalY = (globalYVal);                                                                                                      \
    })

#define AreaMapCameraScroll(cameraBg2)                                                                                                          \
    ({                                                                                                                                          \
        if ((cameraBg2)->x <= gAreaMapScreenSizes[(cameraBg2)->areaId][0] * 8) {                                                                \
            (cameraBg2)->x = gAreaMapScreenSizes[(cameraBg2)->areaId][0] * 8;                                                                   \
        }                                                                                                                                       \
        if ((cameraBg2)->y <= gAreaMapScreenSizes[(cameraBg2)->areaId][1] * 8) {                                                                \
            (cameraBg2)->y = gAreaMapScreenSizes[(cameraBg2)->areaId][1] * 8;                                                                   \
        }                                                                                                                                       \
        if ((cameraBg2)->x >= gAreaMapScreenSizes[(cameraBg2)->areaId][2] * 8) {                                                                \
            (cameraBg2)->x = gAreaMapScreenSizes[(cameraBg2)->areaId][2] * 8;                                                                   \
        }                                                                                                                                       \
        if ((cameraBg2)->y >= gAreaMapScreenSizes[(cameraBg2)->areaId][3] * 8) {                                                                \
            (cameraBg2)->y = gAreaMapScreenSizes[(cameraBg2)->areaId][3] * 8;                                                                   \
        }                                                                                                                                       \
        if ((cameraBg2)->doScroll & 0x0001) {                                                                                                   \
            sub_081548A8(0, (cameraBg2)->zoomEffective, (cameraBg2)->zoomEffective, (cameraBg2)->x, (cameraBg2)->y, 0x78, 0x50, gBgAffineRegs); \
            (cameraBg2)->doScroll &= ~0x0001;                                                                                                   \
        }                                                                                                                                       \
    })

inline void AreaMapEnableUI(u32 areaId, enum AreaMapVisibility visibility) {
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
    LZ77UnCompVram(gMapUITileset, (void*)0x06009000);
    AreaMapChooseUIAreaTitle(areaId, visibility);
}

inline void AreaMapToNextMenu(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (!sub_0812A304()) {
        if (areamap->nextMenuId == MENU_WORLDMAP) {
            CreateWorldMap(WORLDMAP_NO_UNLOCK);
        }
        else if (areamap->nextMenuId == MENU_HELP) {
            sub_08124430();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }
    sub_08128074(areamap);
}

inline void AreaMapToGame(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    sub_08128074(areamap);
    if (areamap->unk46++ > 0x12) {
        TaskDestroy(gUnk_0203ACC0[gUnk_0203AD3C].unk0);
        TaskDestroy(gCurTask);
        sub_08039670();
    }
}

// Overrides tiles with empty ones at Screenbase 23 (Bg1, Areamap UI Tilemap)
static inline void EmptyScreenbase23(u32 arg0) {
    u32 r3, r2;
    u16* vramAdr;

    for (r3 = gUnk_08D61220[arg0][1]; r3 <= gUnk_08D61220[arg0][3]; r3++) {
        for (r2 = gUnk_08D61220[arg0][0], vramAdr = (u16*)0x0600b800 + 0x20 * r3 + r2; r2 <= gUnk_08D61220[arg0][2];
             vramAdr++, vramAdr++, vramAdr--, r2++) {
            *vramAdr = 0x7080;
        }
    }
}

inline void __attribute__((unused)) sub_08128868(u32 arg0) {
    EmptyScreenbase23(arg0);
}

static void sub_08126B58(struct Sprite* kirby, struct Sprite* abilityAccessory, u8 playerId) {
    u16 r5 = playerId * 2 + 0xa;
    if (playerId == gUnk_0203AD3C) {
        r5 = 0x8;
    }

    SpriteInitNoPointer2(kirby, 0x06013800 + playerId * 0x100, (r5 + 1) << 6, gUnk_08350AAC[gKirbys[playerId].ability].animId,
                         gUnk_08350AAC[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId, 0, 0, 0x41000);

    SpriteInitNoPointer2(abilityAccessory, 0x06013880 + playerId * 0x100, r5 << 6, gUnk_08350B30[gKirbys[playerId].ability].animId,
                         gUnk_08350B30[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId + 4, 0, 0, 0x41000);
}

static void sub_08126C48(void) {
    struct Sprite unkSprite0, unkSprite1;
    u16 animId;
    u8 variant, palette;

    u16 language = gLanguage;
    SpriteInitNoPointer2(&unkSprite0, 0x06012000, 0xa << 6, gUnk_08363748[language][0xd].animId, gUnk_08363748[language][0xd].variant, 0, 0xff, 0x10,
                         0, 0, 0, 0x40000);

    animId = gUnk_08363748[language][0].animId;
    variant = gUnk_08363748[language][0].variant;
    palette = 0x8;
    SpriteInitNoPointer2(&unkSprite1, 0x06012000, 0xa << 6, animId, variant, 0, 0xff, 0x10, palette, 0, 0, 0x80000);
}

static inline const struct AreaMapRoomInfo* sub_08126CEC_helper(u16 currentRoom) {
    u32 r1;
    for (r1 = 0; r1 < ARRAY_COUNT(gAreaMapRoomInfos); r1++) {
        if (currentRoom == gAreaMapRoomInfos[r1].roomId) {
            return gAreaMapRoomInfos + r1;
        }
    }
    return NULL;
}

static void sub_08126CEC(struct AreaMap* areamap) {
    u32 r2;
    for (r2 = 0; r2 < gUnk_0203AD44; r2++) {
        const struct AreaMapRoomInfo* r3;
        u16 currentRoom = gCurLevelInfo[r2].currentRoom;
        if (gUnk_08D6CD0C[currentRoom]->unk46 == 9 || gUnk_08D6CD0C[currentRoom]->unk46 == 10) {
            r3 = NULL;
        }
        else {
            r3 = sub_08126CEC_helper(currentRoom);
        }
        areamap->roomInfos[r2] = r3;

        if (r3) {
            areamap->kirbySprites[r2].areaId = r3->areaId;
            areamap->kirbySprites[r2].globalX = r3->tileStartColumn * 8;
            areamap->kirbySprites[r2].globalY = r3->tileStartRow * 8;
        }
        else {
            areamap->kirbySprites[r2].areaId = 0xff;
        }
    }
}

static void sub_08126DDC(struct AreaMap* areamap) {
    u32 playerId;
    struct AreaMapCamera* cameraBg2 = &areamap->cameraBg2;
    for (playerId = 0; playerId < gUnk_0203AD44; playerId++) {
        u8 xOffset, yOffset;  // for 4 kirbys to be drawn in one room on the areamap
        struct AreaMapSprite* kirby = areamap->kirbySprites + playerId;
        struct AreaMapSprite* abilityAccessory = areamap->abilityAccessories + playerId;
        u32 x, y;
        bool32 isKirbyOnScreen;
        bool32 __attribute__((unused)) isKirbyXOnScreen;

        if (cameraBg2->areaId != kirby->areaId) continue;

        switch (areamap->roomInfos[playerId]->type) {
        case AREAMAP_ROOM_BIG:
        case AREAMAP_ROOM_STAR:
            xOffset = gUnk_08363A98[playerId * 2];
            yOffset = gUnk_08363A98[playerId * 2 + 1];
            break;
        case AREAMAP_ROOM_NORMAL:
        default:
            xOffset = gUnk_08363A90[playerId * 2];
            yOffset = gUnk_08363A90[playerId * 2 + 1];
            break;
        }

        kirby->sprite.x = 0x78 + ((kirby->globalX + xOffset - cameraBg2->x) * cameraBg2->zoomEffective >> 8);
        kirby->sprite.y = 0x50 + ((kirby->globalY + yOffset - cameraBg2->y) * cameraBg2->zoomEffective >> 8);
        abilityAccessory->sprite.x = kirby->sprite.x;
        abilityAccessory->sprite.y = kirby->sprite.y;

        x = (u32)abilityAccessory->sprite.x;
        y = (u32)abilityAccessory->sprite.y;

        isKirbyXOnScreen = x + 0x1d <= 0x120;
        isKirbyOnScreen = x + 0x1d <= 0x120 && y + 0xf <= 0xbe;
        if (isKirbyOnScreen) {
            sub_0815604C(&kirby->sprite);
            if (gUnk_08350B30[gKirbys[playerId].ability].animId) {
                sub_0815604C(&abilityAccessory->sprite);
            }
        }
    }
}

static void sub_08126F04(struct AreaMap* areamap) {
    u8 textLabelIdx;
    CpuFill32(0, areamap->textLabels, sizeof(areamap->textLabels[0]) * 8);

    for (textLabelIdx = 0; textLabelIdx < gAreaMapTextLabelsNum[areamap->cameraBg2.areaId]; textLabelIdx++) {
        const struct Unk_08361A7C* unk08361A7C = &gUnk_08361A7C[gUnk_08361A58[areamap->cameraBg2.areaId] + textLabelIdx];
        AreaMapSpriteInit(areamap->textLabels + textLabelIdx, 0x06012000, 0x280, gUnk_08363898[gLanguage][unk08361A7C->unk3].animId,
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

        textLabel->sprite.x = 0x78 + ((textLabel->globalX - cameraBg2->x) * cameraBg2->zoomEffective >> 8);
        textLabel->sprite.y = 0x50 + ((textLabel->globalY - cameraBg2->y) * cameraBg2->zoomEffective >> 8);

        x = (u32)textLabel->sprite.x;
        y = (u32)textLabel->sprite.y;

        isLabelXOnScreen = x + 0x1d <= 0x120;
        isLabelOnScreen = x + 0x1d <= 0x120 && y + 0xf <= 0xbe;
        if (isLabelOnScreen) {
            sub_081564D8(&textLabel->sprite);
        }
    }
}

static void AreaMapChooseUIAreaTitle(s32 areaId, enum AreaMapVisibility visibility) {
    if (areaId < 1) return;
    if (areaId > 9) return;

    LZ77UnCompVram(gAreaMapUIAreaTitleTilesets[areaId - 1], (void*)0x0600a800);
    LZ77UnCompVram(gAreaMapUITilemap, (void*)0x0600b800);

    if (visibility != AREAMAP_FOUND_MAP) {
        EmptyScreenbase23(1);
    }

    if (gUnk_0203AD50 != gUnk_0203AD3C) {
        EmptyScreenbase23(2);
    }

    if (gUnk_0203ACC0->flags & MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE) {
        EmptyScreenbase23(3);
        EmptyScreenbase23(4);
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
    LZ77UnCompVram(gMapUITileset, (u16*)0x06009000);
    LZ77UnCompVram(gWorldMapUITilemap, (u16*)0x0600b800);

    if (gUnk_0203AD50 != gUnk_0203AD3C) {
        EmptyScreenbase23(0);
    }
}

static void AreaMapRoomsOverwriteTilemap(const u8 tilemapEntries[], u8 startColumn, u8 startRow, u8 numRows) {
    u32 row;
    for (row = 0; row < numRows; row++) {
        u16 newEntry;
        u32 tileAddress = 0x0600c000 + 0x80 * (startRow + row) + startColumn;
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
    u32 areaId = areamap->cameraBg2.areaId;
    u32 roomInfoIdx = gAreaMapRoomInfoAreaOffset[areaId];
    bool32 hasBigChest = HasBigChest(areaId);  // foundMap?

    for (i = 0; i < gAreaMapRoomInfoAreaLength[areaId]; roomInfoIdx++, i++) {
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
        else if (!hasBigChest && roomCompletion == AREAMAP_ROOM_UNVISITED) {
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

static void sub_0812752C(struct AreaMap* areamap) {
    u8 areaId = areamap->cameraBg2.areaId;

    areamap->unk0.unkA = 0;
    areamap->unk0.unk18 = 0;
    areamap->unk0.unk1A = 0;
    areamap->unk0.unk1C = areaId + 0xb7;
    areamap->unk0.unk1E = 0;
    areamap->unk0.unk20 = 0;
    areamap->unk0.unk22 = 0;
    areamap->unk0.unk24 = 0;
    areamap->unk0.unk26 = 0x20;
    areamap->unk0.unk28 = 0x16;
    areamap->unk0.prevScrollX = 0x7fff;
    areamap->unk0.prevScrollY = 0x7fff;
    areamap->unk0.paletteOffset = 0;
    areamap->unk0.tilesVram = 0x06004000;  // Charbase 1 -> BG0
    areamap->unk0.unk2E = 0x18;
    areamap->unk0.tilemapVram = 0x0600B000;  // Screenbase 22 -> BG0
    LZ77UnCompVram((u32*)gUnk_08D611C8[areaId], (u32*)0x06004000);

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation(gUnk_08D611F4[areaId] + 0x80, 0x80, 0x80);
    else {
        DmaCopy16(3, gUnk_08D611F4[areaId] + 0x80, gBgPalette + 0x80, 0x100);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    sub_08153060(&areamap->unk0);
}

static void sub_081275F8(struct AreaMap* areamap) {
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

// Loads Tilemap and MaproomPalette of area
static void sub_08127760(struct AreaMap* areamap) {
    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP) {
        RLUnCompVram(gAreaMapRoomsTilemap + gAreaMapRoomsTilemapOffsets[areamap->cameraBg2.areaId], (void*)0x0600c000);
    }
    else {
        RLUnCompVram(gAreaMapRoomsTilemap + gAreaMapRoomsTilemapOffsets[0], (void*)0x0600c000);
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
    areamap->unk46 = 0;
    areamap->gotoNextAreaMap = 0;
    (&areamap->cameraBg2)->doScroll |= 0x0001;

    // Checks, whether a room of an area has already been visited
    for (playerOrAreaId = 0; playerOrAreaId < (s32)ARRAY_COUNT(areamap->visibility); playerOrAreaId++) {
        s32 roomInfoIdx;
        areamap->visibility[playerOrAreaId] = AREAMAP_UNVISITED;
        id = gAreaMapRoomInfoAreaOffset[playerOrAreaId];  // base index
        for (roomInfoIdx = 0; roomInfoIdx < gAreaMapRoomInfoAreaLength[playerOrAreaId]; roomInfoIdx++) {
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
        gUnk_0203ACC0[0].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gUnk_0203ACC0[1].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gUnk_0203ACC0[2].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gUnk_0203ACC0[3].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
    }

    sub_08126CEC(areamap);
    sub_08126C48();

    areamap->cameraBg2.unk0 = 0;
    areamap->cameraBg2.unk2 = 0;
    curRoomInfo = areamap->roomInfos[gUnk_0203AD50];
    areamap->cameraBg2.areaId = curRoomInfo->areaId;
    areamap->cameraBg2.x = curRoomInfo->tileStartColumn * 8;
    areamap->cameraBg2.y = curRoomInfo->tileStartRow * 8;
    areamap->cameraBg2.doScroll = 0;
    areamap->cameraBg2.zoomEffective = areamap->cameraBg2.zoomUnlockedAreas = gUnk_0203ACC0[gUnk_0203AD3C].zoomAreaMap * 0x10;
    areamap->cameraBg2.doZoom = 0;

    sub_0812752C(areamap);
    for (id = 0; id < gUnk_0203AD44; id++) {  // playerIds
        sub_08126B58(&areamap->kirbySprites[id].sprite, &areamap->abilityAccessories[id].sprite, id);
    }
    sub_08126F04(areamap);

    language = gLanguage;
    AreaMapArrowInit(areamap->arrows + 0, gUnk_08363748[language][0xd].animId, gUnk_08363748[language][0xd].variant, 0xa, 0x50, 0xa0, 0x500);
    AreaMapArrowInit(areamap->arrows + 1, gUnk_08363748[language][0xa].animId, gUnk_08363748[language][0xa].variant, 0x78, 0x14, 0x780, 0x140);
    AreaMapArrowInit(areamap->arrows + 2, gUnk_08363748[language][0xb].animId, gUnk_08363748[language][0xb].variant, 0xe6, 0x50, 0xe60, 0x500);
    AreaMapArrowInit(areamap->arrows + 3, gUnk_08363748[language][0xc].animId, gUnk_08363748[language][0xc].variant, 0x78, 0x8c, 0x780, 0x8c0);
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
    CpuCopy32(gAreaMapMapRoomTileset, (void*)0x06002000, sizeof(gAreaMapMapRoomTileset));
    CpuCopy32(gAreaMapShardTileset[0], (void*)0x06002400, sizeof(gAreaMapShardTileset[0]));

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

    sub_08126DDC(areamap);
    id = areamap->cameraBg2.areaId;
    AreaMapEnableUI(id, areamap->visibility[id]);
    sub_081275F8(areamap);

    AreaMapCameraScroll(&areamap->cameraBg2);
    (&areamap->cameraBg2)->doScroll |= 0x0001;

    for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
        gUnk_0203ACC0[playerOrAreaId].flags &= ~(0x0100 | 0x0200);
    }
}

static void AreaMapInit(void) {
    struct AreaMap* areamap;
    areamap = TaskGetStructPtr(gCurTask);

    if (gUnk_0203ACC0[0].flags & 0x1000 || gUnk_0203ACC0[1].flags & 0x1000 || gUnk_0203ACC0[2].flags & 0x1000 || gUnk_0203ACC0[3].flags & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = AreaMapToGame;
    }
    else {
        sub_0803D2A8(0, 0xff);
        sub_0803D280(0x80, 0x7f);
        gCurTask->main = AreaMapMain;
        sub_08127760(areamap);
    }
}

static void sub_08128074(struct AreaMap* areamap) {
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

    sub_08126DDC(areamap);
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
            shardRotation = gUnk_08D61B20[*shardRotationIdx];
            if (shardRotation == 0xff) {
                *shardRotationIdx = 0;
            }
            else {
                CpuCopy32(gAreaMapShardTileset[shardRotation], (void*)0x06002400, sizeof(gAreaMapShardTileset[0]));
                ++*shardRotationIdx2;
                areamap->shardRotation = shardRotation = gUnk_08D61B20[*shardRotationIdx2];
                break;
            }
        }
#else
        areamap->shardRotationIdx++;
        while (gUnk_08D61B20[areamap->shardRotationIdx] == 0xff)
            areamap->shardRotationIdx = 0;
        CpuCopy32(gAreaMapShardTileset[gUnk_08D61B20[areamap->shardRotationIdx]], (void*)0x06002400, sizeof(gAreaMapShardTileset[0]));
        areamap->shardRotationIdx++;
        areamap->shardRotation = gUnk_08D61B20[areamap->shardRotationIdx];
#endif
    }
}

static inline s32 AreaMapSearchNextAreaAscending(struct AreaMap* areamap) {
    s32 newAreaId, oldAreaId;
    oldAreaId = newAreaId = areamap->cameraBg2.areaId;
    do {
        newAreaId++;
        if (newAreaId > 9) newAreaId = 1;
    } while (areamap->visibility[newAreaId] == AREAMAP_UNVISITED && newAreaId != oldAreaId);
    return newAreaId;
}

static inline s32 AreaMapSearchNextAreaDescending(struct AreaMap* areamap) {
    s32 newAreaId, oldAreaId;
    oldAreaId = newAreaId = areamap->cameraBg2.areaId;
    do {
        newAreaId--;
        if (newAreaId < 1) newAreaId = 9;
    } while (areamap->visibility[newAreaId] == AREAMAP_UNVISITED && newAreaId != oldAreaId);
    return newAreaId;
}

static void AreaMapMain(void) {
    s32 playerOrAreaId;
    u16 r4;
    u16 __attribute__((unused)) r3;
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (gUnk_0203ACC0[0].flags & 0x1000 || gUnk_0203ACC0[1].flags & 0x1000 || gUnk_0203ACC0[2].flags & 0x1000 || gUnk_0203ACC0[3].flags & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = AreaMapToGame;
        sub_08128074(areamap);
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

            sub_081275F8(areamap);
            (&areamap->cameraBg2)->doScroll |= 0x0001;
            sub_0803D2A8(0, 0xff);
            sub_0803D280(0x80, 0x7f);
            sub_08126F04(areamap);
            sub_0812752C(areamap);
            sub_08127760(areamap);
            playerOrAreaId = areamap->cameraBg2.areaId;
            AreaMapEnableUI(playerOrAreaId, areamap->visibility[playerOrAreaId]);
            areamap->gotoNextAreaMap = 0;
        }
        sub_08128074(areamap);
        return;
    }

    r3 = gUnk_0203ACC0[gUnk_0203AD3C].unkA;
    r4 = gUnk_0203ACC0[gUnk_0203AD3C].unk8;
    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP) {
        if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & DPAD_UP) {
            areamap->cameraBg2.y -= 4;
            (&areamap->cameraBg2)->doScroll |= 0x0001;
        }
        else if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & DPAD_DOWN) {
            areamap->cameraBg2.y += 4;
            (&areamap->cameraBg2)->doScroll |= 0x0001;
        }

        if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & DPAD_RIGHT) {
            areamap->cameraBg2.x += 4;
            (&areamap->cameraBg2)->doScroll |= 0x0001;
        }
        else if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & DPAD_LEFT) {
            areamap->cameraBg2.x -= 4;
            (&areamap->cameraBg2)->doScroll |= 0x0001;
        }

        if (r4 & A_BUTTON) {
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
            (&areamap->cameraBg2)->doScroll |= 0x0001;
            if (!areamap->cameraBg2.doZoom) {
                gUnk_0203ACC0[gUnk_0203AD3C].zoomAreaMap = areamap->cameraBg2.zoomUnlockedAreas / 0x10;
            }
        }
    }

    if (areamap->kirbySprites[gUnk_0203AD3C].areaId && (gUnk_0203ACC0[gUnk_0203AD3C].flags & (0x0100 | 0x0200))) {
        if (gUnk_0203ACC0[gUnk_0203AD3C].flags & 0x0200) {
            areamap->gotoNextAreaMap = 1;
        }
        else {
            areamap->gotoNextAreaMap = -1;
        }
        for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
            gUnk_0203ACC0[playerOrAreaId].flags &= ~(0x0100 | 0x0200);
        }
        sub_08128BEC(0x20, 1, 2);
    }

    sub_08128074(areamap);

    for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
        if (gUnk_0203ACC0[playerOrAreaId].flags & 0x0002 && (0 < gUnk_0203ACC0[playerOrAreaId].menuId && gUnk_0203ACC0[playerOrAreaId].menuId < 3)) {
            areamap->nextMenuId = gUnk_0203ACC0[playerOrAreaId].menuId;
            CreatePauseFade(0x20, 1);
            gCurTask->main = AreaMapToNextMenu;
        }
    }
}

u32 sub_08128694(u32 playerId) {
    s32 roomInfoIdx;
    u16 playerRoomId = gKirbys[playerId].base.base.base.roomId;
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 9) {
        return 2;
    }
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 10) {
        return 3;
    }
    for (roomInfoIdx = 0; roomInfoIdx < (s32)ARRAY_COUNT(gAreaMapRoomInfos); roomInfoIdx++) {
        if (playerRoomId == gAreaMapRoomInfos[roomInfoIdx].roomId) {
            return 1;
        }
    }
    return 0;
}
