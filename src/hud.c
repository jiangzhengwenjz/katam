#include "global.h"

struct ObjectBase;
struct Kirby;
struct Task;

// Keep inline declarations in ROM order; agbcc emits the surviving
// out-of-line copies after ordinary functions.
// Declare the whole sequence here before hud.h exposes part of it.
inline void LoadHudAbilityIcon(u8 ability);
inline void StartHudAbilityIconExpansion(struct ObjectBase *object);
inline void HoldExpandedHudAbilityIcon(struct ObjectBase *object);
inline void ScheduleHudAbilityIconCollapse(struct ObjectBase *object);
inline void CollapseHudAbilityIcon(struct ObjectBase *object);
static inline void UpdateGameOverHudIndicators(void);
static inline void GameplayHudDestructor(struct Task *task);
static inline void LoadGameplayHudGraphics(void);
static inline void DrawHudLivesLabel(void);
static inline void DrawHudLivesCount(struct Kirby *kirby);
static inline void DrawDemoHud(void);
static inline void DrawHudPhoneIcon(void);
static inline void ClearHudPhoneIcon(void);
static inline void DrawHudNameTiles(void);

#include "data.h"
#include "kirby.h"
#include "main.h"
#include "sprite.h"
#include "level.h"
#include "task.h"
#include "constants/object_types.h"
#include "constants/kirby.h"
#include "constants/languages.h"
#include "constants/songs.h"

#include "hud.h"
#include "palette_effects.h"
#include "functions.h"

extern struct Task *gGameplayHudTask;
static const u16 sHudPalettes[18][16];
static const u32 sHudDecimalDivisors[8];
static const u8 sOffscreenKirbyIconOffsets[4];
static const u8 sOtherRoomKirbyIconX[4];
static const u16 *sAbilityIconPalettes[32];
static const u8 *sAbilityIconGraphics[NUM_LANGUAGES][32];
static const u8 *sHudEnemyAndAreaNameGraphics[NUM_LANGUAGES];
static const u8 *sHudGameOverAndDemoGraphics[NUM_LANGUAGES];
static const u8 *sHudBorrowMessageGraphics[NUM_LANGUAGES];
static const u8 *sHudGiveMessageGraphics[NUM_LANGUAGES];
static const u8 *sHudConnectingMessageGraphics[NUM_LANGUAGES];
static const u8 *sHudAnswerMessageGraphics[NUM_LANGUAGES];
static const u8 *sHudBorrowLifePromptGraphics[NUM_LANGUAGES];
static const u8 *sHudBorrowLifeChoiceGraphics[NUM_LANGUAGES];
extern const u16 gUnk_082EC7A0[2][0x200];
extern const u16 gUnk_083513E8[56];
extern const u16 gUnk_08351458[27][4];
extern const u16 gUnk_08351628[4][4];
static void DrawBorrowLifeNoCursor(void);
static void DrawBorrowLifeYesCursor(void);

static inline void DrawGameOverMessage(void);
static void DrawHudCallMessage(u8);
static void DrawLifeSharingHudMessage(u8);
static void UpdateTrackedHudEnemy(struct GameplayHud *);
static void AnimateHudEnemyHealth(struct GameplayHud *);
static void UpdateGameplayHud(void);
static void sub_08034034(void);
static void DrawHudOtherKirbys(struct GameplayHud *);
static void DrawHudPhoneBattery(struct Kirby *);
static void DrawKirbyHealthBar(struct Kirby *);

static inline void DisplayCallingKirby(struct GameplayHud *hud)
{
    struct Sprite *sprite = &hud->unk20[0][gLocalPlayerId];
    sprite->tilesVram = gKirbys[gUnk_02021580].base.sprite.tilesVram + TILE_OFFSET_4BPP(8);
    sprite->palId = gUnk_02021580;
    sprite->unk1B = 0xFF;
    if (gUnk_0203AD20 & 8) {
        sprite->y = 145;
        sprite->unk8 |= 0x800;
    } else {
        sprite->y = 15;
        sprite->unk8 &= ~0x800;
    }
    sub_08155128(sprite);
    DisplaySprite(sprite);
}

void CreateGameplayHud(void)
{
    struct Task *task;
    struct GameplayHud *tmp, *hud;
    struct Kirby *kirby;
    u8 i;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(28) | BGCNT_TXT256x256;
    CpuFill16(0x184, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x184), TILE_SIZE_4BPP * 0x30);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    task = TaskCreate(UpdateGameplayHud, sizeof(struct GameplayHud), 0xF500, TASK_USE_IWRAM, GameplayHudDestructor);
    gGameplayHudTask = task;
    tmp = TaskGetStructPtr(task);
    hud = tmp;
    CpuFill16(0, hud, sizeof(struct GameplayHud));
    kirby = &gKirbys[gLocalPlayerId];
    if (gUnk_0203AD10 & 0x10) {
        DrawDemoHud();
        task->main = sub_08034034;
        return;
    }
    LoadGameplayHudGraphics();
    LoadHudAbilityIcon(kirby->ability);
    DrawHudLivesLabel();
    DrawHudLivesCount(kirby);
    DrawKirbyHealthBar(kirby);
    DrawHudAbilityIconRows(2);
    DrawHudPhoneIcon();
    DrawHudPhoneBattery(kirby);
    DrawHudNameTiles();
    DrawEnemyHealthOrAreaName(NULL);
    CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
    hud->unk0 = kirby->score;
    hud->unk6 = kirby->hp;
    hud->unk7 = kirby->lives;
    hud->unkC = kirby->battery;
    hud->unkB = gRoomProps[kirby->base.roomId].priorityFlags & 8;
    hud->unk4 = 0x80;
    hud->unk9 = 0;
    hud->unkA = 0;
    hud->unkF = 0;
    hud->unk1C = NULL;
    hud->unkE = 0;
    hud->unk10 = 0;
    hud->unkD = 0;
    for (i = 0; i < gNumKirbys; i++) {
        if (gLocalPlayerId == i) {
            SpriteInitNoFunc(&hud->unk20[0][i], 0, 0x80, 0x2DB, 1, 0, 0xFF, 0x10, 0, 8, 15, 0x40000);
        } else {
            SpriteInitNoFunc(&hud->unk20[0][i], gKirbys[i].base.sprite.tilesVram, 0x80, 0, 0, 0, 0xFF, 0x10,
                gKirbys[i].base.sprite.palId, 0, 0, 0x42000);
        }
        SpriteInitNoFunc(&hud->unk20[1][i], gKirbys[i].base.sprite.tilesVram + TILE_OFFSET_4BPP(4), 0x80, 0, 0, 0, 0xFF, 0x10,
            gKirbys[i].sprites[1].palId, 0, 0, 0x42000);
        SpriteInitNoFunc(&hud->unk20[2][i], gKirbys[i].sprites[0].tilesVram, 0x80, 0, 0, 0, 0xFF, 0x10, 15, 0, 0, 0x42000);
    }
}

static inline bool32 UpdateHudCall(struct GameplayHud *hud, struct Kirby *kirby)
{
    bool32 showCall;
    u8 i;
    u32 dead;
    if (gUnk_02021580 >= gNumKirbys)
        return FALSE;
    if (!(gKirbys[gUnk_02021580].base.unkC & 0x10000) && gKirbys[gUnk_02021580].base.roomId == kirby->base.roomId)
        return FALSE;
    if (!(gRoomProps[kirby->base.roomId].priorityFlags & 0x10))
        return FALSE;
    showCall = TRUE;
    for (i = 1; i <= 8; i++) {
        if (gUnk_0835105C[i] == kirby->base.roomId && *GetStateSlot(STATE_SLOT_SESSION, i, 0)) {
            showCall = FALSE;
            break;
        }
    }
    for (i = 9; i <= 13; i++) {
        if (gUnk_0835105C[i] == kirby->base.roomId && *GetStateSlot(STATE_SLOT_SESSION, i + 3, 0)) {
            showCall = FALSE;
            break;
        }
    }
    if (!showCall)
        return FALSE;
    PlaySfxAlt(&kirby->base, SE_08D5AF5C);
    dead = gKirbys[gUnk_02021580].base.unkC & 0x10000;
    if (!dead || kirby->lives != 0) {
        switch (hud->unkE) {
        case 0:
            if (dead)
                DrawLifeSharingHudMessage(1);
            else
                DrawHudCallMessage(1);
            break;
        case 0x60:
        case 0xE0:
            if (gKirbys[gUnk_02021580].base.unkC & 0x10000)
                DrawLifeSharingHudMessage(0);
            else
                DrawHudCallMessage(0);
            DrawHudPhoneIcon();
            DrawHudPhoneBattery(kirby);
            hud->unkD = 0;
            break;
        case 0x80:
            if (dead)
                DrawLifeSharingHudMessage(2);
            else
                DrawHudCallMessage(2);
            break;
        }
        if (hud->unkE <= 0x5F || (hud->unkE >= 0x80 && hud->unkE <= 0xDF))
            DisplayCallingKirby(hud);
    } else {
        DrawLifeSharingHudMessage(0);
        DrawHudPhoneIcon();
        DrawHudPhoneBattery(kirby);
        hud->unkD = 0;
    }
    hud->unkE++;
    hud->unk10 |= 1;
    return TRUE;
}

