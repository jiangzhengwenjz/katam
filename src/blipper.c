#include "blipper.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"

static void sub_080A616C(struct Object2 *);
static void sub_080A6210(struct Object2 *);
static void sub_080A6CBC(struct Object2 *, u8);
static void sub_080A6E44(void);
static void sub_080A7188(struct Object2 *);
static void sub_080A71B4(struct Object2 *);
static void sub_080A71E4(struct Object2 *);
static void sub_080A7210(struct Object2 *);
static void sub_080A7238(struct Object2 *);
static void sub_080A726C(struct Object2 *);
static void sub_080A72AC(struct Object2 *);
static void sub_080A72D8(struct Object2 *);
static void sub_080A7340(struct Object2 *);
static void sub_080A73D4(struct Object2 *);
static void sub_080A742C(struct Object2 *);
static void sub_080A7460(struct Object2 *);
static void sub_080A7498(struct Object2 *);

const struct Unk_02021590 gUnk_08353448[] = {
    { 0x328,   0, 0 },
    { 0x328,   1, 0 },
    { 0x328,   2, 0 },
    { 0x328,   3, 0 },
    { 0x328,   4, 0 },
    { 0x328,   5, 0 },
    { 0x328,   6, 0 },
    { 0x328,   7, 0 },
    { 0x328,   6, 0 },
    { 0x328,   8, 0 },
    { 0x328, 0xA, 0 },
    { 0x328, 0xB, 0 },
    { 0x328, 0xC, 0 },
    { 0x328, 0xD, 0 },
};

