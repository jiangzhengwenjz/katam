#include "phan_phan.h"
#include "object.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"

static void sub_080CDAA4(struct Object2 *);
static void sub_080CDC84(struct Object2 *);
static void sub_080CE07C(struct Object2 *);
static void sub_080CE234(struct Object2 *);
static void sub_080CE2FC(struct Object2 *);
static void sub_080CE464(struct Object2 *);
static void sub_080CE4DC(struct Object2 *);
static void sub_080CE758(struct Object2 *);
static void sub_080CE800(struct Object2 *);
static void sub_080CEA7C(struct Object2 *);
static void sub_080CEB4C(struct Object2 *);
static void sub_080CEBF8(struct Object2 *);
static void sub_080CED7C(struct Object2 *);
static void sub_080CEE04(struct Object2 *);
static void sub_080CEEC8(struct Object2 *, u8);
static void sub_080CF148(struct Object2 *);
static void sub_080CF20C(struct Object2 *);
static void sub_080CF2E4(void);
static void sub_080CF484(struct Object2 *);
static void sub_080CF4A8(struct Object2 *);
static void sub_080CF4C8(struct Object2 *);
static void sub_080CF51C(struct Object2 *);
static void sub_080CF558(struct Object2 *);

const struct Unk_02021590 gUnk_08355E84[] = {
    { 0x31B,    1, 0 },
    { 0x31B,    0, 0 },
    { 0x31B,    2, 0 },
    { 0x31B,    3, 0 },
    { 0x31B,    4, 0 },
    { 0x31B,    5, 0 },
    { 0x31B,    6, 0 },
    { 0x31B,  0xC, 0 },
    { 0x31B,  0xD, 0 },
    { 0x31B,  0xE, 0 },
    { 0x31B,  0xF, 0 },
    { 0x31B, 0x10, 0 },
    { 0x31B, 0x11, 0 },
    { 0x31B, 0x12, 0 },
    { 0x31B, 0x13, 0 },
    { 0x31B, 0x14, 0 },
    { 0x31B,    7, 0 },
    { 0x31B,    8, 0 },
    { 0x31B,    9, 0 },
    { 0x31B,  0xA, 0 },
    { 0x31B,  0xB, 0 },
    { 0x31B, 0x15, 0 },
    { 0x31B, 0x16, 0 },
    { 0x31B, 0x17, 0 },
    { 0x31B, 0x18, 0 },
    { 0x31B, 0x19, 0 },
    { 0x31B, 0x1A, 0 },
    { 0x31B, 0x1B, 0 },
    { 0x31B, 0x1C, 0 },
    { 0x31B, 0x1D, 0 },
    { 0x31B, 0x1E, 0 },
    { 0x31B, 0x1F, 0 },
};

const struct Unk_02021590 gUnk_08355F04[] = {
    { 0x31B, 0x20, 0 },
    { 0x31B, 0x20, 0 },
};

const struct Unk_02021590 gUnk_08355F0C[] = {
    { 0x31B, 0x21,  2 },
    { 0x31B,    3,  2 },
    { 0x31B, 0x21,  2 },
    { 0x31B,    3,  2 },
    { 0x31B, 0x21,  2 },
    { 0x31B,    3,  2 },
    { 0x31B, 0x21,  2 },
    { 0x31B,    3,  2 },
    { 0x31B, 0x21,  2 },
    { 0x31B,    3,  2 },
    { 0x31B, 0x21,  2 },
    { 0x31B,    3,  2 },
    { 0x31B, 0x21,  2 },
    { 0x31B,    3,  2 },
    { 0x31B,    3, -1 },
};

const struct Unk_02021590 gUnk_08355F48[] = {
    { 0x31B, 0x21, 2 },
    { 0x31B,    3, 2 },
    { 0x31B,    3, 0 },
};

static const u8 gUnk_08355F54[] = { 3, 2, 1, 4, 4, 5 };

static const u8 gUnk_08355F5A[] = { 5, 6, 5, 6, 6, 7 };