static void UpdateGameplayHud(void)
{
    void *tmp = TaskGetStructPtr(gCurTask);
    struct GameplayHud *hud = tmp;
    struct Kirby *kirby = &gKirbys[gLocalPlayerId];
    if (hud->unk6 != kirby->hp)
        DrawKirbyHealthBar(kirby);
    if (hud->unk7 != kirby->lives)
        DrawHudLivesCount(kirby);
    if (!UpdateHudCall(hud, kirby)) {
        if (hud->unk10 & 1) {
            if (kirby->base.unk56 == gLocalPlayerId)
                m4aSongNumStop(SE_08D5AF5C);
            DrawHudCallMessage(0);
            DrawHudPhoneIcon();
            DrawHudPhoneBattery(kirby);
            hud->unkD = 0;
            hud->unkE = 0;
            hud->unk10 &= ~1;
        }
        if (hud->unkC != kirby->battery) {
            DrawHudPhoneBattery(kirby);
            hud->unkD = 0;
        } else if (hud->unkC == 1) {
            hud->unkD++;
            DrawHudPhoneBattery(kirby);
        }
        if (hud->unkB != (gRoomProps[kirby->base.roomId].priorityFlags & 8)) {
            if (gRoomProps[kirby->base.roomId].priorityFlags & 8)
                DrawHudPhoneIcon();
            else
                ClearHudPhoneIcon();
        }
    }
    if (hud->unk1C != NULL)
        UpdateTrackedHudEnemy(hud);
    AnimateHudEnemyHealth(hud);
    if (hud->unk4 <= 0x7D) {
        if (hud->unk4 == 8)
            DrawHudAbilityIconRows(2);
        if (hud->unk4 == 9)
            DrawHudAbilityIconRows(3);
        if (hud->unk4 == 10)
            DrawHudAbilityIconRows(4);
        if (hud->unk4 == 11)
            DrawHudAbilityIconRows(5);
        if (hud->unk4 == 12)
            DrawHudAbilityIconRows(6);
        if (hud->unk4 == 0x79)
            DrawHudAbilityIconRows(5);
        if (hud->unk4 == 0x7A)
            DrawHudAbilityIconRows(4);
        if (hud->unk4 == 0x7B)
            DrawHudAbilityIconRows(3);
        if (hud->unk4 == 0x7C)
            DrawHudAbilityIconRows(2);
        hud->unk4++;
    }
    hud->unk0 = kirby->score;
    hud->unk6 = kirby->hp;
    hud->unk7 = kirby->lives;
    hud->unkC = kirby->battery;
    hud->unkB = gRoomProps[kirby->base.roomId].priorityFlags & 8;
    DrawHudOtherKirbys(hud);
}

static void sub_08034034(void)
{
    u8 i;
    for (i = 0; i < gNumKirbys; i++) {
        if (i != gLocalPlayerId) {
            struct Kirby *kirby = &gKirbys[i];
            if (gKirbys[gLocalPlayerId].base.roomId != kirby->base.roomId) {
                kirby->base.sprite.unk8 |= 0x80000;
                kirby->sprites[1].unk8 |= 0x80000;
                kirby->sprites[0].unk8 |= 0x80000;
            }
        }
    }
}

static void UpdateBorrowLifeHud(void)
{
    void *tmp = TaskGetStructPtr(gCurTask);
    struct GameplayHud *hud = tmp;
    struct Kirby *kirby = &gKirbys[gLocalPlayerId];
    bool32 showCall;
    u8 i;
    if (kirby->base.roomId != 0x397) {
        if (kirby->unkD9) {
            DrawBorrowLifeNoCursor();
        } else {
            DrawBorrowLifeYesCursor();
        }
    }
    if (hud->unkC != kirby->battery)
        DrawHudPhoneBattery(kirby);
    if (gRoomProps[kirby->base.roomId].priorityFlags & 8) {
        DrawHudPhoneIcon();
    } else {
        ClearHudPhoneIcon();
    }
    DrawHudOtherKirbys(hud);
    hud->unkC = kirby->battery;
    hud->unkB = gRoomProps[kirby->base.roomId].priorityFlags & 8;
    if ((gUnk_02021580 >= gNumKirbys)
        || (!(gKirbys[gUnk_02021580].base.unkC & 0x10000) && gKirbys[gUnk_02021580].base.roomId == kirby->base.roomId)
        || (!(gRoomProps[kirby->base.roomId].priorityFlags & 0x10))) {
        showCall = FALSE;
    } else {
        showCall = TRUE;
        for (i = 1; i <= 8; i++) {
            if (gUnk_0835105C[i] == kirby->base.roomId && *GetStateSlot(STATE_SLOT_SESSION, i, 0)) {
                showCall = FALSE;
                break;
            }
        }
        for (i = 9; i <= 13; i++) {
            if (gUnk_0835105C[i] == kirby->base.roomId && *GetStateSlot(STATE_SLOT_SESSION, i + 3, 0)) {
                showCall = FALSE;
                break;
            }
        }
    }

    if (showCall) {
        PlaySfxAlt(&kirby->base, SE_08D5AF5C);
        hud->unkE++;
        hud->unk10 |= 1;
    } else {
        if (hud->unk10 & 1) {
            if (kirby->base.unk56 == gLocalPlayerId)
                m4aSongNumStop(SE_08D5AF5C);
            hud->unkE = 0;
            hud->unk10 &= ~1;
        }
    }
}

static void DrawHudOtherKirbys(struct GameplayHud *hud)
{
    struct Sprite savedSprite;
    u8 i = 0, otherKirbyNumber = 0;
    for (; i < gNumKirbys; i++) {
        struct Kirby *kirby;
        struct Sprite *body, *ability, *effect;
        if (i == gLocalPlayerId)
            continue;
        otherKirbyNumber++;
        kirby = &gKirbys[i];
        body = &hud->unk20[0][i];
        ability = &hud->unk20[1][i];
        effect = &hud->unk20[2][i];
        if (gKirbys[gLocalPlayerId].base.roomId == kirby->base.roomId) {
            if (sub_0803D938(&kirby->base)) {
                struct LevelInfo *level = &gCurLevelInfo[gLocalPlayerId];
                body->animId = 0x2DC;
                body->variant = 0;
                if (level->viewportPosition.x + 0x600 > kirby->base.x)
                    body->x = 6;
                else if (level->viewportPosition.x + 0xE800 < kirby->base.x)
                    body->x = 0xE8;
                else
                    body->x = (kirby->base.x - level->viewportPosition.x) >> 8;
                if (level->viewportPosition.y + 0xA00 > kirby->base.y)
                    body->y = 10;
                else if (level->viewportPosition.y + 0x8C00 < kirby->base.y)
                    body->y = 0x8C;
                else
                    body->y = (kirby->base.y - level->viewportPosition.y) >> 8;
                if (body->x <= 21) {
                    if (body->y <= 25) {
                        body->variant = 3;
                        if (body->y < sOffscreenKirbyIconOffsets[otherKirbyNumber] + 10)
                            body->y = sOffscreenKirbyIconOffsets[otherKirbyNumber] + 10;
                    } else if (body->y > 124) {
                        body->variant = 7;
                        if (body->y > 140 - sOffscreenKirbyIconOffsets[otherKirbyNumber])
                            body->y = 140 - sOffscreenKirbyIconOffsets[otherKirbyNumber];
                    } else {
                        body->variant = 1;
                    }
                    body->x += sOffscreenKirbyIconOffsets[otherKirbyNumber];
                } else if (body->x > 216) {
                    if (body->y <= 25) {
                        body->variant = 2;
                        if (body->y < sOffscreenKirbyIconOffsets[otherKirbyNumber] + 10)
                            body->y = sOffscreenKirbyIconOffsets[otherKirbyNumber] + 10;
                    } else if (body->y > 124) {
                        body->variant = 6;
                        if (body->y > 140 - sOffscreenKirbyIconOffsets[otherKirbyNumber])
                            body->y = 140 - sOffscreenKirbyIconOffsets[otherKirbyNumber];
                    } else {
                        body->variant = 0;
                    }
                    body->x -= sOffscreenKirbyIconOffsets[otherKirbyNumber];
                } else {
                    if (body->y <= 25) {
                        body->variant = 4;
                        body->y += sOffscreenKirbyIconOffsets[otherKirbyNumber];
                    } else {
                        body->variant = 5;
                        body->y -= sOffscreenKirbyIconOffsets[otherKirbyNumber];
                    }
                }
                if (hud->unk15[i] != 1) {
                    ability->unk1B = 0xFF;
                    body->unk1B = -1;
                    effect->animId = 0;
                    effect->variant = 0;
                    hud->unk15[i] = 1;
                }
                if (!(gUnk_0203AD20 & 8))
                    body->unk8 &= ~0x800;
                kirby->base.sprite.unk8 |= 0x80000;
                kirby->sprites[1].unk8 |= 0x80000;
                kirby->sprites[0].unk8 |= 0x80000;
                sub_08155128(body);
                if (!(gUnk_0203AD10 & 0x20) && kirby->hp > 0
                    && (u16)(kirby->base.roomId - 0x394) > 3
                    && kirby->base.roomId != 0x38D && kirby->base.roomId <= 0x3D3)
                    DisplaySprite(body);
            } else if (hud->unk15[i]) {
                kirby->base.sprite.unk8 &= ~0x80000;
                kirby->sprites[1].unk8 &= ~0x80000;
                kirby->sprites[0].unk8 &= ~0x80000;
                effect->animId = 0;
                effect->variant = 0;
                CpuCopy32(&kirby->base.sprite, &savedSprite, sizeof(savedSprite));
                sub_0815521C(&savedSprite, kirby->base.header.unk1);
                CpuCopy32(&kirby->sprites[1], &savedSprite, sizeof(savedSprite));
                sub_0815521C(&savedSprite, kirby->base.header.unk1);
                hud->unk15[i] = 0;
            }
        } else {
            kirby->base.sprite.unk8 &= ~0x80000;
            kirby->sprites[1].unk8 &= ~0x80000;
            kirby->sprites[0].unk8 &= ~0x80000;
            if (gUnk_0203AD20 & 8) {
                body->x = sOtherRoomKirbyIconX[otherKirbyNumber];
                body->y = 145;
                ability->x = body->x;
                ability->y = body->y;
                effect->x = body->x;
                effect->y = body->y - 6;
                body->unk8 |= 0x800;
                ability->unk8 |= 0x800;
                effect->unk8 |= 0x800;
            } else {
                body->x = sOtherRoomKirbyIconX[otherKirbyNumber];
                body->y = 15;
                ability->x = body->x;
                ability->y = body->y;
                effect->x = body->x;
                effect->y = body->y - 6;
                body->unk8 &= ~0x800;
                ability->unk8 &= ~0x800;
                effect->unk8 &= ~0x800;
            }
            if (hud->unk15[i] != 2) {
                ability->unk1B = 0xFF;
                body->unk1B = -1;
                effect->animId = 0;
                effect->variant = 0;
                hud->unk15[i] = 2;
            }
            if (!(gRoomProps[kirby->base.roomId].priorityFlags & 8)) {
                body->animId = 0x2DB;
                body->variant = 0;
                ability->animId = 0;
                ability->variant = 0;
            } else {
                body->animId = gUnk_08350AAC[kirby->ability].animId;
                body->variant = gUnk_08350AAC[kirby->ability].variant;
                ability->animId = gUnk_08350B30[kirby->ability].animId;
                ability->variant = gUnk_08350B30[kirby->ability].variant;
            }
            if (kirby->base.unkC & 0x400) {
                effect->animId = 0x2B8;
                effect->variant = 0;
            }
            if (effect->animId != 0) {
                if (!sub_08155128(effect)) {
                    if (effect->variant == 0)
                        effect->variant = 1;
                    else {
                        effect->animId = 0;
                        effect->variant = 0;
                    }
                }
                if (!(gUnk_0203AD10 & 0x20) && effect->animId != 0)
                    DisplaySprite(effect);
            }
            if (ability->animId != 0) {
                sub_08155128(ability);
                if (!(gUnk_0203AD10 & 0x20))
                    DisplaySprite(ability);
            }
            sub_08155128(body);
            if (!(gUnk_0203AD10 & 0x20))
                DisplaySprite(body);
            kirby->base.sprite.unk8 |= 0x80000;
            kirby->sprites[1].unk8 |= 0x80000;
            kirby->sprites[0].unk8 |= 0x80000;
        }
    }
}

