#include "object.h"
#include "bombar.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"

static void sub_080D850C(struct Object2 *);
static void sub_080D85BC(struct Object2 *);
static void sub_080D8E6C(struct Object2 *);
static void sub_080D8F34(struct Object2 *);
static void sub_080D923C(struct Object2 *);
static void sub_080D92F8(struct Object2 *);
static void sub_080D95A4(struct Object2 *);
static void sub_080D9764(struct Object2 *, u8);
static void sub_080D9A04(struct Object2 *);
static void sub_080D9E34(struct Object2 *);
static void sub_080D9F54(struct Object2 *);
static void sub_080D9F84(struct Object2 *);
static void sub_080D9FC8(struct Object2 *);
static void sub_080DA00C(struct Object2 *);
static void sub_080DA050(struct Object2 *);
static void sub_080DA070(struct Object2 *);
static void sub_080DA09C(struct Object2 *);
static void sub_080DA0BC(struct Object2 *);

const struct Unk_02021590 gUnk_08356220[] = {
    { 0x316,    0, 0 },
    { 0x316,    1, 0 },
    { 0x316,    2, 0 },
    { 0x316,    3, 0 },
    { 0x316, 0x14, 0 },
    { 0x316,    4, 0 },
    { 0x316,    5, 0 },
    { 0x316,    6, 0 },
    { 0x316,    6, 0 },
    { 0x316,    7, 0 },
    { 0x316,    8, 0 },
};

const struct Unk_02021590 gUnk_0835624C[] = {
    { 0x316, 0xA, 0 },
    { 0x316, 0xA, 0 },
};

const struct Unk_02021590 gUnk_08356254[] = {
    { 0x316,  0xB, 0 },
    { 0x316,  0xC, 0 },
    { 0x316,  0xD, 0 },
    { 0x316,  0xE, 0 },
    { 0x316,  0xF, 0 },
    { 0x316, 0x10, 0 },
    { 0x316, 0x11, 0 },
    { 0x316, 0x12, 0 },
    { 0x316,  0xB, 0 },
};

