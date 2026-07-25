#include "box_boxer.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "inhalable_star.h"
#include "code_0806F780.h"

static void BoxBoxerIdle(struct Object2 *);
static void BoxBoxerStartWalk(struct Object2 *);
static void BoxBoxerWalk(struct Object2 *);
static void BoxBoxerLand(struct Object2 *);
static void BoxBoxerLandWait(struct Object2 *);
static void BoxBoxerStartJump(struct Object2 *);
static void BoxBoxerJump(struct Object2 *);
static void BoxBoxerThrow(struct Object2 *);
static void sub_080C89E0(struct Object2 *);
static void sub_080C8AB8(void);
static void sub_080C8C30(struct Object2 *, u8);
static void sub_080C8DB0(struct Object2 *);
static void sub_080C8EA4(void);
static void BoxBoxerStartWaitForKirby(struct Object2 *);
static void BoxBoxerStartHop(struct Object2 *);
static void BoxBoxerHopWindup(struct Object2 *);
static void sub_080C909C(struct Object2 *);
static void BoxBoxerStartCharge(struct Object2 *);
static void BoxBoxerChargeWindup(struct Object2 *);
static void sub_080C914C(struct Object2 *);
static void sub_080C9178(struct Object2 *);
static void sub_080C9198(struct Object2 *);
static void BoxBoxerStartPunch(struct Object2 *);
static void sub_080C9210(struct Object2 *);
static void sub_080C9230(struct Object2 *);
static void sub_080C9250(struct Object2 *);
static void sub_080C9274(struct Object2 *);
static void BoxBoxerPunchWindup(struct Object2 *);
static void sub_080C9298(struct Object2 *);

const struct AnimInfo gBoxBoxerAnimInfo[] = {
    { 0x2FE,    0, 0 },
    { 0x2FE,    1, 0 },
    { 0x2FE,    2, 0 },
    { 0x2FE,    3, 0 },
    { 0x2FE,    4, 0 },
    { 0x2FE,    5, 0 },
    { 0x2FE,    6, 0 },
    { 0x2FE,    7, 0 },
    { 0x2FE,    8, 0 },
    { 0x2FE,    9, 0 },
    { 0x2FE,  0xA, 0 },
    { 0x2FE,  0xB, 0 },
    { 0x2FE,  0xC, 0 },
    { 0x2FE,  0xD, 0 },
    { 0x2FE,  0xE, 0 },
    { 0x2FE,  0xF, 0 },
    { 0x2FE, 0x10, 0 },
    { 0x2FE, 0x11, 0 },
    { 0x2FE, 0x12, 0 },
    { 0x2FE, 0x13, 0 },
    { 0x2FE, 0x14, 0 },
    { 0x2FE, 0x14, 0 },
};

const struct AnimInfo gBoxBoxerAnimInfo2[] = {
    { 0x2FE, 0x15, 0 },
    { 0x2FE, 0x15, 0 },
};

const struct AnimInfo gBoxBoxerAnimInfo3[] = {
    { 0x2FE, 0x16,  2 },
    { 0x2FE,    0,  2 },
    { 0x2FE, 0x16,  2 },
    { 0x2FE,    0,  2 },
    { 0x2FE, 0x16,  2 },
    { 0x2FE,    0,  2 },
    { 0x2FE, 0x16,  2 },
    { 0x2FE,    0,  2 },
    { 0x2FE, 0x16,  2 },
    { 0x2FE,    0,  2 },
    { 0x2FE, 0x16,  2 },
    { 0x2FE,    0,  2 },
    { 0x2FE, 0x16,  2 },
    { 0x2FE,    0,  2 },
    { 0x2FE,    0, -1 },
};

const struct AnimInfo gBoxBoxerAnimInfo4[] = {
    { 0x2FE, 0x16, 2 },
    { 0x2FE,    0, 2 },
    { 0x2FE,    0, 0 },
};

static const struct KirbyMoveScriptStep gBoxBoxerKirbyScript[] = {
    { 0x14, -0xE, 1, 0xC, 0x58,     0 },
    {    0,    0, 0,   1,    0, 0x100 },
};