static void DrawHudCallMessage(u8 message)
{
    u16 *tiles = BG_SCREEN_ADDR(28);
    u8 y, x;
    switch (message) {
    case 0:
    default:
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 14; x++)
                *tiles++ = 0xF184;
            tiles += 18;
        }
        break;
    case 1:
        CpuCopy16(sHudConnectingMessageGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1E3), TILE_SIZE_4BPP * 0x1D);
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 14; x++)
                *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
            tiles += 18;
        }
        break;
    case 2:
        CpuCopy16(sHudAnswerMessageGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1E3), TILE_SIZE_4BPP * 0x1D);
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 14; x++)
                *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
            tiles += 18;
        }
        break;
    }
}

static void DrawLifeSharingHudMessage(u8 message)
{
    u16 *tiles = BG_SCREEN_ADDR(28);
    u8 y, x;
    switch (message) {
    case 0:
    default:
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 14; x++)
                *tiles++ = 0xF184;
            tiles += 18;
        }
        break;
    case 1:
        CpuCopy16(sHudBorrowMessageGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1E3), TILE_SIZE_4BPP * 0x1D);
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 14; x++)
                *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
            tiles += 18;
        }
        break;
    case 2:
        CpuCopy16(sHudGiveMessageGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1E3), TILE_SIZE_4BPP * 0x1D);
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 14; x++)
                *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
            tiles += 18;
        }
        break;
    }
}

static void DrawBorrowLifePrompt(void)
{
    struct Kirby *kirby = &gKirbys[gLocalPlayerId];
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x190;
    u8 y, x;
    CpuCopy16(sHudBorrowLifePromptGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x185), TILE_SIZE_4BPP * 0x20);
    CpuCopy16(sHudBorrowLifeChoiceGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1E3), TILE_SIZE_4BPP * 0x1D);
    if (gKirbys[gLocalPlayerId].base.roomId != 0x397) {
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 16; x++)
                *tiles++ = (y * 16 + (x + 0x185)) | 0xF000;
            tiles += 16;
        }
        tiles = BG_SCREEN_ADDR(28) + 0x294;
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 6; x++)
                *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
            tiles += 26;
        }
        tiles = BG_SCREEN_ADDR(28) + 0x354;
        for (y = 0; y < 2; y++) {
            for (x = 6; x < 12; x++)
                *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
            tiles += 26;
        }
        if (gKirbys[gLocalPlayerId].unkD9)
            DrawBorrowLifeNoCursor();
        else
            DrawBorrowLifeYesCursor();
    }
    if (gRoomProps[gKirbys[gLocalPlayerId].base.roomId].priorityFlags & 8)
        DrawHudPhoneIcon();
    else
        ClearHudPhoneIcon();
    DrawHudPhoneBattery(kirby);
}

static void DrawBorrowLifeNoCursor(void)
{
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x350;
    u8 y, x;
    for (y = 0; y < 2; y++) {
        for (x = 12; x < 14; x++)
            *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
        tiles += 30;
    }
    tiles = BG_SCREEN_ADDR(28) + 0x290;
    for (y = 0; y < 2; y++) {
        for (x = 12; x < 14; x++)
            *tiles++ = 0xF184;
        tiles += 30;
    }
}

static void DrawBorrowLifeYesCursor(void)
{
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x290;
    u8 y, x;
    for (y = 0; y < 2; y++) {
        for (x = 12; x < 14; x++)
            *tiles++ = (y * 15 + (x + 0x1E3)) | 0xF000;
        tiles += 30;
    }
    tiles = BG_SCREEN_ADDR(28) + 0x350;
    for (y = 0; y < 2; y++) {
        for (x = 12; x < 14; x++)
            *tiles++ = 0xF184;
        tiles += 30;
    }
}

void DrawHudAbilityIconRows(u8 rows)
{
    struct GameplayHud *hud;
    u16 *tiles;
    u16 y;
    u8 palette = 0xE;
    if (!(gUnk_0203AD10 & 0x10)) {
        hud = TaskGetStructPtr(gGameplayHudTask);
        hud->unk14 = rows;
        tiles = BG_SCREEN_ADDR(28) + 0x380;
        for (y = 0; y < 6 - rows; y++) {
            *tiles++ = 0x184;
            *tiles++ = 0x184;
            *tiles++ = 0x184;
            *tiles++ = 0x184;
            *tiles = 0x184;
            tiles += 28;
        }
        for (y = 0; y < rows; y++) {
            *tiles++ = (y * 5 + 0x1C5) | (palette << 12);
            *tiles++ = (y * 5 + 0x1C6) | (palette << 12);
            *tiles++ = (y * 5 + 0x1C7) | (palette << 12);
            *tiles++ = (y * 5 + 0x1C8) | (palette << 12);
            *tiles = (y * 5 + 0x1C9) | (palette << 12);
            tiles += 28;
        }
    }
}

static void DrawHudPhoneBattery(struct Kirby *kirby)
{
    struct GameplayHud *hud = TaskGetStructPtr(gGameplayHudTask);
    s16 left, right;
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x4;
    switch (kirby->battery) {
    case 0:
        left = 0x30;
        right = 0x31;
        break;
    case 1:
        if (hud->unkD & 0x20) {
            left = 0x35;
            right = 0x37;
        } else {
            left = 0x35;
            right = 0x36;
        }
        break;
    case 2:
        left = 0x34;
        right = 0x33;
        break;
    default:
        left = 0x32;
        right = 0x33;
        break;
    }
    *tiles++ = (0x185 + left) | 0xF000;
    *tiles = (0x185 + right) | 0xF000;
    tiles += 31;
    *tiles++ = (0x185 + left) | 0xF800;
    *tiles = (0x185 + right) | 0xF800;
}

struct GameplayHud *TryTrackHudEnemy(struct Object *object)
{
    struct GameplayHud *tmp = TaskGetStructPtr(gGameplayHudTask), *hud = tmp;
    struct Object *tracked;
    s16 scaledHp;