static const struct Unk_08353510 gUnk_08356278[] = {
    { 0x80,  -0x200, 0, 0, 0x10, 2 },
    { 0x1A0, -0x180, 0, 0, 0x10, 2 },
    { 0x280, -0x120, 0, 0, 0x10, 0 },
    { 0x280,   0xC0, 0, 0, 0x10, 0 },
    { 0x1A0,  0x200, 0, 0, 0x10, 1 },
    { 0x80,   0x260, 0, 0, 0x10, 1 },
    { 0,          0, 0, 0,    1, 0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_083562D8[] = {
    { 0xC0,  -0x380, 0, 0, 0xC, 2 },
    { 0x270, -0x280, 0, 0, 0xC, 2 },
    { 0x3C0, -0x200, 0, 0, 0xC, 0 },
    { 0x3C0,  0x120, 0, 0, 0xC, 0 },
    { 0x270,  0x310, 0, 0, 0xC, 1 },
    { 0xC0,   0x380, 0, 0, 0xC, 1 },
    { 0,          0, 0, 0,   1, 0 },
    { 0 },
};

const struct Unk_02021590 gUnk_08356338[] = {
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316,    0, -1 },
};

const struct Unk_02021590 gUnk_08356374[] = {
    { 0x316, 0x13, 2 },
    { 0x316,    0, 2 },
    { 0x316,    0, 0 },
};

static const s16 gUnk_08356380[] = {
     0x20,  0x20,
     0x40,  0x40,
    -0x20, -0x20,
    -0x40, -0x40,
    -0x20, -0x20,
    -0x40, -0x40,
     0x20,  0x20,
     0x40,  0x40, 
};

static const s8 gUnk_083563A0[] = {
     3,  2,
    -3,  2,
     2, -2,
    -2, -2,
     1,  1,
    -1,  1,
     1, -1,
    -1, -1,
};

void *CreateBombar(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *bombar = tmp;

    InitObject(bombar, template, a2);
    bombar->base.flags |= 0x2000000;
    bombar->base.unkC |= 4;
    bombar->base.unkC |= 1;
    bombar->base.flags |= 0x200;
    bombar->base.flags |= 0x200000;
    bombar->base.unk5C &= ~7;
    bombar->base.unk5C |= 3;
    bombar->base.unk5C |= 0xA0;
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;
    sub_0803E2B0(&bombar->base, -0x10, -0x10, 0x14, 0xC);
    sub_0803E308(&bombar->base, -8, 8, 8, 0x12);
    ObjectInitSprite(bombar);
    bombar->base.sprite.unk14 = 0x6C0;
    sub_080D9F54(bombar);
    bombar->unk9E = 0;
    bombar->unk7C = 0;
    return bombar;
}

static void sub_080D7A6C(struct Object2 *bombar)
{
    bombar->kirby3 = sub_0803D368(&bombar->base);
    bombar->base.flags |= 4;
    if (!(bombar->kirby3->base.base.base.unkC & 0x8000)
        && bombar->base.roomId == bombar->kirby3->base.base.base.roomId
        && sub_08039430(&bombar->kirby3->base.base,
            bombar->base.x, bombar->base.y,
            bombar->object->unk1A, bombar->object->unk1C,
            bombar->object->unk1E, bombar->object->unk20))
    {
        Macro_081003EC(bombar, &bombar->kirby3->base.base.base);
        bombar->base.flags &= ~0x200;
        sub_080D9E94(bombar);
        bombar->base.counter = 0x5A;
        Macro_08100F18(bombar);
    }
}

static void sub_080D7C5C(struct Object2 *bombar)
{
    if (bombar->unk85 > 1)
    {
        if (Rand16() & 1)
            sub_080DA070(bombar);
        else
            sub_080D923C(bombar);
        bombar->unk85 = 0;
    }
    else
    {
        ++bombar->unk85;
        if (Rand16() & 3)
        {
            if (Rand16() & 1)
                sub_080DA00C(bombar);
            else if (Rand16() & 1)
                sub_080D9F84(bombar);
            else
                sub_080D9FC8(bombar);
        }
        else
        {
            if (Rand16() & 1)
                sub_080DA070(bombar);
            else
                sub_080D923C(bombar);
            bombar->unk85 = 0;
        }
    }
}

static void sub_080D7D28(struct Object2 *bombar)
{
    bombar->base.flags |= 4;
    if (bombar->base.xspeed < 0)
    {
        bombar->base.xspeed += 0x20;
        if (bombar->base.xspeed > 0)
            bombar->base.xspeed = 0;
    }
    else
    {
        bombar->base.xspeed -= 0x20;
        if (bombar->base.xspeed < 0)
            bombar->base.xspeed = 0;
    }
    if (bombar->base.yspeed < 0)
    {
        bombar->base.yspeed += 0x20;
        if (bombar->base.yspeed > 0)
            bombar->base.yspeed = 0;
    }
    else
    {
        bombar->base.yspeed -= 0x20;
        if (bombar->base.yspeed < 0)
            bombar->base.yspeed = 0;
    }
    if (!--bombar->base.counter)
        sub_080D7C5C(bombar);
    else
    {
        bombar->base.yspeed += gUnk_08356380[(bombar->unk9E >> 1) & 0xF];
        ++bombar->unk9E;
    }
}

static void sub_080D7DCC(struct Object2 *bombar)
{
    s32 lhs, rhs;

    bombar->base.flags |= 4;
    ++bombar->unk9E;
    lhs = bombar->base.y & ~0x7FF;
    rhs = (bombar->unkA2 * 0x100) & ~0x7FF;
    if (lhs > rhs)
    {
        bombar->base.yspeed += 0x10;
        if (bombar->base.yspeed > 0x140)
            bombar->base.yspeed = 0x140;
    }
    else if (lhs < rhs)
    {
        bombar->base.yspeed -= 0x10;
        if (bombar->base.yspeed < -0x140)
            bombar->base.yspeed = -0x140;
    }
    else
    {
        if (bombar->base.yspeed < 0)
        {
            bombar->base.yspeed += 0x60;
            if (bombar->base.yspeed > 0)
                bombar->base.yspeed = 0;
        }
        else
        {
            bombar->base.yspeed -= 0x60;
            if (bombar->base.yspeed < 0)
                bombar->base.yspeed = 0;
        }
    }
    lhs = bombar->base.x & ~0x7FF;
    rhs = (bombar->unkA0 * 0x100) & ~0x7FF;
    if (lhs < rhs)
    {
        bombar->base.flags &= ~1;
        bombar->base.xspeed += 0x10;
        if (bombar->base.xspeed > 0x140)
            bombar->base.xspeed = 0x140;
        else if (bombar->base.xspeed < -0x140)
            bombar->base.xspeed = -0x140;
    }
    else if (lhs > rhs)
    {
        bombar->base.flags |= 1;
        if (bombar->base.flags & 1)
        {
            bombar->base.xspeed -= 0x10;
            if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
            else if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
        }
        else
        {
            bombar->base.xspeed += 0x10;
            if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
            else if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
        }
    }
    else
    {
        if (bombar->base.xspeed < 0)
        {
            bombar->base.xspeed += 0x60;
            if (bombar->base.xspeed > 0)
                bombar->base.xspeed = 0;
        }
        else
        {
            bombar->base.xspeed -= 0x60;
            if (bombar->base.xspeed < 0)
                bombar->base.xspeed = 0;
        }
    }
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;
    if (bombar->base.yspeed >= 0x20)
        bombar->unk83 = 1;
    if (bombar->base.yspeed <= -0x20)
        bombar->unk83 = 2;
    if (bombar->base.yspeed >= -0x10 && bombar->base.yspeed <= 0x10)
        bombar->unk83 = 0;
    if (abs(bombar->unkA0 - (bombar->base.x >> 8)) < 0x10
        && abs(bombar->unkA2 - (bombar->base.y >> 8)) < 0x10)
        sub_080D7C5C(bombar);
    else
    {
        bombar->base.yspeed += gUnk_08356380[(bombar->base.counter >> 1) & 0xF];
        ++bombar->base.counter;
    }
}

static void sub_080D7FF0(struct Object2 *bombar)
{
    s32 lhs, rhs;

    bombar->base.flags |= 4;
    if (bombar->subtype)
    {
        ++bombar->unk9E;
        lhs = bombar->base.y & ~0x7FF;
        rhs = (bombar->unkA2 * 0x100) & ~0x7FF;
        if (lhs > rhs)
        {
            bombar->base.yspeed += 0x30;
            if (bombar->base.yspeed > 0x1C0)
                bombar->base.yspeed = 0x1C0;
        }
        else if (lhs < rhs)
        {
            bombar->base.yspeed -= 0x30;
            if (bombar->base.yspeed < -0x1C0)
                bombar->base.yspeed = -0x1C0;
        }
        else
        {
            if (bombar->base.yspeed < 0)
            {
                bombar->base.yspeed += 0x60;
                if (bombar->base.yspeed > 0)
                    bombar->base.yspeed = 0;
            }
            else
            {
                bombar->base.yspeed -= 0x60;
                if (bombar->base.yspeed < 0)
                    bombar->base.yspeed = 0;
            }
        }
        lhs = bombar->base.x & ~0x7FF;
        rhs = (bombar->unkA0 * 0x100) & ~0x7FF;
        if (lhs < rhs)
        {
            bombar->base.flags &= ~1;
            bombar->base.xspeed += 0x30;
            if (bombar->base.xspeed > 0x1C0)
                bombar->base.xspeed = 0x1C0;
            else if (bombar->base.xspeed < -0x1C0)
                bombar->base.xspeed = -0x1C0;
        }
        else if (lhs > rhs)
        {
            bombar->base.flags |= 1;
            if (bombar->base.flags & 1)
            {
                bombar->base.xspeed -= 0x30;
                if (bombar->base.xspeed < -0x1C0)
                    bombar->base.xspeed = -0x1C0;
                else if (bombar->base.xspeed > 0x1C0)
                    bombar->base.xspeed = 0x1C0;
            }
            else
            {
                bombar->base.xspeed += 0x30;
                if (bombar->base.xspeed > 0x1C0)
                    bombar->base.xspeed = 0x1C0;
                else if (bombar->base.xspeed < -0x1C0)
                    bombar->base.xspeed = -0x1C0;
            }
        }
        else
        {
            if (bombar->base.xspeed < 0)
            {
                bombar->base.xspeed += 0x60;
                if (bombar->base.xspeed > 0)
                    bombar->base.xspeed = 0;
            }
            else
            {
                bombar->base.xspeed -= 0x60;
                if (bombar->base.xspeed < 0)
                    bombar->base.xspeed = 0;
            }
        }
    }
    else
    {
        ++bombar->unk9E;
        lhs = bombar->base.y & ~0x7FF;
        rhs = (bombar->unkA2 * 0x100) & ~0x7FF;
        if (lhs > rhs)
        {
            bombar->base.yspeed += 0x10;
            if (bombar->base.yspeed > 0x140)
                bombar->base.yspeed = 0x140;
        }
        else if (lhs < rhs)
        {
            bombar->base.yspeed -= 0x10;
            if (bombar->base.yspeed < -0x140)
                bombar->base.yspeed = -0x140;
        }
        else
        {
            if (bombar->base.yspeed < 0)
            {
                bombar->base.yspeed += 0x60;
                if (bombar->base.yspeed > 0)
                    bombar->base.yspeed = 0;
            }
            else
            {
                bombar->base.yspeed -= 0x60;
                if (bombar->base.yspeed < 0)
                    bombar->base.yspeed = 0;
            }
        }
        lhs = bombar->base.x & ~0x7FF;
        rhs = (bombar->unkA0 * 0x100) & ~0x7FF;
        if (lhs < rhs)
        {
            bombar->base.flags &= ~1;
            bombar->base.xspeed += 0x10;
            if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
            else if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
        }
        else if (lhs > rhs)
        {
            bombar->base.flags |= 1;
            if (bombar->base.flags & 1)
            {
                bombar->base.xspeed -= 0x10;
                if (bombar->base.xspeed < -0x140)
                    bombar->base.xspeed = -0x140;
                else if (bombar->base.xspeed > 0x140)
                    bombar->base.xspeed = 0x140;
            }
            else
            {
                bombar->base.xspeed += 0x10;
                if (bombar->base.xspeed > 0x140)
                    bombar->base.xspeed = 0x140;
                else if (bombar->base.xspeed < -0x140)
                    bombar->base.xspeed = -0x140;
            }
        }
        else
        {
            if (bombar->base.xspeed < 0)
            {
                bombar->base.xspeed += 0x60;
                if (bombar->base.xspeed > 0)
                    bombar->base.xspeed = 0;
            }
            else
            {
                bombar->base.xspeed -= 0x60;
                if (bombar->base.xspeed < 0)
                    bombar->base.xspeed = 0;
            }
        }
    }
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;
    if (abs(bombar->unkA0 - (bombar->base.x >> 8)) < 0xA
        && abs(bombar->unkA2 - (bombar->base.y >> 8)) < 0xA)
        sub_080DA050(bombar);
    else
    {
        bombar->base.yspeed += gUnk_08356380[(bombar->base.counter >> 1) & 0xF];
        ++bombar->base.counter;
    }
}

static void sub_080D8338(struct Object2 *bombar)
{
    s32 lhs, rhs;

    if (bombar->base.counter < 2)
        bombar->base.flags |= 4;
    ++bombar->unk9E;
    lhs = bombar->base.y & ~0x7FF;
    rhs = (bombar->unkA2 * 0x100) & ~0x7FF;
    if (lhs > rhs)
    {
        bombar->base.yspeed += 0x10;
        if (bombar->base.yspeed > 0x140)
            bombar->base.yspeed = 0x140;
    }
    else if (lhs < rhs)
    {
        bombar->base.yspeed -= 0x10;
        if (bombar->base.yspeed < -0x140)
            bombar->base.yspeed = -0x140;
    }
    else
    {
        if (bombar->base.yspeed < 0)
        {
            bombar->base.yspeed += 0x60;
            if (bombar->base.yspeed > 0)
                bombar->base.yspeed = 0;
        }
        else
        {
            bombar->base.yspeed -= 0x60;
            if (bombar->base.yspeed < 0)
                bombar->base.yspeed = 0;
        }
    }
    lhs = bombar->base.x & ~0x7FF;
    rhs = (bombar->unkA0 * 0x100) & ~0x7FF;
    if (lhs < rhs)
    {
        bombar->base.flags &= ~1;
        bombar->base.xspeed += 0x10;
        if (bombar->base.xspeed > 0x140)
            bombar->base.xspeed = 0x140;
        else if (bombar->base.xspeed < -0x140)
            bombar->base.xspeed = -0x140;
    }
    else if (lhs > rhs)
    {
        bombar->base.flags |= 1;
        if (bombar->base.flags & 1)
        {
            bombar->base.xspeed -= 0x10;
            if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
            else if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
        }
        else
        {
            bombar->base.xspeed += 0x10;
            if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
            else if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
        }
    }
    else
    {
        if (bombar->base.xspeed < 0)
        {
            bombar->base.xspeed += 0x60;
            if (bombar->base.xspeed > 0)
                bombar->base.xspeed = 0;
        }
        else
        {
            bombar->base.xspeed -= 0x60;
            if (bombar->base.xspeed < 0)
                bombar->base.xspeed = 0;
        }
    }
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;

    if (bombar->base.flags & 2 && ++bombar->base.counter > 2)
        sub_080D850C(bombar);
    else
    {
        bombar->base.yspeed += gUnk_08356380[(bombar->unk9F >> 1) & 0xF];
        ++bombar->unk9F;
    }
}

static void sub_080D850C(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 4, sub_080D85BC);
    bombar->base.xspeed = 0;
    bombar->base.yspeed = 0;
    bombar->base.flags &= ~2;
    PlaySfx(&bombar->base, 378);
}

