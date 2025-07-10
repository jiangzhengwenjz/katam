#include "batafire.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"

static void sub_080C96EC(struct Object2 *);
static void sub_080C9900(struct Object2 *);
static void sub_080C9D1C(struct Object2 *);
static void sub_080C9E70(struct Object2 *);
static void sub_080CA0A4(struct Object2 *);
static void sub_080CA2D8(struct Object2 *);
static void sub_080CA50C(struct Object2 *);
static void sub_080CA8FC(struct Object2 *);
static void sub_080CAA68(struct Object2 *);
static void sub_080CAEB8(struct Object2 *, u8);
static void sub_080CAF60(struct Object2 *);
static void sub_080CB02C(void);
static void sub_080CB3DC(struct Object2 *);
static void sub_080CB4F4(struct Object2 *);
static void sub_080CB518(struct Object2 *);
static void sub_080CB550(struct Object2 *);
static void sub_080CB5BC(struct Object2 *);
static void sub_080CB628(struct Object2 *);
static void sub_080CB694(struct Object2 *);

const struct Unk_02021590 gUnk_083558E0[] = {
    { 0x2E7,   0, 0 },
    { 0x2E7,   0, 0 },
    { 0x2E7,   4, 0 },
    { 0x2E7,   5, 0 },
    { 0x2E7,   6, 0 },
    { 0x2E7,   7, 0 },
    { 0x2E7,   8, 0 },
    { 0x2E7,   9, 0 },
    { 0x2E7, 0xA, 0 },
    { 0x2E7, 0xB, 0 },
    { 0x2E7, 0xC, 0 },
    { 0x2E7, 0xD, 0 },
    { 0x2E7,   1, 0 },
    { 0x2E7,   2, 0 },
    { 0x2E7,   3, 0 },
};

const struct Unk_02021590 gUnk_0835591C[] = {
    { 0x2E8, 0, 0 },
};

