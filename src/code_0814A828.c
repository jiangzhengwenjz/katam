#include "data.h"
#include "code_0814A828.h"
#include "functions.h"
#include "kirby.h"
#include "save.h"
#include "task.h"

void sub_0814A914(void);
void sub_0814ACA8(struct Unk_0814A828 *);
void sub_0814ADC8(struct Unk_0814A828 *);
void sub_0814B2A0(struct Unk_0814E394 *, bool32);
void sub_0814B400(struct Unk_0814E394 *);
void sub_0814B4A4(struct Unk_0814E394 *);
void sub_0814B54C(struct Unk_0814E394 *);
void sub_0814B5D4(struct Unk_0814E394 *);
void sub_0814B67C(struct Unk_0814E394 *);
void sub_0814B728(struct Unk_0814E394 *);
void sub_0814B7D8(struct Unk_0814E394 *);
void sub_0814B88C(struct Unk_0814E394 *);
void sub_0814CB60(struct Unk_0814E394 *);
void nullsub_12(struct Task *);
void sub_0814E0B4(struct Unk_0814A828 *);
void sub_0814E0E8(struct Unk_0814A828 *);
void sub_0814E198(struct Unk_0814A828 *);
void sub_0814E264(struct Unk_0814A828 *);
void sub_0814E290(struct Unk_0814A828 *);
struct Task *sub_0814E394(struct Unk_0814A828 *, u8);
void sub_0814E47C(struct Unk_0814E394 *);
void sub_0814E4AC(struct Unk_0814E394 *);
void sub_0814E4C4(struct Unk_0814E394 *);
void sub_0814EA00(struct Unk_0814E918 *);

struct Unk_08387D8C {
    u16 animId;
    u16 variant;
    u8 unk4;
    u8 palId;
}; /* size = 8 */

const struct Unk_08387D8C gUnk_08387D8C[] = {
    { 0x2D3,  0x1,  0x0, 0x0 },
    { 0x390,  0x0, 0x32, 0x2 },
    { 0x391,  0x0, 0x46, 0x3 },
    { 0x390,  0x0, 0x78, 0x4 },
    { 0x391,  0x0, 0x96, 0x5 },
    { 0x2C3, 0x11, 0xAA, 0x6 },
    {   0x4,  0x2, 0x78, 0x7 },
    { 0x383,  0x0, 0xFF, 0x7 },
    { 0x394,  0x1, 0xFF, 0x2 },
    { 0x394,  0x3, 0xFF, 0x3 },
    { 0x2D3,  0xE, 0x78, 0x0 },
    { 0x2D3, 0x10, 0x82, 0x0 },
    { 0x2D3, 0x12, 0x8C, 0x0 },
    { 0x2D3, 0x14, 0x96, 0x0 },
    { 0x2D3, 0x13, 0xA0, 0x0 },
    { 0x2D3, 0x11, 0xAA, 0x0 },
    { 0x2D3,  0xF, 0xB4, 0x0 },
    { 0x2D3,  0xD, 0xBE, 0x0 },
    { 0x2B3,  0x0, 0xC8, 0x6 },
    { 0x2C3, 0x12, 0xDC, 0x6 },
};

const u16 gUnk_08387E2C[][2] = {
    { 0x390,  0x0 },
    { 0x390,  0x1 },
    { 0x390,  0x2 },
    { 0x390,  0x3 },
    { 0x390,  0x4 },
    { 0x390,  0x5 },
    { 0x390,  0x6 },
    { 0x390,  0x7 },
    { 0x390,  0x8 },
    { 0x390,  0x9 },
    { 0x390,  0xA },
    { 0x390,  0xB },
    { 0x390,  0xC },
    { 0x390,  0xD },
    { 0x390,  0xE },
    { 0x390,  0xF },
    { 0x390, 0x10 },
    { 0x390, 0x11 },
    { 0x390, 0x12 },
    { 0x390, 0x13 },
    { 0x390, 0x14 },
    { 0x390, 0x15 },
    { 0x390, 0x16 },
    { 0x390, 0x17 },
    { 0x390, 0x18 },
    { 0x390, 0x19 },
    { 0x390, 0x1A },
    { 0x390, 0x1B },
    { 0x3A0,  0x0 },
    { 0x3A0,  0x1 },
    { 0x3A4,  0x0 },
    { 0x390, 0x1C },
    { 0x390, 0x1D },
    { 0x390, 0x1E },
};