static void sub_080D85BC(struct Object2 *bombar)
{
    bombar->base.flags |= 4;
    if (bombar->subtype)
    {
        if (!bombar->unk9E)
        {
            ++bombar->unk9F;
            if (!gUnk_083562D8[bombar->unk9F].unk8)
                --bombar->unk9F;
            bombar->unk9E = gUnk_083562D8[bombar->unk9F].unk8;
            if (gUnk_083562D8[bombar->unk9F].unk9 != 0xFF)
                bombar->unk83 = gUnk_083562D8[bombar->unk9F].unk9;
            if (bombar->unk9F)
            {
                if (gUnk_083562D8[bombar->unk9F].unk0 != gUnk_083562D8[bombar->unk9F-1].unk0)
                {
                    bombar->base.xspeed = gUnk_083562D8[bombar->unk9F].unk0;
                    if (bombar->base.flags & 1)
                        bombar->base.xspeed = -bombar->base.xspeed;
                }
                if (gUnk_083562D8[bombar->unk9F].unk2 != gUnk_083562D8[bombar->unk9F-1].unk2)
                    bombar->base.yspeed = gUnk_083562D8[bombar->unk9F].unk2;
            }
            else
            {
                bombar->base.yspeed = gUnk_083562D8[bombar->unk9F].unk2;
                bombar->base.xspeed = gUnk_083562D8[bombar->unk9F].unk0;
                if (bombar->base.flags & 1)
                    bombar->base.xspeed = -bombar->base.xspeed;
            }
        }
        if (bombar->base.flags & 1)
            bombar->base.xspeed -= gUnk_083562D8[bombar->unk9F].unk4;
        else
            bombar->base.xspeed += gUnk_083562D8[bombar->unk9F].unk4;
        bombar->base.yspeed += gUnk_083562D8[bombar->unk9F].unk6;
        --bombar->unk9E;
        if (!gUnk_083562D8[(u8)(bombar->unk9F+1)].unk8 && !bombar->unk9E)
        {
            ObjectSetFunc(bombar, 0, sub_080D7D28);
            if (bombar->subtype || bombar->unk80 <= gUnk_08351530[7][gUnk_0203AD30 - 1] >> 1)
                bombar->base.counter = 0x18;
            else
                bombar->base.counter = 0x30;
        }
    }
    else
    {
        if (!bombar->unk9E)
        {
            ++bombar->unk9F;
            if (!gUnk_08356278[bombar->unk9F].unk8)
                --bombar->unk9F;
            bombar->unk9E = gUnk_08356278[bombar->unk9F].unk8;
            if (gUnk_08356278[bombar->unk9F].unk9 != 0xFF)
                bombar->unk83 = gUnk_08356278[bombar->unk9F].unk9;
            if (bombar->unk9F)
            {
                if (gUnk_08356278[bombar->unk9F].unk0 != gUnk_08356278[bombar->unk9F-1].unk0)
                {
                    bombar->base.xspeed = gUnk_08356278[bombar->unk9F].unk0;
                    if (bombar->base.flags & 1)
                        bombar->base.xspeed = -bombar->base.xspeed;
                }
                if (gUnk_08356278[bombar->unk9F].unk2 != gUnk_08356278[bombar->unk9F-1].unk2)
                    bombar->base.yspeed = gUnk_08356278[bombar->unk9F].unk2;
            }
            else
            {
                bombar->base.yspeed = gUnk_08356278[bombar->unk9F].unk2;
                bombar->base.xspeed = gUnk_08356278[bombar->unk9F].unk0;
                if (bombar->base.flags & 1)
                    bombar->base.xspeed = -bombar->base.xspeed;
            }
        }
        if (bombar->base.flags & 1)
            bombar->base.xspeed -= gUnk_08356278[bombar->unk9F].unk4;
        else
            bombar->base.xspeed += gUnk_08356278[bombar->unk9F].unk4;
        bombar->base.yspeed += gUnk_08356278[bombar->unk9F].unk6;
        --bombar->unk9E;
        if (!gUnk_08356278[(u8)(bombar->unk9F+1)].unk8 && !bombar->unk9E)
        {
            ObjectSetFunc(bombar, 0, sub_080D7D28);
            if (bombar->subtype || bombar->unk80 <= gUnk_08351530[7][gUnk_0203AD30 - 1] >> 1)
                bombar->base.counter = 0x18;
            else
                bombar->base.counter = 0x30;
        }
    }
}

