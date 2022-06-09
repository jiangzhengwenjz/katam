#define __thumb__ // required by ieeefp.h
#include <math.h>

#include "palette.h"
#include "main.h"

#define GetR(color) ((color) & 0x1F)
#define GetG(color) (((color) & 0x3E0) >> 5)
#define GetB(color) (((color) & 0x7C00) >> 10)

void sub_0815828C(const u16 *palette, u8 offset, u16 num) {
    u16 i;

    for (i = 0; i < num; ++i) {
        gObjPalette[offset + i] =
            gUnk_030036D0[0][GetR(*palette)]
            | gUnk_030036D0[1][GetG(*palette)]
            | gUnk_030036D0[2][GetB(*palette)];
        ++palette;
    }
    if (gUnk_03003678)
        gUnk_03003678(gObjPalette, offset, num);
    gUnk_03002440 |= 2;
}

void sub_08158334(const u16 *palette, u8 offset, u16 num) {
    u16 i;

    for (i = 0; i < num; ++i) {
        gBgPalette[offset + i] =
            gUnk_030036D0[0][GetR(*palette)]
            | gUnk_030036D0[1][GetG(*palette)]
            | gUnk_030036D0[2][GetB(*palette)];
        ++palette;
    }
    if (gUnk_03003678)
        gUnk_03003678(gBgPalette, offset, num);
    gUnk_03002440 |= 1;
}

void sub_081583DC(void) {
    u8 i;

    for (i = 0; i < 0x20; ++i) {
        gUnk_030036D0[0][i] = 0x1F - gUnk_030036D0[0][i];
        gUnk_030036D0[1][i] = 0x3E0 - gUnk_030036D0[1][i];
        gUnk_030036D0[2][i] = 0x7C00 - gUnk_030036D0[2][i];
    }
}

void sub_08158434(const s8 delta[]) {
    u8 i;
    s32 changed;

    for (i = 0; i < 0x20; ++i) {
        changed = gUnk_030036D0[0][i] + delta[0];
        if (changed < 0)
            gUnk_030036D0[0][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[0][i] = 0x1F;
        else
            gUnk_030036D0[0][i] = changed;

        changed = (gUnk_030036D0[1][i] >> 5) + delta[1];
        if (changed < 0)
            gUnk_030036D0[1][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[1][i] = 0x3E0;
        else
            gUnk_030036D0[1][i] = (changed << 5) & 0x3E0;

        changed = (gUnk_030036D0[2][i] >> 10) + delta[2];
        if (changed < 0)
            gUnk_030036D0[2][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[2][i] = 0x7C00;
        else
            gUnk_030036D0[2][i] = (changed << 10) & 0x7C00;
    }
}

void sub_081584E8(const s8 delta[]) {
    u8 i;
    s32 changed;

    for (i = 0; i < 0x20; ++i) {
        changed = (f32)gUnk_030036D0[0][i] * ((delta[0] + 16.0f) * 0.0625f) - delta[0];
        if (changed < 0)
            gUnk_030036D0[0][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[0][i] = 0x1F;
        else
            gUnk_030036D0[0][i] = changed;

        changed = (gUnk_030036D0[1][i] >> 5) * ((delta[1] + 16.0f) * 0.0625f) - delta[1];
        if (changed < 0)
            gUnk_030036D0[1][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[1][i] = 0x3E0;
        else
            gUnk_030036D0[1][i] = (changed << 5) & 0x3E0;

        changed = (gUnk_030036D0[2][i] >> 10) * ((delta[2] + 16.0f) * 0.0625f) - delta[2];
        if (changed < 0)
            gUnk_030036D0[2][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[2][i] = 0x7C00;
        else
            gUnk_030036D0[2][i] = (changed << 10) & 0x7C00;
    }
}

void sub_08158654(const f32 exp[]) {
    u8 i;
    s32 changed;

    for (i = 0; i < 0x20; ++i) {
        changed = powf((f32)gUnk_030036D0[0][i] / 31.0f, exp[0]) * 31.0f;
        if (changed < 0)
            gUnk_030036D0[0][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[0][i] = 0x1F;
        else
            gUnk_030036D0[0][i] = changed;

        changed = powf((gUnk_030036D0[1][i] >> 5) / 31.0f, exp[1]) * 31.0f;
        if (changed < 0)
            gUnk_030036D0[1][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[1][i] = 0x3E0;
        else
            gUnk_030036D0[1][i] = (changed << 5);

        changed = powf((gUnk_030036D0[2][i] >> 10) / 31.0f, exp[2]) * 31.0f;
        if (changed < 0)
            gUnk_030036D0[2][i] = 0;
        else if (changed > 0x1F)
            gUnk_030036D0[2][i] = 0x7C00;
        else
            gUnk_030036D0[2][i] = (changed << 10);
    }
}

// grayscale
void sub_08158758(u16 *palette, u8 offset, u16 num) {
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

void sub_08158870(void) {
    u8 i;

    for (i = 0; i < 0x20; ++i) {
        gUnk_030036D0[0][i] = i;
        gUnk_030036D0[1][i] = i << 5;
        gUnk_030036D0[2][i] = i << 10;
    }
    gUnk_03003678 = NULL;
}

// black/white
void sub_081588B0(u16 *palette, u8 offset, u16 num) {
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
