#include "boxin.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"

static void sub_080B4DF4(struct Object2 *);
static void sub_080B4F6C(void);
static void sub_080B50A8(struct Object2 *);
static void sub_080B5220(void);
static void sub_080B535C(struct Object2 *);
static void sub_080B54D8(void);
static void sub_080B5614(struct Object2 *);
static void sub_080B56F0(void);
static void sub_080B5898(struct Object2 *);
static void sub_080B58C0(struct Object2 *);
static void sub_080B5910(struct Object2 *);
static void sub_080B597C(struct Object2 *);
static void sub_080B5A14(struct Object2 *);
static void sub_080B5A38(struct Object2 *);
static void sub_080B5A5C(struct Object2 *);
static void sub_080B5A80(struct Object2 *);
static void sub_080B5AA4(struct Object2 *);
static void sub_080B5AC8(struct Object2 *);
static void sub_080B5B0C(struct Object2 *);

const struct AnimInfo gUnk_0835409C[] = {
    { 0x307,   0, 0 },
    { 0x307,   1, 0 },
    { 0x307,   2, 0 },
    { 0x307,   8, 0 },
    { 0x307,   9, 0 },
    { 0x307, 0xA, 0 },
    { 0x307, 0xB, 0 },
    { 0x307, 0xC, 0 },
    { 0x307, 0xD, 0 },
    { 0x307,   3, 0 },
    { 0x307,   4, 0 },
    { 0x307,   5, 0 },
    { 0x307,   6, 0 },
    { 0x307,   7, 0 },
    { 0x307, 0xE, 0 },
    { 0x307, 0xF, 0 },
};

