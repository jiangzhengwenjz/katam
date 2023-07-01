#define __thumb__ // required by ieeefp.h
#include <math.h>

#include "palette.h"
#include "main.h"

#define GetR(color) ((color) & 0x1F)
#define GetG(color) (((color) & 0x3E0) >> 5)
#define GetB(color) (((color) & 0x7C00) >> 10)

void LoadObjPaletteWithTransformation(const u16 *palette, u8 offset, u16 num) {
    u16 i;

    for (i = 0; i < num; ++i) {
        gObjPalette[offset + i] =
            gRgbMap[0][GetR(*palette)]
            | gRgbMap[1][GetG(*palette)]
            | gRgbMap[2][GetB(*palette)];
        ++palette;
    }
    if (gUnk_03003678)
        gUnk_03003678(gObjPalette, offset, num);
    gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
}

void LoadBgPaletteWithTransformation(const u16 *palette, u8 offset, u16 num) {
    u16 i;

    for (i = 0; i < num; ++i) {
        gBgPalette[offset + i] =
            gRgbMap[0][GetR(*palette)]
            | gRgbMap[1][GetG(*palette)]
            | gRgbMap[2][GetB(*palette)];
        ++palette;
    }
    if (gUnk_03003678)
        gUnk_03003678(gBgPalette, offset, num);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
}

void InvertRgbMap(void) {
    u8 i;

    for (i = 0; i < 0x20; ++i) {
        gRgbMap[0][i] = 0x1F - gRgbMap[0][i];
        gRgbMap[1][i] = 0x3E0 - gRgbMap[1][i];
        gRgbMap[2][i] = 0x7C00 - gRgbMap[2][i];
    }
}

void sub_08158434(const s8 delta[]) {
    u8 i;
    s32 changed;

    for (i = 0; i < 0x20; ++i) {
        changed = gRgbMap[0][i] + delta[0];
        if (changed < 0)
            gRgbMap[0][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[0][i] = 0x1F;
        else
            gRgbMap[0][i] = changed;

        changed = (gRgbMap[1][i] >> 5) + delta[1];
        if (changed < 0)
            gRgbMap[1][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[1][i] = 0x3E0;
        else
            gRgbMap[1][i] = (changed << 5) & 0x3E0;

        changed = (gRgbMap[2][i] >> 10) + delta[2];
        if (changed < 0)
            gRgbMap[2][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[2][i] = 0x7C00;
        else
            gRgbMap[2][i] = (changed << 10) & 0x7C00;
    }
}

void sub_081584E8(const s8 delta[]) {
    u8 i;
    s32 changed;

    for (i = 0; i < 0x20; ++i) {
        changed = (f32)gRgbMap[0][i] * ((delta[0] + 16.0f) * 0.0625f) - delta[0];
        if (changed < 0)
            gRgbMap[0][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[0][i] = 0x1F;
        else
            gRgbMap[0][i] = changed;

        changed = (gRgbMap[1][i] >> 5) * ((delta[1] + 16.0f) * 0.0625f) - delta[1];
        if (changed < 0)
            gRgbMap[1][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[1][i] = 0x3E0;
        else
            gRgbMap[1][i] = (changed << 5) & 0x3E0;

        changed = (gRgbMap[2][i] >> 10) * ((delta[2] + 16.0f) * 0.0625f) - delta[2];
        if (changed < 0)
            gRgbMap[2][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[2][i] = 0x7C00;
        else
            gRgbMap[2][i] = (changed << 10) & 0x7C00;
    }
}

void sub_08158654(const f32 exp[]) {
    u8 i;
    s32 changed;

    for (i = 0; i < 0x20; ++i) {
        changed = powf((f32)gRgbMap[0][i] / 31.0f, exp[0]) * 31.0f;
        if (changed < 0)
            gRgbMap[0][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[0][i] = 0x1F;
        else
            gRgbMap[0][i] = changed;

        changed = powf((gRgbMap[1][i] >> 5) / 31.0f, exp[1]) * 31.0f;
        if (changed < 0)
            gRgbMap[1][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[1][i] = 0x3E0;
        else
            gRgbMap[1][i] = (changed << 5);

        changed = powf((gRgbMap[2][i] >> 10) / 31.0f, exp[2]) * 31.0f;
        if (changed < 0)
            gRgbMap[2][i] = 0;
        else if (changed > 0x1F)
            gRgbMap[2][i] = 0x7C00;
        else
            gRgbMap[2][i] = (changed << 10);
    }
}

void ConvertToGrayscale(u16 *palette, u8 offset, u16 num) {
    u16 i;
    u16 gray;

    for (i = 0; i < num; ++i) {
        gray = (Q_8_8(0.3010) * GetR(palette[offset + i]) + Q_8_8(0.5860) * GetG(palette[offset + i]) + Q_8_8(0.1133) * GetB(palette[offset + i])) >> 8;
        if (gray > 0x1F)
            palette[offset + i] = RGB_WHITE;
        else
            palette[offset + i] = RGB(gray, gray, gray);
    }
}

// brown/orange (?)
void sub_081587E0(u16 *palette, u8 offset, u16 num) {
    u16 i;
    u16 gray;

    for (i = 0; i < num; ++i) {
        gray = (Q_8_8(0.3010) * GetR(palette[offset + i]) + Q_8_8(0.5860) * GetG(palette[offset + i]) + Q_8_8(0.1133) * GetB(palette[offset + i])) >> 8;
        if (gray > 0x1F)
            palette[offset + i] = RGB(31, 13, 0);
        else
            palette[offset + i] = RGB(gray, (gray * Q_8_8(0.4258)) / 0xFF, 0); // isn't 0xFF off-by-1?
    }
}

void ResetRgbMap(void) {
    u8 i;

    for (i = 0; i < 0x20; ++i) {
        gRgbMap[0][i] = i;
        gRgbMap[1][i] = i << 5;
        gRgbMap[2][i] = i << 10;
    }
    gUnk_03003678 = NULL;
}

void ConvertToBlackAndWhite(u16 *palette, u8 offset, u16 num) {
    u16 i;
    u8 gray;

    for (i = 0; i < num; ++i) {
        gray = (Q_8_8(0.3010) * GetR(palette[offset + i]) + Q_8_8(0.5860) * GetG(palette[offset + i]) + Q_8_8(0.1133) * GetB(palette[offset + i])) >> 8;
        if (gray < 16)
            palette[offset + i] = RGB_BLACK;
        else
            palette[offset + i] = RGB_WHITE;
    }
}