static const struct Kirby_110 gUnk_08355F60[] = {
    { 0x1C, 8, -1, 0xFF, 0x57, 0 },
};

static const struct Kirby_110 gUnk_08355F68[] = {
    {  0x1C, -0x20, -1, 4, 0x54, 0 },
    {  0x1F, -0x14,  1, 2, 0x52, 0 },
    {  0x12,  -0xE, -1, 1, 0x56, 0 },
    {     0, -0x14, -1, 2, 0x54, 0 },
    { -0x14, -0x1A, -1, 4, 0x52, 0 },
    { -0x15, -0x27, -1, 4, 0x51, 0 },
    {    -4, -0x2C, -1, 5, 0x55, 0 },
    {   0xC, -0x29, -1, 4, 0x53, 0 },
    {  0x1C, -0x20, -1, 4, 0x54, 0 },
    {  0x1F, -0x14,  1, 2, 0x52, 0 },
    {  0x12,  -0xE, -1, 1, 0x56, 0 },
    {     0, -0x14, -1, 2, 0x54, 0 },
    { -0x14, -0x1A, -1, 4, 0x52, 0 },
    { -0x15, -0x27, -1, 4, 0x51, 0 },
    {    -4, -0x2C, -1, 5, 0x55, 0 },
    {   0xC, -0x29, -1, 4, 0x53, 0 },
    {  0x1C, -0x20, -1, 4, 0x54, 0 },
    {  0x1F, -0x14,  1, 2, 0x52, 0 },
    {  0x12,  -0xE, -1, 1, 0x56, 0 },
    {     0, -0x14, -1, 2, 0x54, 0 },
    { -0x14, -0x1A, -1, 4, 0x52, 0 },
    { -0x15, -0x27, -1, 4, 0x51, 0 },
    {    -4, -0x2C, -1, 5, 0x55, 0 },
    {   0xC, -0x29, -1, 4, 0x53, 0 },
    {  0x32,  0x1C,  0, 1,    0, 2 },
    { -0x14, -0x1A, -1, 8,    0, 0 },
};

static const struct Kirby_110 gUnk_08356038[] = {
    {  0x1C,     8, -1, 8, 0x58, 0 },
    {  0x1E,     0,  1, 8, 0x58, 0 },
    {  0x16, -0x20, -1, 4, 0x4A, 0 },
    { -0x32,  0x1C,  0, 1,    0, 2 },
};

#define PhanPhanMacro(phanPhan) \
({ \
    ObjectSetFunc(phanPhan, 2, sub_080CF4A8); \
    (phanPhan)->base.xspeed = 0; \
    sub_080CD8D4(phanPhan); \
    if (++(phanPhan)->unk85 > 2) \
        (phanPhan)->unk85 = 0; \
})

void *CreatePhanPhan(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *phanPhan = tmp;

    InitObject(phanPhan, template, a2);
    if (phanPhan->base.x > phanPhan->kirby3->base.base.base.x)
        phanPhan->base.flags |= 1;
    else
        phanPhan->base.flags &= ~1;
    phanPhan->base.unkC |= 1;
    phanPhan->base.flags |= 0x2000000;
    phanPhan->base.flags |= 0x800000;
    phanPhan->base.flags |= 0x200;
    phanPhan->base.flags |= 0x200000;
    phanPhan->base.unk5C &= ~7;
    phanPhan->base.unk5C |= 3;
    phanPhan->base.unk5C |= 0xA0;
    sub_0803E2B0(&phanPhan->base, -0xE, -0x14, 0xE, 0xC);
    sub_0803E308(&phanPhan->base, -0x10, -0x16, 0x10, 0xE);
    ObjectInitSprite(phanPhan);
    phanPhan->base.sprite.unk14 = 0x6C0;
    sub_080CF484(phanPhan);
    phanPhan->unk9E = 0;
    phanPhan->unk7C = 0;
    return phanPhan;
}

