#include "pause_help.h"
#include "constants/languages.h"
#include "constants/pause_menu.h"
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
    HELPMENU_BUTTON_SWITCH,
    HELPMENU_BUTTON_SWITCH_OMITTED,
    NUM_HELPMENU_BUTTONS,
};

struct HelpMenuButtonTileAddress {
    /* 0x0 */ const u32* tiles;
    /* 0x4 */ u32* tilesVram;
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

static void HelpMenuMain(void);
static void HelpMenuToNextMenu(void);
static void HelpMenuToGame(void);
static void PauseMenuMain(void);

extern const u16 gHelpMenuPalette[0x80];  // Remaining 0x80 Bytes afterwards: Zero-filled padding

extern const struct AnimInfo gHelpMenuButtonAnimInfos[NUM_LANGUAGES][5];

// Indices into gUnk_082D7850 for both frame and abilityText
// TODO when documenting gUnk_082D7850: Rename accordingly
extern const u16 gHelpMenuUnkTiledBGsIndices[NUM_LANGUAGES][0x20];

extern const struct HelpMenuButtonTileAddress gHelpMenuButtonTileAddresses[NUM_HELPMENU_BUTTONS];

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
        pauseMenu->input = 0;
    }
    else if (pauseMenu->flags & MENU_FLAG_DISABLE_INPUT) {
        pauseMenu->pressedKeys = pauseMenu->flags & MENU_FLAG_AI;  // Effectively zero
        pauseMenu->input = pauseMenu->flags & MENU_FLAG_AI;
    }
    else if (gUnk_0203AD10 & 2) {
        pauseMenu->pressedKeys = gUnk_020382D0.unk8[1][pauseMenu->playerId];
        pauseMenu->input = gUnk_020382D0.unk8[0][pauseMenu->playerId];
    }
    else {
        pauseMenu->pressedKeys = gPressedKeys;
        pauseMenu->input = gInput;
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
    pauseMenu->input = 0;
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
        SpriteInit(&unkSprite, (u32)OBJ_VRAM0, 0x480, gHelpMenuButtonAnimInfos[language][1].animId, gHelpMenuButtonAnimInfos[language][1].variant, 0,
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
        HelpMenuBGInit(&helpmenu->frame, gHelpMenuUnkTiledBGsIndices[language][1], 0, 7);
    }
    else {
        HelpMenuBGInit(&helpmenu->frame, gHelpMenuUnkTiledBGsIndices[language][0], 0, 7);
    }
    HelpMenuBGInit(&helpmenu->abilityText, gHelpMenuUnkTiledBGsIndices[language][2 + gKirbys[gUnk_0203AD3C].ability], 1, 15);
    sub_080356AC((u32)BG_CHAR_ADDR(2), 1, helpmenu->abilityText.unk1C - gHelpMenuUnkTiledBGsIndices[language][2]);
    HelpMenuAbilityImageInit();

    SpriteInitNoFunc(&helpmenu->buttonB, (u32)OBJ_VRAM0 + 0x2000, 0x480, gHelpMenuButtonAnimInfos[language][1].animId,
                     gHelpMenuButtonAnimInfos[language][1].variant, 0, 0xff, 0x10, 8, 0x22, 0x76, 0x80000);

    if (gUnk_0203AD3C == gUnk_0203AD50) {
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_B);
    }
    else {
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_B_OMITTED);
    }

    playerRoomFlags = GetPlayerRoomFlags();

    if ((playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) ||
        ((playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) && !HasBigChest(AREA_TUTORIAL))) {
        SpriteInitNoFunc(&helpmenu->buttonSwitch, (u32)OBJ_VRAM0 + 0x3000, 0x480, gHelpMenuButtonAnimInfos[language][4].animId,
                         gHelpMenuButtonAnimInfos[language][4].variant, 0, 0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_SWITCH_OMITTED);
    }
    else {
        SpriteInitNoFunc(&helpmenu->buttonSwitch, (u32)OBJ_VRAM0 + 0x3000, 0x480, gHelpMenuButtonAnimInfos[language][2].animId,
                         gHelpMenuButtonAnimInfos[language][2].variant, 0, 0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        HelpMenuButtonLoadTiles(HELPMENU_BUTTON_SWITCH);
    }

    playerRoomFlags = GetPlayerRoomFlags();

    if (gUnk_0203AD10 & 4) return;

    if ((playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) ||
        ((playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) && !HasBigChest(AREA_TUTORIAL))) {
        helpmenu->buttonB.animId = gHelpMenuButtonAnimInfos[language][0].animId;
        helpmenu->buttonB.variant = gHelpMenuButtonAnimInfos[language][0].variant;
        helpmenu->buttonSwitch.animId = gHelpMenuButtonAnimInfos[language][4].animId;
        helpmenu->buttonSwitch.variant = gHelpMenuButtonAnimInfos[language][4].variant;
    }
    else {
        helpmenu->buttonB.animId = gHelpMenuButtonAnimInfos[language][0].animId;
        helpmenu->buttonB.variant = gHelpMenuButtonAnimInfos[language][0].variant;
        helpmenu->buttonSwitch.animId = gHelpMenuButtonAnimInfos[language][2].animId;
        helpmenu->buttonSwitch.variant = gHelpMenuButtonAnimInfos[language][2].variant;
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