static const struct KirbyMoveScriptStep gBoxBoxerKirbyScript2[] = {
    {  0xC,     0, -1, 3, 0x55,     0 },
    {    6,    -6,  1, 5, 0x58,  0x40 },
    {  0xE,    -6,  1, 3, 0x57,     0 },
    { 0x14,    -2,  1, 3, 0x56,     0 },
    {    0, -0x20,  1, 3, 0x59,     0 },
    {    0, -0x26,  1, 2, 0x58,     0 },
    {    0, -0x2C,  1, 2, 0x57,     0 },
    {    0, -0x32,  1, 2, 0x56,     0 },
    {    0, -0x36,  1, 2, 0x55,     0 },
    {    0, -0x3A,  1, 2, 0x54,     0 },
    {    0, -0x3C,  1, 2, 0x53,     0 },
    {    0, -0x3E,  1, 2, 0x52,     0 },
    {    0, -0x3F,  1, 2, 0x51,     0 },
    {    0,     0,  0, 1,    0, 0x100 },
};

static const struct KirbyMoveScriptStep gBoxBoxerKirbyScript3[] = {
    { 0, -0x40, 1, 2, 0x50,     0 },
    { 0, -0x41, 1, 2, 0x4F,     0 },
    { 0, -0x41, 1, 2, 0x4E,     0 },
    { 0, -0x40, 1, 2, 0x4D,     0 },
    { 0, -0x3F, 1, 2, 0x4C,     0 },
    { 0, -0x3E, 1, 2, 0x4B,     0 },
    { 0, -0x3C, 1, 2, 0x4A,     0 },
    { 0, -0x3A, 1, 2, 0x59,     0 },
    { 0, -0x36, 1, 2, 0x58,     0 },
    { 0, -0x32, 1, 2, 0x57,     0 },
    { 0,     0, 0, 1,    0, 0x100 },
};

static const struct KirbyMoveScriptStep gBoxBoxerKirbyScript4[] = {
    {    0, -0x2C, 1, 2, 0x56,    0 },
    {    0, -0x26, 1, 2, 0x55,    0 },
    {    0, -0x20, 1, 3, 0x54,    0 },
    {    0, -0x18, 1, 2, 0x53, 0x40 },
    { 0x32,   0xA, 0, 1,    0, 0x10 },
};

#define Macro_080C7C18(boxBoxer) ({ \
    u16 _r; /* for matching */ \
 \
    if ((boxBoxer)->subtype && (_r = !(Rand16() & 3))) \
        BoxBoxerChooseAttack(boxBoxer); \
    else if ((_r = !(Rand16() & 7))) \
        BoxBoxerStartIdle(boxBoxer); \
    else \
    { \
        ObjectSetFunc(boxBoxer, 1, BoxBoxerWalk); \
        (boxBoxer)->kirby3 = FindClosestKirby(&boxBoxer->base); \
        if ((boxBoxer)->base.x > (boxBoxer)->kirby3->base.base.base.x) \
            (boxBoxer)->base.flags |= 1; \
        else \
            (boxBoxer)->base.flags &= ~1; \
        (boxBoxer)->base.counter = 0x258; \
    } \
})

void *CreateBoxBoxer(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *boxBoxer = tmp;

    InitObject(boxBoxer, template, a2);
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    boxBoxer->base.unkC |= 1;
    boxBoxer->base.flags |= 0x2000000;
    boxBoxer->base.flags |= 0x200;
    boxBoxer->base.flags |= 0x200000;
    ObjectSetHitbox(&boxBoxer->base, -0xA, -0xE, 0xA, 0xC);
    ObjectSetBounds(&boxBoxer->base, -0xE, -0xA, 0xE, 0x12);
    boxBoxer->base.unk5C &= ~7;
    boxBoxer->base.unk5C |= 3;
    boxBoxer->base.unk5C |= 0xA0;
    ObjectInitSprite(boxBoxer);
    boxBoxer->base.sprite.unk14 = 0x6C0;
    BoxBoxerStartWaitForKirby(boxBoxer);
    boxBoxer->unk9E = 0;
    boxBoxer->unk7C = 0;
    return boxBoxer;
}

