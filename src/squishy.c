#include "squishy.h"
#include "random.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"

static void sub_080AF7D4(struct Object2 *);
static void sub_080AF958(struct Object2 *);
static void sub_080AFB70(struct Object2 *);
static void sub_080AFE0C(struct Object2 *);
static void sub_080AFEBC(struct Object2 *);
static void sub_080AFF90(struct Object2 *);
static void sub_080AFFAC(struct Object2 *);
static void sub_080AFFF8(struct Object2 *);
static void sub_080B0024(struct Object2 *);
static void sub_080B0040(struct Object2 *);
static void sub_080B005C(struct Object2 *);
static void sub_080B0078(struct Object2 *);
static void sub_080B00A4(struct Object2 *);
static void sub_080B00BC(struct Object2 *);
static void sub_080B00DC(struct Object2 *);
static void sub_080B010C(struct Object2 *);
static void sub_080B0134(struct Object2 *);

const struct Unk_02021590 gUnk_08353C38[] = {
    { 0x324, 0x0, 0x0 },
    { 0x324, 0x1, 0x0 },
    { 0x324, 0x2, 0x0 },
    { 0x324, 0x3, 0x0 },
    { 0x324, 0x4, 0x0 },
    { 0x324, 0x5, 0x0 },
    { 0x324, 0x6, 0x0 },
    { 0x324, 0x7, 0x0 },
};

static const struct Unk_08353510 gUnk_08353C58[] = {
    { 0x0, -0x80, 0x0, 0x0,  0xA, 0x2 },
    { 0x0, 0x100, 0x0, 0x0,  0xA, 0x3 },
    { 0x0,  0x80, 0x0, 0x0,  0xA, 0x3 },
    { 0x0,  0x40, 0x0, 0x0,  0xA, 0x2 },
    { 0x0,  0x40, 0x0, 0x0, 0x60, 0x3 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08353CA0[] = {
    { 0x80,  0x400, 0x0, 0x0, 0x8, 0x3 },
    { 0x80,  0x200, 0x0, 0x0, 0x8, 0x3 },
    { 0x80,  0x100, 0x0, 0x0, 0x8, 0x3 },
    { 0x80,   0x80, 0x0, 0x0, 0x8, 0x3 },
    { 0x80,  -0x80, 0x0, 0x0, 0x8, 0x3 },
    { 0x80, -0x100, 0x0, 0x0, 0x8, 0x3 },
    { 0x80, -0x200, 0x0, 0x0, 0x8, 0x3 },
    { 0x80, -0x300, 0x0, 0x0, 0x8, 0x3 },
    { 0 },
};

void *CreateSquishy(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *squishy = tmp;

    InitObject(squishy, template, a2);
    if (squishy->base.x > squishy->kirby3->base.base.base.x)
        squishy->base.flags |= 1;
    else
        squishy->base.flags &= ~1;
    squishy->base.unkC |= 1;
    sub_0803E2B0(&squishy->base, -5, -5, 5, 6);
    sub_0803E308(&squishy->base, -6, -6, 6, 8);
    ObjectInitSprite(squishy);
    switch (squishy->object->subtype1)
    {
    default:
    case 0:
        sub_080AF754(squishy);
        break;
    case 1:
        sub_080AFB70(squishy);
        break;
    case 2:
        sub_080B0134(squishy);
        break;
    }
    return squishy;
}

void sub_080AF754(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 0, sub_080AF7D4);
    squishy->unk85 = 0;
    if (squishy->base.x > squishy->kirby3->base.base.base.x)
        squishy->base.flags |= 1;
    else
        squishy->base.flags &= ~1;
    if (squishy->subtype)
    {
        squishy->base.xspeed = 0xC0;
        squishy->unk83 = 1;
    }
    else
    {
        squishy->base.xspeed = 0x80;
        squishy->unk83 = 0;
    }
    if (squishy->base.flags & 1)
        squishy->base.xspeed = -squishy->base.xspeed;
}

static void sub_080AF7D4(struct Object2 *squishy)
{
    if (squishy->base.unk58 & 2)
        sub_080B0078(squishy);
    else
    {
        squishy->base.flags |= 4;
        if (++squishy->base.counter > 0x14)
        {
            squishy->base.counter = 0;
            if (++squishy->unk85 > 4
                || (Rand16() & 3) == 3)
            {
                sub_080B0040(squishy);
                return;
            }
        }
        if (squishy->base.unk62 & 1)
        {
            squishy->base.flags ^= 1;
            squishy->base.xspeed = -squishy->base.xspeed;
        }
        if (!(squishy->base.unk62 & 4))
            sub_080AFF90(squishy);
    }
}

static void sub_080AF878(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 3, sub_080AF958);
    squishy->kirby3 = sub_0803D368(&squishy->base);
    if (squishy->base.x > squishy->kirby3->base.base.base.x)
        squishy->base.flags |= 1;
    else
        squishy->base.flags &= ~1;
    squishy->base.xspeed = 0xC0;
    squishy->base.yspeed = 0x300;
    squishy->base.flags |= 0x20;
    if (squishy->base.flags & 1)
        squishy->base.xspeed = -squishy->base.xspeed;
}

