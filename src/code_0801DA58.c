#include "code_0801DA58.h"
#include "task.h"
#include "functions.h"

#include <limits.h>

static void sub_0801DFF4(void);
static void nullsub_28(struct Task *);
static void sub_0801E030(struct Unk_0801DA58 *);
static void sub_0801E03C(struct Unk_0801DA58 *);
static void sub_0801E0B0(struct Unk_0801DA58 *);
static void sub_0801E0D8(struct Unk_0801DA58 *);
static void sub_0801E130(struct Unk_0801DA58 *);
static void sub_0801E15C(struct Unk_0801DA58 *);
static void sub_0801E1A0(struct Unk_0801DA58 *);
static void sub_0801E1B4(struct Unk_0801DA58 *);
static void sub_0801E1D0(struct Unk_0801DA58 *);
static void sub_0801E1F8(struct Unk_0801DA58 *);
static void sub_0801E224(struct Unk_0801DA58 *);
static void sub_0801E238(struct Unk_0801DA58 *);
static void sub_0801E28C(struct Unk_0801DA58 *);
static void sub_0801E2B4(struct Unk_0801DA58 *);

static const u16 gUnk_082DE690[][2] = { { 0xE, 6 } };
static const u16 gUnk_082DE694[][2] = { { 0, 0 } };
static const u16 gUnk_082DE698[] = { 0x308 };
static const u8 gUnk_082DE69A[] = { 0x12, 0 };

void sub_0801DA58(u16 a1)
{
    struct Task *t = TaskCreate(sub_0801DFF4, sizeof(struct Unk_0801DA58), 0x1000, TASK_USE_IWRAM | TASK_x0004, nullsub_28);
    struct Unk_0801DA58 *var;
    u16 color = RGB_WHITE;
    u32 tilesVram;
    const struct LevelInfo_1A0 *bg;
    const u16 *src;
    u16 i;
    u16 *dst;
    struct Sprite *sprite;

    sub_0803D21C(&color, 0, 1);
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG3_ON;
    gDispCnt |= DISPCNT_OBJ_1D_MAP;
    var = TaskGetStructPtr(t);
    var->unkD8 = sub_0801E030;
    var->unkDC = a1;
    var->unkE2 = 0;
    var->unkD0[0] = 0;
    var->unkD0[1] = 0;
    tilesVram = 0x6012000;
    sprite = &var->unk80[0];
    sprite->tilesVram = tilesVram;
    sprite->unk14 = 0x100;
    sprite->animId = 0x2B9;
    sprite->variant = 0;
    sprite->unk16 = 0;
    sprite->unk1B = 0xFF;
    sprite->unk1C = 0x10;
    sprite->palId = 0;
    sprite->x = -0x40;
    sprite->y = -0x40;
    sprite->unk8 = 0x40000;
    sub_08155128(sprite);
    tilesVram += 0x3C0;
    sprite = &var->unk80[1];
    sprite->tilesVram = tilesVram;
    sprite->unk14 = 0x100;
    sprite->animId = 0x2B9;
    sprite->variant = 0;
    sprite->unk16 = 0;
    sprite->unk1B = 0xFF;
    sprite->unk1C = 0x10;
    sprite->palId = 0;
    sprite->x = -0x40;
    sprite->y = -0x40;
    sprite->unk8 = 0x40000;
    sub_08155128(sprite);
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgCntRegs[3] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30);
    BgInit(&var->unk0, 0x6008000, 0, 0x600F000, 0, 0, 0x307, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x1B,
        gUnk_082DE694[var->unkDC][0], gUnk_082DE694[var->unkDC][1], 0x7FFF, 0x7FFF);
    LZ77UnCompVram(gUnk_082D7850[0x307]->tileset, (u16 *)var->unk0.unk4);
    sub_08153060(&var->unk0);
    bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31);
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
}