static void BoxBoxerWaitForKirby(struct Object2 *boxBoxer)
{
    boxBoxer->kirby3 = FindClosestKirby(&boxBoxer->base);
    boxBoxer->base.flags |= 4;
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    if (!(boxBoxer->kirby3->base.base.base.unkC & 0x8000)
        && boxBoxer->base.roomId == boxBoxer->kirby3->base.base.base.roomId)
    {
        // why do it again...
        if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
            boxBoxer->base.flags |= 1;
        else
            boxBoxer->base.flags &= ~1;
        if (Macro_08039430_2(&boxBoxer->kirby3->base.base.base, boxBoxer))
        {
            Macro_081003EC(boxBoxer, &boxBoxer->kirby3->base.base.base);
            boxBoxer->unk85 = 0;
            boxBoxer->base.flags &= ~0x200;
            sub_080C89E0(boxBoxer);
            BoxBoxerStartIdle(boxBoxer);
            boxBoxer->base.counter = 0x5A;
            Macro_08100F18(boxBoxer);
        }
    }
}

static void BoxBoxerChooseAttack(struct Object2 *boxBoxer)
{
    if (boxBoxer->unk85 > 1)
    {
        if (Rand16() & 1)
            BoxBoxerStartHop(boxBoxer);
        else
            BoxBoxerStartCharge(boxBoxer);
        boxBoxer->unk85 = 0;
    }
    else
    {
        ++boxBoxer->unk85;
        if (!(Rand16() & 3))
            BoxBoxerStartJump(boxBoxer);
        else if (Rand16() & 3)
        {
            if (Rand16() & 1)
                BoxBoxerStartWalk(boxBoxer);
            else
                BoxBoxerStartPunch(boxBoxer);
        }
        else
        {
            if (Rand16() & 1)
                BoxBoxerStartHop(boxBoxer);
            else
                BoxBoxerStartCharge(boxBoxer);
            boxBoxer->unk85 = 0;
        }
    }
}

void BoxBoxerStartIdle(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0, BoxBoxerIdle);
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    if (boxBoxer->subtype)
    {
        switch (Rand16() & 3)
        {
        default:
            boxBoxer->base.counter = 0xF;
            break;
        case 1:
            boxBoxer->base.counter = 0x28;
            break;
        case 2:
            boxBoxer->base.counter = 0x41;
            break;
        case 3:
            boxBoxer->base.counter = 0x5A;
            break;
        }
    }
    else
    {
        switch (Rand16() & 3)
        {
        default:
            boxBoxer->base.counter = 0x28;
            break;
        case 1:
            boxBoxer->base.counter = 0x41;
            break;
        case 2:
            boxBoxer->base.counter = 0x5A;
            break;
        case 3:
            boxBoxer->base.counter = 0x78;
            break;
        }
    }
}

static void BoxBoxerIdle(struct Object2 *boxBoxer)
{
    boxBoxer->base.flags |= 4;
    if (boxBoxer->base.xspeed < 0)
    {
        boxBoxer->base.xspeed += 0x20;
        if (boxBoxer->base.xspeed > 0)
            boxBoxer->base.xspeed = 0;
    }
    else
    {
        boxBoxer->base.xspeed -= 0x20;
        if (boxBoxer->base.xspeed < 0)
            boxBoxer->base.xspeed = 0;
    }
    if (!--boxBoxer->base.counter)
        BoxBoxerChooseAttack(boxBoxer);
}

static void BoxBoxerStartWalk(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 1, BoxBoxerWalk);
    boxBoxer->kirby3 = FindClosestKirby(&boxBoxer->base);
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    switch (Rand16() & 3)
    {
    default:
        boxBoxer->base.counter = 0x18;
        break;
    case 1:
        boxBoxer->base.counter = 0x20;
        break;
    case 2:
        boxBoxer->base.counter = 0x30;
        break;
    case 3:
        boxBoxer->base.counter = 0x40;
        break;
    }
}

