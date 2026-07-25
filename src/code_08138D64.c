#include "data.h"
#include "code_08138D64.h"
#include "functions.h"
#include "main.h"
#include "bg.h"
#include "multi_08032E98.h"
#include "random.h"
#include "malloc_vram.h"
#include "multi_boot_util.h"
#include "multi_08019F28.h"
#include "save.h"
#include "palette.h"
#include "collection_room.h"
#include "title_screen.h"
#include "constants/languages.h"
#include "treasures.h"

struct MenuSpriteAnim {
    u16 animId;
    u16 variant;
    u16 numTiles;
}; /* size = 0x8 */

static s8 GetSaveFileCompletion(u8);
static void MainMenuOnDestroy(struct Task *);
static void FileSelectFreeSprites(struct MainMenu *);
static void MainMenuFreeSprites(struct MainMenu *);
static void EraseFileFreeSprites(struct MainMenu *);
static void LinkConnectFreeSprites(struct MainMenu *);
static void LinkFileSelectFreeSprites(struct MainMenu *);
static void SubGameSelectFreeSprites(struct MainMenu *);
static bool32 GetCompletionBarAnim(struct MenuSpriteAnim *, s8);
static bool32 LinkConnectDisplayJoinPopups(struct MainMenu *, u8);
static void MainMenuAmbienceHold1(struct MainMenu *);
static void MainMenuAmbienceFadeTo2(struct MainMenu *);
static void MainMenuAmbienceHold2(struct MainMenu *);
static void MainMenuAmbienceFadeTo1(struct MainMenu *);
static void MainMenuStepAmbiencePalette(struct MainMenu *);
static void MainMenuInitBgLayers(struct MainMenu *);
static void FileSelectStart(struct MainMenu *);
static void FileSelectSlideInBanner(struct MainMenu *);
static void FileSelectEndSlideInBanner(struct MainMenu *);
static void FileSelectSlideInFiles(struct MainMenu *);
static void FileSelectEndSlideInFiles(struct MainMenu *);
static void FileSelectSpreadFiles(struct MainMenu *);
static void MainMenuStart(struct MainMenu *);
static void MainMenuStartFromLinkConnect(struct MainMenu *);
static void MainMenuFadeInFromLinkConnect(struct MainMenu *);
static void MainMenuStartFromCollectionRoom(struct MainMenu *);
static void MainMenuFadeInFromCollectionRoom(struct MainMenu *);
static void MainMenuEndFadeInFromCollectionRoom(struct MainMenu *);
static void MainMenuWaitInput(struct MainMenu *);
static void MainMenuOpenPlayerCountMenu(struct MainMenu *);
static void MainMenuPlayerCountWaitInput(struct MainMenu *);
static void MainMenuClosePlayerCountMenu(struct MainMenu *);
static void MainMenuStartFadeOutToCollectionRoom(struct MainMenu *);
static void MainMenuFadeOutToCollectionRoom(struct MainMenu *);
static void EraseFileStart(struct MainMenu *);
static void EraseFileSlideInFile(struct MainMenu *);
static void EraseFileAsk(struct MainMenu *);
static void EraseFileAskAgain(struct MainMenu *);
static void EraseFileWaitInput(struct MainMenu *);
static void EraseFileStartShred(struct MainMenu *);
static void EraseFileShred(struct MainMenu *);
static void EraseFileEndShred(struct MainMenu *);
static void LinkConnectFadeIn(struct MainMenu *);
static void LinkConnectEndFadeIn(struct MainMenu *);
static void LinkConnectStartWait1Player(struct MainMenu *);
static void LinkConnectWait1Player(struct MainMenu *);
static void LinkConnectStartGrowTo2Players(struct MainMenu *);
static void LinkConnectGrowTo2Players(struct MainMenu *);
static void LinkConnectWait2Players(struct MainMenu *);
static void LinkConnectStartShrinkTo1Player(struct MainMenu *);
static void LinkConnectShrinkTo1Player(struct MainMenu *);
static void LinkConnectStartGrowTo3Players(struct MainMenu *);
static void LinkConnectGrowTo3Players(struct MainMenu *);
static void LinkConnectWait3Players(struct MainMenu *);
static void LinkConnectStartShrinkTo2Players(struct MainMenu *);
static void LinkConnectShrinkTo2Players(struct MainMenu *);
static void LinkConnectStartGrowTo4Players(struct MainMenu *);
static void LinkConnectGrowTo4Players(struct MainMenu *);
static void LinkConnectWait4Players(struct MainMenu *);
static void LinkConnectStartShrinkTo3Players(struct MainMenu *);
static void LinkConnectShrinkTo3Players(struct MainMenu *);
static void LinkErrorStart(struct MainMenu *);
static void LinkConnectStartFadeOut(struct MainMenu *);
static void LinkConnectFadeOut(struct MainMenu *);
static void SubGameSelectStart(struct MainMenu *);
static void SubGameSelectReopen(struct MainMenu *);
static void SubGameSelectFadeIn(struct MainMenu *);
static void SubGameSelectEndFadeIn(struct MainMenu *);
static void SubGameSelectWaitInput(struct MainMenu *);
static void SubGameSelectOpenPlayerCountMenu(struct MainMenu *);
static void SubGameSelectPlayerCountWaitInput(struct MainMenu *);
static void SubGameSelectClosePlayerCountMenu(struct MainMenu *);
static void MainMenuMain(void);
static void MainMenuInitPalette(struct MainMenu *);
static void MainMenuInitBgTileset(struct MainMenu *);
static void MainMenuInitHeaderSprites(struct MainMenu *);
static void FileSelectStartWaitInput(struct MainMenu *);
static void FileSelectStartSlideOut(struct MainMenu *);
static void FileSelectStartFadeOut(struct MainMenu *);
static void FileSelectStopMusic(struct MainMenu *);
static void FileSelectWaitMusicStop(struct MainMenu *);
static void FileSelectDestroyAnim(struct MainMenu *);
static void FileSelectWaitToTitle1(struct MainMenu *);
static void FileSelectWaitToTitle2(struct MainMenu *);
static void FileSelectReturnToTitle(struct MainMenu *);
static void MainMenuWaitStart(struct MainMenu *);
static void MainMenuStartSlideInBanner(struct MainMenu *);
static void MainMenuStartSlideInItems(struct MainMenu *);
static void MainMenuStartSpreadItems(struct MainMenu *);
static void MainMenuEndFadeInFromLinkConnect(struct MainMenu *);
static void MainMenuStartMainGame(struct MainMenu *);
static void MainMenuMainGameFreeMenuGfx(struct MainMenu *);
static void MainMenuMainGameWaitFree(struct MainMenu *);
static void MainMenuMainGameStartAnim(struct MainMenu *);
static void MainMenuMainGameWaitAnim(struct MainMenu *);
static void MainMenuMainGameStartFadeOut(struct MainMenu *);
static void MainMenuMainGameFadeOut(struct MainMenu *);
static void MainMenuMainGameWaitMusicStop(struct MainMenu *);
static void MainMenuMainGameDestroyAnim(struct MainMenu *);
static void MainMenuMainGameWait(struct MainMenu *);
static void MainMenuMainGameStopMusic(struct MainMenu *);
static void MainMenuLaunchMainGame(struct MainMenu *);
static void MainMenuStartFadeOutToLinkConnect(struct MainMenu *);
static void MainMenuEndFadeOutToLinkConnect(struct MainMenu *);
static void MainMenuStartSlideOut(struct MainMenu *);
static void MainMenuEndSlideOut(struct MainMenu *);
static void MainMenuWaitAfterSlideOut(struct MainMenu *);
static void MainMenuCollectionRoomDestroyAnim(struct MainMenu *);
static void MainMenuCollectionRoomWait1(struct MainMenu *);
static void MainMenuCollectionRoomWait2(struct MainMenu *);
static void MainMenuEnterCollectionRoom(struct MainMenu *);
static void EraseFileStartSlideInBanner(struct MainMenu *);
static void EraseFileSlideInBanner(struct MainMenu *);
static void EraseFileClearSave(struct MainMenu *);
static void EraseFileWaitAfterErase(struct MainMenu *);
static void EraseFileStartSlideOut(struct MainMenu *);
static void EraseFileEnd(struct MainMenu *);
static void LinkConnectWaitStart(struct MainMenu *);
static void LinkConnectInitSprites(struct MainMenu *);
static void LinkErrorWaitInput(struct MainMenu *);
static void LinkErrorStartFadeOut(struct MainMenu *);
static void LinkErrorFadeOut(struct MainMenu *);
static void LinkConnectDestroyAnim(struct MainMenu *);
static void LinkConnectFadeOutWait1(struct MainMenu *);
static void LinkConnectFadeOutWait2(struct MainMenu *);
static void LinkFileSelectStartWait(struct MainMenu *);
static void LinkFileSelectWait(struct MainMenu *);
static void LinkFileSelectStartSlideIn(struct MainMenu *);
static void LinkFileSelectEndSlideIn(struct MainMenu *);
static void LinkFileSelectStartSlideOut(struct MainMenu *);
static void LinkFileSelectFreeGfx(struct MainMenu *);
static void LinkFileSelectWaitFree(struct MainMenu *);
static void LinkFileSelectWaitGameStart(struct MainMenu *);
static void LinkFileSelectStartFadeOut(struct MainMenu *);
static void LinkFileSelectFadeOut(struct MainMenu *);
static void LinkFileSelectWaitFadeOut(struct MainMenu *);
static void LinkFileSelectDestroyAnim(struct MainMenu *);
static void LinkFileSelectWait1(struct MainMenu *);
static void LinkFileSelectWait2(struct MainMenu *);
static void LinkFileSelectLaunchGame(struct MainMenu *);
static void SubGameSelectWaitStart(struct MainMenu *);
static void SubGameSelectStartSlideInBanner(struct MainMenu *);
static void SubGameSelectStartSlideInItems(struct MainMenu *);
static void SubGameSelectStartSpreadItems(struct MainMenu *);
static void SubGameSelectStartSlideOut(struct MainMenu *);
static void SubGameSelectEnd(struct MainMenu *);
static void SubGameSelectStartFadeOut(struct MainMenu *);
static void SubGameSelectDestroyAnim(struct MainMenu *);
static void SubGameSelectFadeOutWait1(struct MainMenu *);
static void SubGameSelectFadeOutWait2(struct MainMenu *);
static void MainMenuStartIdleTimeout(struct MainMenu *);
static void MainMenuIdleTimeoutFadeOut(struct MainMenu *);
static void MainMenuIdleTimeoutStopMusic(struct MainMenu *);
static void MainMenuIdleTimeoutWaitMusicStop(struct MainMenu *);
static void MainMenuIdleTimeoutDestroyAnim(struct MainMenu *);
static void MainMenuIdleTimeoutWait1(struct MainMenu *);
static void MainMenuIdleTimeoutWait2(struct MainMenu *);
static void MainMenuIdleTimeoutReturnToTitle(struct MainMenu *);
static void MainMenuClearBgTiles(u8);
static void MainMenuClearBgTilemap(u8);
static bool32 HasCompletionBar(s8);
static void LinkConnectCyclePalette(void);

static const u16 sAmbienceStepDurations[] = {
    0x14, 0x14,
    0x3C, 0x14,
     0xF,  0xF,
    0x1E,  0xF,
     0xF, 0x14,
    0x14, 0x1E,
    0x1E, 0x32,
};

static const u16 sMenuBgIds[NUM_LANGUAGES][0x10] = {
    [LANGUAGE_JAPANESE] = { 0xF0, 0x10F, 0x110, 0x111, 0x112, 0x113, 0x114, 0x133, 0x134, 0x135, 0x136, 0x137, 0x138, 0x143, 0x144, 0x29E },
    [LANGUAGE_ENGLISH]  = { 0xEC,  0xF7,  0xF8,  0xF9,  0xFA,  0xFB,  0xFC, 0x11B, 0x11C, 0x11D, 0x11E, 0x11F, 0x120, 0x13B, 0x13C, 0x2A1 },
    [LANGUAGE_GERMAN]   = { 0xEB,  0xF1,  0xF2,  0xF3,  0xF4,  0xF5,  0xF6, 0x115, 0x116, 0x117, 0x118, 0x119, 0x11A, 0x139, 0x13A, 0x2A4 },
    [LANGUAGE_FRENCH]   = { 0xEE, 0x103, 0x104, 0x105, 0x106, 0x107, 0x108, 0x127, 0x128, 0x129, 0x12A, 0x12B, 0x12C, 0x13F, 0x140, 0x2A7 },
    [LANGUAGE_SPANISH]  = { 0xED,  0xFD,  0xFE,  0xFF, 0x100, 0x101, 0x102, 0x121, 0x122, 0x123, 0x124, 0x125, 0x126, 0x13D, 0x13E, 0x2AA },
    [LANGUAGE_ITALIAN]  = { 0xEF, 0x109, 0x10A, 0x10B, 0x10C, 0x10D, 0x10E, 0x12D, 0x12E, 0x12F, 0x130, 0x131, 0x132, 0x141, 0x142, 0x2AD },
};

static const struct MenuSpriteAnim sMenuSpriteAnims[NUM_LANGUAGES][42] = {
    [LANGUAGE_JAPANESE] = {
        { 0x34F,  0x3, 0x39 },
        { 0x34F,  0x4, 0x39 },
        { 0x34F,  0x5, 0x39 },
        { 0x34F,  0x6, 0x39 },
        { 0x34F,  0x7, 0x39 },
        { 0x34F,  0x8, 0x39 },
        { 0x34F,  0x0, 0x4E },
        { 0x34F,  0x1, 0x4E },
        { 0x34F,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x356,  0x0, 0x42 },
        { 0x356,  0x1, 0x42 },
        { 0x356,  0x2, 0x42 },
        { 0x356,  0x3, 0x42 },
        { 0x356,  0x4, 0x54 },
        { 0x356,  0x5, 0xC0 },
        { 0x356,  0x6, 0xC0 },
        { 0x356,  0x7, 0x38 },
        { 0x364,  0x2, 0x10 },
        { 0x364,  0x3, 0x10 },
        { 0x364,  0x4, 0x10 },
        { 0x364,  0x5, 0x10 },
        { 0x364,  0x6, 0x28 },
        { 0x364,  0x0, 0x40 },
        { 0x364,  0x1, 0x40 },
        { 0x364,  0x7, 0x39 },
        { 0x364,  0x8, 0x39 },
        { 0x364,  0x9, 0x39 },
        { 0x364,  0xA, 0x39 },
        { 0x356,  0x8, 0x42 },
        { 0x356,  0x9, 0x42 },
        { 0x356,  0xA, 0x42 },
        { 0x356,  0xB, 0x42 },
    },
    [LANGUAGE_ENGLISH]  = {
        { 0x350,  0x3, 0x39 },
        { 0x350,  0x4, 0x39 },
        { 0x350,  0x5, 0x39 },
        { 0x350,  0x6, 0x39 },
        { 0x350,  0x7, 0x39 },
        { 0x350,  0x8, 0x39 },
        { 0x350,  0x0, 0x4E },
        { 0x350,  0x1, 0x4E },
        { 0x350,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x357,  0x0, 0x42 },
        { 0x357,  0x1, 0x42 },
        { 0x357,  0x2, 0x42 },
        { 0x357,  0x3, 0x42 },
        { 0x357,  0x4, 0x54 },
        { 0x357,  0x5, 0xC0 },
        { 0x357,  0x6, 0xC0 },
        { 0x357,  0x7, 0x34 },
        { 0x360,  0x2, 0x10 },
        { 0x360,  0x3, 0x10 },
        { 0x360,  0x4, 0x10 },
        { 0x360,  0x5, 0x10 },
        { 0x360,  0x6, 0x28 },
        { 0x360,  0x0, 0x40 },
        { 0x360,  0x1, 0x40 },
        { 0x360,  0x7, 0x39 },
        { 0x360,  0x8, 0x39 },
        { 0x360,  0x9, 0x39 },
        { 0x360,  0xA, 0x39 },
        { 0x357,  0x8, 0x42 },
        { 0x357,  0x9, 0x42 },
        { 0x357,  0xA, 0x42 },
        { 0x357,  0xB, 0x42 },
    },
    [LANGUAGE_GERMAN]   = {
        { 0x351,  0x3, 0x39 },
        { 0x351,  0x4, 0x39 },
        { 0x351,  0x5, 0x39 },
        { 0x351,  0x6, 0x39 },
        { 0x351,  0x7, 0x39 },
        { 0x351,  0x8, 0x39 },
        { 0x351,  0x0, 0x4E },
        { 0x351,  0x1, 0x4E },
        { 0x351,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x358,  0x0, 0x42 },
        { 0x358,  0x1, 0x42 },
        { 0x358,  0x2, 0x42 },
        { 0x358,  0x3, 0x42 },
        { 0x358,  0x4, 0x54 },
        { 0x358,  0x5, 0xC0 },
        { 0x358,  0x6, 0xC0 },
        { 0x358,  0x7, 0x38 },
        { 0x35F,  0x2, 0x10 },
        { 0x35F,  0x3, 0x10 },
        { 0x35F,  0x4, 0x10 },
        { 0x35F,  0x5, 0x10 },
        { 0x35F,  0x6, 0x28 },
        { 0x35F,  0x0, 0x40 },
        { 0x35F,  0x1, 0x40 },
        { 0x35F,  0x7, 0x39 },
        { 0x35F,  0x8, 0x39 },
        { 0x35F,  0x9, 0x39 },
        { 0x35F,  0xA, 0x39 },
        { 0x358,  0x8, 0x42 },
        { 0x358,  0x9, 0x42 },
        { 0x358,  0xA, 0x42 },
        { 0x358,  0xB, 0x42 },
    },
    [LANGUAGE_FRENCH]   = {
        { 0x352,  0x3, 0x39 },
        { 0x352,  0x4, 0x39 },
        { 0x352,  0x5, 0x39 },
        { 0x352,  0x6, 0x39 },
        { 0x352,  0x7, 0x39 },
        { 0x352,  0x8, 0x39 },
        { 0x352,  0x0, 0x4E },
        { 0x352,  0x1, 0x4E },
        { 0x352,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x359,  0x0, 0x42 },
        { 0x359,  0x1, 0x42 },
        { 0x359,  0x2, 0x42 },
        { 0x359,  0x3, 0x42 },
        { 0x359,  0x4, 0x54 },
        { 0x359,  0x5, 0xC0 },
        { 0x359,  0x6, 0xC0 },
        { 0x359,  0x7, 0x38 },
        { 0x362,  0x2, 0x10 },
        { 0x362,  0x3, 0x10 },
        { 0x362,  0x4, 0x10 },
        { 0x362,  0x5, 0x10 },
        { 0x362,  0x6, 0x28 },
        { 0x362,  0x0, 0x40 },
        { 0x362,  0x1, 0x40 },
        { 0x362,  0x7, 0x39 },
        { 0x362,  0x8, 0x39 },
        { 0x362,  0x9, 0x39 },
        { 0x362,  0xA, 0x39 },
        { 0x359,  0x8, 0x42 },
        { 0x359,  0x9, 0x42 },
        { 0x359,  0xA, 0x42 },
        { 0x359,  0xB, 0x42 },
    },
    [LANGUAGE_SPANISH]  = {
        { 0x353,  0x3, 0x39 },
        { 0x353,  0x4, 0x39 },
        { 0x353,  0x5, 0x39 },
        { 0x353,  0x6, 0x39 },
        { 0x353,  0x7, 0x39 },
        { 0x353,  0x8, 0x39 },
        { 0x353,  0x0, 0x4E },
        { 0x353,  0x1, 0x4E },
        { 0x353,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x35A,  0x0, 0x42 },
        { 0x35A,  0x1, 0x42 },
        { 0x35A,  0x2, 0x42 },
        { 0x35A,  0x3, 0x42 },
        { 0x35A,  0x4, 0x54 },
        { 0x35A,  0x5, 0xC0 },
        { 0x35A,  0x6, 0xC0 },
        { 0x35A,  0x7, 0x34 },
        { 0x361,  0x2, 0x10 },
        { 0x361,  0x3, 0x10 },
        { 0x361,  0x4, 0x10 },
        { 0x361,  0x5, 0x10 },
        { 0x361,  0x6, 0x28 },
        { 0x361,  0x0, 0x40 },
        { 0x361,  0x1, 0x40 },
        { 0x361,  0x7, 0x39 },
        { 0x361,  0x8, 0x39 },
        { 0x361,  0x9, 0x39 },
        { 0x361,  0xA, 0x39 },
        { 0x35A,  0x8, 0x42 },
        { 0x35A,  0x9, 0x42 },
        { 0x35A,  0xA, 0x42 },
        { 0x35A,  0xB, 0x42 },
    },
    [LANGUAGE_ITALIAN]  = {
        { 0x354,  0x3, 0x39 },
        { 0x354,  0x4, 0x39 },
        { 0x354,  0x5, 0x39 },
        { 0x354,  0x6, 0x39 },
        { 0x354,  0x7, 0x39 },
        { 0x354,  0x8, 0x39 },
        { 0x354,  0x0, 0x4E },
        { 0x354,  0x1, 0x4E },
        { 0x354,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x35B,  0x0, 0x42 },
        { 0x35B,  0x1, 0x42 },
        { 0x35B,  0x2, 0x42 },
        { 0x35B,  0x3, 0x42 },
        { 0x35B,  0x4, 0x54 },
        { 0x35B,  0x5, 0xC0 },
        { 0x35B,  0x6, 0xC0 },
        { 0x35B,  0x7, 0x34 },
        { 0x363,  0x2, 0x10 },
        { 0x363,  0x3, 0x10 },
        { 0x363,  0x4, 0x10 },
        { 0x363,  0x5, 0x10 },
        { 0x363,  0x6, 0x28 },
        { 0x363,  0x0, 0x40 },
        { 0x363,  0x1, 0x40 },
        { 0x363,  0x7, 0x39 },
        { 0x363,  0x8, 0x39 },
        { 0x363,  0x9, 0x39 },
        { 0x363,  0xA, 0x39 },
        { 0x35B,  0x8, 0x42 },
        { 0x35B,  0x9, 0x42 },
        { 0x35B,  0xA, 0x42 },
        { 0x35B,  0xB, 0x42 },
    },
};