static const struct Unk_08353510 gUnk_08353480[] = {
    { 0x80, -0x80, 0, 0, 0xA, 0 },
    { 0x80, -0x40, 0, 0, 0xA, 0 },
    { 0x80,  0x80, 0, 0, 0xA, 0 },
    { 0x80,  0x40, 0, 0, 0xA, 0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_083534BC[] = {
    { -0x80, 0x80, 0, 0,   8, 3 },
    {  0x40, 0x80, 0, 0, 0xF, 3 },
    {  0x80, 0x80, 0, 0,   8, 3 },
    { -0x40, 0x80, 0, 0, 0xF, 3 },
    { 0 },
};

void *CreateBlipper(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *blipper = tmp;

    InitObject(blipper, template, a2);
    if (blipper->base.x > blipper->kirby3->base.base.base.x)
        blipper->base.flags |= 1;
    else
        blipper->base.flags &= ~1;
    blipper->base.unkC |= 1;
    sub_0803E2B0(&blipper->base, -5, -5, 5, 6);
    sub_0803E308(&blipper->base, -6, -6, 6, 8);
    ObjectInitSprite(blipper);
    gUnk_08351648[blipper->type].unk10(blipper);
    return blipper;
}

static void sub_080A5188(struct Object2 *blipper)
{
    s16 a, b;
    s32 lhs, rhs;
    u32 var;

    blipper->base.flags |= 4;
    if (blipper->subtype)
    {
        a = 0x18;
        b = 0x120;
    }
    else
    {
        a = 0xC;
        b = 0xC0;
    }
    if (blipper->unk85 > 6)
        a = -a;
    if (++blipper->unk9E > 0xF)
    {
        blipper->kirby3 = sub_0803D368(&blipper->base);
        blipper->unk9E = 0;
        blipper->unkA0 = blipper->kirby3->base.base.base.x >> 8;
        blipper->unkA2 = blipper->kirby3->base.base.base.y >> 8;
    }
    lhs = blipper->base.y & ~0xFFF;
    rhs = (blipper->unkA2 * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (a > 0)
        {
            blipper->base.yspeed += a;
            if (blipper->base.yspeed > b)
                blipper->base.yspeed = b;
        }
        else
        {
            blipper->base.yspeed += a;
            if (blipper->base.yspeed < -b)
                blipper->base.yspeed = -b;
        }
    }
    else if (lhs < rhs)
    {
        if (a < 0)
        {
            blipper->base.yspeed -= a;
            if (blipper->base.yspeed > b)
                blipper->base.yspeed = b;
        }
        else
        {
            blipper->base.yspeed -= a;
            if (blipper->base.yspeed < -b)
                blipper->base.yspeed = -b;
        }
    }
    else
    {
        if (blipper->base.yspeed < 0)
        {
            blipper->base.yspeed += a >> 1;
            if (blipper->base.yspeed > 0)
                blipper->base.yspeed = 0;
        }
        else
        {
            blipper->base.yspeed -= a >> 1;
            if (blipper->base.yspeed < 0)
                blipper->base.yspeed = 0;
        }
    }
    lhs = blipper->base.x & ~0xFFF;
    rhs = (blipper->unkA0 * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        blipper->base.flags &= ~1;
        blipper->base.xspeed += a;
        if (blipper->base.xspeed > b)
            blipper->base.xspeed = b;
        else if (blipper->base.xspeed < -b)
            blipper->base.xspeed = -b;
    }
    else if (lhs > rhs)
    {
        blipper->base.flags |= 1;
        if (blipper->base.flags & 1)
        {
            blipper->base.xspeed -= a;
            if (blipper->base.xspeed < -b)
                blipper->base.xspeed = -b;
            else if (blipper->base.xspeed > b)
                blipper->base.xspeed = b;
        }
        else
        {
            blipper->base.xspeed += a;
            if (blipper->base.xspeed > b)
                blipper->base.xspeed = b;
            else if (blipper->base.xspeed < -b)
                blipper->base.xspeed = -b;
        }
    }
    else
    {
        if (blipper->base.xspeed < 0)
        {
            blipper->base.xspeed -= a >> 1;
            if (blipper->base.xspeed > 0)
                blipper->base.xspeed = 0;
        }
        else
        {
            blipper->base.xspeed += a >> 1;
            if (blipper->base.xspeed < 0)
                blipper->base.xspeed = 0;
        }
    }
    if ((b == abs(blipper->base.xspeed) || !blipper->base.xspeed)
        && (b == abs(blipper->base.yspeed) || !blipper->base.yspeed))
        blipper->unk83 = 2;
    else if (blipper->unk85 > 6)
        blipper->unk83 = 1;
    else
        blipper->unk83 = 0;
    if (blipper->base.unk62 & 1)
        blipper->base.xspeed = -blipper->base.xspeed;
    if (blipper->base.unk62 & 0xC)
        blipper->base.yspeed = -blipper->base.counter;
    var = 2;
    if (blipper->base.yspeed > 0)
    {
        if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
            && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
            && blipper->base.y - 0x800 <= gCurLevelInfo[blipper->base.unk56].unk54
            && blipper->base.y - 0x800 >= gCurLevelInfo[blipper->base.unk56].unk4C)
            var = gUnk_082D88B8[sub_080023E4(blipper->base.unk56, blipper->base.x >> 12, (blipper->base.y - 0x800) >> 12)];
    }
    else if (blipper->base.yspeed < 0)
    {
        if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
            && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
            && blipper->base.y + 0x800 <= gCurLevelInfo[blipper->base.unk56].unk54
            && blipper->base.y + 0x800 >= gCurLevelInfo[blipper->base.unk56].unk4C)
            var = gUnk_082D88B8[sub_080023E4(blipper->base.unk56, blipper->base.x >> 12, (blipper->base.y + 0x800) >> 12)];
    }
    if (!(var & 2))
        blipper->base.yspeed = -blipper->base.yspeed;
    var = 2;
    if (blipper->base.xspeed > 0)
    {
        if (blipper->base.x + 0x800 <= gCurLevelInfo[blipper->base.unk56].unk50
            && blipper->base.x + 0x800 >= gCurLevelInfo[blipper->base.unk56].unk48
            && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
            && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
            var = gUnk_082D88B8[sub_080023E4(blipper->base.unk56, (blipper->base.x + 0x800) >> 12, blipper->base.y >> 12)];
    }
    else if (blipper->base.xspeed < 0)
    {
        if (blipper->base.x - 0x800 <= gCurLevelInfo[blipper->base.unk56].unk50
            && blipper->base.x - 0x800 >= gCurLevelInfo[blipper->base.unk56].unk48
            && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
            && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
            var = gUnk_082D88B8[sub_080023E4(blipper->base.unk56, (blipper->base.x - 0x800) >> 12, blipper->base.y >> 12)];
        // TODO: wrong scope or intended?
        if (!(var & 2))
            blipper->base.xspeed = -blipper->base.xspeed;
    }
    if (++blipper->unk9F == 0xFF && blipper->unk85 < 7)
        ++blipper->unk85;
    blipper->base.counter = blipper->base.yspeed;
    if (!(blipper->base.unk58 & 2))
        sub_080A72D8(blipper);
}

static void sub_080A561C(struct Object2 *blipper)
{
    u32 var = 2;

    blipper->base.flags |= 4;
    if (!blipper->unk9E)
    {
        ++blipper->unk9F;
        if (!gUnk_08353480[blipper->unk9F].unk8)
            --blipper->unk9F;
        blipper->unk9E = gUnk_08353480[blipper->unk9F].unk8;
        if (gUnk_08353480[blipper->unk9F].unk9 != 0xFF)
            blipper->unk83 = gUnk_08353480[blipper->unk9F].unk9;
        if (blipper->unk9F)
        {
            if (gUnk_08353480[blipper->unk9F].unk0 != gUnk_08353480[blipper->unk9F - 1].unk0)
            {
                blipper->base.xspeed = gUnk_08353480[blipper->unk9F].unk0;
                if (blipper->base.flags & 1)
                    blipper->base.xspeed = -blipper->base.xspeed;
            }
            if (gUnk_08353480[blipper->unk9F].unk2 != gUnk_08353480[blipper->unk9F - 1].unk2)
                blipper->base.yspeed = gUnk_08353480[blipper->unk9F].unk2;
        }
        else
        {
            blipper->base.yspeed = gUnk_08353480[blipper->unk9F].unk2;
            blipper->base.xspeed = gUnk_08353480[blipper->unk9F].unk0;
            if (blipper->base.flags & 1)
                blipper->base.xspeed = -blipper->base.xspeed;
        }
    }
    if (blipper->base.flags & 1)
        blipper->base.xspeed -= gUnk_08353480[blipper->unk9F].unk4;
    else
        blipper->base.xspeed += gUnk_08353480[blipper->unk9F].unk4;
    blipper->base.yspeed += gUnk_08353480[blipper->unk9F].unk6;
    Macro_080A561C(gUnk_08353480, blipper);
    if (blipper->base.unk62 & 1)
    {
        blipper->base.xspeed = -blipper->base.xspeed;
        blipper->base.flags ^= 1;
    }
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        if (blipper->base.xspeed > 0)
            var = *Macro_080B75D0(blipper, 0x800, 0);
        else if (blipper->base.xspeed < 0)
            var = *Macro_080B75D0(blipper, -0x800, 0);
        if (!(var & 2))
        {
            blipper->base.flags ^= 1;
            blipper->base.xspeed = -blipper->base.xspeed;
        }
    }
    if (!(blipper->base.unk58 & 2))
        sub_080A72D8(blipper);
}

static void sub_080A58C0(struct Object2 *blipper)
{
    u32 var = 2; // unused value, but required for matching

    if (!(blipper->base.unk58 & 2))
    {
        sub_080A72D8(blipper);
        return;
    }
    blipper->base.flags |= 4;
    if (!blipper->unk9E)
    {
        ++blipper->unk9F;
        if (!gUnk_083534BC[blipper->unk9F].unk8)
            --blipper->unk9F;
        blipper->unk9E = gUnk_083534BC[blipper->unk9F].unk8;
        if (gUnk_083534BC[blipper->unk9F].unk9 != 0xFF)
            blipper->unk83 = gUnk_083534BC[blipper->unk9F].unk9;
        if (blipper->unk9F)
        {
            if (gUnk_083534BC[blipper->unk9F].unk0 != gUnk_083534BC[blipper->unk9F - 1].unk0)
            {
                blipper->base.xspeed = gUnk_083534BC[blipper->unk9F].unk0;
                if (blipper->base.flags & 1)
                    blipper->base.xspeed = -blipper->base.xspeed;
            }
            if (gUnk_083534BC[blipper->unk9F].unk2 != gUnk_083534BC[blipper->unk9F - 1].unk2)
                blipper->base.yspeed = gUnk_083534BC[blipper->unk9F].unk2;
        }
        else
        {
            blipper->base.yspeed = gUnk_083534BC[blipper->unk9F].unk2;
            blipper->base.xspeed = gUnk_083534BC[blipper->unk9F].unk0;
            if (blipper->base.flags & 1)
                blipper->base.xspeed = -blipper->base.xspeed;
        }
    }
    if (blipper->base.flags & 1)
        blipper->base.xspeed -= gUnk_083534BC[blipper->unk9F].unk4;
    else
        blipper->base.xspeed += gUnk_083534BC[blipper->unk9F].unk4;
    blipper->base.yspeed += gUnk_083534BC[blipper->unk9F].unk6;
    ({
        --blipper->unk9E;
        if ((!gUnk_083534BC[(u8)(blipper->unk9F + 1)].unk8 && !blipper->unk9E
                && ((blipper->unk9F = 0xFF), ++blipper->unk85 > 2))
            || blipper->base.unk62 & 8)
        {
            sub_080A7238(blipper);
            return;
        }
    });
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, -0x800);
        if (!(var & 2))
            sub_080A7238(blipper);
    }
}

