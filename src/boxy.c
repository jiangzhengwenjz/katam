#include "boxy.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"

static void sub_080D5B2C(struct Boxy *);
static void sub_080D5BB0(struct Boxy *);
static void sub_080D5D54(struct Boxy *);
static void sub_080D5DD8(struct Boxy *);
static void sub_080D6194(struct Boxy *);
static void sub_080D6318(struct Boxy *);
static void sub_080D63D4(struct Boxy *);
static void sub_080D655C(struct Boxy *);
static void sub_080D6648(struct Boxy *);
static void sub_080D66AC(struct Boxy *);
static void sub_080D6718(struct Boxy *);
static void sub_080D68B0(struct Boxy *);
static void sub_080D6988(struct Boxy *);
static void sub_080D6A30(struct Boxy *);
static void sub_080D6B9C(struct Boxy *);
static void sub_080D6C0C(struct Boxy *);
static void sub_080D6E1C(struct Boxy *, u8);
static void sub_080D712C(struct Object *);
static void sub_080D730C(struct Object *);
static void sub_080D73C8(struct Object *);
static void sub_080D77B8(struct Boxy *);
static void sub_080D77DC(struct Boxy *);
static void sub_080D7824(struct Boxy *);
static void sub_080D787C(struct Boxy *);
static void sub_080D78D0(struct Boxy *);
static void sub_080D78F0(struct Boxy *);
static void sub_080D7914(struct Boxy *);
static void sub_080D792C(struct Boxy *);
static void sub_080D7958(struct Boxy *);