    if (gUnk_0203AD10 & 0x10)
        return NULL;
    // These are comparisons against the calling task, as in the original.
    if (gCurTask->main == UpdateGameOverHudIndicators)
        return NULL;
    if (gCurTask->main == UpdateBorrowLifeHud)
        return NULL;
    // TODO: Original UB: object is dereferenced before its null check; preserve that ordering.
    if (!(ObjType0To37(object) || ObjType38To52(object) || ObjType53To5C(object) || object->type == OBJ_EMPTY_5D))
        return NULL;
    if (gKirbys[gLocalPlayerId].base.roomId != object->base.roomId)
        return NULL;
    if (hud->unk1C == object)
        return NULL;
    if (object == NULL) {
        hud->unk1C = object;
        DrawEnemyHealthOrAreaName(NULL);
        return NULL;
    }
    if (object->unk80 <= 0)
        return NULL;
    if (object->base.flags & 0x1000)
        return NULL;
    hud->unk1C = object;
    CpuCopy16(sHudEnemyAndAreaNameGraphics[gLanguage] + object->type * 0x100, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 0x8);
    hud->unkF = 0;
    tracked = hud->unk1C;
    if (ObjType38To52(tracked)) {
        if (tracked->type == OBJ_DARK_MIND_FORM_1)
            scaledHp = tracked->unk80 * gUnk_08351628[tracked->subtype][gNumHumanPlayers - 1];
        else
            scaledHp = tracked->unk80 * gUnk_08351458[ObjTypeAltIdx(tracked)][gNumHumanPlayers - 1];
        hud->unkA = scaledHp >> 8;
        if (scaledHp & 0xFF)
            hud->unkA++;
    } else {
        // TODO: Original UB: types 0x53-0x5D can index beyond the 56-entry scale table.
        scaledHp = tracked->unk80 * gUnk_083513E8[tracked->type];
        hud->unkA = scaledHp >> 8;
        if (scaledHp & 0xFF)
            hud->unkA++;
    }
    hud->unk9 = hud->unkA;
    DrawEnemyHealthOrAreaName(hud);
    return hud;
}

void DrawEnemyHealthOrAreaName(struct GameplayHud *hud)
{
    u16 *tiles;
    if (gUnk_0203AD10 & 0x10)
        return;
    if (gGameplayHudTask->main == UpdateGameOverHudIndicators || gGameplayHudTask->main == UpdateBorrowLifeHud)
        return;
    tiles = BG_SCREEN_ADDR(28) + 0x4E8;
    if (hud == NULL) {
        u16 index = 0x20;
        CpuCopy16(sHudEnemyAndAreaNameGraphics[gLanguage] + (gUnk_08D6CD0C[gKirbys[gLocalPlayerId].base.roomId]->unk46 * 0x200 + 0x5300),
            BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
        CpuCopy16(sHudEnemyAndAreaNameGraphics[gLanguage] + (gUnk_08D6CD0C[gKirbys[gLocalPlayerId].base.roomId]->unk46 * 0x200 + 0x5400),
            BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1A5), TILE_SIZE_4BPP * 8);
        *tiles++ = 0xF184;
        *tiles++ = 0xF184;
        *tiles++ = (index++ + 0x185) | 0xF000;
        *tiles++ = (index++ + 0x185) | 0xF000;
        *tiles++ = (index++ + 0x185) | 0xF000;
        *tiles++ = (index++ + 0x185) | 0xF000;
        *tiles++ = (index++ + 0x185) | 0xF000;
        *tiles++ = (index++ + 0x185) | 0xF000;
        *tiles++ = (index++ + 0x185) | 0xF000;
        *tiles = (index + 0x185) | 0xF000;
    } else {
        s16 hp;
        u16 cells;
        CpuCopy16(gUnk_082EC7A0[1], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1A5), TILE_SIZE_4BPP * 0x8);
        *tiles++ = 0xF1A5;
        hp = hud->unk9;
        for (cells = 8; cells != 0; cells--) {
            if (hp & 0xF8) {
                *tiles++ = 0xF1A7;
                hp -= 8;
            } else if (hp & 7) {
                *tiles++ = (0x1AF - hp) | 0xF000;
                hp = 0;
            } else {
                *tiles++ = 0xF1AF;
            }
        }
        *tiles = 0xF1A6;
    }
}

static void DrawKirbyHealthBar(struct Kirby *kirby)
{
    s8 capacity, hp;
    u16 i;
    s8 cells;
    if (gUnk_0203AD10 & 0x10)
        return;
    capacity = kirby->maxHp;
    hp = kirby->hp;
    if (hp < 0)
        hp = 0;
    cells = (capacity >> 1) + (capacity & 1);
    for (i = 0; i < cells; i++) {
        u32 column = i + 13;
        u16 *tiles = BG_SCREEN_ADDR(28) + 0x480;
        tiles += column;
        if (hp & 0xFE) {
            *tiles = 0xF192;
            tiles = BG_SCREEN_ADDR(28) + 0x4C0;
            tiles += column;
            *tiles = 0xF1A2;
            hp -= 2;
            capacity -= 2;
        } else if (hp & 1) {
            if (!(capacity & 0xFE) && (capacity & 1)) {
                *tiles = 0xF1B2;
                tiles = BG_SCREEN_ADDR(28) + 0x4C0;
                tiles += column;
                *tiles = 0xF1A4;
            } else {
                *tiles = 0xF193;
                tiles += 32;
                *tiles = 0xF1A3;
            }
            hp--;
            capacity -= 2;
        } else {
            if (!(capacity & 0xFE) && (capacity & 1)) {
                *tiles = 0xF9B4;
                tiles = BG_SCREEN_ADDR(28) + 0x4C0;
                tiles += column;
                *tiles = 0xF1B4;
            } else {
                *tiles = 0xF194;
                tiles += 32;
                *tiles = 0xF994;
            }
            capacity -= 2;
        }
    }
    if (!(kirby->maxHp & 1)) {
        u32 column = i + 13;
        u16 *tiles = BG_SCREEN_ADDR(28) + 0x480;
        tiles += column;
        *tiles = 0xF9B3;
        tiles = BG_SCREEN_ADDR(28) + 0x4C0;
        tiles += column;
        *tiles = 0xF1B3;
    }
}

static void UpdateTrackedHudEnemy(struct GameplayHud *hud)
{
    struct Object *object = hud->unk1C;
    struct Object *tracked;
    u32 flags;
    if (object->unk80 <= 0) {
        hud->unkA = 0;
    } else {
        s16 scaledHp;
        if (ObjType38To52(object)) {
            if (object->type == OBJ_DARK_MIND_FORM_1)
                scaledHp = object->unk80 * gUnk_08351628[object->subtype][gNumHumanPlayers - 1];
            else
                scaledHp = object->unk80 * gUnk_08351458[ObjTypeAltIdx(object)][gNumHumanPlayers - 1];
            hud->unkA = scaledHp >> 8;
            if (scaledHp & 0xFF)
                hud->unkA++;
        } else {
            // TODO: Original UB: types 0x53-0x5D can index beyond the 56-entry scale table.
            scaledHp = object->unk80 * gUnk_083513E8[object->type];
            hud->unkA = scaledHp >> 8;
            if (scaledHp & 0xFF)
                hud->unkA++;
        }
    }
    flags = hud->unk1C->base.flags & 0x1000;
    tracked = hud->unk1C;
    if (flags) {
        if (tracked->unk80 <= 0) {
            hud->unkA = 0;
        } else {
            CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
            hud->unk9 = 0;
            hud->unkA = 0;
            DrawEnemyHealthOrAreaName(NULL);
        }
        hud->unk1C = NULL;
        return;
    }
    if (gKirbys[gLocalPlayerId].base.roomId != tracked->base.roomId || gKirbys[gLocalPlayerId].hp <= 0 || (gUnk_0203AD10 & 0x20)) {
        CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
        hud->unk9 = 0;
        hud->unkA = 0;
        DrawEnemyHealthOrAreaName(NULL);
        hud->unk1C = NULL;
        return;
    }
    // The clearing block is written out in both arms, as in the original (the copies are cross-jumped).
    if (ObjType38To52(tracked)) {
        if (abs(gCurLevelInfo[gLocalPlayerId].viewportPosition.x + 0x7800 - tracked->base.x) > 0xF000
            || abs(gCurLevelInfo[gLocalPlayerId].viewportPosition.y + 0x5000 - tracked->base.y) > 0xC800) {
            CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
            hud->unk9 = 0;
            hud->unkA = 0;
            DrawEnemyHealthOrAreaName(NULL);
            hud->unk1C = NULL;
        }
    } else {
        if (abs(gCurLevelInfo[gLocalPlayerId].viewportPosition.x + 0x7800 - tracked->base.x) > 0xA800
            || abs(gCurLevelInfo[gLocalPlayerId].viewportPosition.y + 0x5000 - tracked->base.y) > 0x8000) {
            CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
            hud->unk9 = 0;
            hud->unkA = 0;
            DrawEnemyHealthOrAreaName(NULL);
            hud->unk1C = NULL;
        }
    }
}