static const struct MenuSpriteAnim sDigitAnims[] = {
    { 0x355, 0x3, 0x1 },
    { 0x355, 0x4, 0x1 },
    { 0x355, 0x5, 0x1 },
    { 0x355, 0x6, 0x1 },
    { 0x355, 0x7, 0x1 },
    { 0x355, 0x8, 0x1 },
    { 0x355, 0x9, 0x1 },
    { 0x355, 0xA, 0x1 },
    { 0x355, 0xB, 0x1 },
    { 0x355, 0xC, 0x1 },
};

static const s16 sFileSelectCursorY[] = {
    0x10, 0x28, 0x40,
};

static const s16 sMainMenuCursorY[] = {
    0x10, 0x25, 0x3A, 0x4F,
};

static const u8 gUnk_08386512[] = {
    0x13, 0x15, 0x17, 0x19,
};

static const u32 sBgPriorities[3] = {
    0, 1, 2,
};

static const struct MenuSpriteAnim sFileSelectPalLoadAnims[5] = {
    { 0x355,  0x0, 0x0 },
    { 0x355,  0xD, 0x6 },
    { 0x355, 0x17, 0x0 },
    { 0x355, 0x18, 0x0 },
    { 0x355, 0x19, 0x0 },
};

static const u8 sFileSelectPalLoadIds[5] = {
    3, 4, 5, 6, 7,
};

static const u8 gUnk_08386551[3] = {
    0x10, 0x15, 0x1A,
};

static const u16 sFileSelectNameY[3] = {
    0x1B, 0x23, 0x2B,
};

static const u16 sFileSelectDigitY[3] = {
    0x23, 0x2B, 0x33,
};

static const u16 sFileSelectBarY[3] = {
    0x27, 0x2F, 0x37,
};

static const struct MenuSpriteAnim sMainMenuPalLoadAnims[3] = {
    { 0x35C, 0x0, 0x0 },
    { 0x35C, 0x1, 0x0 },
    { 0x35C, 0x2, 0x0 },
};

static const u8 sMainMenuPalLoadIds[3] = {
    3, 4, 6,
};

static const u8 gUnk_08386583[4] = {
    0x10, 0x12, 0x14, 0x16,
};

static const u16 sMainMenuItemY[4] = {
    0x1B, 0x23, 0x2B, 0x33,
};

static const u16 sEraseFilePalLoadAnims[3][2] = {
    { 0x355,  0xD },
    { 0x355, 0x17 },
    { 0x355, 0x18 },
};

static const s16 sLink2PlayerLayout[4][4] = {
    { 0x78, 0x3C, 0x46, 0x4E },
    { 0x78, 0x3C, 0xAA, 0x4E },
    { 0x78, 0x3C, 0xAA, 0x4E },
    { 0x78, 0x3C, 0xAA, 0x4E },
};

static const s16 sLink3PlayerLayout[4][4] = {
    { 0x46, 0x4E, 0x2A, 0x60 },
    { 0xAA, 0x4E, 0x78, 0x60 },
    { 0xAA, 0x4E, 0xC6, 0x60 },
    { 0xAA, 0x4E, 0xC6, 0x60 },
};

static const s16 sLink4PlayerLayout[4][4] = {
    { 0x2A, 0x60, 0x1E, 0x6B },
    { 0x78, 0x60, 0x5A, 0x6B },
    { 0xC6, 0x60, 0x96, 0x6B },
    { 0xC6, 0x60, 0xD2, 0x6B },
};

static const u16 sAmbiencePalIds[] = {
    0xE3, 0xE4,
    0xE5, 0xE6,
    0xE7, 0xE8,
    0xE9, 0xEA,
    0xE9, 0xE8,
    0xE7, 0xE6,
    0xE5, 0xE4,
};

static const s8 sAmbienceColorDeltas[] = {
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1,  0,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  0,
     0
};

static const u8 sEraseFileShredSteps[] = { 1, 2, 2 };

extern const u8 gUnk_08D62511[];

void CreateMainMenu(void) {
    u32 bgCnt[3];
    u16 i;
    struct Task *t;
    struct MainMenu *tmp, *var;

    memcpy(bgCnt, sBgPriorities, sizeof(sBgPriorities));
    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    t = TaskCreate(MainMenuMain, sizeof(struct MainMenu), 0x1000, TASK_USE_IWRAM, MainMenuOnDestroy);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct MainMenu));
    var->state = MainMenuInitPalette;
    var->ambience = MainMenuAmbienceHold1;
    var->prevScreen = 0;
    var->screen = 0;
    var->fadeInDuration = 0xA;
    var->ambienceSfxTimer = (Rand32() % 0x100) + 0x12C;
    var->fileId = var->prevFileId = gSaveID > 2 ? 0 : gSaveID;
    for (i = 0; i < 3; ++i) {
        gSaveID = i;
        if (!WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, i)) {
            gUnk_0203ACB0[i] = var->fileCompletion[i] = GetSaveFileCompletion(i);
        } else {
            gUnk_0203ACB0[i] = var->fileCompletion[i] = -1;
            ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
            UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, i);
        }
        if (var->fileCompletion[i] == 100)
            var->fileCompleted[i] = 1;
        else
            var->fileCompleted[i] = 0;
    }
    gSaveID = var->fileId;
    m4aSongNumStartOrChange(MUS_MENU);
}

void CreateMainMenuFromSubGame(u8 a1) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct MainMenu *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, sBgPriorities, sizeof(sBgPriorities));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    m4aSongNumStartOrChange(MUS_MENU);
    t = TaskCreate(MainMenuMain, sizeof(struct MainMenu), 0x1000, TASK_USE_IWRAM, MainMenuOnDestroy);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct MainMenu));
    var->ambience = MainMenuAmbienceHold1;
    var->prevFileId = 0;
    var->fileId = 0;
    var->prevScreen = 8;
    var->screen = 8;
    var->subGameCursor = var->prevSubGameCursor = a1;
    var->mainMenuCursor = var->prevMainMenuCursor = 1;
    var->fadeInDuration = 0xF;
    var->ambienceSfxTimer = (Rand32() % 0x100) + 0x12C;
    var->fileId = var->prevFileId = gSaveID > 2 ? 0 : gSaveID;
    for (i = 0; i < 3; ++i) {
        var->fileCompletion[i] = gUnk_0203ACB0[i];
        if (var->fileCompletion[i] == 100)
            var->fileCompleted[i] = 1;
        else
            var->fileCompleted[i] = 0;
    }
    var->state = MainMenuInitPalette;
}

void CreateMainMenuFromCollectionRoom(void) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct MainMenu *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, sBgPriorities, sizeof(sBgPriorities));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    m4aSongNumStartOrChange(MUS_MENU);
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    t = TaskCreate(MainMenuMain, sizeof(struct MainMenu), 0x1000, TASK_USE_IWRAM, MainMenuOnDestroy);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct MainMenu));
    var->ambience = MainMenuAmbienceHold1;
    var->prevFileId = 0;
    var->fileId = 0;
    var->prevScreen = 0xA;
    var->screen = 0xA;
    var->mainMenuCursor = var->prevMainMenuCursor = 2;
    var->fadeInDuration = 0xA;
    var->ambienceSfxTimer = (Rand32() % 0x100) + 0x12C;
    var->fileId = var->prevFileId = gSaveID > 2 ? 0 : gSaveID;
    for (i = 0; i < 3; ++i) {
        var->fileCompletion[i] = gUnk_0203ACB0[i];
        if (var->fileCompletion[i] == 100)
            var->fileCompleted[i] = 1;
        else
            var->fileCompleted[i] = 0;
    }
    var->state = MainMenuInitPalette;
}

static s8 GetSaveFileCompletion(u8 a1 __attribute__((unused))) {
    s8 r6 = 0x27 * NumChestsCollected() / 0x54;
    u16 r5 = 0, i;

    for (i = 0; i < 0x110; ++i) {
        if (sub_08002A5C(gUnk_08932F8C[i]))
            ++r5;
    }
    r6 += 0x25 * r5 / 0x110;
    r5 = 0;
    for (i = 1; i < 0x10; ++i) {
        if (*sub_08002888(SUB_08002888_ENUM_UNK_3, i, 0))
            ++r5;
    }
    r6 += r5;
    r6 += NumShardsCollected();
    if (gAIKirbyState >= AI_KIRBY_STATE_UNK1)
        ++r6;
    return r6;
}

static void MainMenuOnDestroy(struct Task *t) {
    u8 i;
    struct MainMenu *var = TaskGetStructPtr(t);

    if (var->cursor.tilesVram) {
        VramFree(var->cursor.tilesVram);
        var->cursor.tilesVram = 0;
    }
    if (var->header.tilesVram) {
        VramFree(var->header.tilesVram);
        var->header.tilesVram = 0;
    }
    FileSelectFreeSprites(var);
    EraseFileFreeSprites(var);
    MainMenuFreeSprites(var);
    LinkConnectFreeSprites(var);
    LinkFileSelectFreeSprites(var);
    SubGameSelectFreeSprites(var);
    for (i = 0; i < 0xA; ++i)
        gKeysContinuedRepeatIntervals[i] = 8;
}

static void MainMenuCreateHeaderSprites(struct MainMenu *a1) {
    struct Sprite *sprite;

    sprite = &a1->header;
    SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][0].numTiles), 0x780,
        sMenuSpriteAnims[gLanguage][0].animId, sMenuSpriteAnims[gLanguage][0].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0);
    sprite = &a1->cursor;
    SpriteInitNoPointer2(&a1->cursor, VramMalloc(0x10), 0x280, 0x355, 2, 0, 0xFF, 0x10, 1, -0x20, 0x10, 0);
}

static void FileSelectCreateSprites(struct MainMenu *a1) {
    u8 i;
    struct Sprite *sprite;
    u8 sp00[3];
    u8 sp04[3];
    u8 sp08[3];
    u32 sp0C[3];
    union {
        struct MenuSpriteAnim pat1[5];
        struct {
            u8 unk0[3];
            u16 unk4[3];
        } pat2;
        u16 pat3[3];
    } sp18;
    u8 sp40[5];
    struct MenuSpriteAnim sp48;

    for (i = 0; i < 3; ++i) {
        if (a1->fileId == i) {
            sp00[i] = 2;
            sp04[i] = 2;
            sp08[i] = i + 4;
            sp0C[i] = 0;
        } else {
            sp00[i] = 3;
            sp04[i] = 3;
            sp08[i] = 7;
            sp0C[i] = 0x40000;
        }
    }
    memcpy(sp18.pat1, sFileSelectPalLoadAnims, sizeof(sFileSelectPalLoadAnims));
    memcpy(sp40, sFileSelectPalLoadIds, sizeof(sFileSelectPalLoadIds));
    for (i = 0; i < 5; ++i) {
        sprite = &a1->palLoadSprite;
        SpriteInitNoPointer2(sprite, 0, 0x3FC0, sp18.pat1[i].animId, sp18.pat1[i].variant,
            0, 0xFF, 0x10, sp40[i], -0x40, -0x40, 0);
    }
    memcpy(sp18.pat2.unk0, gUnk_08386551, sizeof(gUnk_08386551));
    memcpy(sp18.pat2.unk4, sFileSelectNameY, sizeof(sFileSelectNameY));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->fileLabels[i];
        SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][i+6].numTiles), sp18.pat2.unk0[i] * 0x40, sMenuSpriteAnims[gLanguage][i+6].animId,
            sMenuSpriteAnims[gLanguage][i+6].variant, 0, 0xFF, 0x10, sp00[i], 0xF0, sp18.pat2.unk4[i], sp0C[i]);
    }
    memcpy(sp18.pat3, sFileSelectDigitY, sizeof(sFileSelectDigitY));
    for (i = 0; i < 3; ++i) {
        if (a1->fileCompletion[i] <= 0) {
            sprite = &a1->completionDigits[i][2];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[0].numTiles), (5 * i + 0xF) * 0x40, sDigitAnims[0].animId, sDigitAnims[0].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A8, sp18.pat3[i], sp0C[i]);
            continue;
        }
        if (a1->fileCompletion[i] == 100) {
            sprite = &a1->completionDigits[i][0];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[1].numTiles), (5 * i + 0xF) * 0x40, sDigitAnims[1].animId, sDigitAnims[1].variant,
                0, 0xFF, 0x10, sp04[i], 0x198, sp18.pat3[i], sp0C[i]);
        }
        if (a1->fileCompletion[i] >= 10) {
            u8 tens = a1->fileCompletion[i] / 10 % 10;

            sprite = &a1->completionDigits[i][1];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[tens].numTiles), (5 * i + 0xF) * 0x40, sDigitAnims[tens].animId, sDigitAnims[tens].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A0, sp18.pat3[tens], sp0C[i]);
        }
        {
            u8 ones = a1->fileCompletion[i] % 10;

            sprite = &a1->completionDigits[i][2];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[ones].numTiles), (5 * i + 0xF) * 0x40, sDigitAnims[ones].animId, sDigitAnims[ones].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A8, sp18.pat3[ones], sp0C[i]);
        }
    }
    memcpy(sp18.pat3, sFileSelectBarY, sizeof(sFileSelectBarY));
    for (i = 0; i < 3; ++i) {
        if (HasCompletionBar(a1->fileCompletion[i])) {
            GetCompletionBarAnim(&sp48, a1->fileCompletion[i]);
            sprite = &a1->completionBars[i];
            SpriteInitNoPointer2(sprite, VramMalloc(sp48.numTiles), (5 * i + 0xF) * 0x40, sp48.animId, sp48.variant, 0,
                0xFF, 0x10, sp08[i], 0x143, sp18.pat3[i], 0x40000);
        }
    }
}

static void MainMenuCreateSprites(struct MainMenu *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp00[4];
    u32 sp04[4];
    union {
        struct MenuSpriteAnim pat1[3];
        struct {
            u8 unk0[4];
            u16 unk4[4];
        } pat2;
    } sp14;
    u8 sp2C[3];

    for (i = 0; i < 4; ++i) {
        if (a1->mainMenuCursor == i) {
            sp00[i] = 2;
            sp04[i] = 0;
        } else {
            sp00[i] = 3;
            sp04[i] = 0x40000;
        }
    }
    memcpy(sp14.pat1, sMainMenuPalLoadAnims, sizeof(sMainMenuPalLoadAnims));
    memcpy(sp2C, sMainMenuPalLoadIds, sizeof(sMainMenuPalLoadIds));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->palLoadSprite;
        SpriteInitNoPointer2(sprite, VramMalloc(sp14.pat1[i].numTiles), 0x3FC0, sp14.pat1[i].animId, sp14.pat1[i].variant,
            0, 0xFF, 0x10, sp2C[i], -0x40, -0x40, 0);
    }
    memcpy(sp14.pat2.unk0, gUnk_08386583, sizeof(gUnk_08386583));
    memcpy(sp14.pat2.unk4, sMainMenuItemY, sizeof(sMainMenuItemY));
    for (i = 0; i < 4; ++i) {
        sprite = &a1->items[i];
        SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][i+0x13].numTiles), sp14.pat2.unk0[i] * 0x40, sMenuSpriteAnims[gLanguage][i+0x13].animId,
            sMenuSpriteAnims[gLanguage][i+0x13].variant, 0, 0xFF, 0x10, sp00[i], 0xF0, sp14.pat2.unk4[i], sp04[i]);
    }
    sprite = &a1->subMenuPointer;
    SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][0x17].numTiles), 0x200, sMenuSpriteAnims[gLanguage][0x17].animId,
        sMenuSpriteAnims[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}

static void EraseFileCreateSprites(struct MainMenu *a1) {
    u8 i;
    u8 r6;
    struct Sprite *sprite;

    r6 = a1->fileId;
    sprite = &a1->palLoadSprite;
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x35C, 3, 0, 0xFF, 0x10, 6, -0x40, -0x40, 0);
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x355, 1, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite = &a1->erasePrompt;
    SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][0x18].numTiles), 0x200, sMenuSpriteAnims[gLanguage][0x18].animId,
        sMenuSpriteAnims[gLanguage][0x18].variant, 0, 0xFF, 0x10, 5, 0x78, 0x5C, 0);
    sprite = &a1->eraseYesNo;
    SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][0x1A].numTiles), 0x1C0, sMenuSpriteAnims[gLanguage][0x1A].animId,
        sMenuSpriteAnims[gLanguage][0x1A].variant, 0, 0xFF, 0x10, 7, 0x74, 0x56, 0);
    {
        union {
            struct MenuSpriteAnim pat1[3];
            u16 pat2[3][2];
        } sp00 = {
            .pat1 = {
                { sMenuSpriteAnims[gLanguage][6].animId, sMenuSpriteAnims[gLanguage][6].variant, sMenuSpriteAnims[gLanguage][6].numTiles },
                { sMenuSpriteAnims[gLanguage][7].animId, sMenuSpriteAnims[gLanguage][7].variant, sMenuSpriteAnims[gLanguage][7].numTiles },
                { sMenuSpriteAnims[gLanguage][8].animId, sMenuSpriteAnims[gLanguage][8].variant, sMenuSpriteAnims[gLanguage][8].numTiles },
            },
        };
        struct MenuSpriteAnim sp30;

        sprite = a1->fileLabels + r6;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00.pat1[r6].numTiles), 0x540, sp00.pat1[r6].animId, sp00.pat1[r6].variant, 0, 0xFF, 0x10, 2, 0xF0, 0x1B, 0);
        a1->completionDigits[r6][2].palId = 2;
        a1->completionDigits[r6][1].palId = 2;
        a1->completionDigits[r6][0].palId = 2;
        if (a1->fileCompletion[r6] == 100) {
            sprite = &a1->completionDigits[r6][0];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[1].numTiles), 0x500, sDigitAnims[1].animId, sDigitAnims[1].variant,
                0, 0xFF, 0x10, 2, 0x198, 0x23, 0);
        }
        if (a1->fileCompletion[r6] >= 10) {
            u8 tens = a1->fileCompletion[r6] / 10 % 10;
    
            sprite = &a1->completionDigits[r6][1];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[tens].numTiles), 0x500, sDigitAnims[tens].animId, sDigitAnims[tens].variant,
                0, 0xFF, 0x10, 2, 0x1A0, 0x23, 0);
        }
        {
            u8 ones = a1->fileCompletion[r6] % 10;
    
            sprite = &a1->completionDigits[r6][2];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[ones].numTiles), 0x500, sDigitAnims[ones].animId, sDigitAnims[ones].variant,
                0, 0xFF, 0x10, 2, 0x1A8, 0x23, 0);
        }
        memcpy(sp00.pat2, sEraseFilePalLoadAnims, sizeof(sEraseFilePalLoadAnims));
        sprite = &a1->palLoadSprite;
        SpriteInitNoPointer2(sprite, 0, 0x3FC0, sp00.pat2[r6][0], sp00.pat2[r6][1], 0, 0xFF, 0x10, 4, -0x40, -0x40, 0);
        if (HasCompletionBar(a1->fileCompletion[r6])) {
            GetCompletionBarAnim(&sp30, a1->fileCompletion[r6]);
            sprite = &a1->completionBars[r6];
            SpriteInitNoPointer2(sprite, VramMalloc(sp30.numTiles), 0x500, sp30.animId, sp30.variant, 0, 0xFF, 0x10, 4, 0x143, 0x27, 0x40000);
        }
        for (i = 0; i < 3; ++i) {
            sprite = &a1->shredEffects[i];
            SpriteInitNoPointer2(sprite, VramMalloc(0x90), 0x140, 0x35D, 0, 0, 0xFF, 0x10, 8, 0, 0, 0);
        }
    }
}

