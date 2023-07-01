#ifndef GUARD_PALETTE_H
#define GUARD_PALETTE_H

#include "global.h"

// probably both declared in main.h? 
extern void (*gUnk_03003678)(u16 *, u8, u16); // never filled with real function pointer in katam
extern u16 gRgbMap[3][0x20];

void LoadObjPaletteWithTransformation(const u16 *palette, u8 offset, u16 num);
void LoadBgPaletteWithTransformation(const u16 *palette, u8 offset, u16 num);
void InvertRgbMap(void);
void sub_08158434(const s8 delta[]);
void sub_081584E8(const s8 delta[]);
void sub_08158654(const f32 exp[]);
void ConvertToGrayscale(u16 *palette, u8 offset, u16 num);
void sub_081587E0(u16 *palette, u8 offset, u16 num);
void ResetRgbMap(void);
void ConvertToBlackAndWhite(u16 *palette, u8 offset, u16 num);

#endif