static void sub_080AF8DC(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 3, sub_080AF958);
    squishy->kirby3 = sub_0803D368(&squishy->base);
    if (squishy->base.x > squishy->kirby3->base.base.base.x)
        squishy->base.flags |= 1;
    else
        squishy->base.flags &= ~1;
    if ( squishy->base.yspeed >= 0 )
    {
        squishy->base.xspeed = 0x180;
        squishy->base.yspeed = 0x300;
    }
    else
        squishy->base.xspeed = 0;
    squishy->base.flags |= 0x20;
    if (squishy->base.flags & 1)
        squishy->base.xspeed = -squishy->base.xspeed;
}

static void sub_080AF958(struct Object2 *squishy)
{
    if (squishy->base.unk62 & 1)
    {
        squishy->base.flags ^= 1;
        squishy->base.xspeed = -squishy->base.xspeed;
    }
    if (squishy->base.unk62 & 4)
    {
        ObjectSetFunc(squishy, 4, sub_080B0024);
        squishy->base.xspeed = 0;
        squishy->base.yspeed = 0;
        squishy->base.flags &= ~0x20;
    }
    else if (squishy->base.unk58 & 2)
        sub_080B0078(squishy);
}

static void sub_080AF9C4(struct Object2 *squishy)
{
    if (squishy->base.counter > 0x60)
    {
        if (!gUnk_08353C58[(u8)(squishy->unk9F + 1)].unk8 && !squishy->unk9E)
            squishy->unk9F = 0xFF;
        if (!squishy->unk9E)
        {
            ++squishy->unk9F;
            if (!gUnk_08353C58[squishy->unk9F].unk8)
                --squishy->unk9F;
            squishy->unk9E = gUnk_08353C58[squishy->unk9F].unk8;
            if (gUnk_08353C58[squishy->unk9F].unk9 != 0xFF)
                squishy->unk83 = gUnk_08353C58[squishy->unk9F].unk9;
            if (squishy->unk9F)
            {
                if (gUnk_08353C58[squishy->unk9F].unk0 != gUnk_08353C58[squishy->unk9F - 1].unk0)
                {
                    squishy->base.xspeed = gUnk_08353C58[squishy->unk9F].unk0;
                    if (squishy->base.flags & 1)
                        squishy->base.xspeed = -squishy->base.xspeed;
                }
                if (gUnk_08353C58[squishy->unk9F].unk2 != gUnk_08353C58[squishy->unk9F - 1].unk2)
                    squishy->base.yspeed = gUnk_08353C58[squishy->unk9F].unk2;
            }
            else
            {
                squishy->base.yspeed = gUnk_08353C58[squishy->unk9F].unk2;
                squishy->base.xspeed = gUnk_08353C58[squishy->unk9F].unk0;
                if (squishy->base.flags & 1)
                    squishy->base.xspeed = -squishy->base.xspeed;
            }
        }
        if (squishy->base.flags & 1)
            squishy->base.xspeed -= gUnk_08353C58[squishy->unk9F].unk4;
        else
            squishy->base.xspeed += gUnk_08353C58[squishy->unk9F].unk4;
        squishy->base.yspeed += gUnk_08353C58[squishy->unk9F].unk6;
        --squishy->unk9E;
    }
    else
        ++squishy->base.counter;
    if (!(squishy->base.unk58 & 2))
    {
        squishy->base.flags &= ~0x40;
        sub_080AF8DC(squishy);
    }
}