static const struct Unk_08353510 gUnk_083540DC[] = {
    {      0, 0, 0, 0,  0xA, 3 },
    {  0x300, 0, 0, 0,    3, 3 },
    { -0x100, 0, 0, 0,    2, 3 },
    {      0, 0, 0, 0, 0x1E, 3 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08354118[] = {
    {      0, 0, 0, 0, 0xA, 4 },
    {  0x300, 0, 0, 0,   3, 4 },
    { -0x100, 0, 0, 0,   2, 4 },
    {      0, 0, 0, 0,   5, 4 },
    {  0x300, 0, 0, 0,   3, 4 },
    { -0x100, 0, 0, 0,   2, 4 },
    {      0, 0, 0, 0, 0xA, 4 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08354178[] = {
    {      0, 0, 0, 0,  0xA, 3 },
    {  0x300, 0, 0, 0,    3, 3 },
    { -0x100, 0, 0, 0,    2, 3 },
    {      0, 0, 0, 0,  0xA, 3 },
    {  0x180, 0, 0, 0,  0xF, 5 },
    {   0x80, 0, 0, 0,    6, 6 },
    {  0x100, 0, 0, 0,    1, 6 },
    {  0x400, 0, 0, 0,    1, 6 },
    {  0x300, 0, 0, 0,    1, 6 },
    {   0x80, 0, 0, 0,  0xE, 6 },
    { -0x100, 0, 0, 0,    3, 6 },
    {      0, 0, 0, 0, 0x19, 6 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08354214[] = {
    {      0, 0, 0, 0,  0xA, 4 },
    {  0x300, 0, 0, 0,    3, 4 },
    { -0x100, 0, 0, 0,    2, 4 },
    {      0, 0, 0, 0,    5, 4 },
    {  0x300, 0, 0, 0,    3, 4 },
    { -0x100, 0, 0, 0,    2, 4 },
    {      0, 0, 0, 0,  0xA, 4 },
    {  0x180, 0, 0, 0,  0xF, 5 },
    {   0x80, 0, 0, 0,    6, 6 },
    {  0x100, 0, 0, 0,    1, 6 },
    {  0x400, 0, 0, 0,    1, 6 },
    {  0x300, 0, 0, 0,    1, 6 },
    {   0x80, 0, 0, 0,  0xE, 6 },
    { -0x100, 0, 0, 0,    3, 6 },
    {      0, 0, 0, 0, 0x19, 6 },
    { 0 },
};

static const struct Unk_08353510 gUnk_083542D4[] = {
    { 0x120, 0x240, 0,    0,  0xF, 7 },
    { 0x120, 0x240, 0,    0,  0xF, 7 },
    {  0xA0, 0x240, 0, 0x13,    2, 8 },
    {  0xA0, 0x280, 0, 0x14,    2, 8 },
    {  0xA0, 0x280, 0, 0x14,    2, 8 },
    {     0,     0, 0, 0x14, 0x1E, 8 },
    {     0,     0, 0,    0,    4, 8 },
    { 0 },
};

void *CreateBoxin(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *boxin = tmp;

    InitObject(boxin, template, a2);
    if (boxin->base.x > boxin->kirby3->base.base.base.x)
        boxin->base.flags |= 1;
    else
        boxin->base.flags &= ~1;
    sub_0803E2B0(&boxin->base, -5, -7, 5, 4);
    sub_0803E308(&boxin->base, -6, -8, 6, 6);
    ObjectInitSprite(boxin);
    gUnk_08351648[boxin->type].unk10(boxin);
    if (boxin->object->subtype1 > 1)
        sub_080B5614(boxin);
    boxin->unk9E = 0;
    boxin->unk7C = 0;
    return boxin;
}

static void sub_080B408C(struct Object2 *boxin)
{
    if (boxin->base.x <= gCurLevelInfo[boxin->base.unk56].levelMaxPosition.x
        && boxin->base.x >= gCurLevelInfo[boxin->base.unk56].levelMinPosition.x
        && boxin->base.y <= gCurLevelInfo[boxin->base.unk56].levelMaxPosition.y
        && boxin->base.y >= gCurLevelInfo[boxin->base.unk56].levelMinPosition.y)
    {
        if (gUnk_082D88B8[sub_080023E4(boxin->base.unk56, (boxin->base.x + boxin->base.xspeed) >> 12, (boxin->base.y + (boxin->base.unk3F + 9) * 0x100) >> 12)] & 1)
            boxin->base.xspeed = 0;
        if (gUnk_082D88B8[sub_080023E4(boxin->base.unk56, boxin->base.x >> 12, (boxin->base.y + (boxin->base.unk3F + 9) * 0x100) >> 12)] & 1)
        {
            sub_080B5898(boxin);
            boxin->base.yspeed = 0;
            return;
        }
    }
    boxin->base.yspeed -= 0x18;
    if (boxin->base.yspeed < -0x300)
        boxin->base.yspeed = -0x300;
    if (boxin->base.flags & 2 && boxin->base.unk62 & 4)
    {
        boxin->base.xspeed = 0;
        boxin->base.yspeed = 0;
        if (abs(boxin->kirby3->base.base.base.x - boxin->base.x) < 0x4000
            && abs(boxin->kirby3->base.base.base.y - boxin->base.y) < 0x3000)
            sub_080B597C(boxin);
        else if (!--boxin->base.counter)
        {
            boxin->kirby3 = sub_0803D368(&boxin->base);
            if (boxin->unk83 == 2)
            {
                boxin->unk83 = 1;
                switch (RandLessThan3())
                {
                case 0:
                    boxin->base.xspeed = 0;
                    boxin->base.yspeed = 0;
                    boxin->base.counter = 1;
                    break;
                case 1:
                    boxin->base.xspeed = 0xC0;
                    boxin->base.yspeed = 0x120;
                    boxin->base.counter = 1;
                    break;
                case 2:
                    boxin->base.xspeed = 0x100;
                    boxin->base.yspeed = 0x180;
                    boxin->base.counter = 1;
                    break;
                }
                if (boxin->base.flags & 1)
                    boxin->base.xspeed = -boxin->base.xspeed;
            }
            else
            {
                if (boxin->base.x > boxin->kirby3->base.base.base.x)
                    boxin->base.flags |= 1;
                else
                    boxin->base.flags &= ~1;
                boxin->unk83 = 2;
                switch (RandLessThan3())
                {
                case 0:
                    boxin->base.xspeed = 0;
                    boxin->base.yspeed = 0;
                    boxin->base.counter = 1;
                    break;
                case 1:
                    boxin->base.xspeed = -0xC0;
                    boxin->base.yspeed = 0x120;
                    boxin->base.counter = 1;
                    break;
                case 2:
                    boxin->base.xspeed = -0x100;
                    boxin->base.yspeed = 0x180;
                    boxin->base.counter = 1;
                    break;
                }
                if (boxin->base.flags & 1)
                    boxin->base.xspeed = -boxin->base.xspeed;
            }
        }
    }
}

static void sub_080B4338(struct Object2 *boxin)
{
    if (!gUnk_083540DC[(u8)(boxin->unk9F + 1)].unk8)
    {
        if (!boxin->unk9E)
        {
            if (boxin->object->subtype1 == 3)
                sub_080B5AC8(boxin);
            else
            {
                ObjectSetFunc(boxin, 2, sub_080B408C);
                if (boxin->base.x > boxin->kirby3->base.base.base.x)
                    boxin->base.flags |= 1;
                else
                    boxin->base.flags &= ~1;
                boxin->kirby3 = sub_0803D368(&boxin->base);
                boxin->base.xspeed = 0;
                boxin->base.counter = 1;
            }
            return;
        }
    }
    else
    {
        if (!boxin->unk9E)
        {
            ++boxin->unk9F;
            if (!gUnk_083540DC[boxin->unk9F].unk8)
                --boxin->unk9F;
            boxin->unk9E = gUnk_083540DC[boxin->unk9F].unk8;
            if (gUnk_083540DC[boxin->unk9F].unk9 != 0xFF)
                boxin->unk83 = gUnk_083540DC[boxin->unk9F].unk9;
            if (boxin->unk9F)
            {
                if (gUnk_083540DC[boxin->unk9F].unk0 != gUnk_083540DC[boxin->unk9F - 1].unk0)
                {
                    boxin->base.xspeed = gUnk_083540DC[boxin->unk9F].unk0;
                    if (boxin->base.flags & 1)
                        boxin->base.xspeed = -boxin->base.xspeed;
                }
                if (gUnk_083540DC[boxin->unk9F].unk2 != gUnk_083540DC[boxin->unk9F - 1].unk2)
                    boxin->base.yspeed = gUnk_083540DC[boxin->unk9F].unk2;
            }
            else
            {
                boxin->base.yspeed = gUnk_083540DC[boxin->unk9F].unk2;
                boxin->base.xspeed = gUnk_083540DC[boxin->unk9F].unk0;
                if (boxin->base.flags & 1)
                    boxin->base.xspeed = -boxin->base.xspeed;
            }
        }
    }
    if (boxin->base.flags & 1)
        boxin->base.xspeed -= gUnk_083540DC[boxin->unk9F].unk4;
    else
        boxin->base.xspeed += gUnk_083540DC[boxin->unk9F].unk4;
    boxin->base.yspeed += gUnk_083540DC[boxin->unk9F].unk6;
    --boxin->unk9E;
    if (boxin->base.unk1 == 0xA)
        sub_080B4DF4(boxin);
    if (!(boxin->base.unk62 & 4))
    {
        ObjectSetFunc(boxin, 0xA, sub_080B58C0);
        boxin->base.xspeed = 0;
        boxin->base.yspeed = 0;

    }
    else if (sub_0809D998(boxin))
        boxin->base.xspeed = 0;
}

static void sub_080B4570(struct Object2 *boxin)
{
    if (!gUnk_08354118[(u8)(boxin->unk9F + 1)].unk8)
    {
        if (!boxin->unk9E)
        {
            if (boxin->object->subtype1 == 3)
                sub_080B5AC8(boxin);
            else
            {
                ObjectSetFunc(boxin, 2, sub_080B408C);
                if (boxin->base.x > boxin->kirby3->base.base.base.x)
                    boxin->base.flags |= 1;
                else
                    boxin->base.flags &= ~1;
                boxin->kirby3 = sub_0803D368(&boxin->base);
                boxin->base.xspeed = 0;
                boxin->base.counter = 1;
            }
            return;
        }
    }
    else
    {
        if (!boxin->unk9E)
        {
            ++boxin->unk9F;
            if (!gUnk_08354118[boxin->unk9F].unk8)
                --boxin->unk9F;
            boxin->unk9E = gUnk_08354118[boxin->unk9F].unk8;
            if (gUnk_08354118[boxin->unk9F].unk9 != 0xFF)
                boxin->unk83 = gUnk_08354118[boxin->unk9F].unk9;
            if (boxin->unk9F)
            {
                if (gUnk_08354118[boxin->unk9F].unk0 != gUnk_08354118[boxin->unk9F - 1].unk0)
                {
                    boxin->base.xspeed = gUnk_08354118[boxin->unk9F].unk0;
                    if (boxin->base.flags & 1)
                        boxin->base.xspeed = -boxin->base.xspeed;
                }
                if (gUnk_08354118[boxin->unk9F].unk2 != gUnk_08354118[boxin->unk9F - 1].unk2)
                    boxin->base.yspeed = gUnk_08354118[boxin->unk9F].unk2;
            }
            else
            {
                boxin->base.yspeed = gUnk_08354118[boxin->unk9F].unk2;
                boxin->base.xspeed = gUnk_08354118[boxin->unk9F].unk0;
                if (boxin->base.flags & 1)
                    boxin->base.xspeed = -boxin->base.xspeed;
            }
        }
    }
    if (boxin->base.flags & 1)
        boxin->base.xspeed -= gUnk_08354118[boxin->unk9F].unk4;
    else
        boxin->base.xspeed += gUnk_08354118[boxin->unk9F].unk4;
    boxin->base.yspeed += gUnk_08354118[boxin->unk9F].unk6;
    --boxin->unk9E;
    if (boxin->base.unk1 == 0xA || boxin->base.unk1 == 0x14)
        sub_080B4DF4(boxin);
    if (!(boxin->base.unk62 & 4))
    {
        ObjectSetFunc(boxin, 0xA, sub_080B58C0);
        boxin->base.xspeed = 0;
        boxin->base.yspeed = 0;

    }
    else if (sub_0809D998(boxin))
        boxin->base.xspeed = 0;
}

static void sub_080B479C(struct Object2 *boxin)
{
    if (!gUnk_08354178[(u8)(boxin->unk9F + 1)].unk8)
    {
        if (!boxin->unk9E)
        {
            if (boxin->object->subtype1 == 3)
                sub_080B5AC8(boxin);
            else
            {
                ObjectSetFunc(boxin, 2, sub_080B408C);
                if (boxin->base.x > boxin->kirby3->base.base.base.x)
                    boxin->base.flags |= 1;
                else
                    boxin->base.flags &= ~1;
                boxin->kirby3 = sub_0803D368(&boxin->base);
                boxin->base.xspeed = 0;
                boxin->base.counter = 1;
            }
            return;
        }
    }
    else
    {
        if (!boxin->unk9E)
        {
            ++boxin->unk9F;
            if (!gUnk_08354178[boxin->unk9F].unk8)
                --boxin->unk9F;
            boxin->unk9E = gUnk_08354178[boxin->unk9F].unk8;
            if (gUnk_08354178[boxin->unk9F].unk9 != 0xFF)
                boxin->unk83 = gUnk_08354178[boxin->unk9F].unk9;
            if (boxin->unk9F)
            {
                if (gUnk_08354178[boxin->unk9F].unk0 != gUnk_08354178[boxin->unk9F - 1].unk0)
                {
                    boxin->base.xspeed = gUnk_08354178[boxin->unk9F].unk0;
                    if (boxin->base.flags & 1)
                        boxin->base.xspeed = -boxin->base.xspeed;
                }
                if (gUnk_08354178[boxin->unk9F].unk2 != gUnk_08354178[boxin->unk9F - 1].unk2)
                    boxin->base.yspeed = gUnk_08354178[boxin->unk9F].unk2;
            }
            else
            {
                boxin->base.yspeed = gUnk_08354178[boxin->unk9F].unk2;
                boxin->base.xspeed = gUnk_08354178[boxin->unk9F].unk0;
                if (boxin->base.flags & 1)
                    boxin->base.xspeed = -boxin->base.xspeed;
            }
        }
    }
    if (boxin->base.flags & 1)
        boxin->base.xspeed -= gUnk_08354178[boxin->unk9F].unk4;
    else
        boxin->base.xspeed += gUnk_08354178[boxin->unk9F].unk4;
    boxin->base.yspeed += gUnk_08354178[boxin->unk9F].unk6;
    --boxin->unk9E;
    if (boxin->unk83 == 3 && boxin->base.unk1 == 0xA)
        sub_080B4DF4(boxin);
    if (boxin->unk83 == 6 && boxin->base.unk1 == 7)
        sub_080B50A8(boxin);
    if (!(boxin->base.unk62 & 4))
    {
        ObjectSetFunc(boxin, 0xA, sub_080B58C0);
        boxin->base.xspeed = 0;
        boxin->base.yspeed = 0;

    }
    else if (sub_0809D998(boxin))
        boxin->base.xspeed = 0;
}

static void sub_080B49E8(struct Object2 *boxin)
{
    if (!gUnk_08354214[(u8)(boxin->unk9F + 1)].unk8)
    {
        if (!boxin->unk9E)
        {
            if (boxin->object->subtype1 == 3)
                sub_080B5AC8(boxin);
            else
            {
                ObjectSetFunc(boxin, 2, sub_080B408C);
                if (boxin->base.x > boxin->kirby3->base.base.base.x)
                    boxin->base.flags |= 1;
                else
                    boxin->base.flags &= ~1;
                boxin->kirby3 = sub_0803D368(&boxin->base);
                boxin->base.xspeed = 0;
                boxin->base.counter = 1;
            }
            return;
        }
    }
    else
    {
        if (!boxin->unk9E)
        {
            ++boxin->unk9F;
            if (!gUnk_08354214[boxin->unk9F].unk8)
                --boxin->unk9F;
            boxin->unk9E = gUnk_08354214[boxin->unk9F].unk8;
            if (gUnk_08354214[boxin->unk9F].unk9 != 0xFF)
                boxin->unk83 = gUnk_08354214[boxin->unk9F].unk9;
            if (boxin->unk9F)
            {
                if (gUnk_08354214[boxin->unk9F].unk0 != gUnk_08354214[boxin->unk9F - 1].unk0)
                {
                    boxin->base.xspeed = gUnk_08354214[boxin->unk9F].unk0;
                    if (boxin->base.flags & 1)
                        boxin->base.xspeed = -boxin->base.xspeed;
                }
                if (gUnk_08354214[boxin->unk9F].unk2 != gUnk_08354214[boxin->unk9F - 1].unk2)
                    boxin->base.yspeed = gUnk_08354214[boxin->unk9F].unk2;
            }
            else
            {
                boxin->base.yspeed = gUnk_08354214[boxin->unk9F].unk2;
                boxin->base.xspeed = gUnk_08354214[boxin->unk9F].unk0;
                if (boxin->base.flags & 1)
                    boxin->base.xspeed = -boxin->base.xspeed;
            }
        }
    }
    if (boxin->base.flags & 1)
        boxin->base.xspeed -= gUnk_08354214[boxin->unk9F].unk4;
    else
        boxin->base.xspeed += gUnk_08354214[boxin->unk9F].unk4;
    boxin->base.yspeed += gUnk_08354214[boxin->unk9F].unk6;
    --boxin->unk9E;
    if (boxin->unk83 == 4 && (boxin->base.unk1 == 0xA || boxin->base.unk1 == 0x14))
        sub_080B4DF4(boxin);
    if (boxin->unk83 == 6 && boxin->base.unk1 == 7)
        sub_080B50A8(boxin);
    if (!(boxin->base.unk62 & 4))
    {
        ObjectSetFunc(boxin, 0xA, sub_080B58C0);
        boxin->base.xspeed = 0;
        boxin->base.yspeed = 0;

    }
    else if (sub_0809D998(boxin))
        boxin->base.xspeed = 0;
}

static void sub_080B4C38(struct Object2 *boxin)
{
    boxin->base.flags |= 4;
    if (!gUnk_083542D4[(u8)(boxin->unk9F + 1)].unk8)
    {
        if (!boxin->unk9E)
        {
            ObjectSetFunc(boxin, 0xA, sub_080B58C0);
            boxin->base.xspeed = 0;
            boxin->base.yspeed = 0;
            return;
        }
    }
    else
    {
        if (!boxin->unk9E)
        {
            ++boxin->unk9F;
            if (!gUnk_083542D4[boxin->unk9F].unk8)
                --boxin->unk9F;
            boxin->unk9E = gUnk_083542D4[boxin->unk9F].unk8;
            if (gUnk_083542D4[boxin->unk9F].unk9 != 0xFF)
                boxin->unk83 = gUnk_083542D4[boxin->unk9F].unk9;
            if (boxin->unk9F)
            {
                if (gUnk_083542D4[boxin->unk9F].unk0 != gUnk_083542D4[boxin->unk9F - 1].unk0)
                {
                    boxin->base.xspeed = gUnk_083542D4[boxin->unk9F].unk0;
                    if (boxin->base.flags & 1)
                        boxin->base.xspeed = -boxin->base.xspeed;
                }
                if (gUnk_083542D4[boxin->unk9F].unk2 != gUnk_083542D4[boxin->unk9F - 1].unk2)
                    boxin->base.yspeed = gUnk_083542D4[boxin->unk9F].unk2;
            }
            else
            {
                boxin->base.yspeed = gUnk_083542D4[boxin->unk9F].unk2;
                boxin->base.xspeed = gUnk_083542D4[boxin->unk9F].unk0;
                if (boxin->base.flags & 1)
                    boxin->base.xspeed = -boxin->base.xspeed;
            }
        }
    }
    if (boxin->base.flags & 1)
        boxin->base.xspeed -= gUnk_083542D4[boxin->unk9F].unk4;
    else
        boxin->base.xspeed += gUnk_083542D4[boxin->unk9F].unk4;
    boxin->base.yspeed += gUnk_083542D4[boxin->unk9F].unk6;
    --boxin->unk9E;
    if (boxin->unk83 == 8 && boxin->base.unk1 == 5)
        sub_080B535C(boxin);
}

static void sub_080B4DF4(struct Object2 *boxin)
{
    struct Task *t = TaskCreate(sub_080B4F6C, 0x78, 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    objBase->parent = boxin;
    objBase->counter = 0;
    objBase->roomId = boxin->base.roomId;
    objBase->unk56 = boxin->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = 0x10000400;
    objBase->unk68 = 0x20000043;
    objBase->unk5C |= 0x80000;
    if (boxin->base.flags & 1)
    {
        objBase->x -= 0xC00;
        objBase->flags |= 1;
    }
    else
    {
        objBase->x += 0xC00;
        objBase->flags &= ~1;
    }
    sub_0803E2B0(objBase, -0xA, -8, 0xA, 8);
    PlaySfx(objBase, SE_08D588FC);
}

static void sub_080B4F6C(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *boxin = objBase->parent;

    if (objBase->roomId != 0xFFFF && boxin->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    objBase->unk56 = boxin->base.unk56;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    if (!sub_0806F780(objBase))
    {
        if (++objBase->counter > 5)
            objBase->flags |= 0x1000;
        else
        {
            if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
            if (boxin->base.flags & 1)
            {
                objBase->x -= 0xC00;
                objBase->flags |= 1;
            }
            else
            {
                objBase->x += 0xC00;
                objBase->flags &= ~1;
            }
        }
    }
}

static void sub_080B50A8(struct Object2 *boxin)
{
    struct Task *t = TaskCreate(sub_080B5220, 0x78, 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    objBase->parent = boxin;
    objBase->counter = 0;
    objBase->roomId = boxin->base.roomId;
    objBase->unk56 = boxin->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = 0x10000400;
    objBase->unk68 = 0x20000043;
    objBase->unk5C |= 0x80000;
    if (boxin->base.flags & 1)
    {
        objBase->x -= 0xC00;
        objBase->flags |= 1;
    }
    else
    {
        objBase->x += 0xC00;
        objBase->flags &= ~1;
    }
    sub_0803E2B0(objBase, -0xC, -8, 0x12, 8);
    PlaySfx(objBase, SE_08D588FC);
}

static void sub_080B5220(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *boxin = objBase->parent;

    if (objBase->roomId != 0xFFFF && boxin->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    objBase->unk56 = boxin->base.unk56;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    if (!sub_0806F780(objBase))
    {
        if (++objBase->counter > 8)
            objBase->flags |= 0x1000;
        else
        {
            if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
            if (boxin->base.flags & 1)
            {
                objBase->x -= 0xC00;
                objBase->flags |= 1;
            }
            else
            {
                objBase->x += 0xC00;
                objBase->flags &= ~1;
            }
        }
    }
}

static void sub_080B535C(struct Object2 *boxin)
{
    struct Task *t = TaskCreate(sub_080B54D8, 0x78, 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    objBase->parent = boxin;
    objBase->counter = 0;
    objBase->roomId = boxin->base.roomId;
    objBase->unk56 = boxin->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = 0x10000400;
    objBase->unk68 = 0x20000043;
    objBase->unk5C |= 0x80000;
    if (boxin->base.flags & 1)
    {
        objBase->x -= 0xC00;
        objBase->flags |= 1;
    }
    else
    {
        objBase->x += 0xC00;
        objBase->flags &= ~1;
    }
    sub_0803E2B0(objBase, -0xC, -0x12, 0xA, 6);
    PlaySfx(objBase, SE_08D5894C);
}

static void sub_080B54D8(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *boxin = objBase->parent;

    if (objBase->roomId != 0xFFFF && boxin->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    objBase->unk56 = boxin->base.unk56;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    if (!sub_0806F780(objBase))
    {
        if (++objBase->counter > 0x10)
            objBase->flags |= 0x1000;
        else
        {
            if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
            if (boxin->base.flags & 1)
            {
                objBase->x -= 0xC00;
                objBase->flags |= 1;
            }
            else
            {
                objBase->x += 0xC00;
                objBase->flags &= ~1;
            }
        }
    }
}

static void sub_080B5614(struct Object2 *boxin)
{
    struct Task *t = TaskCreate(sub_080B56F0, 0x78, 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    objBase->parent = boxin;
    objBase->counter = 0;
    objBase->roomId = boxin->base.roomId;
    objBase->unk56 = boxin->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = 0x10010400;
    objBase->unk68 = 0;
    objBase->unk5C |= 0x80000;
    if (boxin->base.flags & 1)
        objBase->flags |= 1;
    else
        objBase->flags &= ~1;
    sub_0803E2B0(objBase, 0x24, -0x40, 0x48, -0x14);
}

static void sub_080B56F0(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *boxin = objBase->parent;

    if (objBase->roomId != 0xFFFF && boxin->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    objBase->x = boxin->base.x;
    objBase->y = boxin->base.y;
    objBase->unk56 = boxin->base.unk56;
    if (!sub_0806F780(objBase))
    {
        if (boxin->base.flags & 1)
            objBase->flags |= 1;
        else
            objBase->flags &= ~1;
        if (boxin->unk83 < 3)
        {
            if (objBase->flags & 0x40000)
            {
                objBase->flags &= ~0x40000;
                ObjectSetFunc(boxin, 3, sub_080B4C38);
                boxin->base.xspeed = 0;
                boxin->base.yspeed = 0;
            }
            else if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
        }
    }
}

void sub_080B5838(struct Object2 *boxin)
{
    if (boxin->object->subtype1 == 3)
        sub_080B5AC8(boxin);
    else
    {
        ObjectSetFunc(boxin, 2, sub_080B408C);
        if (boxin->base.x > boxin->kirby3->base.base.base.x)
            boxin->base.flags |= 1;
        else
            boxin->base.flags &= ~1;
        boxin->kirby3 = sub_0803D368(&boxin->base);
        boxin->base.xspeed = 0;
        boxin->base.counter = 1;
    }
}

static void sub_080B5898(struct Object2 *boxin)
{
    ObjectSetFunc(boxin, 0xA, sub_080B58C0);
    boxin->base.xspeed = 0;
    boxin->base.yspeed = 0x280;
}

static void sub_080B58C0(struct Object2 *boxin)
{
    if (boxin->base.yspeed < -0x40)
        boxin->unk83 = 0xC;
    else if (boxin->base.yspeed < 0x40)
        boxin->unk83 = 0xB;
    if (boxin->base.unk62 & 4)
    {
        ObjectSetFunc(boxin, 0xD, sub_080B5910);
        boxin->base.xspeed = 0;
    }
}

static void sub_080B5910(struct Object2 *boxin)
{
    if (boxin->base.flags & 2)
    {
        if (boxin->object->subtype1 == 3)
            sub_080B5AC8(boxin);
        else
        {
            ObjectSetFunc(boxin, 2, sub_080B408C);
            if (boxin->base.x > boxin->kirby3->base.base.base.x)
                boxin->base.flags |= 1;
            else
                boxin->base.flags &= ~1;
            boxin->kirby3 = sub_0803D368(&boxin->base);
            boxin->base.xspeed = 0;
            boxin->base.counter = 1;
        }
    }
}

static void sub_080B597C(struct Object2 *boxin)
{
    if (Rand16() & 1 && boxin->object->subtype1 && boxin->unk83 == 1)
        sub_080B5AA4(boxin);
    else
    {
        switch (Rand16() & 3)
        {
        case 0:
        default:
            sub_080B5A14(boxin);
            break;
        case 1:
            sub_080B5A38(boxin);
            break;
        case 2:
            sub_080B5A5C(boxin);
            break;
        case 3:
            sub_080B5A80(boxin);
            break;
        }
    }
}

static void sub_080B5A14(struct Object2 *boxin)
{
    ObjectSetFunc(boxin, 3, sub_080B4338);
    boxin->base.xspeed = 0;
    boxin->base.yspeed = 0;
}

static void sub_080B5A38(struct Object2 *boxin)
{
    ObjectSetFunc(boxin, 3, sub_080B4570);
    boxin->base.xspeed = 0;
    boxin->base.yspeed = 0;
}

static void sub_080B5A5C(struct Object2 *boxin)
{
    ObjectSetFunc(boxin, 3, sub_080B479C);
    boxin->base.xspeed = 0;
    boxin->base.yspeed = 0;
}

static void sub_080B5A80(struct Object2 *boxin)
{
    ObjectSetFunc(boxin, 3, sub_080B49E8);
    boxin->base.xspeed = 0;
    boxin->base.yspeed = 0;
}

static void sub_080B5AA4(struct Object2 *boxin)
{
    ObjectSetFunc(boxin, 3, sub_080B4C38);
    boxin->base.xspeed = 0;
    boxin->base.yspeed = 0;
}

static void sub_080B5AC8(struct Object2 *boxin)
{
    ObjectSetFunc(boxin, 0, sub_080B5B0C);
    if (boxin->base.x > boxin->kirby3->base.base.base.x)
        boxin->base.flags |= 1;
    else
        boxin->base.flags &= ~1;
    boxin->base.xspeed = 0;
    boxin->base.counter = 1;
}

static void sub_080B5B0C(struct Object2 *boxin)
{
    boxin->base.flags |= 4;
}