static void sub_0801DC70(s16 a1, s16 a2, u16 a3, u16 *a4, u16 a5)
{
    const struct TiledBg_082D7850 *r7 = gUnk_082D7850[0x307];
    u16 width = r7->width;
    const u16 *src = r7->tilemap + (gUnk_082DE690[a3][1] - 1) * width + gUnk_082DE690[a3][0] - 1;
    u16 *dst = a4;
    s16 r6 = gUnk_082DE690[a3][1] - (a2 + 1) + a5;
    s16 r2 = gUnk_082DE690[a3][0] - 1 - a1;
    s16 i;

    if (r6 >= 0 && r6 <= 0x14)
        for (i = 0; i < 4; ++i, ++r2)
            if (r2 >= 0 && r2 <= 0x1E)
                dst[r6 * 0x20 + r2] = src[r7->width * a5 + i];
}

static void sub_0801DD20(s16 a1, s16 a2, u16 a3, u16 *a4, u32 a5)
{
    const struct TiledBg_082D7850 *r8 = gUnk_082D7850[gUnk_082DE698[a3]];
    const u16 *src;
    s16 r4, sl;
    s16 i, j;

    LZ77UnCompVram(r8->tileset, 0x10 * a5 + (u16 *)0x6008000);
    src = r8->tilemap;
    r4 = gUnk_082DE690[a3][1] + ~a2;
    for (i = 0; i < 5; ++i, ++r4)
    {
        sl = gUnk_082DE690[a3][0] + ~a1; // Why not unroll sl?
        if (r4 >= 0 && r4 <= 0x14)
            for (j = 0; j < 4; ++j, ++sl)
                if (sl >= 0 && sl <= 0x1E)
                    a4[r4 * 0x20 + sl] = src[i * 4 + j] + a5;
    }
}

static void sub_0801DE00(struct Unk_0801DA58 *var)
{
    u16 i;
    u32 tileId = 0x300;
    u16 *tilemapVram = (u16 *)var->unk0.tilemapVram + ({ 0x20 * var->unk0.unk24 + var->unk0.unk22; });
    s16 scrollX = var->unk0.scrollX >> 3;
    s16 scrollY = var->unk0.scrollY >> 3;

    for (i = 0; i < 1; ++i)
    {
        if (i != var->unkDC)
        {
            s16 var1, var2;

            if (*sub_08002888(SUB_08002888_ENUM_UNK_3, gUnk_082DE69A[i * 2], 0))
                continue;
            var1 = gUnk_082DE690[i][0];
            var2 = gUnk_082DE690[i][1];
            if (var1 + 3 <= scrollX
                || scrollX + 0x1E <= var1 - 1
                || var2 + 4 <= scrollY
                || scrollY + 0x14 <= var2 - 1)
                continue;
        }
        tileId -= 0x14;
        sub_0801DD20(scrollX, scrollY, i, tilemapVram, tileId);
    }
}

static void sub_0801DEC8(struct Unk_0801DA58 *var)
{
    if (var->unkD0[0])
        sub_0815604C(&var->unk80[0]);
    if (!sub_08155128(&var->unk80[0]))
    {
        var->unkD0[0] = 0;
        var->unk80[0].x = -0x40;
        var->unk80[0].y = -0x40;
    }
    if (var->unkD0[1])
        sub_0815604C(&var->unk80[1]);
    if (!sub_08155128(&var->unk80[1]))
    {
        var->unkD0[1] = 0;
        var->unk80[1].x = -0x40;
        var->unk80[1].y = -0x40;
    }
}

static void sub_0801DF30(struct Unk_0801DA58 *var)
{
    struct Sprite *sprite = &var->unk80[var->unkE2];

    var->unk80[0].unk8 &= ~0x40000;
    var->unk80[1].unk8 &= ~0x40000;
    var->unkD0[var->unkE2] = 1;
    sprite->variant = 0;
    sprite->unk1B = 0xFF;
    sprite->x = 8 * gUnk_082DE690[var->unkDC][0] - gUnk_082DE694[var->unkDC][0] + 8;
    sprite->y = 8 * gUnk_082DE690[var->unkDC][1] - gUnk_082DE694[var->unkDC][1] + ((var->unkE0 + 0xFFFF) << 3); // TODO: the behavior is implementation-defined
    sub_08155128(sprite);
    m4aSongNumStart(SE_08D5B2D8);
    var->unkDE = 0;
    var->unkD8 = sub_0801E0D8;
    sub_0801DEC8(var);
}