const struct AnimInfo gUnk_08356184[] = {
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

const struct AnimInfo gUnk_083561C4[] = {
    { 0x338, 0x10, 0 },
    { 0x338, 0x11, 0 },
};

const struct AnimInfo gUnk_083561CC[] = {
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

const struct AnimInfo gUnk_08356208[] = {
    { 0x338, 0x12, 2 },
    { 0x338,    0, 2 },
    { 0x338,    0, 0 },
};

static const u8 gUnk_08356214[] = { 0, 2, 0, 1, 0, 1, 2, 1, 0, 2 };

void *CreateBoxy(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Boxy), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Boxy *tmp = TaskGetStructPtr(t), *boxy = tmp;

    InitObject(&boxy->obj, template, a2);
    boxy->unkB4 = NULL;
    boxy->unkB8 = 0;
    boxy->obj.base.unkC |= 1;
    boxy->obj.base.flags |= 0x2000000;
    boxy->obj.base.flags |= 0x200;
    boxy->obj.base.flags |= 0x200000;
    boxy->obj.base.unk5C &= ~7;
    boxy->obj.base.unk5C |= 3;
    boxy->obj.base.unk5C |= 0xA0;
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    sub_0803E2B0(&boxy->obj.base, -0x14, -0xC, 8, 0xC);
    ObjectSetBounds(&boxy->obj.base, -0x10, -0x12, 0xA, 9);
    ObjectInitSprite(&boxy->obj);
    boxy->obj.base.sprite.unk14 = 0x6C0;
    boxy->obj.unk9E = 0;
    boxy->obj.unk7C = sub_080D7958;
    sub_080D77B8(boxy);
    return boxy;
}

static void sub_080D571C(struct Boxy *boxy)
{
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    boxy->obj.base.flags |= 4;
    if (!(boxy->obj.kirby3->base.unkC & 0x8000)
        && boxy->obj.base.roomId == boxy->obj.kirby3->base.roomId)
    {
        if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
            boxy->obj.base.flags |= 1;
        else
            boxy->obj.base.flags &= ~1;
        if (Macro_08039430_2(&boxy->obj.kirby3->base, &boxy->obj))
        {
            Macro_081003EC(&boxy->obj, &boxy->obj.kirby3->base);
            boxy->obj.base.flags &= ~0x200;
            boxy->obj.unk85 = 0;
            sub_080D777C(boxy);
            Macro_08100F18(&boxy->obj);
        }
    }
}

static void sub_080D5930(struct Boxy *boxy)
{
    s16 a;
    s32 b;

    if (boxy->obj.subtype)
    {
        a = 0x60;
        b = 2;
    }
    else if (boxy->obj.unk80 <= gUnk_08351530[5][gNumHumanPlayers - 1] >> 1)
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
    if ((boxy->obj.unk85 & 0xF) > 5)
    {
        boxy->obj.unk85 = 0;
        sub_080D6B9C(boxy);
        return;
    }
    if ((++boxy->obj.unk85 / 0x10) < b)
    {
        if (Rand16() & 3)
        {
            boxy->obj.unk85 += 0x10;
            if (abs(boxy->obj.kirby3->base.x - boxy->obj.base.x) < a * 0x100)
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
    boxy->obj.unk85 &= 0xF;
    if (!(Rand16() & 3))
        sub_080D6988(boxy);
    else
    {
        if (Rand16() & 1)
            sub_080D655C(boxy);
        else
            sub_080D7824(boxy);
    }
    ++boxy->obj.unk85;
}

static void sub_080D5AB0(struct Boxy *boxy)
{
    boxy->obj.base.yspeed -= 0x6A;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    boxy->obj.base.flags |= 4;
    if (boxy->obj.base.unk62 & 4)
    {
        boxy->obj.base.xspeed = 0;
        boxy->obj.base.yspeed = 0;
        if (!--boxy->obj.base.counter)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj.base.xspeed = 0;
            boxy->obj.base.yspeed = 0x200;
            boxy->obj.base.counter = 0x10;
            boxy->obj.base.flags &= ~2;
            sub_080D5930(boxy);
        }
    }
}

static void sub_080D5B2C(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, sub_080D5BB0);
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    if (boxy->obj.subtype)
        boxy->obj.base.xspeed = 0x200;
    else
        boxy->obj.base.xspeed = 0x100;
    boxy->obj.base.yspeed = 0x200;
    if (boxy->obj.base.flags & 1)
        boxy->obj.base.xspeed = -boxy->obj.base.xspeed;
    boxy->obj.base.flags &= ~2;
    boxy->obj.base.counter = 0x10;
}

static void sub_080D5BB0(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj);
    boxy->obj.base.yspeed -= 0x6A;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    boxy->obj.base.flags |= 4;
    if (boxy->obj.base.unk62 & 4)
    {
        boxy->obj.base.xspeed = 0;
        boxy->obj.base.yspeed = 0;
        if (!--boxy->obj.base.counter)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj.base.xspeed = 0;
            boxy->obj.base.yspeed = 0x200;
            boxy->obj.base.counter = 0x10;
            boxy->obj.base.flags &= ~2;
            sub_080D5930(boxy);
            return;
        }
    }
    if (boxy->obj.base.unk62 & 1)
        boxy->obj.base.xspeed = 0;
}

static void sub_080D5D54(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, sub_080D5DD8);
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    if (boxy->obj.subtype)
        boxy->obj.base.xspeed = -0x200;
    else
        boxy->obj.base.xspeed = -0x100;
    boxy->obj.base.yspeed = 0x200;
    if (boxy->obj.base.flags & 1)
        boxy->obj.base.xspeed = -boxy->obj.base.xspeed;
    boxy->obj.base.flags &= ~2;
    boxy->obj.base.counter = 0x10;
}

static void sub_080D5DD8(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj);
    boxy->obj.base.yspeed -= 0x6A;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    boxy->obj.base.flags |= 4;
    if (boxy->obj.base.unk62 & 4)
    {
        boxy->obj.base.xspeed = 0;
        boxy->obj.base.yspeed = 0;
        if (!--boxy->obj.base.counter)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj.base.xspeed = 0;
            boxy->obj.base.yspeed = 0x200;
            boxy->obj.base.counter = 0x10;
            boxy->obj.base.flags &= ~2;
            sub_080D5930(boxy);
            return;
        }
    }
    if (boxy->obj.base.unk62 & 2)
        boxy->obj.base.xspeed = 0;
}

