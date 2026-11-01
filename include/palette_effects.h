#ifndef GUARD_PALETTE_EFFECTS_H
#define GUARD_PALETTE_EFFECTS_H

#include "global.h"

struct Task;

struct PaletteEffect {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ s8 unk1; // Current channel adjustment.
    /* 0x02 */ s8 unk2; // Target adjustment; -1 is used when holding.
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
}; /* size = 0x10 */

struct PaletteEffectManager {
    /* 0x00 */ struct PaletteEffect unk0[8];
    /* 0x80 */ struct PaletteEffect *unk80[8];
}; /* size = 0xA0 */

extern struct Task *gPaletteEffectsTask;
extern struct PaletteEffectManager gPaletteEffectManager;

struct PaletteEffect *CreateRoomPaletteEffect(u8 slot, u16 room);
struct PaletteEffect *CreateLowPriorityRoomPaletteEffect(u8 slot, u16 room);
struct PaletteEffect *CreatePaletteFadeFromWhite(u8 slot);
struct PaletteEffect *CreatePaletteFadeToWhite(u8 slot);
struct PaletteEffect *CreateHiddenPaletteFadeToWhite(u8 slot);
struct PaletteEffect *CreatePaletteDim(u8 slot);
struct PaletteEffect *CreatePaletteUndim(u8 slot);
void EnablePaletteEffectsForCurrentRoom(void);
void BlendSpriteAnimationPalettes(u8 paletteId, u16 sourceAnim, u8 sourceVariant, u16 targetAnim, u8 targetVariant, u16 amount);
void OffsetSpriteAnimationPalette(u8 paletteId, u16 anim, u8 variant, s8 red, s8 green, s8 blue, u16 amount);
bool8 IsPaletteEffectFinished(u8 arg0);
void DestroyPaletteEffectsTask(u32 arg0);
void LoadBgPaletteAndPaletteEffectSource(const u16 *palette, u8 offset, u16 num);
void LoadLevelPaletteEffectSourcePalettes(const u16 **arg0, const u16 **arg1);
void SaveObjPaletteColors(u8 offset, u8 num);
void SaveBgPaletteColors(u8 offset, u8 num);
void BackupPaletteEffectSourcePalettes(void);
void RestorePaletteEffectSourcePalettes(void);
struct PaletteEffect *GetPaletteEffect(u8 arg0);

#endif
