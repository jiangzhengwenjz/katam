#include "boxy.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"

void sub_080D5B2C(struct Boxy *);
void sub_080D5BB0(struct Boxy *);
void sub_080D5D54(struct Boxy *);
void sub_080D5DD8(struct Boxy *);
void sub_080D6194(struct Boxy *);
void sub_080D6318(struct Boxy *);
void sub_080D63D4(struct Boxy *);
void sub_080D655C(struct Boxy *);
void sub_080D6648(struct Boxy *);
void sub_080D66AC(struct Boxy *);
void sub_080D6988(struct Boxy *);
void sub_080D6B9C(struct Boxy *);
void sub_080D77B8(struct Boxy *);
void sub_080D7824(struct Boxy *);
void sub_080D787C(struct Boxy *);
void sub_080D7958(struct Boxy *);

const struct Unk_02021590 gUnk_08356184[] = {
    { 0x338,   0, 0 },
    { 0x338,   1, 0 },
    { 0x338,   2, 0 },
    { 0x338,   3, 0 },
    { 0x338,   4, 0 },
    { 0x338,   5, 0 },
    { 0x338,   6, 0 },
    { 0x338,   7, 0 },
    { 0x338,   8, 0 },
    { 0x338,   9, 0 },
    { 0x338, 0xA, 0 },
    { 0x338, 0xB, 0 },
    { 0x338, 0xC, 0 },
    { 0x338, 0xD, 0 },
    { 0x338, 0xE, 0 },
    { 0x338, 0xF, 0 },
};

const struct Unk_02021590 gUnk_083561C4[] = {
    { 0x338, 0x10, 0 },
    { 0x338, 0x11, 0 },
};

const struct Unk_02021590 gUnk_083561CC[] = {
    { 0x338, 0x12,  2 },
    { 0x338,    0,  2 },
    { 0x338, 0x12,  2 },
    { 0x338,    0,  2 },
    { 0x338, 0x12,  2 },
    { 0x338,    0,  2 },
    { 0x338, 0x12,  2 },
    { 0x338,    0,  2 },
    { 0x338, 0x12,  2 },
    { 0x338,    0,  2 },
    { 0x338, 0x12,  2 },
    { 0x338,    0,  2 },
    { 0x338, 0x12,  2 },
    { 0x338,    0,  2 },
    { 0x338,    0, -1 },
};

const struct Unk_02021590 gUnk_08356208[] = {
    { 0x338, 0x12, 2 },
    { 0x338,    0, 2 },
    { 0x338,    0, 0 },
};

const u8 gUnk_08356214[] = { 0, 2, 0, 1, 0, 1, 2, 1, 0, 2 };

void *CreateBoxy(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Boxy), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Boxy *tmp = TaskGetStructPtr(t), *boxy = tmp;

    InitObject(&boxy->obj2, template, a2);
    boxy->unkB4 = NULL;
    boxy->unkB8 = 0;
    boxy->obj2.base.unkC |= 1;
    boxy->obj2.base.flags |= 0x2000000;
    boxy->obj2.base.flags |= 0x200;
    boxy->obj2.base.flags |= 0x200000;
    boxy->obj2.base.unk5C &= ~7;
    boxy->obj2.base.unk5C |= 3;
    boxy->obj2.base.unk5C |= 0xA0;
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    sub_0803E2B0(&boxy->obj2.base, -0x14, -0xC, 8, 0xC);
    sub_0803E308(&boxy->obj2.base, -0x10, -0x12, 0xA, 9);
    ObjectInitSprite(&boxy->obj2);
    boxy->obj2.base.sprite.unk14 = 0x6C0;
    boxy->obj2.unk9E = 0;
    boxy->obj2.unk7C = sub_080D7958;
    sub_080D77B8(boxy);
    return boxy;
}

void sub_080D571C(struct Boxy *boxy)
{
    boxy->obj2.kirby3 = sub_0803D368(&boxy->obj2.base);
    boxy->obj2.base.flags |= 4;
    if (!(boxy->obj2.kirby3->base.base.base.unkC & 0x8000)
        && boxy->obj2.base.roomId == boxy->obj2.kirby3->base.base.base.roomId)
    {
        if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
            boxy->obj2.base.flags |= 1;
        else
            boxy->obj2.base.flags &= ~1;
        if (sub_08039430(&boxy->obj2.kirby3->base.base,
                boxy->obj2.object->x * 0x100, boxy->obj2.object->y * 0x100,
                boxy->obj2.object->unk1A, boxy->obj2.object->unk1C,
                boxy->obj2.object->unk1E, boxy->obj2.object->unk20))
        {
            Macro_081003EC(&boxy->obj2, &boxy->obj2.kirby3->base.base.base);
            boxy->obj2.base.flags &= ~0x200;
            boxy->obj2.unk85 = 0;
            sub_080D777C(boxy);
            Macro_08100F18(&boxy->obj2);
        }
    }
}