static void sub_080D5F7C(struct Boxy *boxy)
{
    boxy->obj.base.yspeed -= 0x3B;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    boxy->obj.base.flags |= 4;
    if (boxy->obj.unk83 == 2)
    {
        if (boxy->obj.base.header.unk1 == 1)
            boxy->obj.base.yspeed = 0x440;
        if (boxy->obj.base.flags & 2)
            boxy->obj.unk83 = 3;
    }
    else
    {
        if (boxy->obj.base.yspeed <= -0x40)
            boxy->obj.unk83 = 4;
        if (boxy->obj.base.unk62 & 4)
        {
            PlaySfx(&boxy->obj.base, SE_BOXY_COLLISION);
            RequestScreenShake(1, &boxy->obj.base);
            sub_08089864(&boxy->obj.base, -8, 0xC, (boxy->obj.base.flags & 1) ^ 1);
            sub_08089864(&boxy->obj.base, -0x14, 0xC, boxy->obj.base.flags & 1);
            if (!--boxy->obj.base.counter)
                sub_080D787C(boxy);
            else
                boxy->obj.unk83 = 2;
        }
    }
}

static void sub_080D60B8(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 7, sub_080D6194);
    if (boxy->obj.subtype)
    {
        boxy->obj.base.xspeed = 0x440;
        boxy->obj.base.counter = 0x19;
    }
    else
    {
        boxy->obj.base.xspeed = 0x360;
        boxy->obj.base.counter = 0x28;
    }
    if (boxy->obj.base.flags & 1)
        boxy->obj.base.xspeed = -boxy->obj.base.xspeed;
    boxy->obj.base.flags &= ~2;
    PlaySfx(&boxy->obj.base, SE_BOXY_DASH);
}

static void sub_080D6194(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj);
    boxy->obj.base.flags |= 4;
    if (!--boxy->obj.base.counter)
    {
        ObjectSetFunc(boxy, 0, sub_080D5AB0);
        boxy->obj.base.xspeed = 0;
        boxy->obj.base.yspeed = 0x200;
        boxy->obj.base.counter = 0x10;
        boxy->obj.base.flags &= ~2;
        sub_080D5930(boxy);
        return;
    }
    if (boxy->obj.base.unk62 & 1)
        sub_080D6318(boxy);
}

static void sub_080D6318(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 8, sub_080D63D4);
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
    boxy->obj.base.counter = 5;
    boxy->obj.base.flags &= ~2;
    RequestScreenShake(1, &boxy->obj.base);
    PlaySfx(&boxy->obj.base, SE_BOSS_GROUND_POUND_ATTACK);
}

static void sub_080D63D4(struct Boxy *boxy)
{
    boxy->obj.base.yspeed -= 0x10;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    if (boxy->obj.unk83 == 8)
    {
        if (!--boxy->obj.base.counter)
        {
            boxy->obj.unk83 = 9;
            boxy->obj.base.xspeed = -0x100;
            boxy->obj.base.yspeed = 0x300;
            if (boxy->obj.base.flags & 1)
                boxy->obj.base.xspeed = -boxy->obj.base.xspeed;
        }
    }
    else if (boxy->obj.unk83 == 9)
    {
        if (boxy->obj.base.unk62 & 4)
        {
            PlaySfx(&boxy->obj.base, SE_BOSS_GROUND_POUND_ATTACK);
            RequestScreenShake(3, &boxy->obj.base);
            sub_08089864(&boxy->obj.base, -0xC, 0xA, boxy->obj.base.flags);
            boxy->obj.unk83 = 0xA;
            boxy->obj.base.xspeed = -0x180;
            boxy->obj.base.flags &= ~2;
            boxy->obj.base.counter = 4;
            if (boxy->obj.base.flags & 1)
                boxy->obj.base.xspeed = -boxy->obj.base.xspeed;
        }
    }
    else
    {
        if (!--boxy->obj.base.counter)
            boxy->obj.base.xspeed = 0;
        if (boxy->obj.base.flags & 2)
        {
            ObjectSetFunc(boxy, 0, sub_080D5AB0);
            boxy->obj.base.xspeed = 0;
            boxy->obj.base.yspeed = 0x200;
            boxy->obj.base.counter = 0x10;
            boxy->obj.base.flags &= ~2;
            sub_080D5930(boxy);
        }
    }
}

