#include "pause_help.h"
#include "constants/languages.h"
#include "constants/songs.h"
#include "functions.h"
#include "kirby.h"
#include "main.h"
#include "palette.h"
#include "pause_area_map.h"
#include "pause_fade.h"
#include "pause_world_map.h"
#include "sprite.h"
#include "subgames.h"
#include "treasures.h"

extern void sub_080356AC(u32, u8, u8);

enum HelpMenuButtonTile {
    HELPMENU_BUTTON_B,
    HELPMENU_BUTTON_B_OMITTED,
    HELPMENU_BUTTON_SELECT,
    HELPMENU_BUTTON_SELECT_OMITTED,
    NUM_HELPMENU_BUTTONS,
};

struct HelpMenuButtonTileAddress {
    /* 0x00 */ const u32* tiles;
    /* 0x04 */ u32* tilesVram;
}; /* size = 0x8 */

struct HelpMenu {
    /* 0x00 */ struct Background frame;
    /* 0x40 */ struct Background abilityText;
    /* 0x80 */ struct Sprite buttonB;
    /* 0xA8 */ struct Sprite buttonSwitch;
    /* 0xD0 */ u8 unkD0;
    /* 0xD1 */ s8 toGameCounter;
    /* 0xD4 */ enum PauseMenuId nextMenuId;
}; /* size = 0xD8 */

const u32 gHelpMenuButtonTilesB[] = INCBIN_U32("graphics/pause_menu/helpmenu_buttons/tileset_B.4bpp");
const u32 gHelpMenuButtonTilesSelect[] = INCBIN_U32("graphics/pause_menu/helpmenu_buttons/tileset_SELECT.4bpp");
const u32 gHelpMenuButtonTilesEmpty[] = INCBIN_U32("graphics/pause_menu/helpmenu_buttons/tileset_empty.4bpp");

static const struct AnimInfo sHelpMenuButtonAnimInfos[NUM_LANGUAGES][5] = {
    [LANGUAGE_JAPANESE] =
        {
            {0x2d5, 0x00, 0},
            {0x2d5, 0x01, 0},
            {0x2d5, 0x02, 0},
            {0x2d5, 0x03, 0},
            {0x2d5, 0x05, 0},
        },
    [LANGUAGE_ENGLISH] =
        {
            {0x2d6, 0x00, 0},
            {0x2d6, 0x01, 0},
            {0x2d6, 0x02, 0},
            {0x2d6, 0x03, 0},
            {0x2d6, 0x05, 0},
        },
    [LANGUAGE_GERMAN] =
        {
            {0x2d7, 0x00, 0},
            {0x2d7, 0x01, 0},
            {0x2d7, 0x02, 0},
            {0x2d7, 0x03, 0},
            {0x2d7, 0x05, 0},
        },
    [LANGUAGE_FRENCH] =
        {
            {0x2d8, 0x00, 0},
            {0x2d8, 0x01, 0},
            {0x2d8, 0x02, 0},
            {0x2d8, 0x03, 0},
            {0x2d8, 0x05, 0},
        },
    [LANGUAGE_SPANISH] =
        {
            {0x2d9, 0x00, 0},
            {0x2d9, 0x01, 0},
            {0x2d9, 0x02, 0},
            {0x2d9, 0x03, 0},
            {0x2d9, 0x05, 0},
        },
    [LANGUAGE_ITALIAN] =
        {
            {0x2da, 0x00, 0},
            {0x2da, 0x01, 0},
            {0x2da, 0x02, 0},
            {0x2da, 0x03, 0},
            {0x2da, 0x05, 0},
        },
};

// Indices into gUnk_082D7850 for both frame and abilityText
// TODO when documenting gUnk_082D7850: Rename accordingly
static const u16 sHelpMenuUnkTiledBGsIndices[NUM_LANGUAGES][0x20] = {
    [LANGUAGE_JAPANESE] =
        {
            0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
            0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f,
        },
    [LANGUAGE_ENGLISH] =
        {
            0x00, 0x01, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d,
            0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d,
        },
    [LANGUAGE_GERMAN] =
        {
            0x00, 0x01, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b,
            0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b,
        },
    [LANGUAGE_FRENCH] =
        {
            0x00, 0x01, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69,
            0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79,
        },
    [LANGUAGE_SPANISH] =
        {
            0x00, 0x01, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87,
            0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97,
        },
    [LANGUAGE_ITALIAN] =
        {
            0x00, 0x01, 0x98, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5,
            0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xab, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xb2, 0xb3, 0xb4, 0xb5,
        },
};

