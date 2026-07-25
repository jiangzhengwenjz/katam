#include "boxy.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"

static void BoxyStartHopToKirby(struct Boxy *);
static void BoxyHopToKirby(struct Boxy *);
static void BoxyStartHopAway(struct Boxy *);
static void BoxyHopAway(struct Boxy *);
static void BoxyDashing(struct Boxy *);
static void BoxyStartGroundPound(struct Boxy *);
static void BoxyGroundPound(struct Boxy *);
static void BoxyStartLeapWindup(struct Boxy *);
static void BoxyLeapWindup(struct Boxy *);
static void BoxyStartLeap(struct Boxy *);
static void BoxyLeap(struct Boxy *);
static void BoxyLand(struct Boxy *);
static void BoxyStartBigJump(struct Boxy *);
static void BoxyBigJump(struct Boxy *);
static void BoxyStartThrowApproach(struct Boxy *);
static void BoxyThrowApproach(struct Boxy *);
static void BoxyThrowPresent(struct Boxy *, u8);
static void BoxyBoxFly(struct Object2 *);
static void BoxyOpenPresent(struct Object2 *);
static void BoxyBoxOpening(struct Object2 *);
static void BoxyStartWaitForKirby(struct Boxy *);
static void BoxyLandRecover(struct Boxy *);
static void BoxyStartJumpAttack(struct Boxy *);
static void BoxyStartDashWindup(struct Boxy *);
static void BoxyDashWindup(struct Boxy *);
static void BoxyStartThrowWindup(struct Boxy *);
static void BoxyThrowWindup(struct Boxy *);
static void BoxyStartThrowingPresents(struct Boxy *);
static void BoxyUpdateBoxRef(struct Boxy *);

const struct AnimInfo gBoxyAnimInfo[] = {
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

const struct AnimInfo gBoxyAnimInfo2[] = {
    { 0x338, 0x10, 0 },
    { 0x338, 0x11, 0 },
};

const struct AnimInfo gBoxyAnimInfo3[] = {
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

const struct AnimInfo gBoxyAnimInfo4[] = {
    { 0x338, 0x12, 2 },
    { 0x338,    0, 2 },
    { 0x338,    0, 0 },
};

static const u8 gUnk_08356214[] = { 0, 2, 0, 1, 0, 1, 2, 1, 0, 2 };

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
    ObjectSetHitbox(&boxy->obj2.base, -0x14, -0xC, 8, 0xC);
    ObjectSetBounds(&boxy->obj2.base, -0x10, -0x12, 0xA, 9);
    ObjectInitSprite(&boxy->obj2);
    boxy->obj2.base.sprite.unk14 = 0x6C0;
    boxy->obj2.unk9E = 0;
    boxy->obj2.unk7C = BoxyUpdateBoxRef;
    BoxyStartWaitForKirby(boxy);
    return boxy;
}

static void BoxyWaitForKirby(struct Boxy *boxy)
{
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
    boxy->obj2.base.flags |= 4;
    if (!(boxy->obj2.kirby3->base.base.base.unkC & 0x8000)
        && boxy->obj2.base.roomId == boxy->obj2.kirby3->base.base.base.roomId)
    {
        if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
            boxy->obj2.base.flags |= 1;
        else
            boxy->obj2.base.flags &= ~1;
        if (Macro_08039430_2(&boxy->obj2.kirby3->base.base.base, &boxy->obj2))
        {
            Macro_081003EC(&boxy->obj2, &boxy->obj2.kirby3->base.base.base);
            boxy->obj2.base.flags &= ~0x200;
            boxy->obj2.unk85 = 0;
            BoxyStartIdle(boxy);
            Macro_08100F18(&boxy->obj2);
        }
    }
}

static void BoxyChooseAttack(struct Boxy *boxy)
{
    s16 a;
    s32 b;

    if (boxy->obj2.subtype)
    {
        a = 0x60;
        b = 2;
    }
    else if (boxy->obj2.unk80 <= gUnk_08351530[5][gNumPlayers - 1] >> 1)
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
        BoxyStartThrowApproach(boxy);
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
                    BoxyStartHopToKirby(boxy);
            }
            else
            {
                if (!(Rand16() & 1))
                {
                    if (Rand16() & 3)
                        BoxyStartHopToKirby(boxy);
                    else
                        BoxyStartHopAway(boxy);
                }
            }
            return;
        }
    }
    boxy->obj2.unk85 &= 0xF;
    if (!(Rand16() & 3))
        BoxyStartBigJump(boxy);
    else
    {
        if (Rand16() & 1)
            BoxyStartLeapWindup(boxy);
        else
            BoxyStartJumpAttack(boxy);
    }
    ++boxy->obj2.unk85;
}