static void sub_080CD6C0(struct Object2 *phanPhan)
{
    phanPhan->kirby3 = sub_0803D368(&phanPhan->base);
    phanPhan->base.flags |= 4;
    if (!(phanPhan->kirby3->base.base.base.unkC & 0x8000)
        && phanPhan->base.roomId == phanPhan->kirby3->base.base.base.roomId)
    {
        if (phanPhan->base.x > phanPhan->kirby3->base.base.base.x)
            phanPhan->base.flags |= 1;
        else
            phanPhan->base.flags &= ~1;
        if (Macro_08039430_2(&phanPhan->kirby3->base.base.base, phanPhan))
        {
            Macro_081003EC(phanPhan, &phanPhan->kirby3->base.base.base);
            phanPhan->base.flags &= ~0x200;
            sub_080CF20C(phanPhan);
            sub_080CF44C(phanPhan);
            phanPhan->base.counter = 0x5A;
            Macro_08100F18(phanPhan);
        }
    }
}

static void sub_080CD8D4(struct Object2 *phanPhan)
{
    s32 a;
    s32 b;
    u8 c, d;

    phanPhan->kirby3 = sub_0803D368(&phanPhan->base);
    if (phanPhan->base.x > phanPhan->kirby3->base.base.base.x)
        phanPhan->base.flags |= 1;
    else
        phanPhan->base.flags &= ~1;
    if (phanPhan->subtype)
    {
        a = 0x60;
        b = 2;
    }
    else if (phanPhan->unk80 <= gUnk_08351530[2][gUnk_0203AD30 - 1] >> 1)
    {
        a = 0x48;
        b = 2;
    }
    else
    {
        a = 0x48;
        b = 4;
    }
    ++phanPhan->unk9E;
    if (phanPhan->unk9E > b)
    {
        if (phanPhan->unk85 > 1)
            sub_080CED7C(phanPhan);
        else
        {
            c = Rand16() & 7;
            d = 0;
            if (phanPhan->kirby3->base.base.base.flags & 0x20)
                d = 1;
            else if (phanPhan->kirby3->base.base.base.flags & 0x40)
                d = 2;
            if (phanPhan->subtype)
                d = (d+3) & 0xFF;
            if (gUnk_08355F54[d] > c)
                sub_080CF4C8(phanPhan);
            else if (gUnk_08355F5A[d] > c)
                sub_080CE464(phanPhan);
            else
                sub_080CE758(phanPhan);
        }
    }
    else
    {
        if (abs(phanPhan->kirby3->base.base.base.x - phanPhan->base.x) < a * 0x100)
        {
            if (Rand16() & 1)
            {
                phanPhan->unk78 = sub_080CF4A8;
                phanPhan->unk83 = 2;
            }
            else
            {
                phanPhan->unk78 = sub_080CDC84;
                phanPhan->unk83 = 3;
            }
        }
        else
        {
            if (Rand16() & 1)
            {
                phanPhan->unk78 = sub_080CF4A8;
                phanPhan->unk83 = 2;
            }
            else if (Rand16() & 3)
            {
                phanPhan->unk78 = sub_080CDAA4;
                phanPhan->unk83 = 3;
            }
            else
            {
                phanPhan->unk78 = sub_080CDC84;
                phanPhan->unk83 = 3;
            }
        }
    }
}

static void sub_080CDAA4(struct Object2 *phanPhan)
{
    ObjXSomething(phanPhan);
    phanPhan->base.yspeed -= 0x6A;
    if (phanPhan->base.yspeed < -0x300)
        phanPhan->base.yspeed = -0x300;
    if (phanPhan->unk83 == 3 || phanPhan->unk83 == 5)
    {
        if (phanPhan->base.flags & 2)
        {
            if (phanPhan->subtype)
                phanPhan->base.xspeed = 0x200;
            else
                phanPhan->base.xspeed = 0x100;
            phanPhan->base.yspeed = 0x200;
            if (phanPhan->base.flags & 1)
                phanPhan->base.xspeed = -phanPhan->base.xspeed;
            ++phanPhan->unk83;
        }
    }
    else if (phanPhan->unk83 != 4)
    {
        if (phanPhan->base.unk62 & 4)
        {
            phanPhan->base.xspeed = 0;
            sub_080CD8D4(phanPhan);
            return;
        }
    }
    else
    {
        if (phanPhan->base.unk62 & 4)
        {
            phanPhan->unk83 = 5;
            phanPhan->base.xspeed = 0;
        }
    }
    if (phanPhan->base.unk62 & 1)
        phanPhan->base.xspeed = 0;
}