void sub_080D5930(struct Boxy *boxy)
{
    s16 a;
    s32 b;

    if (boxy->obj2.subtype)
    {
        a = 0x60;
        b = 2;
    }
    else if (boxy->obj2.unk80 <= gUnk_08351530[5][gUnk_0203AD30 - 1] >> 1)
    {
        a = 0x48;
        b = 2;
    }
    else
    {
        a = 0x48;
        b = 4;
    }
    ++b; --b;
    if ((boxy->obj2.unk85 & 0xF) > 5)
    {
        boxy->obj2.unk85 = 0;
        sub_080D6B9C(boxy);
        return;
    }
    if ((++boxy->obj2.unk85 / 0x10) < b)
    {
        if (Rand16() & 3)
        {
            boxy->obj2.unk85 += 0x10;
            if (abs(boxy->obj2.kirby3->base.base.base.x - boxy->obj2.base.x) < a * 0x100)
            {
                if (!(Rand16() & 1))
                    sub_080D5B2C(boxy);
            }
            else
            {
                if (!(Rand16() & 1))
                {
                    if (Rand16() & 3)
                        sub_080D5B2C(boxy);
                    else
                        sub_080D5D54(boxy);
                }
            }
            return;
        }
    }
    boxy->obj2.unk85 &= 0xF;
    if (!(Rand16() & 3))
        sub_080D6988(boxy);
    else
    {
        if (Rand16() & 1)
            sub_080D655C(boxy);
        else
            sub_080D7824(boxy);
    }
    ++boxy->obj2.unk85;
}

void sub_080D5AB0(struct Boxy *boxy)
{
    boxy->obj2.base.yspeed -= 0x6A;
    if (boxy->obj2.base.yspeed < -0x300)
        boxy->obj2.base.yspeed = -0x300;
    boxy->obj2.base.flags |= 4;
    if (boxy->obj2.base.unk62 & 4)
    {
        boxy->obj2.base.xspeed = 0;
        boxy->obj2.base.yspeed = 0;
        if (!--boxy->obj2.base.counter)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            sub_080D5930(boxy);
        }
    }
}

void sub_080D5B2C(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, sub_080D5BB0);
    boxy->obj2.kirby3 = sub_0803D368(&boxy->obj2.base);
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    if (boxy->obj2.subtype)
        boxy->obj2.base.xspeed = 0x200;
    else
        boxy->obj2.base.xspeed = 0x100;
    boxy->obj2.base.yspeed = 0x200;
    if (boxy->obj2.base.flags & 1)
        boxy->obj2.base.xspeed = -boxy->obj2.base.xspeed;
    boxy->obj2.base.flags &= ~2;
    boxy->obj2.base.counter = 0x10;
}

void sub_080D5BB0(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj2);
    boxy->obj2.base.yspeed -= 0x6A;
    if (boxy->obj2.base.yspeed < -0x300)
        boxy->obj2.base.yspeed = -0x300;
    boxy->obj2.base.flags |= 4;
    if (boxy->obj2.base.unk62 & 4)
    {
        boxy->obj2.base.xspeed = 0;
        boxy->obj2.base.yspeed = 0;
        if (!--boxy->obj2.base.counter)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            sub_080D5930(boxy);
            return;
        }
    }
    if (boxy->obj2.base.unk62 & 1)
        boxy->obj2.base.xspeed = 0;
}

void sub_080D5D54(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, sub_080D5DD8);
    boxy->obj2.kirby3 = sub_0803D368(&boxy->obj2.base);
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    if (boxy->obj2.subtype)
        boxy->obj2.base.xspeed = -0x200;
    else
        boxy->obj2.base.xspeed = -0x100;
    boxy->obj2.base.yspeed = 0x200;
    if (boxy->obj2.base.flags & 1)
        boxy->obj2.base.xspeed = -boxy->obj2.base.xspeed;
    boxy->obj2.base.flags &= ~2;
    boxy->obj2.base.counter = 0x10;
}

void sub_080D5DD8(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj2);
    boxy->obj2.base.yspeed -= 0x6A;
    if (boxy->obj2.base.yspeed < -0x300)
        boxy->obj2.base.yspeed = -0x300;
    boxy->obj2.base.flags |= 4;
    if (boxy->obj2.base.unk62 & 4)
    {
        boxy->obj2.base.xspeed = 0;
        boxy->obj2.base.yspeed = 0;
        if (!--boxy->obj2.base.counter)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            sub_080D5930(boxy);
            return;
        }
    }
    if (boxy->obj2.base.unk62 & 2)
        boxy->obj2.base.xspeed = 0;
}