static void BoxyIdle(struct Boxy *boxy)
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
            ObjectSetFunc(boxy, 0, BoxyIdle);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            BoxyChooseAttack(boxy);
        }
    }
}

static void BoxyStartHopToKirby(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, BoxyHopToKirby);
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
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

static void BoxyHopToKirby(struct Boxy *boxy)
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
            ObjectSetFunc(boxy, 0, BoxyIdle);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            BoxyChooseAttack(boxy);
            return;
        }
    }
    if (boxy->obj2.base.unk62 & 1)
        boxy->obj2.base.xspeed = 0;
}

static void BoxyStartHopAway(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, BoxyHopAway);
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
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

static void BoxyHopAway(struct Boxy *boxy)
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
            ObjectSetFunc(boxy, 0, BoxyIdle);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            BoxyChooseAttack(boxy);
            return;
        }
    }
    if (boxy->obj2.base.unk62 & 2)
        boxy->obj2.base.xspeed = 0;
}

static void BoxyJumpAttack(struct Boxy *boxy)
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
            PlaySfx(&boxy->obj2.base, SE_BOXY_COLLISION);
            RequestScreenShake(1, &boxy->obj2.base);
            CreateImpactStars(&boxy->obj2.base, -8, 0xC, (boxy->obj2.base.flags & 1) ^ 1);
            CreateImpactStars(&boxy->obj2.base, -0x14, 0xC, boxy->obj2.base.flags & 1);
            if (!--boxy->obj2.base.counter)
                BoxyStartDashWindup(boxy);
            else
                boxy->obj2.unk83 = 2;
        }
    }
}

static void BoxyDash(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 7, BoxyDashing);
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
    PlaySfx(&boxy->obj2.base, SE_BOXY_DASH);
}

static void BoxyDashing(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj2);
    boxy->obj2.base.flags |= 4;
    if (!--boxy->obj2.base.counter)
    {
        ObjectSetFunc(boxy, 0, BoxyIdle);
        boxy->obj2.base.xspeed = 0;
        boxy->obj2.base.yspeed = 0x200;
        boxy->obj2.base.counter = 0x10;
        boxy->obj2.base.flags &= ~2;
        BoxyChooseAttack(boxy);
        return;
    }
    if (boxy->obj2.base.unk62 & 1)
        BoxyStartGroundPound(boxy);
}

static void BoxyStartGroundPound(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 8, BoxyGroundPound);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
    boxy->obj2.base.counter = 5;
    boxy->obj2.base.flags &= ~2;
    RequestScreenShake(1, &boxy->obj2.base);
    PlaySfx(&boxy->obj2.base, SE_BOSS_GROUND_POUND_ATTACK);
}

static void BoxyGroundPound(struct Boxy *boxy)
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
            PlaySfx(&boxy->obj2.base, SE_BOSS_GROUND_POUND_ATTACK);
            RequestScreenShake(3, &boxy->obj2.base);
            CreateImpactStars(&boxy->obj2.base, -0xC, 0xA, boxy->obj2.base.flags);
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
            ObjectSetFunc(boxy, 0, BoxyIdle);
            boxy->obj2.base.xspeed = 0;
            boxy->obj2.base.yspeed = 0x200;
            boxy->obj2.base.counter = 0x10;
            boxy->obj2.base.flags &= ~2;
            BoxyChooseAttack(boxy);
        }
    }
}

static void BoxyStartLeapWindup(struct Boxy *boxy)
{
    u8 id = 0;

    ObjectSetFunc(boxy, 1, BoxyLeapWindup);
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
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

static void BoxyLeapWindup(struct Boxy *boxy)
{
    if (!--boxy->obj2.base.counter)
        BoxyStartLeap(boxy);
    if (boxy->obj2.base.counter < 8)
    {
        boxy->obj2.base.objBase54 += 2 * (gUnk_0203AD40 & 2);
        ++boxy->obj2.base.objBase55;
    }
    else if (boxy->obj2.base.counter < 0x10)
        boxy->obj2.base.objBase54 += gUnk_0203AD40 & 2;
}

static void BoxyStartLeap(struct Boxy *boxy)
{
    u8 unk9F = boxy->obj2.unk9F;

    ObjectSetFunc(boxy, 2, BoxyLeap);
    switch (unk9F)
    {
    case 1:
        boxy->obj2.base.xspeed = 0x240;
        boxy->obj2.base.yspeed = 0x2A0;
        break;
    case 2:
        boxy->obj2.base.xspeed = 0x300;
        boxy->obj2.base.yspeed = 0x300;
        break;
    default:
        boxy->obj2.base.xspeed = 0x1C0;
        boxy->obj2.base.yspeed = 0x220;
        break;
    }
    boxy->obj2.base.flags |= 0x20;
    if (boxy->obj2.base.flags & 1)
        boxy->obj2.base.xspeed = -boxy->obj2.base.xspeed;
}

static void BoxyLeap(struct Boxy *boxy)
{
    ObjXSomething(&boxy->obj2);
    boxy->obj2.base.yspeed -= 0x10;
    if (boxy->obj2.base.yspeed < -0x300)
        boxy->obj2.base.yspeed = -0x300;
    boxy->obj2.base.flags |= 4;
    if (boxy->obj2.unk83 == 2)
    {
        if (boxy->obj2.base.yspeed <= 0x40)
            boxy->obj2.unk83 = 3;
    }
    else
    {
        if (boxy->obj2.base.yspeed <= -0x80)
            boxy->obj2.unk83 = 4;
    }
    if (boxy->obj2.unk83 == 4 && boxy->obj2.base.unk62 & 4)
        BoxyLand(boxy);
    if (boxy->obj2.base.unk62 & 1)
        boxy->obj2.base.xspeed = 0;
}

static void BoxyLand(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 5, BoxyLandRecover);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
    PlaySfx(&boxy->obj2.base, SE_BOXY_COLLISION);
    RequestScreenShake(1, &boxy->obj2.base);
    CreateImpactStars(&boxy->obj2.base, -8, 0xC, (boxy->obj2.base.flags & 1) ^ 1);
    CreateImpactStars(&boxy->obj2.base, -0x14, 0xC, boxy->obj2.base.flags & 1);
}