const u16 gUnk_08387EB4[][2] = {
    { 0x391,  0x0 },
    { 0x391,  0x1 },
    { 0x391,  0x2 },
    { 0x391,  0x3 },
    { 0x391,  0x4 },
    { 0x391,  0x5 },
    { 0x391,  0x6 },
    { 0x391,  0x7 },
    { 0x391,  0x8 },
    { 0x391,  0x9 },
    { 0x391,  0xA },
    { 0x391,  0xB },
    { 0x391,  0xC },
    { 0x391,  0xD },
    { 0x391,  0xE },
    { 0x391,  0xF },
    { 0x391, 0x10 },
    { 0x391, 0x11 },
    { 0x391, 0x12 },
    { 0x391, 0x13 },
    { 0x391, 0x14 },
    { 0x391, 0x15 },
    { 0x391, 0x16 },
    { 0x391, 0x17 },
    { 0x391, 0x18 },
    { 0x391, 0x19 },
    { 0x391, 0x1A },
    { 0x391, 0x1B },
    { 0x3A1,  0x0 },
    { 0x3A1,  0x1 },
    { 0x3A5,  0x0 },
    {   0x0,  0x0 },
    { 0x391, 0x1C },
    { 0x391, 0x1D },
};

const u16 gUnk_08387F3C[][2] = {
    { 0x0, 0x0 },
    { 0x1, 0x0 },
    { 0x2, 0x0 },
    { 0x4, 0x0 },
    { 0x4, 0x1 },
    { 0x4, 0x2 },
    { 0x4, 0x3 },
    { 0x4, 0x4 },
    { 0x4, 0x5 },
    { 0x4, 0x6 },
    { 0x8, 0x0 },
};

const u16 gUnk_08387F68[][2] = {
    { 0x2D3, 0x1 },
    { 0x2D3, 0x0 },
};

void sub_0814A828(void) {
    u16 color, i;
    struct Task *t;
    struct Unk_0814A828 *var;

    if (gUnk_0203AD10 & 0x10)
        sub_08039670();
    else if (gUnk_0203AD2C < 300) {
        color = RGB_WHITE;
        sub_0803D21C(&color, 0, 1);
        gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        m4aSoundVSyncOn();
        for (i = 0; i < gUnk_0203AD30; ++i)
            gKirbys[i].base.base.base.flags &= ~0x1000000;
        t = TaskCreate(sub_0814A914, sizeof(struct Unk_0814A828), 0x1000, TASK_USE_IWRAM | TASK_x0004, nullsub_12);
        var = TaskGetStructPtr(t);
        CpuFill16(0, var, sizeof(struct Unk_0814A828));
        var->unk8 = sub_0814E0B4;
    }
}

void sub_0814A914(void) {
    struct Unk_0814A828 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    u8 i;

    if (gUnk_0203AD10 & 2) {
        for (i = 0; i < gUnk_0203AD30; ++i) {
            if (gUnk_020382D0.unk8[1][i] & 0xB) {
                var->unk4 |= 1;
                break;
            }
        }
    } else {
        if (gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON))
            var->unk4 |= 1;
    }
    if (var->unk4 & 1 && !(var->unk4 & 0x80000000) && !(var->unk4 & 4) && !(var->unk4 & 2)) {
        var->unk8 = sub_0814E290;
        var->unk4 |= 0x80000000;
    }
    if (var->unkA0)
        var->unkA0(var);
    var->unk8(var);
}

