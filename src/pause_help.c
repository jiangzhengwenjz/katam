#include "pause_help.h"
#include "code_08124BE0.h"
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

static void HelpMenuMain(void);
static void HelpMenuToNextMenu(void);
static void HelpMenuToGame(void);

extern const u16 gHelpMenuPalette[0x80];  // Remaining 0x80 Bytes: Zero-filled padding

extern const struct Unk_02021590 gUnk_08358B9C[NUM_LANGUAGES][5];

// Indices into gUnk_082D7850 for both frame and abilityText
// TODO when documenting gUnk_082D7850: Rename accordingly
extern const u16 gHelpMenuUnkTiledBGsIndices[NUM_LANGUAGES][0x20];

void sub_0812403C(struct PauseMenu* pauseMenu) {
    if (pauseMenu->flags & MENU_FLAG_AI) {
        pauseMenu->unk8 = 0;
        pauseMenu->unkA = 0;
    }
    else if (pauseMenu->flags & MENU_FLAG_DISABLE_INPUT) {
        pauseMenu->unk8 = pauseMenu->flags & MENU_FLAG_AI;  // Effectively zero
        pauseMenu->unkA = pauseMenu->flags & MENU_FLAG_AI;
    }
    else if (gUnk_0203AD10 & 2) {
        pauseMenu->unk8 = gUnk_020382D0.unk8[1][pauseMenu->playerId];
        pauseMenu->unkA = gUnk_020382D0.unk8[0][pauseMenu->playerId];
    }
    else {
        pauseMenu->unk8 = gPressedKeys;
        pauseMenu->unkA = gInput;
    }
}

// allTiledBGsIdx: Index into gUnk_082D7850
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
    pauseMenu->unk8 = 0;
    pauseMenu->unkA = 0;
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
    pauseMenu->disableInputCounter = 0x1e;
}

static inline struct Task* CreatePauseMenuCreateTaskTrunk(void) {
    return TaskCreate(PauseMenuMain, 4, 0x0f00, TASK_x0004 | TASK_USE_IWRAM, NULL);
    // This struct seems to never be used
}

// Selects which menu to show when pressing START
// Called in sub_08039ED4 with function table gUnk_0834BD94
void CreatePauseMenu(void) {
    struct Task* task = CreatePauseMenuCreateTaskTrunk();
    u32 playerRoomFlags;

    PauseMenuInit(gPauseMenus + 0, 0, task);
    PauseMenuInit(gPauseMenus + 1, 1, task);
    PauseMenuInit(gPauseMenus + 2, 2, task);
    PauseMenuInit(gPauseMenus + 3, 3, task);

    playerRoomFlags = GetPlayerRoomFlags();

    if (playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) {
        s32 playerId;
        for (playerId = 0; playerId < (s32)ARRAY_COUNT(gPauseMenus); playerId++) {
            gPauseMenus[playerId].menuId = MENU_HELP;
        }
    }
    else {
        if (playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) {
            if (!HasBigChest(0)) {
                s32 playerId;
                for (playerId = 0; playerId < (s32)ARRAY_COUNT(gPauseMenus); playerId++) {
                    gPauseMenus[playerId].menuId = MENU_HELP;
                }
            }
            else {
                s32 playerId;
                for (playerId = 0; playerId < (s32)ARRAY_COUNT(gPauseMenus); playerId++) {
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
        SpriteInit(&unkSprite, (u32)OBJ_VRAM0, 0x480, gUnk_08358B9C[language][1].animId, gUnk_08358B9C[language][1].variant, 0, 0xff, 0x10, 8, 0, 0,
                   0x80000);
    }
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);

    CpuFill32(0, &helpmenu->frame, sizeof(helpmenu->frame));
    CpuFill32(0, &helpmenu->abilityText, sizeof(helpmenu->abilityText));
    CpuFill32(0, &helpmenu->unk80, sizeof(helpmenu->unk80));
    CpuFill32(0, &helpmenu->unkA8, sizeof(helpmenu->unkA8));
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

    SpriteInitNoFunc(&helpmenu->unk80, (u32)OBJ_VRAM0 + 0x2000, 0x480, gUnk_08358B9C[language][1].animId, gUnk_08358B9C[language][1].variant, 0, 0xff,
                     0x10, 8, 0x22, 0x76, 0x80000);

    if (gUnk_0203AD3C == gUnk_0203AD50) {
        CpuCopy32(gUnk_08D6113C[0].unkSrc, gUnk_08D6113C[0].unkDest, 0x400);
    }
    else {
        CpuCopy32(gUnk_08D6113C[1].unkSrc, gUnk_08D6113C[1].unkDest, 0x400);
    }

    playerRoomFlags = GetPlayerRoomFlags();

    if ((playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) ||
        ((playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) && !HasBigChest(0))) {
        SpriteInitNoFunc(&helpmenu->unkA8, (u32)OBJ_VRAM0 + 0x3000, 0x480, gUnk_08358B9C[language][4].animId, gUnk_08358B9C[language][4].variant, 0,
                         0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        CpuCopy32(gUnk_08D6113C[3].unkSrc, gUnk_08D6113C[3].unkDest, 0x400);
    }
    else {
        SpriteInitNoFunc(&helpmenu->unkA8, (u32)OBJ_VRAM0 + 0x3000, 0x480, gUnk_08358B9C[language][2].animId, gUnk_08358B9C[language][2].variant, 0,
                         0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        CpuCopy32(gUnk_08D6113C[2].unkSrc, gUnk_08D6113C[2].unkDest, 0x400);
    }

    playerRoomFlags = GetPlayerRoomFlags();

    if (gUnk_0203AD10 & 4) return;

    if ((playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP))) ||
        ((playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) && !HasBigChest(0))) {
        helpmenu->unk80.animId = gUnk_08358B9C[language][0].animId;
        helpmenu->unk80.variant = gUnk_08358B9C[language][0].variant;
        helpmenu->unkA8.animId = gUnk_08358B9C[language][4].animId;
        helpmenu->unkA8.variant = gUnk_08358B9C[language][4].variant;
    }
    else {
        helpmenu->unk80.animId = gUnk_08358B9C[language][0].animId;
        helpmenu->unk80.variant = gUnk_08358B9C[language][0].variant;
        helpmenu->unkA8.animId = gUnk_08358B9C[language][2].animId;
        helpmenu->unkA8.variant = gUnk_08358B9C[language][2].variant;
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
    }
}

static void HelpMenuMain(void) {
    u8 playerId;
    struct HelpMenu *tmp, *helpmenu;
    helpmenu = tmp = TaskGetStructPtr(gCurTask);

    if (gPauseMenus[0].flags & 0x1000 || gPauseMenus[1].flags & 0x1000 || gPauseMenus[2].flags & 0x1000 || gPauseMenus[3].flags & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = HelpMenuToGame;
        if (!(gUnk_0203AD10 & 4)) {
            sub_08155128(&helpmenu->unk80);
            sub_08155128(&helpmenu->unkA8);
            sub_0815604C(&helpmenu->unk80);
            sub_0815604C(&helpmenu->unkA8);
        }
        return;
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
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
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
    }
}

static void HelpMenuToGame(void) {
    struct HelpMenu* helpmenu;
    helpmenu = TaskGetStructPtr(gCurTask);

    if (helpmenu->toGameCounter++ > 0x12) {
        TaskDestroy(gPauseMenus[gUnk_0203AD3C].mainTask);
        sub_08039670();
        TaskDestroy(gCurTask);
    }
    else if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
    }
}