static void BoxyStartBigJump(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 2, BoxyBigJump);
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
    if (boxy->obj2.subtype)
    {
        if (Rand16() & 1)
            boxy->obj2.base.counter = 1;
        else
            boxy->obj2.base.counter = 2;
    }
    else
    {
        if (Rand16() & 1)
            boxy->obj2.base.counter = 1;
        else
            boxy->obj2.base.counter = 3;
    }
}

static void BoxyBigJump(struct Boxy *boxy)
{
    boxy->obj2.base.yspeed -= 0x3B;
    if (boxy->obj2.base.yspeed < -0x300)
        boxy->obj2.base.yspeed = -0x300;
    boxy->obj2.base.flags |= 4;
    if (boxy->obj2.unk83 == 2)
    {
        if (boxy->obj2.base.unk1 == 1)
            boxy->obj2.base.yspeed = 0x420;
        if (boxy->obj2.base.flags & 2)
            boxy->obj2.unk83 = 3;
    }
    else
    {
        if (boxy->obj2.base.yspeed <= -0x40)
            boxy->obj2.unk83 = 4;
        if (boxy->obj2.base.unk62 & 4)
        {
            PlaySfx(&boxy->obj2.base, SE_BOXY_COLLISION);
            RequestScreenShake(1, &boxy->obj2.base);
            CreateImpactStars(&boxy->obj2.base, -8, 0xC, (boxy->obj2.base.flags & 1) ^ 1);
            CreateImpactStars(&boxy->obj2.base, -0x14, 0xC, boxy->obj2.base.flags & 1);
            if (!--boxy->obj2.base.counter)
            {
                ObjectSetFunc(boxy, 0, BoxyIdle);
                boxy->obj2.base.xspeed = 0;
                boxy->obj2.base.yspeed = 0x200;
                boxy->obj2.base.counter = 0x10;
                boxy->obj2.base.flags &= ~2;
                BoxyChooseAttack(boxy);
            }
            else
                boxy->obj2.unk83 = 2;
        }
    }
}

static void BoxyStartThrowApproach(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, BoxyThrowApproach);
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    boxy->obj2.base.xspeed = -0x200;
    boxy->obj2.base.yspeed = 0x200;
    if (boxy->obj2.base.flags & 1)
        boxy->obj2.base.xspeed = -boxy->obj2.base.xspeed;
    boxy->obj2.base.flags &= ~2;
    boxy->obj2.base.counter = 0x10;
}

static void BoxyThrowApproach(struct Boxy *boxy)
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
            BoxyStartThrowWindup(boxy);
            return;
        }
    }
    if (boxy->obj2.base.unk62 & 2)
        boxy->obj2.base.xspeed = 0;
}

static void BoxyThrowingPresents(struct Boxy *boxy)
{
    if (boxy->obj2.base.unk1 == 9)
        BoxyThrowPresent(boxy, RandLessThan3());
    if (boxy->obj2.base.flags & 2)
    {
        ObjectSetFunc(boxy, 0, BoxyIdle);
        boxy->obj2.base.xspeed = 0;
        boxy->obj2.base.yspeed = 0x200;
        boxy->obj2.base.counter = 0x10;
        boxy->obj2.base.flags &= ~2;
        BoxyChooseAttack(boxy);
    }
}