static void sub_080A5B1C(struct Object2 *blipper)
{
    u32 var = 2; // unused value, but required for matching

    if (!(blipper->base.unk58 & 2))
    {
        sub_080A72D8(blipper);
        return;
    }
    if (blipper->base.flags & 2)
    {
        ObjectSetFunc(blipper, 3, sub_080A58C0);
        blipper->base.flags |= 0x40;
        blipper->base.flags &= ~0x20;
        blipper->unk85 = 0;
    }
    else if (blipper->base.unk62 & 4)
    {
        ObjectSetFunc(blipper, 3, sub_080A58C0);
        blipper->base.flags |= 0x40;
        blipper->base.flags &= ~0x20;
        blipper->unk85 = 0;
    }
    else if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, 0x800);
        if (!(var & 2))
        {
            ObjectSetFunc(blipper, 3, sub_080A58C0);
            blipper->base.flags |= 0x40;
            blipper->base.flags &= ~0x20;
            blipper->unk85 = 0;
        }
    }
}

static void sub_080A5C44(struct Object2 *blipper)
{
    u32 var;

    blipper->base.flags |= 4;
    blipper->base.yspeed += 0x33;
    if (blipper->base.yspeed > 0x300)
        blipper->base.yspeed = 0x300;
    if (blipper->base.unk62 & 4)
    {
        blipper->base.flags ^= 1;
        blipper->base.xspeed = -blipper->base.xspeed;
    }
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, -0x800);
        if (!(var & 2))
        {
            sub_080A72AC(blipper);
            return;
        }
        var = 2;
        if (blipper->base.xspeed > 0)
            var = *Macro_080B75D0(blipper, 0x800, 0);
        else if (blipper->base.xspeed < 0)
            var = *Macro_080B75D0(blipper, -0x800, 0);
        if (!(var & 2))
        {
            blipper->base.flags ^= 1;
            blipper->base.xspeed = -blipper->base.xspeed;
        }
    }
    if (!(blipper->base.unk58 & 2))
        sub_080A72D8(blipper);
}