static void sub_080AFB70(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 2, sub_080B00A4);
    if (squishy->base.x > squishy->kirby3->base.base.base.x)
        squishy->base.flags |= 1;
    else
        squishy->base.flags &= ~1;
    squishy->base.flags |= 0x100;
    squishy->base.flags |= 0x40;
    squishy->base.xspeed = 0x80;
    squishy->base.yspeed = 0x400;
    if (squishy->base.flags & 1)
    {
        squishy->base.x = squishy->kirby3->base.base.base.x + 0x5000;
        squishy->base.xspeed = -squishy->base.xspeed;
    }
    else
        squishy->base.x = squishy->kirby3->base.base.base.x - 0x5000;
}

static void sub_080AFBFC(struct Object2 *squishy)
{
    if (!squishy->unk9E)
    {
        ++squishy->unk9F;
        if (!gUnk_08353CA0[squishy->unk9F].unk8)
            --squishy->unk9F;
        squishy->unk9E = gUnk_08353CA0[squishy->unk9F].unk8;
        if (gUnk_08353CA0[squishy->unk9F].unk9 != 0xFF)
            squishy->unk83 = gUnk_08353CA0[squishy->unk9F].unk9;
        if (squishy->unk9F)
        {
            if (gUnk_08353CA0[squishy->unk9F].unk0 != gUnk_08353CA0[squishy->unk9F - 1].unk0)
            {
                squishy->base.xspeed = gUnk_08353CA0[squishy->unk9F].unk0;
                if (squishy->base.flags & 1)
                    squishy->base.xspeed = -squishy->base.xspeed;
            }
            if (gUnk_08353CA0[squishy->unk9F].unk2 != gUnk_08353CA0[squishy->unk9F - 1].unk2)
                squishy->base.yspeed = gUnk_08353CA0[squishy->unk9F].unk2;
        }
        else
        {
            squishy->base.yspeed = gUnk_08353CA0[squishy->unk9F].unk2;
            squishy->base.xspeed = gUnk_08353CA0[squishy->unk9F].unk0;
            if (squishy->base.flags & 1)
                squishy->base.xspeed = -squishy->base.xspeed;
        }
    }
    if (squishy->base.flags & 1)
        squishy->base.xspeed -= gUnk_08353CA0[squishy->unk9F].unk4;
    else
        squishy->base.xspeed += gUnk_08353CA0[squishy->unk9F].unk4;
    squishy->base.yspeed += gUnk_08353CA0[squishy->unk9F].unk6;
    --squishy->unk9E;
    if (squishy->base.yspeed < 0)
        squishy->base.flags &= ~0x100;
    if (squishy->base.unk62 & 4)
        sub_080B00DC(squishy);
}

static void sub_080AFD80(struct Object2 *squishy)
{
    squishy->base.xspeed = 0;
    squishy->base.yspeed = 0;
    if (++squishy->base.counter > 8)
        sub_080AFE0C(squishy);
    else
    {
        if (squishy->base.unk62 & 4)
        {
            ObjectSetFunc(squishy, 4, sub_080B0024);
            squishy->base.xspeed = 0;
            squishy->base.yspeed = 0;
            squishy->base.flags &= ~0x20;
        }
        else if (squishy->base.unk58 & 2)
        {
            ObjectSetFunc(squishy, 3, sub_080AF9C4);
            squishy->base.xspeed = 0;
            squishy->base.flags |= 0x40;
            squishy->base.flags &= ~0x20;
        }
    }
}