static void AnimateHudEnemyHealth(struct GameplayHud *hud)
{
    if (hud->unkF != 0) {
        u32 paused = gUnk_03000510.unk4 & ((1 << gLocalPlayerId) | 0x10);
        if (!paused) {
            if (++hud->unkF > 48) {
                CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
                hud->unkF = 0;
                DrawEnemyHealthOrAreaName(NULL);
                hud->unk1C = NULL;
            }
        }
    }
    if (hud->unk9 != hud->unkA) {
        if (hud->unk9 > hud->unkA) {
            s32 step = (hud->unk9 - hud->unkA) >> 3;
            if (step)
                hud->unk9 -= step;
            else
                hud->unk9--;
            if (hud->unk9 <= 0) {
                hud->unk9 = 0;
                hud->unkF = 1;
            }
        } else if (hud->unk9 < hud->unkA && (gUnk_0203AD40 & 7)) {
            struct Kirby *kirby;
            hud->unk9++;
            kirby = gKirbys;
            kirby += gLocalPlayerId;
            PlaySfxInternal(&kirby->base, SE_08D5AD9C);
        }
        DrawEnemyHealthOrAreaName(hud);
    }
}

void LoadAbilityIconGraphicsAndPalette(void *tilesVram, u8 paletteId, u8 abilityIconId)
{
    LoadBgPaletteAndPaletteEffectSource(sAbilityIconPalettes[abilityIconId], paletteId * 16, 16);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    if (abilityIconId > KIRBY_ABILITY_COUNT) {
        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)sAbilityIconGraphics[gLanguage][abilityIconId];
        gUnk_03002EC0[gUnk_030039A4].unk4 = (uintptr_t)tilesVram;
        gUnk_03002EC0[gUnk_030039A4].unk8 = 0x140;
    } else {
        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)sAbilityIconGraphics[gLanguage][abilityIconId];
        gUnk_03002EC0[gUnk_030039A4].unk4 = (uintptr_t)tilesVram;
        gUnk_03002EC0[gUnk_030039A4].unk8 = 0x3C0;
    }
    gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
}

inline void LoadHudAbilityIcon(u8 ability)
{
    LoadAbilityIconGraphicsAndPalette(BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1C5), 0xE, ability);
}

inline void StartHudAbilityIconExpansion(struct ObjectBase *object)
{
    struct GameplayHud *hud = TaskGetStructPtr(gGameplayHudTask);
    if (!(gUnk_0203AD10 & 0x10) && object->unk56 == gLocalPlayerId) {
        hud->unk4 = 0;
        DrawHudAbilityIconRows(2);
    }
}

inline void HoldExpandedHudAbilityIcon(struct ObjectBase *object)
{
    struct GameplayHud *hud = TaskGetStructPtr(gGameplayHudTask);
    if (!(gUnk_0203AD10 & 0x10) && object->unk56 == gLocalPlayerId) {
        hud->unk4 = 0x80;
        DrawHudAbilityIconRows(6);
    }
}

inline void ScheduleHudAbilityIconCollapse(struct ObjectBase *object)
{
    struct GameplayHud *hud = TaskGetStructPtr(gGameplayHudTask);
    if (!(gUnk_0203AD10 & 0x10) && object->unk56 == gLocalPlayerId)
        hud->unk4 = 0xC;
}

inline void CollapseHudAbilityIcon(struct ObjectBase *object)
{
    struct GameplayHud *hud = TaskGetStructPtr(gGameplayHudTask);
    if (!(gUnk_0203AD10 & 0x10) && object->unk56 == gLocalPlayerId)
        hud->unk4 = 0x7C;
}

static inline void UpdateGameOverHudIndicators(void)
{
    struct GameplayHud *hud = TaskGetStructPtr(gCurTask);
    DrawHudOtherKirbys(hud);
}

static inline void GameplayHudDestructor(struct Task *task UNUSED)
{
}

static inline void LoadGameplayHudGraphics(void)
{
    u8 color = gKirbys[gLocalPlayerId].color;
    void *tiles = BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x185);
    LoadBgPaletteAndPaletteEffectSource(sHudPalettes[color], 0xF0, ARRAY_COUNT(sHudPalettes[color]));
    CpuCopy16(gUnk_082EC7A0, tiles, TILE_SIZE_4BPP * 0x38);
    tiles += TILE_OFFSET_4BPP(0x38);
    CpuCopy16(sHudEnemyAndAreaNameGraphics[gLanguage], tiles, TILE_SIZE_4BPP * 8);
}

static inline void DrawHudLivesLabel(void)
{
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x48E;
    *tiles++ = 0xF18F;
    *tiles++ = 0xF190;
    *tiles = 0xF191;
    tiles += 30;
    *tiles++ = 0xF19F;
    *tiles++ = 0xF59F;
    *tiles = 0xF1A1;
}

static inline void DrawHudLivesCount(struct Kirby *kirby)
{
    u8 lives = kirby->lives;
    u16 i;
    if (lives > 99)
        lives = 99;
    for (i = 0; i < 2; i++) {
        u32 column = i + 10;
        u16 *tiles = (u16 *)(BG_SCREEN_ADDR(28) + 0x480) + column;
        u32 quotient;
        u16 digit;
        quotient = lives / sHudDecimalDivisors[i + 6];
        digit = quotient;
        lives -= sHudDecimalDivisors[i + 6] * quotient;
        *tiles = (digit + 0x185) | 0xF000;
        tiles = (u16 *)(BG_SCREEN_ADDR(28) + 0x4C0) + column;
        *tiles = (digit + 0x195) | 0xF000;
    }
}

static inline void DrawDemoHud(void)
{
    u8 color = gKirbys[gLocalPlayerId].color;
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x198;
    u8 i;
    LoadBgPaletteAndPaletteEffectSource(sHudPalettes[color], 0xF0, ARRAY_COUNT(sHudPalettes[color]));
    CpuCopy16(sHudGameOverAndDemoGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x185), TILE_SIZE_4BPP * 0x40);
    for (i = 0; i < 6; i++)
        *tiles++ = (i + 0x1B5) | 0xF000;
}

static inline void DrawHudPhoneIcon(void)
{
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x2;
    tiles[0] = 0xF1B0;
    tiles[32] = 0xF1B1;
}

static inline void ClearHudPhoneIcon(void)
{
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x2;
    *tiles = 0xF184;
    tiles += 32;
    *tiles = 0xF184;
}

static inline void DrawHudNameTiles(void)
{
    if (!(gUnk_0203AD10 & 0x10)) {
        u16 *tiles = BG_SCREEN_ADDR(28) + 0x4AA;
        u16 i;
        for (i = 0; i < 8; i++)
            *tiles++ = (i + 0x1BD) | 0xF000;
    }
}

inline void ShowGameOverHud(void)
{
    if (!(gUnk_0203AD10 & 0x10)) {
        CpuFill16(0x184, BG_SCREEN_ADDR(28), 0x500);
        DrawGameOverMessage();
        gGameplayHudTask->main = UpdateGameOverHudIndicators;
    }
}

inline void ShowBorrowLifeHud(void)
{
    if (!(gUnk_0203AD10 & 0x10)) {
        CpuFill16(0x184, BG_SCREEN_ADDR(28), 0x500);
        DrawBorrowLifePrompt();
        gGameplayHudTask->main = UpdateBorrowLifeHud;
    }
}

inline void RestoreHudAfterLifeBorrow(void)
{
    if (!(gUnk_0203AD10 & 0x10) && gGameplayHudTask->main == UpdateBorrowLifeHud) {
        CpuFill16(0x184, BG_SCREEN_ADDR(28), 0x500);
        gGameplayHudTask->main = UpdateGameplayHud;
        RefreshGameplayHud(&gKirbys[gLocalPlayerId]);
    }
}

inline void ClearBorrowLifeHud(struct ObjectBase *object UNUSED)
{
    if (!(gUnk_0203AD10 & 0x10) && gGameplayHudTask->main == UpdateBorrowLifeHud) {
        CpuFill16(0x184, BG_SCREEN_ADDR(28), 0x500);
        DrawHudPhoneBattery(&gKirbys[gLocalPlayerId]);
    }
}

inline void ExpireHudEnemyHealthDelay(void)
{
    struct GameplayHud *hud = TaskGetStructPtr(gGameplayHudTask);
    if (hud != NULL && hud->unkF != 0)
        hud->unkF = 0x31;
}

static inline void DrawGameOverMessage(void)
{
    u16 *tiles = BG_SCREEN_ADDR(28) + 0x18E;
    u8 y, x;
    CpuCopy16(sHudGameOverAndDemoGraphics[gLanguage], BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x185), TILE_SIZE_4BPP * 0x40);
    for (y = 0; y < 3; y++) {
        for (x = 0; x < 16; x++)
            *tiles++ = (y * 16 + (x + 0x185)) | 0xF000;
        tiles += 16;
    }
}