extern const u16 gHelpMenuPalette[0x80];  // Remaining 0x80 Bytes afterwards: Zero-filled padding
extern const struct HelpMenuButtonTileAddress gHelpMenuButtonTileAddresses[NUM_HELPMENU_BUTTONS];

static void HelpMenuMain(void);
static void HelpMenuToNextMenu(void);
static void HelpMenuToGame(void);
static void PauseMenuMain(void);

inline struct Task* CreatePauseMenuTask(void) {
    return TaskCreate(PauseMenuMain, 4, 0x0f00, TASK_x0004 | TASK_USE_IWRAM, NULL);
    // This struct seems to never be used
}

inline void HelpMenuButtonLoadTiles(enum HelpMenuButtonTile button) {
    CpuCopy32(gHelpMenuButtonTileAddresses[button].tiles, gHelpMenuButtonTileAddresses[button].tilesVram, 0x400);  // TODO: Replace with sizeof
}

static void PauseMenuFetchInputs(struct PauseMenu* pauseMenu) {
    if (pauseMenu->flags & MENU_FLAG_AI) {
        pauseMenu->pressedKeys = 0;
        pauseMenu->heldKeys = 0;
    }
    else if (pauseMenu->flags & MENU_FLAG_DISABLE_INPUT) {
        pauseMenu->pressedKeys = pauseMenu->flags & MENU_FLAG_AI;  // Effectively zero
        pauseMenu->heldKeys = pauseMenu->flags & MENU_FLAG_AI;
    }
    else if (gUnk_0203AD10 & 2) {
        pauseMenu->pressedKeys = gUnk_020382D0.unk8[1][pauseMenu->playerId];
        pauseMenu->heldKeys = gUnk_020382D0.unk8[0][pauseMenu->playerId];
    }
    else {
        pauseMenu->pressedKeys = gPressedKeys;
        pauseMenu->heldKeys = gHeldKeys;
    }
}

// unkTiledBGsIdx: Index into gUnk_082D7850
static void HelpMenuBGInit(struct Background* bg, u16 unkTiledBGsIdx, u8 charbase, u8 screenbase) {
    CpuFill32(0, BG_CHAR_ADDR(charbase), BG_CHAR_SIZE / 2);

    bg->unkA = 0;
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->unk1C = unkTiledBGsIdx;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->unk26 = 0x1e;
    bg->unk28 = 0x14;
    bg->prevScrollX = 0x7fff;
    bg->prevScrollY = 0x7fff;
    bg->paletteOffset = 0;
    bg->tilesVram = (u32)BG_CHAR_ADDR(charbase);

    bg->unk2E = (charbase & (0x0002 | 0x0001)) | 0x0008;
    if (gUnk_082D7850[unkTiledBGsIdx]->paletteSize == 0) {
        bg->unk2E |= 0x0010;
    }

    bg->tilemapVram = (u32)BG_SCREEN_ADDR(screenbase);
    LZ77UnCompVram(gUnk_082D7850[unkTiledBGsIdx]->tileset, (u16*)bg->tilesVram);
    sub_08153060(bg);
}