static void LinkConnectCreateGbaSprites(struct MainMenu *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk478;
    SpriteInitNoPointer2(sprite, VramMalloc(0x54), 0x640, 0x35E, 0, 0, 0xFF, 0x10, 2, 0x78, 0x3C, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4A0;
    SpriteInitNoPointer2(sprite, VramMalloc(0x10), 0x600, 0x35E, 3, 0, 0xFF, 0x10, 3, 0x78, 0x3C, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4C8;
    SpriteInitNoPointer2(sprite, VramMalloc(0x32), 0x640, 0x35E, 1, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4F0;
    SpriteInitNoPointer2(sprite, VramMalloc(8), 0x600, 0x35E, 4, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk518;
    SpriteInitNoPointer2(sprite, VramMalloc(0x28), 0x640, 0x35E, 2, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk540;
    SpriteInitNoPointer2(sprite, VramMalloc(8), 0x600, 0x35E, 5, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
}

static void LinkConnectCreateTextSprites(struct MainMenu *a1) {
    struct Sprite *sprite;
    u8 i, j;
    u32 vram[2];

    sprite = &a1->unk568;
    SpriteInitNoPointer2(sprite, VramMalloc(0x12), 0x7C0, 0x35E, 6, 0, 0xFF, 0x10, 2, 0x82, 0x12, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk590;
    SpriteInitNoPointer2(sprite, VramMalloc(0x38), 0x7C0, 0x35E, 7, 0, 0xFF, 0x10, 2, 0x7A, 0x30, 0x40000);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk5B8;
    SpriteInitNoPointer2(sprite, VramMalloc(0x93), 0x7C0, 0x35E, 8, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0x40000);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk5E0;
    SpriteInitNoPointer2(sprite, VramMalloc(0xF0), 0x7C0, 0x35E, 9, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0x40000);
    sprite->unk8 |= 0x80000;
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk630[i];
        SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][i + 0x1B].numTiles), 0x3C0,
            sMenuSpriteAnims[gLanguage][i + 0x1B].animId, sMenuSpriteAnims[gLanguage][i + 0x1B].variant, 0, 0xFF, 0x10, 4, a1->unk4C8.x, a1->unk4C8.y + 0x10, 0);
        sprite->unk8 |= 0x80000;
    }
    sprite = &a1->unk608;
    SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][0x1F].numTiles), 0x3C0,
        sMenuSpriteAnims[gLanguage][0x1F].animId, sMenuSpriteAnims[gLanguage][0x1F].variant, 0, 0xFF, 0x10, 4, 0xC4, 0x30, 0);
    sprite->unk8 |= 0x80000;
    vram[0] = VramMalloc(sMenuSpriteAnims[gLanguage][0x20].numTiles);
    vram[1] = VramMalloc(sMenuSpriteAnims[gLanguage][0x21].numTiles);
    for (j = 0; j < 3; ++j) {
        for (i = 0; i < 2; ++i) {
            sprite = &a1->unk6D0[j][i];
            SpriteInitNoPointer2(sprite, vram[i], 0x3C0, sMenuSpriteAnims[gLanguage][i + 0x20].animId, sMenuSpriteAnims[gLanguage][i + 0x20].variant,
                0, 0xFF, 0x10, 4, i * 0x40 + 0xAD, 0x5E, j | 0x20 | 0x40000);
            sprite->unk8 |= 0x80000;
        }
    }
}

static void LinkFileSelectCreateSprites(struct MainMenu *a1) {
    struct Sprite *sprite;
#ifdef NONMATCHING
    u32 r0;
#else
    register u32 r0 asm("r0");
#endif
    s8 r4;
    u8 i, j;
    s8 var;
    u8 sp00[4];
    u8 sp04[4];
    u32 sp08[4];
    u8 sp28[3];
    s16 sp2C;

    sp00[0] = 2;
    sp04[0] = 2;
    sp08[0] = 0;
    for (i = 1; i < 4; ++i) {
        sp00[i] = 3;
        sp04[i] = 3;
        sp08[i] = 0x40000;
    }
    sprite = &a1->palLoadSprite;
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x35E, 0xA, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    for (i = 0; i < 4; ++i) {
        sprite = &a1->items[i];
        SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][i + 0x22].numTiles), 0x500,
            sMenuSpriteAnims[gLanguage][i + 0x22].animId, sMenuSpriteAnims[gLanguage][i + 0x22].variant, 0, 0xFF, 0x10, sp00[i], 0x58, 0x15 * i + 0x1B, sp08[i]);
    }
    sp2C = 0xC8;
    for (i = 0; i < 4; ++i) {
        var = a1->playerCompletion[i];
        if (var < 0) {
            sp28[0] = sp28[1] = sp28[2] = 0;
        } else {
            sp28[0] = var / 100;
            r4 = var - 100 * sp28[0];
            sp28[1] = r4 / 10;
            r0 = (u8)(r4 - 10 * sp28[1]);
            sp28[2] = r0;
        }
        for (j = 0; j < 3; ++j) {
            sprite = &a1->playerCompletionDigits[i][j];
            SpriteInitNoPointer2(sprite, VramMalloc(sDigitAnims[sp28[j]].numTiles), 0x4C0,
                sDigitAnims[sp28[j]].animId, sDigitAnims[sp28[j]].variant, 0, 0xFF, 0x10, sp04[i], 8 * j + sp2C, 0x15 * i + 0x22, sp08[i]);
        }
    }
}

#ifdef UBFIX
static void SubGameSelectCreateSprites(struct MainMenu *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp1C = a1->fileCompleted[a1->fileId];
    // doesn't match with a union
    union {
        struct MenuSpriteAnim pat1[3];
        struct {
            u8 unk0[4];
            u8 unk4[4];
            u32 unk8[4];
        } pat2;
    } sp00;
    u8 sp18[3];

    memcpy(sp00.pat1, sMainMenuPalLoadAnims, sizeof(sMainMenuPalLoadAnims));
    memcpy(sp18, sMainMenuPalLoadIds, sizeof(sMainMenuPalLoadIds));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->palLoadSprite;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00.pat1[i].numTiles), 0x3FC0, sp00.pat1[i].animId, sp00.pat1[i].variant, 0, 0xFF, 0x10, sp18[i], -0x40, -0x40, 0);
    }
    memcpy(sp00.pat2.unk0, gUnk_08386583, sizeof(gUnk_08386583));
    for (i = 0; i < 4; ++i) {
        if (a1->subGameCursor == i) {
            sp00.pat2.unk4[i] = 2;
            sp00.pat2.unk8[i] = 0;
        } else {
            sp00.pat2.unk4[i] = 3;
            sp00.pat2.unk8[i] = 0x40000;
        }
    }
    for (i = 0; i < 4; ++i) {
        sprite = &a1->items[i];
        SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][i + 0x26].numTiles), sp00.pat2.unk0[i] * 0x40,
            sMenuSpriteAnims[gLanguage][i + 0x26].animId, sMenuSpriteAnims[gLanguage][i + 0x26].variant, 0, 0xFF, 0x10, sp00.pat2.unk4[i],
            0xF0, !sp1C ? 8 * i + 0x2B : 8 * i + 0x1B, sp00.pat2.unk8[i]);
    }
    sprite = &a1->subMenuPointer;
    SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][0x17].numTiles), 0x200, sMenuSpriteAnims[gLanguage][0x17].animId,
        sMenuSpriteAnims[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}
#else
static void SubGameSelectCreateSprites(struct MainMenu *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp1C = a1->fileCompleted[a1->fileId];
    struct MenuSpriteAnim sp00_struct[0];
    u8 sp00[4];
    u8 sp04[4];
    u32 sp08[4];
    u8 sp18[3];

    memcpy(sp00_struct, sMainMenuPalLoadAnims, sizeof(sMainMenuPalLoadAnims));
    memcpy(sp18, sMainMenuPalLoadIds, sizeof(sMainMenuPalLoadIds));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->palLoadSprite;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00_struct[i].numTiles), 0x3FC0, sp00_struct[i].animId, sp00_struct[i].variant, 0, 0xFF, 0x10, sp18[i], -0x40, -0x40, 0);
    }
    memcpy(sp00, gUnk_08386583, sizeof(gUnk_08386583));
    for (i = 0; i < 4; ++i) {
        if (a1->subGameCursor == i) {
            sp04[i] = 2;
            sp08[i] = 0;
        } else {
            sp04[i] = 3;
            sp08[i] = 0x40000;
        }
    }
    for (i = 0; i < 4; ++i) {
        sprite = &a1->items[i];
        SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][i + 0x26].numTiles), sp00[i] * 0x40,
            sMenuSpriteAnims[gLanguage][i + 0x26].animId, sMenuSpriteAnims[gLanguage][i + 0x26].variant, 0, 0xFF, 0x10, sp04[i],
            0xF0, !sp1C ? 8 * i + 0x2B : 8 * i + 0x1B, sp08[i]);
    }
    sprite = &a1->subMenuPointer;
    SpriteInitNoPointer2(sprite, VramMalloc(sMenuSpriteAnims[gLanguage][0x17].numTiles), 0x200, sMenuSpriteAnims[gLanguage][0x17].animId,
        sMenuSpriteAnims[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}
#endif

static void FileSelectFreeSprites(struct MainMenu *a1) {
    u8 i;

    for (i = 0; i < 3; ++i) {
        if (a1->fileLabels[i].tilesVram) {
            VramFree(a1->fileLabels[i].tilesVram);
            a1->fileLabels[i].tilesVram = 0;
        }
        if (HasCompletionBar(a1->fileCompletion[i])
            && a1->completionBars[i].tilesVram) {
            VramFree(a1->completionBars[i].tilesVram);
            a1->completionBars[i].tilesVram = 0;
        }
        if (a1->fileCompletion[i] == 100
            && a1->completionDigits[i][0].tilesVram) {
            VramFree(a1->completionDigits[i][0].tilesVram);
            a1->completionDigits[i][0].tilesVram = 0;
        }
        if (a1->fileCompletion[i] >= 10
            && a1->completionDigits[i][1].tilesVram) {
            VramFree(a1->completionDigits[i][1].tilesVram);
            a1->completionDigits[i][1].tilesVram = 0;
        }
        if (a1->completionDigits[i][2].tilesVram) {
            VramFree(a1->completionDigits[i][2].tilesVram);
            a1->completionDigits[i][2].tilesVram = 0;
        }
    }
}

static void MainMenuFreeSprites(struct MainMenu *a1) {
    if (a1->items[0].tilesVram) {
        VramFree(a1->items[0].tilesVram);
        a1->items[0].tilesVram = 0;
    }
    if (a1->items[1].tilesVram) {
        VramFree(a1->items[1].tilesVram);
        a1->items[1].tilesVram = 0;
    }
    if (a1->items[2].tilesVram) {
        VramFree(a1->items[2].tilesVram);
        a1->items[2].tilesVram = 0;
    }
    if (a1->items[3].tilesVram) {
        VramFree(a1->items[3].tilesVram);
        a1->items[3].tilesVram = 0;
    }
    if (a1->subMenuPointer.tilesVram) {
        VramFree(a1->subMenuPointer.tilesVram);
        a1->subMenuPointer.tilesVram = 0;
    }
}

static void EraseFileFreeSprites(struct MainMenu *a1) {
    u8 var = a1->fileId, i;

    if (a1->erasePrompt.tilesVram) {
        VramFree(a1->erasePrompt.tilesVram);
        a1->erasePrompt.tilesVram = 0;
    }
    if (a1->eraseYesNo.tilesVram) {
        VramFree(a1->eraseYesNo.tilesVram);
        a1->eraseYesNo.tilesVram = 0;
    }
    if (a1->fileLabels[var].tilesVram) {
        VramFree(a1->fileLabels[var].tilesVram);
        a1->fileLabels[var].tilesVram = 0;
    }
    if (a1->completionBars[var].tilesVram) {
        VramFree(a1->completionBars[var].tilesVram);
        a1->completionBars[var].tilesVram = 0;
    }
    if (a1->eraseCompletion == 100 && a1->completionDigits[var][0].tilesVram) {
        VramFree(a1->completionDigits[var][0].tilesVram);
        a1->completionDigits[var][0].tilesVram = 0;
    }
    if (a1->eraseCompletion >= 10 && a1->completionDigits[var][1].tilesVram) {
        VramFree(a1->completionDigits[var][1].tilesVram);
        a1->completionDigits[var][1].tilesVram = 0;
    }
    if (a1->completionDigits[var][2].tilesVram) {
        VramFree(a1->completionDigits[var][2].tilesVram);
        a1->completionDigits[var][2].tilesVram = 0;
    }
    for (i = 0; i < 3; ++i) {
        if (a1->shredEffects[i].tilesVram) {
            VramFree(a1->shredEffects[i].tilesVram);
            a1->shredEffects[i].tilesVram = 0;
        }
    }
}

static void LinkConnectFreeSprites(struct MainMenu *a1) {
    if (a1->unk478.tilesVram) {
        VramFree(a1->unk478.tilesVram);
        a1->unk478.tilesVram = 0;
    }
    if (a1->unk4A0.tilesVram) {
        VramFree(a1->unk4A0.tilesVram);
        a1->unk4A0.tilesVram = 0;
    }
    if (a1->unk4C8.tilesVram) {
        VramFree(a1->unk4C8.tilesVram);
        a1->unk4C8.tilesVram = 0;
    }
    if (a1->unk4F0.tilesVram) {
        VramFree(a1->unk4F0.tilesVram);
        a1->unk4F0.tilesVram = 0;
    }
    if (a1->unk518.tilesVram) {
        VramFree(a1->unk518.tilesVram);
        a1->unk518.tilesVram = 0;
    }
    if (a1->unk540.tilesVram) {
        VramFree(a1->unk540.tilesVram);
        a1->unk540.tilesVram = 0;
    }
    if (a1->unk568.tilesVram) {
        VramFree(a1->unk568.tilesVram);
        a1->unk568.tilesVram = 0;
    }
    if (a1->unk590.tilesVram) {
        VramFree(a1->unk590.tilesVram);
        a1->unk590.tilesVram = 0;
    }
    if (a1->unk5B8.tilesVram) {
        VramFree(a1->unk5B8.tilesVram);
        a1->unk5B8.tilesVram = 0;
    }
    if (a1->unk5E0.tilesVram) {
        VramFree(a1->unk5E0.tilesVram);
        a1->unk5E0.tilesVram = 0;
    }
    if (a1->unk608.tilesVram) {
        VramFree(a1->unk608.tilesVram);
        a1->unk608.tilesVram = 0;
    }
    if (a1->unk6D0[0][0].tilesVram) {
        VramFree(a1->unk6D0[0][0].tilesVram);
        a1->unk6D0[0][0].tilesVram = 0;
    }
    if (a1->unk6D0[0][1].tilesVram) {
        VramFree(a1->unk6D0[0][1].tilesVram);
        a1->unk6D0[0][1].tilesVram = 0;
    }
    if (a1->unk630[0].tilesVram) {
        VramFree(a1->unk630[0].tilesVram);
        a1->unk630[0].tilesVram = 0;
    }
    if (a1->unk630[1].tilesVram) {
        VramFree(a1->unk630[1].tilesVram);
        a1->unk630[1].tilesVram = 0;
    }
    if (a1->unk630[2].tilesVram) {
        VramFree(a1->unk630[2].tilesVram);
        a1->unk630[2].tilesVram = 0;
    }
    if (a1->unk630[3].tilesVram) {
        VramFree(a1->unk630[3].tilesVram);
        a1->unk630[3].tilesVram = 0;
    }
}

static void LinkFileSelectFreeSprites(struct MainMenu *a1) {
    u8 i;

    for (i = 0; i < 4; ++i) {
        if (a1->items[i].tilesVram) {
            VramFree(a1->items[i].tilesVram);
            a1->items[i].tilesVram = 0;
        }
        if (a1->playerCompletionDigits[i][0].tilesVram) {
            VramFree(a1->playerCompletionDigits[i][0].tilesVram);
            a1->playerCompletionDigits[i][0].tilesVram = 0;
        }
        if (a1->playerCompletionDigits[i][1].tilesVram) {
            VramFree(a1->playerCompletionDigits[i][1].tilesVram);
            a1->playerCompletionDigits[i][1].tilesVram = 0;
        }
        if (a1->playerCompletionDigits[i][2].tilesVram) {
            VramFree(a1->playerCompletionDigits[i][2].tilesVram);
            a1->playerCompletionDigits[i][2].tilesVram = 0;
        }
    }
}

static void SubGameSelectFreeSprites(struct MainMenu *a1) {
    if (a1->items[0].tilesVram) {
        VramFree(a1->items[0].tilesVram);
        a1->items[0].tilesVram = 0;
    }
    if (a1->items[1].tilesVram) {
        VramFree(a1->items[1].tilesVram);
        a1->items[1].tilesVram = 0;
    }
    if (a1->items[2].tilesVram) {
        VramFree(a1->items[2].tilesVram);
        a1->items[2].tilesVram = 0;
    }
    if (a1->items[3].tilesVram) {
        VramFree(a1->items[3].tilesVram);
        a1->items[3].tilesVram = 0;
    }
    if (a1->subMenuPointer.tilesVram) {
        VramFree(a1->subMenuPointer.tilesVram);
        a1->subMenuPointer.tilesVram = 0;
    }
}

static void FileSelectDisplaySprites(struct MainMenu *a1) {
    u8 i;

    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 3; ++i) {
        DisplaySprite(&a1->fileLabels[i]);
        if (HasCompletionBar(a1->fileCompletion[i]))
            DisplaySprite(&a1->completionBars[i]);
        if (a1->fileCompletion[i] == 100)
            DisplaySprite(&a1->completionDigits[i][0]);
        if (a1->fileCompletion[i] >= 10)
            DisplaySprite(&a1->completionDigits[i][1]);
        DisplaySprite(&a1->completionDigits[i][2]);
    }
}

static void FileSelectDisplayCurFileSprites(struct MainMenu *a1) {
    u8 var = a1->fileId;

    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    DisplaySprite(&a1->fileLabels[var]);
    if (HasCompletionBar(a1->fileCompletion[var]))
        DisplaySprite(&a1->completionBars[var]);
    if (a1->fileCompletion[var] == 100)
        DisplaySprite(&a1->completionDigits[var][0]);
    if (a1->fileCompletion[var] >= 10)
        DisplaySprite(&a1->completionDigits[var][1]);
    DisplaySprite(&a1->completionDigits[var][2]);
}

static void LinkFileSelectDisplaySprites(struct MainMenu *a1) {
    u8 i;

    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < a1->numPlayers; ++i) {
        DisplaySprite(&a1->items[i]);
        if (a1->playerCompletion[i] == 100)
            DisplaySprite(&a1->playerCompletionDigits[i][0]);
        if (a1->playerCompletion[i] >= 10)
            DisplaySprite(&a1->playerCompletionDigits[i][1]);
        DisplaySprite(&a1->playerCompletionDigits[i][2]);
    }
}

static bool32 GetCompletionBarAnim(struct MenuSpriteAnim *a1, s8 a2) {
    if (a2 < 0xA)
        return FALSE;
    if (a2 < 0x14) {
        a1->animId = sMenuSpriteAnims[gLanguage][9].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][9].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][9].numTiles;
    } else if (a2 < 0x1E) {
        a1->animId = sMenuSpriteAnims[gLanguage][0xA].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0xA].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0xA].numTiles;
    } else if (a2 < 0x28) {
        a1->animId = sMenuSpriteAnims[gLanguage][0xB].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0xB].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0xB].numTiles;
    } else if (a2 < 0x32) {
        a1->animId = sMenuSpriteAnims[gLanguage][0xC].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0xC].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0xC].numTiles;
    } else if (a2 < 0x3C) {
        a1->animId = sMenuSpriteAnims[gLanguage][0xD].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0xD].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0xD].numTiles;
    } else if (a2 < 0x46) {
        a1->animId = sMenuSpriteAnims[gLanguage][0xE].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0xE].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0xE].numTiles;
    } else if (a2 < 0x50) {
        a1->animId = sMenuSpriteAnims[gLanguage][0xF].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0xF].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0xF].numTiles;
    } else if (a2 < 0x5A) {
        a1->animId = sMenuSpriteAnims[gLanguage][0x10].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0x10].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0x10].numTiles;
    } else if (a2 < 0x64) {
        a1->animId = sMenuSpriteAnims[gLanguage][0x11].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0x11].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0x11].numTiles;
    } else if (a2 == 0x64) {
        a1->animId = sMenuSpriteAnims[gLanguage][0x12].animId;
        a1->variant = sMenuSpriteAnims[gLanguage][0x12].variant;
        a1->numTiles = sMenuSpriteAnims[gLanguage][0x12].numTiles;
    }
    return TRUE;
}