static void sub_080A5E30(struct Object2 *blipper)
{
    u32 var = 2;

    blipper->base.flags |= 4;
    if (!blipper->unk9E)
    {
        ++blipper->unk9F;
        if (!gUnk_08353480[blipper->unk9F].unk8)
            --blipper->unk9F;
        blipper->unk9E = gUnk_08353480[blipper->unk9F].unk8;
        if (gUnk_08353480[blipper->unk9F].unk9 != 0xFF)
            blipper->unk83 = gUnk_08353480[blipper->unk9F].unk9;
        if (blipper->unk9F)
        {
            if (gUnk_08353480[blipper->unk9F].unk0 != gUnk_08353480[blipper->unk9F - 1].unk0)
            {
                blipper->base.xspeed = gUnk_08353480[blipper->unk9F].unk0;
                if (blipper->base.flags & 1)
                    blipper->base.xspeed = -blipper->base.xspeed;
            }
            if (gUnk_08353480[blipper->unk9F].unk2 != gUnk_08353480[blipper->unk9F - 1].unk2)
                blipper->base.yspeed = gUnk_08353480[blipper->unk9F].unk2;
        }
        else
        {
            blipper->base.yspeed = gUnk_08353480[blipper->unk9F].unk2;
            blipper->base.xspeed = gUnk_08353480[blipper->unk9F].unk0;
            if (blipper->base.flags & 1)
                blipper->base.xspeed = -blipper->base.xspeed;
        }
    }
    if (blipper->base.flags & 1)
        blipper->base.xspeed -= gUnk_08353480[blipper->unk9F].unk4;
    else
        blipper->base.xspeed += gUnk_08353480[blipper->unk9F].unk4;
    blipper->base.yspeed += gUnk_08353480[blipper->unk9F].unk6;
    Macro_080A561C(gUnk_08353480, blipper);
    if (blipper->base.unk62 & 1)
    {
        blipper->base.xspeed = -blipper->base.xspeed;
        blipper->base.flags ^= 1;
        blipper->base.counter = 0;
    }
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        if (blipper->base.xspeed > 0)
            var = *Macro_080B75D0(blipper, 0x800, 0);
        else if (blipper->base.xspeed < 0)
            var = *Macro_080B75D0(blipper, -0x800, 0);
        if (!(var & 2))
        {
            blipper->base.flags ^= 1;
            blipper->base.xspeed = -blipper->base.xspeed;
            blipper->base.counter = 0;
        }
    }
    if (++blipper->base.counter > 0xC0)
    {
        blipper->base.flags ^= 1;
        blipper->base.xspeed = -blipper->base.xspeed;
        blipper->base.counter = 0;
    }
    if (!--blipper->unk85)
    {
        blipper->unk85 = 0x10;
        blipper->kirby3 = sub_0803D368(&blipper->base);
        if (abs(blipper->kirby3->base.base.base.x - blipper->base.x) < 0x4000
            && RandLessThan3())
        {
            sub_080A616C(blipper);
            return;
        }
    }
    if (!(blipper->base.unk58 & 2))
        sub_080A72D8(blipper);
}