static void sub_080D655C(struct Boxy *boxy)
{
    u8 id = 0;

    ObjectSetFunc(boxy, 1, sub_080D6648);
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    if (abs(boxy->obj.kirby3->base.x - boxy->obj.base.x) > 0x3000)
    {
        id += 3;
        if (abs(boxy->obj.kirby3->base.x - boxy->obj.base.x) > 0x6000)
            id += 3;
    }
    id += Rand16() & 3;
    boxy->obj.unk9F = gUnk_08356214[id];
    switch (boxy->obj.unk9F)
    {
    case 1:
        boxy->obj.base.counter = 0x1B;
        break;
    case 2:
        boxy->obj.base.counter = 0x21;
        break;
    default:
        boxy->obj.base.counter = 0x17;
        break;
    }
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
}

static void sub_080D6648(struct Boxy *boxy)
{
    if (!--boxy->obj.base.counter)
        sub_080D66AC(boxy);
    if (boxy->obj.base.counter < 8)
    {
        boxy->obj.base.objBase54 += 2 * (gUnk_0203AD40 & 2);
        ++boxy->obj.base.objBase55;
    }
    else if (boxy->obj.base.counter < 0x10)
        boxy->obj.base.objBase54 += gUnk_0203AD40 & 2;
}

static void sub_080D66AC(struct Boxy *boxy)
{
    u8 unk9F = boxy->obj.unk9F;

    ObjectSetFunc(boxy, 2, sub_080D6718);
    switch (unk9F)
    {
    case 1:
        boxy->obj.base.xspeed = 0x240;
        boxy->obj.base.yspeed = 0x2A0;
        break;
    case 2:
        boxy->obj.base.xspeed = 0x300;
        boxy->obj.base.yspeed = 0x300;
        break;
    default:
        boxy->obj.base.xspeed = 0x1C0;
        boxy->obj.base.yspeed = 0x220;
        break;
    }
    boxy->obj.base.flags |= 0x20;
    if (boxy->obj.base.flags & 1)
        boxy->obj.base.xspeed = -boxy->obj.base.xspeed;
}

static void sub_080D6718(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj);
    boxy->obj.base.yspeed -= 0x10;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    boxy->obj.base.flags |= 4;
    if (boxy->obj.unk83 == 2)
    {
        if (boxy->obj.base.yspeed <= 0x40)
            boxy->obj.unk83 = 3;
    }
    else
    {
        if (boxy->obj.base.yspeed <= -0x80)
            boxy->obj.unk83 = 4;
    }
    if (boxy->obj.unk83 == 4 && boxy->obj.base.unk62 & 4)
        sub_080D68B0(boxy);
    if (boxy->obj.base.unk62 & 1)
        boxy->obj.base.xspeed = 0;
}

static void sub_080D68B0(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 5, sub_080D77DC);
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
    PlaySfx(&boxy->obj.base, SE_BOXY_COLLISION);
    RequestScreenShake(1, &boxy->obj.base);
    sub_08089864(&boxy->obj.base, -8, 0xC, (boxy->obj.base.flags & 1) ^ 1);
    sub_08089864(&boxy->obj.base, -0x14, 0xC, boxy->obj.base.flags & 1);
}

static void sub_080D6988(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 2, sub_080D6A30);
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
    if (boxy->obj.subtype)
    {
        if (Rand16() & 1)
            boxy->obj.base.counter = 1;
        else
            boxy->obj.base.counter = 2;
    }
    else
    {
        if (Rand16() & 1)
            boxy->obj.base.counter = 1;
        else
            boxy->obj.base.counter = 3;
    }
}