static void BoxyThrowPresent(struct Boxy *boxy, u8 a2)
{
    s32 x = boxy->obj2.base.flags & 1 ? (boxy->obj2.base.x >> 8) - 8 : (boxy->obj2.base.x >> 8) + 8;
    s32 y = (boxy->obj2.base.y >> 8) - 4;
    struct Object2 *box = CreateObjTemplateAndObj(boxy->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BOXY_BOX,
        boxy->obj2.base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    box->base.parent = boxy;
}

void *CreateBoxyBox(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *box = tmp;

    InitObject(box, template, a2);
    box->base.flags |= 0x10000;
    box->base.unkC |= 2;
    box->unk9E = 0;
    box->unk7C = sub_0809F840;
    ObjectSetHitbox(&box->base, -5, -5, 5, 6);
    ObjectSetBounds(&box->base, -6, -6, 6, 8);
    ObjectInitSprite(box);
    BoxyBoxStart(box);
    PlaySfx(&box->base, SE_BOXY_THROW_PRESENT);
    return box;
}

void BoxyBoxStart(struct Object2 *box)
{
    ObjectSetFunc(box, 0, BoxyBoxFly);
    if (box->object->subtype1)
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
    Macro_081003EC(box, &box->kirby3->base.base.base);
}

static void BoxyBoxFly(struct Object2 *box)
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
            if (abs(box->kirby3->base.base.base.x - box->base.x) < 0x3000)
            {
                BoxyOpenPresent(box);
                return;
            }
        }
        if (!--box->base.counter)
        {
            BoxyOpenPresent(box);
            return;
        }
        if (!(box->base.counter & 0xF))
            box->kirby3 = FindClosestKirby(&box->base);
    }
    if (box->base.unk62 & 1)
    {
        box->base.xspeed = -box->base.xspeed;
        box->base.flags ^= 1;
    }
}

static void BoxyOpenPresent(struct Object2 *box)
{
    ObjectSetFunc(box, 0, BoxyBoxOpening);
    box->base.flags |= 0x200;
    box->base.counter = 0x3C;
    CreateEffectObject(&box->base, 0, 0x2AC, 0);
    PlaySfx(&box->base, SE_BOXY_OPEN_PRESENT);
}

static void BoxyBoxOpening(struct Object2 *box)
{
    struct Boxy *boxy = box->base.parent;
    struct Object2 *pb;

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
                    struct Object *template;

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
            if (!boxy->unkB4 && !(boxy->obj2.object->unk22 & 8))
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

void BoxyStartIdle(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, BoxyIdle);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0x200;
    boxy->obj2.base.counter = 0x10;
    boxy->obj2.base.flags &= ~2;
    BoxyChooseAttack(boxy);
}

static void BoxyStartWaitForKirby(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0, BoxyWaitForKirby);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
}

static void BoxyLandRecover(struct Boxy *boxy)
{
    if (!(boxy->obj2.base.flags & 2))
        return;
    ObjectSetFunc(boxy, 0, BoxyIdle);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0x200;
    boxy->obj2.base.counter = 0x10;
    boxy->obj2.base.flags &= ~2;
    BoxyChooseAttack(boxy);
}

static void BoxyStartJumpAttack(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 2, BoxyJumpAttack);
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
    if (boxy->obj2.subtype)
        boxy->obj2.base.counter = 1;
    else
        boxy->obj2.base.counter = 2;
}

static void BoxyStartDashWindup(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 6, BoxyDashWindup);
    boxy->obj2.kirby3 = FindClosestKirby(&boxy->obj2.base);
    if (boxy->obj2.base.x > boxy->obj2.kirby3->base.base.base.x)
        boxy->obj2.base.flags |= 1;
    else
        boxy->obj2.base.flags &= ~1;
    boxy->obj2.base.flags &= ~2;
    sub_08088398(&boxy->obj2, gBoxyAnimInfo3);
}

static void BoxyDashWindup(struct Boxy *boxy)
{
    boxy->obj2.base.flags |= 4;
    if (boxy->obj2.base.flags & 2)
        BoxyDash(boxy);
}

static void BoxyStartThrowWindup(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0xB, BoxyThrowWindup);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
}

static void BoxyThrowWindup(struct Boxy *boxy)
{
    if (!(boxy->obj2.base.flags & 2))
        return;
    BoxyStartThrowingPresents(boxy);
}

static void BoxyStartThrowingPresents(struct Boxy *boxy)
{
    ObjectSetFunc(boxy, 0xC, BoxyThrowingPresents);
    boxy->obj2.base.xspeed = 0;
    boxy->obj2.base.yspeed = 0;
    boxy->obj2.base.flags &= ~2;
}

static void BoxyUpdateBoxRef(struct Boxy *boxy)
{
    if (boxy->unkB4)
    {
        if (boxy->obj2.base.flags & 0x1000)
            boxy->unkB4 = NULL;
        if (boxy->unkB4->base.flags & 0x1000)
            boxy->unkB4 = NULL;
    }
}