static void sub_080A616C(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 5, sub_080A6210);
    if (blipper->base.x > blipper->kirby3->base.base.base.x)
        blipper->base.flags |= 1;
    else
        blipper->base.flags &= ~1;
    if (blipper->object->subtype1 == 3)
        blipper->base.flags |= 0x100;
    if (abs(blipper->kirby3->base.base.base.x - blipper->base.x) < 0x2000)
        blipper->base.xspeed = 0x80;
    else
        blipper->base.xspeed = 0x100;
    blipper->base.yspeed = 0x400;
    if (blipper->base.flags & 1)
        blipper->base.xspeed = -blipper->base.xspeed;
}

static void sub_080A6210(struct Object2 *blipper)
{
    u32 var;

    if (blipper->base.unk62 & 1)
    {
        blipper->base.xspeed = -blipper->base.xspeed;
        blipper->base.flags ^= 1;
    }
    if (blipper->base.yspeed < 0)
    {
        blipper->unk83 = 6;
        if (blipper->base.unk58 & 2)
        {
            blipper->base.flags |= 0x40;
            blipper->base.yspeed = blipper->base.counter;
        }
        blipper->base.counter = blipper->base.yspeed;
        if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
            && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
            && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
            && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
        {
            var = *Macro_080B75D0(blipper, 0, -0x800);
            if (var & 2)
            {
                blipper->base.yspeed >>= 2;
                ObjectSetFunc(blipper, 3, sub_080A5C44);
                blipper->base.flags |= 0x40;
                blipper->base.flags &= ~0x100;
                blipper->base.flags &= ~0x20;
                blipper->base.xspeed = 0x80;
                if (blipper->base.flags & 1)
                    blipper->base.xspeed = -blipper->base.xspeed;
                return;
            }
        }
    }
    else
        blipper->base.flags |= 4;
    if (!(blipper->base.unk58 & 2))
        blipper->base.flags &= ~0x40;
    if (blipper->base.unk62 & 8)
        sub_080A72D8(blipper);
    else if (blipper->base.unk62 & 4)
        sub_080A7340(blipper);
}

static void sub_080A63A0(struct Object2 *blipper)
{
    u32 var;

    blipper->base.yspeed -= 0x10;
    if (blipper->base.yspeed < -0x300)
        blipper->base.yspeed = -0x300;
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, -0x800);
        if (var & 2)
        {
            blipper->base.yspeed >>= 2;
            blipper->base.flags &= ~0x20;
            switch (blipper->object->subtype1)
            {
            case 0:
            default:
                sub_080A7188(blipper);
                break;
            case 1:
                sub_080A71B4(blipper);
                break;
            case 2:
                sub_080A71E4(blipper);
                break;
            case 3:
            case 4:
                sub_080A726C(blipper);
                break;
            }
            return;
        }
    }
    if (blipper->base.unk62 & 4)
        sub_080A7340(blipper);
}