bool32 sub_0814A9E8(struct Unk_0814A828 *a1) {
    ++a1->unkA4;
    gBldRegs.bldY = 0x10 - (0x10 * a1->unkA4 / a1->unkA6);
    if (a1->unkA4 >= a1->unkA6) {
        a1->unk4 &= ~4;
        if (!(a1->unk4 & 0x80000000)) {
            gBldRegs.bldY = 0;
            gBldRegs.bldAlpha = 0;
            gBldRegs.bldCnt = 0;
        }
        a1->unkA0 = NULL;
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_0814AA50(struct Unk_0814A828 *a1) {
    struct Background *bg = &a1->unk60;

    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(0x1F);
    bg->unk4 = 0x6008000;
    bg->unkA = 0;
    bg->tilemapVram = 0x600F800;
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->unk1C = 0x306;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->unk26 = 0x1E;
    bg->unk28 = 0x14;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->unk2E = 0x18;
    bg->scrollX = 0;
    bg->scrollY = 0;
    bg->prevScrollX = 0x7FFF;
    bg->prevScrollY = 0x7FFF;
    LZ77UnCompVram(gUnk_082D7850[0x306]->tileset, (u16 *)bg->unk4);
    sub_08153060(bg);
}

void sub_0814AAF4(struct Unk_0814A828 *a1) {
    const struct LevelInfo_1A0 *bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];
    u16 i;
    u16 *dst;
    const u16 *src;

    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[1] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(0x1E);
    LZ77UnCompVram(bg->tileset, (u16 *)0x6000000);
    src = bg->tilemap;
    dst = (u16 *)0x600F000;
    src = &src[8 * bg->width];
    for (i = 0; i < 0x14; ++i) {
        CpuCopy16(src, dst, 0x1E * sizeof(u16));
        src += bg->width;
        dst += 0x20;
    }
    gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON;
}

void sub_0814AB7C(struct Unk_0814A828 *a1) {
    struct Sprite *sprite = &a1->unk10;
    struct Sprite local;

    SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[0].unk4 + 0x6012000, 0x3C0,
        gUnk_08387D8C[0].animId, gUnk_08387D8C[0].variant, 0, 0xFF, 0x10, gUnk_08387D8C[0].palId,
        0x78, 0x50, 0x80);
    SpriteSomething(&local, 0x6000000, gUnk_08387D8C[0].animId, gUnk_08387D8C[0].variant,
        0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[0].palId & 0xF, 0x80000);
}

void sub_0814AC28(struct Unk_0814A828 *a1) {
    a1->unkA8[0] = sub_0814E394(a1, 0);
    a1->unkB8[0] = TaskGetStructPtr(a1->unkA8[0]);
    a1->unkA8[1] = sub_0814E394(a1, 1);
    a1->unkB8[1] = TaskGetStructPtr(a1->unkA8[1]);
    sub_0814ADC8(a1);
    a1->unk8 = sub_0814ACA8;
}

void sub_0814ACA8(struct Unk_0814A828 *a1) {
    const struct TiledBg_082D7850 *var = gUnk_082D7850[0x306];
    const struct LevelInfo_1A0 *bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];
    u16 color = RGB_WHITE;
    struct Unk_02022930_0 *var2;

    sub_0803D21C(var->palette, 0, 0x60);
    sub_0803D21C(bg->palette, bg->paletteOffset, bg->paletteSize);
    var2 = sub_0803C95C(7);
    var2->unk8 |= 0x180;
    var2->unk4 = 0xFFFF;
    var2->unk6 = 0xFFFF;
    sub_0803D21C(&color, 0, 1);
    a1->unkC = 0;
    a1->unk8 = sub_0814E0E8;
    a1->unk10.unk16 = 0x100;
    sub_0815604C(&a1->unk10);
}

void sub_0814AD44(struct Unk_0814A828 *a1) {
    u16 var = 0x3C;

    a1->unk4 |= 4;
    a1->unkA4 = 0;
    a1->unkA6 = var;
    a1->unkA0 = sub_0814A9E8;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    a1->unk10.unk1B = 0xFF;
    sub_0814B2A0(a1->unkB8[0], FALSE);
    sub_0814B2A0(a1->unkB8[1], TRUE);
    a1->unkC = 0;
    a1->unk8 = sub_0814E198;
    if (!sub_08155128(&a1->unk10))
        a1->unk10.unk1B = 0xFF;
    sub_0815604C(&a1->unk10);
}

void sub_0814ADC8(struct Unk_0814A828 *a1) {
    struct Sprite *sprite, local;

    sprite = &a1->unk38;
    SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[5].unk4 + 0x6012000, 0x140,
        gUnk_08387D8C[5].animId, gUnk_08387D8C[5].variant, 0, 0xFF, 0x10, gUnk_08387D8C[5].palId,
        0x78, 0x50, 0x80);
    SpriteSomething(&local, 0x6000000, gUnk_08387D8C[5].animId, gUnk_08387D8C[5].variant,
        0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[5].palId & 0xF, 0x80000);
}

