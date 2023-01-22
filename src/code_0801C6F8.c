#include "code_0801C6F8.h"
#include "task.h"
#include "functions.h"
#include "palette.h"
#include "save.h"

static void sub_0801C79C(void);
static void nullsub_107(struct Task *);
static void sub_0801C990(struct Unk_0801C6F8 *);
static void sub_0801CA30(struct Unk_0801C6F8 *);
static struct Unk_0801D220 *sub_0801D220(struct Unk_0801C6F8 *, u16, u16, u32, s32, s32, s16, s16, u16);
static void sub_0801D2E0(void);
static struct Unk_0801D220 *sub_0801D398(struct Unk_0801C6F8 *, u16, u16, u32, s32, s32, s16, s16, u16);
static void sub_0801D458(void);
static void sub_0801D530(struct Unk_0801C6F8 *);
static void sub_0801D54C(struct Unk_0801C6F8 *);
static void sub_0801D568(struct Unk_0801C6F8 *);
static void sub_0801D584(struct Unk_0801C6F8 *);
static void sub_0801D5F0(void);
static void sub_0801D604(void);
static void sub_0801D678(struct Unk_0801C6F8 *);
static void sub_0801D6A4(struct Unk_0801C6F8 *);
static void sub_0801D6E0(struct Unk_0801C6F8 *);
static void sub_0801D70C(struct Unk_0801C6F8 *);
static void sub_0801D748(struct Unk_0801C6F8 *);
static void sub_0801D774(struct Unk_0801C6F8 *);
static void sub_0801D7B0(struct Unk_0801C6F8 *);
static void sub_0801D7F8(struct Unk_0801C6F8 *);
static void sub_0801D870(struct Unk_0801C6F8 *);
static void sub_0801D88C(struct Unk_0801C6F8 *);
static void sub_0801D8B8(struct Unk_0801C6F8 *);
static void sub_0801D8C8(struct Unk_0801C6F8 *);
static void sub_0801D8F4(struct Unk_0801C6F8 *);
static void sub_0801D910(struct Unk_0801C6F8 *);
static void sub_0801D92C(struct Unk_0801C6F8 *);
static void sub_0801D948(struct Unk_0801C6F8 *);
static void sub_0801D9D4(struct Unk_0801C6F8 *);
static void sub_0801DA00(struct Unk_0801C6F8 *);
static void sub_0801DA2C(struct Unk_0801C6F8 *);

static const s8 gUnk_082DE610[][2] = {
    {  4, -10 },
    { -4, -10 },
    {  8,  -4 },
    { -8,  -4 },
    {  8,   6 },
    { -8,   4 },
    {  2,   8 },
    { -4,   8 },
};

// a copy of gUnk_082DE5E0
static const u16 gUnk_082DE620[][3] = {
    { 0x2D3, 2, 6 },
    { 0x2D3, 3, 9 },
    { 0x2D3, 4, 6 },
    { 0x2D3, 5, 6 },
    { 0x2D3, 6, 6 },
    { 0x2D3, 7, 4 },
    { 0x2D3, 8, 9 },
    { 0x2D3, 9, 6 },
};

static const s16 gUnk_082DE650[][2] = {
    { -0x700,   0xF00 },
    {  0xC00,   0x500 },
    { -0x200, -0x1300 },
    { -0xD00,   0x800 },
    {  0x800,   0xE00 },
    {  0x300, -0x1200 },
    { -0xD00,  -0x900 },
    {      0,  0x1200 },
};

static const s16 gUnk_082DE670[][2] = {
    {       0, -0x1000 },
    {   0xE00,  -0xE00 },
    {  0x1000,       0 },
    {   0xE00,   0xE00 },
    {       0,  0x1000 },
    {  -0xE00,   0xE00 },
    { -0x1000,       0 },
    {  -0xE00,  -0xE00 },
};

static void sub_0801C6F8(u16 a1)
{
    struct Task *t = TaskCreate(sub_0801C79C, sizeof(struct Unk_0801C6F8), 0x1000, TASK_x0004, nullsub_107);
    struct Unk_0801C6F8 *var;
    u16 color = RGB_WHITE;

    sub_0803D21C(&color, 0, 1);
    var = TaskGetStructPtr(t);
    var->unk208 = sub_0801D530;
    var->unk20C = 0x20000000;
    var->unk210 = 0x7800;
    var->unk214 = -0x2000;
    var->unk218 = a1;
    var->unk21A = 0;
}

