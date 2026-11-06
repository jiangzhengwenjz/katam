#include "code_0802E16C.h"
#include "in_game_interlude.h"
#include "palette_effects.h"
#include "functions.h"
#include "kirby.h"
#include "save.h"
#include "task.h"
#include "constants/languages.h"

static void sub_0802E270(struct Unk_0802E16C *);
static void sub_0802E390(void);
static void nullsub_11(struct Task *);
static void sub_0802E3C8(struct Unk_0802E16C *);
static void sub_0802E3D4(struct Unk_0802E16C *);
static void sub_0802E450(struct Unk_0802E16C *);
static void sub_0802E470(struct Unk_0802E16C *);
static void sub_0802E484(struct Unk_0802E16C *);
static void sub_0802E500(struct Unk_0802E16C *);
static void sub_0802E55C(struct Unk_0802E16C *);

static const u16 gUnk_082EB6D0[NUM_LANGUAGES] = {
    [LANGUAGE_JAPANESE] = 0x309,
    [LANGUAGE_ENGLISH]  = 0x30A,
    [LANGUAGE_GERMAN]   = 0x30B,
    [LANGUAGE_FRENCH]   = 0x30C,
    [LANGUAGE_SPANISH]  = 0x30D,
    [LANGUAGE_ITALIAN]  = 0x30E,
};

void sub_0802E16C(void) {
    struct Task *t = TaskCreate(sub_0802E390, sizeof(struct Unk_0802E16C), 0x1000, TASK_USE_IWRAM | TASK_x0004, nullsub_11);
    struct Unk_0802E16C *var;
    u16 color = RGB_WHITE;
    u16 bgId;

    LoadBgPaletteAndPaletteEffectSource(&color, 0, 1);
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_BG3_ON;
    gDispCnt |= DISPCNT_OBJ_1D_MAP;
    var = TaskGetStructPtr(t);
    var->unk40 = sub_0802E3C8;
    var->unk44 = 0;
    bgId = gUnk_082EB6D0[gLanguage];
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgCntRegs[3] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30);
    BgInit(&var->unk0, 0x6008000, 0, 0x600F000, 0, 0, bgId, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x1B, 0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram(gUnk_082D7850[bgId]->tileset, (u16 *)var->unk0.tilesVram);
    sub_08153060(&var->unk0);
}

static void sub_0802E270(struct Unk_0802E16C *var UNUSED) {
    u16 i;

    for (i = gNumHumanPlayers; i < gNumKirbys; ++i)
        gUnk_02038590[i].unk18 = gUnk_082D8D28[i];
    for (i = 0; i < gNumHumanPlayers; ++i)
        gKirbys[i].base.flags |= 0x1000000;
    if (gAIKirbyState < AI_KIRBY_STATE_CUTSCENE) {
        gAIKirbyState = AI_KIRBY_STATE_CUTSCENE;
        if (!(gUnk_0203AD10 & 0x10)) {
            if (gUnk_0203AD10 & 2) {
                if (gLocalPlayerId == gUnk_0203AD24)
                    UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
                else
                    sub_08031CE4(8);
            } else {
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
            }
        }
    }
    LoadBgPaletteAndPaletteEffectSource(gBgPalette, 0, 0x100);
    SaveObjPaletteColors(0, 0xFF);
    BackupPaletteEffectSourcePalettes();
    m4aMPlayAllStop();
    m4aSoundVSyncOff();
    FinishInGameInterludeScreen();
    TaskDestroy(gCurTask);
}

static void sub_0802E390(void) {
    struct Unk_0802E16C *var = TaskGetStructPtr(gCurTask);

    var->unk40(var);
}

static void nullsub_11(struct Task *t UNUSED) {
}

static void sub_0802E3C8(struct Unk_0802E16C *var) {
    var->unk40 = sub_0802E3D4;
}

static void sub_0802E3D4(struct Unk_0802E16C *var) {
    const struct TiledBg_082D7850 *bg = gUnk_082D7850[gUnk_082EB6D0[gLanguage]];
    u16 color = RGB_WHITE;
    struct PaletteEffect *effect;

    LoadBgPaletteAndPaletteEffectSource(bg->palette, 0, 0x20);
    effect = CreatePaletteFadeFromWhite(7);
    effect->unk8 |= 0x180;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    LoadBgPaletteAndPaletteEffectSource(&color, 0, 1);
    var->unk44 = 0;
    var->unk40 = sub_0802E450;
}

static void sub_0802E450(struct Unk_0802E16C *var) {
    if (var->unk44++ > 0x20)
        var->unk40 = sub_0802E470;
}

static void sub_0802E470(struct Unk_0802E16C *var) {
    var->unk44 = 0;
    var->unk40 = sub_0802E484;
}

static void sub_0802E484(struct Unk_0802E16C *var) {
    bool32 pressed = FALSE;

    if (gUnk_0203AD10 & 2) {
        u16 i;

        for (i = 0; i < gNumHumanPlayers; ++i) {
            if (gUnk_020382D0.unk8[1][i] & (START_BUTTON | A_BUTTON | B_BUTTON)) {
                pressed = TRUE;
                break;
            }
        }
    } else if (gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON)) {
        pressed = TRUE;
    }
    if (pressed)
        var->unk40 = sub_0802E500;
}

static void sub_0802E500(struct Unk_0802E16C *var) {
    u16 color = RGB_WHITE;
    struct PaletteEffect *effect;

    var->unk44 = 0;
    effect = CreatePaletteFadeToWhite(7);
    effect->unk8 |= 0x80;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    LoadBgPaletteAndPaletteEffectSource(&color, 0, 1);
    m4aMPlayFadeOut(&gMPlayInfo_0, 2);
    var->unk40 = sub_0802E55C;
}

static void sub_0802E55C(struct Unk_0802E16C *var) {
    if (var->unk44++ > 0x20)
        var->unk40 = sub_0802E270;
}