static void BoxBoxerWalk(struct Object2 *boxBoxer)
{
    boxBoxer->base.flags |= 4;
    ObjXSomething(boxBoxer);
    if (boxBoxer->subtype)
    {
        if (boxBoxer->base.flags & 1)
        {
            boxBoxer->base.xspeed -= 0x18;
            if (boxBoxer->base.xspeed < -0x200)
                boxBoxer->base.xspeed = -0x200;
            else if (boxBoxer->base.xspeed > 0x200)
                boxBoxer->base.xspeed = 0x200;
        }
        else
        {
            boxBoxer->base.xspeed += 0x18;
            if (boxBoxer->base.xspeed > 0x200)
                boxBoxer->base.xspeed = 0x200;
            else if (boxBoxer->base.xspeed < -0x200)
                boxBoxer->base.xspeed = -0x200;
        }
    }
    else
    {
        if (boxBoxer->base.flags & 1)
        {
            boxBoxer->base.xspeed -= 0x18;
            if (boxBoxer->base.xspeed < -0x1A0)
                boxBoxer->base.xspeed = -0x1A0;
            else if (boxBoxer->base.xspeed > 0x1A0)
                boxBoxer->base.xspeed = 0x1A0;
        }
        else
        {
            boxBoxer->base.xspeed += 0x18;
            if (boxBoxer->base.xspeed > 0x1A0)
                boxBoxer->base.xspeed = 0x1A0;
            else if (boxBoxer->base.xspeed < -0x1A0)
                boxBoxer->base.xspeed = -0x1A0;
        }
    }
    if (!--boxBoxer->base.counter)
        BoxBoxerStartIdle(boxBoxer);
    else if (boxBoxer->base.unk62 & 1)
    {
        boxBoxer->base.xspeed = 0;
        BoxBoxerStartIdle(boxBoxer);
    }
}

static void BoxBoxerAirborne(struct Object2 *boxBoxer)
{
    ObjXSomething(boxBoxer);
    boxBoxer->base.yspeed -= 0x18;
    if (boxBoxer->base.yspeed < -0x300)
        boxBoxer->base.yspeed = -0x300;
    boxBoxer->base.flags |= 4;
    if (boxBoxer->unk83 == 3)
    {
        if (boxBoxer->base.yspeed <= 0x40)
            boxBoxer->unk83 = 4;
    }
    else
    {
        if (boxBoxer->base.yspeed <= -0x80)
            boxBoxer->unk83 = 5;
    }
    if (boxBoxer->unk83 == 5 && boxBoxer->base.unk62 & 4)
        BoxBoxerLand(boxBoxer);
    if (boxBoxer->base.unk62 & 1)
        boxBoxer->base.xspeed = 0;
}

static void BoxBoxerLand(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 6, BoxBoxerLandWait);
    PlaySfx(&boxBoxer->base, SE_BOX_BOXER_JUMP);
    RequestScreenShake(1, &boxBoxer->base);
    CreateImpactStars(&boxBoxer->base, -8, 0xC, (boxBoxer->base.flags & 1) ^ 1);
    CreateImpactStars(&boxBoxer->base, -0x14, 0xC, boxBoxer->base.flags & 1);
    sub_080A8C28(boxBoxer, 0x22, 0x10);
    boxBoxer->base.flags ^= 1;
    sub_080A8C28(boxBoxer, 0x22, 0x10);
    boxBoxer->base.flags ^= 1;
    boxBoxer->base.flags &= ~2;
    boxBoxer->base.xspeed = 0;
    boxBoxer->base.yspeed = 0;
}

static void BoxBoxerLandWait(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.flags & 2)
        Macro_080C7C18(boxBoxer);
}

static void BoxBoxerStartJump(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 3, BoxBoxerJump);
    boxBoxer->kirby3 = FindClosestKirby(&boxBoxer->base);
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    boxBoxer->base.xspeed = 0;
    boxBoxer->base.yspeed = 0;
    if (boxBoxer->subtype)
    {
        if (Rand16() & 1)
            boxBoxer->base.counter = 1;
        else
            boxBoxer->base.counter = 2;
    }
    else
    {
        if (Rand16() & 1)
            boxBoxer->base.counter = 1;
        else
            boxBoxer->base.counter = 3;
    }
}