static void HelpMenuAbilityImageInit(void) {
    u16 tilemapEntries[5];

    CpuFill32(0, BG_SCREEN_ADDR(23), BG_SCREEN_SIZE);

    tilemapEntries[0] = 0x100a;  // Ability Image tilemap entry: left-top-corner tile
    tilemapEntries[1] = tilemapEntries[0] + 1;
    tilemapEntries[2] = tilemapEntries[0] + 2;
    tilemapEntries[3] = tilemapEntries[0] + 3;
    tilemapEntries[4] = tilemapEntries[0] + 4;
    CpuCopy16(tilemapEntries, (u16*)BG_SCREEN_ADDR(23) + 0x1f5, sizeof(tilemapEntries));

    tilemapEntries[0] = tilemapEntries[4] + 1;
    tilemapEntries[1] = tilemapEntries[0] + 1;
    tilemapEntries[2] = tilemapEntries[0] + 2;
    tilemapEntries[3] = tilemapEntries[0] + 3;
    tilemapEntries[4] = tilemapEntries[0] + 4;
    CpuCopy16(tilemapEntries, (u16*)BG_SCREEN_ADDR(23) + 0x215, sizeof(tilemapEntries));

    tilemapEntries[0] = tilemapEntries[4] + 1;
    tilemapEntries[1] = tilemapEntries[0] + 1;
    tilemapEntries[2] = tilemapEntries[0] + 2;
    tilemapEntries[3] = tilemapEntries[0] + 3;
    tilemapEntries[4] = tilemapEntries[0] + 4;
    CpuCopy16(tilemapEntries, (u16*)BG_SCREEN_ADDR(23) + 0x235, sizeof(tilemapEntries));

    tilemapEntries[0] = tilemapEntries[4] + 1;
    tilemapEntries[1] = tilemapEntries[0] + 1;
    tilemapEntries[2] = tilemapEntries[0] + 2;
    tilemapEntries[3] = tilemapEntries[0] + 3;
    tilemapEntries[4] = tilemapEntries[0] + 4;
    CpuCopy16(tilemapEntries, (u16*)BG_SCREEN_ADDR(23) + 0x255, sizeof(tilemapEntries));
}

static inline void PauseMenuInit(struct PauseMenu* pauseMenu, u32 playerId, struct Task* task) {
    pauseMenu->mainTask = task;
    pauseMenu->unk4 = 0;
    pauseMenu->pressedKeys = 0;
    pauseMenu->heldKeys = 0;
    pauseMenu->playerId = playerId;
    if (playerId < gUnk_0203AD30) {
        pauseMenu->flags = MENU_FLAG_PLAYER;
    }
    else {
        pauseMenu->flags = MENU_FLAG_AI;
    }
    if (pauseMenu->playerId == gUnk_0203AD3C) {
        pauseMenu->flags |= MENU_FLAG_CURRENT_PLAYER;
    }
    pauseMenu->unk10 = 1;
    pauseMenu->disableInputCounter = 30;
}

static inline u32 GetPlayerRoomFlags(void) {
    u32 playerRoomFlags = 0;
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gPauseMenus[playerId].flags & MENU_FLAG_AI)) {
            playerRoomFlags |= 1 << GetKirbyRoomFlagIndex(playerId);
        }
    }
    return playerRoomFlags;
}

// Selects which menu to show when pressing START
// Called in sub_08039ED4 with function table gUnk_0834BD94
void CreatePauseMenu(void) {
    struct Task* task = CreatePauseMenuTask();
    u32 playerRoomFlags;

    PauseMenuInit(gPauseMenus + 0, 0, task);
    PauseMenuInit(gPauseMenus + 1, 1, task);
    PauseMenuInit(gPauseMenus + 2, 2, task);
    PauseMenuInit(gPauseMenus + 3, 3, task);

    playerRoomFlags = GetPlayerRoomFlags();

    if (playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) {
        s32 playerId;
        for (playerId = 0; playerId < 4; playerId++) {
            gPauseMenus[playerId].menuId = MENU_HELP;
        }
    }
    else {
        if (playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) {
            if (!HasBigChest(AREA_TUTORIAL)) {
                s32 playerId;
                for (playerId = 0; playerId < 4; playerId++) {
                    gPauseMenus[playerId].menuId = MENU_HELP;
                }
            }
            else {
                s32 playerId;
                for (playerId = 0; playerId < 4; playerId++) {
                    if (gPauseMenus[playerId].menuId == MENU_AREAMAP) {
                        gPauseMenus[playerId].menuId = MENU_HELP;
                    }
                }
            }
        }
    }

    if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_AREAMAP) {
        CreateAreaMap();
    }
    else if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_WORLDMAP) {
        CreateWorldMap(WORLDMAP_NO_UNLOCK);
    }
    else {
        CreateHelpMenu();
    }
    sub_08124EA0();
}