static inline u16 RandLessThan8(void)
{
    return Rand16() & 7;
}

static void sub_080A64F0(struct Object2 *blipper)
{
    u32 var;

    blipper->base.yspeed -= 0x2B;
    if (blipper->base.yspeed < -0x300)
        blipper->base.yspeed = -0x300;
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, -0x800);
        if (var & 2)
        {
            blipper->base.yspeed >>= 2;
            blipper->base.flags &= ~0x20;
            switch (blipper->object->subtype1)
            {
            case 0:
            default:
                sub_080A7188(blipper);
                break;
            case 1:
                sub_080A71B4(blipper);
                break;
            case 2:
                sub_080A71E4(blipper);
                break;
            case 3:
            case 4:
                sub_080A726C(blipper);
                break;
            }
            return;
        }
    }
    if (blipper->base.unk62 & 4)
    {
        if (!RandLessThan8())
            blipper->base.flags ^= 1;
        switch (RandLessThan8())
        {
        case 0:
        default:
            sub_080A73D4(blipper);
            break;
        case 1:
        case 2:
        case 3:
            sub_080A742C(blipper);
            break;
        case 4:
        case 5:
            sub_080A7460(blipper);
            break;
        case 6:
        case 7:
            sub_080A7498(blipper);
            break;
        }
    }
    else
    {
        switch (blipper->base.counter)
        {
        case 0xC:
            sub_080A6CBC(blipper, 3);
            break;
        case 6:
        case 0x10:
            sub_080A6CBC(blipper, 2);
            break;
        case 0x14:
            sub_080A6CBC(blipper, 3);
            break;
        }
        ++blipper->base.counter;
    }
}

static void sub_080A6704(struct Object2 *blipper)
{
    u32 var;

    blipper->base.yspeed -= 0x2B;
    if (blipper->base.yspeed < -0x300)
        blipper->base.yspeed = -0x300;
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, -0x800);
        if (var & 2)
        {
            blipper->base.yspeed >>= 2;
            blipper->base.flags &= ~0x20;
            switch (blipper->object->subtype1)
            {
            case 0:
            default:
                sub_080A7188(blipper);
                break;
            case 1:
                sub_080A71B4(blipper);
                break;
            case 2:
                sub_080A71E4(blipper);
                break;
            case 3:
            case 4:
                sub_080A726C(blipper);
                break;
            }
            return;
        }
    }
    if (blipper->base.unk62 & 4)
    {
        if (!RandLessThan8())
            blipper->base.flags ^= 1;
        switch (RandLessThan8())
        {
        case 0:
        default:
            sub_080A73D4(blipper);
            break;
        case 1:
        case 2:
        case 3:
            sub_080A742C(blipper);
            break;
        case 4:
        case 5:
            sub_080A7460(blipper);
            break;
        case 6:
        case 7:
            sub_080A7498(blipper);
            break;
        }
    }
    else
    {
        switch (blipper->base.counter)
        {
        case 0:
            sub_080A6CBC(blipper, 0);
            break;
        case 4:
            sub_080A6CBC(blipper, 1);
            break;
        case 0x10:
            sub_080A6CBC(blipper, 0);
            break;
        }
        ++blipper->base.counter;
    }
}

static void sub_080A6914(struct Object2 *blipper)
{
    u32 var;

    blipper->base.yspeed -= 0x2B;
    if (blipper->base.yspeed < -0x300)
        blipper->base.yspeed = -0x300;
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, -0x800);
        if (var & 2)
        {
            blipper->base.yspeed >>= 2;
            blipper->base.flags &= ~0x20;
            switch (blipper->object->subtype1)
            {
            case 0:
            default:
                sub_080A7188(blipper);
                break;
            case 1:
                sub_080A71B4(blipper);
                break;
            case 2:
                sub_080A71E4(blipper);
                break;
            case 3:
            case 4:
                sub_080A726C(blipper);
                break;
            }
            return;
        }
    }
    if (blipper->base.unk62 & 4)
    {
        if (!(Rand16() & 7))
            blipper->base.flags ^= 1;
        switch (RandLessThan8())
        {
        case 0:
        default:
            sub_080A73D4(blipper);
            break;
        case 1:
        case 2:
        case 3:
            sub_080A742C(blipper);
            break;
        case 4:
        case 5:
            sub_080A7460(blipper);
            break;
        case 6:
        case 7:
            sub_080A7498(blipper);
            break;
        }
    }
}