static void BoxBoxerJump(struct Object2 *boxBoxer)
{
    boxBoxer->base.yspeed -= 0x3B;
    if (boxBoxer->base.yspeed < -0x300)
        boxBoxer->base.yspeed = -0x300;
    boxBoxer->base.flags |= 4;
    if (boxBoxer->unk83 == 3)
    {
        if (boxBoxer->base.unk1 == 1)
            boxBoxer->base.yspeed = 0x600;
        if (boxBoxer->base.yspeed <= 0x40)
            boxBoxer->unk83 = 4;
    }
    else
    {
        if (boxBoxer->base.yspeed <= -0x40)
            boxBoxer->unk83 = 5;
        if (boxBoxer->base.unk62 & 4)
        {
            PlaySfx(&boxBoxer->base, SE_BOX_BOXER_JUMP);
            RequestScreenShake(1, &boxBoxer->base);
            CreateImpactStars(&boxBoxer->base, -8, 0xC, (boxBoxer->base.flags & 1) ^ 1);
            CreateImpactStars(&boxBoxer->base, -0x14, 0xC, boxBoxer->base.flags & 1);
            if (!--boxBoxer->base.counter)
                Macro_080C7C18(boxBoxer);
            else
                boxBoxer->unk83 = 3;
        }
    }
}

static void BoxBoxerPunchAttack(struct Object2 *boxBoxer)
{
    ObjXSomething(boxBoxer);
    if (boxBoxer->base.unk1 < 10)
    {
        boxBoxer->base.unk62 = boxBoxer->base.unk62; // regswap
        if (boxBoxer->subtype)
        {
            if (boxBoxer->base.flags & 1)
            {
                boxBoxer->base.xspeed -= 0x80;
                if (boxBoxer->base.xspeed < -0x420)
                    boxBoxer->base.xspeed = -0x420;
                else if (boxBoxer->base.xspeed > 0x420)
                    boxBoxer->base.xspeed = 0x420;
            }
            else
            {
                boxBoxer->base.xspeed += 0x80;
                if (boxBoxer->base.xspeed > 0x420)
                    boxBoxer->base.xspeed = 0x420;
                else if (boxBoxer->base.xspeed < -0x420)
                    boxBoxer->base.xspeed = -0x420;
            }
        }
        else
        {
            if (boxBoxer->base.flags & 1)
            {
                boxBoxer->base.xspeed -= 0x80;
                if (boxBoxer->base.xspeed < -0x2A0)
                    boxBoxer->base.xspeed = -0x2A0;
                else if (boxBoxer->base.xspeed > 0x2A0)
                    boxBoxer->base.xspeed = 0x2A0;
            }
            else
            {
                boxBoxer->base.xspeed += 0x80;
                if (boxBoxer->base.xspeed > 0x2A0)
                    boxBoxer->base.xspeed = 0x2A0;
                else if (boxBoxer->base.xspeed < -0x2A0)
                    boxBoxer->base.xspeed = -0x2A0;
            }
        }
        if (boxBoxer->base.unk1 == 5)
        {
            sub_080C8DB0(boxBoxer);
            PlaySfx(&boxBoxer->base, SE_BOX_BOXER_PUNCH_ATTACK);
        }
    }
    else
    {
        if (boxBoxer->base.xspeed < 0)
        {
            boxBoxer->base.xspeed += 0x30;
            if (boxBoxer->base.xspeed > 0)
                boxBoxer->base.xspeed = 0;
        }
        else
        {
            boxBoxer->base.xspeed -= 0x30;
            if (boxBoxer->base.xspeed < 0)
                boxBoxer->base.xspeed = 0;
        }
    }
    if (boxBoxer->base.flags & 2)
        sub_080C9210(boxBoxer);
    if (boxBoxer->base.unk62 & 1)
        boxBoxer->base.xspeed = 0;
}

