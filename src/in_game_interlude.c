#include "in_game_interlude.h"
#include "code_0802E16C.h"
#include "hud.h"
#include "palette_effects.h"
#include "global.h"
#include "data.h"
#include "functions.h"
#include "kirby.h"
#include "main.h"
#include "pause_world_map.h"
#include "pause_help.h"
#include "code_0801C6F8.h"
#include "code_0801DA58.h"
#include "code_08020220.h"
#include "code_0814A828.h"
#include "level.h"
#include "constants/songs.h"
#include "task.h"

struct InGameInterlude {
    /* 0x00 */ void (*callback)(struct InGameInterlude *);
    /* 0x04 */ bool32 finished;
    /* 0x08 */ u16 screen;
    /* 0x0A */ u16 timer;
}; /* size = 0xC */

extern struct Task *gInGameInterludeTask;
static void (*const sInGameInterludeScreens[27])(void) = {
    CreatePauseMenu,
    sub_0801D618,
    sub_0801D624,
    sub_0801D630,
    sub_0801D63C,
    sub_0801D648,
    sub_0801D654,
    sub_0801D660,
    sub_0801D66C,
    sub_0801DFE8,
    WorldMapUnlockMoonlightMansion,
    WorldMapUnlockRainbowRouteEast,
    WorldMapUnlockRainbowRouteSouth,
    WorldMapUnlockCabbageCavernCenter,
    WorldMapUnlockRainbowRouteWest,
    WorldMapUnlockCarrotCastle,
    WorldMapUnlockRainbowRouteNorth,
    WorldMapUnlockMustardMountain,
    WorldMapUnlockCabbageCavernWest,
    WorldMapUnlockRadishRuins,
    WorldMapUnlockPeppermintPalaceEast,
    WorldMapUnlockPeppermintPalaceWest,
    WorldMapUnlockCabbageCavernEast,
    WorldMapUnlockOliveOcean,
    WorldMapUnlockCandyConstellation,
    sub_0802E16C,
    sub_0814A828,
};

static void UpdateInGameInterlude(void);
static void InGameInterludeDestructor(struct Task *);
static void BeginInGameInterlude(struct InGameInterlude *);
static void StartInGameInterludeFadeOut(struct InGameInterlude *);
static void WaitForInGameInterludeFadeOut(struct InGameInterlude *);
static void OpenInGameInterludeScreen(struct InGameInterlude *);
static void WaitForInGameInterludeScreenFinish(struct InGameInterlude *);
static void RestoreGameplayAfterInGameInterludeScreen(struct InGameInterlude *);
static void DelayInGameInterludeFadeIn(struct InGameInterlude *);
static void StartInGameInterludeFadeIn(struct InGameInterlude *);
static void DestroyInGameInterlude(struct InGameInterlude *);

static void UnpauseGameplay(struct InGameInterlude *transition)
{
    u16 i;

    gMainFlags &= ~0x400;
    transition->timer = 0;
    if (gUnk_0203AD10 & 2) {
        for (i = 0; i < gNumHumanPlayers; i++) {
            struct Kirby *kirby = &gKirbys[i];
            u16 heldKeys = gUnk_020382D0.unk8[0][i];

            kirby->movementState |= heldKeys & B_BUTTON;
        }
    } else {
        gKirbys[0].movementState |= gHeldKeys & B_BUTTON;
    }
    transition->callback = DelayInGameInterludeFadeIn;
}

void ResetInGameInterlude(void)
{
    gInGameInterludeTask = NULL;
    PauseMenuInitRetained();
}

bool32 CanStartInGameInterlude(void)
{
    if ((gMainFlags & 0x400) || gInGameInterludeTask != NULL)
        return FALSE;
    return TRUE;
}

static inline void StartInGameInterludeInternal(u16 screen)
{
    struct Task *task = TaskCreate(UpdateInGameInterlude, sizeof(struct InGameInterlude), 1, TASK_x0004 | TASK_USE_IWRAM, InGameInterludeDestructor);
    struct InGameInterlude *transition;

    gInGameInterludeTask = task;
    transition = TaskGetStructPtr(task);
    transition->callback = BeginInGameInterlude;
    transition->screen = screen;
    transition->finished = FALSE;
    gMainFlags |= 0x400;
}

void StartInGameInterlude(u16 screen)
{
    struct Task *task = TaskCreate(UpdateInGameInterlude, sizeof(struct InGameInterlude), 1, TASK_x0004 | TASK_USE_IWRAM, InGameInterludeDestructor);
    struct InGameInterlude *transition;

    gInGameInterludeTask = task;
    transition = TaskGetStructPtr(task);
    transition->callback = BeginInGameInterlude;
    transition->screen = screen;
    transition->finished = FALSE;
    gMainFlags |= 0x400;
}

void FinishInGameInterludeScreen(void)
{
    struct InGameInterlude *transition = TaskGetStructPtr(gInGameInterludeTask);

    transition->finished = TRUE;
    CpuFill32(0, (void *)BG_VRAM, BG_VRAM_SIZE);
}

void sub_080396BC(void)
{
    StartInGameInterludeInternal(9);
}

void StartWorldMapUnlockMoonlightMansion(void)
{
    StartInGameInterludeInternal(10);
}

void StartWorldMapUnlockRainbowRouteEast(void)
{
    StartInGameInterludeInternal(11);
}