static void sub_080AFE0C(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 3, sub_080AFEBC);
    squishy->kirby3 = sub_0803D368(&squishy->base);
    if (squishy->base.x > squishy->kirby3->base.base.base.x)
        squishy->base.flags |= 1;
    else
        squishy->base.flags &= ~1;
    if (squishy->base.y + 0x800 < squishy->kirby3->base.base.base.y)
        squishy->unk85 = 0x2B;
    else if (squishy->base.y - 0x800 > squishy->kirby3->base.base.base.y)
        squishy->unk85 = 0x25;
    else
        squishy->unk85 = 0x28;
    if (squishy->subtype)
        squishy->base.xspeed = 0x140;
    else
        squishy->base.xspeed = 0x100;
    squishy->base.yspeed = 0x280;
    if (squishy->base.flags & 1)
        squishy->base.xspeed = -squishy->base.xspeed;
}

static void sub_080AFEBC(struct Object2 *squishy)
{
    if (!--squishy->unk85)
    {
        ObjectSetFunc(squishy, 2, sub_080AFD80);
        squishy->base.xspeed = 0;
        squishy->base.yspeed = 0;
    }
    else
    {
        squishy->base.yspeed -= 0xB;
        if (squishy->base.yspeed < -0x300)
            squishy->base.yspeed = -0x300;
        if (squishy->base.unk62 & 1)
        {
            squishy->base.flags ^= 1;
            squishy->base.xspeed = -squishy->base.xspeed;
        }
        if (squishy->base.unk62 & 8)
            squishy->unk85 = 0x18;
        if (squishy->base.unk62 & 4)
        {
            ObjectSetFunc(squishy, 4, sub_080B0024);
            squishy->base.xspeed = 0;
            squishy->base.yspeed = 0;
            squishy->base.flags &= ~0x20;
        }
        else if (squishy->base.unk58 & 2)
        {
            ObjectSetFunc(squishy, 3, sub_080AF9C4);
            squishy->base.xspeed = 0;
            squishy->base.flags |= 0x40;
            squishy->base.flags &= ~0x20;
        }
    }
}

static void sub_080AFF90(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 5, sub_080AFFAC);
    squishy->unk85 = 0;
}

static void sub_080AFFAC(struct Object2 *squishy)
{
    if (squishy->base.unk62 & 1)
    {
        squishy->base.flags ^= 1;
        squishy->base.xspeed = -squishy->base.xspeed;
    }
    if (squishy->base.unk62 & 4)
        sub_080AFFF8(squishy);
    else if (squishy->base.unk58 & 2)
        sub_080B0078(squishy);
}

static void sub_080AFFF8(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 4, sub_080B0024);
    squishy->base.xspeed = 0;
    squishy->base.yspeed = 0;
    squishy->base.flags &= ~0x20;
}

static void sub_080B0024(struct Object2 *squishy)
{
    if (++squishy->base.counter > 0xA)
        sub_080AF754(squishy);
}

static void sub_080B0040(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 2, sub_080B005C);
    squishy->base.xspeed = 0;
}

static void sub_080B005C(struct Object2 *squishy)
{
    if (++squishy->base.counter > 0x18)
        sub_080AF878(squishy);
}

static void sub_080B0078(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 3, sub_080AF9C4);
    squishy->base.xspeed = 0;
    squishy->base.flags |= 0x40;
    squishy->base.flags &= ~0x20;
}

static void sub_080B00A4(struct Object2 *squishy)
{
    if (squishy->base.unk58 & 1)
        sub_080B00BC(squishy);
}

static void sub_080B00BC(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 3, sub_080AFBFC);
    squishy->base.flags |= 0x40;
}

static void sub_080B00DC(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 2, sub_080B010C);
    squishy->base.flags |= 0x100;
    squishy->base.flags |= 0x40;
    squishy->base.xspeed = 0;
    squishy->base.yspeed = 0;
}

static void sub_080B010C(struct Object2 *squishy)
{
    if (squishy->base.counter > 8)
    {
        squishy->base.yspeed = 0x400;
        squishy->unk83 = 3;
    }
    else
        ++squishy->base.counter;
}

static void sub_080B0134(struct Object2 *squishy)
{
    ObjectSetFunc(squishy, 2, sub_080AFD80);
    squishy->base.xspeed = 0;
    squishy->base.yspeed = 0;
}