void sub_080D5F7C(struct Boxy *boxy)
{
    boxy->obj2.base.yspeed -= 0x3B;
    if (boxy->obj2.base.yspeed < -0x300)
        boxy->obj2.base.yspeed = -0x300;
    boxy->obj2.base.flags |= 4;
    if (boxy->obj2.unk83 == 2)
    {
        if (boxy->obj2.base.unk1 == 1)
            boxy->obj2.base.yspeed = 0x440;
        if (boxy->obj2.base.flags & 2)
            boxy->obj2.unk83 = 3;
    }
    else
    {
        if (boxy->obj2.base.yspeed <= -0x40)
            boxy->obj2.unk83 = 4;
        if (boxy->obj2.base.unk62 & 4)
        {
            PlaySfx(&boxy->obj2.base, 407);
            sub_0806FE64(1, &boxy->obj2.base);
            sub_08089864(&boxy->obj2.base, -8, 0xC, (boxy->obj2.base.flags & 1) ^ 1);
            sub_08089864(&boxy->obj2.base, -0x14, 0xC, boxy->obj2.base.flags & 1);
            if (!--boxy->obj2.base.counter)
                sub_080D787C(boxy);
            else
                boxy->obj2.unk83 = 2;
        }
    }
}

void sub_080D60B8(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 7, sub_080D6194);
    if (boxy->obj2.subtype)
    {
        boxy->obj2.base.xspeed = 0x440;
        boxy->obj2.base.counter = 0x19;
    }
    else
    {
        boxy->obj2.base.xspeed = 0x360;
        boxy->obj2.base.counter = 0x28;
    }
    if (boxy->obj2.base.flags & 1)
        boxy->obj2.base.xspeed = -boxy->obj2.base.xspeed;
    boxy->obj2.base.flags &= ~2;
    PlaySfx(&boxy->obj2.base, 406);
}

void sub_080D6194(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj2);
    boxy->obj2.base.flags |= 4;
    if (!--boxy->obj2.base.counter)
    {
        ObjectSetFunc(boxy, 0, sub_080D5AB0);
        boxy->obj2.base.xspeed = 0;
        boxy->obj2.base.yspeed = 0x200;
        boxy->obj2.base.counter = 0x10;
        boxy->obj2.base.flags &= ~2;
        sub_080D5930(boxy);
        return;
    }
    if (boxy->obj2.base.unk62 & 1)
        sub_080D6318(boxy);
}

void sub_080D6318(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 8, sub_080D63D4);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
    boxy->obj2.base.counter = 5;
    boxy->obj2.base.flags &= ~2;
    sub_0806FE64(1, &boxy->obj2.base);
    PlaySfx(&boxy->obj2.base, 356);
}

void sub_080D63D4(struct Boxy *boxy)
{
    boxy->obj2.base.yspeed -= 0x10;
    if (boxy->obj2.base.yspeed < -0x300)
        boxy->obj2.base.yspeed = -0x300;
    if (boxy->obj2.unk83 == 8)
    {
        if (!--boxy->obj2.base.counter)
        {
            boxy->obj2.unk83 = 9;
            boxy->obj2.base.xspeed = -0x100;
            boxy->obj2.base.yspeed = 0x300;
            if (boxy->obj2.base.flags & 1)
                boxy->obj2.base.xspeed = -boxy->obj2.base.xspeed;
        }
    }
    else if (boxy->obj2.unk83 == 9)
    {
        if (boxy->obj2.base.unk62 & 4)
        {
            PlaySfx(&boxy->obj2.base, 356);
            sub_0806FE64(3, &boxy->obj2.base);
            sub_08089864(&boxy->obj2.base, -0xC, 0xA, boxy->obj2.base.flags);
            boxy->obj2.unk83 = 0xA;
            boxy->obj2.base.xspeed = -0x180;
            boxy->obj2.base.flags &= ~2;
            boxy->obj2.base.counter = 4;
            if (boxy->obj2.base.flags & 1)
                boxy->obj2.base.xspeed = -boxy->obj2.base.xspeed;
        }
    }
    else
    {
        if (!--boxy->obj2.base.counter)
            boxy->obj2.base.xspeed = 0;
        if (boxy->obj2.base.flags & 2)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            sub_080D5930(boxy);
        }
    }
}

void sub_080D655C(struct Boxy *boxy)
{
    u8 id = 0;

    ObjectSetFunc(boxy, 1, sub_080D6648);
    boxy->obj2.kirby3 = sub_0803D368(&boxy->obj2.base);
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    if (abs(boxy->obj2.kirby3->base.base.base.x - boxy->obj2.base.x) > 0x3000)
    {
        id += 3;
        if (abs(boxy->obj2.kirby3->base.base.base.x - boxy->obj2.base.x) > 0x6000)
            id += 3;
    }
    id += Rand16() & 3;
    boxy->obj2.unk9F = gUnk_08356214[id];
    switch (boxy->obj2.unk9F)
    {
    case 1:
        boxy->obj2.base.counter = 0x1B;
        break;
    case 2:
        boxy->obj2.base.counter = 0x21;
        break;
    default:
        boxy->obj2.base.counter = 0x17;
        break;
    }
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
}

void sub_080D6648(struct Boxy *boxy)
{
    if (!--boxy->obj2.base.counter)
        sub_080D66AC(boxy);
    if (boxy->obj2.base.counter < 8)
    {
        boxy->obj2.base.objBase54 += 2 * (gUnk_0203AD40 & 2);
        ++boxy->obj2.base.objBase55;
    }
    else if (boxy->obj2.base.counter < 0x10)
        boxy->obj2.base.objBase54 += gUnk_0203AD40 & 2;
}
