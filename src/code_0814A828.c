#include "data.h"
#include "code_0814A828.h"
#include "functions.h"
#include "kirby.h"
#include "save.h"
#include "task.h"

static void sub_0814A914(void);
static void sub_0814ACA8(struct Unk_0814A828 *);
static void sub_0814ADC8(struct Unk_0814A828 *);
static void sub_0814B2A0(struct Unk_0814E394 *, bool32);
static void sub_0814B400(struct Unk_0814E394 *);
static void sub_0814B4A4(struct Unk_0814E394 *);
static void sub_0814B54C(struct Unk_0814E394 *);
static void sub_0814B5D4(struct Unk_0814E394 *);
static void sub_0814B67C(struct Unk_0814E394 *);
static void sub_0814B728(struct Unk_0814E394 *);
static void sub_0814B7D8(struct Unk_0814E394 *);
static void sub_0814B88C(struct Unk_0814E394 *);
static void sub_0814BA0C(struct Unk_0814E394 *);
static void sub_0814BAC4(struct Unk_0814E394 *);
static void sub_0814BB9C(struct Unk_0814E394 *);
static void sub_0814BC54(struct Unk_0814E394 *);
static void sub_0814BD00(struct Unk_0814E394 *);
static void sub_0814BDC8(struct Unk_0814E394 *);
static void sub_0814BE40(struct Unk_0814E394 *);
static void sub_0814BEE4(struct Unk_0814E394 *);
static void sub_0814BF70(struct Unk_0814E394 *);
static void sub_0814C014(struct Unk_0814E394 *);
static void sub_0814C0A0(struct Unk_0814E394 *);
static void sub_0814C144(struct Unk_0814E394 *);
static void sub_0814C1EC(struct Unk_0814E394 *);
static void sub_0814C274(struct Unk_0814E394 *);
static void sub_0814C31C(struct Unk_0814E394 *);
static void sub_0814C3C8(struct Unk_0814E394 *);
static void sub_0814C4F0(struct Unk_0814E394 *);
static void sub_0814C598(struct Unk_0814E394 *);
static void sub_0814C728(struct Unk_0814E394 *);
static void sub_0814C7CC(struct Unk_0814E394 *);
static void sub_0814C898(struct Unk_0814E394 *);
static void sub_0814C920(struct Unk_0814E394 *);
static void sub_0814CA04(struct Unk_0814E394 *);
static void sub_0814CAB0(struct Unk_0814E394 *);
static void sub_0814CB60(struct Unk_0814E394 *);
static void sub_0814CC0C(struct Unk_0814E394 *);
static void sub_0814CC80(struct Unk_0814E394 *);
static void sub_0814CCFC(struct Unk_0814E394 *);
static void sub_0814CDE4(struct Unk_0814E394 *);
static void sub_0814D0F4(struct Unk_0814EACC *);
static void sub_0814D198(struct Unk_0814EACC *);
static void sub_0814D228(struct Unk_0814EACC *);
static void sub_0814D2CC(struct Unk_0814EACC *);
static void sub_0814D370(struct Unk_0814EACC *);
static void sub_0814D438(struct Unk_0814EACC *);
static void sub_0814D4C8(struct Unk_0814EACC *);
static void sub_0814D56C(struct Unk_0814EACC *);
static void sub_0814D6A0(struct Unk_0814EACC *);
static void sub_0814DD64(struct Unk_0814E918 *);
static void sub_0814DDDC(struct Unk_0814E918 *);
static void sub_0814DE5C(struct Unk_0814E918 *);
static void sub_0814DEC4(struct Unk_0814E918 *);
static void sub_0814DF40(struct Unk_0814E918 *);
static void sub_0814DFF8(struct Unk_0814E918 *);
static void nullsub_12(struct Task *);
static void sub_0814E0B4(struct Unk_0814A828 *);
static void sub_0814E0D0(struct Unk_0814A828 *);
static void sub_0814E0E8(struct Unk_0814A828 *);
static void sub_0814E110(struct Unk_0814A828 *);
static void sub_0814E130(struct Unk_0814A828 *);
static void sub_0814E168(struct Unk_0814A828 *);
static void sub_0814E198(struct Unk_0814A828 *);
static void sub_0814E1C0(struct Unk_0814A828 *);
static void sub_0814E218(struct Unk_0814A828 *);
static void sub_0814E224(struct Unk_0814A828 *);
static void sub_0814E23C(struct Unk_0814A828 *);
static void sub_0814E264(struct Unk_0814A828 *);
static void sub_0814E270(struct Unk_0814A828 *);
static void sub_0814E284(struct Unk_0814A828 *);
static void sub_0814E290(struct Unk_0814A828 *);
static void sub_0814E320(struct Unk_0814A828 *);
static void sub_0814E348(struct Unk_0814A828 *);
static void sub_0814E36C(struct Unk_0814A828 *);
static struct Task *sub_0814E394(struct Unk_0814A828 *, u8);
static void nullsub_135(struct Task *);
static void sub_0814E408(void);
static void sub_0814E43C(struct Unk_0814E394 *);
static void sub_0814E47C(struct Unk_0814E394 *);
static void sub_0814E4AC(struct Unk_0814E394 *);
static void sub_0814E4C4(struct Unk_0814E394 *);
static void sub_0814E4DC(struct Unk_0814E394 *);
static void sub_0814E500(struct Unk_0814E394 *);
static void sub_0814E518(struct Unk_0814E394 *);
static void sub_0814E548(struct Unk_0814E394 *);
static void sub_0814E590(struct Unk_0814E394 *);
static void sub_0814E5A8(struct Unk_0814E394 *);
static void sub_0814E5D0(struct Unk_0814E394 *);
static void sub_0814E600(struct Unk_0814E394 *);
static void sub_0814E630(struct Unk_0814E394 *);
static void sub_0814E660(struct Unk_0814E394 *);
static void sub_0814E690(struct Unk_0814E394 *);
static void sub_0814E700(struct Unk_0814E394 *);
static void sub_0814E730(struct Unk_0814E394 *);
static void sub_0814E748(struct Unk_0814E394 *);
static void sub_0814E7AC(struct Unk_0814E394 *);
static void sub_0814E7F8(struct Unk_0814EACC *);
static void sub_0814E834(struct Unk_0814EACC *);
static void sub_0814E85C(struct Unk_0814EACC *);
static void sub_0814E890(struct Unk_0814EACC *);
static void sub_0814E8B8(struct Unk_0814EACC *);
static void sub_0814E900(struct Unk_0814EACC *);
static struct Task *sub_0814E918(struct Unk_0814A828 *);
static void nullsub_136(struct Task *);
static void sub_0814E988(void);
static void sub_0814E9BC(struct Unk_0814E918 *);
static void nullsub_137(struct Unk_0814E918 *);
static void sub_0814EA00(struct Unk_0814E918 *);
static void sub_0814EA3C(struct Unk_0814E918 *);
static void sub_0814EA74(struct Unk_0814A828 *);
static void sub_0814EAC0(struct Unk_0814A828 *);
static struct Task *sub_0814EACC(struct Unk_0814A828 *);
static void nullsub_138(struct Task *);
static void sub_0814EB38(void);
static void sub_0814EB6C(struct Unk_0814EACC *);
static void sub_0814EB84(struct Unk_0814EACC *);
static void sub_0814EB94(struct Unk_0814EACC *);
static void sub_0814EBB4(struct Unk_0814EACC *);


