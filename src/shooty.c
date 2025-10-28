#include "shooty.h"
#include "random.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"

static void sub_080C14A4(struct Object2 *);
static void sub_080C1658(struct Object2 *);
static void sub_080C1818(struct Object2 *);
static void sub_080C1A1C(void);
static void sub_080C1CA0(struct Object2 *);
static void sub_080C1ED4(struct Object2 *);
static void sub_080C1FE4(struct Object2 *);
static void sub_080C20B8(struct Object2 *);
static void sub_080C20D4(struct Object2 *);
static void sub_080C2144(struct Object2 *);
static void sub_080C2160(struct Object2 *);
static void sub_080C21BC(struct Object2 *);

const struct AnimInfo gUnk_08354F58[] = {
    { 0x30A,  0x0, 0x0 },
    { 0x30A,  0x1, 0x0 },
    { 0x30A,  0x2, 0x0 },
    { 0x30A,  0x3, 0x0 },
    { 0x30A,  0x4, 0x0 },
    { 0x30A,  0x5, 0x0 },
    { 0x30A,  0x6, 0x0 },
    { 0x30A,  0x7, 0x0 },
    { 0x30A,  0x8, 0x0 },
    { 0x30A,  0x9, 0x0 },
    { 0x30A,  0xA, 0x0 },
    { 0x30A,  0xB, 0x0 },
    { 0x30A,  0xC, 0x0 },
    { 0x30A,  0xD, 0x0 },
    { 0x30A,  0xE, 0x0 },
    { 0x30A,  0xD, 0x0 },
    { 0x30A,  0xF, 0x0 },
    { 0x30A, 0x10, 0x0 },
    { 0x30A, 0x11, 0x0 },
};

const struct AnimInfo gUnk_08354FA4[] = {
    { 0x337, 0x1, 0x0 },
};