void CreateHelpMenu(void) {
    struct Task* task;
    struct HelpMenu *tmp, *helpmenu;
    u32 playerRoomFlags;
    u16 language = gLanguage;
    u16 color = RGB_WHITE;

    sub_0803D21C(&color, 0, 1);
    CpuFill32(0, (u32*)BG_VRAM, BG_VRAM_SIZE);
    DmaFill32(3, 0, (u32*)(BG_VRAM + (gBgCntRegs[0] & 0xc) * 0x1000), 0x40);

    gUnk_030060A0.parts[0] = 0;
    gUnk_03002E80[0] = 0;
    gUnk_03002E80[1] = 0;
    gUnk_03002E80[2] = 0xff;
    gUnk_03002E80[3] = 0x20;
    DmaFill32(3, 0, (u32*)(BG_VRAM + (gBgCntRegs[1] & 0xc) * 0x1000), 0x40);

    gUnk_030060A0.parts[1] = 0;
    gUnk_03002E80[4] = 0;
    gUnk_03002E80[5] = 0;
    gUnk_03002E80[6] = 0xff;
    gUnk_03002E80[7] = 0x20;
    DmaFill32(3, 0, (u32*)(BG_VRAM + (gBgCntRegs[2] & 0xc) * 0x1000), 0x40);

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(7) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(15) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;

    task = TaskCreate(HelpMenuMain, sizeof(struct HelpMenu), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    helpmenu = tmp = TaskGetStructPtr(task);

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gHelpMenuPalette, 0, ARRAY_COUNT(gHelpMenuPalette));
    }
    else {
        DmaCopy16(3, gHelpMenuPalette, gBgPalette, sizeof(gHelpMenuPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    {
        struct Sprite unkSprite;
        SpriteInit(&unkSprite, (u32)OBJ_VRAM0, 0x480, sHelpMenuButtonAnimInfos[language][1].animId, sHelpMenuButtonAnimInfos[language][1].variant, 0,
                   0xff, 0x10, 8, 0, 0, 0x80000);
    }
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);

    CpuFill32(0, &helpmenu->frame, sizeof(helpmenu->frame));
    CpuFill32(0, &helpmenu->abilityText, sizeof(helpmenu->abilityText));
    CpuFill32(0, &helpmenu->buttonB, sizeof(helpmenu->buttonB));
    CpuFill32(0, &helpmenu->buttonSwitch, sizeof(helpmenu->buttonSwitch));
    helpmenu->unkD0 = 1;
    helpmenu->toGameCounter = 0;

    if (gUnk_0203AD10 & 4) {
        HelpMenuBGInit(&helpmenu->frame, sHelpMenuUnkTiledBGsIndices[language][1], 0, 7);
    }
    else {
        HelpMenuBGInit(&helpmenu->frame, sHelpMenuUnkTiledBGsIndices[language][0], 0, 7);
    }
    HelpMenuBGInit(&helpmenu->abilityText, sHelpMenuUnkTiledBGsIndices[language][2 + gKirbys[gUnk_0203AD3C].ability], 1, 15);
    sub_080356AC((u32)BG_CHAR_ADDR(2), 1, helpmenu->abilityText.unk1C - sHelpMenuUnkTiledBGsIndices[language][2]);
    HelpMenuAbilityImageInit();

    SpriteInitNoFunc(&helpmenu->buttonB, (u32)OBJ_VRAM0 + 0x2000, 0x480, sHelpMenuButtonAnimInfos[language][1].animId,
                     sHelpMenuButtonAnimInfos[language][1].variant, 0, 0xff, 0x10, 8, 0x22, 0x76, 0x80000);

    if (gUnk_0203AD3C == gUnk_0203AD50) {
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_B);
    }
    else {
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_B_OMITTED);
    }

    playerRoomFlags = GetPlayerRoomFlags();

    if ((playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) ||
        ((playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) && !HasBigChest(AREA_TUTORIAL))) {
        SpriteInitNoFunc(&helpmenu->buttonSwitch, (u32)OBJ_VRAM0 + 0x3000, 0x480, sHelpMenuButtonAnimInfos[language][4].animId,
                         sHelpMenuButtonAnimInfos[language][4].variant, 0, 0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_SELECT_OMITTED);
    }
    else {
        SpriteInitNoFunc(&helpmenu->buttonSwitch, (u32)OBJ_VRAM0 + 0x3000, 0x480, sHelpMenuButtonAnimInfos[language][2].animId,
                         sHelpMenuButtonAnimInfos[language][2].variant, 0, 0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_SELECT);
    }

    playerRoomFlags = GetPlayerRoomFlags();

    if (gUnk_0203AD10 & 4) return;

    if ((playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) ||
        ((playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) && !HasBigChest(AREA_TUTORIAL))) {
        helpmenu->buttonB.animId = sHelpMenuButtonAnimInfos[language][0].animId;
        helpmenu->buttonB.variant = sHelpMenuButtonAnimInfos[language][0].variant;
        helpmenu->buttonSwitch.animId = sHelpMenuButtonAnimInfos[language][4].animId;
        helpmenu->buttonSwitch.variant = sHelpMenuButtonAnimInfos[language][4].variant;
    }
    else {
        helpmenu->buttonB.animId = sHelpMenuButtonAnimInfos[language][0].animId;
        helpmenu->buttonB.variant = sHelpMenuButtonAnimInfos[language][0].variant;
        helpmenu->buttonSwitch.animId = sHelpMenuButtonAnimInfos[language][2].animId;
        helpmenu->buttonSwitch.variant = sHelpMenuButtonAnimInfos[language][2].variant;
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->buttonB);
        sub_08155128(&helpmenu->buttonSwitch);
        sub_0815604C(&helpmenu->buttonB);
        sub_0815604C(&helpmenu->buttonSwitch);
    }
}