struct Unk_08387D8C {
    u16 animId;
    u16 variant;
    u8 unk4;
    u8 palId;
}; /* size = 8 */

static const struct Unk_08387D8C gUnk_08387D8C[] = {
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

static const u16 gUnk_08387E2C[][2] = {
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

static const u16 gUnk_08387EB4[][2] = {
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

static const u16 gUnk_08387F3C[][2] = {
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

static const u16 gUnk_08387F68[][2] = {
    { 0x2D3, 0x1 },
    { 0x2D3, 0x0 },
};

static const s16 gUnk_08387F70[][8] = {
    { 0x7B, 0x48,  0xD2, -0x1E, 0xDC, 0x28, 0x0, 0x0 },
    { 0x7F, 0x4C,  0x8C, -0x1E, 0xFA, 0x32, 0x0, 0x0 },
    { 0x80, 0x53, 0x10E,  0x1E, 0xDC, 0x78, 0x0, 0x0 },
    { 0x7D, 0x5A,  0xF0, -0x28, 0xC8, 0xDC, 0x0, 0x0 },
    { 0x75, 0x5A,  0x14, -0x28, 0x3C, 0xB4, 0x0, 0x0 },
    { 0x71, 0x55, -0x14,  0x28, 0x1E, 0x8C, 0x0, 0x0 },
    { 0x72, 0x4D,  0x78, -0x14,  0x0, 0x28, 0x0, 0x0 },
    { 0x74, 0x47,  0x46, -0x1E, 0x3C, 0x28, 0x0, 0x0 },
};

void sub_0814A828(void) {
    u16 color, i;
    struct Task *t;
    struct Unk_0814A828 *var;

    if (gUnk_0203AD10 & 0x10)
        sub_08039670();
    else if (gAIKirbyState < AI_KIRBY_STATE_NORMAL) {
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

static void sub_0814A914(void) {
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

static bool32 sub_0814A9E8(struct Unk_0814A828 *a1) {
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

static void sub_0814AA50(struct Unk_0814A828 *a1) {
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

static void sub_0814AAF4(struct Unk_0814A828 *a1) {
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

static void sub_0814AB7C(struct Unk_0814A828 *a1) {
    struct Sprite *sprite = &a1->unk10;
    struct Sprite local;

    SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[0].unk4 + 0x6012000, 0x3C0,
        gUnk_08387D8C[0].animId, gUnk_08387D8C[0].variant, 0, 0xFF, 0x10, gUnk_08387D8C[0].palId,
        0x78, 0x50, 0x80);
    SpriteSomething(&local, 0x6000000, gUnk_08387D8C[0].animId, gUnk_08387D8C[0].variant,
        0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[0].palId & 0xF, 0x80000);
}

static void sub_0814AC28(struct Unk_0814A828 *a1) {
    a1->unkA8[0] = sub_0814E394(a1, 0);
    a1->unkB8[0] = TaskGetStructPtr(a1->unkA8[0]);
    a1->unkA8[1] = sub_0814E394(a1, 1);
    a1->unkB8[1] = TaskGetStructPtr(a1->unkA8[1]);
    sub_0814ADC8(a1);
    a1->unk8 = sub_0814ACA8;
}

static void sub_0814ACA8(struct Unk_0814A828 *a1) {
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

static void sub_0814AD44(struct Unk_0814A828 *a1) {
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

static void sub_0814ADC8(struct Unk_0814A828 *a1) {
    struct Sprite *sprite, local;

    sprite = &a1->unk38;
    SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[5].unk4 + 0x6012000, 0x140,
        gUnk_08387D8C[5].animId, gUnk_08387D8C[5].variant, 0, 0xFF, 0x10, gUnk_08387D8C[5].palId,
        0x78, 0x50, 0x80);
    SpriteSomething(&local, 0x6000000, gUnk_08387D8C[5].animId, gUnk_08387D8C[5].variant,
        0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[5].palId & 0xF, 0x80000);
}

static void sub_0814AE78(struct Unk_0814A828 *a1) {
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

static void sub_0814AF04(struct Unk_0814A828 *a1) {
    u8 i;

    if (!(gUnk_0203AD10 & 0x10)
        && gAIKirbyState < AI_KIRBY_STATE_NORMAL) {
        gAIKirbyState = AI_KIRBY_STATE_NORMAL;
        if (gUnk_0203AD10 & 2) {
            if (gUnk_0203AD3C == gUnk_0203AD24)
                updateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
            else
                sub_08031CE4(8);
        } else {
            updateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
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

static void sub_0814B024(struct Unk_0814E394 *a1) {
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

static void sub_0814B2A0(struct Unk_0814E394 *a1, bool32 a2 __attribute__((unused))) {
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

static void sub_0814B368(struct Unk_0814E394 *a1) {
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

static void sub_0814B400(struct Unk_0814E394 *a1) {
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

static void sub_0814B4A4(struct Unk_0814E394 *a1) {
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

static void sub_0814B54C(struct Unk_0814E394 *a1) {
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

static void sub_0814B5D4(struct Unk_0814E394 *a1) {
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

static void sub_0814B67C(struct Unk_0814E394 *a1) {
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

static void sub_0814B728(struct Unk_0814E394 *a1) {
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

static void sub_0814B784(struct Unk_0814E394 *a1) {
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

static void sub_0814B7D8(struct Unk_0814E394 *a1) {
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

static void sub_0814B88C(struct Unk_0814E394 *a1) {
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

static void sub_0814B908(struct Unk_0814E394 *a1) {
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
    a1->unk4 = sub_0814E518;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814B95C(struct Unk_0814E394 *a1) {
    struct Unk_0814A828 *unkC = a1->unkC;
    struct Sprite *sprite;
    int var = 0x2D;

    unkC->unk4 |= 4;
    unkC->unkA4 = 0;
    unkC->unkA6 = var;
    unkC->unkA0 = sub_0814A9E8;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    a1->unk60 = 0x500000;
    a1->unk68 = 0x1E000;
    a1->unk70 = -0x7D0;
    a1->unk64 = 0x500000;
    a1->unk6C = 0;
    a1->unk74 = 0x130;
    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0x18][0];
    sprite->variant = gUnk_08387E2C[0x18][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0x18][0];
    sprite->variant = gUnk_08387EB4[0x18][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814BA0C;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BA0C(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x1D)
        a1->unk4 = sub_0814BAC4;
    if (a1->unk1 >= 0
        && ++a1->unk1 > 0xD) {
        a1->unk1 = -1;
        m4aSongNumStart(587);
    }
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    if (a1->unk68 < 0) {
        a1->unk70 = 0;
        a1->unk68 = 0;
    }
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    sub_08155128(&a1->unk10[0]);
    sub_08155128(&a1->unk10[1]);
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BAC4(struct Unk_0814E394 *a1) {
    struct Unk_0814A828 *unkC = a1->unkC;
    struct Sprite *sprite, *sprite2;
    int var = 0x2D;

    unkC->unk4 |= 4;
    unkC->unkA4 = 0;
    unkC->unkA6 = var;
    unkC->unkA0 = sub_0814A9E8;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    a1->unk60 = 0xA00000;
    a1->unk68 = -0x1E000;
    a1->unk70 = 0x7D0;
    a1->unk64 = 0x500000;
    a1->unk6C = 0;
    a1->unk74 = 0x130;
    sprite = &a1->unk10[0];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    sprite2 = &a1->unk10[0];
    sprite2->animId = gUnk_08387E2C[7][0];
    sprite2->variant = gUnk_08387E2C[7][1];
    sub_08155128(sprite2);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[7][0];
    sprite->variant = gUnk_08387EB4[7][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk1 = 0;
    a1->unk4 = sub_0814BB9C;
    ++a1; --a1;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(sprite);
}

static void sub_0814BB9C(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x1D)
        a1->unk4 = sub_0814BC54;
    if (a1->unk1 >= 0
        && ++a1->unk1 > 0xD) {
        a1->unk1 = -1;
        m4aSongNumStart(587);
    }
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    if (a1->unk68 > 0) {
        a1->unk70 = 0;
        a1->unk68 = 0;
    }
    a1->unk10[0].x = a1->unk10[1].x = a1->unk60 >> 0x10;
    a1->unk10[0].y = a1->unk10[1].y = a1->unk64 >> 0x10;
    sub_08155128(&a1->unk10[0]);
    sub_08155128(&a1->unk10[1]);
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BC54(struct Unk_0814E394 *a1) {
    struct Unk_0814A828 *unkC = a1->unkC;
    struct Sprite *sprite;
    int var = 0x78;

    unkC->unk4 |= 4;
    unkC->unkA4 = 0;
    unkC->unkA6 = var;
    unkC->unkA0 = sub_0814A9E8;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    a1->unk60 = 0x780000;
    a1->unk70 = 0;
    a1->unk68 = 0;
    a1->unk64 = 0x230000;
    a1->unk6C = 0;
    a1->unk74 = 0x2600;
    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0x11][0];
    sprite->variant = gUnk_08387E2C[0x11][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0x11][0];
    sprite->variant = gUnk_08387EB4[0x11][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk1 = 0;
    a1->unk4 = sub_0814BD00;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BD00(struct Unk_0814E394 *a1) {
    if (a1->unk1 >= 0
        && ++a1->unk1 > 0xD) {
        a1->unk1 = -1;
        m4aSongNumStart(587);
    }
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
    if (a1->unk64 >= 0x600000)
        a1->unk4 = sub_0814BDC8;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BDC8(struct Unk_0814E394 *a1) {
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
    a1->unk4 = sub_0814BE40;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BE40(struct Unk_0814E394 *a1) {
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
    if (a1->unk64 >= 0x880000) {
        a1->unk64 = 0x880000;
        a1->unk4 = sub_0814BEE4;
    }
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BEE4(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;
    struct Unk_0814A828 *var;

    a1->unk6C = 0;
    a1->unk74 = 0;
    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0xA][0];
    sprite->variant = gUnk_08387E2C[0xA][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0xA][0];
    sprite->variant = gUnk_08387EB4[0xA][1];
    sub_08155128(sprite);
    var = a1->unkC;
    if (!(var->unk4 & 0x80000000))
        var->unk8 = sub_0814E224;
    a1->unk8 = 0;
    a1->unk4 = sub_0814BF70;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814BF70(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 9)
        a1->unk4 = sub_0814C014;
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

static void sub_0814C014(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    a1->unk68 = 0x14000;
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
    a1->unk8 = 0;
    a1->unk4 = sub_0814C0A0;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814C0A0(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0xE)
        a1->unk4 = sub_0814C144;
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

static void sub_0814C144(struct Unk_0814E394 *a1) {
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
    a1->unk4 = sub_0814C1EC;
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

static void sub_0814C1EC(struct Unk_0814E394 *a1) {
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
        a1->unk4 = sub_0814C274;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814C274(struct Unk_0814E394 *a1) {
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
    a1->unk4 = sub_0814C31C;
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

static void sub_0814C31C(struct Unk_0814E394 *a1) {
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
        a1->unk4 = sub_0814C3C8;
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

static void sub_0814C3C8(struct Unk_0814E394 *a1) {
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
    a1->unk4 = sub_0814E600;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814C424(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0][0];
    sprite->variant = gUnk_08387E2C[0][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0][0];
    sprite->variant = gUnk_08387EB4[0][1];
    sub_08155128(sprite);    a1->unk8 = 0;
    a1->unk4 = sub_0814E630;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814C478(struct Unk_0814E394 *a1) {
    struct Sprite *sprite, *sprite2;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[2][0];
    sprite->variant = gUnk_08387E2C[2][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[2][0];
    sprite->variant = gUnk_08387EB4[2][1];
    sub_08155128(sprite);
    sprite2 = &a1->unk10[0];
    sprite2->unk8 ^= 0x400;
    sub_08155128(sprite2);
    sprite = &a1->unk10[1];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    a1->unk68 = 0xC000;
    a1->unk8 = 0;
    a1->unk4 = sub_0814C4F0;
    ++a1; --a1;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(sprite);
}

static void sub_0814C4F0(struct Unk_0814E394 *a1) {
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    if (a1->unk60 >= 0xB80000) {
        a1->unk60 = 0xB80000;
        a1->unk70 = 0;
        a1->unk68 = 0;
        a1->unk4 = sub_0814C598;
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

static void sub_0814C598(struct Unk_0814E394 *a1) {
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
    a1->unk4 = sub_0814E660;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814C5EC(struct Unk_0814E394 *a1) {
    struct Sprite *sprite, *sprite2;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0x1E][0];
    sprite->variant = gUnk_08387E2C[0x1E][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0x1E][0];
    sprite->variant = gUnk_08387EB4[0x1E][1];
    sub_08155128(sprite);
    sprite2 = &a1->unk10[0];
    sprite2->unk8 ^= 0x400;
    sub_08155128(sprite2);
    sprite = &a1->unk10[1];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    m4aSongNumStart(590);
    a1->unk8 = 0;
    a1->unk4 = sub_0814E690;
    ++a1; --a1;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(sprite);
}

static void sub_0814C674(struct Unk_0814E394 *a1) {
    struct Sprite *sprite, *sprite2;

#ifndef NONMATCHING
    asm("":::"r6");
#endif
    a1->unk68 = -0x30000;
    a1->unk70 = 0x1C00;
    a1->unk6C = 0;
    a1->unk74 = 0;
    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0x1C][0];
    sprite->variant = gUnk_08387E2C[0x1C][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0x1C][0];
    sprite->variant = gUnk_08387EB4[0x1C][1];
    sub_08155128(sprite);
    sprite2 = &a1->unk10[0];
    sprite2->unk8 ^= 0x400;
    sub_08155128(sprite2);
    sprite = &a1->unk10[1];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814C728;
    ++a1; --a1;
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(sprite))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(sprite);
}

static void sub_0814C728(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x1D)
        a1->unk4 = sub_0814C7CC;
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

static void sub_0814C7CC(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    a1->unk68 = 0;
    a1->unk70 = 0;
    a1->unk6C = 0;
    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0x1D][0];
    sprite->variant = gUnk_08387E2C[0x1D][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0x1D][0];
    sprite->variant = gUnk_08387EB4[0x1D][1];
    sub_08155128(sprite);
    a1->unk10[0].unk1C *= 2;
    a1->unk10[1].unk1C *= 2;
    a1->unk8 = 0;
    a1->unk4 = sub_0814C898;
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

static void sub_0814C898(struct Unk_0814E394 *a1) {
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
        a1->unk4 = sub_0814C920;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814C920(struct Unk_0814E394 *a1) {
    struct Sprite *sprite, *sprite2;

    a1->unk68 = 0;
    a1->unk6C = 0;
    a1->unk74 = 0x2600;
    sprite = &a1->unk10[0];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    a1->unk10[0].unk1C >>= 1;
    a1->unk10[1].unk1C >>= 1;
    sprite2 = &a1->unk10[0];
    sprite2->animId = gUnk_08387E2C[0xD][0];
    sprite2->variant = gUnk_08387E2C[0xD][1];
    sub_08155128(sprite2);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0xD][0];
    sprite->variant = gUnk_08387EB4[0xD][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814CA04;
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
    ++a1; --a1;
    sub_08155128(&a1->unk10[0]);
    sub_08155128(sprite);
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(sprite);
}

static void sub_0814CA04(struct Unk_0814E394 *a1) {
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
        a1->unk4 = sub_0814CAB0;
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

static void sub_0814CAB0(struct Unk_0814E394 *a1) {
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
    a1->unk4 = sub_0814E700;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814CB0C(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk10[0];
    sprite->animId = gUnk_08387E2C[0xA][0];
    sprite->variant = gUnk_08387E2C[0xA][1];
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->animId = gUnk_08387EB4[0xA][0];
    sprite->variant = gUnk_08387EB4[0xA][1];
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814E730;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814CB60(struct Unk_0814E394 *a1) {
    a1->unk68 += a1->unk70;
    a1->unk6C += a1->unk74;
    if (a1->unk6C >= 0x4A000) {
        a1->unk6C = 0x4A000;
        a1->unk74 = 0;
    }
    a1->unk60 += a1->unk68;
    a1->unk64 += a1->unk6C;
    if (a1->unk6C >= 0 && a1->unk64 >= 0x500000) {
        a1->unk64 = 0x500000;
        a1->unk74 = 0;
        a1->unk6C = 0;
        a1->unk4 = sub_0814CC0C;
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

static void sub_0814CC0C(struct Unk_0814E394 *a1) {
    a1->unkC->unkB8[0]->unk4 = sub_0814E4DC;
    a1->unk8 = 0;
    a1->unk4 = sub_0814CC80;
    if (a1->unk10[0].unk1C < 0xFF) {
        ++a1->unk10[0].unk1C;
        ++a1->unk10[1].unk1C;
    }
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814CC80(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0xE)
        a1->unk4 = sub_0814CCFC;
    if (a1->unk10[0].unk1C < 0xFF && !(a1->unk8 & 7)) {
        ++a1->unk10[0].unk1C;
        ++a1->unk10[1].unk1C;
    }
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814CCFC(struct Unk_0814E394 *a1) {
    struct Unk_0814A828 *unkC = a1->unkC;

    unkC->unkB8[0]->unk4 = sub_0814B908;
    a1->unk8 = 0;
    a1->unk4 = sub_0814CDE4;
    if (unkC->unk4 & 0x80000000) {
        a1->unk4 = sub_0814E7AC;
        if (!sub_08155128(&a1->unk10[0]))
            a1->unk10[0].unk1B = 0xFF;
        if (!sub_08155128(&a1->unk10[1]))
            a1->unk10[1].unk1B = 0xFF;
        sub_0815604C(&a1->unk10[0]);
        sub_0815604C(&a1->unk10[1]);
    } else {
        unkC->unk4 |= 2;
        gBldRegs.bldCnt = BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0);
        m4aSongNumStart(586);
        if (a1->unk10[0].unk1C < 0xFF && !(a1->unk8 & 7)) {
            ++a1->unk10[0].unk1C;
            ++a1->unk10[1].unk1C;
        }
        if (!sub_08155128(&a1->unk10[0]))
            a1->unk10[0].unk1B = 0xFF;
        if (!sub_08155128(&a1->unk10[1]))
            a1->unk10[1].unk1B = 0xFF;
        sub_0815604C(&a1->unk10[0]);
        sub_0815604C(&a1->unk10[1]);
    }
}

static void sub_0814CDE4(struct Unk_0814E394 *a1) {
    struct Sprite *sprite = &a1->unkC->unk38;

    if (++a1->unk8 > 0x4A)
        a1->unk4 = sub_0814E748;
    gBldRegs.bldY = 0x10 * a1->unk8 / 0x4B;
    if (++a1->unk1 > 7) {
        a1->unk1 = 0;
        m4aSongNumStart(586);
    }
    if (!sub_08155128(&a1->unk10[0]))
        a1->unk10[0].unk1B = 0xFF;
    if (!sub_08155128(&a1->unk10[1]))
        a1->unk10[1].unk1B = 0xFF;
    if (!sub_08155128(sprite))
        sprite->unk1B = 0xFF;
    if (a1->unk10[0].unk1C < 0xFF && !(a1->unk8 & 7)) {
        ++a1->unk10[0].unk1C;
        ++a1->unk10[1].unk1C;
    }
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
    sub_0815604C(sprite);
}

static void sub_0814CEAC(struct Unk_0814E394 *a1) {
    struct Sprite *sprite = &a1->unkC->unk38;

    if (++a1->unk8 > 9) {
        if (!(a1->unkC->unk4 & 0x80000000))
            a1->unkC->unk8 = sub_0814E1C0;
        a1->unkC->unkA8[a1->unk0] = 0;
        a1->unkC->unkB8[a1->unk0] = 0;
        TaskDestroy(gCurTask);
    } else {
        if (++a1->unk1 > 7) {
            a1->unk1 = 0;
            m4aSongNumStart(586);
        }
        if (!sub_08155128(sprite))
            sprite->unk1B = 0xFF;
        sub_0815604C(sprite);
    }
}

static void sub_0814CF34(struct Unk_0814EACC *a1) {
    struct Sprite local[2];
    struct Sprite *sprite, *sprite2;

    sprite = &local[0];
    SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[7].unk4 + 0x6012000, 0x3FC0, gUnk_08387D8C[7].animId, gUnk_08387D8C[7].variant,
        0, 0xFF, 0x10, gUnk_08387D8C[7].palId, -0x40, -0x40, 0);
    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[6].unk4 + 0x6012000, 0x280, gUnk_08387D8C[6].animId, gUnk_08387D8C[6].variant,
        0, 0xFF, 0x10, gUnk_08387D8C[6].palId, 0x14, -0x14, 0x40000);
    sprite2 = &local[1];
    SpriteSomething(sprite2, 0x6000000, gUnk_08387D8C[7].animId, gUnk_08387D8C[7].variant, 0xFF, 0, 0, 0, 0, 0x10,
        gUnk_08387D8C[7].palId & 0xF, 0x80000);
}

static void sub_0814D034(struct Unk_0814EACC *a1) {
    if (!a1->unk7 && a1->unk38 >= -0x80000) {
        m4aSongNumStart(593);
        a1->unk7 = 1;
    }
    if (++a1->unk4 > 0x22)
        a1->unk0 = sub_0814D0F4;
    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D0F4(struct Unk_0814EACC *a1) {
    struct Sprite *sprite = &a1->unkC;

    sprite->animId = gUnk_08387F3C[6][0];
    sprite->variant = gUnk_08387F3C[6][1];
    sub_08155128(sprite);
    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    a1->unk0 = sub_0814D198;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D198(struct Unk_0814EACC *a1) {
    u32 var;

    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    var = !sub_08155128(&a1->unkC);
    if (var)
        a1->unk0 = sub_0814D228;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D228(struct Unk_0814EACC *a1) {
    struct Sprite *sprite = &a1->unkC;

    sprite->animId = gUnk_08387F3C[7][0];
    sprite->variant = gUnk_08387F3C[7][1];
    sub_08155128(sprite);
    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    a1->unk0 = sub_0814D2CC;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D2CC(struct Unk_0814EACC *a1) {
    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    if (a1->unk38 >= 0x880000) {
        a1->unk38 = 0x880000;
        a1->unk0 = sub_0814D370;
    }
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D370(struct Unk_0814EACC *a1) {
    struct Sprite *sprite;

    m4aSongNumStart(591);
    sprite = &a1->unkC;
    sprite->animId = gUnk_08387F3C[8][0];
    sprite->variant = gUnk_08387F3C[8][1];
    sub_08155128(sprite);
    a1->unk40 /= -2;
    a1->unk48 = 0x1388;
    a1->unk3C = a1->unk44 + 0x10000;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    a1->unk0 = sub_0814D438;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D438(struct Unk_0814EACC *a1) {
    u32 var;

    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    var = !sub_08155128(&a1->unkC);
    if (var)
        a1->unk0 = sub_0814D4C8;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D4C8(struct Unk_0814EACC *a1) {
    struct Sprite *sprite = &a1->unkC;

    sprite->animId = gUnk_08387F3C[5][0];
    sprite->variant = gUnk_08387F3C[5][1];
    sub_08155128(sprite);
    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    a1->unk0 = sub_0814D56C;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D56C(struct Unk_0814EACC *a1) {
    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    if (a1->unk38 >= 0x880000) {
        a1->unk38 = 0x880000;
        m4aSongNumStart(105);
        a1->unk0 = sub_0814E7F8;
    }
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D618(struct Unk_0814EACC *a1) {
    struct Sprite *sprite;

    m4aSongNumStart(592);
    sprite = &a1->unkC;
    sprite->animId = gUnk_08387F3C[1][0];
    sprite->variant = gUnk_08387F3C[1][1];
    sub_08155128(sprite);
    a1->unk44 = 0x2000;
    a1->unk48 = 0;
    a1->unk3C = 0x2000;
    a1->unk40 = 0;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    a1->unk0 = sub_0814D6A0;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D6A0(struct Unk_0814EACC *a1) {
    if (++a1->unk6 > 0x13) {
        a1->unk6 = 0;
        m4aSongNumStart(592);
    }
    a1->unk3C += a1->unk44;
    if (abs(a1->unk3C) >= 0x14C00) {
        a1->unk3C = a1->unk3C > 0 ? 0x14C00 : -0x14C00;
        a1->unk44 = 0;
    }
    a1->unk40 += a1->unk48;
    if (a1->unk40 >= 0x28000) {
        a1->unk40 = 0x28000;
        a1->unk48 = 0;
    }
    a1->unk34 += a1->unk3C;
    a1->unk38 += a1->unk40;
    if (a1->unk34 >= 0xB80000) {
        a1->unk34 = 0xB80000;
        a1->unk0 = sub_0814E85C;
    }
    a1->unkC.x = a1->unk34 >> 0x10;
    a1->unkC.y = a1->unk38 >> 0x10;
    if (!sub_08155128(&a1->unkC))
        a1->unkC.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
}

static void sub_0814D75C(struct Unk_0814E918 *a1) {
    u8 i;
    struct Sprite *r2, *r7, sp00;

    for (i = 0; i < 8; ++i) {
        r2 = &a1->unkC[i];
        SpriteInitNoPointer2(r2, 0x20 * gUnk_08387D8C[i + 0xA].unk4 + 0x6012000, 0x140, gUnk_08387D8C[i + 0xA].animId, gUnk_08387D8C[i + 0xA].variant, 0, 0xFF, 0x10,
            gUnk_08387D8C[i + 0xA].palId, gUnk_08387F70[i][0], gUnk_08387F70[i][1], 0x40000);
        r7 = &sp00;
        SpriteSomething(r7, 0x6000000, gUnk_08387D8C[i + 0xA].animId, gUnk_08387D8C[i + 0xA].variant, 0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[i + 0xA].palId & 0xF, 0x80000);
    }
    r2 = &a1->unk14C;
    SpriteInitNoPointer2(r2, 0x20 * gUnk_08387D8C[0x12].unk4 + 0x6012000, 0x180, gUnk_08387D8C[0x12].animId, gUnk_08387D8C[0x12].variant,
        0, 0xFF, 0x10, gUnk_08387D8C[0x12].palId, -0x40, -0x40, 0);
    SpriteSomething(&sp00, 0x6000000, gUnk_08387D8C[0x12].animId, gUnk_08387D8C[0x12].variant, 0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[0x12].palId & 0xF, 0x80000);
    r2 = &a1->unk178;
    SpriteInitNoPointer2(r2, 0x20 * gUnk_08387D8C[0x13].unk4 + 0x6012000, 0x1C0, gUnk_08387D8C[0x13].animId, gUnk_08387D8C[0x13].variant,
        0, 0xFF, 0x10, gUnk_08387D8C[0x13].palId, -0x40, -0x40, 0);
    SpriteSomething(&sp00, 0x6000000, gUnk_08387D8C[0x13].animId, gUnk_08387D8C[0x13].variant, 0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[0x13].palId & 0xF, 0x80000);
}

static void sub_0814D984(struct Unk_0814E918 *a1) {
    u8 i;
    struct Sprite *sprite = &a1->unk14C;

    if (++a1->unk174 > 0) {
        a1->unk174 = 0;
        a1->unk175 = !a1->unk175;
    }
    if (a1->unk175) {
        for (i = 0; i < 8; ++i) {
            sprite->x = (a1->unk1A0[i][0] >> 0x10) + gUnk_08387F70[i][6];
            sprite->y = (a1->unk1A0[i][1] >> 0x10) + gUnk_08387F70[i][7];
            sub_0815604C(&a1->unk14C);
        }
    }
}

static void sub_0814DA28(struct Unk_0814E918 *a1) {
    u8 i, j;
    struct Sprite *sprite = &a1->unk178;

    for (i = 0; i < 4; ++i) {
        for (j = 0; j < 8; ++j) {
            s32 v4 = ({a1->unk260[j] - 2;}) - a1->unk280[j] * i * 2;

            if (v4 > 0) {
                s32 v5 = ((0x10000 - v4) >> 8) * ((0x10000 - v4) >> 8);
                s32 v7 = (v4 >> 8) * ((0x10000 - v4) >> 8) * 2;
                s32 v6 = (v4 >> 8) * (v4 >> 8);
                s32 v8 = v5 * gUnk_08387F70[j][0] + gUnk_08387F70[j][4] * v7 + gUnk_08387F70[j][2] * v6;
                s32 v9 = v5 * gUnk_08387F70[j][1] + gUnk_08387F70[j][5] * v7 + gUnk_08387F70[j][3] * v6;

                sprite->x = (v8 >> 0x10) + gUnk_08387F70[j][6];
                sprite->y = (v9 >> 0x10) + gUnk_08387F70[j][7];
                sub_0815604C(sprite);
            }
        }
        if (!sub_08155128(sprite))
            sprite->unk1B = 0xFF;
    }
}

static void sub_0814DB40(struct Unk_0814E918 *a1) {
    u8 i;

    for (i = 0; i < 8; ++i) {
        a1->unk1E0[i][0] += a1->unk220[i][0];
        a1->unk1E0[i][1] += a1->unk220[i][1];
        a1->unk1A0[i][0] += a1->unk1E0[i][0];
        a1->unk1A0[i][1] += a1->unk1E0[i][1];
    }
}

static void sub_0814DBD0(struct Unk_0814E918 *a1) {
    u8 i;
    s32 var1, v5, var2, var3;

    for (i = 0; i < 8; ++i) {
        v5 = a1->unk260[i] += a1->unk280[i];
        var1 = ((0x10000 - v5) >> 8) * ((0x10000 - v5) >> 8);
        var2 = (v5 >> 8) * ((0x10000 - v5) >> 8) * 2;
        var3 = (v5 >> 8) * (v5 >> 8);
        a1->unk1A0[i][0] = var1 * gUnk_08387F70[i][0] + gUnk_08387F70[i][4] * var2 + gUnk_08387F70[i][2] * var3;
        a1->unk1A0[i][1] = var1 * gUnk_08387F70[i][1] + gUnk_08387F70[i][5] * var2 + gUnk_08387F70[i][3] * var3;
    }
}

static void sub_0814DCBC(struct Unk_0814E918 *a1) {
    u8 i, j;

    for (i = 0; i < 8; ++i) {
        a1->unk1E0[i][0] = ((gUnk_08387F70[i][0] - 0x78) << 0x10) / 0xF;
        a1->unk1E0[i][1] = ((gUnk_08387F70[i][1] - 0x50) << 0x10) / 0xF;
    }
    a1->unk4 = 0;
    a1->unk0 = sub_0814DD64;
    for (j = 0; j < 8; ++j)
        sub_0815604C(&a1->unkC[j]);
    sub_0814D984(a1);
}

static void sub_0814DD64(struct Unk_0814E918 *a1) {
    u8 i, j;

    if (++a1->unk4 > 0xE)
        a1->unk0 = sub_0814DDDC;
    sub_0814DB40(a1);
    for (i = 0; i < 8; ++i) {
        a1->unkC[i].x = a1->unk1A0[i][0] >> 0x10;
        a1->unkC[i].y = a1->unk1A0[i][1] >> 0x10;
    }
    for (j = 0; j < 8; ++j)
        sub_0815604C(&a1->unkC[j]);
    sub_0814D984(a1);
}

static void sub_0814DDDC(struct Unk_0814E918 *a1) {
    u8 i, j, k;

    for (i = 0; i < 8; ++i)
        a1->unk1E0[i][0] = a1->unk1E0[i][1] = 0;
    a1->unk4 = 0;
    a1->unk0 = sub_0814DE5C;
    for (k = 0; k < 8; ++k) {
        if (!sub_08155128(&a1->unkC[k]))
            a1->unkC[k].unk1B = 0xFF;
    }
    for (j = 0; j < 8; ++j)
        sub_0815604C(&a1->unkC[j]);
    sub_0814D984(a1);
}

static void sub_0814DE5C(struct Unk_0814E918 *a1) {
    u8 j, k;

    if (++a1->unk4 > 0)
        a1->unk0 = sub_0814DEC4;
    for (k = 0; k < 8; ++k) {
        if (!sub_08155128(&a1->unkC[k]))
            a1->unkC[k].unk1B = 0xFF;
    }
    for (j = 0; j < 8; ++j)
        sub_0815604C(&a1->unkC[j]);
    sub_0814D984(a1);
}

static void sub_0814DEC4(struct Unk_0814E918 *a1) {
    u8 i, j, k;

    for (i = 0; i < 8; ++i)
        a1->unk280[i] = 0x369;
    a1->unk4 = 0;
    a1->unk0 = sub_0814DF40;
    for (k = 0; k < 8; ++k) {
        if (!sub_08155128(&a1->unkC[k]))
            a1->unkC[k].unk1B = 0xFF;
    }
    for (j = 0; j < 8; ++j)
        sub_0815604C(&a1->unkC[j]);
    sub_0814D984(a1);
}

static void sub_0814DF40(struct Unk_0814E918 *a1) {
    u8 i, j, k;

    sub_0814DBD0(a1);
    for (i = 0; i < 8; ++i) {
        a1->unkC[i].x = a1->unk1A0[i][0] >> 0x10;
        a1->unkC[i].y = a1->unk1A0[i][1] >> 0x10;
    }
    if (++a1->unk4 > 9) {
        if (!(a1->unk8->unk4 & 0x80000000))
            a1->unk8->unk8 = sub_0814E270;
        a1->unk4 = 0;
        a1->unk0 = sub_0814DFF8;
    }
    for (k = 0; k < 8; ++k) {
        if (!sub_08155128(&a1->unkC[k]))
            a1->unkC[k].unk1B = 0xFF;
    }
    sub_0814DA28(a1);
    for (j = 0; j < 8; ++j)
        sub_0815604C(&a1->unkC[j]);
    sub_0814D984(a1);
}

static void sub_0814DFF8(struct Unk_0814E918 *a1) {
    u8 i, j, k;

    sub_0814DBD0(a1);
    for (i = 0; i < 8; ++i) {
        a1->unkC[i].x = a1->unk1A0[i][0] >> 0x10;
        a1->unkC[i].y = a1->unk1A0[i][1] >> 0x10;
    }
    if (++a1->unk4 > 0x40) {
        a1->unk8->unkB0[1] = 0;
        a1->unk8->unkC4 = 0;
        TaskDestroy(gCurTask);
    } else {
        for (k = 0; k < 8; ++k) {
            if (!sub_08155128(&a1->unkC[k]))
                a1->unkC[k].unk1B = 0xFF;
        }
        sub_0814DA28(a1);
        for (j = 0; j < 8; ++j)
            sub_0815604C(&a1->unkC[j]);
        sub_0814D984(a1);
    }
}

static void nullsub_12(struct Task *t __attribute__((unused))) {}

static void sub_0814E0B4(struct Unk_0814A828 *a1) {
    sub_0814AA50(a1);
    sub_0814AAF4(a1);
    a1->unk8 = sub_0814E0D0;
}

static void sub_0814E0D0(struct Unk_0814A828 *a1) {
    sub_0814AB7C(a1);
    a1->unk8 = sub_0814AC28;
}

static void sub_0814E0E8(struct Unk_0814A828 *a1) {
    if (a1->unkC++ > 0x20)
        a1->unk8 = sub_0814E110;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E110(struct Unk_0814A828 *a1) {
    m4aSongNumStart(26);
    a1->unk8 = sub_0814E130;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E130(struct Unk_0814A828 *a1) {
    if (++a1->unkC > 0xB3) {
        m4aSongNumStart(585);
        a1->unkC = 0;
        a1->unk8 = sub_0814E168;
    }
    sub_0815604C(&a1->unk10);
}

static void sub_0814E168(struct Unk_0814A828 *a1) {
    if (++a1->unkC > 4)
        a1->unk8 = sub_0814AD44;
    sub_08155128(&a1->unk10);
    sub_0815604C(&a1->unk10);
}

static void sub_0814E198(struct Unk_0814A828 *a1) {
    if (!sub_08155128(&a1->unk10))
        a1->unk10.unk1B = 0xFF;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E1C0(struct Unk_0814A828 *a1) {
    a1->unkB0[1] = sub_0814E918(a1);
    a1->unkC4 = TaskGetStructPtr(a1->unkB0[1]);
    a1->unkB8[0]->unk4 = sub_0814E5A8;
    a1->unk8 = sub_0814E218;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E218(struct Unk_0814A828 *a1) {
    sub_0815604C(&a1->unk10);
}

static void sub_0814E224(struct Unk_0814A828 *a1) {
    a1->unkC = 0;
    a1->unk8 = sub_0814E23C;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E23C(struct Unk_0814A828 *a1) {
    if (++a1->unkC > 0x59)
        a1->unk8 = sub_0814AE78;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E264(struct Unk_0814A828 *a1) {
    sub_0815604C(&a1->unk10);
}

static void sub_0814E270(struct Unk_0814A828 *a1) {
    a1->unk8 = sub_0814E284;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E284(struct Unk_0814A828 *a1) {
    sub_0815604C(&a1->unk10);
}

static void sub_0814E290(struct Unk_0814A828 *a1) {
    u16 color = RGB_WHITE;
    struct Unk_02022930_0 *var = sub_0803CA20(7);

    var->unk8 |= 0x180;
    var->unk4 = 0xFFFF;
    var->unk6 = 0xFFFF;
    sub_0803D21C(&color, 0, 1);
    a1->unk4 |= 0x80000000;
    m4aMPlayFadeOut(&gUnk_030016A0, 2);
    m4aMPlayFadeOut(&gUnk_030016E0, 2);
    m4aMPlayFadeOut(&gUnk_03001720, 2);
    m4aMPlayFadeOut(&gUnk_03001770, 2);
    a1->unkC = 0;
    a1->unk8 = sub_0814E320;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E320(struct Unk_0814A828 *a1) {
    if (a1->unkC++ > 0x20)
        a1->unk8 = sub_0814E348;
    sub_0815604C(&a1->unk10);
}

static void sub_0814E348(struct Unk_0814A828 *a1) {
    m4aMPlayAllStop();
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    a1->unk8 = sub_0814E36C;
}

static void sub_0814E36C(struct Unk_0814A828 *a1) {
    m4aSongNumStart(gRoomProps[0x321].songIdx);
    a1->unk8 = sub_0814AF04;
}

static struct Task *sub_0814E394(struct Unk_0814A828 *a1, u8 a2) {
    struct Task *t = TaskCreate(sub_0814E408, sizeof(struct Unk_0814E394), 0x2000, TASK_x0004 | TASK_USE_IWRAM, nullsub_135);
    struct Unk_0814E394 *var = TaskGetStructPtr(t);

    CpuFill16(0, var, sizeof(struct Unk_0814E394));
    var->unk4 = sub_0814E43C;
    var->unk0 = a2;
    var->unkC = a1;
    return t;
}

static void nullsub_135(struct Task *t __attribute__((unused))) {}

static void sub_0814E408(void) {
    struct Unk_0814E394 *var = TaskGetStructPtr(gCurTask);

    var->unk4(var);
}

static void sub_0814E43C(struct Unk_0814E394 *a1) {
    if (!a1->unk0) {
        a1->unk60 = 0x840000;
        a1->unk64 = 0x500000;
        a1->unk4 = sub_0814B368;
    } else {
        a1->unk60 = 0x640000;
        a1->unk64 = 0x480000;
        a1->unk4 = sub_0814C674;
    }
    sub_0814B024(a1);
}

static void sub_0814E47C(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x13)
        a1->unk4 = sub_0814B784;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E4AC(struct Unk_0814E394 *a1) {
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E4C4(struct Unk_0814E394 *a1) {
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E4DC(struct Unk_0814E394 *a1) {
    a1->unk4 = sub_0814E500;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E500(struct Unk_0814E394 *a1) {
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E518(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x27)
        a1->unk4 = sub_0814E548;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E548(struct Unk_0814E394 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk10[0];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    sprite = &a1->unk10[1];
    sprite->unk8 ^= 0x400;
    sub_08155128(sprite);
    a1->unk8 = 0;
    a1->unk4 = sub_0814E590;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E590(struct Unk_0814E394 *a1) {
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E5A8(struct Unk_0814E394 *a1) {
    a1->unk8 = 0;
    a1->unk4 = sub_0814E5D0;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E5D0(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x4A)
        a1->unk4 = sub_0814B95C;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E600(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x13)
        a1->unk4 = sub_0814C424;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E630(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x59)
        a1->unk4 = sub_0814C478;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E660(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x13)
        a1->unk4 = sub_0814C5EC;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E690(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x27) {
        if (!(a1->unkC->unk4 & 0x80000000))
            a1->unkC->unk8 = sub_0814EA74;
        a1->unkC->unkA8[a1->unk0] = 0;
        a1->unkC->unkB8[a1->unk0] = 0;
        TaskDestroy(gCurTask);
    } else {
        sub_08155128(&a1->unk10[0]);
        sub_08155128(&a1->unk10[1]);
        sub_0815604C(&a1->unk10[0]);
        sub_0815604C(&a1->unk10[1]);        
    }
}

static void sub_0814E700(struct Unk_0814E394 *a1) {
    if (++a1->unk8 > 0x1D)
        a1->unk4 = sub_0814CB0C;
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E730(struct Unk_0814E394 *a1) {
    sub_0815604C(&a1->unk10[0]);
    sub_0815604C(&a1->unk10[1]);
}

static void sub_0814E748(struct Unk_0814E394 *a1) {
    struct Sprite *sprite = &a1->unkC->unk38;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND2(0x10, 0);
    gBldRegs.bldY = 0;
    a1->unkC->unk4 &= ~2;
    if (++a1->unk1 > 7) {
        a1->unk1 = 0;
        m4aSongNumStart(586);
    }
    a1->unk4 = sub_0814E7AC;
    if (!sub_08155128(sprite))
        sprite->unk1B = 0xFF;
    sub_0815604C(sprite);
}

static void sub_0814E7AC(struct Unk_0814E394 *a1) {
    struct Sprite *sprite = &a1->unkC->unk38;

    a1->unk8 = 0;
    a1->unk4 = sub_0814CEAC;
    if (++a1->unk1 > 7) {
        a1->unk1 = 0;
        m4aSongNumStart(586);
    }
    if (!sub_08155128(sprite))
        sprite->unk1B = 0xFF;
    sub_0815604C(sprite);
}

static void sub_0814E7F8(struct Unk_0814EACC *a1) {
    struct Sprite *sprite;

    a1->unk3C = 0;
    a1->unk48 = 0;
    a1->unk40 = 0;
    sprite = &a1->unkC;
    sprite->animId = gUnk_08387F3C[0][0];
    sprite->variant = gUnk_08387F3C[0][1];
    sub_08155128(sprite);
    a1->unk4 = 0;
    a1->unk0 = sub_0814E834;
    sub_0815604C(sprite);
}

static void sub_0814E834(struct Unk_0814EACC *a1) {
    if (++a1->unk4 > 0x13)
        a1->unk0 = sub_0814D618;
    sub_0815604C(&a1->unkC);
}

static void sub_0814E85C(struct Unk_0814EACC *a1) {
    struct Sprite *sprite;

    sprite = &a1->unkC;
    sprite->animId = gUnk_08387F3C[1][0];
    sprite->variant = gUnk_08387F3C[1][1];
    sub_08155128(sprite);
    a1->unk4 = 0;
    a1->unk0 = sub_0814E890;
    sub_0815604C(sprite);
}

static void sub_0814E890(struct Unk_0814EACC *a1) {
    if (++a1->unk4 > 2)
        a1->unk0 = sub_0814E8B8;
    sub_0815604C(&a1->unkC);
}

static void sub_0814E8B8(struct Unk_0814EACC *a1) {
    struct Sprite *sprite;

    sprite = &a1->unkC;
    sprite->animId = gUnk_08387F3C[0xA][0];
    sprite->variant = gUnk_08387F3C[0xA][1];
    sub_08155128(sprite);
    a1->unk44 = 0;
    a1->unk3C = 0;
    if (!(a1->unk8->unk4 & 0x80000000))
        a1->unk8->unk8 = sub_0814E290;
    a1->unk0 = sub_0814E900;
    sub_0815604C(sprite);
}

static void sub_0814E900(struct Unk_0814EACC *a1) {
    sub_08155128(&a1->unkC);
    sub_0815604C(&a1->unkC);
}

static struct Task *sub_0814E918(struct Unk_0814A828 *a1) {
    struct Task *t = TaskCreate(sub_0814E988, sizeof(struct Unk_0814E918), 0x2000, TASK_x0004 | TASK_USE_IWRAM, nullsub_136);
    struct Unk_0814E918 *var = TaskGetStructPtr(t);

    CpuFill16(0, var, sizeof(struct Unk_0814E918));
    var->unk0 = sub_0814E9BC;
    var->unk8 = a1;
    return t;
}

static void nullsub_136(struct Task *t __attribute__((unused))) {}

static void sub_0814E988(void) {
    struct Unk_0814E918 *var = TaskGetStructPtr(gCurTask);

    var->unk0(var);
}

static void sub_0814E9BC(struct Unk_0814E918 *a1) {
    u8 i;

    sub_0814D75C(a1);
    for (i = 0; i < 8; ++i) {
        a1->unk1A0[i][0] = 0x780000;
        a1->unk1A0[i][1] = 0x500000;
    }
    a1->unk0 = nullsub_137;
}

static void nullsub_137(struct Unk_0814E918 *a1 __attribute__((unused))) {}

static void sub_0814EA00(struct Unk_0814E918 *a1) {
    u8 i;

    a1->unk4 = 0;
    a1->unk0 = sub_0814EA3C;
    m4aSongNumStart(589);
    for (i = 0; i < 8; ++i)
        sub_0815604C(&a1->unkC[i]);
}

static void sub_0814EA3C(struct Unk_0814E918 *a1) {
    u8 i;

    if (++a1->unk4 > 0)
        a1->unk0 = sub_0814DEC4;
    for (i = 0; i < 8; ++i)
        sub_0815604C(&a1->unkC[i]);
}

static void sub_0814EA74(struct Unk_0814A828 *a1) {
    a1->unkB0[0] = sub_0814EACC(a1);
    a1->unkC0 = TaskGetStructPtr(a1->unkB0[0]);
    a1->unk8 = sub_0814EAC0;
    sub_0815604C(&a1->unk10);
}

static void sub_0814EAC0(struct Unk_0814A828 *a1) {
    sub_0815604C(&a1->unk10);
}

static struct Task *sub_0814EACC(struct Unk_0814A828 *a1) {
    struct Task *t = TaskCreate(sub_0814EB38, sizeof(struct Unk_0814EACC), 0x2000, TASK_x0004 | TASK_USE_IWRAM, nullsub_138);
    struct Unk_0814EACC *var = TaskGetStructPtr(t);

    CpuFill16(0, var, sizeof(struct Unk_0814EACC));
    var->unk0 = sub_0814EB6C;
    var->unk8 = a1;
    return t;
}

static void nullsub_138(struct Task *t __attribute__((unused))) {}

static void sub_0814EB38(void) {
    struct Unk_0814EACC *var = TaskGetStructPtr(gCurTask);

    var->unk0(var);
}

static void sub_0814EB6C(struct Unk_0814EACC *a1) {
    sub_0814CF34(a1);
    a1->unk0 = sub_0814EB84;
}

static void sub_0814EB84(struct Unk_0814EACC *a1) {
    a1->unk4 = 0;
    a1->unk0 = sub_0814EB94;
}

static void sub_0814EB94(struct Unk_0814EACC *a1) {
    if (++a1->unk4 > 0x3B)
        a1->unk0 = sub_0814EBB4;
}

static void sub_0814EBB4(struct Unk_0814EACC *a1) {
    a1->unk34 = 0x140000;
    a1->unk3C = 0xC000;
    a1->unk44 = 0;
    a1->unk38 = -0x140000;
    a1->unk40 = 0x1000;
    a1->unk48 = 0x2600;
    a1->unk4 = 0;
    a1->unk0 = sub_0814D034;
}