static void BoxBoxerPunchRecover(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.xspeed < 0)
    {
        boxBoxer->base.xspeed += 0x30;
        if (boxBoxer->base.xspeed > 0)
            boxBoxer->base.xspeed = 0;
    }
    else
    {
        boxBoxer->base.xspeed -= 0x30;
        if (boxBoxer->base.xspeed < 0)
            boxBoxer->base.xspeed = 0;
    }
    if (boxBoxer->base.flags & 2)
        Macro_080C7C18(boxBoxer);
}

static void BoxBoxerCharge(struct Object2 *boxBoxer)
{
    boxBoxer->base.flags |= 4;
    if (!--boxBoxer->base.counter)
        sub_080C9178(boxBoxer);
    if (boxBoxer->base.unk1 == 1)
        PlaySfx(&boxBoxer->base, SE_BOX_BOXER_CHARGE);
}

static void BoxBoxerWaveAttack(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.unk1 == 5)
    {
        sub_080C8C30(boxBoxer, boxBoxer->object->subtype2);
        PlaySfx(&boxBoxer->base, SE_BOX_BOXER_WAVE_ATTACK);
    }
    if (boxBoxer->base.flags & 2)
        sub_080C9198(boxBoxer);
}

static void BoxBoxerWaveRecover(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.flags & 2)
        Macro_080C7C18(boxBoxer);
}

bool8 BoxBoxerGrab(struct Object2 *boxBoxer, struct Kirby *kirby)
{
    if (boxBoxer->unk83 > 1
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->animationIndex == 0x27
        || kirby->animationIndex > 0x7A
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(boxBoxer, 0xA, BoxBoxerThrow);
    boxBoxer->base.xspeed = 0;
    boxBoxer->base.yspeed = 0;
    boxBoxer->unk9F = 0;
    boxBoxer->unk9E = 0;
    kirby->unk110 = gBoxBoxerKirbyScript;
    boxBoxer->kirby3 = kirby;
    boxBoxer->base.flags &= ~2;
    boxBoxer->base.unkC &= ~0x40;
    boxBoxer->base.unk6C = kirby;
    boxBoxer->base.counter = 5;
    PlaySfx(&boxBoxer->base, SE_BOX_BOXER_GRAB);
    return TRUE;
}

static void BoxBoxerThrow(struct Object2 *boxBoxer)
{
    struct Kirby *kirby = boxBoxer->kirby3;

    if (boxBoxer->base.unkC & 0x80)
    {
        boxBoxer->base.unkC &= ~0x80;
        sub_080C9250(boxBoxer);
    }
    else
    {
        if (boxBoxer->unk83 == 0xB
            && boxBoxer->base.unk1 == 0xD)
            PlaySfx(&boxBoxer->base, SE_BOX_BOXER_THROW);
        if (boxBoxer->unk83 == 0xD
            && boxBoxer->base.unk1 == 0x6)
            PlaySfx(&boxBoxer->base, SE_BOSS_CLAP);
        if (boxBoxer->base.flags & 2)
        {
            switch (boxBoxer->unk83)
            {
            case 0xA:
                if (!--boxBoxer->base.counter)
                {
                    boxBoxer->unk83 = 0xB;
                    boxBoxer->base.flags &= ~2;
                    kirby->unk110 = gBoxBoxerKirbyScript2;
                }
                break;
            case 0xB:
                boxBoxer->unk83 = 0xC;
                boxBoxer->base.flags &= ~2;
                boxBoxer->base.counter = 0xA;
                kirby->unk110 = gBoxBoxerKirbyScript3;
                break;
            case 0xC:
                if (!--boxBoxer->base.counter)
                {
                    boxBoxer->unk83 = 0xD;
                    boxBoxer->base.flags &= ~2;
                    kirby->unk110 = gBoxBoxerKirbyScript4;
                }
                break;
            case 0xD:
                sub_080C9230(boxBoxer);
                break;
            }
        }
    }
}

static void sub_080C885C(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.flags & 2)
        Macro_080C7C18(boxBoxer);
}