static void sub_0801C79C(void)
{
    struct Unk_0801C6F8 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    u16 i;
    struct Sprite *sprite;

    if (var->unk20C & 0x100)
    {
        sprite = &var->unk40;
        sub_0815604C(sprite);
        if (!sub_08155128(sprite))
            sprite->unk1B = 0xFF;
    }
    if (var->unk20C & 0x200)
    {
        if (var->unk21A & 1)
        {
            sprite = &var->unk1A8;
            if (!(var->unk21A & 2))
                sprite->unk14 = 0;
            else
                sprite->unk14 = 0x80;
            sprite->x = var->unk68[var->unk218].x - gUnk_082DE610[var->unk218][0];
            sprite->y = var->unk68[var->unk218].y + gUnk_082DE610[var->unk218][1];
            sub_0815604C(sprite);
            if (!sub_08155128(sprite))
                sprite->unk1B = 0xFF;
        }
        ++var->unk21A;
    }
    for (i = 0; i < 8; ++i)
    {
        if (var->unk20C & (1 << i))
        {
            sprite = &var->unk68[i];
            sub_0815604C(sprite);
            if (!sub_08155128(sprite))
                sprite->unk1B = 0xFF;
        }
    }
    var->unk208(var);
}

static void sub_0801C8DC(struct Unk_0801C6F8 *var)
{
    gDispCnt |= DISPCNT_BG3_ON;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(30);
    BgInit(&var->unk0, 0x6008000, 0, 0x600F000, 0, 0, 0x306, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x1B,
        0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram(gUnk_082D7850[0x306]->unk8, (u16 *)var->unk0.unk4);
    sub_08153060(&var->unk0);
    var->unk208 = sub_0801C990;
}

static void sub_0801C990(struct Unk_0801C6F8 *var)
{
    const struct LevelInfo_1A0 *bg;
    u16 i;
    const u16 *src;
    u16 *dst;

    gDispCnt |= DISPCNT_BG0_ON;
    bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(31);
    LZ77UnCompVram(bg->tileset, (u16 *)0x6000000);
    src = bg->tilemap;
    dst = (u16 *)0x600F800;
    src += 8 * bg->width;
    for (i = 0; i < 0x14; ++i)
    {
        CpuCopy16(src, dst, 0x3C);
        src += bg->width;
        dst += 0x20;
    }
    var->unk208 = sub_0801CA30;
}

static void sub_0801CA30(struct Unk_0801C6F8 *var)
{
    u16 i, j;
    u32 tilesVram;

    gDispCnt |= DISPCNT_OBJ_ON;
    tilesVram = 0x6012000;
    {
        struct Sprite *sprite = &var->unk40;

        sprite->tilesVram = tilesVram;
        sprite->unk14 = 0x100;
        sprite->animId = 0x2D3;
        sprite->variant = 0;
        sprite->unk16 = 0;
        sprite->unk1B = 0xFF;
        sprite->unk1C = 0x10;
        sprite->palId = 0;
        sprite->x = 0x78;
        sprite->y = 0x50;
        sprite->unk8 = 0x40000;
        sub_08155128(sprite);
    }
    var->unk20C |= 0x100;
    tilesVram += 0x600;
    for (i = 0; i < 8; ++i)
    {
        s16 vars[2];
        u16 unk14;
        struct Sprite *sprite = &var->unk68[i];

        if (i == var->unk218)
        {
            vars[0] = var->unk210 >> 8;
            vars[1] = var->unk214 >> 8;
            unk14 = 0x40;
        }
        else
        {
            vars[0] = 0x78;
            vars[1] = 0x50;
            unk14 = 0xC0;
        }
        sprite->tilesVram = tilesVram;
        sprite->unk14 = unk14;
        sprite->animId = gUnk_082DE620[i][0];
        sprite->variant = gUnk_082DE620[i][1];
        sprite->unk16 = 0;
        sprite->unk1B = 0xFF;
        sprite->unk1C = 0x10;
        sprite->palId = 1;
        sprite->x = vars[0];
        sprite->y = vars[1];
        sprite->unk8 = 0x40000;
        sub_08155128(sprite);
        if (sub_08019DA8(i) || i == var->unk218)
            var->unk20C |= 1 << i;
        tilesVram += 0x20 * gUnk_082DE620[i][2];
    }
    {
        struct Sprite *sprite = &var->unk1A8;

        sprite->tilesVram = tilesVram;
        sprite->unk14 = 0x80;
        sprite->animId = 0x2B3;
        sprite->variant = 0;
        sprite->unk16 = 0;
        sprite->unk1B = 0xFF;
        sprite->unk1C = 0x10;
        sprite->palId = 2;
        sprite->x = 0x78;
        sprite->y = 0x50;
        sprite->unk8 = 0x40000;
        sub_08155128(sprite);
    }
    var->unk20C |= 0x200;
    tilesVram += 0x200;
    var->unk1D0 = tilesVram;
    tilesVram += 0x480;
    for (j = 0; j < 8; ++j)
    {
        var->unk1D4[j] = tilesVram;
        tilesVram += 0x20;
    }
    for (j = 0; j < 4; ++j)
    {
        var->unk1F4[j] = tilesVram;
        tilesVram += 0x200;
    }
    var->unk208 = sub_0801D54C;
}

static void sub_0801CC30(struct Unk_0801C6F8 *var)
{
    struct Sprite sprite;
    const struct Unk_082D7850 *r2 = gUnk_082D7850[0x306];
    const struct LevelInfo_1A0 *bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];
    struct Unk_02022930_0 *unkStruct;

    sub_0803D21C(r2->unk10, 0, 0x60);
    sub_0803D21C(bg->palette, bg->paletteOffset, bg->paletteSize);
    unkStruct = sub_0803C95C(7);
    unkStruct->unk8 |= 0x180;
    unkStruct->unk4 = 0xFFFF;
    unkStruct->unk6 = 0xFFFF;
    SpriteSomething(&sprite, 0x6000000,               0x2D3,                   0, 0xFF, 0, 0, 0, 0, 0x10, 0, 0x80000);
    SpriteSomething(&sprite, 0x6000000, gUnk_082DE620[0][0], gUnk_082DE620[0][1], 0xFF, 0, 0, 0, 0, 0x10, 1, 0x80000);
    SpriteSomething(&sprite, 0x6000000,               0x2B3,                   0, 0xFF, 0, 0, 0, 0, 0x10, 2, 0x80000);
    CpuFill16(RGB_WHITE, gBgPalette, 2);
    if (gUnk_03002440 & 0x10000)
        sub_08158334(gBgPalette, 0, 1);
    else
    {
        DmaCopy16(3, gBgPalette, gBgPalette, 2); // ???
        gUnk_03002440 |= 1;
    }
    var->unk21C = 0;
    var->unk208 = sub_0801D6A4;
}