static void sub_080D6A30(struct Boxy *boxy)
{
    boxy->obj.base.yspeed -= 0x3B;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    boxy->obj.base.flags |= 4;
    if (boxy->obj.unk83 == 2)
    {
        if (boxy->obj.base.header.unk1 == 1)
            boxy->obj.base.yspeed = 0x420;
        if (boxy->obj.base.flags & 2)
            boxy->obj.unk83 = 3;
    }
    else
    {
        if (boxy->obj.base.yspeed <= -0x40)
            boxy->obj.unk83 = 4;
        if (boxy->obj.base.unk62 & 4)
        {
            PlaySfx(&boxy->obj.base, SE_BOXY_COLLISION);
            RequestScreenShake(1, &boxy->obj.base);
            sub_08089864(&boxy->obj.base, -8, 0xC, (boxy->obj.base.flags & 1) ^ 1);
            sub_08089864(&boxy->obj.base, -0x14, 0xC, boxy->obj.base.flags & 1);
            if (!--boxy->obj.base.counter)
            {
                ObjectSetFunc(boxy, 0, sub_080D5AB0);
                boxy->obj.base.xspeed = 0;
                boxy->obj.base.yspeed = 0x200;
                boxy->obj.base.counter = 0x10;
                boxy->obj.base.flags &= ~2;
                sub_080D5930(boxy);
            }
            else
                boxy->obj.unk83 = 2;
        }
    }
}

static void sub_080D6B9C(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, sub_080D6C0C);
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    boxy->obj.base.xspeed = -0x200;
    boxy->obj.base.yspeed = 0x200;
    if (boxy->obj.base.flags & 1)
        boxy->obj.base.xspeed = -boxy->obj.base.xspeed;
    boxy->obj.base.flags &= ~2;
    boxy->obj.base.counter = 0x10;
}

static void sub_080D6C0C(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj);
    boxy->obj.base.yspeed -= 0x6A;
    if (boxy->obj.base.yspeed < -0x300)
        boxy->obj.base.yspeed = -0x300;
    boxy->obj.base.flags |= 4;
    if (boxy->obj.base.unk62 & 4)
    {
        boxy->obj.base.xspeed = 0;
        boxy->obj.base.yspeed = 0;
        if (!--boxy->obj.base.counter)
        {
            sub_080D78F0(boxy);
            return;
        }
    }
    if (boxy->obj.base.unk62 & 2)
        boxy->obj.base.xspeed = 0;
}

static void sub_080D6D90(struct Boxy *boxy)
{
    if (boxy->obj.base.header.unk1 == 9)
        sub_080D6E1C(boxy, RandLessThan3());
    if (boxy->obj.base.flags & 2)
    {
        ObjectSetFunc(boxy, 0, sub_080D5AB0);
        boxy->obj.base.xspeed = 0;
        boxy->obj.base.yspeed = 0x200;
        boxy->obj.base.counter = 0x10;
        boxy->obj.base.flags &= ~2;
        sub_080D5930(boxy);
    }
}