static void HelpMenuMain(void) {
    u8 playerId;
    struct HelpMenu *tmp, *helpmenu;
    helpmenu = tmp = TaskGetStructPtr(gCurTask);

    if (gPauseMenus[0].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[1].flags & MENU_FLAG_BACK_TO_GAME ||
        gPauseMenus[2].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[3].flags & MENU_FLAG_BACK_TO_GAME) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = HelpMenuToGame;
        if (!(gUnk_0203AD10 & 4)) {
            sub_08155128(&helpmenu->buttonB);
            sub_08155128(&helpmenu->buttonSwitch);
            sub_0815604C(&helpmenu->buttonB);
            sub_0815604C(&helpmenu->buttonSwitch);
        }
        return;
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->buttonB);
        sub_08155128(&helpmenu->buttonSwitch);
        sub_0815604C(&helpmenu->buttonB);
        sub_0815604C(&helpmenu->buttonSwitch);
    }

    for (playerId = 0; playerId < 4; playerId++) {
        if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER &&
            (gPauseMenus[playerId].menuId == MENU_WORLDMAP || gPauseMenus[playerId].menuId == MENU_AREAMAP)) {
            helpmenu->nextMenuId = gPauseMenus[playerId].menuId;
            gCurTask->main = HelpMenuToNextMenu;
            CreatePauseFade(0x20, 1);
            return;
        }
    }
}

static void HelpMenuToNextMenu(void) {
    struct HelpMenu *tmp, *helpmenu;
    helpmenu = tmp = TaskGetStructPtr(gCurTask);

    if (!sub_0812A304()) {
        if (helpmenu->nextMenuId == MENU_WORLDMAP) {
            CreateWorldMap(WORLDMAP_NO_UNLOCK);
        }
        else if (helpmenu->nextMenuId == MENU_AREAMAP) {
            CreateAreaMap();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->buttonB);
        sub_08155128(&helpmenu->buttonSwitch);
        sub_0815604C(&helpmenu->buttonB);
        sub_0815604C(&helpmenu->buttonSwitch);
    }
}

static void HelpMenuToGame(void) {
    struct HelpMenu* helpmenu;
    helpmenu = TaskGetStructPtr(gCurTask);

    if (helpmenu->toGameCounter++ > 18) {
        TaskDestroy(gPauseMenus[gUnk_0203AD3C].mainTask);
        sub_08039670();
        TaskDestroy(gCurTask);
    }
    else if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->buttonB);
        sub_08155128(&helpmenu->buttonSwitch);
        sub_0815604C(&helpmenu->buttonB);
        sub_0815604C(&helpmenu->buttonSwitch);
    }
}

// Run when changing menus or area on area map
static inline void guard_sub_08031CE4(u8 playerId) {
    if (gUnk_0203AD10 & 2 && playerId != gUnk_0203AD3C) {
        sub_08031CE4(8);
    }
}

/*
 * This runs on every pause menu screen on every frame.
 * The underlying task is destroyed by the current player through gPauseMenus::mainTask.
 */