static void sub_0801CDE8(struct Unk_0801C6F8 *var)
{
    s16 r1 = (0x5000 - var->unk214) >> 4;

    if (r1 < 0x20)
        r1 = 0x20;
    else if (r1 > 0x100)
        r1 = 0x100;
    var->unk214 += r1;
    if (var->unk214 >= 0x5000)
    {
        var->unk214 = 0x5000;
        var->unk208 = sub_0801D568;
    }
    var->unk68[var->unk218].x = var->unk210 >> 8;
    var->unk68[var->unk218].y = var->unk214 >> 8;
}

static void sub_0801CE74(struct Unk_0801C6F8 *var)
{
    struct Unk_02022930_0 *unkStruct;

    if (sub_08019D5C() > 6)
        m4aSongNumStart(0x213);
    else
        m4aSongNumStart(0x212);
    unkStruct = sub_0803CA20(7);
    unkStruct->unk8 |= 0x180;
    unkStruct->unk6 = 0;
    unkStruct->unk4 = 6;
    if (sub_08019D5C() > 6)
        unkStruct->unk4 |= 1;
    var->unk20C &= ~0x200;
    var->unk20C |= 0x20000000;
    var->unk21C = 0;
    var->unk208 = sub_0801D70C;
}

static void sub_0801CF00(struct Unk_0801C6F8 *var)
{
    if (sub_08019D5C() > 6)
    {
        var->unk20C &= ~0xFF;
        var->unk20C |= 0x100;
        var->unk40.animId = 0x2D3;
        var->unk40.variant = 1;
        var->unk40.unk1B = 0xFF;
        var->unk40.unk8 &= ~0x10;
        sub_08155128(&var->unk40);
        var->unk40.unk8 |= 0x10;
    }
    var->unk21C = 0;
    var->unk208 = sub_0801D748;
}