void RefreshGameplayHud(struct Kirby *kirby)
{
    u8 color = gKirbys[gLocalPlayerId].color;
    struct GameplayHud *tmp = TaskGetStructPtr(gGameplayHudTask), *hud = tmp;
    bool32 showCall;
    u8 i;
    CpuFill16(0x184, BG_SCREEN_ADDR(28), 0x500);
    if (gUnk_0203AD10 & 0x10) {
        DrawDemoHud();
        return;
    }
    LoadBgPaletteAndPaletteEffectSource(sHudPalettes[color], 0xF0, ARRAY_COUNT(sHudPalettes[color]));
    if (gGameplayHudTask->main == UpdateGameOverHudIndicators) {
        DrawGameOverMessage();
        return;
    }
    LoadGameplayHudGraphics();
    if (gGameplayHudTask->main == UpdateBorrowLifeHud) {
        DrawBorrowLifePrompt();
        return;
    }
    if (gKirbys[gLocalPlayerId].unkDB)
        LoadHudAbilityIcon(gKirbys[gLocalPlayerId].unkDB);
    else
        LoadHudAbilityIcon(gKirbys[gLocalPlayerId].ability);
    DrawHudLivesLabel();
    DrawHudLivesCount(&gKirbys[gLocalPlayerId]);
    DrawKirbyHealthBar(&gKirbys[gLocalPlayerId]);
    DrawHudAbilityIconRows(hud->unk14);
    if (gRoomProps[gKirbys[gLocalPlayerId].base.roomId].priorityFlags & 8)
        DrawHudPhoneIcon();
    else
        ClearHudPhoneIcon();
    DrawHudPhoneBattery(&gKirbys[gLocalPlayerId]);
    DrawHudNameTiles();
    if (hud->unk1C != NULL) {
        CpuCopy16(sHudEnemyAndAreaNameGraphics[gLanguage] + hud->unk1C->type * 0x100, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 0x8);
        DrawEnemyHealthOrAreaName(hud);
    } else {
        CpuFill16(0, BG_CHAR_ADDR(1) + TILE_OFFSET_4BPP(0x1BD), TILE_SIZE_4BPP * 8);
        DrawEnemyHealthOrAreaName(NULL);
    }
    if (gUnk_02021580 >= gNumKirbys)
        return;
    if (!(gKirbys[gUnk_02021580].base.unkC & 0x10000) && gKirbys[gUnk_02021580].base.roomId == kirby->base.roomId)
        return;
    if (!(gRoomProps[kirby->base.roomId].priorityFlags & 0x10))
        return;
    showCall = TRUE;
    for (i = 1; i <= 8; i++) {
        if (gUnk_0835105C[i] == kirby->base.roomId && *GetStateSlot(STATE_SLOT_SESSION, i, 0)) {
            showCall = FALSE;
            break;
        }
    }
    for (i = 9; i <= 13; i++) {
        if (gUnk_0835105C[i] == kirby->base.roomId && *GetStateSlot(STATE_SLOT_SESSION, i + 3, 0)) {
            showCall = FALSE;
            break;
        }
    }
    if (!showCall)
        return;
    if ((gKirbys[gUnk_02021580].base.unkC & 0x10000) && kirby->lives == 0) {
    } else {
        if (hud->unkE <= 0x5F) {
            if (gKirbys[gUnk_02021580].base.unkC & 0x10000)
                DrawLifeSharingHudMessage(1);
            else
                DrawHudCallMessage(1);
        } else if ((hud->unkE >= 0x80 && hud->unkE <= 0xDF)) {
            if (gKirbys[gUnk_02021580].base.unkC & 0x10000)
                DrawLifeSharingHudMessage(2);
            else
                DrawHudCallMessage(2);
        } else {
            if (gKirbys[gUnk_02021580].base.unkC & 0x10000)
                DrawLifeSharingHudMessage(0);
            else
                DrawHudCallMessage(0);
            DrawHudPhoneIcon();
            DrawHudPhoneBattery(kirby);
            hud->unkD = 0;
        }
        if (hud->unkE <= 0x5F || (hud->unkE >= 0x80 && hud->unkE <= 0xDF)) {
            DisplayCallingKirby(hud);
        } else {
            if (gKirbys[gUnk_02021580].base.unkC & 0x10000)
                DrawLifeSharingHudMessage(0);
            else
                DrawHudCallMessage(0);
            DrawHudPhoneIcon();
            DrawHudPhoneBattery(kirby);
            hud->unkD = 0;
        }
    }
    hud->unk10 |= 1;
}