static void sub_080D6E1C(struct Boxy *boxy, u8 a2)
{
    s32 x = boxy->obj.base.flags & 1 ? (boxy->obj.base.x >> 8) - 8 : (boxy->obj.base.x >> 8) + 8;
    s32 y = (boxy->obj.base.y >> 8) - 4;
    struct Object *box = CreateObjTemplateAndObj(boxy->obj.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BOXY_BOX,
        boxy->obj.base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    box->base.parent = boxy;
}

void *CreateBoxyBox(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(t), *box = tmp;

    InitObject(box, template, a2);
    box->base.flags |= 0x10000;
    box->base.unkC |= 2;
    box->unk9E = 0;
    box->unk7C = sub_0809F840;
    sub_0803E2B0(&box->base, -5, -5, 5, 6);
    ObjectSetBounds(&box->base, -6, -6, 6, 8);
    ObjectInitSprite(box);
    sub_080D7020(box);
    PlaySfx(&box->base, SE_BOXY_THROW_PRESENT);
    return box;
}

void sub_080D7020(struct Object *box)
{
    ObjectSetFunc(box, 0, sub_080D712C);
    if (box->objTemplate->subtype1)
        box->base.flags |= 1;
    switch (box->subtype)
    {
    case 0:
        box->base.xspeed = 0x180;
        box->base.yspeed = 0x220;
        break;
    case 1:
        box->base.xspeed = 0x220;
        box->base.yspeed = 0x1C0;
        break;
    case 2:
        box->base.xspeed = 0x280;
        box->base.yspeed = 0x180;
        break;
    }
    if (box->base.flags & 1)
        box->base.xspeed = -box->base.xspeed;
    box->base.counter = 0x1E0;
    Macro_081003EC(box, &box->kirby3->base);
}

static void sub_080D712C(struct Object *box)
{
    ObjXSomething(box);
    box->base.flags |= 4;
    if (box->base.unk62 & 4)
    {
        if (!box->unk9E)
        {
            box->base.xspeed = 0x80;
            box->base.yspeed = 0xC0;
            box->unk9E = 1;
            if (box->base.flags & 1)
                box->base.xspeed = -box->base.xspeed;
        }
        else
        {
            box->base.xspeed = 0;
            box->base.yspeed = 0;
            if (abs(box->kirby3->base.x - box->base.x) < 0x3000)
            {
                sub_080D730C(box);
                return;
            }
        }
        if (!--box->base.counter)
        {
            sub_080D730C(box);
            return;
        }
        if (!(box->base.counter & 0xF))
            box->kirby3 = FindTargetKirby(&box->base);
    }
    if (box->base.unk62 & 1)
    {
        box->base.xspeed = -box->base.xspeed;
        box->base.flags ^= 1;
    }
}

static void sub_080D730C(struct Object *box)
{
    ObjectSetFunc(box, 0, sub_080D73C8);
    box->base.flags |= 0x200;
    box->base.counter = 0x3C;
    CreateEffectObject(&box->base, 0, 0x2AC, 0);
    PlaySfx(&box->base, SE_BOXY_OPEN_PRESENT);
}

static void sub_080D73C8(struct Object *box)
{
    struct Boxy *boxy = box->base.parent;
    struct Object *pb;

    if (box->base.counter == 0x34)
    {
        box->unk83 = 1;
        switch (RandLessThan3())
        {
        case 0:
            if (boxy->unkB8 > 2)
                Rand32();
            else
                Rand32();
            if (Rand16() & 1)
            {
                ++boxy->unkB8;
#ifdef NONMATCHING
                CreateObjTemplateAndObj(box->base.unk56, 1, 0x24, box->base.x >> 8, box->base.y >> 8, 0, 0x1F, 0, 0, OBJ_SMALL_FOOD,
                    RandLessThan(5), 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
#else
                {
                    u8 i;
                    struct ObjectTemplate *template;

                    for (i = 0; i < 0x20; ++i)
                    {
                        if (!(gUnk_020229D4 & (1 << i)))
                        {
                            gUnk_020229D4 |= 1 << i;
                            break;
                        }
                    }
                    gUnk_020229E0[i].spawnTable = 1;
                    gUnk_020229E0[i].unk1 = 0x24;
                    gUnk_020229E0[i].x = box->base.x >> 8;
                    gUnk_020229E0[i].y = box->base.y >> 8;
                    gUnk_020229E0[i].unk2 = 0;
                    gUnk_020229E0[i].unk3 = 0x1F;
                    gUnk_020229E0[i].unk4 = 0;
                    gUnk_020229E0[i].unk5 = 0;
                    gUnk_020229E0[i].type = OBJ_SMALL_FOOD;
                    template = &gUnk_020229E0[i];
                    ++i, --i;
                    template->subtype1 = RandLessThan(5);
                    gUnk_020229E0[i].unkF = 0;
                    gUnk_020229E0[i].subtype2 = 2;
                    gUnk_020229E0[i].unk22 = 0;
                    gUnk_020229E0[i].unk1A = 0;
                    gUnk_020229E0[i].unk1C = 0;
                    gUnk_020229E0[i].unk1E = 0;
                    gUnk_020229E0[i].unk20 = 0;
                    gUnk_020229E0[i].unk11 = 0;
                    gUnk_020229E0[i].unk12 = 0;
                    gUnk_020229E0[i].unk14 = 0;
                    gUnk_020229E0[i].unk16 = 0;
                    gUnk_020229E0[i].unk18 = 0;
                    CreateObject(box->base.unk56, &gUnk_020229E0[i]);
                }
#endif
            }
            else
            {
                CreateObjTemplateAndObj(box->base.unk56, 1, 0x24, box->base.x >> 8, box->base.y >> 8, 0, 0x1F, 0, 0, OBJ_BATTERY,
                    0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            }
            break;
        case 1:
            if (!boxy->unkB4 && !(boxy->obj.objTemplate->unk22 & 8))
            {
                boxy->unkB4 = CreateObjTemplateAndObj(box->base.unk56, 1, 0x24, box->base.x >> 8, box->base.y >> 8, 0, 0x1F, 0, 0, OBJ_MINNY,
                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            }
            else
            {
                pb = CreateObjTemplateAndObj(box->base.unk56, 1, 0x24, box->base.x >> 8, box->base.y >> 8, 0, 0x1F, 0, 0, OBJ_PRANK_BOMB,
                    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                pb->base.parent = box;
            }
            break;
        case 2:
            pb = CreateObjTemplateAndObj(box->base.unk56, 1, 0x24, box->base.x >> 8, box->base.y >> 8, 0, 0x1F, 0, 0, OBJ_PRANK_BOMB,
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            pb->base.parent = box;
            break;
        }
    }
    if (!--box->base.counter)
        box->base.flags |= 0x1000;
}

void sub_080D777C(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, sub_080D5AB0);
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0x200;
    boxy->obj.base.counter = 0x10;
    boxy->obj.base.flags &= ~2;
    sub_080D5930(boxy);
}

static void sub_080D77B8(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, sub_080D571C);
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
}

static void sub_080D77DC(struct Boxy *boxy)
{
    if (!(boxy->obj.base.flags & 2))
        return;
    ObjectSetFunc(boxy, 0, sub_080D5AB0);
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0x200;
    boxy->obj.base.counter = 0x10;
    boxy->obj.base.flags &= ~2;
    sub_080D5930(boxy);
}

static void sub_080D7824(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 2, sub_080D5F7C);
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
    if (boxy->obj.subtype)
        boxy->obj.base.counter = 1;
    else
        boxy->obj.base.counter = 2;
}

static void sub_080D787C(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 6, sub_080D78D0);
    boxy->obj.kirby3 = FindTargetKirby(&boxy->obj.base);
    if (boxy->obj.base.x > boxy->obj.kirby3->base.x)
        boxy->obj.base.flags |= 1;
    else
        boxy->obj.base.flags &= ~1;
    boxy->obj.base.flags &= ~2;
    sub_08088398(&boxy->obj, gUnk_083561CC);
}

static void sub_080D78D0(struct Boxy *boxy)
{
    boxy->obj.base.flags |= 4;
    if (boxy->obj.base.flags & 2)
        sub_080D60B8(boxy);
}

static void sub_080D78F0(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0xB, sub_080D7914);
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
}

static void sub_080D7914(struct Boxy *boxy)
{
    if (!(boxy->obj.base.flags & 2))
        return;
    sub_080D792C(boxy);
}

static void sub_080D792C(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0xC, sub_080D6D90);
    boxy->obj.base.xspeed = 0;
    boxy->obj.base.yspeed = 0;
    boxy->obj.base.flags &= ~2;
}

static void sub_080D7958(struct Boxy *boxy)
{
    if (boxy->unkB4)
    {
        if (boxy->obj.base.flags & 0x1000)
            boxy->unkB4 = NULL;
        if (boxy->unkB4->base.flags & 0x1000)
            boxy->unkB4 = NULL;
    }
}