static void sub_080A6AE8(struct Object2 *blipper) // the same as sub_080A6914
{
    u32 var;

    blipper->base.yspeed -= 0x2B;
    if (blipper->base.yspeed < -0x300)
        blipper->base.yspeed = -0x300;
    if (blipper->base.x <= gCurLevelInfo[blipper->base.unk56].unk50
        && blipper->base.x >= gCurLevelInfo[blipper->base.unk56].unk48
        && blipper->base.y <= gCurLevelInfo[blipper->base.unk56].unk54
        && blipper->base.y >= gCurLevelInfo[blipper->base.unk56].unk4C)
    {
        var = *Macro_080B75D0(blipper, 0, -0x800);
        if (var & 2)
        {
            blipper->base.yspeed >>= 2;
            blipper->base.flags &= ~0x20;
            switch (blipper->object->subtype1)
            {
            case 0:
            default:
                sub_080A7188(blipper);
                break;
            case 1:
                sub_080A71B4(blipper);
                break;
            case 2:
                sub_080A71E4(blipper);
                break;
            case 3:
            case 4:
                sub_080A726C(blipper);
                break;
            }
            return;
        }
    }
    if (blipper->base.unk62 & 4)
    {
        if (!(Rand16() & 7))
            blipper->base.flags ^= 1;
        switch (RandLessThan8())
        {
        case 0:
        default:
            sub_080A73D4(blipper);
            break;
        case 1:
        case 2:
        case 3:
            sub_080A742C(blipper);
            break;
        case 4:
        case 5:
            sub_080A7460(blipper);
            break;
        case 6:
        case 7:
            sub_080A7498(blipper);
            break;
        }
    }
}

static void sub_080A6CBC(struct Object2 *blipper, u8 a2)
{
    struct Task *t = TaskCreate(sub_080A6E44, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = blipper->base.x;
    obj4->y = blipper->base.y;
    obj4->parent = blipper;
    obj4->roomId = blipper->base.roomId;
    obj4->flags |= 0x4000;
    switch (a2)
    {
    case 0:
    default:
        obj4->unk3C = -0x200;
        obj4->unk3E = 0x200;
        obj4->x -= 0xC00;
        break;
    case 1:
        obj4->unk3C = 0x200;
        obj4->unk3E = 0x200;
        obj4->x += 0xC00;
        break;
    case 2:
        obj4->unk3C = -0x200;
        obj4->unk3E = 0x280;
        obj4->y -= 0xC00;
        obj4->x -= 0x800;
        break;
    case 3:
        obj4->unk3C = 0x200;
        obj4->unk3E = 0x280;
        obj4->y -= 0xC00;
        obj4->x += 0x800;
        break;
    }
    if (Macro_0810B1F4(&blipper->base))
        obj4->flags |= 0x2000;
    sub_080709F8(obj4, &obj4->sprite, 6, 0x329, 2, 0xC);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x327, 1);
}

static void sub_080A6E44(void)
{
    struct Sprite sprite;
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct Object2 *blipper;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 6, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x327, !obj4->sprite.palId);
        Macro_0809E55C(obj4);
        blipper = obj4->parent;
        if (blipper)
        {
            if (blipper->base.unk0 && blipper->base.flags & 0x1000)
            {
                obj4->parent = NULL;
                blipper = NULL;
            }
            if (!blipper)
                goto label;
            if (Macro_0810B1F4(&blipper->base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        obj4->unk3E -= 0x80;
        if (obj4->flags & 2)
            obj4->flags |= 0x1000;
        else
        {
            if (!(obj4->flags & 0x800))
            {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            sub_0806FAC8(obj4);
        }
    }
}

void sub_080A712C(struct Object2 *blipper)
{
    switch (blipper->object->subtype1)
    {
    case 0:
    default:
        sub_080A7188(blipper);
        break;
    case 1:
        sub_080A71B4(blipper);
        break;
    case 2:
        sub_080A71E4(blipper);
        break;
    case 3:
        sub_080A726C(blipper);
        break;
    case 4:
        sub_080A726C(blipper);
        break;
    }
}

static void sub_080A7188(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 0, sub_080A5188);
    blipper->unk85 = 0;
    blipper->base.flags |= 0x40;
    blipper->base.flags &= ~0x20;
}

static void sub_080A71B4(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 0, sub_080A561C);
    blipper->base.flags |= 0x40;
    blipper->base.flags &= ~0x20;
    blipper->base.xspeed = 0;
    blipper->base.yspeed = 0;
}