static void sub_080D8950(struct Object2 *bombar)
{
    s32 lhs, rhs;

    bombar->base.flags |= 4;
    if (bombar->subtype)
    {
        ++bombar->unk9E;
        lhs = bombar->base.y & ~0x7FF;
        rhs = (bombar->unkA2 * 0x100) & ~0x7FF;
        if (lhs > rhs)
        {
            bombar->base.yspeed += 0x30;
            if (bombar->base.yspeed > 0x1C0)
                bombar->base.yspeed = 0x1C0;
        }
        else if (lhs < rhs)
        {
            bombar->base.yspeed -= 0x30;
            if (bombar->base.yspeed < -0x1C0)
                bombar->base.yspeed = -0x1C0;
        }
        else
        {
            if (bombar->base.yspeed < 0)
            {
                bombar->base.yspeed += 0x60;
                if (bombar->base.yspeed > 0)
                    bombar->base.yspeed = 0;
            }
            else
            {
                bombar->base.yspeed -= 0x60;
                if (bombar->base.yspeed < 0)
                    bombar->base.yspeed = 0;
            }
        }
        lhs = bombar->base.x & ~0x7FF;
        rhs = (bombar->unkA0 * 0x100) & ~0x7FF;
        if (lhs < rhs)
        {
            bombar->base.flags &= ~1;
            bombar->base.xspeed += 0x30;
            if (bombar->base.xspeed > 0x1C0)
                bombar->base.xspeed = 0x1C0;
            else if (bombar->base.xspeed < -0x1C0)
                bombar->base.xspeed = -0x1C0;
        }
        else if (lhs > rhs)
        {
            bombar->base.flags |= 1;
            if (bombar->base.flags & 1)
            {
                bombar->base.xspeed -= 0x30;
                if (bombar->base.xspeed < -0x1C0)
                    bombar->base.xspeed = -0x1C0;
                else if (bombar->base.xspeed > 0x1C0)
                    bombar->base.xspeed = 0x1C0;
            }
            else
            {
                bombar->base.xspeed += 0x30;
                if (bombar->base.xspeed > 0x1C0)
                    bombar->base.xspeed = 0x1C0;
                else if (bombar->base.xspeed < -0x1C0)
                    bombar->base.xspeed = -0x1C0;
            }
        }
        else
        {
            if (bombar->base.xspeed < 0)
            {
                bombar->base.xspeed += 0x60;
                if (bombar->base.xspeed > 0)
                    bombar->base.xspeed = 0;
            }
            else
            {
                bombar->base.xspeed -= 0x60;
                if (bombar->base.xspeed < 0)
                    bombar->base.xspeed = 0;
            }
        }
    }
    else
    {
        ++bombar->unk9E;
        lhs = bombar->base.y & ~0x7FF;
        rhs = (bombar->unkA2 * 0x100) & ~0x7FF;
        if (lhs > rhs)
        {
            bombar->base.yspeed += 0x10;
            if (bombar->base.yspeed > 0x140)
                bombar->base.yspeed = 0x140;
        }
        else if (lhs < rhs)
        {
            bombar->base.yspeed -= 0x10;
            if (bombar->base.yspeed < -0x140)
                bombar->base.yspeed = -0x140;
        }
        else
        {
            if (bombar->base.yspeed < 0)
            {
                bombar->base.yspeed += 0x60;
                if (bombar->base.yspeed > 0)
                    bombar->base.yspeed = 0;
            }
            else
            {
                bombar->base.yspeed -= 0x60;
                if (bombar->base.yspeed < 0)
                    bombar->base.yspeed = 0;
            }
        }
        lhs = bombar->base.x & ~0x7FF;
        rhs = (bombar->unkA0 * 0x100) & ~0x7FF;
        if (lhs < rhs)
        {
            bombar->base.flags &= ~1;
            bombar->base.xspeed += 0x10;
            if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
            else if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
        }
        else if (lhs > rhs)
        {
            bombar->base.flags |= 1;
            if (bombar->base.flags & 1)
            {
                bombar->base.xspeed -= 0x10;
                if (bombar->base.xspeed < -0x140)
                    bombar->base.xspeed = -0x140;
                else if (bombar->base.xspeed > 0x140)
                    bombar->base.xspeed = 0x140;
            }
            else
            {
                bombar->base.xspeed += 0x10;
                if (bombar->base.xspeed > 0x140)
                    bombar->base.xspeed = 0x140;
                else if (bombar->base.xspeed < -0x140)
                    bombar->base.xspeed = -0x140;
            }
        }
        else
        {
            if (bombar->base.xspeed < 0)
            {
                bombar->base.xspeed += 0x60;
                if (bombar->base.xspeed > 0)
                    bombar->base.xspeed = 0;
            }
            else
            {
                bombar->base.xspeed -= 0x60;
                if (bombar->base.xspeed < 0)
                    bombar->base.xspeed = 0;
            }
        }
    }
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;
    if (abs(bombar->unkA0 - (bombar->base.x >> 8)) < 0x10
        && abs(bombar->unkA2 - (bombar->base.y >> 8)) < 0x10)
        sub_080DA09C(bombar);
    else
    {
        bombar->base.yspeed += gUnk_08356380[(bombar->base.counter >> 1) & 0xF];
        ++bombar->base.counter;
    }
}