static void sub_0801CF78(struct Unk_0801C6F8 *var)
{
    struct Sprite sprite;
    struct Unk_02022930_0 *unkStruct = sub_0803C95C(7);

    unkStruct->unk8 |= 0x180;
    unkStruct->unkA = unkStruct->unkA >> 2;
    unkStruct->unk6 = 0;
    unkStruct->unk4 = 6;
    if (sub_08019D5C() > 6)
        unkStruct->unk4 |= 1;
    if (sub_08019D5C() > 6)
        SpriteSomething(&sprite, 0x6000000, 0x2D3, 1, 0xFF, 0, 0, 0, 0, 0x10, 0, 0x80000);
    else
        SpriteSomething(&sprite, 0x6000000, 0x2D3, 0, 0xFF, 0, 0, 0, 0, 0x10, 0, 0x80000);
    var->unk21C = 0;
    var->unk20C |= 0x20000000;
    var->unk208 = sub_0801D774;
}

static void sub_0801D080(struct Unk_0801C6F8 *var)
{
    if (sub_08019D5C() > 6)
    {
        u16 i;

        sub_0801D398(var, 0x3A8, 0, var->unk1D0, var->unk210, var->unk214, 0, 0, 1);
        for (i = 0; i < 8; ++i)
            sub_0801D220(var, 0x3A8, 1,
                var->unk1D4[i],
                var->unk210 + gUnk_082DE670[i][0],
                var->unk214 + gUnk_082DE670[i][1],
                gUnk_082DE670[i][0] >> 5,
                gUnk_082DE670[i][1] >> 5,
                8); 
        var->unk21C = 0;
    }
    else
        var->unk21C = 0x2710;
    var->unk208 = sub_0801D7B0;
}

static void sub_0801D16C(struct Unk_0801C6F8 *var)
{
    if (!(var->unk21C & 0xF))
    {
        u16 idx = (var->unk21C >> 4) & 7;

        sub_0801D398(var, 0x3A2, 0,
            var->unk1F4[(var->unk21C >> 4) & 3],
            var->unk210 + gUnk_082DE650[idx][0],
            var->unk214 + gUnk_082DE650[idx][1],
            0, 0, 1);
    }
    if (var->unk21C++ > 0x78)
        var->unk208 = sub_0801D584;
}

static struct Unk_0801D220 *sub_0801D220(struct Unk_0801C6F8 *a1, u16 a2, u16 a3, u32 a4, s32 a5, s32 a6, s16 a7, s16 a8, u16 a9)
{
    struct Task *t = TaskCreate(sub_0801D2E0, sizeof(struct Unk_0801D220), 0x1001, TASK_x0004, NULL);
    struct Unk_0801D220 *var = TaskGetStructPtr(t);

    var->unk28 = a1;
    var->unk2C = a5;
    var->unk30 = a6;
    var->unk34 = a7;
    var->unk36 = a8;
    var->unk38 = a9;
    var->unk0.tilesVram = a4;
    var->unk0.unk14 = 0;
    var->unk0.animId = a2;
    var->unk0.variant = a3;
    var->unk0.unk16 = 0;
    var->unk0.unk1B = 0xFF;
    var->unk0.unk1C = 0x10;
    var->unk0.palId = 0xF;
    var->unk0.x = a5 >> 8;
    var->unk0.y = a6 >> 8;
    var->unk0.unk8 = 0;
    sub_08155128(&var->unk0);
    return var;
}