static const struct Unk_08353510 gUnk_08354FA8[] = {
    {  0x180,  0x10, 0x0, 0x0, 0x10, 0x0 },
    {   0xF0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {   0x60,  0x40, 0x0, 0x0,  0x8, 0x3 },
    {   0x60,  0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0x60,  0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0x60,  0x40, 0x0, 0x0,  0x8, 0x2 },
    {  -0xF0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    { -0x180,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x180, -0x10, 0x0, 0x0, 0x10, 0x0 },
    {  -0xF0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {  -0x60, -0x40, 0x0, 0x0,  0x8, 0x7 },
    {  -0x60, -0x40, 0x0, 0x0,  0x8, 0xB },
    {   0x60, -0x40, 0x0, 0x0,  0x8, 0xB },
    {   0x60, -0x40, 0x0, 0x0,  0x8, 0x1 },
    {   0xF0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {  0x180, -0x10, 0x0, 0x0, 0x10, 0x0 },
    {  0x180, -0x10, 0x0, 0x0, 0x10, 0x0 },
    {   0xF0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {   0x60, -0x40, 0x0, 0x0,  0x8, 0x7 },
    {   0x60, -0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0x60, -0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0x60, -0x40, 0x0, 0x0,  0x8, 0x1 },
    {  -0xF0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    { -0x180, -0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x180,  0x10, 0x0, 0x0, 0x10, 0x0 },
    {  -0xF0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {  -0x60,  0x40, 0x0, 0x0,  0x8, 0x3 },
    {  -0x60,  0x40, 0x0, 0x0,  0x8, 0xB },
    {   0x60,  0x40, 0x0, 0x0,  0x8, 0xB },
    {   0x60,  0x40, 0x0, 0x0,  0x8, 0x2 },
    {   0xF0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {  0x180,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08355134[] = {
    {  0x240,  0x10, 0x0, 0x0, 0x10, 0x0 },
    {  0x1A0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {   0xA0,  0x40, 0x0, 0x0,  0x8, 0x3 },
    {   0xA0,  0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0xA0,  0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0xA0,  0x40, 0x0, 0x0,  0x8, 0x2 },
    { -0x1A0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    { -0x240,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x240, -0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x1A0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {  -0xA0, -0x40, 0x0, 0x0,  0x8, 0x7 },
    {  -0xA0, -0x40, 0x0, 0x0,  0x8, 0xB },
    {   0xA0, -0x40, 0x0, 0x0,  0x8, 0xB },
    {   0xA0, -0x40, 0x0, 0x0,  0x8, 0x1 },
    {  0x1A0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {  0x240, -0x10, 0x0, 0x0, 0x10, 0x0 },
    {  0x240, -0x10, 0x0, 0x0, 0x10, 0x0 },
    {  0x1A0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {   0xA0, -0x40, 0x0, 0x0,  0x8, 0x7 },
    {   0xA0, -0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0xA0, -0x40, 0x0, 0x0,  0x8, 0xB },
    {  -0xA0, -0x40, 0x0, 0x0,  0x8, 0x1 },
    { -0x1A0, -0x28, 0x0, 0x0, 0x10, 0x1 },
    { -0x240, -0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x240,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x1A0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {  -0xA0,  0x40, 0x0, 0x0,  0x8, 0x3 },
    {  -0xA0,  0x40, 0x0, 0x0,  0x8, 0xB },
    {   0xA0,  0x40, 0x0, 0x0,  0x8, 0xB },
    {   0xA0,  0x40, 0x0, 0x0,  0x8, 0x2 },
    {  0x1A0,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {  0x240,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_083552C0[] = {
    {  0x300,  0x10, 0x0, 0x0, 0x10, 0x0 },
    {  0x240,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {  0x180,  0x40, 0x0, 0x0,  0x8, 0x3 },
    {  0x180,  0x40, 0x0, 0x0,  0x8, 0xB },
    { -0x180,  0x40, 0x0, 0x0,  0x8, 0xB },
    { -0x180,  0x40, 0x0, 0x0,  0x8, 0x2 },
    { -0x240,  0x28, 0x0, 0x0, 0x10, 0x2 },
    { -0x300,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x300, -0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x240, -0x28, 0x0, 0x0, 0x10, 0x1 },
    { -0x180, -0x40, 0x0, 0x0,  0x8, 0x7 },
    { -0x180, -0x40, 0x0, 0x0,  0x8, 0xB },
    {  0x180, -0x40, 0x0, 0x0,  0x8, 0xB },
    {  0x180, -0x40, 0x0, 0x0,  0x8, 0x1 },
    {  0x240, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {  0x300, -0x10, 0x0, 0x0, 0x10, 0x0 },
    {  0x300, -0x10, 0x0, 0x0, 0x10, 0x0 },
    {  0x240, -0x28, 0x0, 0x0, 0x10, 0x1 },
    {  0x180, -0x40, 0x0, 0x0,  0x8, 0x7 },
    {  0x180, -0x40, 0x0, 0x0,  0x8, 0xB },
    { -0x180, -0x40, 0x0, 0x0,  0x8, 0xB },
    { -0x180, -0x40, 0x0, 0x0,  0x8, 0x1 },
    { -0x240, -0x28, 0x0, 0x0, 0x10, 0x1 },
    { -0x300, -0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x300,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { -0x240,  0x28, 0x0, 0x0, 0x10, 0x2 },
    { -0x180,  0x40, 0x0, 0x0,  0x8, 0x3 },
    { -0x180,  0x40, 0x0, 0x0,  0x8, 0xB },
    {  0x180,  0x40, 0x0, 0x0,  0x8, 0xB },
    {  0x180,  0x40, 0x0, 0x0,  0x8, 0x2 },
    {  0x240,  0x28, 0x0, 0x0, 0x10, 0x2 },
    {  0x300,  0x10, 0x0, 0x0, 0x10, 0x0 },
    { 0 },
};

void *CreateShooty(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *shooty = tmp;

    InitObject(shooty, template, a2);
    shooty->base.unkC |= 1;
    shooty->base.unkC |= 4;
    if (shooty->base.x > shooty->kirby3->base.base.base.x)
        shooty->base.flags |= 1;
    else
        shooty->base.flags &= ~1;
    sub_0803E2B0(&shooty->base, -5, -3, 5, 8);
    sub_0803E308(&shooty->base, -6, -4, 6, 0xA);
    ObjectInitSprite(shooty);
    gUnk_08351648[shooty->type].unk10(shooty);
    shooty->unk9E = 0;
    shooty->unk7C = 0;
    return shooty;
}

static void sub_080C0E70(struct Object2 *shooty)
{
    if (shooty->unk83 < 0xD)
    {
        if (shooty->unk83 == 0xB && shooty->base.flags & 2)
        {
            shooty->unk83 = 0;
            shooty->base.flags ^= 1;
        }
        switch (shooty->subtype)
        {
        case 0:
            if (!gUnk_08354FA8[(u8)(shooty->unk9F + 1)].unk8 && !shooty->unk9E)
                shooty->unk9F = 0xFF;
            if (!shooty->unk9E)
            {
                ++shooty->unk9F;
                if (!gUnk_08354FA8[shooty->unk9F].unk8)
                    --shooty->unk9F;
                shooty->unk9E = gUnk_08354FA8[shooty->unk9F].unk8;
                if (gUnk_08354FA8[shooty->unk9F].unk9 != 0xFF)
                    shooty->unk83 = gUnk_08354FA8[shooty->unk9F].unk9;
                if (shooty->unk9F)
                {
                    if (gUnk_08354FA8[shooty->unk9F].unk0 != gUnk_08354FA8[shooty->unk9F - 1].unk0)
                        shooty->base.xspeed = gUnk_08354FA8[shooty->unk9F].unk0;
                    if (gUnk_08354FA8[shooty->unk9F].unk2 != gUnk_08354FA8[shooty->unk9F - 1].unk2)
                        shooty->base.yspeed = gUnk_08354FA8[shooty->unk9F].unk2;
                }
                else
                {
                    shooty->base.yspeed = gUnk_08354FA8[shooty->unk9F].unk2;
                    shooty->base.xspeed = gUnk_08354FA8[shooty->unk9F].unk0;
                }
            }
            shooty->base.xspeed += gUnk_08354FA8[shooty->unk9F].unk4;
            shooty->base.yspeed += gUnk_08354FA8[shooty->unk9F].unk6;
            --shooty->unk9E;
            break;
        case 1:
            if (!gUnk_08355134[(u8)(shooty->unk9F + 1)].unk8 && !shooty->unk9E)
                shooty->unk9F = 0xFF;
            if (!shooty->unk9E)
            {
                ++shooty->unk9F;
                if (!gUnk_08355134[shooty->unk9F].unk8)
                    --shooty->unk9F;
                shooty->unk9E = gUnk_08355134[shooty->unk9F].unk8;
                if (gUnk_08355134[shooty->unk9F].unk9 != 0xFF)
                    shooty->unk83 = gUnk_08355134[shooty->unk9F].unk9;
                if (shooty->unk9F)
                {
                    if (gUnk_08355134[shooty->unk9F].unk0 != gUnk_08355134[shooty->unk9F - 1].unk0)
                        shooty->base.xspeed = gUnk_08355134[shooty->unk9F].unk0;
                    if (gUnk_08355134[shooty->unk9F].unk2 != gUnk_08355134[shooty->unk9F - 1].unk2)
                        shooty->base.yspeed = gUnk_08355134[shooty->unk9F].unk2;
                }
                else
                {
                    shooty->base.yspeed = gUnk_08355134[shooty->unk9F].unk2;
                    shooty->base.xspeed = gUnk_08355134[shooty->unk9F].unk0;
                }
            }
            shooty->base.xspeed += gUnk_08355134[shooty->unk9F].unk4;
            shooty->base.yspeed += gUnk_08355134[shooty->unk9F].unk6;
            --shooty->unk9E;
            break;
        default:
            if (!gUnk_083552C0[(u8)(shooty->unk9F + 1)].unk8 && !shooty->unk9E)
                shooty->unk9F = 0xFF;
            if (!shooty->unk9E)
            {
                ++shooty->unk9F;
                if (!gUnk_083552C0[shooty->unk9F].unk8)
                    --shooty->unk9F;
                shooty->unk9E = gUnk_083552C0[shooty->unk9F].unk8;
                if (gUnk_083552C0[shooty->unk9F].unk9 != 0xFF)
                    shooty->unk83 = gUnk_083552C0[shooty->unk9F].unk9;
                if (shooty->unk9F)
                {
                    if (gUnk_083552C0[shooty->unk9F].unk0 != gUnk_083552C0[shooty->unk9F - 1].unk0)
                        shooty->base.xspeed = gUnk_083552C0[shooty->unk9F].unk0;
                    if (gUnk_083552C0[shooty->unk9F].unk2 != gUnk_083552C0[shooty->unk9F - 1].unk2)
                        shooty->base.yspeed = gUnk_083552C0[shooty->unk9F].unk2;
                }
                else
                {
                    shooty->base.yspeed = gUnk_083552C0[shooty->unk9F].unk2;
                    shooty->base.xspeed = gUnk_083552C0[shooty->unk9F].unk0;
                }
            }
            shooty->base.xspeed += gUnk_083552C0[shooty->unk9F].unk4;
            shooty->base.yspeed += gUnk_083552C0[shooty->unk9F].unk6;
            --shooty->unk9E;
            break;
        }
        if (shooty->unk83 == 0xB || --shooty->base.counter)
            return;
        shooty->base.counter = 0x1E;
        if (abs(shooty->kirby3->base.base.base.x - shooty->base.x) < 0x2000
            && Rand16() & 1)
        {
            shooty->unk83 = 0xF;
            shooty->unkA0 = shooty->base.xspeed;
            shooty->unkA2 = shooty->base.yspeed;
            shooty->base.xspeed = 0;
            shooty->base.yspeed = 0;
        }
        if ((shooty->base.x > shooty->kirby3->base.base.base.x && shooty->base.flags & 1)
            || (shooty->base.x < shooty->kirby3->base.base.base.x && !(shooty->base.flags & 1)))
        {
            if (abs(shooty->kirby3->base.base.base.y - shooty->base.y) < 0x1800
                && Rand16() & 1)
            {
                shooty->unk83 = 0xD;
                shooty->unkA0 = shooty->base.xspeed;
                shooty->unkA2 = shooty->base.yspeed;
                shooty->base.xspeed = 0;
                shooty->base.yspeed = 0;
            }
        }

    }
    else
    {
        if (shooty->unk83 == 0xF)
        {
            if (shooty->base.flags & 2)
            {
                shooty->unk83 = 0x10;
                sub_080C1CA0(shooty);
            }
        }
        else if (shooty->unk83 == 0x10 && shooty->base.flags & 2)
        {
            shooty->unk83 = 1;
            shooty->base.xspeed = shooty->unkA0;
            shooty->base.yspeed = shooty->unkA2;
        }
        if (shooty->unk83 == 0xD)
        {
            if (shooty->base.flags & 2)
                shooty->unk83 = 0xE;
        }
        else if (shooty->unk83 == 0xE)
        {
            if (shooty->base.unk1 == 6)
                sub_080C1818(shooty);
            if (shooty->base.unk1 == 0x18)
                sub_080C1818(shooty);
            if (shooty->base.flags & 2)
            {
                shooty->unk83 = 1;
                shooty->base.xspeed = shooty->unkA0;
                shooty->base.yspeed = shooty->unkA2;
            }
        }
    }
}

static void sub_080C1420(struct Object2 *shooty)
{
    if (shooty->base.y + 0x3000 < shooty->kirby3->base.base.base.y)
        ObjectSetFunc(shooty, 0, sub_080C1658);
    else
        ObjectSetFunc(shooty, 0, sub_080C14A4);
    shooty->base.flags |= 0x140;
    if (shooty->base.x > shooty->kirby3->base.base.base.x)
        shooty->base.flags |= 1;
    else
        shooty->base.flags &= ~1;
    shooty->base.xspeed = 0x100;
    if (shooty->base.flags & 1)
        shooty->base.xspeed = -shooty->base.xspeed;
    shooty->unk85 = 0x64;
}

static void sub_080C14A4(struct Object2 *shooty)
{
    if (shooty->unk83 == 0xB && shooty->base.flags & 2)
    {
        shooty->unk83 = 0;
        shooty->base.flags ^= 1;
    }
    if (shooty->base.y > shooty->kirby3->base.base.base.y)
    {
        shooty->base.yspeed += 8;
        if (shooty->base.yspeed > 0x150)
            shooty->base.yspeed = 0x150;
    }
    else
    {
        shooty->base.yspeed -= 8;
        if (shooty->base.yspeed < -0x150)
            shooty->base.yspeed = -0x150;
    }
    if (++shooty->base.counter < 0x258
        && ((shooty->base.x > shooty->kirby3->base.base.base.x + 0x4000 && !(shooty->base.flags & 1))
            || (shooty->base.x < shooty->kirby3->base.base.base.x - 0x4000 && shooty->base.flags & 1)))
        shooty->unk83 = 0xB;
    if (shooty->base.flags & 1)
    {
        shooty->base.xspeed -= 8;
        if (shooty->base.xspeed < -0x100)
            shooty->base.xspeed = -0x100;
        else if (shooty->base.xspeed > 0x100)
            shooty->base.xspeed = 0x100;
    }
    else
    {
        shooty->base.xspeed += 8;
        if (shooty->base.xspeed > 0x100)
            shooty->base.xspeed = 0x100;
        else if (shooty->base.xspeed < -0x100)
            shooty->base.xspeed = -0x100;
    }
    sub_080C1FE4(shooty);
    if (shooty->base.y + 0x3000 < shooty->kirby3->base.base.base.y)
        shooty->unk78 = sub_080C1658;
    else if (!--shooty->unk85)
    {
        shooty->unk85 = 0x3C;
        if ((shooty->base.x > shooty->kirby3->base.base.base.x && shooty->base.flags & 1)
            || (shooty->base.x < shooty->kirby3->base.base.base.x && !(shooty->base.flags & 1)))
        {
            if (abs(shooty->kirby3->base.base.base.y - shooty->base.y) < 0x4000
                && Rand16() & 1)
                sub_080C20B8(shooty);
        }
    }
}

static void sub_080C1658(struct Object2 *shooty)
{
    if (shooty->unk83 == 0xB && shooty->base.flags & 2)
    {
        shooty->unk83 = 0;
        shooty->base.flags ^= 1;
    }
    if (++shooty->base.counter < 0x258
        && ((shooty->base.x > shooty->kirby3->base.base.base.x + 0x1000 && !(shooty->base.flags & 1))
            || (shooty->base.x < shooty->kirby3->base.base.base.x - 0x1000 && shooty->base.flags & 1)))
        shooty->unk83 = 0xB;
    if (shooty->base.flags & 1)
    {
        shooty->base.xspeed -= 0x20;
        if (shooty->base.xspeed < -0x180)
            shooty->base.xspeed = -0x180;
        else if (shooty->base.xspeed > 0x180)
            shooty->base.xspeed = 0x180;
    }
    else
    {
        shooty->base.xspeed += 0x20;
        if (shooty->base.xspeed > 0x180)
            shooty->base.xspeed = 0x180;
        else if (shooty->base.xspeed < -0x180)
            shooty->base.xspeed = -0x180;
    }
    if (shooty->base.yspeed < 0)
    {
        shooty->base.yspeed += 4;
        if (shooty->base.yspeed > 0)
            shooty->base.yspeed = 0;
    }
    else
    {
        shooty->base.yspeed -= 4;
        if (shooty->base.yspeed < 0)
            shooty->base.yspeed = 0;
    }
    sub_080C1FE4(shooty);
    if (shooty->base.y + 0x3000 > shooty->kirby3->base.base.base.y)
        shooty->unk78 = sub_080C14A4;
    else if (!--shooty->unk85)
    {
        shooty->unk85 = 0x3C;
        if (abs(shooty->kirby3->base.base.base.x - shooty->base.x) < 0x4000
            && Rand16() & 1)
            sub_080C2144(shooty);
    }
}

static void sub_080C17D4(struct Object2 *shooty)
{
    sub_080C1FE4(shooty);
    shooty->base.yspeed -= 0x19;
    if (shooty->base.yspeed < -0x28A)
        shooty->base.yspeed = -0x28A;
    if (shooty->base.counter > 0x28)
        sub_080C21BC(shooty);
    else
        ++shooty->base.counter;
}

static void sub_080C1818(struct Object2 *shooty)
{
    struct Task *t = TaskCreate(sub_080C1A1C, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = shooty->base.x;
    objBase->y = shooty->base.y;
    objBase->parent = shooty;
    objBase->counter = 0;
    objBase->roomId = shooty->base.roomId;
    objBase->unk56 = shooty->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x10000000;
    objBase->unk68 = 0x20000043;
    objBase->unk5C |= 0x80000;
    objBase->xspeed = 0x280;
    objBase->yspeed = 0;
    if (shooty->base.flags & 1)
        objBase->xspeed = -objBase->xspeed;
    sub_0803E2B0(objBase, -2, -2, 2, 2);
    sub_0803E308(objBase, 2, 2, 2, 2);
    sub_080708DC(objBase, &objBase->sprite, 0xC, 0x337, 0, 0xC);
    objBase->sprite.palId = 0;
    Macro_081050E8(objBase, &objBase->sprite, 0x30A, 1);
    PlaySfx(objBase, SE_08D588A0);
}

static void sub_080C1A1C(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite sprite;

    if (!sub_0806F780(objBase))
    {
        objBase->flags |= 4;
        SetPointerSomething(objBase);
        if (!(objBase->flags & 0x800))
        {
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        if (objBase->x <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x
            && objBase->x >= gCurLevelInfo[objBase->unk56].levelMinPosition.x
            && objBase->y <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y
            && objBase->y >= gCurLevelInfo[objBase->unk56].levelMinPosition.y)
            sub_0806FC70(objBase);
        if (objBase->unk62 || objBase->flags & 0x40000)
        {
            sub_0808AE30(objBase, 0, 0x298, 0);
            objBase->flags |= 0x1000;
        }
        else
        {
            Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0xC, &objBase->sprite);
            Macro_081050E8(objBase, &objBase->sprite, 0x30A, !objBase->sprite.palId);
            sub_0806F8BC(objBase);
        }
    }
}

static void sub_080C1CA0(struct Object2 *shooty)
{
    struct Object2 *sb = CreateObjTemplateAndObj(shooty->base.unk56, 1, 0x24,
        shooty->base.x >> 8, shooty->base.y >> 8, 0, 0x1F, 0, 0, OBJ_SHOOTY_BOMB,
        0, 0, shooty->subtype, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    sb->base.parent = shooty;
    if (shooty->base.flags & 1)
    {
        sb->base.flags |= 1;
        sb->base.y += 0x800;
    }
    else
        sb->base.y += 0x800;
}

void *CreateShootyBomb(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *sb = TaskGetStructPtr(t);

    InitObject(sb, template, a2);
    sb->base.unk63 = 1;
    sb->base.unkC |= 1;
    sb->base.unkC |= 4;
    sb->base.unkC |= 2;
    sb->base.flags |= 0x4000;
    sb->base.flags |= 0x100;
    sb->base.flags |= 0x10000000;
    sb->base.unk68 = 0x20000043;
    sb->base.unk5C |= 0x20;
    sb->unk9E = 0;
    sb->unk7C = sub_0809F840;
    sub_0803E2B0(&sb->base, -2, -2, 2, 2);
    sub_0803E308(&sb->base, 2, 2, 2, 2);
    ObjectInitSprite(sb);
    gUnk_08351648[sb->type].unk10(sb);
    return sb;
}

void sub_080C1E38(struct Object2 *sb)
{
    ObjectSetFunc(sb, 0, sub_080C1ED4);
    PlaySfx(&sb->base, SE_08D58634);
}

static void sub_080C1ED4(struct Object2 *sb)
{
    sb->base.flags |= 4;
    sb->base.flags &= ~0x100;
    if (sb->base.x <= gCurLevelInfo[sb->base.unk56].levelMaxPosition.x
        && sb->base.x >= gCurLevelInfo[sb->base.unk56].levelMinPosition.x
        && sb->base.y <= gCurLevelInfo[sb->base.unk56].levelMaxPosition.y
        && sb->base.y >= gCurLevelInfo[sb->base.unk56].levelMinPosition.y)
        sub_0806FC70(&sb->base);
    sb->base.flags |= 0x100;
    if (sb->base.unk58 & 0xC && sb->base.unk4C < sb->base.y)
        sb->base.unk62 |= 4;
    if (sb->base.unk62)
    {
        sub_0809DA30(sb);
        sb->base.flags |= 0x1000;
    }
}

static void sub_080C1F78(struct Object2 *shooty)
{
    sub_080C1FE4(shooty);
    shooty->base.yspeed += 0x19;
    if (shooty->base.yspeed > 0x28A)
        shooty->base.yspeed = 0x28A;
    if (shooty->base.counter > 0x28)
    {
        ObjectSetFunc(shooty, 0, sub_080C17D4);
        shooty->base.xspeed = 0xC0;
        shooty->base.yspeed = 0x28A;
        if (shooty->base.flags & 1)
            shooty->base.xspeed = -shooty->base.xspeed;
        shooty->base.flags |= 0x140;
    }
    else
        ++shooty->base.counter;
}

static void sub_080C1FE4(struct Object2 *shooty)
{
    if (shooty->unk83 != 0xB)
    {
        if (shooty->base.yspeed > 0x140)
            shooty->unk83 = 4;
        else if (shooty->base.yspeed > 0xC0)
            shooty->unk83 = 3;
        else if (shooty->base.yspeed > 0x40)
            shooty->unk83 = 2;
        else if (shooty->base.yspeed < -0x140)
            shooty->unk83 = 8;
        else if (shooty->base.yspeed < -0xC0)
            shooty->unk83 = 7;
        else if (shooty->base.yspeed < -0x40)
            shooty->unk83 = 1;
        else
            shooty->unk83 = 0;
    }
}

void sub_080C2044(struct Object2 *shooty)
{
    shooty->base.flags |= 0x140;
    shooty->base.flags &= ~0x20;
    if (shooty->object->subtype1 == 1)
        sub_080C1420(shooty);
    else
    {
        ObjectSetFunc(shooty, 0, sub_080C0E70);
        if (shooty->base.x > shooty->kirby3->base.base.base.x)
            shooty->base.flags |= 1;
        else
            shooty->base.flags &= ~1;
        if (shooty->base.flags & 1)
            shooty->unk9F = 6;
        shooty->base.counter = 0x78;
    }
}

static void sub_080C20B8(struct Object2 *shooty)
{
    shooty->unk83 = 0xD;
    shooty->unk78 = sub_080C20D4;
    shooty->base.flags |= 0x140;
}

static void sub_080C20D4(struct Object2 *shooty)
{
    if (shooty->unk83 == 0xD)
    {
        if (shooty->base.flags & 2)
            shooty->unk83 = 0xE;
    }
    else if (shooty->unk83 == 0xE)
    {
        if (shooty->base.unk1 == 6)
            sub_080C1818(shooty);
        if (shooty->base.unk1 == 0x18)
            sub_080C1818(shooty);
        if (shooty->base.flags & 2)
        {
            if (shooty->base.y + 0x3000 < shooty->kirby3->base.base.base.y)
                shooty->unk78 = sub_080C1658;
            else
                shooty->unk78 = sub_080C14A4;
        }
    }
}

static void sub_080C2144(struct Object2 *shooty)
{
    shooty->unk83 = 0xF;
    shooty->unk78 = sub_080C2160;
    shooty->base.flags |= 0x140;
}

static void sub_080C2160(struct Object2 *shooty)
{
    if (shooty->unk83 == 0xF)
    {
        if (shooty->base.flags & 2)
        {
            shooty->unk83 = 0x10;
            sub_080C1CA0(shooty);
        }
    }
    else if (shooty->unk83 == 0x10 && shooty->base.flags & 2)
    {
        if (shooty->base.y + 0x3000 < shooty->kirby3->base.base.base.y)
            shooty->unk78 = sub_080C1658;
        else
            shooty->unk78 = sub_080C14A4;
    }
}

static void sub_080C21BC(struct Object2 *shooty)
{
    ObjectSetFunc(shooty, 0, sub_080C1F78);
    shooty->base.xspeed = 0xC0;
    shooty->base.yspeed = -0x28A;
    if (shooty->base.flags & 1)
        shooty->base.xspeed = -shooty->base.xspeed;
    shooty->base.flags |= 0x140;
}