static void sub_080D8C98(struct Object2 *bombar)
{
    s32 lhs, rhs;

    if (bombar->base.counter < 3)
        bombar->base.flags |= 4;
    ++bombar->unk9E;
    lhs = bombar->base.y & ~0x7FF;
    rhs = (bombar->unkA2 * 0x100) & ~0x7FF;
    if (lhs > rhs)
    {
        bombar->base.yspeed += 0x10;
        if (bombar->base.yspeed > 0x140)
            bombar->base.yspeed = 0x140;
    }
    else if (lhs < rhs)
    {
        bombar->base.yspeed -= 0x10;
        if (bombar->base.yspeed < -0x140)
            bombar->base.yspeed = -0x140;
    }
    else
    {
        if (bombar->base.yspeed < 0)
        {
            bombar->base.yspeed += 0x60;
            if (bombar->base.yspeed > 0)
                bombar->base.yspeed = 0;
        }
        else
        {
            bombar->base.yspeed -= 0x60;
            if (bombar->base.yspeed < 0)
                bombar->base.yspeed = 0;
        }
    }
    lhs = bombar->base.x & ~0x7FF;
    rhs = (bombar->unkA0 * 0x100) & ~0x7FF;
    if (lhs < rhs)
    {
        bombar->base.flags &= ~1;
        bombar->base.xspeed += 0x10;
        if (bombar->base.xspeed > 0x140)
            bombar->base.xspeed = 0x140;
        else if (bombar->base.xspeed < -0x140)
            bombar->base.xspeed = -0x140;
    }
    else if (lhs > rhs)
    {
        bombar->base.flags |= 1;
        if (bombar->base.flags & 1)
        {
            bombar->base.xspeed -= 0x10;
            if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
            else if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
        }
        else
        {
            bombar->base.xspeed += 0x10;
            if (bombar->base.xspeed > 0x140)
                bombar->base.xspeed = 0x140;
            else if (bombar->base.xspeed < -0x140)
                bombar->base.xspeed = -0x140;
        }
    }
    else
    {
        if (bombar->base.xspeed < 0)
        {
            bombar->base.xspeed += 0x60;
            if (bombar->base.xspeed > 0)
                bombar->base.xspeed = 0;
        }
        else
        {
            bombar->base.xspeed -= 0x60;
            if (bombar->base.xspeed < 0)
                bombar->base.xspeed = 0;
        }
    }
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;

    if (bombar->base.flags & 2 && ++bombar->base.counter > 3)
        sub_080D8E6C(bombar);
    else
    {
        bombar->base.yspeed += gUnk_08356380[(bombar->unk9F >> 1) & 0xF];
        ++bombar->unk9F;
    }
}

static void sub_080D8E6C(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 0, sub_080D8F34);
    if (bombar->subtype)
        bombar->base.xspeed = 0x280;
    else
        bombar->base.xspeed = 0x180;
    bombar->base.yspeed = 0;
    bombar->unk9E = Rand16() & 1;
    if (bombar->base.flags & 1)
    {
        bombar->base.xspeed = -bombar->base.xspeed;
        if (bombar->unk9E)
            bombar->unkA0 = bombar->object->x - 0x24;
        else
            bombar->unkA0 = bombar->object->x - 0x30;
    }
    else
    {
        if (bombar->unk9E)
            bombar->unkA0 = bombar->object->x + 0x24;
        else
            bombar->unkA0 = bombar->object->x + 0x30;
    }
    bombar->unk85 = 0;
    bombar->base.flags &= ~2;
}