static void sub_080A71E4(struct Object2 *blipper)
{
    blipper->base.xspeed = 0;
    blipper->base.yspeed = 0;
    if (blipper->base.y > blipper->kirby3->base.base.base.y)
        sub_080A7210(blipper);
    else
        sub_080A7238(blipper);
}

static void sub_080A7210(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 3, sub_080A58C0);
    blipper->base.flags |= 0x40;
    blipper->base.flags &= ~0x20;
    blipper->unk85 = 0;
}

static void sub_080A7238(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 4, sub_080A5B1C);
    blipper->base.flags |= 0x40;
    blipper->base.flags &= ~0x20;
    blipper->base.xspeed = 0;
    blipper->base.yspeed = -0x80;
}

static void sub_080A726C(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 3, sub_080A5C44);
    blipper->base.flags |= 0x40;
    blipper->base.flags &= ~0x100;
    blipper->base.flags &= ~0x20;
    blipper->base.xspeed = 0x80;
    if (blipper->base.flags & 1)
        blipper->base.xspeed = -blipper->base.xspeed;
}

static void sub_080A72AC(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 0, sub_080A5E30);
    blipper->base.flags |= 0x40;
    blipper->base.yspeed = 0;
    blipper->unk85 = 0x5A;
}

static void sub_080A72D8(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 7, sub_080A63A0);
    if (blipper->base.x > blipper->kirby3->base.base.base.x)
        blipper->base.flags |= 1;
    else
        blipper->base.flags &= ~1;
    blipper->base.flags &= ~0x40;
    blipper->base.flags &= ~0x100;
    blipper->base.xspeed = 0;
    blipper->base.yspeed = 0;
    if (blipper->object->subtype1 == 3)
        blipper->base.flags |= 0x100;
}

static void sub_080A7340(struct Object2 *blipper)
{
    if (!(Rand16() & 7))
        blipper->base.flags ^= 1;
    switch (Rand16() & 7)
    {
    case 0:
    default:
        sub_080A73D4(blipper);
        break;
    case 1:
    case 2:
    case 3:
        sub_080A742C(blipper);
        break;
    case 4:
    case 5:
        sub_080A7460(blipper);
        break;
    case 6:
    case 7:
        sub_080A7498(blipper);
        break;
    }
}

static void sub_080A73D4(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 8, sub_080A64F0);
    if (blipper->base.x > blipper->kirby3->base.base.base.x)
        blipper->base.flags |= 1;
    else
        blipper->base.flags &= ~1;
    blipper->base.flags &= ~0x40;
    blipper->base.flags &= ~0x100;
    blipper->base.xspeed = 0;
    blipper->base.yspeed = 0x400;
}

static void sub_080A742C(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 9, sub_080A6704);
    blipper->base.flags &= ~0x40;
    blipper->base.flags &= ~0x100;
    blipper->base.xspeed = 0;
    blipper->base.yspeed = 0x200;
}

static void sub_080A7460(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 0xA, sub_080A6914);
    blipper->base.flags &= ~0x40;
    blipper->base.flags &= ~0x100;
    blipper->base.xspeed = 0x100;
    blipper->base.yspeed = 0x200;
}

static void sub_080A7498(struct Object2 *blipper)
{
    ObjectSetFunc(blipper, 0xB, sub_080A6AE8);
    blipper->base.flags &= ~0x40;
    blipper->base.flags &= ~0x100;
    blipper->base.xspeed = -0x100;
    blipper->base.yspeed = 0x200;
}