static void FileSelectUpdateFilePalettes(struct MainMenu *a1) {
    u8 unkA = a1->fileId;
    u8 unkB = a1->prevFileId;
    bool32 r1, r1_2;
    struct Sprite *sprite;

    sprite = &a1->fileLabels[unkA];
    sprite->palId = 2;
    UpdateSpriteAnimation(sprite);
    if (a1->fileCompletion[unkA] < 10)
        r1 = FALSE;
    else
        r1 = TRUE;
    if (r1) {
        sprite = &a1->completionBars[unkA];
        sprite->palId = unkA + 4;
        UpdateSpriteAnimation(sprite);
    }
    if (a1->fileCompletion[unkA] == 100) {
        sprite = &a1->completionDigits[unkA][0];
        sprite->palId = 2;
        UpdateSpriteAnimation(sprite);
    }
    if (a1->fileCompletion[unkA] >= 10) {
        sprite = &a1->completionDigits[unkA][1];
        sprite->palId = 2;
        UpdateSpriteAnimation(sprite);
    }
    sprite = &a1->completionDigits[unkA][2];
    sprite->palId = 2;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->fileLabels[unkB];
    sprite->palId = 3;
    UpdateSpriteAnimation(sprite);
    if (a1->fileCompletion[unkB] < 10)
        r1_2 = FALSE;
    else
        r1_2 = TRUE;
    if (r1_2) {
        sprite = &a1->completionBars[unkB];
        sprite->palId = 7;
        UpdateSpriteAnimation(sprite);
    }
    if (a1->fileCompletion[unkB] == 100) {
        sprite = &a1->completionDigits[unkB][0];
        sprite->palId = 3;
        UpdateSpriteAnimation(sprite);
    }
    if (a1->fileCompletion[unkB] >= 10) {
        sprite = &a1->completionDigits[unkB][1];
        sprite->palId = 3;
        UpdateSpriteAnimation(sprite);
    }
    sprite = &a1->completionDigits[unkB][2];
    sprite->palId = 3;
    UpdateSpriteAnimation(sprite);
}

static void LinkFileSelectUpdateFilePalettes(struct MainMenu *a1) {
    u8 a = a1->linkCursor[0];
    u8 b = a1->linkCursor[1];
    struct Sprite *sprite;

    sprite = &a1->items[a];
    sprite->palId = 2;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->playerCompletionDigits[a][0];
    sprite->palId = 2;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->playerCompletionDigits[a][1];
    sprite->palId = 2;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->playerCompletionDigits[a][2];
    sprite->palId = 2;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->items[b];
    sprite->palId = 3;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->playerCompletionDigits[b][0];
    sprite->palId = 3;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->playerCompletionDigits[b][1];
    sprite->palId = 3;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->playerCompletionDigits[b][2];
    sprite->palId = 3;
    UpdateSpriteAnimation(sprite);
}

static u8 MainMenuGetInput(void) {
    if (gPressedKeys & A_BUTTON || gPressedKeys & START_BUTTON)
        return 1;
    else if (gPressedKeys & B_BUTTON)
        return 2;
    else if (gRepeatedKeys & DPAD_UP)
        return 3;
    else if (gRepeatedKeys & DPAD_DOWN)
        return 4;
    else if (gRepeatedKeys & DPAD_LEFT)
        return 5;
    else if (gRepeatedKeys & DPAD_RIGHT)
        return 6;
    else
        return 0;   
}

static bool32 MainMenuUpdateIdleTimer(struct MainMenu *a1) {
    if (gPrevInput == gHeldKeys) {
        if (++a1->idleTimer >= 0x1C20) {
            a1->idleTimer = 0;
            a1->state = MainMenuStartIdleTimeout;
            return TRUE;
        }
    } else {
        a1->idleTimer = 0;
    }
    return FALSE;
}

static bool32 LinkConnectPollPlayerCount(struct MainMenu *a1, u8 a2) {
    if (!a1->pendingChange) {
        if (a1->link.pat2->unk11 != a1->numPlayers) {
            a1->pendingChange = 1;
            a1->pendingTimer = 0;
            a1->pendingNumPlayers = a1->link.pat2->unk11;
        } else {
            a1->pendingTimer = 0;
        }
    } else {
        if (a1->link.pat1->unk11 != a1->pendingNumPlayers && a1->pendingNumPlayers > a1->link.pat2->unk11) {
            a1->pendingChange = 0;
            a1->pendingTimer = 0;
        } else if (++a1->pendingTimer >= a2 && gMultiBootStruct.unk02 != 1) {
            a1->numPlayers = a1->link.pat2->unk11;
            a1->playerId = a1->link.pat2->unk10;
            return TRUE;
        }
    }
    return FALSE;
}

static bool32 LinkConnectCheckCancel(struct MainMenu *a1) {
    if (a1->startPressed) {
        if (++a1->startTimer < 0xB4)
            return FALSE;
        a1->startPressed = 0;
        a1->startTimer = 0;
    }
    if (gPressedKeys & B_BUTTON)
        sub_08032BBC(a1->link.pat2);
    if (a1->link.pat2->unkE == 7) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkConnectStartFadeOut;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
        m4aSongNumStart(SE_MAIN_MENU_BACK);
        return TRUE;
    }
    return FALSE;
}

static bool32 LinkConnectCheckStart(struct MainMenu *a1) {
    if (!a1->playerId && a1->link.pat2->unkE == 1 && (gPressedKeys & A_BUTTON || gPressedKeys & START_BUTTON)) {
        sub_08032BA4(a1->link.pat2);
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        if (!a1->startPressed) {
            a1->startPressed = 1;
            a1->startTimer = 0;
        }
        return TRUE;
    }
    return FALSE;
}

static void LinkConnectLerp2PlayerLayout(struct MainMenu *a1, s16 a2, u8 a3) {
    u8 i;
    s16 v10[4][4];

    memcpy(v10, sLink2PlayerLayout, sizeof(sLink2PlayerLayout));
    for (i = 0; i < 4; ++i) {
        a1->linkIconPos[i][0] = v10[i][0] + a2 * (v10[i][2] - v10[i][0]) / a3;
        a1->linkIconPos[i][1] = v10[i][1] + a2 * (v10[i][3] - v10[i][1]) / a3;
    }
}

static void LinkConnectDisplay2PlayerLayout(struct MainMenu *a1, u8 a2) {
    struct Sprite *sprites1[] = {
        &a1->unk4C8,
        &a1->unk4C8,
        &a1->unk478,
    };
    struct Sprite *sprites2[] = {
        &a1->unk4F0,
        &a1->unk4F0,
        &a1->unk4A0,
    };
    struct Sprite *r5 = sprites1[a2], *r4 = sprites2[a2], *r0;
    u8 i;

    for (i = 0; i < 2; ++i) {
        r4->x = a1->linkIconPos[i][0];
        r5->x = a1->linkIconPos[i][0];
        r4->y = a1->linkIconPos[i][1];
        r5->y = a1->linkIconPos[i][1];
        r5->unk14 = gUnk_08386512[i] << 6;
        r4->unk14 = (gUnk_08386512[i] - 1) << 6;
        DisplaySprite(r5);
        DisplaySprite(r4);
    }
    LinkConnectDisplayJoinPopups(a1, 2);
    r0 = &a1->unk630[a1->playerId];
    r0->x = a1->linkIconPos[a1->playerId][0];
    r0->y = a1->linkIconPos[a1->playerId][1] + 0x10;
    DisplaySprite(r0);
}

static void LinkConnectLerp3PlayerLayout(struct MainMenu *a1, s16 a2, u8 a3) {
    u8 i;
    s16 v14[4][4];

    memcpy(v14, sLink3PlayerLayout, sizeof(sLink3PlayerLayout));
    for (i = 0; i < 4; ++i) {
        a1->linkIconPos[i][0] = v14[i][0] + a2 * (v14[i][2] - v14[i][0]) / a3;
        a1->linkIconPos[i][1] = v14[i][1] + a2 * (v14[i][3] - v14[i][1]) / a3;
    }
    if (a2 != a3) {
        a1->unk590.x = -(a2 * 0x1C) / a3 + 0x7A;
        a1->unk590.y = a2 * 0x12 / a3 + 0x30;
    } else {
        a1->unk5B8.x = 0x79;
        a1->unk5B8.y = 0x3A;
    }
}

static void LinkConnectDisplay3PlayerLayout(struct MainMenu *a1, u8 a2) {
    u8 i;
    struct Sprite *r5 = &a1->unk4C8, *r4 = &a1->unk4F0, *r0;

    for (i = 0; i < 3; ++i) {
        r4->x = a1->linkIconPos[i][0];
        r5->x = a1->linkIconPos[i][0];
        r4->y = a1->linkIconPos[i][1];
        r5->y = a1->linkIconPos[i][1];
        r5->unk14 = gUnk_08386512[i] << 6;
        r4->unk14 = (gUnk_08386512[i] - 1) << 6;
        DisplaySprite(r5);
        DisplaySprite(r4);
    }
    LinkConnectDisplayJoinPopups(a1, 3);
    r0 = &a1->unk630[a1->playerId];
    r0->x = a1->linkIconPos[a1->playerId][0];
    r0->y = a1->linkIconPos[a1->playerId][1] + 0x10;
    DisplaySprite(r0);
    if (a2 == 1)
        DisplaySprite(&a1->unk5B8);
    else
        DisplaySprite(&a1->unk590);
}

static void LinkConnectLerp4PlayerLayout(struct MainMenu *a1, s16 a2, u8 a3) {
    u8 i;
    s16 v14[4][4];

    memcpy(v14, sLink4PlayerLayout, sizeof(sLink4PlayerLayout));
    for (i = 0; i < 4; ++i) {
        a1->linkIconPos[i][0] = v14[i][0] + a2 * (v14[i][2] - v14[i][0]) / a3;
        a1->linkIconPos[i][1] = v14[i][1] + a2 * (v14[i][3] - v14[i][1]) / a3;
    }
    if (a2 != a3) {
        a1->unk5B8.x = -(a2 * 0xC + a2) / a3 + 0x79;
        a1->unk5B8.y = a2 * 0x10 / a3 + 0x3A;
    } else {
        a1->unk5E0.x = 0x75;
        a1->unk5E0.y = 0x38;
    }
}

static void LinkConnectDisplay4PlayerLayout(struct MainMenu *a1, u8 a2) {
    struct Sprite *sprites1[] = {
        &a1->unk518,
        &a1->unk518,
        &a1->unk4C8,
    };
    struct Sprite *sprites2[] = {
        &a1->unk540,
        &a1->unk540,
        &a1->unk4F0,
    };
    struct Sprite *r5 = sprites1[a2], *r4 = sprites2[a2], *r0;
    u8 i;

    for (i = 0; i < 4; ++i) {
        r4->x = a1->linkIconPos[i][0];
        r5->x = a1->linkIconPos[i][0];
        r4->y = a1->linkIconPos[i][1];
        r5->y = a1->linkIconPos[i][1];
        r5->unk14 = gUnk_08386512[i] << 6;
        r4->unk14 = (gUnk_08386512[i] - 1) << 6;
        DisplaySprite(r5);
        DisplaySprite(r4);
    }
    if (a2 == 1)
        DisplaySprite(&a1->unk5E0);
    else
        DisplaySprite(&a1->unk5B8);
    LinkConnectDisplayJoinPopups(a1, 4);
    r0 = &a1->unk630[a1->playerId];
    r0->x = a1->linkIconPos[a1->playerId][0];
    r0->y = a1->linkIconPos[a1->playerId][1] + 0x10;
    DisplaySprite(r0);
}

static bool32 LinkConnectDisplayJoinPopups(struct MainMenu *a1, u8 a2) {
    u8 i, j;

    if (a1->playerId) return FALSE;
    for (i = 1; i < a2; ++i) {
        struct {
            s16 unk0[5];
        } sp00 = {
            {
                0, 0, 0,
                a1->linkIconPos[i][0] + 3, a1->linkIconPos[i][1] + 0x10
            },
        };
        j = i + -1;
        if (a1->joinPopupState[j]) {
            ++a1->joinPopupTimer[j];
            switch (a1->joinPopupState[j]) {
            case 1:
                sp00.unk0[1] = sp00.unk0[2] = 0x100;
                if (a1->joinPopupTimer[j] > 0xE) {
                    a1->joinPopupTimer[j] = 0;
                    a1->joinPopupState[j] = 2;
                }
                break;
            case 2:
                sp00.unk0[1] = sp00.unk0[2] = (10 - a1->joinPopupTimer[j]) * 0x100 / 10;
                if (a1->joinPopupTimer[j] + 1 > 9) {
                    a1->joinPopupTimer[j] = 0;
                    a1->joinPopupState[j] = 0;
                }
                break;
            }
            sub_08155604(&a1->unk6D0[j][0], sp00.unk0);
            sub_08155604(&a1->unk6D0[j][1], sp00.unk0);
            DisplaySprite(&a1->unk6D0[j][0]);
            DisplaySprite(&a1->unk6D0[j][1]);
        }
    }
    return TRUE;
}

static void MainMenuAmbienceHold1(struct MainMenu *a1) {
    if (--a1->ambienceSfxTimer < 1) {
        m4aSongNumStartOrChange(SE_MAIN_MENU_AMBIENT_1);
        a1->ambienceSfxTimer = (Rand32() & 0x3FF) * 2 + 0xB4;
    }
    ++a1->ambienceTimer;
    if (a1->ambienceTimer > 0x707) {
        a1->ambienceTimer = 0;
        a1->ambience = MainMenuAmbienceFadeTo2;
    }
}

static void MainMenuAmbienceFadeTo2(struct MainMenu *a1) {
    if (++a1->ambienceTimer >= sAmbienceStepDurations[a1->ambienceStep]
        && (a1->ambienceTimer = 0, a1->ambienceStepDone = 0, ++a1->ambienceStep == 7)) {
        const u16 *src = gUnk_03002E60[0xEA].x->palette;

        CpuCopy16(src, a1->bgPalette, sizeof(a1->bgPalette));
        DmaCopy16(3, src, gBgPalette, 0x120);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        a1->ambienceTimer = 0;
        a1->ambience = MainMenuAmbienceHold2;
    } else {
        if (!a1->ambienceStepDone)
            MainMenuStepAmbiencePalette(a1);
    }
}

static void MainMenuAmbienceHold2(struct MainMenu *a1) {
    if (--a1->ambienceSfxTimer < 1) {
        m4aSongNumStartOrChange(SE_MAIN_MENU_AMBIENT_2);
        a1->ambienceSfxTimer = (Rand32() & 0x3FF) * 2 + 0xB4;
    }
    ++a1->ambienceTimer;
    if (a1->ambienceTimer > 0x707) {
        a1->ambienceTimer = 0;
        a1->ambience = MainMenuAmbienceFadeTo1;
    }
}

static void MainMenuAmbienceFadeTo1(struct MainMenu *a1) {
    if (++a1->ambienceTimer >= sAmbienceStepDurations[a1->ambienceStep]
        && (a1->ambienceTimer = 0, a1->ambienceStepDone = 0, ++a1->ambienceStep == 14)) {
        const u16 *src = gUnk_03002E60[0xE3].x->palette;

        CpuCopy16(src, a1->bgPalette, sizeof(a1->bgPalette));
        DmaCopy16(3, src, gBgPalette, 0x120);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        a1->ambienceStep = 0;
        a1->ambienceTimer = 0;
        a1->ambience = MainMenuAmbienceHold1;
    } else {
        if (!a1->ambienceStepDone)
            MainMenuStepAmbiencePalette(a1);
    }
}