static void sub_080CDC84(struct Object2 *phanPhan)
{
    ObjXSomething(phanPhan);
    phanPhan->base.yspeed -= 0x6A;
    if (phanPhan->base.yspeed < -0x300)
        phanPhan->base.yspeed = -0x300;
    if (phanPhan->unk83 == 3 || phanPhan->unk83 == 5)
    {
        if (phanPhan->base.flags & 2)
        {
            if (phanPhan->subtype)
                phanPhan->base.xspeed = -0x200;
            else
                phanPhan->base.xspeed = -0x100;
            phanPhan->base.yspeed = 0x200;
            if (phanPhan->base.flags & 1)
                phanPhan->base.xspeed = -phanPhan->base.xspeed;
            ++phanPhan->unk83;
        }
    }
    else if (phanPhan->unk83 != 4)
    {
        if (phanPhan->base.unk62 & 4)
        {
            phanPhan->base.xspeed = 0;
            sub_080CD8D4(phanPhan);
            return;
        }
    }
    else
    {
        if (phanPhan->base.unk62 & 4)
        {
            phanPhan->unk83 = 5;
            phanPhan->base.xspeed = 0;
        }
    }
    if (phanPhan->base.unk62 & 2)
        phanPhan->base.xspeed = 0;
}

static void sub_080CDE64(struct Object2 *phanPhan)
{
    ObjXSomething(phanPhan);
    phanPhan->base.flags |= 4;
    if (phanPhan->base.flags & 1)
        phanPhan->base.xspeed -= 0x30;
    else
        phanPhan->base.xspeed += 0x30;
    if (phanPhan->base.unk62 & 2)
        phanPhan->base.xspeed = 0;
    if (phanPhan->base.flags & 2)
    {
        PlaySfx(&phanPhan->base, SE_08D58BB4);
        phanPhan->unk78 = sub_080CE07C;
        if (phanPhan->subtype)
            phanPhan->base.xspeed = 0x540;
        else
            phanPhan->base.xspeed = 0;
        if (phanPhan->base.flags & 1)
            phanPhan->base.xspeed = -phanPhan->base.xspeed;
    }
}

static void sub_080CE07C(struct Object2 *phanPhan)
{
    ObjXSomething(phanPhan);
    phanPhan->base.flags |= 4;
    if (phanPhan->base.flags & 2)
    {
        if (!phanPhan->base.counter && !phanPhan->subtype)
        {
            phanPhan->base.xspeed = 0x300;
            if (phanPhan->base.flags & 1)
                phanPhan->base.xspeed = -phanPhan->base.xspeed;
        }
        if (++phanPhan->base.counter > 2)
        {
            PhanPhanMacro(phanPhan);
            return;
        }
    }
    if (phanPhan->base.unk62 & 1)
        sub_080CE234(phanPhan);
}

static void sub_080CE234(struct Object2 *phanPhan)
{
    ObjectSetFunc(phanPhan, 0x12, sub_080CE2FC);
    phanPhan->base.xspeed = -0x100;
    phanPhan->base.yspeed = 0x300;
    if (phanPhan->base.flags & 1)
        phanPhan->base.xspeed = -phanPhan->base.xspeed;
    sub_0806FE64(3, &phanPhan->base);
    PlaySfx(&phanPhan->base, SE_08D58C00);
}

