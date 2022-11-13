#include "object.h"
#include "bombar.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"

void sub_080D850C(struct Object2 *);
void sub_080D85BC(struct Object2 *);
void sub_080D8E6C(struct Object2 *);
void sub_080D8F34(struct Object2 *);
void sub_080D923C(struct Object2 *);
void sub_080D92F8(struct Object2 *);
void sub_080D95A4(struct Object2 *);
void sub_080D9764(struct Object2 *, u8);
void sub_080D9F54(struct Object2 *);
void sub_080D9F84(struct Object2 *);
void sub_080D9FC8(struct Object2 *);
void sub_080DA00C(struct Object2 *);
void sub_080DA050(struct Object2 *);
void sub_080DA070(struct Object2 *);
void sub_080DA09C(struct Object2 *);
void sub_080DA0BC(struct Object2 *);

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

const struct Unk_08353510 gUnk_08356278[] = {
    { 0x80,  -0x200, 0, 0, 0x10, 2 },
    { 0x1A0, -0x180, 0, 0, 0x10, 2 },
    { 0x280, -0x120, 0, 0, 0x10, 0 },
    { 0x280,   0xC0, 0, 0, 0x10, 0 },
    { 0x1A0,  0x200, 0, 0, 0x10, 1 },
    { 0x80,   0x260, 0, 0, 0x10, 1 },
    { 0,          0, 0, 0,    1, 0 },
    { 0 },
};

const struct Unk_08353510 gUnk_083562D8[] = {
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

const s16 gUnk_08356380[] = {
     0x20,  0x20,
     0x40,  0x40,
    -0x20, -0x20,
    -0x40, -0x40,
    -0x20, -0x20,
    -0x40, -0x40,
     0x20,  0x20,
     0x40,  0x40, 
};

const s8 gUnk_083563A0[] = {
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

void sub_080D7A6C(struct Object2 *bombar)
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

void sub_080D7C5C(struct Object2 *bombar)
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

void sub_080D7D28(struct Object2 *bombar)
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

void sub_080D7DCC(struct Object2 *bombar)
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

void sub_080D7FF0(struct Object2 *bombar)
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

void sub_080D8338(struct Object2 *bombar)
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

void sub_080D850C(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 4, sub_080D85BC);
    bombar->base.xspeed = 0;
    bombar->base.yspeed = 0;
    bombar->base.flags &= ~2;
    PlaySfx(&bombar->base, 378);
}

void sub_080D85BC(struct Object2 *bombar)
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

void sub_080D8950(struct Object2 *bombar)
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

void sub_080D8C98(struct Object2 *bombar)
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

void sub_080D8E6C(struct Object2 *bombar)
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

void sub_080D8F34(struct Object2 *bombar)
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

void sub_080D923C(struct Object2 *bombar)
{
    ObjectSetFunc(bombar, 3, sub_080D92F8);
    bombar->base.flags &= ~2;
    bombar->base.xspeed = -0x100;
    if (bombar->base.flags & 1)
        bombar->base.xspeed = -bombar->base.xspeed;
    PlaySfx(&bombar->base, 376);
}

void sub_080D92F8(struct Object2 *bombar)
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

void sub_080D9388(struct Object2 *bombar)
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