static void sub_080D8F34(struct Object2 *bombar)
{
    bombar->base.flags |= 4;
    if (!bombar->unk83
        && ((bombar->unk85 > 2 && !bombar->unk9E)
            || (bombar->unk85 > 3 && bombar->unk9E)))
    {
        bombar->unk85 = 0;
        ObjectSetFunc(bombar, 0, sub_080D7D28);
        if (bombar->subtype || bombar->unk80 <= gUnk_08351530[7][gUnk_0203AD30 - 1] >> 1)
            bombar->base.counter = 0x18;
        else
            bombar->base.counter = 0x30;
    }
    else
    {
        if (bombar->object->subtype1)
        {
            bombar->base.flags &= ~1;
            if (bombar->unkA0 <= bombar->base.x >> 8)
            {
                ++bombar->unk85;
                sub_080D95A4(bombar);
                PlaySfx(&bombar->base, 411);
                if (bombar->unk9E)
                    bombar->unkA0 += 0x24;
                else
                    bombar->unkA0 += 0x30;
                bombar->unk83 = 7;
                bombar->base.flags &= ~2;
                bombar->base.xspeed >>= 2;
            }
        }
        else
        {
            bombar->base.flags |= 1;
            if (!bombar->unk83)
            {
                if (bombar->unkA0 >= bombar->base.x >> 8)
                {
                    ++bombar->unk85;
                    PlaySfx(&bombar->base, 411);
                    sub_080D95A4(bombar);
                    if (bombar->unk9E)
                        bombar->unkA0 -= 0x24;
                    else
                        bombar->unkA0 -= 0x30;
                    bombar->unk83 = 7;
                    bombar->base.flags &= ~2;
                    bombar->base.xspeed >>= 2;
                }
            }
        }
        if (bombar->unk83 == 7)
        {
            if (bombar->base.unk1 < 8)
            {
                bombar->base.objBase54 = gUnk_083563A0[bombar->base.unk1 >> 1];
                bombar->base.objBase55 = gUnk_083563A0[(bombar->base.unk1 >> 1) + 1];
            }
            if (bombar->base.flags & 2)
            {
                bombar->unk83 = 0;
                if (bombar->subtype)
                    bombar->base.xspeed = 0x280;
                else
                    bombar->base.xspeed = 0x180;
                if (bombar->base.flags & 1)
                    bombar->base.xspeed = -bombar->base.xspeed;
            }
        }
        bombar->base.yspeed += gUnk_08356380[(bombar->base.counter >> 1) & 0xF];
        ++bombar->base.counter;
    }
}

static void sub_080D923C(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 3, sub_080D92F8);
    bombar->base.flags &= ~2;
    bombar->base.xspeed = -0x100;
    if (bombar->base.flags & 1)
        bombar->base.xspeed = -bombar->base.xspeed;
    PlaySfx(&bombar->base, 376);
}

static void sub_080D92F8(struct Object2 *bombar)
{
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;
    if (bombar->base.xspeed < 0)
    {
        bombar->base.xspeed += 0x20;
        if (bombar->base.xspeed > 0)
            bombar->base.xspeed = 0;
    }
    else
    {
        bombar->base.xspeed -= 0x20;
        if (bombar->base.xspeed < 0)
            bombar->base.xspeed = 0;
    }
    if (bombar->base.yspeed < 0)
    {
        bombar->base.yspeed += 0x20;
        if (bombar->base.yspeed > 0)
            bombar->base.yspeed = 0;
    }
    else
    {
        bombar->base.yspeed -= 0x20;
        if (bombar->base.yspeed < 0)
            bombar->base.yspeed = 0;
    }
    if (bombar->base.flags & 2)
        sub_080DA0BC(bombar);
}

static void sub_080D9388(struct Object2 *bombar)
{
    if (bombar->object->subtype1)
        bombar->base.flags &= ~1;
    else
        bombar->base.flags |= 1;
    if (bombar->base.xspeed < 0)
    {
        bombar->base.xspeed += 0x20;
        if (bombar->base.xspeed > 0)
            bombar->base.xspeed = 0;
    }
    else
    {
        bombar->base.xspeed -= 0x20;
        if (bombar->base.xspeed < 0)
            bombar->base.xspeed = 0;
    }
    if (bombar->base.yspeed < 0)
    {
        bombar->base.yspeed += 0x20;
        if (bombar->base.yspeed > 0)
            bombar->base.yspeed = 0;
    }
    else
    {
        bombar->base.yspeed -= 0x20;
        if (bombar->base.yspeed < 0)
            bombar->base.yspeed = 0;
    }
    if (bombar->unk83 == 6)
    {
        if (bombar->base.unk1 == 3)
        {
            if (Rand16() & 1)
                sub_080D9764(bombar, 0);
            else
                sub_080D9764(bombar, 1);
            PlaySfx(&bombar->base, 377);
        }
        if (bombar->base.unk1 < 8)
        {
            bombar->base.objBase54 = gUnk_083563A0[bombar->base.unk1 >> 1];
            bombar->base.objBase55 = gUnk_083563A0[(bombar->base.unk1 >> 1) + 1];
        }
        if (bombar->base.flags & 2)
        {
            ObjectSetFunc(bombar, 0, sub_080D7D28);
            if (bombar->subtype || bombar->unk80 <= gUnk_08351530[7][gUnk_0203AD30 - 1] >> 1)
                bombar->base.counter = 0x18;
            else
                bombar->base.counter = 0x30;
            return;
        }
    }
    else
        bombar->base.flags |= 4;
    if (!--bombar->base.counter)
    {
        bombar->unk83 = 6;
        bombar->base.flags &= ~2;
    }
    bombar->base.yspeed += gUnk_08356380[(bombar->unk9F >> 1) & 0xF];
    ++bombar->unk9F;
}