static void sub_080CE2FC(struct Object2 *phanPhan)
{
    phanPhan->base.yspeed -= 0x10;
    if (phanPhan->base.yspeed < -0x300)
        phanPhan->base.yspeed = -0x300;
    if (phanPhan->unk83 == 0x12)
    {
        if (phanPhan->base.unk62 & 4)
        {
            sub_0806FE64(3, &phanPhan->base);
            sub_08089864(&phanPhan->base, -8, 0xA, phanPhan->base.flags);
            PlaySfx(&phanPhan->base, SE_08D58C00);
            phanPhan->unk83 = 0x13;
            phanPhan->base.xspeed = -0x180;
            if (phanPhan->base.flags & 1)
                phanPhan->base.xspeed = -phanPhan->base.xspeed;
        }
    }
    else if (phanPhan->unk83 == 0x13)
    {
        if (++phanPhan->base.counter > 1)
        {
            phanPhan->base.xspeed = 0;
            if (phanPhan->subtype)
                phanPhan->unk83 = 0x14;
            else if (phanPhan->base.counter == 0x2B)
                phanPhan->unk83 = 0x14;
        }
    }
    else
    {
        if (phanPhan->base.flags & 2)
            PhanPhanMacro(phanPhan);
    }
}

static void sub_080CE464(struct Object2 *phanPhan)
{
    ObjectSetFunc(phanPhan, 7, sub_080CE4DC);
    phanPhan->kirby3 = sub_0803D368(&phanPhan->base);
    if (phanPhan->base.x > phanPhan->kirby3->base.base.base.x)
        phanPhan->base.flags |= 1;
    else
        phanPhan->base.flags &= ~1;
    if (phanPhan->subtype)
        phanPhan->base.xspeed = 0x200;
    else
        phanPhan->base.xspeed = 0x100;
    phanPhan->base.yspeed = 0x480;
    if (phanPhan->base.flags & 1)
        phanPhan->base.xspeed = -phanPhan->base.xspeed;
}

static void sub_080CE4DC(struct Object2 *phanPhan)
{
    ObjXSomething(phanPhan);
    phanPhan->base.yspeed -= 0x10;
    if (phanPhan->base.yspeed < -0x300)
        phanPhan->base.yspeed = -0x300;
    if (phanPhan->unk83 == 7)
    {
        if (phanPhan->base.yspeed <= 0)
            phanPhan->unk83 = 8;
    }
    else if (phanPhan->unk83 == 8)
    {
        if (phanPhan->base.unk62 & 4)
        {
            sub_0806FE64(1, &phanPhan->base);
            sub_08089864(&phanPhan->base, -0x10, 0xC, 1);
            sub_08089864(&phanPhan->base, -0x10, 0xC, 0);
            phanPhan->unk83 = 9;
            phanPhan->base.xspeed = 0;
            PlaySfx(&phanPhan->base, SE_08D58C00);
        }
    }
    else
    {
        ++phanPhan->unk9E;
        if (phanPhan->unk9E > 7)
        {
            PhanPhanMacro(phanPhan);
            return;
        }
    }
    if (phanPhan->base.unk62 & 1)
        phanPhan->base.xspeed = 0;
}

static void sub_080CE758(struct Object2 *phanPhan)
{
    ObjectSetFunc(phanPhan, 0xA, sub_080CE800);
    phanPhan->kirby3 = sub_0803D368(&phanPhan->base);
    if (phanPhan->base.x > phanPhan->kirby3->base.base.base.x)
        phanPhan->base.flags |= 1;
    else
        phanPhan->base.flags &= ~1;
    phanPhan->base.xspeed = 0;
    phanPhan->base.yspeed = 0;
    if (phanPhan->subtype)
    {
        if (Rand16() & 1)
            phanPhan->base.counter = 1;
        else
            phanPhan->base.counter = 2;
    }
    else
    {
        if (Rand16() & 1)
            phanPhan->base.counter = 1;
        else
            phanPhan->base.counter = 3;
    }
}