static void sub_0801D2E0(void)
{
    struct Unk_0801D220 *tmp = TaskGetStructPtr(gCurTask), *r4 = tmp, *r5 = r4;

    r4->unk0.x = r4->unk2C >> 8;
    r4->unk0.y = r4->unk30 >> 8;
    if (!sub_08155128(&r4->unk0))
        r4->unk0.unk1B = 0xFF;
    sub_0815604C(&r4->unk0);
    r4->unk2C += r4->unk34;
    r4->unk30 += r4->unk36;
    if (r4->unk38 && !--r4->unk38)
        gCurTask->main = sub_0801D5F0;
    else if ((r5->unk0.x < -0x40 || r5->unk0.x > 0x130)
        || r5->unk0.y < -0x40 || r5->unk0.y > 0xE0)
        gCurTask->main = sub_0801D5F0;
    else if (r4->unk28->unk20C & 0x8000000)
        gCurTask->main = sub_0801D5F0;
}

static struct Unk_0801D220 *sub_0801D398(struct Unk_0801C6F8 *a1, u16 a2, u16 a3, u32 a4, s32 a5, s32 a6, s16 a7, s16 a8, u16 a9)
{
    struct Task *t = TaskCreate(sub_0801D458, sizeof(struct Unk_0801D220), 0x1001, TASK_x0004, NULL);
    struct Unk_0801D220 *var = TaskGetStructPtr(t);

    var->unk28 = a1;
    var->unk2C = a5;
    var->unk30 = a6;
    var->unk34 = a7;
    var->unk36 = a8;
    var->unk38 = a9;
    var->unk0.tilesVram = a4;
    var->unk0.unk14 = 0;
    var->unk0.animId = a2;
    var->unk0.variant = a3;
    var->unk0.unk16 = 0;
    var->unk0.unk1B = 0xFF;
    var->unk0.unk1C = 0x10;
    var->unk0.palId = 0xF;
    var->unk0.x = a5 >> 8;
    var->unk0.y = a6 >> 8;
    var->unk0.unk8 = 0;
    sub_08155128(&var->unk0);
    return var;
}

static void sub_0801D458(void)
{
    struct Unk_0801D220 *tmp = TaskGetStructPtr(gCurTask), *r4 = tmp, *r5 = r4;

    r4->unk0.x = r4->unk2C >> 8;
    r4->unk0.y = r4->unk30 >> 8;
    if (!sub_08155128(&r4->unk0))
    {
        if (r4->unk38 && !--r4->unk38)
            gCurTask->main = sub_0801D604;
        else
            r4->unk0.unk1B = 0xFF;
    }
    sub_0815604C(&r5->unk0);
    r4->unk2C += r4->unk34;
    r4->unk30 += r4->unk36;
    if ((r5->unk0.x < -0x40 || r5->unk0.x > 0x130)
        || r5->unk0.y < -0x40 || r5->unk0.y > 0xE0)
        gCurTask->main = sub_0801D604;
    if (r4->unk28->unk20C & 0x8000000)
        gCurTask->main = sub_0801D604;
}

static void nullsub_107(struct Task *t)
{}

static void sub_0801D530(struct Unk_0801C6F8 *var)
{
    gDispCnt = DISPCNT_OBJ_1D_MAP;
    var->unk208 = sub_0801C8DC;
}

static void sub_0801D54C(struct Unk_0801C6F8 *var)
{
    var->unk21C = 0;
    var->unk208 = sub_0801D678;
}

static void sub_0801D568(struct Unk_0801C6F8 *var)
{
    var->unk21C = 0;
    var->unk208 = sub_0801D6E0;
}

static void sub_0801D584(struct Unk_0801C6F8 *var)
{
    u16 color = RGB_WHITE;
    struct Unk_02022930_0 *unkStruct = sub_0803CA20(7);

    unkStruct->unk8 |= 0x180;
    unkStruct->unk4 = 0xFFFF;
    unkStruct->unk6 = 0xFFFF;
    sub_0803D21C(&color, 0, 1);
    var->unk20C |= 0x20000000;
    var->unk21C = 0;
    var->unk208 = sub_0801D8C8;
}

