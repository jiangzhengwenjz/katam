#ifndef GUARD_HUD_H
#define GUARD_HUD_H

#include "global.h"
#include "sprite.h"

struct ObjectBase;
struct Object;
struct Kirby;

struct GameplayHud {
    /* 0x00 */ u32 unk0;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ s8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 filler8;
    /* 0x09 */ s8 unk9;
    /* 0x0A */ s8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 unkE;
    /* 0x0F */ u8 unkF;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u8 unk14; // Visible ability-icon rows.
    /* 0x15 */ u8 unk15[4]; // 0: world sprite, 1: offscreen, 2: another room.
    /* 0x19 */ u8 filler19[3];
    /* 0x1C */ struct Object *unk1C;
    /* 0x20 */ struct Sprite unk20[3][4];
}; /* size = 0x200 */

void CreateGameplayHud(void);
void DrawHudAbilityIconRows(u8 rows);
struct GameplayHud *TryTrackHudEnemy(struct Object *object);
void DrawEnemyHealthOrAreaName(struct GameplayHud *hud);
void LoadAbilityIconGraphicsAndPalette(void *tilesVram, u8 paletteId, u8 abilityIconId);
void RefreshGameplayHud(struct Kirby *kirby);
void LoadHudAbilityIcon(u8 ability);
void StartHudAbilityIconExpansion(struct ObjectBase *object);
void HoldExpandedHudAbilityIcon(struct ObjectBase *object);
void ScheduleHudAbilityIconCollapse(struct ObjectBase *object);
void CollapseHudAbilityIcon(struct ObjectBase *object);
void ShowGameOverHud(void);
void ShowBorrowLifeHud(void);
void RestoreHudAfterLifeBorrow(void);
void ClearBorrowLifeHud(struct ObjectBase *object);
void ExpireHudEnemyHealthDelay(void);

#endif