static const struct Unk_08353510 gUnk_08355920[] = {
    {     0,      0,    0,   -8, 0x19, 0 },
    {     0, -0x17A,    0,   -8, 0x19, 0 },
    { -0xD0,  0x100,    8,   -8,    4, 2 },
    { -0xD0,  0x100,    8,   -8,  0xC, 3 },
    { 0x190,  -0x40, 0x20, -0xA, 0x10, 4 },
    { 0x400,      0,    0,    0, 0x20, 5 },
    { 0x280,      0,   -8,    0,    7, 6 },
    {  0x80,  0x180,    0,    8, 0x19, 0 },
    {     0,  -0x18,    0,    8, 0x19, 0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08355998[] = {
    {     0,  0x80,    0,   -8, 0x19, 0 },
    {     0, -0xC6,    0,   -8, 0x19, 0 },
    {     0,  0x80,    0,   -8, 0x19, 0 },
    {     0, -0xCF,    0,   -8, 0x19, 0 },
    { -0xD0, 0x100,    8,   -8,    4, 2 },
    { -0xD0, 0x100,    8,   -8,  0xC, 3 },
    {  0x90, -0x40, 0x18, -0xA, 0x14, 4 },
    { 0x380,     0,    0,    0, 0x27, 5 },
    { 0x200,     0,    0,    0,    8, 5 },
    { 0x1EA,     0,    0,    0,    8, 6 },
    {     0,  0x80,    0,  0xB, 0x19, 0 },
    {     0, -0x80,    0,  0xB, 0x19, 0 },
    {     0,  0x80,    0,  0xC, 0x19, 0 },
    {     0, -0x80,    0,  0xB, 0x19, 0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08355A4C[] = {
    {     0,      0,    0,   -8, 0x19, 0 },
    {     0, -0x17A,    0,   -8, 0x19, 0 },
    { -0xD0,  0x100,    8,   -8,    4, 2 },
    { -0xD0,  0x100,    8,   -8,  0xC, 3 },
    { 0x190,  -0x40, 0x20, -0xA, 0x10, 4 },
    { 0x400,      0,    0,  0xC, 0x20, 5 },
    { 0x280,      0,    0, 0x10,    6, 5 },
    { 0x1E0,      0,   -8, 0x20,    9, 6 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08355AB8[] = {
    {     0,  0x80,    0,   -8, 0x19, 0 },
    {     0, -0xC6,    0,   -8, 0x19, 0 },
    {     0,  0x80,    0,   -8, 0x19, 0 },
    {     0, -0xCF,    0,   -8, 0x19, 0 },
    { -0xD0, 0x100,    8,   -8,    4, 2 },
    { -0xD0, 0x100,    8,   -8,  0xC, 3 },
    {  0x90, -0x40, 0x18, -0xA, 0x14, 4 },
    { 0x380,     0,    0,    8, 0x27, 5 },
    { 0x200,     0,    0, 0x10,    8, 5 },
    { 0x1EA,     0,    0, 0x2C,    8, 6 },
    {     0,     0,    0,    0,    1, 6 },
    { 0 },
};


static const struct Unk_08353510 gUnk_08355B48[] = {
    {  0x80,  0x80, 0, 0, 0x17, 0 },
    { 0x124, -0x80, 0, 0, 0x17, 0 },
    { 0x180,  0x80, 0, 0, 0x17, 0 },
    { 0x100, -0x80, 0, 0, 0x17, 0 },
    {     0,     0, 0, 0,    8, 7 },
    {     0,     0, 0, 0, 0x28, 8 },
    {     0,     0, 0, 0,    8, 9 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08355BA8[] = {
    {     0,     0, 0, 0,    8, 0xB },
    { 0x100,  0x80, 0, 0, 0x17,   0 },
    { 0x180, -0x80, 0, 0, 0x17,   0 },
    { 0x128,  0x80, 0, 0, 0x17,   0 },
    {  0x80, -0x80, 0, 0, 0x17,   0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08355BF0[] = {
    {  0x80, -0x100, 0, 0,    8, 0 },
    { 0x100, -0x100, 0, 0,    8, 0 },
    { 0x200,  -0xD0, 0, 0, 0x10, 0 },
    { 0x330,  -0xA0, 0, 0, 0x10, 0 },
    { 0x330,   0xA0, 0, 0, 0x10, 0 },
    { 0x200,   0xD0, 0, 0, 0x10, 0 },
    { 0x100,  0x100, 0, 0,    8, 0 },
    {  0x80,  0x100, 0, 0,    8, 0 },
    {     0,      0, 0, 0,    1, 0 },
    { 0 },
};

static const s8 gUnk_08355C68[] = {
    -0x10, -0x10,
     0x10,  0x10,
    -0x12,   0xE,
};

static const u8 gUnk_08355C6E[] = { 4, 0xC, 0x12, 8, 0x14, 0x10, 0x18, 8 };

static const u8 gUnk_08355C76[] = { 0, 6, 1, 8, 2, 7, 3, 5, 7, 2, 3, 6, 0, 5, 1, 8 };

static const s16 gUnk_08355C86[] = {
    0x200, 0x200,    -2, -0x20,
    0x100,  0x80,    -2, -0x10,
    0x280, 0x100,    -2, -0x20,
    0x200, 0x280,     2, -0x30,
    0x400, 0x140, -0x12, -0x20,
};

const struct Unk_02021590 gUnk_08355CB0[] = {
    { 0x2E7, 0x10,  2 },
    { 0x2E7,    0,  2 },
    { 0x2E7, 0x10,  2 },
    { 0x2E7,    0,  2 },
    { 0x2E7, 0x10,  2 },
    { 0x2E7,    0,  2 },
    { 0x2E7, 0x10,  2 },
    { 0x2E7,    0,  2 },
    { 0x2E7, 0x10,  2 },
    { 0x2E7,    0,  2 },
    { 0x2E7, 0x10,  2 },
    { 0x2E7,    0,  2 },
    { 0x2E7, 0x10,  2 },
    { 0x2E7,    0,  2 },
    { 0x2E7,    0, -1 },
};

const struct Unk_02021590 gUnk_08355CEC[] = {
    { 0x2E7, 0x10, 2 },
    { 0x2E7,    0, 2 },
    { 0x2E7,    0, 0 },
};

void *CreateBatafire(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *batafire = TaskGetStructPtr(t);

    InitObject(batafire, template, a2);
    batafire->base.unkC |= 1;
    batafire->base.flags |= 0x2000000;
    batafire->base.flags |= 0x200;
    batafire->base.flags |= 0x200000;
    batafire->base.flags |= 0x40;
    batafire->base.flags |= 0x100;
    batafire->base.unk5C &= ~7;
    batafire->base.unk5C |= 3;
    batafire->base.unk5C |= 0xA0;
    batafire->base.unk68 |= 0x100;
    sub_0803E2B0(&batafire->base, -0x16, -0xE, 0xE, 0x10);
    sub_0803E308(&batafire->base, -0xC, -0xA, 0xC, 0x14);
    ObjectInitSprite(batafire);
    batafire->base.sprite.unk14 = 0x6C0;
    batafire->unk9E = 0;
    batafire->unk7C = sub_080CB3DC;
    sub_080CB4F4(batafire);
    sub_080CAF60(batafire);
    return batafire;
}

static void sub_080C939C(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    batafire->kirby3 = sub_0803D368(&batafire->base);
    if (batafire->base.x > batafire->kirby3->base.base.base.x)
        batafire->base.flags |= 1;
    else
        batafire->base.flags &= ~1;
    if (!(batafire->kirby3->base.base.base.unkC & 0x8000)
        && batafire->base.roomId == batafire->kirby3->base.base.base.roomId)
    {

        if (Macro_08039430_1(&batafire->kirby3->base.base.base, batafire))
        {
            Macro_081003EC(batafire, &batafire->kirby3->base.base.base);
            if (batafire->kirby3->base.base.base.x > batafire->base.x)
                batafire->unk9E = 1;
            else
                batafire->unk9E = 0;
            batafire->base.flags &= ~0x200;
            Macro_08100F18(batafire);
            batafire->unk78 = sub_080CB518;
        }
    }
}

void sub_080C95D4(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 0, sub_080C96EC);
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    batafire->base.xspeed = 0;
    batafire->base.yspeed = 0;
    batafire->unk9E = 0;
    batafire->base.flags &= ~2;
    if (batafire->base.x > batafire->kirby3->base.base.base.x)
        batafire->base.flags |= 1;
    else
        batafire->base.flags &= ~1;
    if (!RandLessThan3())
    {
        if (Rand16() & 1)
        {
            batafire->base.flags |= 1;
            if (Rand16() & 1)
                sub_080C9D1C(batafire);
            else
                sub_080CB628(batafire);
        }
        else
            sub_080CB550(batafire);
    }
}

static void sub_080C96EC(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (batafire->base.x > batafire->kirby3->base.base.base.x)
        batafire->base.flags |= 1;
    else
        batafire->base.flags &= ~1;
    ++batafire->base.counter;
    if (batafire->base.flags & 2)
    {
        batafire->base.counter = 0;
        ++batafire->unk9E;
        if (Rand16() & 1
            || batafire->subtype
            || batafire->unk80 <= gUnk_08351530[3][gUnk_0203AD30 - 1] >> 1
            || batafire->unk9E > 1)
        {
            if (batafire->unk85 < 4)
            {
                if (Rand16() & 1)
                {
                    batafire->base.flags |= 1;
                    if (Rand16() & 1)
                        sub_080C9D1C(batafire);
                    else
                        sub_080CB628(batafire);
                    return;
                }
            }
            else
            {
                batafire->base.flags |= 1;
                sub_080CB628(batafire);
                return;
            }
            sub_080CB550(batafire);
        }
    }
}

static void sub_080C97F0(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 1, sub_080C9900);
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    batafire->base.xspeed = 0;
    batafire->base.yspeed = 0;
    if (batafire->base.x > batafire->kirby3->base.base.base.x)
        batafire->base.flags |= 1;
    else
        batafire->base.flags &= ~1;
    if (!RandLessThan3())
    {
        if (Rand16() & 1)
        {
            batafire->base.flags &= ~1;
            if (Rand16() & 1)
                sub_080C9D1C(batafire);
            else
                sub_080CB628(batafire);
        }
        else
            sub_080CB5BC(batafire);
    }
}

static void sub_080C9900(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (batafire->base.x > batafire->kirby3->base.base.base.x)
        batafire->base.flags |= 1;
    else
        batafire->base.flags &= ~1;
    if (++batafire->base.counter > 0x31)
    {
        batafire->base.counter = 0;
        ++batafire->unk9E;
        if (Rand16() & 1
            || batafire->subtype
            || batafire->unk9E > 1
            || batafire->unk80 <= gUnk_08351530[3][gUnk_0203AD30 - 1] >> 1)
        {
            if (batafire->unk85 < 4)
            {
                if (Rand16() & 1)
                {
                    batafire->base.flags &= ~1;
                    if (Rand16() & 1)
                        sub_080C9D1C(batafire);
                    else
                        sub_080CB628(batafire);
                    return;
                }
            }
            else
            {
                batafire->base.flags &= ~1;
                sub_080CB628(batafire);
                return;
            }
            sub_080CB5BC(batafire);
        }
    }
}

static void sub_080C9A08(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    batafire->base.flags |= 1;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355BF0[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355BF0[batafire->unk9F].unk8;
        if (gUnk_08355BF0[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355BF0[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355BF0[batafire->unk9F].unk0 != gUnk_08355BF0[batafire->unk9F - 1].unk0)
            {
                batafire->base.xspeed = gUnk_08355BF0[batafire->unk9F].unk0;
                if (batafire->base.flags & 1)
                    batafire->base.xspeed = -batafire->base.xspeed;
            }
            if (gUnk_08355BF0[batafire->unk9F].unk2 != gUnk_08355BF0[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355BF0[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355BF0[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355BF0[batafire->unk9F].unk0;
            if (batafire->base.flags & 1)
                batafire->base.xspeed = -batafire->base.xspeed;
        }
    }
    if (batafire->base.flags & 1)
        batafire->base.xspeed -= gUnk_08355BF0[batafire->unk9F].unk4;
    else
        batafire->base.xspeed += gUnk_08355BF0[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355BF0[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355BF0[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
        sub_080C97F0(batafire);
    else
    {
        if (batafire->base.x > batafire->kirby3->base.base.base.x)
            batafire->base.flags |= 1;
        else
            batafire->base.flags &= ~1;
    }
}

static void sub_080C9BB4(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355BF0[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355BF0[batafire->unk9F].unk8;
        if (gUnk_08355BF0[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355BF0[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355BF0[batafire->unk9F].unk0 != gUnk_08355BF0[batafire->unk9F - 1].unk0)
                batafire->base.xspeed = gUnk_08355BF0[batafire->unk9F].unk0;
            if (gUnk_08355BF0[batafire->unk9F].unk2 != gUnk_08355BF0[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355BF0[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355BF0[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355BF0[batafire->unk9F].unk0;
        }
    }
    batafire->base.xspeed += gUnk_08355BF0[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355BF0[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355BF0[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
        sub_080C95D4(batafire);
    else
    {
        if (batafire->base.x > batafire->kirby3->base.base.base.x)
            batafire->base.flags |= 1;
        else
            batafire->base.flags &= ~1;
    }
}

static void sub_080C9D1C(struct Object2 *batafire)
{
    u16 r = 0;

    if (Rand16() & 1)
    {
        ObjectSetFunc(batafire, 0, sub_080C9E70);
        if (batafire->unk80 <= gUnk_08351530[3][gUnk_0203AD30 - 1] >> 1)
            r = Rand16() & 1;
        if (batafire->subtype || r)
            batafire->unk78 = sub_080CA0A4;
    }
    else
    {
        ObjectSetFunc(batafire, 0, sub_080CA2D8);
        if (batafire->unk80 <= gUnk_08351530[3][gUnk_0203AD30 - 1] >> 1)
        {
            r = !(Rand16() & 3);
        }
        if (batafire->subtype || r)
            batafire->unk78 = sub_080CA50C;
    }
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    ++batafire->unk85;
}

static void sub_080C9E70(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355998[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355998[batafire->unk9F].unk8;
        if (gUnk_08355998[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355998[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355998[batafire->unk9F].unk0 != gUnk_08355998[batafire->unk9F - 1].unk0)
            {
                batafire->base.xspeed = gUnk_08355998[batafire->unk9F].unk0;
                if (batafire->base.flags & 1)
                    batafire->base.xspeed = -batafire->base.xspeed;
            }
            if (gUnk_08355998[batafire->unk9F].unk2 != gUnk_08355998[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355998[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355998[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355998[batafire->unk9F].unk0;
            if (batafire->base.flags & 1)
                batafire->base.xspeed = -batafire->base.xspeed;
        }
    }
    if (batafire->base.flags & 1)
        batafire->base.xspeed -= gUnk_08355998[batafire->unk9F].unk4;
    else
        batafire->base.xspeed += gUnk_08355998[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355998[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355998[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
    {
        if (batafire->base.flags & 1)
            sub_080C97F0(batafire);
        else
            sub_080C95D4(batafire);
    }
    else
    {
        if (++batafire->base.counter == 0x74)
            PlaySfx(&batafire->base, SE_08D59094);
    }
}

static void sub_080CA0A4(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355920[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355920[batafire->unk9F].unk8;
        if (gUnk_08355920[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355920[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355920[batafire->unk9F].unk0 != gUnk_08355920[batafire->unk9F - 1].unk0)
            {
                batafire->base.xspeed = gUnk_08355920[batafire->unk9F].unk0;
                if (batafire->base.flags & 1)
                    batafire->base.xspeed = -batafire->base.xspeed;
            }
            if (gUnk_08355920[batafire->unk9F].unk2 != gUnk_08355920[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355920[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355920[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355920[batafire->unk9F].unk0;
            if (batafire->base.flags & 1)
                batafire->base.xspeed = -batafire->base.xspeed;
        }
    }
    if (batafire->base.flags & 1)
        batafire->base.xspeed -= gUnk_08355920[batafire->unk9F].unk4;
    else
        batafire->base.xspeed += gUnk_08355920[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355920[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355920[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
    {
        if (batafire->base.flags & 1)
            sub_080C97F0(batafire);
        else
            sub_080C95D4(batafire);
    }
    else
    {
        if (++batafire->base.counter == 0x42)
            PlaySfx(&batafire->base, SE_08D59094);
    }
}

static void sub_080CA2D8(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355AB8[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355AB8[batafire->unk9F].unk8;
        if (gUnk_08355AB8[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355AB8[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355AB8[batafire->unk9F].unk0 != gUnk_08355AB8[batafire->unk9F - 1].unk0)
            {
                batafire->base.xspeed = gUnk_08355AB8[batafire->unk9F].unk0;
                if (batafire->base.flags & 1)
                    batafire->base.xspeed = -batafire->base.xspeed;
            }
            if (gUnk_08355AB8[batafire->unk9F].unk2 != gUnk_08355AB8[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355AB8[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355AB8[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355AB8[batafire->unk9F].unk0;
            if (batafire->base.flags & 1)
                batafire->base.xspeed = -batafire->base.xspeed;
        }
    }
    if (batafire->base.flags & 1)
        batafire->base.xspeed -= gUnk_08355AB8[batafire->unk9F].unk4;
    else
        batafire->base.xspeed += gUnk_08355AB8[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355AB8[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355AB8[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
    {
        if (batafire->base.flags & 1)
            sub_080C97F0(batafire);
        else
            sub_080C95D4(batafire);
    }
    else
    {
        if (++batafire->base.counter == 0x74)
            PlaySfx(&batafire->base, SE_08D59094);
    }
}

static void sub_080CA50C(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355A4C[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355A4C[batafire->unk9F].unk8;
        if (gUnk_08355A4C[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355A4C[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355A4C[batafire->unk9F].unk0 != gUnk_08355A4C[batafire->unk9F - 1].unk0)
            {
                batafire->base.xspeed = gUnk_08355A4C[batafire->unk9F].unk0;
                if (batafire->base.flags & 1)
                    batafire->base.xspeed = -batafire->base.xspeed;
            }
            if (gUnk_08355A4C[batafire->unk9F].unk2 != gUnk_08355A4C[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355A4C[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355A4C[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355A4C[batafire->unk9F].unk0;
            if (batafire->base.flags & 1)
                batafire->base.xspeed = -batafire->base.xspeed;
        }
    }
    if (batafire->base.flags & 1)
        batafire->base.xspeed -= gUnk_08355A4C[batafire->unk9F].unk4;
    else
        batafire->base.xspeed += gUnk_08355A4C[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355A4C[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355A4C[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
    {
        if (batafire->base.flags & 1)
            sub_080C97F0(batafire);
        else
            sub_080C95D4(batafire);
    }
    else
    {
        if (++batafire->base.counter == 0x42)
            PlaySfx(&batafire->base, SE_08D59094);
    }
}

static void sub_080CA740(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355B48[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355B48[batafire->unk9F].unk8;
        if (gUnk_08355B48[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355B48[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355B48[batafire->unk9F].unk0 != gUnk_08355B48[batafire->unk9F - 1].unk0)
            {
                batafire->base.xspeed = gUnk_08355B48[batafire->unk9F].unk0;
                if (batafire->base.flags & 1)
                    batafire->base.xspeed = -batafire->base.xspeed;
            }
            if (gUnk_08355B48[batafire->unk9F].unk2 != gUnk_08355B48[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355B48[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355B48[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355B48[batafire->unk9F].unk0;
            if (batafire->base.flags & 1)
                batafire->base.xspeed = -batafire->base.xspeed;
        }
    }
    if (batafire->base.flags & 1)
        batafire->base.xspeed -= gUnk_08355B48[batafire->unk9F].unk4;
    else
        batafire->base.xspeed += gUnk_08355B48[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355B48[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355B48[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
    {
        batafire->unk85 = 0;
        sub_080CA8FC(batafire);
    }
    if (batafire->unk83 == 9)
    {
        if (!batafire->base.counter)
        {
            sub_080CAEB8(batafire, 4);
            sub_080CAEB8(batafire, 9);
        }
        batafire->base.counter = 1;
    }
}

static void sub_080CA8FC(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 0xA, sub_080CAA68);
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    batafire->unk85 = 0x10;
    batafire->unk9E = Rand16() & 0xF;
    if (batafire->subtype
        || (batafire->unk80 <= gUnk_08351530[3][gUnk_0203AD30 - 1] >> 1 && Rand16() & 1))
        batafire->base.counter = 0x8C;
    else
        batafire->base.counter = 0x5A;
    PlaySfx(&batafire->base, SE_08D59094);
}

static void sub_080CAA68(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (batafire->base.counter > 0x10 && !--batafire->unk85)
    {
        sub_080CAEB8(batafire, gUnk_08355C76[batafire->unk9E]);
        ++batafire->unk9E;
        if ((Rand16() & 3) == 3)
            ++batafire->unk9E;
        batafire->unk9E &= 0xF;
        batafire->unk85 = gUnk_08355C6E[Rand16() & 7];
    }
    if (!--batafire->base.counter)
        sub_080CB694(batafire);
}

static void sub_080CAB14(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (!batafire->unk9E)
    {
        ++batafire->unk9F;
        if (!gUnk_08355BA8[batafire->unk9F].unk8)
            --batafire->unk9F;
        batafire->unk9E = gUnk_08355BA8[batafire->unk9F].unk8;
        if (gUnk_08355BA8[batafire->unk9F].unk9 != 0xFF)
            batafire->unk83 = gUnk_08355BA8[batafire->unk9F].unk9;
        if (batafire->unk9F)
        {
            if (gUnk_08355BA8[batafire->unk9F].unk0 != gUnk_08355BA8[batafire->unk9F - 1].unk0)
            {
                batafire->base.xspeed = gUnk_08355BA8[batafire->unk9F].unk0;
                if (batafire->base.flags & 1)
                    batafire->base.xspeed = -batafire->base.xspeed;
            }
            if (gUnk_08355BA8[batafire->unk9F].unk2 != gUnk_08355BA8[batafire->unk9F - 1].unk2)
                batafire->base.yspeed = gUnk_08355BA8[batafire->unk9F].unk2;
        }
        else
        {
            batafire->base.yspeed = gUnk_08355BA8[batafire->unk9F].unk2;
            batafire->base.xspeed = gUnk_08355BA8[batafire->unk9F].unk0;
            if (batafire->base.flags & 1)
                batafire->base.xspeed = -batafire->base.xspeed;
        }
    }
    if (batafire->base.flags & 1)
        batafire->base.xspeed -= gUnk_08355BA8[batafire->unk9F].unk4;
    else
        batafire->base.xspeed += gUnk_08355BA8[batafire->unk9F].unk4;
    batafire->base.yspeed += gUnk_08355BA8[batafire->unk9F].unk6;
    --batafire->unk9E;
    if (!gUnk_08355BA8[(u8)(batafire->unk9F + 1)].unk8 && !batafire->unk9E)
    {
        batafire->unk85 = 0;
        if (batafire->base.flags & 1)
            sub_080C97F0(batafire);
        else
            sub_080C95D4(batafire);
    }
}

void *CreateBatafireFireball(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *fireball = TaskGetStructPtr(t);

    InitObject(fireball, template, a2);
    fireball->base.flags |= 0x140;
    fireball->base.flags |= 0x4000;
    fireball->base.flags |= 0x10000;
    fireball->base.unk68 |= 0x100;
    fireball->base.unkC |= 2;
    fireball->base.unk5C |= 0x80000;
    fireball->unk85 = template->subtype1;
    if (fireball->unk85 > 4)
    {
        fireball->base.flags |= 1;
        fireball->unk85 -= 5;
    }
    fireball->unk9E = 0;
    fireball->unk7C = sub_0809F840;
    sub_0803E2B0(&fireball->base, -5, -3, 5, 8);
    sub_0803E308(&fireball->base, -6, -4, 6, 0xA);
    ObjectInitSprite(fireball);
    gUnk_08351648[fireball->type].unk10(fireball);
    return fireball;
}

static void sub_080CADB8(struct Object2 *fireball)
{
    fireball->base.flags |= 4;
    if (fireball->base.flags & 1)
    {
        fireball->base.xspeed -= gUnk_08355C86[4 * fireball->unk85 + 2];
        if (fireball->base.xspeed < -0x500)
            fireball->base.xspeed = -0x500;
        else if (fireball->base.xspeed > 0x500)
            fireball->base.xspeed = 0x500;
    }
    else
    {
        fireball->base.xspeed += gUnk_08355C86[4 * fireball->unk85 + 2];
        if (fireball->base.xspeed > 0x500)
            fireball->base.xspeed = 0x500;
        else if (fireball->base.xspeed < -0x500)
            fireball->base.xspeed = -0x500;
    }
    if (gUnk_08355C86[4 * fireball->unk85 + 3] > 0)
    {
        fireball->base.yspeed += gUnk_08355C86[4 * fireball->unk85 + 3];
        if (fireball->base.yspeed > 0x500)
            fireball->base.yspeed = 0x500;
    }
    else
    {
        fireball->base.yspeed += gUnk_08355C86[4 * fireball->unk85 + 3];
        if (fireball->base.yspeed < -0x500)
            fireball->base.yspeed = -0x500;
    }
    if (fireball->base.unk58 & 0x200)
    {
        sub_0809DA30(fireball);
        fireball->base.flags |= 0x1000;
    }
}

static void sub_080CAEB8(struct Object2 *batafire, u8 a2)
{
    s32 x = batafire->base.x >> 8;
    s32 y = batafire->base.y >> 8;
    struct Object2 *fireball = CreateObjTemplateAndObj(batafire->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BATAFIRE_FIREBALL,
        a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    fireball->base.parent = batafire;
}

static void sub_080CAF60(struct Object2 *batafire)
{
    struct Task *t = TaskCreate(sub_080CB02C, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = batafire->base.x;
    obj4->y = batafire->base.y;
    obj4->parent = batafire;
    obj4->roomId = batafire->base.roomId;
    sub_080709F8(obj4, &obj4->sprite, 8, 0x2E7, 0xE, 0x19);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x2E7, 1);
}

static void sub_080CB02C(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask);
    struct Object4 *obj4 = tmp;
    struct Object2 *batafire = obj4->parent, *batafire2;
    struct Sprite sprite;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (batafire->base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 8, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x2E7, !obj4->sprite.palId);
        batafire2 = obj4->parent;
        if (batafire2)
        {
            if (batafire2->base.unk0 && batafire2->base.flags & 0x1000)
            {
                obj4->parent = NULL;
                batafire2 = NULL;
            }
            if (!batafire2)
                goto label;
            if (Macro_0810B1F4(&batafire2->base) && !(obj4->flags & 0x2000))
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
        Macro_0809E55C(obj4);
        if (obj4->flags & 2)
        {
            ++obj4->unk4;
            obj4->flags |= 4;
            if (obj4->unk4 > 2)
                obj4->unk4 = 0;
        }
        if (batafire->base.flags & 1)
            obj4->flags &= ~1;
        else
            obj4->flags |= 1;
        if (batafire->unk83 > 2 && batafire->unk83 < 7)
        {
            obj4->sprite.animId = 0x2E7;
            obj4->sprite.variant = 0xF;
        }
        else
        {
            obj4->sprite.animId = 0x2E7;
            obj4->sprite.variant = 0xE;
        }
        if (batafire->base.flags & 1)
            obj4->x = batafire->base.x + (gUnk_08355C68[2 * obj4->unk4] * 0x100);
        else
            obj4->x = batafire->base.x - (gUnk_08355C68[2 * obj4->unk4] * 0x100);
        obj4->y = batafire->base.y + (gUnk_08355C68[2 * obj4->unk4 + 1] * 0x100);
        if (!(obj4->flags & 0x800))
        {
            obj4->x += obj4->unk3C;
            obj4->y -= obj4->unk3E;
        }
        sub_0806FAC8(obj4);
    }
}

static void sub_080CB3DC(struct Object2 *batafire)
{
    if (!Macro_0810B1F4(&batafire->base)
        && !(batafire->base.flags & 0x200)
        && batafire->unk83 < 2
        && batafire->base.unk1 == 5)
        PlaySfx(&batafire->base, SE_08D59F20);
}

void sub_080CB4A0(struct Object2 *fireball)
{
    ObjectSetFunc(fireball, 0, sub_080CADB8);
    fireball->base.xspeed = gUnk_08355C86[4 * fireball->unk85];
    if (fireball->base.flags & 1)
        fireball->base.xspeed = -fireball->base.xspeed;
    fireball->base.yspeed = gUnk_08355C86[4 * fireball->unk85 + 1];
}

static void sub_080CB4F4(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 0, sub_080C939C);
    batafire->base.xspeed = 0;
    batafire->base.yspeed = 0;
    batafire->base.counter = 0;
}

static void sub_080CB518(struct Object2 *batafire)
{
    batafire->base.flags |= 4;
    if (++batafire->base.counter > 0x3C)
    {
        if (batafire->unk9E)
            sub_080C97F0(batafire);
        else
            sub_080C95D4(batafire);
    }
}

static void sub_080CB550(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 5, sub_080C9A08);
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    ++batafire->unk85;
}

static void sub_080CB5BC(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 5, sub_080C9BB4);
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    ++batafire->unk85;
}

static void sub_080CB628(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 0, sub_080CA740);
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    batafire->unk85 = 0;
    batafire->base.counter = 0;
}

static void sub_080CB694(struct Object2 *batafire)
{
    ObjectSetFunc(batafire, 0, sub_080CAB14);
    if (batafire->base.x & 0x80)
        batafire->base.x = (batafire->base.x & ~0xFF) + 0x100;
    else
        batafire->base.x = batafire->base.x & ~0xFF;
    if (batafire->base.y & 0x80)
        batafire->base.y = (batafire->base.y & ~0xFF) + 0x100;
    else
        batafire->base.y = batafire->base.y & ~0xFF;
    batafire->unk85 = 0;
}