void sub_0814AE78(struct Unk_0814A828 *a1) {
    struct Sprite local, *sprite = &a1->unk10;

    sprite->animId = gUnk_08387F68[1][0];
    sprite->variant = gUnk_08387F68[1][1];
    sub_08155128(&a1->unk10);
    SpriteSomething(&local, 0x6000000, sprite->animId, sprite->variant,
        0xFF, 0, 0, 0, 0, 0x10, sprite->palId & 0xF, 0x80000);
    a1->unkC4->unk0 = sub_0814EA00;
    a1->unk8 = sub_0814E264;
    sub_0815604C(sprite);
}

void sub_0814AF04(struct Unk_0814A828 *a1) {
    u8 i;

    if (!(gUnk_0203AD10 & 0x10)
        && gUnk_0203AD2C < 300) {
        gUnk_0203AD2C = 300;
        if (gUnk_0203AD10 & 2) {
            if (gUnk_0203AD3C == gUnk_0203AD24)
                sub_0800ACD4(1, gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48);
            else
                sub_08031CE4(8);
        } else {
            sub_0800ACD4(1, gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48);
        }
    }
    sub_08039670();
    for (i = 0; i < 2; ++i) {
        if (a1->unkA8[i]) {
            TaskDestroy(a1->unkA8[i]);
            a1->unkA8[i] = NULL;
        }
        a1->unkB8[i] = NULL;
    }
    if (a1->unkB0[0]) {
        TaskDestroy(a1->unkB0[0]);
        a1->unkB0[0] = NULL;
    }
    a1->unkC0 = NULL;
    if (a1->unkB0[1]) {
        TaskDestroy(a1->unkB0[1]);
        a1->unkB0[1] = NULL;
    }
    a1->unkC4 = NULL;
    TaskDestroy(gCurTask);
}

void sub_0814B024(struct Unk_0814E394 *a1) {
    u8 i;
    struct Sprite local2;
    u8 v18[2], v19[2];
    struct Sprite local, *sprite;

    switch (a1->unk0) {
    case 0:
        v18[0] = 1;
        v18[1] = 2;
        v19[0] = 8;
        v19[1] = 9;
        for (i = 0; i < 2; ++i) {
            sprite = &local2;
            SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[v19[i]].unk4 + 0x6012000, 0x3FC0,
                gUnk_08387D8C[v19[i]].animId, gUnk_08387D8C[v19[i]].variant, 0, 0xFF, 0x10, gUnk_08387D8C[v19[i]].palId,
                -0x40, -0x40, 0);
            sprite = &a1->unk10[i];
            SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[v18[i]].unk4 + 0x6012000, (i + 0xA) * 0x40,
                gUnk_08387D8C[v18[i]].animId, gUnk_08387D8C[v18[i]].variant, 0, 0xFF, 0x10, gUnk_08387D8C[v18[i]].palId,
                0x84, 0x50, 0x40080);
            SpriteSomething(&local, 0x6000000, gUnk_08387D8C[v19[i]].animId, gUnk_08387D8C[v19[i]].variant,
                0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[v19[i]].palId & 0xF, 0x80000);
        }
        break;
    case 1:
        v18[0] = 3;
        v18[1] = 4;
        for (i = 0; i < 2; ++i) {
            sprite = &a1->unk10[i];
            SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[v18[i]].unk4 + 0x6012000, (i + 0xA) * 0x40,
                gUnk_08387D8C[v18[i]].animId, gUnk_08387D8C[v18[i]].variant, 0, 0xFF, 0x10, gUnk_08387D8C[v18[i]].palId,
                0x64, 0x48, 0x400);
            SpriteSomething(&local, 0x6000000, gUnk_08387D8C[v18[i]].animId, gUnk_08387D8C[v18[i]].variant,
                0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[v18[i]].palId & 0xF, 0x80000);
        }
        break;
    }
}