static void sub_080C891C(struct Object2 *boxBoxer)
{
    if (!--boxBoxer->base.counter)
        Macro_080C7C18(boxBoxer);
}

static void sub_080C89E0(struct Object2 *boxBoxer)
{
    struct Task *t = TaskCreate(sub_080C8AB8, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    ClearObjectBase(objBase);
    objBase->unk0 = 2;
    objBase->x = boxBoxer->base.x;
    objBase->y = boxBoxer->base.y;
    objBase->parent = boxBoxer;
    objBase->counter = 0;
    objBase->roomId = boxBoxer->base.roomId;
    objBase->unk56 = boxBoxer->base.unk56;
    if ((u16)Macro_0810B1F4(objBase)) // the cast is required for matching
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = flags = 0x12010400;
    objBase->unk68 |= 0x20;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    if (boxBoxer->base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    ObjectSetHitbox(objBase, -0xD, -0x10, 0xD, 0x10);
}

static void sub_080C8AB8(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *boxBoxer = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (boxBoxer->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else
    {
        objBase->x = boxBoxer->base.x;
        objBase->y = boxBoxer->base.y;
        objBase->unk56 = boxBoxer->base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            ObjectDisplaySprite(objBase);
        else
        {
            if (boxBoxer->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (boxBoxer->unk83 < 2)
            {
                boxBoxer->base.unk68 &= ~7;
                if (objBase->flags & 0x40000)
                    objBase->flags &= ~0x40000;
                else if (!(objBase->flags & 0x200))
                    SetPointerSomething(objBase);
            }
            else
            {
                boxBoxer->base.unk68 &= ~7;
                boxBoxer->base.unk68 |= 2;
            }
        }
    }
}

static void sub_080C8C30(struct Object2 *boxBoxer, u8 a2)
{
    s32 x = boxBoxer->base.flags & 1 ? (boxBoxer->base.x >> 8) - 0x20 : (boxBoxer->base.x >> 8) + 0x20;
    s32 y = boxBoxer->base.y >> 8;
    struct Object2 *energyBall = CreateObjTemplateAndObj(boxBoxer->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BOX_BOXER_ENERGY_BALL,
        boxBoxer->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    energyBall->base.parent = boxBoxer;
}

void *CreateBoxBoxerEnergyBall(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *energyBall = TaskGetStructPtr(t);

    InitObject(energyBall, template, a2);
    energyBall->base.flags |= 0x10000;
    energyBall->base.flags |= 0x40;
    energyBall->base.flags |= 0x100;
    energyBall->base.unkC |= 2;
    energyBall->base.unk5C |= 0x80000;
    energyBall->unk9E = 0;
    energyBall->unk7C = sub_0809F840;
    ObjectSetHitbox(&energyBall->base, -0xA, -0xA, 0xA, 0xA);
    ObjectInitSprite(energyBall);
    energyBall->base.sprite.unk14 = 0x240;
    sub_080C8FA4(energyBall);
    return energyBall;
}

static void sub_080C8DB0(struct Object2 *boxBoxer)
{
    struct Task *t = TaskCreate(sub_080C8EA4, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    ClearObjectBase(objBase);
    objBase->unk0 = 2;
    objBase->x = boxBoxer->base.x;
    objBase->y = boxBoxer->base.y;
    objBase->parent = boxBoxer;
    objBase->counter = 0;
    objBase->roomId = boxBoxer->base.roomId;
    objBase->unk56 = boxBoxer->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = 0x12000400;
    objBase->unk68 = 0x20000043;
    objBase->unk64 = 0x300;
    objBase->unk66 = 0x180;
    objBase->unk5C |= 0x80000;
    if (boxBoxer->base.flags & 1)
        objBase->flags |= 1;
    else
        objBase->flags &= ~1;
    ObjectSetHitbox(objBase, 0x10, -0xE, 0x30, 0xC);
}

static void sub_080C8EA4(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *boxBoxer = objBase->parent;

    if (objBase->roomId != 0xFFFF && boxBoxer->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    objBase->unk56 = boxBoxer->base.unk56;
    objBase->x = boxBoxer->base.x;
    objBase->y = boxBoxer->base.y;
    if (!ObjectPreUpdate(objBase))
    {
        if (++objBase->counter > 0xA)
            objBase->flags |= 0x1000;
        else
            SetPointerSomething(objBase);
    }
}

void sub_080C8FA4(struct Object2 *energyBall)
{
    ObjectSetFunc(energyBall, 0, sub_080C9274);
    if (energyBall->object->subtype1)
        energyBall->base.flags |= 1;
    switch (energyBall->subtype)
    {
    case 0:
        energyBall->base.xspeed = 0x200;
        break;
    case 1:
        energyBall->base.xspeed = 0x400;
        break;
    }
    if (energyBall->base.flags & 1)
        energyBall->base.xspeed = -energyBall->base.xspeed;
}

static void BoxBoxerStartWaitForKirby(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0, BoxBoxerWaitForKirby);
    boxBoxer->base.xspeed = 0;
    boxBoxer->base.yspeed = 0;
}

static void BoxBoxerStartHop(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 2, BoxBoxerHopWindup);
    boxBoxer->kirby3 = FindClosestKirby(&boxBoxer->base);
    boxBoxer->base.xspeed = 0;
    boxBoxer->base.yspeed = 0;
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    boxBoxer->base.flags &= ~2;
}

static void BoxBoxerHopWindup(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.flags & 2)
        sub_080C909C(boxBoxer);
}

static void sub_080C909C(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 3, BoxBoxerAirborne);
    boxBoxer->base.xspeed = 0x180;
    boxBoxer->base.yspeed = 0x500;
    boxBoxer->base.flags |= 0x20;
    if (boxBoxer->base.flags & 1)
        boxBoxer->base.xspeed = -boxBoxer->base.xspeed;
}

static void BoxBoxerStartCharge(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0xF, BoxBoxerChargeWindup);
    boxBoxer->kirby3 = FindClosestKirby(&boxBoxer->base);
    boxBoxer->base.xspeed = 0;
    boxBoxer->base.yspeed = 0;
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    boxBoxer->base.flags &= ~2;
}

static void BoxBoxerChargeWindup(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.flags & 2)
        sub_080C914C(boxBoxer);
}

static void sub_080C914C(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0x10, BoxBoxerCharge);
    if (boxBoxer->subtype)
        boxBoxer->base.counter = 0x10;
    else
        boxBoxer->base.counter = 0x2D;
}