static void sub_0801DFE8(void)
{
    sub_0801DA58(0);
}

static void sub_0801DFF4(void)
{
    struct Unk_0801DA58 *var = TaskGetStructPtr(gCurTask);

    var->unkD8(var);
}

static void nullsub_28(struct Task *t)
{}

static void sub_0801E030(struct Unk_0801DA58 *var)
{
    var->unkD8 = sub_0801E03C;
}

static void sub_0801E03C(struct Unk_0801DA58 *var)
{
    const struct TiledBg_082D7850 *r6 = gUnk_082D7850[0x307];
    const struct LevelInfo_1A0 *bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];

    var->unkDE = 0;
    sub_0801DE00(var);
    sub_0803D21C(r6->palette, 0, 0x60);
    sub_0803D21C(bg->palette, bg->paletteOffset, bg->paletteSize);
    sub_0803C95C(7)->unk8 |= 0x180;
    var->unkD8 = sub_0801E0B0;
}

static void sub_0801E0B0(struct Unk_0801DA58 *var)
{
    if (var->unkDE++ > 0x20)
        var->unkD8 = sub_0801E1A0;
}

static void sub_0801E0D8(struct Unk_0801DA58 *var)
{
    if (var->unkDE++ > 2)
    {
        sub_0801DC70(
            var->unk0.scrollX >> 3,
            var->unk0.scrollY >> 3,
            var->unkDC,
            (u16 *)var->unk0.tilemapVram + ({ 0x20 * var->unk0.unk24 + var->unk0.unk22; }),
            var->unkE0
        );
        var->unkD8 = sub_0801E130;
    }
    sub_0801DEC8(var);
}

static void sub_0801E130(struct Unk_0801DA58 *var)
{
    if (var->unkDE++ > 6)
        var->unkD8 = sub_0801E15C;
    sub_0801DEC8(var);
}

static void sub_0801E15C(struct Unk_0801DA58 *var)
{
    var->unkE2 ^= 1;
    if (++var->unkE0 != 5)
        var->unkD8 = sub_0801DF30;
    else
        var->unkD8 = sub_0801E1B4;
    sub_0801DEC8(var);
}

static void sub_0801E1A0(struct Unk_0801DA58 *var)
{
    var->unkDE = 0;
    var->unkD8 = sub_0801E1D0;
}

static void sub_0801E1B4(struct Unk_0801DA58 *var)
{
    var->unkDE = 0;
    var->unkD8 = sub_0801E1F8;
    sub_0801DEC8(var);
}

static void sub_0801E1D0(struct Unk_0801DA58 *var)
{
    if (var->unkDE++ > 0x3C)
        var->unkD8 = sub_0801E224;
}

static void sub_0801E1F8(struct Unk_0801DA58 *var)
{
    if (var->unkDE++ > 0x3C)
        var->unkD8 = sub_0801E238;
    sub_0801DEC8(var);
}

static void sub_0801E224(struct Unk_0801DA58 *var)
{
    var->unkE0 = 0;
    var->unkD8 = sub_0801DF30;
}

static void sub_0801E238(struct Unk_0801DA58 *var)
{
    u16 color = RGB_WHITE;
    struct Unk_02022930_0 *unkStruct;

    var->unkDE = 0;
    unkStruct = sub_0803CA20(7);
    unkStruct->unk8 |= 0x180;
    unkStruct->unk4 = 0xFFFF;
    unkStruct->unk6 = 0xFFFF;
    sub_0803D21C(&color, 0, 1);
    var->unkD8 = sub_0801E28C;
}

static void sub_0801E28C(struct Unk_0801DA58 *var)
{
    if (var->unkDE++ > 0x20)
        var->unkD8 = sub_0801E2B4;
}

static void sub_0801E2B4(struct Unk_0801DA58 *var)
{
    sub_08039670();
    TaskDestroy(gCurTask);
}