void sub_0814B2A0(struct Unk_0814E394 *a1, bool32 a2 __attribute__((unused))) {
    struct Sprite *sprite;

    if (!a1->unk0) {
        a1->unk60 = 0x8C0000;
        a1->unk68 = -0x23000;
        a1->unk70 = 0x960;
        sprite = &a1->unk10[0];
        sprite->animId = gUnk_08387E2C[5][0];
        sprite->variant = gUnk_08387E2C[5][1];
        sub_08155128(sprite);
        sprite = &a1->unk10[1];
        sprite->animId = gUnk_08387EB4[5][0];
        sprite->variant = gUnk_08387EB4[5][1];
        sub_08155128(sprite);
        a1->unk4 = sub_0814B7D8;
    } else {
        a1->unk60 = 0x780000;
        a1->unk74 = 0xCAA;
        a1->unk6C = -((Sqrt(a1->unk74 * ((a1->unk64 >> 0x10) - 0x4E) * 2) * 0x100) & 0xFFFFFF);
        sprite = &a1->unk10[0];
        sprite->animId = gUnk_08387E2C[0x1D][0];
        sprite->variant = gUnk_08387E2C[0x1D][1];
        sub_08155128(sprite);
        sprite = &a1->unk10[1];
        sprite->animId = gUnk_08387EB4[0x1D][0];
        sprite->variant = gUnk_08387EB4[0x1D][1];
        sub_08155128(sprite);
        a1->unk4 = sub_0814CB60;
    }
}

void sub_0814B368(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    a1->unk68 = 0x11000;
    a1->unk6C = -0x2C000;
    a1->unk74 = 0x2600;
    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0xB][0];
    sprite->variant = gUnk_08387E2C[0xB][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0xB][0];
    sprite->variant = gUnk_08387EB4[0xB][1];
    sub_08155128(sprite);
    m4aSongNumStart(587);
    a1->unk8 = 0;
    a1->unk4 = sub_0814B400;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B400(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0xE)
        a1->unk4 = sub_0814B4A4;
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B4A4(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0xC][0];
    sprite->variant = gUnk_08387E2C[0xC][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0xC][0];
    sprite->variant = gUnk_08387EB4[0xC][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814B54C;
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    sub_08155128(&a1->unk10[0]);
    sub_08155128(&a1->unk10[1]);
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B54C(struct Unk_0814E394 *a1) {
    u32 ret;

    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    sub_08155128(&a1->unk10[0]);
    ret = !sub_08155128(&a1->unk10[1]);
    if (ret)
        a1->unk4 = sub_0814B5D4;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B5D4(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0xD][0];
    sprite->variant = gUnk_08387E2C[0xD][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0xD][0];
    sprite->variant = gUnk_08387EB4[0xD][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814B67C;
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    sub_08155128(&a1->unk10[0]);
    sub_08155128(&a1->unk10[1]);
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B67C(struct Unk_0814E394 *a1) {
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    if (a1->unk64 >= 0x880000) {
        a1->unk64 = 0x880000;
        a1->unk4 = sub_0814B728;
        m4aSongNumStart(588);
    }
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B728(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0xE][0];
    sprite->variant = gUnk_08387E2C[0xE][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0xE][0];
    sprite->variant = gUnk_08387EB4[0xE][1];
    sub_08155128(sprite);
    a1->unk74 = 0;
    a1->unk6C = 0;
    a1->unk70 = 0;
    a1->unk68 = 0;
    a1->unk8 = 0;
    a1->unk4 = sub_0814E47C;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B784(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0][0];
    sprite->variant = gUnk_08387E2C[0][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0][0];
    sprite->variant = gUnk_08387EB4[0][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814E4AC;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B7D8(struct Unk_0814E394 *a1) {
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    if (a1->unk68 > 0) {
        a1->unk60 -= a1->unk68;
        a1->unk68 = 0;
        a1->unk70 = 0;
    }
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1])) {
        a1->unk10[1].unk1B = 0xFF;
        if (!a1->unk68)
            a1->unk4 = sub_0814E4C4;
        else
            a1->unk4 = sub_0814B88C;
    }
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

void sub_0814B88C(struct Unk_0814E394 *a1) {
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    if (a1->unk68 > 0) {
        a1->unk60 -= a1->unk68;
        a1->unk68 = 0;
        a1->unk70 = 0;
        a1->unk4 = sub_0814E4C4;
    }
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}