static void sub_080D95A4(struct Object2 *bombar)
{
    s32 x, y;
    struct Object2 *bomb;

    if (bombar->base.flags & 1)
        x = bombar->base.x >> 8;
    else
        x = bombar->base.x >> 8;
    y = (bombar->base.y >> 8) + 8;
    bomb = CreateObjTemplateAndObj(bombar->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BOMBAR_BOMB,
        bombar->base.flags & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    bomb->base.parent = bombar;
}

void *CreateBombarBomb(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *bomb = TaskGetStructPtr(t);

    InitObject(bomb, template, a2);
    bomb->base.unkC |= 2;
    bomb->unk9E = 0;
    bomb->unk7C = sub_0809F840;
    sub_0803E2B0(&bomb->base, -5, -3, 5, 8);
    sub_0803E308(&bomb->base, -6, -4, 6, 0xA);
    ObjectInitSprite(bomb);
    bomb->base.sprite.unk14 = 0x6C0;
    sub_080D9EE8(bomb);
    return bomb;
}

static void sub_080D9708(struct Object2 *bomb)
{
    bomb->base.flags |= 4;
    if (bomb->base.unk62 & 4)
    {
        sub_0809DA30(bomb);
        bomb->base.flags |= 0x1000;
    }
    if (bomb->base.xspeed < 0)
    {
        bomb->base.xspeed += 8;
        if (bomb->base.xspeed > 0)
            bomb->base.xspeed = 0;
    }
    else
    {
        bomb->base.xspeed -= 8;
        if (bomb->base.xspeed < 0)
            bomb->base.xspeed = 0;
    }
}

static void sub_080D9764(struct Object2 *bombar, u8 a2)
{
    s32 x = bombar->base.flags & 1 ? (bombar->base.x >> 8) - 0xC : (bombar->base.x >> 8) + 0xC;
    s32 y = (bombar->base.y >> 8) + 0xA;
    struct Object2 *missile = CreateObjTemplateAndObj(bombar->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BOMBAR_MISSILE,
        bombar->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    missile->base.parent = bombar;
    missile->base.parent = bombar;
    missile->base.sprite.unk14 = 0x6C0;

    x = bombar->base.flags & 1 ? (bombar->base.x >> 8) + 0x10 : (bombar->base.x >> 8) - 0x10;
    y = (bombar->base.y >> 8) + 0xA;
    missile = CreateObjTemplateAndObj(bombar->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BOMBAR_MISSILE,
        bombar->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    missile->base.parent = bombar;
}

void *CreateBombarMissile(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *missile = TaskGetStructPtr(t);

    InitObject(missile, template, a2);
    missile->base.flags |= 0x100;
    missile->base.flags |= 0x40;
    missile->base.unkC |= 2;
    missile->unk9E = 0;
    missile->unk7C = sub_0809F840;
    sub_0803E2B0(&missile->base, -5, -3, 5, 8);
    sub_0803E308(&missile->base, -6, -4, 6, 0xA);
    ObjectInitSprite(missile);
    sub_080D99A4(missile);
    return missile;
}

void sub_080D99A4(struct Object2 *missile)
{
    ObjectSetFunc(missile, 1, sub_080D9A04);
    if (missile->object->subtype1)
        missile->base.flags |= 1;
    missile->base.xspeed = 0x180;
    missile->base.yspeed = -0x180;
    if (missile->base.flags & 1)
        missile->base.xspeed = -missile->base.xspeed;
    missile->base.flags |= 0x100;
    missile->base.flags |= 0x40;
    missile->base.counter = 0x100;
}

static void sub_080D9A04(struct Object2 *missile)
{
    s32 lhs, rhs;

    if (missile->subtype)
    {
        if (++missile->unk9E >= 0x10)
        {
            missile->kirby3 = sub_0803D368(&missile->base);
            missile->unk9E = 0;
            missile->unkA0 = missile->kirby3->base.base.base.x >> 8;
            missile->unkA2 = missile->kirby3->base.base.base.y >> 8;
        }
        lhs = missile->base.y & ~0x8FF;
        rhs = (missile->unkA2 * 0x100) & ~0x8FF;
        if (lhs > rhs)
        {
            missile->base.yspeed += 0x10;
            if (missile->base.yspeed > 0x200)
                missile->base.yspeed = 0x200;
        }
        else if (lhs < rhs)
        {
            missile->base.yspeed -= 0x10;
            if (missile->base.yspeed < -0x200)
                missile->base.yspeed = -0x200;
        }
        else
        {
            if (missile->base.yspeed < 0)
            {
                missile->base.yspeed -= 8;
                if (missile->base.yspeed > 0)
                    missile->base.yspeed = 0;
            }
            else
            {
                missile->base.yspeed += 8;
                if (missile->base.yspeed < 0)
                    missile->base.yspeed = 0;
            }
        }
        lhs = missile->base.x & ~0x8FF;
        rhs = (missile->unkA0 * 0x100) & ~0x8FF;
        if (lhs < rhs)
        {
            missile->base.flags &= ~1;
            missile->base.xspeed += 0x10;
            if (missile->base.xspeed > 0x200)
                missile->base.xspeed = 0x200;
            else if (missile->base.xspeed < -0x200)
                missile->base.xspeed = -0x200;
        }
        else if (lhs > rhs)
        {
            missile->base.flags |= 1;
            if (missile->base.flags & 1)
            {
                missile->base.xspeed -= 0x10;
                if (missile->base.xspeed < -0x200)
                    missile->base.xspeed = -0x200;
                else if (missile->base.xspeed > 0x200)
                    missile->base.xspeed = 0x200;
            }
            else
            {
                missile->base.xspeed += 0x10;
                if (missile->base.xspeed > 0x200)
                    missile->base.xspeed = 0x200;
                else if (missile->base.xspeed < -0x200)
                    missile->base.xspeed = -0x200;
            }
        }
        else
        {
            if (missile->base.xspeed < 0)
            {
                missile->base.xspeed -= 8;
                if (missile->base.xspeed > 0)
                    missile->base.xspeed = 0;
            }
            else
            {
                missile->base.xspeed += 8;
                if (missile->base.xspeed < 0)
                    missile->base.xspeed = 0;
            }
        }
    }
    else
    {
        if (++missile->unk9E >= 0x10)
        {
            missile->kirby3 = sub_0803D368(&missile->base);
            missile->unk9E = 0;
            missile->unkA0 = missile->kirby3->base.base.base.x >> 8;
            missile->unkA2 = missile->kirby3->base.base.base.y >> 8;
        }
        lhs = missile->base.y & ~0x8FF;
        rhs = (missile->unkA2 * 0x100) & ~0x8FF;
        if (lhs > rhs)
        {
            missile->base.yspeed += 0x10;
            if (missile->base.yspeed > 0x1A0)
                missile->base.yspeed = 0x1A0;
        }
        else if (lhs < rhs)
        {
            missile->base.yspeed -= 0x10;
            if (missile->base.yspeed < -0x1A0)
                missile->base.yspeed = -0x1A0;
        }
        else
        {
            if (missile->base.yspeed < 0)
            {
                missile->base.yspeed -= 8;
                if (missile->base.yspeed > 0)
                    missile->base.yspeed = 0;
            }
            else
            {
                missile->base.yspeed += 8;
                if (missile->base.yspeed < 0)
                    missile->base.yspeed = 0;
            }
        }
        lhs = missile->base.x & ~0x8FF;
        rhs = (missile->unkA0 * 0x100) & ~0x8FF;
        if (lhs < rhs)
        {
            missile->base.flags &= ~1;
            missile->base.xspeed += 0x10;
            if (missile->base.xspeed > 0x1A0)
                missile->base.xspeed = 0x1A0;
            else if (missile->base.xspeed < -0x1A0)
                missile->base.xspeed = -0x1A0;
        }
        else if (lhs > rhs)
        {
            missile->base.flags |= 1;
            if (missile->base.flags & 1)
            {
                missile->base.xspeed -= 0x10;
                if (missile->base.xspeed < -0x1A0)
                    missile->base.xspeed = -0x1A0;
                else if (missile->base.xspeed > 0x1A0)
                    missile->base.xspeed = 0x1A0;
            }
            else
            {
                missile->base.xspeed += 0x10;
                if (missile->base.xspeed > 0x1A0)
                    missile->base.xspeed = 0x1A0;
                else if (missile->base.xspeed < -0x1A0)
                    missile->base.xspeed = -0x1A0;
            }
        }
        else
        {
            if (missile->base.xspeed < 0)
            {
                missile->base.xspeed -= 8;
                if (missile->base.xspeed > 0)
                    missile->base.xspeed = 0;
            }
            else
            {
                missile->base.xspeed += 8;
                if (missile->base.xspeed < 0)
                    missile->base.xspeed = 0;
            }
        }
    }
    missile->base.flags |= 1;
    if (missile->base.xspeed > 0x80)
    {
        if (missile->base.yspeed > 0x80)
            missile->unk83 = 5;
        else if (missile->base.yspeed < -0x80)
            missile->unk83 = 3;
        else
            missile->unk83 = 4;
    }
    else if (missile->base.xspeed < -0x80)
    {
        if (missile->base.yspeed > 0x80)
            missile->unk83 = 7;
        else if (missile->base.yspeed < -0x80)
            missile->unk83 = 1;
        else
            missile->unk83 = 0;
    }
    else
    {
        if (missile->base.yspeed > 0x10)
            missile->unk83 = 6;
        else if (missile->base.yspeed < -0x10)
            missile->unk83 = 2;
        else
            missile->unk83 = 0;
    }
    if (!(missile->base.counter & 7))
    {
        struct Object4 *obj4 = sub_0808AE30(&missile->base, 0, 0x298, 0);

        obj4->x -= 4 * missile->base.xspeed;
        obj4->y += 4 * missile->base.yspeed;
        obj4->unk3C = -(missile->base.xspeed >> 1);
        obj4->unk3E = -(missile->base.yspeed >> 1);
        obj4->sprite.unk14 = 0x740;
    }
    if (!missile->base.counter)
    {
        if (abs(missile->base.xspeed) + abs(missile->base.yspeed) >= 0x180)
            missile->unk78 = sub_080D9E34;
    }
    else
        --missile->base.counter;
}

static void sub_080D9E34(struct Object2 *missile)
{
    if (!(++missile->base.counter & 7))
    {
        struct Object4 *obj4 = sub_0808AE30(&missile->base, 0, 0x298, 0);

        obj4->x -= 4 * missile->base.xspeed;
        obj4->y += 4 * missile->base.yspeed;
        obj4->unk3C = -(missile->base.xspeed >> 1);
        obj4->unk3E = -(missile->base.yspeed >> 1);
        obj4->sprite.unk14 = 0x740;
    }
}

void sub_080D9E94(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 0, sub_080D7D28);
    if (bombar->subtype || bombar->unk80 <= gUnk_08351530[7][gUnk_0203AD30 - 1] >> 1)
        bombar->base.counter = 0x18;
    else
        bombar->base.counter = 0x30;
}

void sub_080D9EE8(struct Object2 *bomb)
{
    ObjectSetFunc(bomb, 0, sub_080D9708);
    if (bomb->object->subtype1)
        bomb->base.flags |= 1;
    bomb->unk9F = 0;
    if (bomb->base.x - 0x1000 < bomb->kirby3->base.base.base.x)
        bomb->base.xspeed = 0x100;
    if (bomb->base.x + 0x1000 > bomb->kirby3->base.base.base.x)
        bomb->base.xspeed = -0x100;
}

static void sub_080D9F54(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 0, sub_080D7A6C);
    bombar->base.xspeed = 0;
    bombar->base.yspeed = 0;
    bombar->base.flags |= 0x40;
    bombar->base.flags |= 0x100;
}

static void sub_080D9F84(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 0, sub_080D7DCC);
    if (bombar->object->subtype1)
        bombar->unkA0 = bombar->object->x - 8;
    else
        bombar->unkA0 = bombar->object->x + 8;
    bombar->unkA2 = bombar->object->y + 0x40;
}

static void sub_080D9FC8(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 0, sub_080D7DCC);
    if (bombar->object->subtype1)
        bombar->unkA0 = bombar->object->x + 0x30;
    else
        bombar->unkA0 = bombar->object->x - 0x30;
    bombar->unkA2 = bombar->object->y - 0x10;
}

static void sub_080DA00C(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 0, sub_080D7FF0);
    if (bombar->object->subtype1)
        bombar->unkA0 = bombar->object->x + 0x18;
    else
        bombar->unkA0 = bombar->object->x - 0x18;
    bombar->unkA2 = bombar->object->y;
}

static void sub_080DA050(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 4, sub_080D8338);
    bombar->base.flags &= ~2;
}

static void sub_080DA070(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 0, sub_080D8950);
    bombar->unkA0 = bombar->object->x;
    bombar->unkA2 = bombar->object->y;
}

static void sub_080DA09C(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 4, sub_080D8C98);
    bombar->base.flags &= ~2;
}

static void sub_080DA0BC(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 5, sub_080D9388);
    bombar->base.flags &= ~2;
    if (bombar->subtype)
        bombar->base.counter = 0xC;
    else
        bombar->base.counter = 0x1C;
}