void StartWorldMapUnlockRainbowRouteSouth(void)
{
    StartInGameInterludeInternal(12);
}

void StartWorldMapUnlockCabbageCavernCenter(void)
{
    StartInGameInterludeInternal(13);
}

void StartWorldMapUnlockRainbowRouteWest(void)
{
    StartInGameInterludeInternal(14);
}

void StartWorldMapUnlockCarrotCastle(void)
{
    StartInGameInterludeInternal(15);
}

void StartWorldMapUnlockRainbowRouteNorth(void)
{
    StartInGameInterludeInternal(16);
}

void StartWorldMapUnlockMustardMountain(void)
{
    StartInGameInterludeInternal(17);
}

void StartWorldMapUnlockCabbageCavernWest(void)
{
    StartInGameInterludeInternal(18);
}

void StartWorldMapUnlockRadishRuins(void)
{
    StartInGameInterludeInternal(19);
}

void StartWorldMapUnlockPeppermintPalaceEast(void)
{
    StartInGameInterludeInternal(20);
}

void StartWorldMapUnlockPeppermintPalaceWest(void)
{
    StartInGameInterludeInternal(21);
}

void StartWorldMapUnlockCabbageCavernEast(void)
{
    StartInGameInterludeInternal(22);
}

void StartWorldMapUnlockOliveOcean(void)
{
    StartInGameInterludeInternal(23);
}

void StartWorldMapUnlockCandyConstellation(void)
{
    StartInGameInterludeInternal(24);
}

static void UpdateInGameInterlude(void)
{
    struct InGameInterlude *transition = TaskGetStructPtr(gCurTask);

    transition->callback(transition);
}

static void InGameInterludeDestructor(struct Task *task UNUSED)
{
    m4aSongNumContinue(MUS_VICTORY_LONG);
    m4aSongNumContinue(MUS_VICTORY_SHORT);
    m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFFFF, 0x100);
    m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFFFF, 0x100);
    m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFFFF, 0x100);
    gInGameInterludeTask = NULL;
}

static void BeginInGameInterlude(struct InGameInterlude *transition)
{
    if (transition->screen == 0)
        m4aSongNumStart(SE_PAUSE_MENU_OPEN);
    transition->callback = StartInGameInterludeFadeOut;
}

static void StartInGameInterludeFadeOut(struct InGameInterlude *transition)
{
    struct PaletteEffect *effect;

    transition->timer = 0;
    effect = CreatePaletteFadeToWhite(7);
    effect->unk8 |= 0x80;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    transition->callback = WaitForInGameInterludeFadeOut;
}

static void WaitForInGameInterludeFadeOut(struct InGameInterlude *transition)
{
    if (++transition->timer > 30) {
        u16 color = RGB_WHITE;

        LoadBgPaletteAndPaletteEffectSource(&color, 0, 1);
        if (gUnk_0203AD10 & 2)
            sub_08031CE4(8);
        transition->callback = OpenInGameInterludeScreen;
        m4aSongNumStop(MUS_VICTORY_LONG);
        m4aSongNumStop(MUS_VICTORY_SHORT);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFFFF, 0);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFFFF, 0);
    }
}

static void OpenInGameInterludeScreen(struct InGameInterlude *transition)
{
    sub_08020220();
    BackupPaletteEffectSourcePalettes();
    SaveDisplayState();
    sInGameInterludeScreens[transition->screen]();
    transition->callback = WaitForInGameInterludeScreenFinish;
}

static void WaitForInGameInterludeScreenFinish(struct InGameInterlude *transition)
{
    sub_080203C8();
    if (transition->finished) {
        if (gUnk_0203AD10 & 2)
            sub_08031CE4(8);
        transition->callback = RestoreGameplayAfterInGameInterludeScreen;
    }
}

static void RestoreGameplayAfterInGameInterludeScreen(struct InGameInterlude *transition)
{
    sub_08020370();
    RestorePaletteEffectSourcePalettes();
    RestoreDisplayState();
    RefreshGameplayHud(&gKirbys[gLocalPlayerId]);
    sub_0806F734();
    transition->callback = UnpauseGameplay;
}

static void DelayInGameInterludeFadeIn(struct InGameInterlude *transition)
{
    if (transition->timer++ > 2)
        transition->callback = StartInGameInterludeFadeIn;
}

static void StartInGameInterludeFadeIn(struct InGameInterlude *transition)
{
    struct PaletteEffect *effect;
    u16 color;

    transition->timer = 0;
    effect = CreatePaletteFadeFromWhite(7);
    effect->unk8 |= 0x80;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    color = RGB_WHITE;
    LoadBgPaletteAndPaletteEffectSource(&color, 0, 1);
    transition->callback = DestroyInGameInterlude;
    transition->callback(transition);
}

static void DestroyInGameInterlude(struct InGameInterlude *transition UNUSED)
{
    TaskDestroy(gCurTask);
}

static const u16 sUnk_0834BE00[16] UNUSED = {
    RGB(0, 0, 1), RGB(0, 1, 1), RGB(1, 1, 1), RGB(1, 1, 3),
    RGB(1, 3, 3), RGB(3, 3, 3), RGB(3, 3, 7), RGB(3, 7, 7),
    RGB(7, 7, 7), RGB(7, 7, 15), RGB(23, 14, 15), RGB(31, 14, 15),
    RGB(31, 14, 31), RGB(31, 30, 31), RGB_WHITE, RGB_WHITE | 0x8000,
};