static const u16 sHudPalettes[18][16] = {
    {
        RGB( 0, 14,  8) | 0x8000, RGB(31, 20, 28), RGB(31, 13, 25) | 0x8000, RGB(31,  9, 19) | 0x8000,
        RGB(31,  0,  0), RGB(17,  0,  4), RGB(14,  5,  4) | 0x8000, RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(31, 31,  6), RGB(31, 23,  3) | 0x8000, RGB(31, 16,  0),
        RGB(31, 10,  0) | 0x8000, RGB(17,  8,  0) | 0x8000, RGB(12,  4,  0) | 0x8000, RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(31,  8,  0), RGB(26,  5,  0), RGB(20,  4,  0),
        RGB(27,  0, 24), RGB(12,  0,  0), RGB( 7,  0,  0), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(14, 25,  0) | 0x8000, RGB(11, 21,  0), RGB( 8, 16,  0) | 0x8000,
        RGB(31, 10,  0), RGB( 6, 11,  0), RGB( 0,  8,  0), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB_WHITE | 0x8000, RGB(23, 23, 23), RGB(18, 18, 18) | 0x8000,
        RGB(31,  9, 12), RGB(14, 14, 14), RGB(10, 10, 10), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(17, 17, 17) | 0x8000, RGB(13, 13, 13) | 0x8000, RGB(11, 11, 11) | 0x8000,
        RGB(31, 15,  0), RGB( 8,  8,  8) | 0x8000, RGB( 7,  7,  7), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(17, 27, 31) | 0x8000, RGB(13, 23, 31), RGB(10, 19, 31),
        RGB( 9,  8, 27), RGB( 5, 15, 31), RGB( 2, 12, 24), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(20, 31, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(15, 19, 29) | 0x8000, RGB(12, 16, 27) | 0x8000, RGB(10, 14, 25),
        RGB( 8,  0, 18), RGB( 0, 10, 22), RGB( 0,  7, 19) | 0x8000, RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(20, 31, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(22, 19, 31), RGB(20, 14, 31) | 0x8000, RGB(17, 10, 31),
        RGB(18,  4, 13), RGB(14,  1, 26), RGB(12,  5, 19) | 0x8000, RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(14, 31, 23) | 0x8000, RGB( 7, 26, 18), RGB( 0, 20, 13),
        RGB(27, 15,  4) | 0x8000, RGB( 0, 16, 12), RGB( 0, 13, 10), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(31, 22,  3) | 0x8000, RGB(31, 19,  3), RGB(31, 15,  4),
        RGB(24,  6,  0), RGB(31, 10,  0), RGB(26,  2,  0), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(26, 16, 12), RGB(23, 13, 10), RGB(19, 10,  8) | 0x8000,
        RGB(16,  2,  1), RGB(16,  7,  6) | 0x8000, RGB(13,  5,  4), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(31, 18, 27), RGB(31, 15, 24), RGB(30, 12, 20),
        RGB( 6, 16, 10), RGB(27,  6, 14) | 0x8000, RGB(19,  2,  7), RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(13, 26, 31) | 0x8000, RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB( 0, 14,  8) | 0x8000, RGB(27, 27, 27) | 0x8000, RGB(23, 23, 23), RGB(19, 19, 19),
        RGB(11, 11, 11) | 0x8000, RGB(14, 14, 14) | 0x8000, RGB(10, 10, 10) | 0x8000, RGB_BLACK,
        RGB_WHITE | 0x8000, RGB(31, 26,  0), RGB(30, 30, 30), RGB(31, 18,  0) | 0x8000,
        RGB(31, 14,  0), RGB( 0,  0, 20), RGB(31, 26,  0), RGB(18, 18, 18) | 0x8000,
    },
    {
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
    },
    {
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
    },
    {
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
    },
    {
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
        RGB_BLACK, RGB_BLACK, RGB_BLACK, RGB_BLACK,
    },
};
static const u32 sHudDecimalDivisors[8] = {
    10000000, 1000000, 100000, 10000, 1000, 100, 10, 1,
};
static const u8 sOffscreenKirbyIconOffsets[4] = {
    0, 4, 8, 12,
};
static const u8 sOtherRoomKirbyIconX[4] = {
    24, 40, 56, 72,
};

extern const u8 gUnk_082ECFA0[];
extern const u8 gUnk_082F38A0[];
extern const u8 gUnk_082FA1A0[];
extern const u8 gUnk_08300AA0[];
extern const u8 gUnk_083073A0[];
extern const u8 gUnk_0830DCA0[];
extern const u16 gUnk_083145A0[];
extern const u8 gUnk_083145C0[];
extern const u16 gUnk_08314980[];
extern const u8 gUnk_083149A0[];
extern const u16 gUnk_08314D60[];
extern const u8 gUnk_08314D80[];
extern const u16 gUnk_08315140[];
extern const u8 gUnk_08315160[];
extern const u16 gUnk_08315520[];
extern const u8 gUnk_08315540[];
extern const u16 gUnk_08315900[];
extern const u8 gUnk_08315920[];
extern const u16 gUnk_08315CE0[];
extern const u8 gUnk_08315D00[];
extern const u16 gUnk_083160C0[];
extern const u8 gUnk_083160E0[];
extern const u16 gUnk_083164A0[];
extern const u8 gUnk_083164C0[];
extern const u16 gUnk_08316880[];
extern const u8 gUnk_083168A0[];
extern const u16 gUnk_08316C60[];
extern const u8 gUnk_08316C80[];
extern const u16 gUnk_08317040[];
extern const u8 gUnk_08317060[];
extern const u16 gUnk_08317420[];
extern const u8 gUnk_08317440[];
extern const u16 gUnk_08317800[];
extern const u8 gUnk_08317820[];
extern const u16 gUnk_08317BE0[];
extern const u8 gUnk_08317C00[];
extern const u16 gUnk_08317FC0[];
extern const u8 gUnk_08317FE0[];
extern const u16 gUnk_083183A0[];
extern const u8 gUnk_083183C0[];
extern const u16 gUnk_08318780[];
extern const u8 gUnk_083187A0[];
extern const u16 gUnk_08318B60[];
extern const u8 gUnk_08318B80[];
extern const u16 gUnk_08318F40[];
extern const u8 gUnk_08318F60[];
extern const u16 gUnk_08319320[];
extern const u8 gUnk_08319340[];
extern const u16 gUnk_08319700[];
extern const u8 gUnk_08319720[];
extern const u16 gUnk_08319AE0[];
extern const u8 gUnk_08319B00[];
extern const u16 gUnk_08319EC0[];
extern const u8 gUnk_08319EE0[];
extern const u16 gUnk_0831A2A0[];
extern const u8 gUnk_0831A2C0[];
extern const u16 gUnk_0831A680[];
extern const u8 gUnk_0831A6A0[];
extern const u16 gUnk_0831AA60[];
extern const u8 gUnk_0831AA80[];
extern const u16 gUnk_0831AE40[];
extern const u8 gUnk_0831AE60[];
extern const u16 gUnk_0831B220[];
extern const u8 gUnk_0831B240[];
extern const u16 gUnk_0831B600[];
extern const u8 gUnk_0831B620[];
extern const u16 gUnk_0831B9E0[];
extern const u8 gUnk_0831BA00[];
extern const u16 gUnk_0831BDC0[];
extern const u8 gUnk_0831BDE0[];
extern const u8 gUnk_0831C1A0[];
extern const u8 gUnk_0831C560[];
extern const u8 gUnk_0831C920[];
extern const u8 gUnk_0831CCE0[];
extern const u8 gUnk_0831D0A0[];
extern const u8 gUnk_0831D460[];
extern const u8 gUnk_0831D820[];
extern const u8 gUnk_0831DBE0[];
extern const u8 gUnk_0831DFA0[];
extern const u8 gUnk_0831E360[];
extern const u8 gUnk_0831E720[];
extern const u8 gUnk_0831EAE0[];
extern const u8 gUnk_0831EEA0[];
extern const u8 gUnk_0831F260[];
extern const u8 gUnk_0831F620[];
extern const u8 gUnk_0831F9E0[];
extern const u8 gUnk_0831FDA0[];
extern const u8 gUnk_08320160[];
extern const u8 gUnk_08320520[];
extern const u8 gUnk_083208E0[];
extern const u8 gUnk_08320CA0[];
extern const u8 gUnk_08321060[];
extern const u8 gUnk_08321420[];
extern const u8 gUnk_083217E0[];
extern const u8 gUnk_08321BA0[];
extern const u8 gUnk_08321F60[];
extern const u8 gUnk_08322320[];
extern const u8 gUnk_083226E0[];
extern const u8 gUnk_08322AA0[];
extern const u8 gUnk_083235E0[];
extern const u8 gUnk_083239A0[];
extern const u8 gUnk_08323D60[];
extern const u8 gUnk_08324120[];
extern const u8 gUnk_083244E0[];
extern const u8 gUnk_083248A0[];
extern const u8 gUnk_08324C60[];
extern const u8 gUnk_08325020[];
extern const u8 gUnk_083253E0[];
extern const u8 gUnk_083257A0[];
extern const u8 gUnk_08325B60[];
extern const u8 gUnk_08325F20[];
extern const u8 gUnk_083262E0[];
extern const u8 gUnk_083266A0[];
extern const u8 gUnk_08326A60[];
extern const u8 gUnk_08326E20[];
extern const u8 gUnk_083271E0[];
extern const u8 gUnk_083275A0[];
extern const u8 gUnk_08327960[];
extern const u8 gUnk_08327D20[];
extern const u8 gUnk_083280E0[];
extern const u8 gUnk_083284A0[];
extern const u8 gUnk_08328860[];
extern const u8 gUnk_08328C20[];
extern const u8 gUnk_08328FE0[];
extern const u8 gUnk_083293A0[];
extern const u8 gUnk_08329760[];
extern const u8 gUnk_08329B20[];
extern const u8 gUnk_08329EE0[];
extern const u8 gUnk_0832AA20[];
extern const u8 gUnk_0832ADE0[];
extern const u8 gUnk_0832B1A0[];
extern const u8 gUnk_0832B560[];
extern const u8 gUnk_0832B920[];
extern const u8 gUnk_0832BCE0[];
extern const u8 gUnk_0832C0A0[];
extern const u8 gUnk_0832C460[];
extern const u8 gUnk_0832C820[];
extern const u8 gUnk_0832CBE0[];
extern const u8 gUnk_0832CFA0[];
extern const u8 gUnk_0832D360[];
extern const u8 gUnk_0832D720[];
extern const u8 gUnk_0832DAE0[];
extern const u8 gUnk_0832DEA0[];
extern const u8 gUnk_0832E260[];
extern const u8 gUnk_0832E620[];
extern const u8 gUnk_0832E9E0[];
extern const u8 gUnk_0832EDA0[];
extern const u8 gUnk_0832F160[];
extern const u8 gUnk_0832F520[];
extern const u8 gUnk_0832F8E0[];
extern const u8 gUnk_0832FCA0[];
extern const u8 gUnk_08330060[];
extern const u8 gUnk_08330420[];
extern const u8 gUnk_083307E0[];
extern const u8 gUnk_08330BA0[];
extern const u8 gUnk_08330F60[];
extern const u8 gUnk_08331320[];
extern const u8 gUnk_08331E60[];
extern const u8 gUnk_08332220[];
extern const u8 gUnk_083325E0[];
extern const u8 gUnk_083329A0[];
extern const u8 gUnk_08332D60[];
extern const u8 gUnk_08333120[];
extern const u8 gUnk_083334E0[];
extern const u8 gUnk_083338A0[];
extern const u8 gUnk_08333C60[];
extern const u8 gUnk_08334020[];
extern const u8 gUnk_083343E0[];
extern const u8 gUnk_083347A0[];
extern const u8 gUnk_08334B60[];
extern const u8 gUnk_08334F20[];
extern const u8 gUnk_083352E0[];
extern const u8 gUnk_083356A0[];
extern const u8 gUnk_08335A60[];
extern const u8 gUnk_08335E20[];
extern const u8 gUnk_083361E0[];
extern const u8 gUnk_083365A0[];
extern const u8 gUnk_08336960[];
extern const u8 gUnk_08336D20[];
extern const u8 gUnk_083370E0[];
extern const u8 gUnk_083374A0[];
extern const u8 gUnk_08337860[];
extern const u8 gUnk_08337C20[];
extern const u8 gUnk_08337FE0[];
extern const u8 gUnk_083383A0[];
extern const u8 gUnk_08338760[];
extern const u8 gUnk_083392A0[];
extern const u8 gUnk_08339660[];
extern const u8 gUnk_08339A20[];
extern const u8 gUnk_08339DE0[];
extern const u8 gUnk_0833A1A0[];
extern const u8 gUnk_0833A560[];
extern const u8 gUnk_0833A920[];
extern const u8 gUnk_0833ACE0[];
extern const u8 gUnk_0833B0A0[];
extern const u8 gUnk_0833B460[];
extern const u8 gUnk_0833B820[];
extern const u8 gUnk_0833BBE0[];
extern const u8 gUnk_0833BFA0[];
extern const u8 gUnk_0833C360[];
extern const u8 gUnk_0833C720[];
extern const u8 gUnk_0833CAE0[];
extern const u8 gUnk_0833CEA0[];
extern const u8 gUnk_0833D260[];
extern const u8 gUnk_0833D620[];
extern const u8 gUnk_0833D9E0[];
extern const u8 gUnk_0833DDA0[];
extern const u8 gUnk_0833E160[];
extern const u8 gUnk_0833E520[];
extern const u8 gUnk_0833E8E0[];
extern const u8 gUnk_0833ECA0[];
extern const u8 gUnk_0833F060[];
extern const u8 gUnk_0833F420[];
extern const u8 gUnk_0833F7E0[];
extern const u8 gUnk_0833FBA0[];
extern const u8 gUnk_083406E0[];
extern const u8 gUnk_08340AA0[];
extern const u8 gUnk_08340E60[];
extern const u8 gUnk_08341220[];
extern const u8 gUnk_083415E0[];
extern const u8 gUnk_083419E0[];
extern const u8 gUnk_08341DA0[];
extern const u8 gUnk_08342160[];
extern const u8 gUnk_08342520[];
extern const u8 gUnk_083428E0[];
extern const u8 gUnk_08342CA0[];
extern const u8 gUnk_083430A0[];
extern const u8 gUnk_08343460[];
extern const u8 gUnk_08343820[];
extern const u8 gUnk_08343BE0[];
extern const u8 gUnk_08343FA0[];
extern const u8 gUnk_08344360[];
extern const u8 gUnk_08344760[];
extern const u8 gUnk_08344B20[];
extern const u8 gUnk_08344EE0[];
extern const u8 gUnk_083452A0[];
extern const u8 gUnk_08345660[];
extern const u8 gUnk_08345A20[];
extern const u8 gUnk_08345E20[];
extern const u8 gUnk_083461E0[];
extern const u8 gUnk_083465A0[];
extern const u8 gUnk_08346D20[];
extern const u8 gUnk_083470E0[];
extern const u8 gUnk_083474A0[];
extern const u8 gUnk_083478A0[];
extern const u8 gUnk_08347C60[];
extern const u8 gUnk_08348020[];
extern const u8 gUnk_083483E0[];
extern const u8 gUnk_083487A0[];
extern const u8 gUnk_08348B60[];
extern const u8 gUnk_08348F60[];
extern const u8 gUnk_08349320[];
extern const u8 gUnk_08349B20[];
extern const u8 gUnk_0834A320[];
extern const u8 gUnk_0834AB20[];
extern const u8 gUnk_0834B320[];

static const u16 *sAbilityIconPalettes[32] = {
    gUnk_083145A0, gUnk_08314980, gUnk_08314D60, gUnk_08315140,
    gUnk_08315520, gUnk_08315900, gUnk_08315CE0, gUnk_083160C0,
    gUnk_083164A0, gUnk_08316880, gUnk_08316C60, gUnk_08317040,
    gUnk_08317420, gUnk_08317800, gUnk_08317BE0, gUnk_08317FC0,
    gUnk_083183A0, gUnk_08318780, gUnk_08318B60, gUnk_08318F40,
    gUnk_08319320, gUnk_08319700, gUnk_08319AE0, gUnk_08319EC0,
    gUnk_0831A2A0, gUnk_0831A680, gUnk_0831AA60, gUnk_0831AE40,
    gUnk_0831B220, gUnk_0831B600, gUnk_0831B9E0, gUnk_0831BDC0,
};
static const u8 *sAbilityIconGraphics[NUM_LANGUAGES][32] = {
    {
        gUnk_083145C0, gUnk_083149A0, gUnk_08314D80, gUnk_08315160,
        gUnk_08315540, gUnk_08315920, gUnk_08315D00, gUnk_083160E0,
        gUnk_083164C0, gUnk_083168A0, gUnk_08316C80, gUnk_08317060,
        gUnk_08317440, gUnk_08317820, gUnk_08317C00, gUnk_08317FE0,
        gUnk_083183C0, gUnk_083187A0, gUnk_08318B80, gUnk_08318F60,
        gUnk_08319340, gUnk_08319720, gUnk_08319B00, gUnk_08319EE0,
        gUnk_0831A2C0, gUnk_0831A6A0, gUnk_0831AA80, gUnk_0831AE60,
        gUnk_0831B240, gUnk_0831B620, gUnk_0831BA00, gUnk_0831BDE0,
    },
    {
        gUnk_083235E0, gUnk_083239A0, gUnk_08323D60, gUnk_08324120,
        gUnk_083244E0, gUnk_083248A0, gUnk_08324C60, gUnk_08325020,
        gUnk_083253E0, gUnk_083257A0, gUnk_08325B60, gUnk_08325F20,
        gUnk_083262E0, gUnk_083266A0, gUnk_08326A60, gUnk_08326E20,
        gUnk_083271E0, gUnk_083275A0, gUnk_08327960, gUnk_08327D20,
        gUnk_083280E0, gUnk_083284A0, gUnk_08328860, gUnk_08328C20,
        gUnk_08328FE0, gUnk_083293A0, gUnk_08329760, gUnk_08329B20,
        gUnk_08329EE0, gUnk_08329EE0, gUnk_08329EE0, gUnk_08329EE0,
    },
    {
        gUnk_0831C1A0, gUnk_0831C560, gUnk_0831C920, gUnk_0831CCE0,
        gUnk_0831D0A0, gUnk_0831D460, gUnk_0831D820, gUnk_0831DBE0,
        gUnk_0831DFA0, gUnk_0831E360, gUnk_0831E720, gUnk_0831EAE0,
        gUnk_0831EEA0, gUnk_0831F260, gUnk_0831F620, gUnk_0831F9E0,
        gUnk_0831FDA0, gUnk_08320160, gUnk_08320520, gUnk_083208E0,
        gUnk_08320CA0, gUnk_08321060, gUnk_08321420, gUnk_083217E0,
        gUnk_08321BA0, gUnk_08321F60, gUnk_08322320, gUnk_083226E0,
        gUnk_08322AA0, gUnk_08322AA0, gUnk_08322AA0, gUnk_08322AA0,
    },
    {
        gUnk_08331E60, gUnk_08332220, gUnk_083325E0, gUnk_083329A0,
        gUnk_08332D60, gUnk_08333120, gUnk_083334E0, gUnk_083338A0,
        gUnk_08333C60, gUnk_08334020, gUnk_083343E0, gUnk_083347A0,
        gUnk_08334B60, gUnk_08334F20, gUnk_083352E0, gUnk_083356A0,
        gUnk_08335A60, gUnk_08335E20, gUnk_083361E0, gUnk_083365A0,
        gUnk_08336960, gUnk_08336D20, gUnk_083370E0, gUnk_083374A0,
        gUnk_08337860, gUnk_08337C20, gUnk_08337FE0, gUnk_083383A0,
        gUnk_08338760, gUnk_08338760, gUnk_08338760, gUnk_08338760,
    },
    {
        gUnk_0832AA20, gUnk_0832ADE0, gUnk_0832B1A0, gUnk_0832B560,
        gUnk_0832B920, gUnk_0832BCE0, gUnk_0832C0A0, gUnk_0832C460,
        gUnk_0832C820, gUnk_0832CBE0, gUnk_0832CFA0, gUnk_0832D360,
        gUnk_0832D720, gUnk_0832DAE0, gUnk_0832DEA0, gUnk_0832E260,
        gUnk_0832E620, gUnk_0832E9E0, gUnk_0832EDA0, gUnk_0832F160,
        gUnk_0832F520, gUnk_0832F8E0, gUnk_0832FCA0, gUnk_08330060,
        gUnk_08330420, gUnk_083307E0, gUnk_08330BA0, gUnk_08330F60,
        gUnk_08331320, gUnk_08331320, gUnk_08331320, gUnk_08331320,
    },
    {
        gUnk_083392A0, gUnk_08339660, gUnk_08339A20, gUnk_08339DE0,
        gUnk_0833A1A0, gUnk_0833A560, gUnk_0833A920, gUnk_0833ACE0,
        gUnk_0833B0A0, gUnk_0833B460, gUnk_0833B820, gUnk_0833BBE0,
        gUnk_0833BFA0, gUnk_0833C360, gUnk_0833C720, gUnk_0833CAE0,
        gUnk_0833CEA0, gUnk_0833D260, gUnk_0833D620, gUnk_0833D9E0,
        gUnk_0833DDA0, gUnk_0833E160, gUnk_0833E520, gUnk_0833E8E0,
        gUnk_0833ECA0, gUnk_0833F060, gUnk_0833F420, gUnk_0833F7E0,
        gUnk_0833FBA0, gUnk_0833FBA0, gUnk_0833FBA0, gUnk_0833FBA0,
    },
};
static const u8 *sHudEnemyAndAreaNameGraphics[NUM_LANGUAGES] = {
    gUnk_082ECFA0, gUnk_082F38A0, gUnk_08300AA0, gUnk_083073A0, gUnk_082FA1A0, gUnk_0830DCA0,
};
static const u8 *sHudBorrowMessageGraphics[NUM_LANGUAGES] = {
    gUnk_08340E60, gUnk_08342520, gUnk_08343BE0, gUnk_083483E0, gUnk_083452A0, gUnk_08346D20,
};
static const u8 *sHudGiveMessageGraphics[NUM_LANGUAGES] = {
    gUnk_08341220, gUnk_083428E0, gUnk_08343FA0, gUnk_083487A0, gUnk_08345660, gUnk_083470E0,
};
static const u8 *sHudConnectingMessageGraphics[NUM_LANGUAGES] = {
    gUnk_083406E0, gUnk_08341DA0, gUnk_08343460, gUnk_08347C60, gUnk_08344B20, gUnk_083461E0,
};
static const u8 *sHudAnswerMessageGraphics[NUM_LANGUAGES] = {
    gUnk_08340AA0, gUnk_08342160, gUnk_08343820, gUnk_08348020, gUnk_08344EE0, gUnk_083465A0,
};
static const u8 *sHudBorrowLifePromptGraphics[NUM_LANGUAGES] = {
    gUnk_083415E0, gUnk_08342CA0, gUnk_08344360, gUnk_08348B60, gUnk_08345A20, gUnk_083474A0,
};
static const u8 *sHudBorrowLifeChoiceGraphics[NUM_LANGUAGES] = {
    gUnk_083419E0, gUnk_083430A0, gUnk_08344760, gUnk_08348F60, gUnk_08345E20, gUnk_083478A0,
};
static const u8 *sHudGameOverAndDemoGraphics[NUM_LANGUAGES] = {
    gUnk_08349320, gUnk_08349320, gUnk_08349B20, gUnk_0834AB20, gUnk_0834A320, gUnk_0834B320,
};