static void PauseMenuMain(void) {
    u16 allPressedKeys;
    s32 playerId;

    for (playerId = 0; playerId < 4; playerId++) {
        PauseMenuFetchInputs(gPauseMenus + playerId);
    }
    for (playerId = 0; playerId < 4; playerId++) {
        if (gPauseMenus[playerId].disableInputCounter != 0) {
            gPauseMenus[playerId].flags |= MENU_FLAG_DISABLE_INPUT;
            gPauseMenus[playerId].disableInputCounter--;
        }
        else {
            gPauseMenus[playerId].flags &= ~MENU_FLAG_DISABLE_INPUT;
        }
    }
    for (playerId = 0; playerId < 4; playerId++) {
        PauseMenuFetchInputs(gPauseMenus + playerId);
    }

    if (gPauseMenus[gUnk_0203AD50].pressedKeys & (B_BUTTON | START_BUTTON) && !(gPauseMenus[gUnk_0203AD50].flags & MENU_FLAG_DISABLE_INPUT)) {
        for (playerId = 0; playerId < 4; playerId++) {
            gPauseMenus[playerId].flags |= MENU_FLAG_BACK_TO_GAME;
            gPauseMenus[playerId].disableInputCounter = 60;
            if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER) {
                m4aSongNumStart(SE_08D5AEC0);
            }
        }
        return;
    }

    if (gUnk_0203AD10 & 4) return;

    allPressedKeys = 0;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gPauseMenus[playerId].flags & MENU_FLAG_DISABLE_INPUT)) {
            allPressedKeys |= gPauseMenus[playerId].pressedKeys;
        }
    }

    if (allPressedKeys & SELECT_BUTTON) {
        enum PauseMenuId menuId = gPauseMenus[gUnk_0203AD3C].menuId;

        if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_WORLDMAP) {
            menuId = MENU_HELP;
        }
        else if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_AREAMAP) {
            menuId = MENU_WORLDMAP;
        }
        else {
            u32 playerRoomFlags = GetPlayerRoomFlags();

            if (!(playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP)))) {
                if (playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) {
                    if (HasBigChest(AREA_TUTORIAL)) {
                        menuId = MENU_WORLDMAP;
                    }
                }
                else {
                    if (playerRoomFlags & (1 << KIRBY_IN_NORMAL_ROOM)) {
                        menuId = MENU_AREAMAP;
                    }
                }
            }
        }

        if (menuId != gPauseMenus[gUnk_0203AD3C].menuId) {
            for (playerId = 0; playerId < 4; playerId++) {
                gPauseMenus[playerId].menuId = menuId;
                gPauseMenus[playerId].disableInputCounter = 40;
                guard_sub_08031CE4(playerId);
                if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER) {
                    m4aSongNumStart(SE_08D5AEC0);
                }
            }
            return;
        }
    }

    if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_AREAMAP && allPressedKeys & (R_BUTTON | L_BUTTON) &&
        !((gPauseMenus[0].flags | gPauseMenus[1].flags | gPauseMenus[2].flags | gPauseMenus[3].flags) & MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE)) {
        enum PauseMenuFlags menuDirection = allPressedKeys & R_BUTTON ? MENU_FLAG_AREA_ASCEND : MENU_FLAG_AREA_DESCEND;
        for (playerId = 0; playerId < 4; playerId++) {
            gPauseMenus[playerId].flags |= menuDirection;
            gPauseMenus[playerId].disableInputCounter = 40;
            guard_sub_08031CE4(playerId);
            if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER) {
                m4aSongNumStart(SE_08D5AEC0);
            }
        }
    }
}

/*
 * Runs once when starting the game to initialise certain member variables
 * whose values are retained when opening and closing pause menus
 */
void PauseMenuInitRetained(void) {
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        gPauseMenus[playerId].menuId = MENU_HELP;
        gPauseMenus[playerId].zoomAreaMap = 0x10;
    }
}

// Influences fading
void sub_08124EA0(void) {
    struct Unk_02022930_0* unk_0803C95C = sub_0803C95C(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;
}

// Runs once immediately when pause menu (or BigSwitch activation) should be closed
void sub_08124EC8(void) {
    u16 white;
    struct Unk_02022930_0* unk_0803C95C = sub_0803CA20(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;

    white = RGB_WHITE;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(&white, 0, 1);
    }
    else {
        DmaCopy16(3, &white, gBgPalette, sizeof(white));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    sub_0803D2A8(0, 0xff);
}