static void sub_080CE800(struct Object2 *phanPhan)
{
    phanPhan->base.yspeed -= 0x3B;
    if (phanPhan->base.yspeed < -0x300)
        phanPhan->base.yspeed = -0x300;
    if (phanPhan->unk83 == 0xA)
    {
        if (phanPhan->base.unk1 == 1)
            phanPhan->base.yspeed = 0x500;
        if (phanPhan->base.flags & 2)
            phanPhan->unk83 = 0xB;
    }
    else if (phanPhan->unk83 == 0xB && phanPhan->base.unk62 & 4)
    {
        sub_0806FE64(1, &phanPhan->base);
        sub_08089864(&phanPhan->base, -0x10, 0x10, 1);
        sub_08089864(&phanPhan->base, -0x10, 0x10, 0);
        PlaySfx(&phanPhan->base, SE_08D58C00);
        if (!--phanPhan->base.counter)
            PhanPhanMacro(phanPhan);
        else
            phanPhan->unk83 = 0xA;
    }
}

bool8 sub_080CE94C(struct Object2 *phanPhan, struct Kirby *kirby)
{
    if (phanPhan->unk83 == 0x15
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->unkD4 == 0x27
        || kirby->unkD4 > 0x7A
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(phanPhan, 0x15, sub_080CEA7C);
    phanPhan->base.xspeed = 0;
    phanPhan->base.yspeed = 0;
    phanPhan->unk9F = 0;
    phanPhan->unk9E = phanPhan->base.flags & 0x20;
    phanPhan->base.unkC &= ~0x40;
    kirby->unk110 = gUnk_08355F60;
    phanPhan->kirby3 = kirby;
    phanPhan->base.unk6C = kirby;
    PlaySfx(&phanPhan->base, SE_08D58F7C);
    return TRUE;
}

static void sub_080CEA7C(struct Object2 *phanPhan)
{
    phanPhan->base.flags |= 4;
    if (phanPhan->base.unkC & 0x80)
    {
        phanPhan->base.unkC &= ~0x80;
        sub_080CF51C(phanPhan);
    }
    else
    {
        phanPhan->base.counter = phanPhan->unk80;
        if (!phanPhan->unk9F)
        {
            if ((phanPhan->base.unk1 & 3) < 2)
                phanPhan->base.xspeed = 0x100;
            else
                phanPhan->base.xspeed = -0x100;
        }
        else
        {
            phanPhan->base.xspeed = 0;
            if (phanPhan->unk9E)
            {
                if (++phanPhan->unk9F > 0x14)
                {
                    sub_080CEB4C(phanPhan);
                    return;
                }
            }
            else if (phanPhan->unk9F)
            {
                if (++phanPhan->unk9F > 5)
                {
                    sub_080CEB4C(phanPhan);
                    return;
                }
            }
        }
        if (phanPhan->unk9E && phanPhan->base.unk62 & 4)
            ++phanPhan->unk9F;
        if (phanPhan->base.flags & 2 && !phanPhan->unk9E)
            ++phanPhan->unk9F;
    }
}

static void sub_080CEB4C(struct Object2 *phanPhan)
{
    const struct Kirby_110 **kirby110;

    ObjectSetFunc(phanPhan, -1, sub_080CEBF8);
    kirby110 = &phanPhan->kirby3->unk110;
    *kirby110 = gUnk_08355F60;
    phanPhan->base.xspeed = 0;
    phanPhan->base.counter = phanPhan->unk80;
    if (phanPhan->base.x - gCurLevelInfo[phanPhan->base.unk56].unkC < 0x7800)
    {
        if (!(phanPhan->base.flags & 1))
        {
            phanPhan->unk83 = 0x1A;
            *kirby110 = gUnk_08355F68;
            return;
        }
    }
    else
    {
        if (phanPhan->base.flags & 1)
        {
            phanPhan->unk83 = 0x1A;
            *kirby110 = gUnk_08355F68;
            return;
        }
    }
    phanPhan->unk83 = 0x1B;
    *kirby110 = gUnk_08356038;
}

static void sub_080CEBF8(struct Object2 *phanPhan)
{
    if (phanPhan->base.unkC & 0x80)
    {
        phanPhan->base.unkC &= ~0x80;
        sub_080CF51C(phanPhan);
    }
    else
    {
        phanPhan->base.counter = phanPhan->unk80;
        if (phanPhan->base.flags & 2)
        {
            if (phanPhan->unk83 == 0x1C)
            {
                PhanPhanMacro(phanPhan);
                return;
            }
            phanPhan->unk83 = 0x1C;
            PlaySfx(&phanPhan->base, SE_08D59010);
        }
        if (phanPhan->unk83 == 0x1A)
        {
            if (phanPhan->base.unk1 == 1 || phanPhan->base.unk1 == 0x1B || phanPhan->base.unk1 == 0x35)
                PlaySfx(&phanPhan->base, SE_08D58F98);
        }
    }
}

static void sub_080CED7C(struct Object2 *phanPhan)
{
    ObjectSetFunc(phanPhan, 0xC, sub_080CEE04);
    phanPhan->kirby3 = sub_0803D368(&phanPhan->base);
    if (phanPhan->base.x > phanPhan->kirby3->base.base.base.x)
        phanPhan->base.flags |= 1;
    else
        phanPhan->base.flags &= ~1;
    if (Rand16() & 1)
        phanPhan->base.counter = 0x18;
    else if (Rand16() & 1)
        phanPhan->base.counter = 8;
    else
        phanPhan->base.counter = 0x28;
}

static void sub_080CEE04(struct Object2 *phanPhan)
{
    phanPhan->base.yspeed -= 0xA;
    if (phanPhan->base.yspeed < -0x300)
        phanPhan->base.yspeed = -0x300;
    phanPhan->base.flags |= 4;
    if (phanPhan->unk83 == 0xC)
    {
        if (++phanPhan->unk9E > 0xF)
        {
            phanPhan->unk83 = 0xD;
            phanPhan->base.yspeed = 0x380;
        }
    }
    else if (phanPhan->unk83 == 0xD)
    {
        if (!--phanPhan->base.counter)
        {
            sub_080CEEC8(phanPhan, phanPhan->object->subtype2);
            phanPhan->unk83 = 0xE;
        }
    }
    else
    {
        if (phanPhan->base.flags & 2)
            phanPhan->unk83 = 0xF;
        if (phanPhan->base.unk62 & 4)
            PhanPhanMacro(phanPhan);
    }
}

static void sub_080CEEC8(struct Object2 *phanPhan, u8 a2)
{
    s32 x = phanPhan->base.flags & 1 ? (phanPhan->base.x >> 8) - 0xC : (phanPhan->base.x >> 8) + 0xC;
    s32 y = (phanPhan->base.y >> 8) + 8;
    struct Object2 *apple = CreateObjTemplateAndObj(phanPhan->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_APPLE,
        phanPhan->base.flags & 1, 0x20, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    apple->base.parent = phanPhan;
}

void *CreatePhanPhanApple(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *apple = tmp;

    InitObject(apple, template, a2);
    apple->base.flags |= 0x10000;
    apple->base.unkC |= 2;
    apple->unk9E = 0;
    apple->unk7C = sub_0809F840;
    sub_0803E2B0(&apple->base, -5, -7, 5, 4);
    sub_0803E308(&apple->base, -6, -8, 6, 6);
    ObjectInitSprite(apple);
    sub_080CF0D4(apple);
    PlaySfx(&apple->base, SE_08D58CA4);
    return apple;
}

void sub_080CF0D4(struct Object2 *apple)
{
    ObjectSetFunc(apple, 0, sub_080CF148);
    if (apple->object->subtype1)
        apple->base.flags |= 1;
    if (apple->subtype)
    {
        apple->base.xspeed = 0x204;
        apple->base.yspeed = 0;
    }
    else
    {
        apple->base.xspeed = 0x158;
        apple->base.yspeed = 0x2AF;
    }
    if (apple->base.flags & 1)
        apple->base.xspeed = -apple->base.xspeed;
}

static void sub_080CF148(struct Object2 *apple)
{
    apple->base.yspeed -= 0x1A;
    if (apple->base.yspeed < -0x300)
        apple->base.yspeed = -0x300;
    apple->base.flags |= 4;
    if (apple->base.unk62 & 4)
    {
        if (!apple->base.counter)
        {
            if (apple->subtype)
            {
                apple->base.xspeed = 0x300;
                apple->base.yspeed = 0x2D0;
            }
            else
            {
                apple->base.xspeed = 0x200;
                apple->base.yspeed = 0x240;
            }
            apple->base.counter = 1;
        }
        else
        {
            if (apple->subtype)
            {
                apple->base.xspeed = 0x300;
                apple->base.yspeed = 0x300;
            }
            else
            {
                apple->base.xspeed = 0x200;
                apple->base.yspeed = 0x300;
            }
        }
        if (apple->base.flags & 1)
            apple->base.xspeed = -apple->base.xspeed;
    }
    if (apple->base.unk62 & 1)
    {
        sub_0809DA30(apple);
        apple->base.flags |= 0x1000;
    }
}

static void sub_080CF20C(struct Object2 *phanPhan)
{
    struct Task *t = TaskCreate(sub_080CF2E4, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = phanPhan->base.x;
    objBase->y = phanPhan->base.y;
    objBase->parent = phanPhan;
    objBase->counter = 0;
    objBase->roomId = phanPhan->base.roomId;
    objBase->unk56 = phanPhan->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->unk68 |= 0x20;
    objBase->flags = flags = 0x12010400;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    if (phanPhan->base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    sub_0803E2B0(objBase, -0x14, -0x18, 0x14, 0x12);
}

static void sub_080CF2E4(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (((struct Object2 *)objBase->parent)->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        sub_0803D9A8(objBase);
    else
    {
        struct Object2 *phanPhan = objBase->parent;

        objBase->x = phanPhan->base.x;
        objBase->y = phanPhan->base.y;
        objBase->unk56 = phanPhan->base.unk56;
        if (phanPhan->base.flags & 1)
            objBase->flags |= 1;
        else
            objBase->flags &= ~1;
        if (phanPhan->unk83 < 0xC)
        {
            phanPhan->base.unk68 &= ~7;
            if (objBase->flags & 0x40000)
                objBase->flags &= ~0x40000;
            else if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
        }
        else
        {
            phanPhan->base.unk68 &= ~7;
            phanPhan->base.unk68 |= 2;
        }
    }
}

void sub_080CF44C(struct Object2 *phanPhan)
{
    PhanPhanMacro(phanPhan);
}

static void sub_080CF484(struct Object2 *phanPhan)
{
    ObjectSetFunc(phanPhan, 0, sub_080CD6C0);
    phanPhan->base.xspeed = 0;
    phanPhan->base.yspeed = 0;
}

static void sub_080CF4A8(struct Object2 *phanPhan)
{
    phanPhan->base.flags |= 4;
    if (phanPhan->base.flags & 2)
        sub_080CD8D4(phanPhan);
}

static void sub_080CF4C8(struct Object2 *phanPhan)
{
    ObjectSetFunc(phanPhan, 0x10, sub_080CDE64);
    phanPhan->kirby3 = sub_0803D368(&phanPhan->base);
    if (phanPhan->base.x > phanPhan->kirby3->base.base.base.x)
        phanPhan->base.flags |= 1;
    else
        phanPhan->base.flags &= ~1;
    phanPhan->base.xspeed = -0x300;
    if (phanPhan->base.flags & 1)
        phanPhan->base.xspeed = -phanPhan->base.xspeed;
}

static void sub_080CF51C(struct Object2 *phanPhan)
{
    struct Kirby *kirby = phanPhan->base.unk6C;

    ObjectSetFunc(phanPhan, 0x1D, sub_080CF558);
    phanPhan->base.xspeed = 0;
    phanPhan->base.yspeed = 0;
    if (kirby->base.base.base.x > phanPhan->base.x)
        phanPhan->base.xspeed = -0x80;
    else
        phanPhan->base.xspeed = 0x80;
}

static void sub_080CF558(struct Object2 *phanPhan)
{
    if (++phanPhan->base.counter > 0x14)
        PhanPhanMacro(phanPhan);
}