static void sub_080C9178(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0x11, BoxBoxerWaveAttack);
    boxBoxer->base.flags &= ~2;
}

static void sub_080C9198(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0x12, BoxBoxerWaveRecover);
    boxBoxer->base.flags &= ~2;
}

static void BoxBoxerStartPunch(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 7, BoxBoxerPunchWindup);
    boxBoxer->kirby3 = FindClosestKirby(&boxBoxer->base);
    boxBoxer->base.xspeed = 0;
    boxBoxer->base.yspeed = 0;
    if (boxBoxer->base.x > boxBoxer->kirby3->base.base.base.x)
        boxBoxer->base.flags |= 1;
    else
        boxBoxer->base.flags &= ~1;
    boxBoxer->base.flags &= ~2;
}

static void sub_080C9210(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 9, BoxBoxerPunchRecover);
    boxBoxer->base.flags &= ~2;
}

static void sub_080C9230(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0xE, sub_080C885C);
    boxBoxer->base.flags &= ~2;
}

static void sub_080C9250(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 0x13, sub_080C891C);
    boxBoxer->base.flags &= ~2;
    boxBoxer->base.counter = 0x10;
}

static void sub_080C9274(struct Object2 *energyBall)
{
    energyBall->base.flags |= 4;
}

static void BoxBoxerPunchWindup(struct Object2 *boxBoxer)
{
    if (boxBoxer->base.flags & 2)
        sub_080C9298(boxBoxer);
}

static void sub_080C9298(struct Object2 *boxBoxer)
{
    ObjectSetFunc(boxBoxer, 8, BoxBoxerPunchAttack);
    boxBoxer->base.flags &= ~2;
}