static void MainMenuStepAmbiencePalette(struct MainMenu *a1) {
    union Unk_03002E60 var;
    u32 four = 4;
    u8 idx;
    const union Unk_03002E60 *ptr;
    u8 i;
    u16 *sb;
    u8 sl;
    u16 sp00[14];
    s8 sp1C[0x41];
    const u16 *palette;
    u32 sp68;
    s32 c = 0x25;

    memcpy(sp00, sAmbiencePalIds, sizeof(sp00));
    memcpy(sp1C, sAmbienceColorDeltas, sizeof(sp1C));
    sp68 = 0;
    sl = c * (a1->frameCount % four);
    idx = a1->ambienceStep;
    ptr = gUnk_03002E60;
    var = ptr[sp00[(idx + 1) % 0xE]];
    sb = a1->bgPalette;
    palette = var.x->palette;
    for (i = sl; i < sl + c; ++i) {
        u16 r6, r3_2;
        u32 t1, t2, t3;
        u32 a, b, c;
        s8 *r4, *r2, *r3;

        r6 = sb[i];
        r3_2 = palette[i];
        t1 = r6 & 0x1F;
        r4 = &sp1C[(r3_2 & 0x1F) - t1 + 0x1F];
        a = *r4 + t1;
        t2 = (r6 & 0x3E0) >> 5;
        r2 = &sp1C[((r3_2 & 0x3E0) >> 5) - t2 + 0x1F];
        b = a | ((*r2 + t2) << 5);
        t3 = (r6 & 0x7C00) >> 10;
        r3 = &sp1C[((r3_2 & 0x7C00) >> 10) - t3 + 0x1F];
        c = b | ((*r3 + t3) << 10);
        sb[i] = c;
        sp68 |= *(u8 *)r4 | *(u8 *)r2 | *(u8 *)r3;
    }
    if (!sp68)
        a1->ambienceStepDone = 1;
    DmaCopy16(3, sb, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
}

static void MainMenuInitBgTilemap(struct MainMenu *a1) {
    const struct TiledBg_082D7850 *ptr = gUnk_082D7850[0xE2];
    const u16 *tilemap = ptr->tilemap;
    u16 height = ptr->height;
    u16 *vram = (u16 *)0x600E800;
    u16 i;

    for (i = 0; i < height; ++i)
        CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    if (!a1->screen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    a1->state = MainMenuInitBgLayers;
}

static void MainMenuInitBgLayers(struct MainMenu *a1) {
    u16 i;
    u16 idx;

    gDispCnt |= DISPCNT_BG2_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;

        idx = sMenuBgIds[gLanguage][0];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    gDispCnt |= DISPCNT_BG0_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;

        ptr = gUnk_082D7850[0xE1];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600F000;
        LZ77UnCompVram(tileset, (u16 *)0x6004000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    gDispCnt |= DISPCNT_BG1_ON;
    if (!a1->screen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    a1->state = MainMenuInitHeaderSprites;
}

static void MainMenuInitFirstScreen(struct MainMenu *a1) {
    a1->anim = sub_0802E57C();
    if (!a1->screen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    switch (a1->screen) {
    default:
        a1->state = FileSelectStart;
        break;
    case 8:
        a1->state = SubGameSelectReopen;
        break;
    case 0xA:
        a1->state = MainMenuStart;
        break;
    }
}

static void FileSelectStart(struct MainMenu *a1) {
    u8 i;
    u16 idx;

    FileSelectCreateSprites(a1);
    a1->prevScreen = a1->screen;
    a1->screen = 1;
    a1->timer = 0;
    a1->state = FileSelectSlideInBanner;
    a1->cursor.y = sFileSelectCursorY[a1->fileId];
    a1->fileLabels[0].y = 0x1B;
    a1->fileLabels[1].y = 0x23;
    a1->fileLabels[2].y = 0x2B;
    for (i = 0; i < 3; ++i) {
        a1->completionBars[i].y = a1->fileLabels[i].y + 0xC;
        a1->completionDigits[i][0].y = a1->completionDigits[i][1].y = a1->completionDigits[i][2].y = a1->fileLabels[i].y + 8;
    }
    if (!a1->prevScreen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    if (a1->prevScreen == 2 || a1->prevScreen == 3) {
        SpriteInit(&a1->header, a1->header.tilesVram, 0x780, sMenuSpriteAnims[gLanguage][0].animId, sMenuSpriteAnims[gLanguage][0].variant, 0, 0xFF, 0x10,
            0, -0x9C, 0, 0x40000);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 i;

            idx = sMenuBgIds[gLanguage][0];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
    } else {
        gBgScrollRegs[1][1] = 0x18;
    }
    a1->ambience(a1);
}

static void FileSelectSlideInBanner(struct MainMenu *a1) {
    ++a1->timer;
    a1->header.x = 0x9C * a1->timer / 5 - 0x9C;
    if (!a1->prevScreen)
        gBgScrollRegs[1][1] = (-0x18 * a1->timer) / 5 + 0x18;
    if (a1->timer > 4)
        a1->state = FileSelectEndSlideInBanner;
    if (!a1->prevScreen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void FileSelectEndSlideInBanner(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = FileSelectSlideInFiles;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    if (!a1->prevScreen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    a1->ambience(a1);
}

static void FileSelectSlideInFiles(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    for (i = 0; i < 3; ++i) {
        s32 var;

        a1->fileLabels[i].x = (var = -0xD0 * a1->timer / 5) + 0xF0;
        a1->completionBars[i].x = var + 0x143;
        a1->completionDigits[i][0].x = a1->fileLabels[i].x + 0xA8;
        a1->completionDigits[i][1].x = a1->fileLabels[i].x + 0xB0;
        a1->completionDigits[i][2].x = a1->fileLabels[i].x + 0xB8;
    }
    if (a1->timer > 4)
        a1->state = FileSelectEndSlideInFiles;
    if (!a1->prevScreen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void FileSelectEndSlideInFiles(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = FileSelectSpreadFiles;
    if (!a1->prevScreen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void FileSelectSpreadFiles(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    a1->fileLabels[0].y = 0x1B;
    a1->fileLabels[1].y = 0x10 * a1->timer / 5 + 0x23;
    a1->fileLabels[2].y = 0x20 * a1->timer / 5 + 0x2B;
    for (i = 0; i < 3; ++i) {
        a1->completionBars[i].y = a1->fileLabels[i].y + 0xC;
        a1->completionDigits[i][0].y = a1->fileLabels[i].y + 8;
        a1->completionDigits[i][1].y = a1->fileLabels[i].y + 8;
        a1->completionDigits[i][2].y = a1->fileLabels[i].y + 8;
    }
    a1->cursor.x = 0x30 * a1->timer / 5 - 0x20;
    gBgScrollRegs[0][1] = 0x18 * a1->timer / 5;
    if (a1->timer > 4)
        a1->state = FileSelectStartWaitInput;
    if (!a1->prevScreen && ++a1->fadeInTimer <= a1->fadeInDuration)
        gBldRegs.bldY = 0x10 - (0x10 * a1->fadeInTimer / a1->fadeInDuration);
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void FileSelectWaitInput(struct MainMenu *a1) {
    a1->prevFileId = a1->fileId;
    MainMenuUpdateIdleTimer(a1);
    switch (MainMenuGetInput()) {
    case 0:
        break;
    case 1:
        if (a1->fileCompletion[a1->fileId] < 0) {
            a1->fileCompletion[a1->fileId] = 0;
            gUnk_0203ACB0[a1->fileId] = 0;
            if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId)) {
                ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId);
            }
        }
        gSaveID = a1->fileId;
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        a1->state = FileSelectStartSlideOut;
        break;
    case 2:
        m4aSongNumStart(SE_MAIN_MENU_BACK);
        a1->state = FileSelectStartFadeOut;
        break;
    case 3:
        m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        if (!a1->fileId)
            a1->fileId = 2;
        else
            --a1->fileId;
        break;
    case 4:
        m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        if (a1->fileId == 2)
            a1->fileId = 0;
        else
            ++a1->fileId;
        break;
    }
    if (a1->fileId != a1->prevFileId) {
        FileSelectUpdateFilePalettes(a1);
        a1->cursor.y = sFileSelectCursorY[a1->fileId];
        UpdateSpriteAnimation(&a1->cursor);
    }
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void FileSelectSlideOut(struct MainMenu *a1) {
    u8 i;
    s32 var;

    ++a1->timer;
    for (i = 0; i < 3; ++i) {
        a1->fileLabels[i].x = (var = 0xD0 * a1->timer / 5) + 0x20;
        a1->completionBars[i].x = var + 0x73;
        a1->completionDigits[i][0].x = a1->fileLabels[i].x + 0xA8;
        a1->completionDigits[i][1].x = a1->fileLabels[i].x + 0xB0;
        a1->completionDigits[i][2].x = a1->fileLabels[i].x + 0xB8;
    }
    a1->cursor.x = (-0x30 * a1->timer) / 5 + 0x10;
    a1->header.x = (-0x9C * a1->timer) / 5;
    gBgScrollRegs[0][1] = (-0x18 * a1->timer) / 5 + 0x18;
    if (a1->timer > 4) {
        FileSelectFreeSprites(a1);
        a1->state = MainMenuStart;
        a1->ambience(a1);
    } else {
        if (!UpdateSpriteAnimation(&a1->cursor))
            a1->cursor.unk1B = 0xFF;
        FileSelectDisplaySprites(a1);
        a1->ambience(a1);
    }
}

static void FileSelectFadeOut(struct MainMenu *a1) {
    u8 i;
    s32 var;

    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xA;
    for (i = 0; i < 3; ++i) {
        a1->fileLabels[i].x = (var = (0xD0 * a1->timer) / 0xA) + 0x20;
        a1->completionBars[i].x = var + 0x73;
        a1->completionDigits[i][0].x = a1->fileLabels[i].x + 0xA8;
        a1->completionDigits[i][1].x = a1->fileLabels[i].x + 0xB0;
        a1->completionDigits[i][2].x = a1->fileLabels[i].x + 0xB8;
    }
    a1->cursor.x = (-0x30 * a1->timer) / 0xA + 0x10;
    a1->header.x = (-0x9C * a1->timer) / 0xA;
    gBgScrollRegs[0][1] = (-0x18 * a1->timer) / 0xA + 0x18;
    gBgScrollRegs[1][1] = 0x18 * a1->timer / 0xA;
    if (a1->timer > 9)
        a1->state = FileSelectStopMusic;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static inline struct Sprite *GetUnk2DC(struct MainMenu *a1) {
    return a1->items;
}

static void MainMenuStart(struct MainMenu *a1) {
    u8 j;
    struct Sprite *sprite;

    MainMenuCreateSprites(a1);
    a1->prevScreen = a1->screen;
    a1->screen = 2;
    a1->timer = 0;
    SpriteInit(&a1->header, a1->header.tilesVram, 0x780, sMenuSpriteAnims[gLanguage][1].animId, sMenuSpriteAnims[gLanguage][1].variant, 0, 0xFF,
        0x10, 0, -0x9C, 0, 0x40000);
    a1->items[0].y = 0x1B;
    a1->items[1].y = 0x23;
    a1->items[2].y = 0x2B;
    a1->items[3].y = 0x33;
    switch (a1->prevScreen) {
    case 1:
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = sMenuBgIds[gLanguage][1];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        a1->mainMenuCursor = a1->prevMainMenuCursor = 0;
        sprite = &GetUnk2DC(a1)[0];
        sprite->palId = 2;
        UpdateSpriteAnimation(sprite);
        for (j = 1; j < 4; ++j) {
            sprite = &a1->items[j];
            sprite->palId = 3;
            UpdateSpriteAnimation(sprite);
        }
        a1->cursor.y = 0x10;
        UpdateSpriteAnimation(&a1->cursor);
        a1->state = MainMenuWaitStart;
        break;
    case 3:
        a1->cursor.y = sMainMenuCursorY[a1->mainMenuCursor];
        UpdateSpriteAnimation(&a1->cursor);
        a1->state = MainMenuWaitStart;
        break;
    case 4:
        a1->anim = sub_0802E57C();
        a1->cursor.y = sMainMenuCursorY[a1->mainMenuCursor];
        UpdateSpriteAnimation(&a1->cursor);
        a1->state = MainMenuStartFromLinkConnect;
        break;
    case 7:
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = sMenuBgIds[gLanguage][2];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        a1->cursor.y = sMainMenuCursorY[a1->mainMenuCursor];
        UpdateSpriteAnimation(&a1->cursor);
        a1->state = MainMenuWaitStart;
        break;
    case 0xA:
        a1->state = MainMenuStartFromCollectionRoom;
        break;
    }
    a1->ambience(a1);
}

static void MainMenuSlideInBanner(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    a1->header.x = 0x9C * a1->timer / 5 - 0x9C;
    if (a1->timer > 4)
        a1->state = MainMenuStartSlideInItems;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void MainMenuSlideInItems(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    a1->items[0].x = a1->items[1].x = a1->items[2].x = a1->items[3].x = (-0xD0 * a1->timer) / 5 + 0xF0;
    if (a1->timer > 4)
        a1->state = MainMenuStartSpreadItems;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void MainMenuSpreadItems(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    a1->items[0].y = 0x1B;
    a1->items[1].y = 0xD * a1->timer / 5 + 0x23;
    a1->items[2].y = 0x1A * a1->timer / 5 + 0x2B;
    a1->items[3].y = 0x27 * a1->timer / 5 + 0x33;
    a1->cursor.x = 0x30 * a1->timer / 5 - 0x20;
    if (a1->prevScreen == 1 || a1->prevScreen == 7)
        gBgScrollRegs[0][1] = 0x18 * a1->timer / 5;
    if (a1->timer > 4) {
        a1->idleTimer = 0;
        a1->state = MainMenuWaitInput;
    }
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void MainMenuStartFromLinkConnect(struct MainMenu *a1) {
    struct Sprite *sprite;

    gDispCnt |= DISPCNT_BG1_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][6];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, a1->bgPalette, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    a1->header.x = 0;
    a1->items[0].x = a1->items[1].x = a1->items[2].x = a1->items[3].x = 0x20;
    a1->items[0].y = 0x1B;
    a1->items[1].y = 0x30;
    a1->items[2].y = 0x45;
    a1->items[3].y = 0x5A;
    a1->subMenuPointer.y = 0x15 * a1->mainMenuCursor + 0x25;
    a1->cursor.unk1B = 0xFF;
    UpdateSpriteAnimation(&a1->cursor);
    sprite = &a1->items[a1->mainMenuCursor];
    sprite->palId = 4;
    sprite->unk8 = 0;
    UpdateSpriteAnimation(sprite);
    a1->subMenuPointer.palId = 6;
    UpdateSpriteAnimation(&a1->subMenuPointer);
    a1->timer = 0;
    a1->state = MainMenuFadeInFromLinkConnect;
}

static void MainMenuFadeInFromLinkConnect(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    gBldRegs.bldY = 0x10 - 0x10 * a1->timer / 0xA;
    if (a1->timer > 9)
        a1->state = MainMenuEndFadeInFromLinkConnect;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void MainMenuStartFromCollectionRoom(struct MainMenu *a1) {
    struct Sprite *sprite;

    a1->mainMenuCursor = 2;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][3];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, a1->bgPalette, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    gBgScrollRegs[0][1] = 0x18;
    a1->header.x = 0;
    a1->items[0].x = a1->items[1].x = a1->items[2].x = a1->items[3].x = 0x20;
    a1->items[0].y = 0x1B;
    a1->items[1].y = 0x30;
    a1->items[2].y = 0x45;
    a1->items[3].y = 0x5A;
    a1->cursor.x = 0x10;
    a1->cursor.y = 0x3A;
    a1->timer = 0;
    a1->state = MainMenuFadeInFromCollectionRoom;
}

static void MainMenuFadeInFromCollectionRoom(struct MainMenu *a1) {
    u8 i;

    ++a1->fadeInTimer;
    gBldRegs.bldY = 0x10 - 0x10 * a1->fadeInTimer / a1->fadeInDuration;
    if (a1->fadeInTimer > 9)
        a1->state = MainMenuEndFadeInFromCollectionRoom;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static void MainMenuEndFadeInFromCollectionRoom(struct MainMenu *a1) {
    u8 i;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->idleTimer = 0;
    a1->state = MainMenuWaitInput;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static inline u8 GetUnk3A4(struct MainMenu *a1) {
    return a1->mainMenuCursor;
}

static inline u8 GetUnk3A5(struct MainMenu *a1) {
    return a1->prevMainMenuCursor;
}

static inline struct Sprite *GetUnk28C(struct MainMenu *a1) {
    return &a1->cursor;
}

static inline struct Sprite *GetUnk2DCSub(struct MainMenu *a1, u32 idx) {
    return &a1->items[idx];
}

static void MainMenuWaitInput(struct MainMenu *a1) {
    struct Sprite *sprite = NULL;
    u8 j;

    MainMenuUpdateIdleTimer(a1);
    do {
        a1->prevMainMenuCursor = a1->mainMenuCursor;
        switch (MainMenuGetInput()) {
        case 0:
            break;
        case 1:
            m4aSongNumStart(SE_MAIN_MENU_SELECT);
            switch (a1->mainMenuCursor) {
            case 0:
                a1->state = MainMenuOpenPlayerCountMenu;
                break;
            case 1:
                a1->nextScreen = 7;
                a1->state = MainMenuStartSlideOut;
                a1->nextState = SubGameSelectStart;
                break;
            case 2:
                a1->state = MainMenuStartFadeOutToCollectionRoom;
                a1->nextScreen = 0xA;
                break;
            case 3:
                a1->nextScreen = 3;
                a1->state = MainMenuStartSlideOut;
                a1->nextState = EraseFileStart;
                break;
            }
            break;
        case 2:
            m4aSongNumStart(SE_MAIN_MENU_BACK);
            a1->nextScreen = 1;
            a1->state = MainMenuStartSlideOut;
            a1->nextState = FileSelectStart;
            break;
        case 3:
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
            if (a1->mainMenuCursor == 0)
                a1->mainMenuCursor = 3;
            else
                --a1->mainMenuCursor;
            break;
        case 4:
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
            if (a1->mainMenuCursor == 3)
                a1->mainMenuCursor = 0;
            else
                ++a1->mainMenuCursor;
            break;
        }
        if (a1->mainMenuCursor != a1->prevMainMenuCursor) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 i;
            u16 idx;

            idx = sMenuBgIds[gLanguage][a1->mainMenuCursor + 1];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
            sprite = GetUnk2DCSub(a1, GetUnk3A4(a1));
            sprite->palId = 2;
            UpdateSpriteAnimation(sprite);
            sprite = GetUnk2DCSub(a1, GetUnk3A5(a1));
            sprite->palId = 3;
            UpdateSpriteAnimation(sprite);
            a1->cursor.y = sMainMenuCursorY[a1->mainMenuCursor];
            UpdateSpriteAnimation(&a1->cursor);
        }
    } while (0);
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (j = 0; j < 4; ++j)
        DisplaySprite(&a1->items[j]);
    a1->ambience(a1);
}

static void MainMenuOpenPlayerCountMenu(struct MainMenu *a1) {
    struct Sprite *sprite;
    u8 i;

    a1->subMenuOpen = 1;
    a1->subMenuPointer.y = 0x15 * a1->mainMenuCursor + 0x25;
    a1->subMenuCursor = 0;
    a1->subMenuPointer.palId = 5;
    UpdateSpriteAnimation(&a1->subMenuPointer);
    a1->cursor.unk1B = 0xFF;
    UpdateSpriteAnimation(&a1->cursor);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][5];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    sprite = &a1->items[a1->mainMenuCursor];
    sprite->palId = 4;
    sprite->unk8 = 0;
    UpdateSpriteAnimation(sprite);
    a1->idleTimer = 0;
    a1->state = MainMenuPlayerCountWaitInput;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void MainMenuPlayerCountWaitInput(struct MainMenu *a1) {
    const u16 array[] = { sMenuBgIds[gLanguage][5], sMenuBgIds[gLanguage][6] };
    u8 i;

    MainMenuUpdateIdleTimer(a1);
    switch (MainMenuGetInput()) {
    case 0:
        break;
    case 1:
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        a1->subMenuOpen = 0;
        if (a1->subMenuCursor == 0)
            a1->state = MainMenuStartMainGame;
        else if (a1->subMenuCursor == 1) {
            a1->nextScreen = 4;
            a1->state = MainMenuStartFadeOutToLinkConnect;
        }
        break;
    case 2:
        m4aSongNumStart(SE_MAIN_MENU_BACK);
        a1->subMenuOpen = 0;
        a1->state = MainMenuClosePlayerCountMenu;
        break;
    case 3:
        if (a1->subMenuCursor != 0)
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        a1->subMenuCursor = 0;
        a1->subMenuPointer.palId = 5;
        UpdateSpriteAnimation(&a1->subMenuPointer);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = array[a1->subMenuCursor];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    case 4:
        if (a1->subMenuCursor != 1)
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        a1->subMenuCursor = 1;
        a1->subMenuPointer.palId = 6;
        UpdateSpriteAnimation(&a1->subMenuPointer);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = array[a1->subMenuCursor];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    }
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void MainMenuClosePlayerCountMenu(struct MainMenu *a1) {
    u8 i;
    struct Sprite *sprite = &a1->items[a1->mainMenuCursor];

    sprite->palId = 2;
    sprite->unk8 = 0;
    UpdateSpriteAnimation(sprite);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][a1->mainMenuCursor + 1];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    a1->state = MainMenuWaitInput;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static void MainMenuMainGameFadeOutMenu(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE)
        a1->state = MainMenuMainGameFreeMenuGfx;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static void MainMenuMainGameFadeInAnim(struct MainMenu *a1) {
    ++a1->timer;
    gBldRegs.bldY = 0x10 - 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        a1->timer = 0;
        a1->state = MainMenuMainGameStartAnim;
    }
}

static void MainMenuFadeOutToLinkConnect(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE)
        a1->state = MainMenuEndFadeOutToLinkConnect;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void MainMenuSlideOut(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    a1->items[0].x = a1->items[1].x = a1->items[2].x = a1->items[3].x = 0xD0 * a1->timer / 5 + 0x20;
    a1->cursor.x = -0x30 * a1->timer / 5 + 0x10;
    a1->header.x = -0x9C * a1->timer / 5;
    if (a1->nextScreen == 1 || a1->nextScreen == 7)
        gBgScrollRegs[0][1] = -0x18 * a1->timer / 5 + 0x18;
    if (a1->timer > 4) {
        MainMenuFreeSprites(a1);
        a1->state = MainMenuEndSlideOut;
        a1->ambience(a1);
        return;
    }
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void MainMenuStartFadeOutToCollectionRoom(struct MainMenu *a1) {
    u8 i;

    m4aMPlayFadeOut(&gMPlayInfo_0, 1);
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = MainMenuFadeOutToCollectionRoom;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
}

static void MainMenuFadeOutToCollectionRoom(struct MainMenu *a1) {
#ifdef NONMATCHING
    struct Sprite *sprite;
#else
    register struct Sprite *sprite asm("r4");
#endif
    u8 i;

    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xA;
    if (a1->timer > 9)
        a1->state = MainMenuCollectionRoomDestroyAnim;
    DisplaySprite(&a1->header);
    sprite = &a1->cursor;
    DisplaySprite(sprite);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    if (!UpdateSpriteAnimation(sprite))
        a1->cursor.unk1B = 0xFF;
}

static void EraseFileStart(struct MainMenu *a1) {
    struct Sprite *sprite;

    EraseFileCreateSprites(a1);
    a1->prevScreen = a1->screen;
    a1->screen = 3;
    a1->eraseCompletion = a1->fileCompletion[a1->fileId];
    sprite = &a1->header;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, sMenuSpriteAnims[gLanguage][4].animId, sMenuSpriteAnims[gLanguage][4].variant, 0, 0xFF, 0x10,
        0, -0x9C, 0, 0x40000);
    a1->cursor.unk1B = 0xFF;
    UpdateSpriteAnimation(&a1->cursor);
    a1->state = EraseFileStartSlideInBanner;
}

static void EraseFileStartSlideInFile(struct MainMenu *a1) {
    u8 idx = a1->fileId;
    s16 var;

    a1->fileLabels[idx].y = 0x1B;
    var = 0x27;
    a1->completionBars[idx].y = var;
    a1->completionDigits[idx][0].y = a1->completionDigits[idx][1].y = a1->completionDigits[idx][2].y = a1->fileLabels[idx].y + 8;
    a1->cursor.y = sFileSelectCursorY[0];
    a1->timer = 0;
    a1->state = EraseFileSlideInFile;
    FileSelectDisplayCurFileSprites(a1);
}

static void EraseFileSlideInFile(struct MainMenu *a1) {
    u8 idx = a1->fileId;
    s32 var;

    ++a1->timer;
    a1->fileLabels[idx].x = (var = -0xD0 * a1->timer / 5) + 0xF0;
    a1->completionBars[idx].x = var + 0x143;
    a1->completionDigits[idx][0].x = a1->fileLabels[idx].x + 0xA8;
    a1->completionDigits[idx][1].x = a1->fileLabels[idx].x + 0xB0;
    a1->completionDigits[idx][2].x = a1->fileLabels[idx].x + 0xB8;
    a1->cursor.x = 0x30 * a1->timer / 5 - 0x20;
    if (a1->timer > 4)
        a1->state = EraseFileAsk;
    FileSelectDisplayCurFileSprites(a1);
}

static void EraseFileAsk(struct MainMenu *a1) {
    struct Sprite *sprite;

    a1->erasePromptId = 1;
    a1->eraseChoice = 0;
    a1->eraseYesNo.palId = 7;
    UpdateSpriteAnimation(&a1->eraseYesNo);
    sprite = &a1->erasePrompt;
    sprite->animId = sMenuSpriteAnims[gLanguage][0x18].animId;
    sprite->variant = sMenuSpriteAnims[gLanguage][0x18].variant;
    UpdateSpriteAnimation(&a1->erasePrompt);
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
    a1->idleTimer = 0;
    a1->state = EraseFileWaitInput;
}

static void EraseFileAskAgain(struct MainMenu *a1) {
    struct Sprite *sprite;

    a1->erasePromptId = 2;
    a1->eraseChoice = 0;
    a1->eraseYesNo.palId = 7;
    UpdateSpriteAnimation(&a1->eraseYesNo);
    sprite = &a1->erasePrompt;
    sprite->animId = sMenuSpriteAnims[gLanguage][0x19].animId;
    sprite->variant = sMenuSpriteAnims[gLanguage][0x19].variant;
    UpdateSpriteAnimation(&a1->erasePrompt);
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
    a1->idleTimer = 0;
    a1->state = EraseFileWaitInput;
}

static void EraseFileWaitInput(struct MainMenu *a1) {
    MainMenuUpdateIdleTimer(a1);
    switch (MainMenuGetInput()) {
    case 0:
        break;
    case 1:
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        if (a1->eraseChoice) {
            if (a1->erasePromptId == 1)
                a1->state = EraseFileAskAgain;
            else
                a1->state = EraseFileStartShred;
        } else {
            a1->state = EraseFileStartSlideOut;
        }
        break;
    case 2:
        m4aSongNumStart(SE_MAIN_MENU_BACK);
        a1->state = EraseFileStartSlideOut;
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
        if (a1->eraseChoice == 0)
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        a1->eraseChoice = 1;
        a1->eraseYesNo.palId = 6;
        UpdateSpriteAnimation(&a1->eraseYesNo);
        break;
    case 6:
        if (a1->eraseChoice)
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        a1->eraseChoice = 0;
        a1->eraseYesNo.palId = 7;
        UpdateSpriteAnimation(&a1->eraseYesNo);
        break;
    }
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
}

static void EraseFileStartShred(struct MainMenu *a1) {
    u8 i, j;
    u32 var;

    a1->timer = 0;
    a1->state = EraseFileShred;
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
    m4aSongNumStart(SE_MAIN_MENU_DELETE_SAVE);
    for (i = 0; i < 3; ++i) {
        a1->shredEffects[i].x = (Rand32() % 0x80) + 0x4B;
        a1->shredEffects[i].y = (Rand32() % 0x20) + 0x1B;
        var = Rand32() & 0xF;
        for (j = 0; j < var; ++j)
            UpdateSpriteAnimation(&a1->shredEffects[i]);
    }
    a1->shredFlashTimer = 0;
    a1->shredFlashDelay = (Rand32() & 7) + 5;
}

static void EraseFileShred(struct MainMenu *a1) {
    u8 i;
    u8 idx = a1->fileId;
    u8 sp00[3];
    struct MenuSpriteAnim sp04;
    s8 sp0C = (Rand32() & 7) - 4;

    if (++a1->timer > 0x3B)
        a1->state = EraseFileEndShred;
    if (a1->fileCompletion[idx] > 0) {
        u8 r5, r6;
        struct Sprite *sprite_r1;
        bool32 b;
        s8 tmp;

        memcpy(sp00, sEraseFileShredSteps, sizeof(sEraseFileShredSteps));
        a1->fileCompletion[idx] -= sp00[a1->timer % 3];
        if (a1->fileCompletion[idx] < 0)
            a1->fileCompletion[idx] = 0;
        r5 = a1->fileCompletion[idx] / 10 % 10;
        r6 = a1->fileCompletion[idx] % 10;
        sprite_r1 = &a1->completionDigits[idx][1];
        sprite_r1->animId = sDigitAnims[r5].animId;
        sprite_r1->variant = sDigitAnims[r5].variant;
        UpdateSpriteAnimation(sprite_r1);
        sprite_r1 = &a1->completionDigits[idx][2];
        sprite_r1->animId = sDigitAnims[r6].animId;
        sprite_r1->variant = sDigitAnims[r6].variant;
        UpdateSpriteAnimation(sprite_r1);
        tmp = a1->fileCompletion[idx];
        if (tmp < 10)
            b = FALSE;
        else
            b = TRUE;
        if (b) {
            GetCompletionBarAnim(&sp04, tmp);
            sprite_r1 = &a1->completionBars[idx];
            sprite_r1->animId = sp04.animId;
            sprite_r1->variant = sp04.variant;
            UpdateSpriteAnimation(sprite_r1);
        }
    }
    a1->erasePrompt.y = sp0C + 0x5C;
    a1->eraseYesNo.y = sp0C + 0x56;
    a1->fileLabels[idx].y = sp0C + 0x1B;
    a1->completionDigits[idx][0].y = a1->completionDigits[idx][1].y = a1->completionDigits[idx][2].y = sp0C + 0x23;
    a1->completionBars[idx].y = sp0C + 0x27;
    for (i = 0; i < 3; ++i)
        a1->shredEffects[i].y = gUnk_08D62511[2 * i] + sp0C;
    a1->cursor.y = sFileSelectCursorY[0] + sp0C;
    gBgScrollRegs[2][1] = sp0C;
    for (i = 0; i < 3; ++i) {
        if (!UpdateSpriteAnimation(&a1->shredEffects[i])) {
            a1->shredEffects[i].x = (Rand32() % 0x80) + 0x4B;
            a1->shredEffects[i].y = (Rand32() % 0x20) + 0x1B;
            a1->shredEffects[i].unk1B = 0xFF;
        }
    }
    if (++a1->shredFlashTimer >= a1->shredFlashDelay) {
        a1->shredFlash = !a1->shredFlash;
        a1->shredFlashTimer = 0;
        a1->shredFlashDelay = (Rand32() & 7) + 5;
    }
    if (a1->shredFlash) {
        a1->fileLabels[idx].palId = 3;
        UpdateSpriteAnimation(&a1->fileLabels[idx]);
    } else {
        a1->fileLabels[idx].palId = 2;
        UpdateSpriteAnimation(&a1->fileLabels[idx]);
    }
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
    for (i = 0; i < 3; ++i)
        DisplaySprite(&a1->shredEffects[i]);
}

static void EraseFileEndShred(struct MainMenu *a1) {
    u8 idx = a1->fileId;
    struct Sprite *sprite;

    a1->timer = 0;
    a1->state = EraseFileClearSave;
    sprite = &a1->completionDigits[idx][0];
    sprite->animId = sDigitAnims[0].animId;
    sprite->variant = sDigitAnims[0].variant;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->completionDigits[idx][1];
    sprite->animId = sDigitAnims[0].animId;
    sprite->variant = sDigitAnims[0].variant;
    UpdateSpriteAnimation(sprite);
    sprite = &a1->completionDigits[idx][2];
    sprite->animId = sDigitAnims[0].animId;
    sprite->variant = sDigitAnims[0].variant;
    UpdateSpriteAnimation(sprite);
    a1->cursor.y = sFileSelectCursorY[0];
    a1->header.y = 0;
    a1->fileLabels[idx].y = 0x1B;
    a1->completionDigits[idx][0].y = a1->completionDigits[idx][1].y = a1->completionDigits[idx][2].y = 0x23;
    a1->completionBars[idx].y = 0x27;
    a1->erasePrompt.y = 0x5C;
    a1->eraseYesNo.y = 0x56;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[0][1] = 0x18;
    a1->fileLabels[idx].palId = 2;
    UpdateSpriteAnimation(&a1->fileLabels[idx]);
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
}

static void EraseFileSlideOut(struct MainMenu *a1) {
    u8 idx = a1->fileId;
    u32 var;

    ++a1->timer;
    a1->fileLabels[idx].x = (var = 0xD0 * a1->timer / 5) + 0x20;
    a1->completionBars[idx].x = var + 0x73;
    a1->completionDigits[idx][0].x = a1->fileLabels[idx].x + 0xA8;
    a1->completionDigits[idx][1].x = a1->fileLabels[idx].x + 0xB0;
    a1->completionDigits[idx][2].x = a1->fileLabels[idx].x + 0xB8;
    a1->cursor.x = (-0x30 * a1->timer) / 5 + 0x10;
    a1->header.x = (-0x9C * a1->timer) / 5;
    if (a1->nextScreen == 1)
        gBgScrollRegs[0][1] = (-0x18 * a1->timer) / 5 + 0x18;
    if (a1->timer > 4)
        a1->state = EraseFileEnd;
    else
        FileSelectDisplayCurFileSprites(a1);
}

static void LinkConnectStart(struct MainMenu *a1) {
    struct Sprite *sprite;

    a1->prevScreen = a1->screen;
    a1->screen = a1->nextScreen;
    a1->numPlayers = 0;
    a1->playerId = 0;
    a1->pendingNumPlayers = 0;
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    if (a1->screen == 5)
        a1->link.pat1 = sub_08019F28(a1->subGameCursor);
    else
        a1->link.pat2 = sub_08032B0C();
    gDispCnt &= ~DISPCNT_BG1_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][0xD];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FB40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    DmaCopy16(3, a1->bgPalette, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    sprite = &a1->header;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, sMenuSpriteAnims[gLanguage][3].animId, sMenuSpriteAnims[gLanguage][3].variant,
        0, 0xFF, 0x10, 0, 0, 0, 0x40000);
    sprite->unk8 |= 0x80000;
    a1->state = LinkConnectWaitStart;
}

static void LinkConnectStartFadeIn(struct MainMenu *a1) {
    u8 i;
    u16 var;

    a1->timer = 0;
    a1->state = LinkConnectFadeIn;
    var = gObjPalette[0x38];
    for (i = 3; i != 0; --i)
        gObjPalette[i + 0x35] = gObjPalette[i + 0x34];
    gObjPalette[0x35] = var;
    gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->unk478);
    DisplaySprite(&a1->unk4A0);
}

static void LinkConnectFadeIn(struct MainMenu *a1) {
    ++a1->timer;
    gBldRegs.bldY = 0x10 - 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE)
        a1->state = LinkConnectEndFadeIn;
    a1->unk568.y = 0x10 * (a1->timer - 0x11) / 0xF + 0x12;
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->unk478);
    DisplaySprite(&a1->unk4A0);
    DisplaySprite(&a1->unk568);
}

static void LinkConnectEndFadeIn(struct MainMenu *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->state = LinkConnectStartWait1Player;
    a1->unk568.y = 0x10;
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->unk478);
    DisplaySprite(&a1->unk4A0);
    DisplaySprite(&a1->unk568);
}

static void LinkConnectStartWait1Player(struct MainMenu *a1) {
    a1->timer = 0;
    a1->bounceStep = 0;
    a1->state = LinkConnectWait1Player;
    a1->pendingNumPlayers = 0;
    a1->pendingTimer = 0;
    a1->pendingChange = 0;
    a1->unk568.y = 0x11;
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    a1->startPressed = 0;
    a1->startTimer = 0;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->unk478);
    DisplaySprite(&a1->unk4A0);
    DisplaySprite(&a1->unk568);
}

static void LinkConnectWait1Player(struct MainMenu *a1) {
    if (LinkConnectPollPlayerCount(a1, 0x3C) && a1->numPlayers > 1 && a1->numPlayers > a1->playerId)
        a1->state = LinkConnectStartGrowTo2Players;
    else
        LinkConnectCheckCancel(a1);
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    if (!(a1->bounceStep & 1))
        a1->unk568.y = 0x10 * a1->timer / 0xF + 0x12;
    else
        a1->unk568.y = (-0x10 * a1->timer) / 0xF + 0x22;
    if (a1->timer++ > 0xE) {
        a1->bounceStep = (a1->bounceStep + 1) & 3;
        a1->timer = 0;
    }
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->unk478);
    DisplaySprite(&a1->unk4A0);
    DisplaySprite(&a1->unk568);
}

static void LinkConnectStartGrowTo2Players(struct MainMenu *a1) {
    a1->pendingNumPlayers = 0;
    a1->pendingTimer = 0;
    a1->pendingChange = 0;
    a1->unk590.x = 0x7A;
    a1->unk590.y = 0x30;
    a1->timer = 0;
    a1->state = LinkConnectGrowTo2Players;
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        ++a1; --a1;
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp2PlayerLayout(a1, 0, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay2PlayerLayout(a1, 0);
    DisplaySprite(&a1->header);
}

static void LinkConnectGrowTo2Players(struct MainMenu *a1) {
    if (++a1->timer > 4) {
        a1->joinPopupTimer[0] = 0;
        a1->joinPopupState[0] = 1;
        a1->startPressed = 0;
        a1->startTimer = 0;
        if (a1->numPlayers > 2)
            a1->state = LinkConnectStartGrowTo3Players;
        else
            a1->state = LinkConnectWait2Players;
    }
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp2PlayerLayout(a1, a1->timer, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay2PlayerLayout(a1, 0);
    DisplaySprite(&a1->header);
}

static inline struct Multi_08032B0C *GetUnkBE8(struct MainMenu *a1) {
    return a1->link.pat2;
}

static void LinkConnectWait2Players(struct MainMenu *a1) {
    LinkConnectCheckStart(a1);
    if (LinkConnectPollPlayerCount(a1, 0xF) && a1->numPlayers != 2) {
        switch (a1->numPlayers) {
        case 0:
        case 1:
            a1->state = LinkConnectStartShrinkTo1Player;
            break;
        case 3:
        case 4:
            a1->state = LinkConnectStartGrowTo3Players;
            break;
        }
    } else {
        bool32 v4;

        if (a1->screen == 4 && GetUnkBE8(a1)->unkE == 2)
            v4 = TRUE;
        else
            v4 = FALSE;
        if (v4) {
            a1->state = LinkConnectStartFadeOut;
            a1->nextScreen = 6;
        } else {
            bool32 v7;

            if (a1->screen == 5 && GetUnkBE8(a1)->unkE == 5)
                v7 = TRUE;
            else
                v7 = FALSE;
            if (v7) {
                a1->state = LinkConnectStartFadeOut;
                a1->nextScreen = 9;
            } else {
                LinkConnectCheckCancel(a1);
            }
        }
    }
    if (GetUnkBE8(a1)->unkE == 8) {
        sub_08032B84(GetUnkBE8(a1));
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay2PlayerLayout(a1, 1);
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->unk590);
    if (!a1->playerId)
        DisplaySprite(&a1->unk608);
}

static void LinkConnectStartShrinkTo1Player(struct MainMenu *a1) {
    a1->timer = 1;
    a1->state = LinkConnectShrinkTo1Player;
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        ++a1; --a1;
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp2PlayerLayout(a1, 4, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay2PlayerLayout(a1, 2);
    DisplaySprite(&a1->header);
}

static void LinkConnectShrinkTo1Player(struct MainMenu *a1) {
    if (++a1->timer > 4)
        a1->state = LinkConnectStartFadeIn;
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp2PlayerLayout(a1, 5 - a1->timer, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay2PlayerLayout(a1, 2);
    DisplaySprite(&a1->header);
}

static void LinkConnectStartGrowTo3Players(struct MainMenu *a1) {
    a1->pendingNumPlayers = 0;
    a1->pendingTimer = 0;
    a1->pendingChange = 0;
    a1->timer = 1;
    a1->state = LinkConnectGrowTo3Players;
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        ++a1; --a1;
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp3PlayerLayout(a1, 1, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay3PlayerLayout(a1, 0);
    DisplaySprite(&a1->header);
}

static void LinkConnectGrowTo3Players(struct MainMenu *a1) {
    if (++a1->timer > 4) {
        a1->joinPopupTimer[1] = 0;
        a1->joinPopupState[1] = 1;
        a1->startPressed = 0;
        a1->startTimer = 0;
        if (a1->numPlayers == 4)
            a1->state = LinkConnectStartGrowTo4Players;
        else
            a1->state = LinkConnectWait3Players;
    }
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp3PlayerLayout(a1, a1->timer, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay3PlayerLayout(a1, 0);
    DisplaySprite(&a1->header);
}

static void LinkConnectWait3Players(struct MainMenu *a1) {
    LinkConnectCheckStart(a1);
    if (LinkConnectPollPlayerCount(a1, 0xF) && a1->numPlayers != 3) {
        switch (a1->numPlayers) {
        case 0:
        case 1:
        case 2:
            a1->state = LinkConnectStartShrinkTo2Players;
            break;
        case 4:
            a1->state = LinkConnectStartGrowTo4Players;
            break;
        }
    } else {
        bool32 v4;

        if (a1->screen == 4 && GetUnkBE8(a1)->unkE == 2)
            v4 = TRUE;
        else
            v4 = FALSE;
        if (v4) {
            a1->state = LinkConnectStartFadeOut;
            a1->nextScreen = 6;
        } else {
            bool32 v7;

            if (a1->screen == 5 && GetUnkBE8(a1)->unkE == 5)
                v7 = TRUE;
            else
                v7 = FALSE;
            if (v7) {
                a1->state = LinkConnectStartFadeOut;
                a1->nextScreen = 9;
            } else {
                LinkConnectCheckCancel(a1);
            }
        }
    }
    if (GetUnkBE8(a1)->unkE == 8) {
        sub_08032B84(GetUnkBE8(a1));
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp3PlayerLayout(a1, 5, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay3PlayerLayout(a1, 1);
    DisplaySprite(&a1->header);
    if (!a1->playerId)
        DisplaySprite(&a1->unk608);
}

static void LinkConnectStartShrinkTo2Players(struct MainMenu *a1) {
    a1->timer = 1;
    a1->state = LinkConnectShrinkTo2Players;
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        ++a1; --a1;
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp3PlayerLayout(a1, 4, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay3PlayerLayout(a1, 2);
    DisplaySprite(&a1->header);
}

static void LinkConnectShrinkTo2Players(struct MainMenu *a1) {
    if (++a1->timer > 4) {
        a1->playerId = a1->link.pat2->unk10;
        switch (a1->numPlayers) {
        case 0:
        case 1:
            a1->state = LinkConnectStartShrinkTo1Player;
            break;
        case 2:
            if (a1->playerId >= a1->numPlayers)
                a1->state = LinkConnectStartShrinkTo1Player;
            else
                a1->state = LinkConnectWait2Players;
            break;
        case 3:
            if (a1->playerId >= a1->numPlayers)
                a1->state = LinkConnectStartShrinkTo1Player;
            else
                a1->state = LinkConnectStartGrowTo3Players;
            break;
        case 4:
            a1->state = LinkConnectStartGrowTo3Players;
            break;
        }
    }
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp3PlayerLayout(a1, 5 - a1->timer, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay3PlayerLayout(a1, 2);
    DisplaySprite(&a1->header);
}

static void LinkConnectStartGrowTo4Players(struct MainMenu *a1) {
    a1->pendingNumPlayers = 0;
    a1->pendingTimer = 0;
    a1->pendingChange = 0;
    a1->timer = 1;
    a1->state = LinkConnectGrowTo4Players;
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        ++a1; --a1;
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp4PlayerLayout(a1, 1, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay4PlayerLayout(a1, 0);
    DisplaySprite(&a1->header);
}

static void LinkConnectGrowTo4Players(struct MainMenu *a1) {
    if (++a1->timer > 4) {
        a1->joinPopupTimer[2] = 0;
        a1->joinPopupState[2] = 1;
        a1->startPressed = 0;
        a1->startTimer = 0;
        a1->state = LinkConnectWait4Players;
    }
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp4PlayerLayout(a1, a1->timer, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay4PlayerLayout(a1, 0);
    DisplaySprite(&a1->header);
}

static void LinkConnectWait4Players(struct MainMenu *a1) {
    LinkConnectCheckStart(a1);
    if (LinkConnectPollPlayerCount(a1, 0xF)) {
        a1->state = LinkConnectStartShrinkTo3Players;
    } else {
        bool32 v4;

        if (a1->screen == 4 && GetUnkBE8(a1)->unkE == 2)
            v4 = TRUE;
        else
            v4 = FALSE;
        if (v4) {
            a1->state = LinkConnectStartFadeOut;
            a1->nextScreen = 6;
        } else {
            bool32 v7;

            if (a1->screen == 5 && GetUnkBE8(a1)->unkE == 5)
                v7 = TRUE;
            else
                v7 = FALSE;
            if (v7) {
                a1->state = LinkConnectStartFadeOut;
                a1->nextScreen = 9;
            } else {
                LinkConnectCheckCancel(a1);
            }
        }
    }
    if (GetUnkBE8(a1)->unkE == 8) {
        sub_08032B84(GetUnkBE8(a1));
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp4PlayerLayout(a1, 5, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay4PlayerLayout(a1, 1);
    DisplaySprite(&a1->header);
    if (!a1->playerId)
        DisplaySprite(&a1->unk608);
}

static void LinkConnectStartShrinkTo3Players(struct MainMenu *a1) {
    a1->timer = 1;
    a1->state = LinkConnectShrinkTo3Players;
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        ++a1; --a1;
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp4PlayerLayout(a1, 4, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay4PlayerLayout(a1, 2);
    DisplaySprite(&a1->header);
}

static void LinkConnectShrinkTo3Players(struct MainMenu *a1) {
    if (++a1->timer > 4) {
        a1->playerId = a1->link.pat2->unk10;
        switch (a1->numPlayers) {
        case 0:
        case 1:
        case 2:
            a1->state = LinkConnectStartShrinkTo2Players;
            break;
        case 3:
            if (a1->playerId >= a1->numPlayers)
                a1->state = LinkConnectStartShrinkTo2Players;
            else
                a1->state = LinkConnectWait3Players;
            break;
        case 4:
            a1->state = LinkConnectStartGrowTo4Players;
            break;
        }
    }
    if (a1->link.pat2->unkE == 8) {
        sub_08032B84(a1->link.pat2);
        a1->state = LinkErrorStart;
        if (a1->screen == 4)
            a1->nextScreen = 2;
        else if (a1->screen == 5)
            a1->nextScreen = 7;
    }
    LinkConnectLerp4PlayerLayout(a1, 5 - a1->timer, 5);
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    LinkConnectDisplay4PlayerLayout(a1, 2);
    DisplaySprite(&a1->header);
}

static inline void LoadBgPaletteWithTransformation2(const u16 *src, u8 offset, u16 size) {
    LoadBgPaletteWithTransformation(src, offset, size);
}

static void LinkErrorStart(struct MainMenu *a1) {
    CpuCopy16(gUnk_082D7850[sMenuBgIds[gLanguage][0xF]]->palette + 0x90, (u16 *)0x5000120, 0x20);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;
        u32 j;
        u16 *dst;

        idx = sMenuBgIds[gLanguage][0xF];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        do tilemap = ptr->tilemap; while (0);
        height = ptr->height;
#ifndef NONMATCHING
        asm("mov\t%0, #0":"=r"(j)::"cc");
#else
        j = 0;
#endif
        dst = (void *)0x6000000 + j;
        vram = (void *)0x600F800 + j;
        LZ77UnCompVram(tileset, dst);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation2(gUnk_082D7850[sMenuBgIds[gLanguage][0xF]]->palette, 0, 0x100);
    else {
        DmaCopy16(3, gUnk_082D7850[sMenuBgIds[gLanguage][0xF]]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    DmaCopy16(3, a1->bgPalette, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    a1->state = LinkErrorWaitInput;
    DisplaySprite(&a1->header);
}

static void LinkErrorEnd(struct MainMenu *a1) {
    CpuFill16_2(0, (u16 *)0x06000000, 0x4000);
    CpuFill16_2(0x1ff, (u16 *)0x0600F800, 0x800);
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation2(gUnk_082D7850[0xE3]->palette, 0, 0x100);
    else {
        DmaCopy16(3, gUnk_082D7850[0xE3]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    gBgScrollRegs[0][1] = 0x18;
    LinkConnectFreeSprites(a1);
    if (a1->screen == 4)
        a1->state = MainMenuStart;
    else if (a1->screen == 5)
        a1->state = SubGameSelectReopen;
}

static void LinkConnectStartFadeOut(struct MainMenu *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = LinkConnectFadeOut;
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    switch (a1->numPlayers) {
    case 0:
    case 1:
        DisplaySprite(&a1->unk478);
        DisplaySprite(&a1->unk4A0);
        DisplaySprite(&a1->unk568);
        break;
    case 2:
        LinkConnectDisplay2PlayerLayout(a1, 1);
        DisplaySprite(&a1->unk590);
        break;
    case 3:
        LinkConnectDisplay3PlayerLayout(a1, 1);
        break;
    case 4:
        LinkConnectDisplay4PlayerLayout(a1, 1);
        break;
    }
    DisplaySprite(&a1->header);
    if (a1->playerId == 0 && a1->numPlayers > 1)
        DisplaySprite(&a1->unk608);
}

static void LinkConnectFadeOut(struct MainMenu *a1) {
    s32 var;
    s32 f = 0xF;

    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    var = a1->timer;
    if (var >= f)
        a1->state = LinkConnectDestroyAnim;
    if (++a1->palCycleTimer > 0xE) {
        a1->palCycleTimer = 0;
        LinkConnectCyclePalette();
    }
    switch (a1->numPlayers) {
    case 0:
    case 1:
        DisplaySprite(&a1->unk478);
        DisplaySprite(&a1->unk4A0);
        DisplaySprite(&a1->unk568);
        break;
    case 2:
        LinkConnectDisplay2PlayerLayout(a1, 1);
        DisplaySprite(&a1->unk590);
        break;
    case 3:
        LinkConnectDisplay3PlayerLayout(a1, 1);
        break;
    case 4:
        LinkConnectDisplay4PlayerLayout(a1, 1);
        break;
    }
    DisplaySprite(&a1->header);
    if (a1->playerId == 0 && a1->numPlayers > 1)
        DisplaySprite(&a1->unk608);
}

static void LinkConnectEnd(struct MainMenu *a1) {
    struct Multi_08032B0C *ptr = a1->link.pat2;
    u16 fill[2];

    LinkConnectFreeSprites(a1);
    *&fill[0] = 0;
    CpuSet2(&fill[0], (u16 *)0x6000000, CPU_SET_SRC_FIXED | CPU_SET_16BIT | 0x2000);
    *&fill[0] = 0x1FF;
    CpuSet2(&fill[0], (u16 *)0x600F800, CPU_SET_SRC_FIXED | CPU_SET_16BIT | 0x400);
    gBgScrollRegs[0][1] = 0x18;
    switch (a1->nextScreen) {
    case 2:
        a1->state = MainMenuStart;
        break;
    case 7:
        a1->state = SubGameSelectReopen;
        break;
    case 6:
        a1->state = LinkFileSelectStartWait;
        break;
    case 9:
        if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId)) {
            ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
            UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId);
        }
        TaskDestroy(gCurTask);
        CpuFill16(RGB_WHITE, gBgPalette, 0x200);
        CpuFill16(RGB_WHITE, gObjPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        sub_08032BD4(ptr);
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
    }
}

static void LinkFileSelectStart(struct MainMenu *a1) {
    u8 i;
    struct Sprite *sprite;

    a1->prevScreen = a1->screen;
    a1->screen = 6;
    a1->linkCursor[0] = 0;
    a1->linkCursor[1] = 0;
    a1->numPlayers = a1->link.pat2->unk11;
    a1->playerId = a1->link.pat2->unk10;
    a1->anim = sub_0802E57C();
    for (i = 0; i < a1->numPlayers; ++i)
        a1->playerCompletion[i] = a1->link.pat2->unk4[i];
    for (i = a1->numPlayers; i < 4; ++i)
        a1->playerCompletion[i] = -1;
    gDispCnt |= DISPCNT_BG1_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][0xE];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, a1->bgPalette, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    sprite = &a1->header;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, sMenuSpriteAnims[gLanguage][5].animId, sMenuSpriteAnims[gLanguage][5].variant,
        0, 0xFF, 0x10, 0, 0, 0, 0x40000);
    a1->cursor.x = 0x48;
    a1->cursor.y = 0x10;
    a1->cursor.unk1B = 0xFF;
    UpdateSpriteAnimation(&a1->cursor);
    LinkFileSelectCreateSprites(a1);
    a1->state = LinkFileSelectStartSlideIn;
}

static void LinkFileSelectSlideIn(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    gBldRegs.bldY = 0x10 - 0x10 * a1->timer / 0xF;
    for (i = 0; i < 4; ++i) {
        a1->items[i].x = (-0x98 * a1->timer) / 0xF + 0xF0;
        a1->playerCompletionDigits[i][0].x = a1->items[i].x + 0x70;
        a1->playerCompletionDigits[i][1].x = a1->items[i].x + 0x78;
        a1->playerCompletionDigits[i][2].x = a1->items[i].x + 0x80;
    }
    a1->cursor.x = 0x68 * a1->timer / 0xF - 0x20;
    a1->header.x = 0x9C * a1->timer / 0xF - 0x9C;
    gBgScrollRegs[0][1] = 0x18 * a1->timer / 0xF;
    if (a1->timer > 0xE)
        a1->state = LinkFileSelectEndSlideIn;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    LinkFileSelectDisplaySprites(a1);
}

static void LinkFileSelectWaitInput(struct MainMenu *a1) {
    a1->linkCursor[1] = a1->linkCursor[0];
    a1->linkCursor[0] = a1->link.pat2->unk12;
    if (a1->link.pat2->unkE == 4) {
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        a1->state = LinkFileSelectStartSlideOut;
    }
    if (a1->linkCursor[0] != a1->linkCursor[1]) {
        m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        LinkFileSelectUpdateFilePalettes(a1);
        a1->cursor.y = 0x15 * a1->linkCursor[0] + 0x10;
        UpdateSpriteAnimation(&a1->cursor);
    }
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    LinkFileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void LinkFileSelectSlideOut(struct MainMenu *a1) {
    u8 i;

    ++a1; --a1;
    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    for (i = 0; i < 4; ++i) {
        a1->items[i].x = (0x98 * a1->timer) / 0xF + 0x58;
        a1->playerCompletionDigits[i][0].x = a1->items[i].x + 0x70;
        a1->playerCompletionDigits[i][1].x = a1->items[i].x + 0x78;
        a1->playerCompletionDigits[i][2].x = a1->items[i].x + 0x80;
    }
    a1->cursor.x = (-0x68 * a1->timer) / 0xF + 0x48;
    a1->header.x = (-0x9C * a1->timer) / 0xF;
    gBgScrollRegs[0][1] = (-0x18 * a1->timer) / 0xF + 0x18;
    if (a1->timer > 0xE) {
        a1->state = LinkFileSelectFreeGfx;
        a1->ambience(a1);
    } else {
        if (!UpdateSpriteAnimation(&a1->cursor))
            a1->cursor.unk1B = 0xFF;
        LinkFileSelectDisplaySprites(a1);
        a1->ambience(a1);
    }
}

static void LinkFileSelectFadeIn(struct MainMenu *a1) {
    ++a1->timer;
    gBldRegs.bldY = 0x10 - 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        sub_0802FBF4(a1->anim);
        a1->timer = 0;
        a1->state = LinkFileSelectWaitGameStart;
    }
}

static void SubGameSelectStart(struct MainMenu *a1) {
    struct Sprite *sprite;

    a1->prevScreen = a1->screen;
    a1->screen = 7;
    a1->prevSubGameCursor = 0;
    a1->subGameCursor = 0;
    a1->timer = 0;
    SubGameSelectCreateSprites(a1);
    sprite = &a1->header;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, sMenuSpriteAnims[gLanguage][2].animId, sMenuSpriteAnims[gLanguage][2].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0x40000);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][7];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    a1->cursor.y = !a1->fileCompleted[a1->fileId] ? 0x20 : 0x10;
    UpdateSpriteAnimation(&a1->cursor);
    a1->state = SubGameSelectWaitStart;
    a1->ambience(a1);
}

static void SubGameSelectSlideInBanner(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    a1->header.x = 0x9C * a1->timer / 5 - 0x9C;
    if (a1->timer > 4)
        a1->state = SubGameSelectStartSlideInItems;
    if (!UpdateSpriteAnimation(&a1->cursor))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void SubGameSelectSlideInItems(struct MainMenu *a1) {
    u8 i, j;
    u8 var = !a1->fileCompleted[a1->fileId] ? 3 : 4;
    struct Sprite *sprite1, *sprite2;

    ++a1->timer;
    j = 0;
    sprite1 = &a1->cursor;
    sprite2 = &a1->header;
    for (; j < var; ++j)
        a1->items[j].x = -0xD0 * a1->timer / 5 + 0xF0;
    if (a1->timer > 4)
        a1->state = SubGameSelectStartSpreadItems;
    if (!UpdateSpriteAnimation(sprite1))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(sprite2);
    DisplaySprite(sprite1);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void SubGameSelectSpreadItems(struct MainMenu *a1) {
    u8 i, j;
    u8 r7 = a1->fileCompleted[a1->fileId];
    u8 var = !r7 ? 3 : 4;
    s32 v6;
    struct Sprite *sprite1, *sprite2;

    ++a1->timer;
    j = 0;
    sprite1 = &a1->cursor;
    sprite2 = &a1->header;
    for (; j < var; ++j)
        a1->items[j].y = (
            v6 = !r7 ? 21 * j + 0x2B : 21 * j + 0x1B,
            (!r7 ? 8 * j + 0x2B : 8 * j + 0x1B) + (!r7 ? ({v6 - 0x2B;}) - 8 * j : ({v6 - 0x1B;}) - 8 * j) * a1->timer / 5
        );
    a1->cursor.x = 0x30 * a1->timer / 5 - 0x20;
    gBgScrollRegs[0][1] = 0x18 * a1->timer / 5;
    if (a1->timer > 4) {
        a1->idleTimer = 0;
        a1->state = SubGameSelectWaitInput;
    }
    if (!UpdateSpriteAnimation(sprite1))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(sprite2);
    DisplaySprite(sprite1);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static inline u16 *GetUnk9DA(struct MainMenu *a1) {
    return a1->bgPalette;
}

static void SubGameSelectReopen(struct MainMenu *a1) {
    u8 r7 = a1->fileCompleted[a1->fileId];
    u8 var = !r7 ? 3 : 4;
    struct Sprite *sprite;
    u8 i;

    a1->prevScreen = a1->screen;
    a1->screen = 7;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][a1->subGameCursor + 7];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, GetUnk9DA(a1), gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    gBgScrollRegs[0][1] = 0x18;
    SubGameSelectCreateSprites(a1);
    sprite = &a1->header;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, sMenuSpriteAnims[gLanguage][2].animId, sMenuSpriteAnims[gLanguage][2].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0x40000);
    a1->header.x = 0;
    for (i = 0; i < var; ++i) {
        a1->items[i].x = 0x20;
        a1->items[i].y = !r7 ? 21 * i + 0x2B : 21 * i + 0x1B;
    }
    a1->cursor.x = 0x10;
    a1->cursor.y = !r7 ? 21 * a1->subGameCursor + 0x20 : 21 * a1->subGameCursor + 0x10;
    if (a1->prevScreen == 5) {
        a1->anim = sub_0802E57C();
        gDispCnt |= DISPCNT_BG1_ON;
        a1->subMenuPointer.y = !r7 ? 21 * a1->subGameCursor + 0x35 : 21 * a1->subGameCursor + 0x25;
        a1->subMenuCursor = 1;
        a1->subMenuPointer.palId = 6;
        UpdateSpriteAnimation(&a1->subMenuPointer);
        if (a1->subGameCursor != 3) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = sMenuBgIds[gLanguage][0xC];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        } else {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = sMenuBgIds[gLanguage][6];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        sprite = &a1->items[a1->subGameCursor];
        sprite->palId = 4;
        sprite->unk8 = 0;
        UpdateSpriteAnimation(sprite);
    }
    a1->timer = 0;
    a1->state = SubGameSelectFadeIn;
}

static void SubGameSelectFadeIn(struct MainMenu *a1) {
    u8 i;

    ++a1->timer;
    gBldRegs.bldY = 0x10 - 0x10 * a1->timer / 0xF;
    if (a1->timer > 14)
        a1->state = SubGameSelectEndFadeIn;
    gBgScrollRegs[0][1] = 0x18;
    if (a1->prevScreen == 5)
        DisplaySprite(&a1->subMenuPointer);
    else if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static void SubGameSelectEndFadeIn(struct MainMenu *a1) {
    u8 i;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->idleTimer = 0;
    if (a1->prevScreen == 5)
        a1->state = SubGameSelectPlayerCountWaitInput;
    else
        a1->state = SubGameSelectWaitInput;
    if (a1->prevScreen == 5)
        DisplaySprite(&a1->subMenuPointer);
    else if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static inline u8 GetUnk9CA(struct MainMenu *a1) {
    return a1->subGameCursor;
}

static inline u8 GetUnk9CB(struct MainMenu *a1) {
    return a1->prevSubGameCursor;
}

static void SubGameSelectWaitInput(struct MainMenu *a1) {
    u8 i;
    u8 cursor;
    u8 r7 = a1->fileCompleted[a1->fileId];
    u8 var = !r7 ? 3 : 4;
    struct Sprite *sprite = NULL;

    MainMenuUpdateIdleTimer(a1);
    do {
        a1->prevSubGameCursor = a1->subGameCursor;
        switch (MainMenuGetInput()) {
        case 0:
            break;
        case 1:
            m4aSongNumStart(SE_MAIN_MENU_SELECT);
            a1->state = SubGameSelectOpenPlayerCountMenu;
            break;
        case 2:
            m4aSongNumStart(SE_MAIN_MENU_BACK);
            a1->nextScreen = 2;
            a1->state = SubGameSelectStartSlideOut;
            break;
        case 3:
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
            cursor = a1->subGameCursor;
            if (!cursor)
                a1->subGameCursor = var - 1;
            else
                a1->subGameCursor = cursor - 1;
            break;
        case 4:
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
            if (a1->subGameCursor == var - 1)
                a1->subGameCursor = 0;
            else
                ++a1->subGameCursor;
            break;
        }
        if (a1->subGameCursor != a1->prevSubGameCursor) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;
    
            idx = sMenuBgIds[gLanguage][a1->subGameCursor + 7];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
            sprite = GetUnk2DCSub(a1, GetUnk9CA(a1));
            sprite->palId = 2;
            UpdateSpriteAnimation(sprite);
            sprite = GetUnk2DCSub(a1, GetUnk9CB(a1));
            sprite->palId = 3;
            UpdateSpriteAnimation(sprite);
            a1->cursor.y = !r7 ? 21 * a1->subGameCursor + 0x20 : 21 * a1->subGameCursor + 0x10;
            UpdateSpriteAnimation(&a1->cursor);
        }
    } while (0);
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static inline void SetUnkBF0(struct MainMenu *a1) {
    a1->idleTimer = 0;
}

static void SubGameSelectOpenPlayerCountMenu(struct MainMenu *a1) {
    u8 i;
    u8 r7 = a1->fileCompleted[a1->fileId];
    u8 var = !r7 ? 3 : 4;
    struct Sprite *sprite = NULL;

    a1->subMenuOpen = 1;
    a1->subMenuPointer.y = !r7 ? 21 * a1->subGameCursor + 0x35 : 21 * a1->subGameCursor + 0x25;
    a1->subMenuCursor = 0;
    a1->subMenuPointer.palId = 5;
    UpdateSpriteAnimation(&a1->subMenuPointer);
    a1->cursor.unk1B = 0xFF;
    UpdateSpriteAnimation(&a1->cursor);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][0xB];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    sprite = GetUnk2DCSub(a1, a1->subGameCursor);
    sprite->palId = 4;
    sprite->unk8 = 0;
    UpdateSpriteAnimation(sprite);
    SetUnkBF0(a1);
    a1->state = SubGameSelectPlayerCountWaitInput;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void SubGameSelectPlayerCountWaitInput(struct MainMenu *a1) {
    u8 i;

    MainMenuUpdateIdleTimer(a1);
    switch (MainMenuGetInput()) {
    case 0:
        break;
    case 1:
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        a1->subMenuOpen = 0;
        if (a1->subMenuCursor == 0) {
            a1->state = SubGameSelectStartFadeOut;
            a1->nextScreen = 8;
        } else if (a1->subMenuCursor == 1) {
            a1->state = SubGameSelectStartFadeOut;
            a1->nextScreen = 5;
        }
        break;
    case 2:
        m4aSongNumStart(SE_MAIN_MENU_BACK);
        a1->subMenuOpen = 0;
        a1->state = SubGameSelectClosePlayerCountMenu;
        break;
    case 3:
        if (a1->subMenuCursor)
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        a1->subMenuCursor = 0;
        a1->subMenuPointer.palId = 5;
        UpdateSpriteAnimation(&a1->subMenuPointer);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = sMenuBgIds[gLanguage][0xB];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    case 4:
        if (a1->subMenuCursor != 1)
            m4aSongNumStart(SE_MAIN_MENU_CURSOR);
        a1->subMenuCursor = 1;
        a1->subMenuPointer.palId = 6;
        UpdateSpriteAnimation(&a1->subMenuPointer);
        if (a1->subGameCursor != 3) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = sMenuBgIds[gLanguage][0xC];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        } else {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = sMenuBgIds[gLanguage][6];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    }
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void SubGameSelectClosePlayerCountMenu(struct MainMenu *a1) {
    u8 i;
    struct Sprite *sprite = &a1->items[a1->subGameCursor];

    sprite->palId = 2;
    sprite->unk8 = 0;
    UpdateSpriteAnimation(sprite);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = sMenuBgIds[gLanguage][a1->subGameCursor + 7];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    a1->state = SubGameSelectWaitInput;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static void SubGameSelectSlideOut(struct MainMenu *a1) {
    u8 i, j;
    u8 r7 = a1->fileCompleted[a1->fileId];
    u8 var = !r7 ? 3 : 4;

    ++a1->timer;
    for (j = 0; j < var; ++j)
        a1->items[j].x = 0xD0 * a1->timer / 5 + 0x20;
    a1->cursor.x = -0x30 * a1->timer / 5 + 0x10;
    a1->header.x = -0x9C * a1->timer / 5;
    gBgScrollRegs[0][1] = -0x18 * a1->timer / 5 + 0x18;
    if (a1->timer > 4)
        a1->state = SubGameSelectEnd;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void SubGameSelectFadeOut(struct MainMenu *a1) {
    u8 i;
    s32 var;
    s32 var2 = 0xF;

    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    var = a1->timer;
    if (var >= var2)
        a1->state = SubGameSelectDestroyAnim;
    DisplaySprite(&a1->header);
    DisplaySprite(&a1->cursor);
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void SubGameSelectLaunch(struct MainMenu *a1) {
    u8 unk9CA = a1->subGameCursor;

    SubGameSelectFreeSprites(a1);
    switch (a1->nextScreen) {
    case 8:
        CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
        CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        TaskDestroy(gCurTask);
        switch (unk9CA) {
        case 0:
            sub_0801A744(0);
            break;
        case 1:
            sub_0801A744(1);
            break;
        case 2:
            sub_0801A744(2);
            break;
        case 3:
            if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId)) {
                ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId);
            }
            sub_0801A744(3);
            break;
        }
        break;
    case 5:
        a1->state = LinkConnectStart;
        break;
    }
}

static void MainMenuDisplayCurScreenSprites(struct MainMenu *a1) {
    u8 i;

    switch (a1->prevScreen) {
    case 1:
        if (!UpdateSpriteAnimation(GetUnk28C(a1)))
            a1->cursor.unk1B = 0xFF;
        FileSelectDisplaySprites(a1);
        break;
    case 2:
        if (a1->subMenuOpen)
            DisplaySprite(&a1->subMenuPointer);
        else {
            if (!UpdateSpriteAnimation(GetUnk28C(a1)))
                a1->cursor.unk1B = 0xFF;
        }
        DisplaySprite(&a1->header);
        DisplaySprite(GetUnk28C(a1));
        for (i = 0; i < 4; ++i)
            DisplaySprite(&a1->items[i]);
        break;
    case 3:
        DisplaySprite(&a1->erasePrompt);
        DisplaySprite(&a1->eraseYesNo);
        FileSelectDisplayCurFileSprites(a1);
        break;
    case 7:
        if (a1->subMenuOpen)
            DisplaySprite(&a1->subMenuPointer);
        else {
            if (!UpdateSpriteAnimation(GetUnk28C(a1)))
                a1->cursor.unk1B = 0xFF;
        }
        DisplaySprite(&a1->header);
        DisplaySprite(GetUnk28C(a1));
        for (i = 0; i < 4; ++i)
            DisplaySprite(&a1->items[i]);
        break;
    case 4 ... 6:
        break;
    }
}

void UpdateCurSaveFileCompletion(void) {
    gUnk_0203ACB0[gSaveID > 2 ? 0 : gSaveID] = GetSaveFileCompletion(gSaveID > 2 ? 0 : gSaveID);
}

static void MainMenuMain(void) {
    struct MainMenu *var = TaskGetStructPtr(gCurTask);

    ++var->frameCount;
    var->state(var);
}

static void MainMenuInitPalette(struct MainMenu *a1) {
    u8 i;

    for (i = 0; i < 3; ++i) {
        MainMenuClearBgTiles(i);
        MainMenuClearBgTilemap(i);
    }
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation2(gUnk_082D7850[0xE3]->palette, 0, 0x100);
    else {
        DmaCopy16(3, gUnk_082D7850[0xE3]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    CpuCopy16(gUnk_082D7850[0xE3]->palette, a1->bgPalette, 0x200);
    a1->state = MainMenuInitBgTileset;
}

static void MainMenuInitBgTileset(struct MainMenu *a1) {
    LZ77UnCompVram(gUnk_082D7850[0xE2]->tileset, (u16 *)0x6008000);
    a1->state = MainMenuInitBgTilemap;
}

static void MainMenuInitHeaderSprites(struct MainMenu *a1) {
    MainMenuCreateHeaderSprites(a1);
    a1->state = MainMenuInitFirstScreen;
}

static void FileSelectStartWaitInput(struct MainMenu *a1) {
    a1->idleTimer = 0;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
    a1->state = FileSelectWaitInput;
}

static void FileSelectStartSlideOut(struct MainMenu *a1) {
    gUnk_0203ADE0 = -1;
    a1->timer = 0;
    a1->state = FileSelectSlideOut;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void FileSelectStartFadeOut(struct MainMenu *a1) {
    m4aMPlayFadeOut(&gMPlayInfo_0, 1);
    a1->timer = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
    a1->ambience(a1);
    a1->state = FileSelectFadeOut;
}

static void FileSelectStopMusic(struct MainMenu *a1) {
    m4aMPlayAllStop();
    a1->timer = 0;
    a1->state = FileSelectWaitMusicStop;
}

static void FileSelectWaitMusicStop(struct MainMenu *a1) {
    if (++a1->timer > 4)
        a1->state = FileSelectDestroyAnim;
}

static void FileSelectDestroyAnim(struct MainMenu *a1) {
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    a1->state = FileSelectWaitToTitle1;
}

static void FileSelectWaitToTitle1(struct MainMenu *a1) {
    a1->state = FileSelectWaitToTitle2;
}

static void FileSelectWaitToTitle2(struct MainMenu *a1) {
    a1->state = FileSelectReturnToTitle;
}

static void FileSelectReturnToTitle(struct MainMenu *a1) {
    TaskDestroy(gCurTask);
    CreateTitleScreen();
}

static void MainMenuWaitStart(struct MainMenu *a1) {
    if (++a1->timer > 4)
        a1->state = MainMenuStartSlideInBanner;
    a1->ambience(a1);
}

static void MainMenuStartSlideInBanner(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = MainMenuSlideInBanner;
    a1->ambience(a1);
}

static void MainMenuStartSlideInItems(struct MainMenu *a1) {
    u8 i;

    a1->timer = 0;
    a1->state = MainMenuSlideInItems;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void MainMenuStartSpreadItems(struct MainMenu *a1) {
    u8 i;

    a1->timer = 0;
    a1->state = MainMenuSpreadItems;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void MainMenuEndFadeInFromLinkConnect(struct MainMenu *a1) {
    u8 i;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->state = MainMenuPlayerCountWaitInput;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void MainMenuStartMainGame(struct MainMenu *a1) {
    u8 i;

    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = MainMenuMainGameFadeOutMenu;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
}

static void MainMenuMainGameFreeMenuGfx(struct MainMenu *a1) {
    gDispCnt &= ~(DISPCNT_BG0_ON | DISPCNT_BG1_ON);
    if (a1->cursor.tilesVram) {
        VramFree(a1->cursor.tilesVram);
        a1->cursor.tilesVram = 0;
    }
    if (a1->header.tilesVram) {
        VramFree(a1->header.tilesVram);
        a1->header.tilesVram = 0;
    }
    MainMenuFreeSprites(a1);
    sub_0802E6C4(a1->anim);
    a1->timer = 0;
    a1->state = MainMenuMainGameWaitFree;
}

static void MainMenuMainGameWaitFree(struct MainMenu *a1) {
    if (++a1->timer > 4) {
        a1->timer = 0;
        a1->state = MainMenuMainGameFadeInAnim;
    }
}

static void MainMenuMainGameStartAnim(struct MainMenu *a1) {
    sub_0802FBF4(a1->anim);
    a1->timer = 0;
    a1->state = MainMenuMainGameWaitAnim;
}

static void MainMenuMainGameWaitAnim(struct MainMenu *a1) {
    if (a1->anim->unk188 & 1 || gPressedKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) {
        m4aMPlayFadeOut(&gMPlayInfo_0, 1);
        a1->state = MainMenuMainGameStartFadeOut;
    }
}

static void MainMenuMainGameStartFadeOut(struct MainMenu *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = MainMenuMainGameFadeOut;
}

static void MainMenuMainGameFadeOut(struct MainMenu *a1) {
    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE) {
        m4aMPlayAllStop();
        a1->timer = 0;
        a1->state = MainMenuMainGameWaitMusicStop;
    }
}

static void MainMenuMainGameWaitMusicStop(struct MainMenu *a1) {
    if (++a1->timer > 4)
        a1->state = MainMenuMainGameDestroyAnim;
}

static void MainMenuMainGameDestroyAnim(struct MainMenu *a1) {
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    a1->state = MainMenuMainGameWait;
}

static void MainMenuMainGameWait(struct MainMenu *a1) {
    a1->state = MainMenuMainGameStopMusic;
}

static void MainMenuMainGameStopMusic(struct MainMenu *a1) {
    m4aMPlayAllStop();
    a1->state = MainMenuLaunchMainGame;
}

static void MainMenuLaunchMainGame(struct MainMenu *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId)) {
        ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
        UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId);
    }
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_08123FD4();
}

static void MainMenuStartFadeOutToLinkConnect(struct MainMenu *a1) {
    u8 i;

    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = MainMenuFadeOutToLinkConnect;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void MainMenuEndFadeOutToLinkConnect(struct MainMenu *a1) {
    MainMenuFreeSprites(a1);
    a1->state = LinkConnectStart;
}

static void MainMenuStartSlideOut(struct MainMenu *a1) {
    u8 i;

    a1->timer = 0;
    a1->state = MainMenuSlideOut;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void MainMenuEndSlideOut(struct MainMenu *a1) {
    a1->timer = 0;
    if (a1->nextScreen == 7)
        a1->state = a1->nextState;
    else
        a1->state = MainMenuWaitAfterSlideOut;
    a1->ambience(a1);
}

static void MainMenuWaitAfterSlideOut(struct MainMenu *a1) {
    if (++a1->timer == 5)
        a1->state = a1->nextState;
    a1->ambience(a1);
}

static void MainMenuCollectionRoomDestroyAnim(struct MainMenu *a1) {
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    a1->state = MainMenuCollectionRoomWait1;
}

static void MainMenuCollectionRoomWait1(struct MainMenu *a1) {
    a1->state = MainMenuCollectionRoomWait2;
}

static void MainMenuCollectionRoomWait2(struct MainMenu *a1) {
    a1->state = MainMenuEnterCollectionRoom;
}

static void MainMenuEnterCollectionRoom(struct MainMenu *a1) {
    m4aMPlayAllStop();
    if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId)) {
        ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
        UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId);
    }
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_081434F8();
}

static void EraseFileStartSlideInBanner(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = EraseFileSlideInBanner;
}

static void EraseFileSlideInBanner(struct MainMenu *a1) {
    ++a1->timer;
    a1->header.x = 0x9C * a1->timer / 5 - 0x9C;
    if (a1->timer > 4)
        a1->state = EraseFileStartSlideInFile;
    FileSelectDisplayCurFileSprites(a1);
}

static void EraseFileClearSave(struct MainMenu *a1) {
    u8 unkA = a1->fileId;

    gUnk_0203ACB0[unkA] = -1;
    a1->fileCompletion[unkA] = -1;
    a1->fileCompleted[unkA] = 0;
    ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
    UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->fileId);
    a1->state = EraseFileWaitAfterErase;
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
}

static void EraseFileWaitAfterErase(struct MainMenu *a1) {
    if (++a1->timer >= 0x1E || gPressedKeys & B_BUTTON) {
        m4aSongNumStart(SE_MAIN_MENU_BACK);
        a1->state = EraseFileStartSlideOut;
        a1->nextScreen = 1;
    }
    FileSelectDisplayCurFileSprites(a1);
    DisplaySprite(&a1->erasePrompt);
    DisplaySprite(&a1->eraseYesNo);
}

static void EraseFileStartSlideOut(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = EraseFileSlideOut;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    FileSelectDisplaySprites(a1);
}

static void EraseFileEnd(struct MainMenu *a1) {
    EraseFileFreeSprites(a1);
    if (a1->nextScreen == 1)
        a1->state = FileSelectStart;
    else
        a1->state = MainMenuStart;
}

static void LinkConnectWaitStart(struct MainMenu *a1) {
    a1->state = LinkConnectInitSprites;
}

static void LinkConnectInitSprites(struct MainMenu *a1) {
    LinkConnectCreateGbaSprites(a1);
    LinkConnectCreateTextSprites(a1);
    a1->state = LinkConnectStartFadeIn;
}

static void LinkErrorWaitInput(struct MainMenu *a1) {
    if (gPressedKeys & B_BUTTON) {
        m4aSongNumStart(SE_MAIN_MENU_BACK);
        a1->state = LinkErrorStartFadeOut;
    }
    DisplaySprite(&a1->header);
}

static void LinkErrorStartFadeOut(struct MainMenu *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = LinkErrorFadeOut;
    DisplaySprite(&a1->header);
}

static void LinkErrorFadeOut(struct MainMenu *a1) {
    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE)
        a1->state = LinkErrorEnd;
    DisplaySprite(&a1->header);
}

static void LinkConnectDestroyAnim(struct MainMenu *a1) {
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    a1->state = LinkConnectFadeOutWait1;
}

static void LinkConnectFadeOutWait1(struct MainMenu *a1) {
    a1->state = LinkConnectFadeOutWait2;
}

static void LinkConnectFadeOutWait2(struct MainMenu *a1) {
    a1->state = LinkConnectEnd;
}

static void LinkFileSelectStartWait(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = LinkFileSelectWait;
}

static void LinkFileSelectWait(struct MainMenu *a1) {
    if (++a1->timer > 0x3B) {
        if (a1->link.pat2->unk4[0] != -1) // TODO: pat1?
            a1->state = LinkFileSelectStart;
        else {
            gUnk_02038580 = 0;
            sub_08032E98();
        }
    }
}

static void LinkFileSelectStartSlideIn(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = LinkFileSelectSlideIn;
}

static void LinkFileSelectEndSlideIn(struct MainMenu *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->state = LinkFileSelectWaitInput;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    LinkFileSelectDisplaySprites(a1);
}

static void LinkFileSelectStartSlideOut(struct MainMenu *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = LinkFileSelectSlideOut;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    LinkFileSelectDisplaySprites(a1);
    a1->ambience(a1);
}

static void LinkFileSelectFreeGfx(struct MainMenu *a1) {
    gDispCnt &= ~(DISPCNT_BG0_ON | DISPCNT_BG1_ON);
    if (a1->cursor.tilesVram) {
        VramFree(a1->cursor.tilesVram);
        a1->cursor.tilesVram = 0;
    }
    if (a1->header.tilesVram) {
        VramFree(a1->header.tilesVram);
        a1->header.tilesVram = 0;
    }
    LinkFileSelectFreeSprites(a1);
    sub_0802E6C4(a1->anim);
    a1->timer = 0;
    a1->state = LinkFileSelectWaitFree;
}

static void LinkFileSelectWaitFree(struct MainMenu *a1) {
    if (++a1->timer > 4) {
        a1->timer = 0;
        a1->state = LinkFileSelectFadeIn;
    }
}

static void LinkFileSelectWaitGameStart(struct MainMenu *a1) {
    if (a1->link.pat2->unkE == 5 && a1->anim->unk188 & 1)
        a1->state = LinkFileSelectStartFadeOut;
}

static void LinkFileSelectStartFadeOut(struct MainMenu *a1) {
    m4aMPlayFadeOut(&gMPlayInfo_0, 1);
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = LinkFileSelectFadeOut;
}

static void LinkFileSelectFadeOut(struct MainMenu *a1) {
    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0xF;
    if (a1->timer > 0xE) {
        m4aMPlayAllStop();
        a1->state = LinkFileSelectWaitFadeOut;
    }
}

static void LinkFileSelectWaitFadeOut(struct MainMenu *a1) {
    if (++a1->timer > 4)
        a1->state = LinkFileSelectDestroyAnim;
}

static void LinkFileSelectDestroyAnim(struct MainMenu *a1) {
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    a1->state = LinkFileSelectWait1;
}

static void LinkFileSelectWait1(struct MainMenu *a1) {
    a1->state = LinkFileSelectWait2;
}

static void LinkFileSelectWait2(struct MainMenu *a1) {
    a1->state = LinkFileSelectLaunchGame;
}

static void LinkFileSelectLaunchGame(struct MainMenu *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_08032BD4(a1->link.pat2);
}

static void SubGameSelectWaitStart(struct MainMenu *a1) {
    if (++a1->timer > 4)
        a1->state = SubGameSelectStartSlideInBanner;
    a1->ambience(a1);
}

static void SubGameSelectStartSlideInBanner(struct MainMenu *a1) {
    a1->timer = 0;
    a1->state = SubGameSelectSlideInBanner;
    a1->ambience(a1);
}

static void SubGameSelectStartSlideInItems(struct MainMenu *a1) {
    u8 i;

    a1->timer = 0;
    a1->state = SubGameSelectSlideInItems;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void SubGameSelectStartSpreadItems(struct MainMenu *a1) {
    u8 i;

    a1->timer = 0;
    a1->state = SubGameSelectSpreadItems;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void SubGameSelectStartSlideOut(struct MainMenu *a1) {
    u8 i;

    a1->timer = 0;
    a1->state = SubGameSelectSlideOut;
    if (!UpdateSpriteAnimation(GetUnk28C(a1)))
        a1->cursor.unk1B = 0xFF;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    a1->ambience(a1);
}

static void SubGameSelectEnd(struct MainMenu *a1) {
    SubGameSelectFreeSprites(a1);
    a1->state = MainMenuStart;
    a1->ambience(a1);
}

static void SubGameSelectStartFadeOut(struct MainMenu *a1) {
    u8 i;

    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->timer = 0;
    a1->state = SubGameSelectFadeOut;
    DisplaySprite(&a1->header);
    DisplaySprite(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        DisplaySprite(&a1->items[i]);
    DisplaySprite(&a1->subMenuPointer);
}

static void SubGameSelectDestroyAnim(struct MainMenu *a1) {
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    a1->state = SubGameSelectFadeOutWait1;
}

static void SubGameSelectFadeOutWait1(struct MainMenu *a1) {
    a1->state = SubGameSelectFadeOutWait2;
}

static void SubGameSelectFadeOutWait2(struct MainMenu *a1) {
    a1->state = SubGameSelectLaunch;
}

static void MainMenuStartIdleTimeout(struct MainMenu *a1) {
    a1->prevScreen = a1->screen;
    a1->timer = 0;
    m4aMPlayFadeOut(&gMPlayInfo_0, 2);
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    MainMenuDisplayCurScreenSprites(a1);
    a1->ambience(a1);
    a1->state = MainMenuIdleTimeoutFadeOut;
}

static void MainMenuIdleTimeoutFadeOut(struct MainMenu *a1) {
    ++a1->timer;
    gBldRegs.bldY = 0x10 * a1->timer / 0x1E;
    if (a1->timer >= 0x1E)
        a1->state = MainMenuIdleTimeoutStopMusic;
    MainMenuDisplayCurScreenSprites(a1);
    a1->ambience(a1);
}

static void MainMenuIdleTimeoutStopMusic(struct MainMenu *a1) {
    m4aMPlayAllStop();
    a1->timer = 0;
    a1->state = MainMenuIdleTimeoutWaitMusicStop;
}

static void MainMenuIdleTimeoutWaitMusicStop(struct MainMenu *a1) {
    if (++a1->timer > 4)
        a1->state = MainMenuIdleTimeoutDestroyAnim;
}

static void MainMenuIdleTimeoutDestroyAnim(struct MainMenu *a1) {
    if (a1->anim) {
        sub_0802FBE0(a1->anim);
        a1->anim = NULL;
    }
    a1->state = MainMenuIdleTimeoutWait1;
}

static void MainMenuIdleTimeoutWait1(struct MainMenu *a1) {
    a1->state = MainMenuIdleTimeoutWait2;
}

static void MainMenuIdleTimeoutWait2(struct MainMenu *a1) {
    a1->state = MainMenuIdleTimeoutReturnToTitle;
}

static void MainMenuIdleTimeoutReturnToTitle(struct MainMenu *a1 __attribute__((unused))) {
    TaskDestroy(gCurTask);
    CreateTitleScreen();
}

static void MainMenuClearBgTiles(u8 a1) {
    CpuFill16(0, (u16 *)0x6000000 + a1 * 0x2000, 0x4000);
}

static void MainMenuClearBgTilemap(u8 a1) {
    CpuFill16(0x1FF, (u16 *)0x6000000 + (0x1F - a1) * 0x400, 0x800);
}

static bool32 HasCompletionBar(s8 a1) {
    if (a1 < 10)
        return FALSE;
    else
        return TRUE;
}

static void LinkConnectCyclePalette(void) {
    u16 c = gObjPalette[0x38];
    u8 i;

    for (i = 3; i != 0; --i)
        gObjPalette[i + 0x35] = gObjPalette[i + 0x34];
    gObjPalette[0x35] = c; 
    gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
}