static void sub_0801D5F0(void)
{
    TaskDestroy(gCurTask);
}

static void sub_0801D604(void)
{
    TaskDestroy(gCurTask);
}

void sub_0801D618(void)
{
    sub_0801C6F8(0);
}

void sub_0801D624(void)
{
    sub_0801C6F8(1);
}

void sub_0801D630(void)
{
    sub_0801C6F8(2);
}

void sub_0801D63C(void)
{
    sub_0801C6F8(3);
}

void sub_0801D648(void)
{
    sub_0801C6F8(4);
}

void sub_0801D654(void)
{
    sub_0801C6F8(5);
}

void sub_0801D660(void)
{
    sub_0801C6F8(6);
}

void sub_0801D66C(void)
{
    sub_0801C6F8(7);
}

static void sub_0801D678(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 1)
        var->unk208 = sub_0801CC30;
}

static void sub_0801D6A4(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0x20)
    {
        var->unk20C &= ~0x20000000;
        var->unk208 = sub_0801D8F4;
    }
}

static void sub_0801D6E0(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 1)
        var->unk208 = sub_0801CE74;
}

static void sub_0801D70C(struct Unk_0801C6F8 *var)
{
    if (++var->unk21C >= 0x20)
    {
        var->unk20C &= ~0x20000000;
        var->unk208 = sub_0801CF00;
    }
}

static void sub_0801D748(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0x2D)
        var->unk208 = sub_0801CF78;
}

static void sub_0801D774(struct Unk_0801C6F8 *var)
{
    if (++var->unk21C >= 0x40)
    {
        var->unk20C &= ~0x20000000;
        var->unk208 = sub_0801D910;
    }
}

static void sub_0801D7B0(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0x28)
    {
        if (sub_08019D5C() > 6)
            var->unk208 = sub_0801D870;
        else
            var->unk208 = sub_0801D7F8;
    }
}

static void sub_0801D7F8(struct Unk_0801C6F8 *var)
{
    s32 a = var->unk210 - gUnk_082DE610[var->unk218][0] * 0x100;
    s32 b = var->unk214 + gUnk_082DE610[var->unk218][1] * 0x100;

    sub_0801D398(var, 0x3A2, 0, var->unk1F4[0], a, b, 0, 0, 1);
    var->unk208 = sub_0801D92C;
}

static void sub_0801D870(struct Unk_0801C6F8 *var)
{
    var->unk21C = 0;
    var->unk208 = sub_0801D88C;
}

static void sub_0801D88C(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0xA)
        var->unk208 = sub_0801D8B8;
}

static void sub_0801D8B8(struct Unk_0801C6F8 *var)
{
    var->unk208 = sub_0801D16C;
}

static void sub_0801D8C8(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0x20)
        var->unk208 = sub_0801D948;
}

static void sub_0801D8F4(struct Unk_0801C6F8 *var)
{
    var->unk21C = 0;
    var->unk208 = sub_0801D9D4;
}

static void sub_0801D910(struct Unk_0801C6F8 *var)
{
    var->unk21C = 0;
    var->unk208 = sub_0801DA00;
}

static void sub_0801D92C(struct Unk_0801C6F8 *var)
{
    var->unk21C = 0;
    var->unk208 = sub_0801DA2C;
}

static void sub_0801D948(struct Unk_0801C6F8 *var)
{
    sub_08019D90(var->unk218);
    if (!(gUnk_0203AD10 & 0x10))
    {
        if (gUnk_0203AD10 & 2)
        {
            if (gUnk_0203AD3C == gUnk_0203AD24)
                sub_0800ACD4(1, gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48);
            else
                sub_08031CE4(8);
        }
        else
            sub_0800ACD4(1, gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48);
    }
    sub_080027A8();
    sub_08039670();
    TaskDestroy(gCurTask);
}

static void sub_0801D9D4(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0xA)
        var->unk208 = sub_0801CDE8;
}

static void sub_0801DA00(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0xA)
        var->unk208 = sub_0801D080;
}

static void sub_0801DA2C(struct Unk_0801C6F8 *var)
{
    if (var->unk21C++ > 0x78)
        var->unk208 = sub_0801D584;
}
