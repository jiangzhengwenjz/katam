#include "master_hand.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "inhalable_star.h"
#include "code_0806F780.h"

static void MasterHandIdle(struct Object2 *);
static void MasterHandStartPunchChase(struct Object2 *);
static void MasterHandPunchChase(struct Object2 *);
static void MasterHandStartPunchRecover(struct Object2 *);
static void MasterHandPunchRecover(struct Object2 *);
static void MasterHandStartFingerGunApproach(struct Object2 *);
static void MasterHandFingerGunApproach(struct Object2 *);
static void MasterHandFingerGunHover(struct Object2 *);
static void MasterHandStartFingerGun(struct Object2 *);
static void MasterHandFingerGun(struct Object2 *);
static void MasterHandStartPound(struct Object2 *);
static void MasterHandPound(struct Object2 *);
static void MasterHandStartPoundRecover(struct Object2 *);
static void MasterHandStartGrabChase(struct Object2 *);
static void MasterHandGrabChase(struct Object2 *);
static void MasterHandGrabSqueeze(struct Object2 *);
static void MasterHandStartGrabBroken(struct Object2 *);
static void MasterHandGrabBroken(struct Object2 *);
static void MasterHandSpawnBullet(struct Object2 *, u8);
static void MasterHandCreateGrabHitbox(struct Object2 *);
static void MasterHandGrabHitboxMain(void);
static void MasterHandStartWaitForKirby(struct Object2 *);
static void MasterHandStartPunch(struct Object2 *);
static void MasterHandStartReturnHome(struct Object2 *);
static void MasterHandStartFingerGunAim(struct Object2 *);
static void MasterHandStartFingerGunRecover(struct Object2 *);
static void MasterHandStartPoundApproach(struct Object2 *);
static void MasterHandStartPoundAim(struct Object2 *);
static void MasterHandPoundRecover(struct Object2 *);
static void MasterHandStartPoundReturn(struct Object2 *);
static void MasterHandGrabHold(struct Object2 *);
static void MasterHandStartGrabSlam(struct Object2 *);
static void MasterHandStartGrabPin(struct Object2 *);
static void MasterHandStartGrabRelease(struct Object2 *);
static void MasterHandStartGrabMiss(struct Object2 *);
static void MasterHandStartGrabMissRecover(struct Object2 *);
static void ShootingEnemyStarMain(struct Object2 *);

const struct AnimInfo gMasterHandAnimInfo[] = {
    { 0x295, 0, 0 },
    { 0x2A1, 0, 0 },
    { 0x295, 1, 0 },
};

const struct AnimInfo gMasterHandAnimInfo2[] = {
    { 0x335, 0x19, 2 },
    { 0x335,    0, 2 },
    { 0x335,    0, 0 },
};

static const struct KirbyMoveScriptStep gMasterHandKirbyScript[] = {
    {     0,    0, 1,    3,  0xA, 0x280 },
    {     6,    6, 1,    2, 0x58,  0x80 },
    {     6,    6, 1, 0x50, 0x58,  0x40 },
    { -0x32, 0x1C, 0,    1,    0,     2 },
};

static const struct KirbyMoveScriptStep gMasterHandKirbyScript2[] = {
    { 0xA,     0, 1, 0xFF, 0x4A,  0x40 },
    {   0,     0, 0,    1,    0, 0x100 },
};

static const struct KirbyMoveScriptStep gMasterHandKirbyScript3[] = {
    { 0xA,     0, 1, 5, 0x4A, 0x40 },
    { 0xE,    -2, 1, 4, 0x4A,    0 },
    {   0, -0x10, 0, 1,    0,    2 },
};

static const s8 gUnk_08356168[] = {
     6,  2,
    -5,  2,
     4, -2,
    -3, -2,
     2,  2,
    -2,  2,
     1, -3,
    -1, -3,
};

static const s8 gUnk_08356178[] = {
    -10,
     -4,
     -8,
     -3,
     -6,
     -2,
     -4,
     -1,
     -2,
};

#ifdef NONMATCHING
#define Macro_080D2088(mh) ((mh)->subtype ? !(Rand16() & 1) : !(Rand16() & 3))
#else
#define Macro_080D2088(mh) \
({ \
    u32 _r0, _r1, _r2; \
 \
    if ((mh)->subtype) \
    { \
        _r1 = Rand16() ^ 1; \
        asm(""::"r"(_r1)); \
        _r1 &= 1; \
    } \
    else \
    { \
        _r0 = Rand32(); \
        _r2 = 0; \
        if (!((_r0 >> 0x10) & 3)) \
            _r2 = 1; \
        _r1 = _r2; \
    } \
    _r1; \
})
#endif

void *CreateMasterHand(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *mh = tmp;

    InitObject(mh, template, a2);
    mh->base.flags |= 0x2000000;
    mh->base.unkC |= 1;
    mh->base.unkC |= 4;
    mh->base.flags |= 0x200;
    mh->base.flags |= 0x200000;
    mh->base.unk68 &= ~7;
    mh->base.unk5C &= ~7;
    mh->base.unk5C |= 3;
    mh->base.unk5C |= 0xA0;
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    ObjectSetHitbox(&mh->base, -0x10, -0x13, 0x10, 0xC);
    ObjectSetBounds(&mh->base, -6, -4, 6, 4);
    ObjectInitSprite(mh);
    mh->base.sprite.unk14 = 0x6C0;
    MasterHandStartWaitForKirby(mh);
    MasterHandCreateGrabHitbox(mh);
    mh->unk9E = 0;
    mh->unk7C = 0;
    return mh;
}

static void MasterHandWaitForKirby(struct Object2 *mh)
{
    mh->kirby3 = FindClosestKirby(&mh->base);
    mh->base.flags |= 4;
    if (!(mh->kirby3->base.base.base.unkC & 0x8000)
        && mh->base.roomId == mh->kirby3->base.base.base.roomId
        && Macro_08039430_1(&mh->kirby3->base.base.base, mh))
    {
        Macro_081003EC(mh, &mh->kirby3->base.base.base);
        mh->base.flags &= ~0x200;
        mh->unk85 = 0;
        MasterHandStartIdle(mh);
        mh->base.counter = 0x5A;
        Macro_08100F18(mh);
    }
}

static void MasterHandChooseAttack(struct Object2 *mh)
{
    mh->base.unk68 &= ~7;
    if (mh->unk85 > 1)
    {
        if (Rand16() & 1)
            MasterHandStartPunchChase(mh);
        else
            MasterHandStartFingerGunApproach(mh);
        mh->unk85 = 0;
    }
    else
    {
        ++mh->unk85;
        if (Rand16() & 3)
        {
            if (Rand16() & 1)
                MasterHandStartGrabChase(mh);
            else
                MasterHandStartPoundApproach(mh);
        }
        else
        {
            if (Rand16() & 1)
                MasterHandStartPunchChase(mh);
            else
                MasterHandStartFingerGunApproach(mh);
            mh->unk85 = 0;
        }
    }
}

void MasterHandStartIdle(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0, MasterHandIdle);
    if (mh->subtype || mh->unk80 <= gUnk_08351530[6][gNumPlayers - 1] >> 1)
        mh->base.counter = (Rand16() & 0xF) + 0x20;
    else
        mh->base.counter = (Rand16() & 0x1F) + 0x3A;
    mh->base.unk68 &= ~7;
}

static void MasterHandIdle(struct Object2 *mh)
{
    if (mh->base.xspeed < 0)
    {
        mh->base.xspeed += 0x4C;
        if (mh->base.xspeed > 0)
            mh->base.xspeed = 0;
    }
    else
    {
        mh->base.xspeed -= 0x4C;
        if (mh->base.xspeed < 0)
            mh->base.xspeed = 0;
    }
    if (mh->base.yspeed < 0)
    {
        mh->base.yspeed += 0x4C;
        if (mh->base.yspeed > 0)
            mh->base.yspeed = 0;
    }
    else
    {
        mh->base.yspeed -=0x4C;
        if (mh->base.yspeed < 0)
            mh->base.yspeed = 0;
    }
    if (!mh->base.counter)
    {
        if (mh->base.flags & 2)
            MasterHandChooseAttack(mh);
    }
    else
    {
        mh->base.flags |= 4;
        --mh->base.counter;
    }
}

static void MasterHandStartPunchChase(struct Object2 *mh)
{
    ObjectSetFunc(mh, 1, MasterHandPunchChase);
    mh->kirby3 = FindClosestKirby(&mh->base);
    mh->base.flags |= 0x100;
    mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
    mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    mh->unk9F = 0;
    mh->base.counter = 8;
    mh->unk85 = 0;
}

static void MasterHandPunchChase(struct Object2 *mh)
{
    s32 lhs, rhs;
    bool32 r6 = FALSE;
    s32 var;

    if (++mh->unk9E > 7)
    {
        mh->kirby3 = FindClosestKirby(&mh->base);
        mh->unk9E = 0;
        mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
        mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    }
    lhs = mh->base.y & ~0xFFF;
    rhs = ((mh->unkA2 - 0x40) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        mh->base.yspeed += 0x30;
        if (mh->base.yspeed > 0x180)
            mh->base.yspeed = 0x180;
    }
    else if (lhs < rhs)
    {
        mh->base.yspeed -= 0x30;
        if (mh->base.yspeed < -0x180)
            mh->base.yspeed = -0x180;
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 4;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 4;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0xFFF;
    rhs = (mh->unkA0 * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += mh->base.counter;
        if (mh->base.xspeed > 0x180)
            mh->base.xspeed = 0x180;
        else if (mh->base.xspeed < -0x180)
            mh->base.xspeed = -0x180;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= mh->base.counter;
            if (mh->base.xspeed < -0x180)
                mh->base.xspeed = -0x180;
            else if (mh->base.xspeed > 0x180)
                mh->base.xspeed = 0x180;
        }
        else
        {
            mh->base.xspeed += mh->base.counter;
            if (mh->base.xspeed > 0x180)
                mh->base.xspeed = 0x180;
            else if (mh->base.xspeed < -0x180)
                mh->base.xspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 4;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 4;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (mh->base.y < (mh->unkA6 + 0xC) * 0x100)
        mh->base.yspeed = 0;
    if (mh->base.x < mh->unkA4 * 0x100)
    {
        mh->base.xspeed = 0;
        r6 = TRUE;
    }
    if (mh->base.x > mh->unkA8 * 0x100)
    {
        mh->base.xspeed = 0;
        r6 = TRUE;
    }
    if (mh->base.yspeed <= 0)
        mh->unk9F = 1;
    if (mh->unk9F)
    {
        var = 0x10;
        mh->base.yspeed = 0;
        if (mh->unk85 > 0x60)
        {
            if (++mh->base.counter > 0x60)
            {
                mh->base.counter = 0x60;
                var = 0x20;
            }
        }
        else
            ++mh->unk85;
        if (abs(mh->kirby3->base.base.base.x - mh->base.x) < var * 0x100 || r6)
            MasterHandStartPunch(mh);
    }
}

static void MasterHandPunch(struct Object2 *mh)
{
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (mh->unk83 == 3)
    {
        mh->base.yspeed -= 0x7A;
        if (mh->base.yspeed < -0x680)
            mh->base.yspeed = -0x680;
        if (mh->base.unk62 & 4)
        {
            RequestScreenShake(1, &mh->base);
            CreateImpactStars(&mh->base, -8, 0xC, (mh->base.flags & 1) ^ 1);
            CreateImpactStars(&mh->base, -0x14, 0xC, mh->base.flags & 1);
            sub_080A8D18(mh, 0x1E, 8, 0, 8);
            mh->base.flags ^= 1;
            sub_080A8D18(mh, 0x1E, 8, 0, 8);
            mh->base.flags ^= 1;
            PlaySfx(&mh->base, SE_HAND_PUNCH);
            MasterHandStartPunchRecover(mh);
            return;
        }
    }
    else if (mh->unk85 < 8)
    {
        mh->base.objBase54 = gUnk_08356168[mh->unk85 >> 1];
        mh->base.objBase55 = gUnk_08356168[(mh->unk85 >> 1) + 1];
        ++mh->unk85;
    }
    if (!--mh->base.counter)
    {
        mh->base.flags &= ~0x100;
        mh->base.yspeed = -0x100;
        mh->unk83 = 3;
    }
}

static void MasterHandStartPunchRecover(struct Object2 *mh)
{
    ObjectSetFunc(mh, 3, MasterHandPunchRecover);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    if (mh->unk80 <= gUnk_08351530[6][gNumPlayers - 1] >> 1)
        mh->base.counter = 0x18;
    else
        mh->base.counter = 0x20;
    mh->unk85 = 0;
    mh->base.unk68 &= ~7;
}

static void MasterHandPunchRecover(struct Object2 *mh)
{
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (mh->unk85 < 8)
    {
        mh->base.objBase54 = gUnk_08356168[mh->unk85 >> 1];
        ++mh->unk85;
    }
    if (!--mh->base.counter)
        MasterHandStartReturnHome(mh);
}

static void MasterHandReturnHome(struct Object2 *mh)
{
    s32 lhs, rhs;

    ++mh->unk9E;
    lhs = mh->base.y & ~0x3FF;
    rhs = (mh->unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        mh->base.yspeed += 0x30;
        if (mh->base.yspeed > 0x200)
            mh->base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        mh->base.yspeed -= 0x30;
        if (mh->base.yspeed < -0x200)
            mh->base.yspeed = -0x200;
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 0xA0;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 0xA0;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0x3FF;
    rhs = (mh->unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x200)
            mh->base.xspeed = 0x200;
        else if (mh->base.xspeed < -0x200)
            mh->base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
            else if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 0xA0;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 0xA0;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (!mh->unk83)
    {
        mh->base.flags |= 4;
        if (abs(mh->unkA0 - (mh->base.x >> 8)) < 0x20
            && abs(mh->unkA2 - (mh->base.y >> 8)) < 0x10)
            MasterHandStartIdle(mh);
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            MasterHandChooseAttack(mh);
    }
}

static void MasterHandStartFingerGunApproach(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0, MasterHandFingerGunApproach);
    mh->kirby3 = FindClosestKirby(&mh->base);
    mh->base.flags |= 0x100;
    mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
    mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    mh->unk9F = 0;
    mh->base.counter = 8;
    mh->unk85 = 0;
    mh->base.flags &= ~2;
}

static void MasterHandFingerGunApproach(struct Object2 *mh)
{
    s32 lhs, rhs;
    s8 var;

    if (mh->object->subtype1)
        var = -0x60;
    else
        var = 0x60;
    if (!mh->unk83 && mh->base.flags & 2)
        mh->unk83 = 5;
    if (++mh->unk9E > 7)
    {
        mh->kirby3 = FindClosestKirby(&mh->base);
        mh->unk9E = 0;
        mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
        mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    }
    lhs = mh->base.y & ~0xFFF;
    rhs = ((mh->unkA2 + 0x10) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (mh->base.counter > 0)
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (mh->base.counter < 0)
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 4;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 4;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0xFFF;
    rhs = ((mh->unkA0 + var) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x180)
            mh->base.xspeed = 0x180;
        else if (mh->base.xspeed < -0x180)
            mh->base.xspeed = -0x180;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x180)
                mh->base.xspeed = -0x180;
            else if (mh->base.xspeed > 0x180)
                mh->base.xspeed = 0x180;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x180)
                mh->base.xspeed = 0x180;
            else if (mh->base.xspeed < -0x180)
                mh->base.xspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 4;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 4;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->base.y > mh->unkAA * 0x100)
        mh->base.y = mh->unkAA * 0x100;
    if (mh->base.y < (mh->unkA6 + 0x10) * 0x100)
        mh->base.y = (mh->unkA6 + 0x10) * 0x100;
    if (mh->object->subtype1)
    {
        mh->base.flags &= ~1;
        if (mh->base.x < (mh->unkA4 + 0xC) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.x > (mh->unkA8 - 0x50) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.xspeed >= 0)
            MasterHandStartFingerGunAim(mh);
    }
    else
    {
        mh->base.flags |= 1;
        if (mh->base.x > (mh->unkA8 - 0xC) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.x < (mh->unkA4 + 0x50) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.xspeed <= 0)
            MasterHandStartFingerGunAim(mh);
    }
}

static void MasterHandFingerGunAim(struct Object2 *mh)
{
    s32 lhs, rhs;
    s8 var;
    bool32 boolean = FALSE;
    s16 var2;

    if (mh->object->subtype1)
        var = -0x60;
    else
        var = 0x60;
    if (!mh->unk83 && mh->base.flags & 2)
        mh->unk83 = 5;
    if (++mh->unk9E > 7)
    {
        mh->kirby3 = FindClosestKirby(&mh->base);
        mh->unk9E = 0;
        mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
        mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    }
    lhs = mh->base.y & ~0xFFF;
    rhs = ((mh->unkA2 + 0x10) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (mh->base.counter > 0)
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (mh->base.counter < 0)
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 4;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 4;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0xFFF;
    rhs = ((mh->unkA0 + var) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x80;
        if (mh->base.xspeed > 0x100)
            mh->base.xspeed = 0x100;
        else if (mh->base.xspeed < -0x100)
            mh->base.xspeed = -0x100;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x80;
            if (mh->base.xspeed < -0x100)
                mh->base.xspeed = -0x100;
            else if (mh->base.xspeed > 0x100)
                mh->base.xspeed = 0x100;
        }
        else
        {
            mh->base.xspeed += 0x80;
            if (mh->base.xspeed > 0x100)
                mh->base.xspeed = 0x100;
            else if (mh->base.xspeed < -0x100)
                mh->base.xspeed = -0x100;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 4;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 4;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
    {
        mh->base.flags &= ~1;
        if (mh->base.xspeed > 0)
            mh->base.xspeed = 0;
    }
    else
    {
        mh->base.flags |= 1;
        if (mh->base.xspeed < 0)
            mh->base.xspeed = 0;
    }
    if (mh->base.x > (mh->unkA8 - 0xC) * 0x100)
        mh->base.x = (mh->unkA8 - 0xC) * 0x100;
    if (mh->base.x < (mh->unkA4 + 0xC) * 0x100)
        mh->base.x = (mh->unkA4 + 0xC) * 0x100;
    if (mh->base.y > (mh->unkAA) * 0x100)
        mh->base.y = (mh->unkAA) * 0x100;
    if (mh->base.y < (mh->unkA6 + 0x10) * 0x100)
        mh->base.y = (mh->unkA6 + 0x10) * 0x100;
    if (mh->kirby3->base.base.base.x > mh->unkA8 * 0x100
        || mh->kirby3->base.base.base.x < mh->unkA4 * 0x100
        || mh->kirby3->base.base.base.y > mh->unkAA * 0x100
        || mh->kirby3->base.base.base.y < (mh->unkA6 + 0xC) * 0x100)
        boolean = TRUE;
    var2 = 0xC;
    if (mh->unk85 > 0x60)
    {
        if (++mh->base.counter > 0x60)
        {
            mh->base.counter = 0x60;
            var2 = 0x30;
        }
    }
    else
        ++mh->unk85;
    if (abs(({ mh->kirby3->base.base.base.y + 0x1000; }) - mh->base.y) < (var2 * 0x100)
        || (var2 == 0x30 && boolean))
    {
        mh->unk83 = 5;
        mh->base.flags &= ~2;
        if (mh->subtype)
            mh->unk9F = 0x2C;
        else
            mh->unk9F = 0x30;
        mh->unk85 = 0;
        mh->unk78 = MasterHandFingerGunHover;
    }
}

static void MasterHandFingerGunHover(struct Object2 *mh)
{
    s32 lhs, rhs;
    s8 var;
    bool32 boolean = FALSE;

    if (mh->object->subtype1)
        var = -0x60;
    else
        var = 0x60;
    if (++mh->unk9E > 7)
    {
        mh->kirby3 = FindClosestKirby(&mh->base);
        mh->unk9E = 0;
        mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
        mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    }
    lhs = mh->base.y & ~0xFFF;
    rhs = ((mh->unkA2 + 0x10) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (mh->base.counter > 0)
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (mh->base.counter < 0)
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 4;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 4;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0xFFF;
    rhs = ((mh->unkA0 + var) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x80;
        if (mh->base.xspeed > 0x100)
            mh->base.xspeed = 0x100;
        else if (mh->base.xspeed < -0x100)
            mh->base.xspeed = -0x100;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x80;
            if (mh->base.xspeed < -0x100)
                mh->base.xspeed = -0x100;
            else if (mh->base.xspeed > 0x100)
                mh->base.xspeed = 0x100;
        }
        else
        {
            mh->base.xspeed += 0x80;
            if (mh->base.xspeed > 0x100)
                mh->base.xspeed = 0x100;
            else if (mh->base.xspeed < -0x100)
                mh->base.xspeed = -0x100;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 4;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 4;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
    {
        mh->base.flags &= ~1;
        if (mh->base.xspeed > 0)
            mh->base.xspeed = 0;
    }
    else
    {
        mh->base.flags |= 1;
        if (mh->base.xspeed < 0)
            mh->base.xspeed = 0;
    }
    if (mh->base.x > (mh->unkA8 - 0xC) * 0x100)
        mh->base.x = (mh->unkA8 - 0xC) * 0x100;
    if (mh->base.x < (mh->unkA4 + 0xC) * 0x100)
        mh->base.x = (mh->unkA4 + 0xC) * 0x100;
    if (mh->base.y > (mh->unkAA) * 0x100)
        mh->base.y = (mh->unkAA) * 0x100;
    if (mh->base.y < (mh->unkA6 + 0x10) * 0x100)
        mh->base.y = (mh->unkA6 + 0x10) * 0x100;
    if (mh->kirby3->base.base.base.x > mh->unkA8 * 0x100
        || mh->kirby3->base.base.base.x < mh->unkA4 * 0x100
        || mh->kirby3->base.base.base.y > mh->unkAA * 0x100
        || mh->kirby3->base.base.base.y < mh->unkA6 * 0x100)
        boolean = TRUE;
    if (++mh->base.counter > 0x60)
        mh->base.counter = 0x60;
    if (!--mh->unk9F || boolean)
        MasterHandStartFingerGun(mh);
}

static void MasterHandStartFingerGun(struct Object2 *mh)
{
    ObjectSetFunc(mh, 6, MasterHandFingerGun);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->unk9F = 0;
    mh->unk9E = 0;
    mh->base.flags &= ~2;
    if (mh->subtype)
        mh->base.counter = 4;
    else
        mh->base.counter = 8;
    ++mh->unk85;
    mh->base.unk68 &= ~7;
    mh->base.unk68 |= 2;
}

static void MasterHandFingerGun(struct Object2 *mh)
{
    if (mh->unk83 == 7)
    {
        if (mh->base.unk1 == 8)
        {
            MasterHandSpawnBullet(mh, mh->object->subtype2);
            PlaySfx(&mh->base, SE_HAND_FINGER_GUN);
        }
        if (mh->base.unk1 >= 8 && mh->base.unk1 <= 0xF)
            mh->base.objBase54 = gUnk_08356178[mh->base.unk1 - 8];
        if (mh->base.unk1 == 0x18)
        {
            u16 r1;

            if (mh->unk85 < 3)
            {
                if (mh->subtype || mh->unk80 <= gUnk_08351530[6][gNumPlayers - 1] >> 1)
                {
                    if (mh->unk85 != 1)
                        r1 = Rand16() & 1;
                    else
                        r1 = 1;
                }
                else
                    r1 = Rand16() & 1;
                if (r1)
                {
                    mh->unk83 = 6;
                    mh->base.flags &= ~2;
                    mh->base.counter = 0x60;
                    if (mh->subtype)
                        mh->unk9F = 0xC;
                    else
                        mh->unk9F = 0x10;
                    mh->unk78 = MasterHandFingerGunHover;
                    return;
                }
            }
        }
        if (mh->base.flags & 2)
            MasterHandStartFingerGunRecover(mh);
    }
    else
    {
        if (mh->unk9E < 8)
        {
            mh->base.objBase54 = gUnk_08356168[mh->unk9E >> 1];
            mh->base.objBase55 = gUnk_08356168[(mh->unk9E >> 1) + 1];
            ++mh->unk9E;
        }
        if (!--mh->base.counter)
        {
            mh->unk83 = 7;
            mh->base.flags &= ~2;
            mh->base.unk68 &= ~7;
        }
    }
}

static void MasterHandFingerGunRecover(struct Object2 *mh)
{
    s32 lhs, rhs;

    ++mh->unk9E;
    lhs = mh->base.y & ~0x3FF;
    rhs = (mh->unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        mh->base.yspeed += 0x30;
        if (mh->base.yspeed > 0x200)
            mh->base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        mh->base.yspeed -= 0x30;
        if (mh->base.yspeed < -0x200)
            mh->base.yspeed = -0x200;
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 0xA0;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 0xA0;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0x3FF;
    rhs = (mh->unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x200)
            mh->base.xspeed = 0x200;
        else if (mh->base.xspeed < -0x200)
            mh->base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
            else if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 0xA0;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 0xA0;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (!mh->unk83)
    {
        mh->base.flags |= 4;
        if (abs(mh->unkA0 - (mh->base.x >> 8)) < 0x20
            && abs(mh->unkA2 - (mh->base.y >> 8)) < 0x10)
            MasterHandStartIdle(mh);
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            MasterHandChooseAttack(mh);
    }
}

static void MasterHandPoundApproach(struct Object2 *mh)
{
    s32 lhs, rhs;
    s8 var;

    if (!mh->unk83 && mh->base.flags & 2)
        mh->unk83 = 9;
    if (mh->object->subtype1)
        var = -0x60;
    else
        var = 0x60;
    if (++mh->unk9E > 7)
    {
        mh->kirby3 = FindClosestKirby(&mh->base);
        mh->unk9E = 0;
        mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
        mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    }
    lhs = mh->base.y & ~0xFFF;
    rhs = (mh->unkA2 * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (mh->base.counter > 0)
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (mh->base.counter < 0)
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 4;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 4;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0xFFF;
    rhs = ((mh->unkA0 + var) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x180)
            mh->base.xspeed = 0x180;
        else if (mh->base.xspeed < -0x180)
            mh->base.xspeed = -0x180;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x180)
                mh->base.xspeed = -0x180;
            else if (mh->base.xspeed > 0x180)
                mh->base.xspeed = 0x180;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x180)
                mh->base.xspeed = 0x180;
            else if (mh->base.xspeed < -0x180)
                mh->base.xspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 4;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 4;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
    {
        mh->base.flags &= ~1;
        if (mh->base.x < (mh->unkA4 + 0xC) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.x > (mh->unkA8 - 0x50) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.xspeed >= 0)
            MasterHandStartPoundAim(mh);
    }
    else
    {
        mh->base.flags |= 1;
        if (mh->base.x > (mh->unkA8 - 0xC) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.x < (mh->unkA4 + 0x50) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.xspeed <= 0)
            MasterHandStartPoundAim(mh);
    }
}

static void MasterHandPoundAim(struct Object2 *mh)
{
    s32 lhs, rhs;
    s32 var2 = 0xC;
    bool32 boolean = FALSE;
    s8 var;

    if (!mh->unk83 && mh->base.flags & 2)
        mh->unk83 = 9;
    if (mh->object->subtype1)
        var = -0x60;
    else
        var = 0x60;
    if (++mh->unk9E > 7)
    {
        mh->kirby3 = FindClosestKirby(&mh->base);
        mh->unk9E = 0;
        mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
        mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    }
    lhs = mh->base.y & ~0xFFF;
    rhs = (mh->unkA2 * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (mh->base.counter > 0)
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed += mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (mh->base.counter < 0)
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed > 0x180)
                mh->base.yspeed = 0x180;
        }
        else
        {
            mh->base.yspeed -= *(vs16 *)&mh->base.counter;
            if (mh->base.yspeed < -0x180)
                mh->base.yspeed = -0x180;
        }
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 4;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 4;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0xFFF;
    rhs = ((mh->unkA0 + var) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x80;
        if (mh->base.xspeed > 0x100)
            mh->base.xspeed = 0x100;
        else if (mh->base.xspeed < -0x100)
            mh->base.xspeed = -0x100;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x80;
            if (mh->base.xspeed < -0x100)
                mh->base.xspeed = -0x100;
            else if (mh->base.xspeed > 0x100)
                mh->base.xspeed = 0x100;
        }
        else
        {
            mh->base.xspeed += 0x80;
            if (mh->base.xspeed > 0x100)
                mh->base.xspeed = 0x100;
            else if (mh->base.xspeed < -0x100)
                mh->base.xspeed = -0x100;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 4;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 4;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
    {
        mh->base.flags &= ~1;
        if (mh->base.xspeed > 0)
            mh->base.xspeed = 0;
    }
    else
    {
        mh->base.flags |= 1;
        if (mh->base.xspeed < 0)
            mh->base.xspeed = 0;
    }
    if (mh->base.x > (mh->unkA8 - 0xC) * 0x100)
        mh->base.x = (mh->unkA8 - 0xC) * 0x100;
    if (mh->base.x < (mh->unkA4 + 0xC) * 0x100)
        mh->base.x = (mh->unkA4 + 0xC) * 0x100;
    if (mh->base.y > (mh->unkAA - 0xC) * 0x100)
        mh->base.y = (mh->unkAA - 0xC) * 0x100;
    if (mh->base.y < (mh->unkA6 + 0xC) * 0x100)
        mh->base.y = (mh->unkA6 + 0xC) * 0x100;
    if (mh->kirby3->base.base.base.x > mh->unkA8 * 0x100
        || mh->kirby3->base.base.base.x < mh->unkA4 * 0x100
        || mh->kirby3->base.base.base.y > mh->unkAA * 0x100
        || mh->kirby3->base.base.base.y < mh->unkA6 * 0x100)
        boolean = TRUE;
    if (mh->unk83 == 0xA)
    {
        if (++mh->base.counter > 0x60)
            mh->base.counter = 0x60;
        if (!--mh->unk9F)
            MasterHandStartPound(mh);
    }
    else
    {
        if (mh->unk9F > 0x40)
        {
            var2 = 0x30;
            if (++mh->base.counter > 0x60)
                mh->base.counter = 0x60;
        }
        else
            ++mh->unk9F;
        if (abs(mh->kirby3->base.base.base.y - mh->base.y) < (var2 * 0x100)
            || (mh->base.counter == 0x60 && boolean))
        {
            mh->unk83 = 0xA;
            mh->unk9F = 0x18;
        }
    }
}

static void MasterHandStartPound(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0xA, MasterHandPound);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    if (Rand16() & 3)
        mh->unk9F = 0x10;
    else
        mh->unk9F = 0xFF;
    mh->unk9E = 0;
    mh->base.flags &= ~2;
    if (mh->subtype)
        mh->base.counter = 0x14;
    else
        mh->base.counter = 0x18;
    mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
    mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    mh->base.unk68 &= ~7;
    mh->base.unk68 |= 2;
}

static void MasterHandPound(struct Object2 *mh)
{
    if (mh->unk9E < 8)
    {
        mh->base.objBase54 = gUnk_08356168[mh->unk9E >> 1];
        mh->base.objBase55 = gUnk_08356168[(mh->unk9E >> 1) + 1];
        ++mh->unk9E;
    }
    if (!mh->base.counter)
    {
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x90;
            if (mh->base.xspeed < -0x780)
                mh->base.xspeed = -0x780;
            else if (mh->base.xspeed > 0x780)
                mh->base.xspeed = 0x780;
        }
        else
        {
            mh->base.xspeed += 0x90;
            if (mh->base.xspeed > 0x780)
                mh->base.xspeed = 0x780;
            else if (mh->base.xspeed < -0x780)
                mh->base.xspeed = -0x780;
        }
        if (mh->base.flags & 1)
        {
            if (mh->base.x < mh->unkA4 * 0x100)
            {
                MasterHandStartPoundRecover(mh);
                return;
            }
            else
            {
                if (!mh->unk9F)
                {
                    if (mh->base.x < (mh->unkA0 - 8) * 0x100)
                    {
                        MasterHandStartPoundRecover(mh);
                        return;
                    }
                }
            }
        }
        else
        {
            if (mh->base.x > mh->unkA8 * 0x100)
            {
                MasterHandStartPoundRecover(mh);
                return;
            }
            else
            {
                if (!mh->unk9F)
                {
                    if (mh->base.x > (mh->unkA0 + 8) * 0x100)
                        MasterHandStartPoundRecover(mh);
                }
            }
        }
        if (mh->unk9F) --mh->unk9F;
    }
    else if (!--mh->base.counter)
        PlaySfx(&mh->base, SE_HAND_POUND);
}

static void MasterHandStartPoundRecover(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0xA, MasterHandPoundRecover);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->unk9F = 0;
    mh->unk9E = 0;
    mh->base.flags &= ~2;
    if (mh->subtype || mh->unk80 <= gUnk_08351530[6][gNumPlayers - 1] >> 1)
        mh->base.counter = 0x1C;
    else
        mh->base.counter = 0x20;
    mh->base.unk68 &= ~7;
}

static void MasterHandPoundReturn(struct Object2 *mh)
{
    s32 lhs, rhs;

    ++mh->unk9E;
    lhs = mh->base.y & ~0x3FF;
    rhs = (mh->unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        mh->base.yspeed += 0x30;
        if (mh->base.yspeed > 0x200)
            mh->base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        mh->base.yspeed -= 0x30;
        if (mh->base.yspeed < -0x200)
            mh->base.yspeed = -0x200;
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 0xA0;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 0xA0;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0x3FF;
    rhs = (mh->unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x200)
            mh->base.xspeed = 0x200;
        else if (mh->base.xspeed < -0x200)
            mh->base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
            else if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 0xA0;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 0xA0;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (!mh->unk83)
    {
        mh->base.flags |= 4;
        if (abs(mh->unkA0 - (mh->base.x >> 8)) < 0x20
            && abs(mh->unkA2 - (mh->base.y >> 8)) < 0x10)
            MasterHandStartIdle(mh);
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            MasterHandChooseAttack(mh);
    }
}

static void MasterHandStartGrabChase(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0xC, MasterHandGrabChase);
    mh->kirby3 = FindClosestKirby(&mh->base);
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->base.unkC &= ~0x40;
    mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
    mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    mh->unk9F = 0;
    if (mh->subtype)
        mh->base.counter = 0x3E;
    else
        mh->base.counter = 0x44;
}

static void MasterHandGrabChase(struct Object2 *mh)
{
    s32 lhs, rhs;

    if (mh->subtype)
    {
        if (++mh->unk9E > 7)
        {
            mh->kirby3 = FindClosestKirby(&mh->base);
            mh->unk9E = 0;
            mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
            mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
        }
        lhs = mh->base.y & ~0xFFF;
        rhs = (mh->unkA2 * 0x100) & ~0xFFF;
        if (lhs > rhs)
        {
            mh->base.yspeed += 0x50;
            if (mh->base.yspeed > 0x200)
                mh->base.yspeed = 0x200;
        }
        else if (lhs < rhs)
        {
            mh->base.yspeed -= 0x50;
            if (mh->base.yspeed < -0x200)
                mh->base.yspeed = -0x200;
        }
        else
        {
            if (mh->base.yspeed < 0)
            {
                mh->base.yspeed += 4;
                if (mh->base.yspeed > 0)
                    mh->base.yspeed = 0;
            }
            else
            {
                mh->base.yspeed -= 4;
                if (mh->base.yspeed < 0)
                    mh->base.yspeed = 0;
            }
        }
        lhs = mh->base.x & ~0xFFF;
        rhs = (mh->unkA0 * 0x100) & ~0xFFF;
        if (lhs < rhs)
        {
            mh->base.flags &= ~1;
            mh->base.xspeed += 0x50;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
        else if (lhs > rhs)
        {
            mh->base.flags |= 1;
            if (mh->base.flags & 1)
            {
                mh->base.xspeed -= 0x50;
                if (mh->base.xspeed < -0x200)
                    mh->base.xspeed = -0x200;
                else if (mh->base.xspeed > 0x200)
                    mh->base.xspeed = 0x200;
            }
            else
            {
                mh->base.xspeed += 0x50;
                if (mh->base.xspeed > 0x200)
                    mh->base.xspeed = 0x200;
                else if (mh->base.xspeed < -0x200)
                    mh->base.xspeed = -0x200;
            }
        }
        else
        {
            if (mh->base.xspeed < 0)
            {
                mh->base.xspeed += 4;
                if (mh->base.xspeed > 0)
                    mh->base.xspeed = 0;
            }
            else
            {
                mh->base.xspeed -= 4;
                if (mh->base.xspeed < 0)
                    mh->base.xspeed = 0;
            }
        }
    }
    else
    {
        if (++mh->unk9E > 7)
        {
            mh->kirby3 = FindClosestKirby(&mh->base);
            mh->unk9E = 0;
            mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
            mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
        }
        lhs = mh->base.y & ~0xFFF;
        rhs = (mh->unkA2 * 0x100) & ~0xFFF;
        if (lhs > rhs)
        {
            mh->base.yspeed += 0x50;
            if (mh->base.yspeed > 0x1C0)
                mh->base.yspeed = 0x1C0;
        }
        else if (lhs < rhs)
        {
            mh->base.yspeed -= 0x50;
            if (mh->base.yspeed < -0x1C0)
                mh->base.yspeed = -0x1C0;
        }
        else
        {
            if (mh->base.yspeed < 0)
            {
                mh->base.yspeed += 4;
                if (mh->base.yspeed > 0)
                    mh->base.yspeed = 0;
            }
            else
            {
                mh->base.yspeed -= 4;
                if (mh->base.yspeed < 0)
                    mh->base.yspeed = 0;
            }
        }
        lhs = mh->base.x & ~0xFFF;
        rhs = (mh->unkA0 * 0x100) & ~0xFFF;
        if (lhs < rhs)
        {
            mh->base.flags &= ~1;
            mh->base.xspeed += 0x50;
            if (mh->base.xspeed > 0x1C0)
                mh->base.xspeed = 0x1C0;
            else if (mh->base.xspeed < -0x1C0)
                mh->base.xspeed = -0x1C0;
        }
        else if (lhs > rhs)
        {
            mh->base.flags |= 1;
            if (mh->base.flags & 1)
            {
                mh->base.xspeed -= 0x50;
                if (mh->base.xspeed < -0x1C0)
                    mh->base.xspeed = -0x1C0;
                else if (mh->base.xspeed > 0x1C0)
                    mh->base.xspeed = 0x1C0;
            }
            else
            {
                mh->base.xspeed += 0x50;
                if (mh->base.xspeed > 0x1C0)
                    mh->base.xspeed = 0x1C0;
                else if (mh->base.xspeed < -0x1C0)
                    mh->base.xspeed = -0x1C0;
            }
        }
        else
        {
            if (mh->base.xspeed < 0)
            {
                mh->base.xspeed += 4;
                if (mh->base.xspeed > 0)
                    mh->base.xspeed = 0;
            }
            else
            {
                mh->base.xspeed -= 4;
                if (mh->base.xspeed < 0)
                    mh->base.xspeed = 0;
            }
        }
    }
    if (mh->base.x > (mh->unkA8 - 0xC) * 0x100
        || mh->base.x < (mh->unkA4 + 0xC) * 0x100)
        mh->base.xspeed = 0;
    if (mh->base.y > (mh->unkAA - 0xC) * 0x100
        || mh->base.y < (mh->unkA6 + 0xC) * 0x100)
        mh->base.yspeed = 0;
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (mh->base.flags & 2)
        mh->unk83 = 0xD;
    if (!--mh->base.counter)
        MasterHandStartGrabMiss(mh);
}

bool8 MasterHandGrab(struct Object2 *mh, struct Kirby *kirby)
{
    if (mh->unk83 != 0xD
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->animationIndex == 0x27
        || kirby->animationIndex > 0x7A
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(mh, 0xE, MasterHandGrabHold);
    ObjectSetHitbox(&mh->base, -0x10, -0xC, 8, 0xC);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->unk9F = 0;
    mh->unk9E = 0;
    kirby->unk110 = gMasterHandKirbyScript;
    mh->kirby3 = kirby;
    mh->base.counter = mh->unk80;
    mh->base.flags &= ~2;
    mh->base.unk6C = kirby;
    PlaySfx(&mh->base, SE_HAND_GRAB);
    return TRUE;
}

static void MasterHandStartGrabSqueeze(struct Object2 *mh)
{
    mh->kirby3->unk110 = gMasterHandKirbyScript2;
    ObjectSetFunc(mh, 0xF, MasterHandGrabSqueeze);
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->unkA0 = mh->unkA4 + 0x78;
    if (mh->unkA6 + 0x40 < mh->object->y)
        mh->unkA2 = mh->unkA6 + 0x40;
    else
        mh->unkA2 = mh->object->y;
}

static void MasterHandGrabSqueeze(struct Object2 *mh)
{
    s32 lhs, rhs;
    struct Kirby *kirby = mh->kirby3;

    if (mh->base.unkC & 0x80 || !kirby->unk110)
    {
        mh->base.unkC &= ~0x80;
        MasterHandStartGrabBroken(mh);
        return;
    }
    ++mh->unk9E;
    lhs = mh->base.y & ~0xFFF;
    rhs = (mh->unkA2 * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        mh->base.yspeed += 0x30;
        if (mh->base.yspeed > 0x200)
            mh->base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        mh->base.yspeed -= 0x30;
        if (mh->base.yspeed < -0x200)
            mh->base.yspeed = -0x200;
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 4;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 4;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0xFFF;
    rhs = (mh->unkA0 * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x200)
            mh->base.xspeed = 0x200;
        else if (mh->base.xspeed < -0x200)
            mh->base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
            else if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 4;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 4;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0x10;
        ObjectSetHitbox(&mh->base, -0x10, -0x13, 0x10, 0xC);
    }
    if (mh->unk83 == 0x10 && mh->unkA2 + 0x10 >= mh->base.y >> 8
        && mh->base.x < mh->unkA8 * 0x100 + 0x400 && mh->base.x > mh->unkA4 * 0x100 - 0x400)
        MasterHandStartGrabSlam(mh);
}

static void MasterHandGrabSlam(struct Object2 *mh)
{
    struct Kirby *kirby = mh->kirby3;

    if (mh->base.unkC & 0x80 || !kirby->unk110)
    {
        mh->base.unkC &= ~0x80;
        MasterHandStartGrabBroken(mh);
        return;
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (!mh->base.counter)
    {
        mh->base.yspeed -= 0x7A;
        if (mh->base.yspeed < -0x680)
            mh->base.yspeed = -0x680;
        if (mh->base.unk62 & 4)
        {
            RequestScreenShake(1, &mh->base);
            CreateImpactStars(&mh->base, -8, 0xC, (mh->base.flags & 1) ^ 1);
            CreateImpactStars(&mh->base, -0x14, 0xC, mh->base.flags & 1);
            PlaySfx(&mh->base, SE_HAND_PUNCH);
            MasterHandStartGrabPin(mh);
        }
    }
    else if (!--mh->base.counter)
    {
        mh->base.flags &= ~0x100;
        mh->base.yspeed = -0x100;
    }
}

static void MasterHandGrabPin(struct Object2 *mh)
{
    struct Kirby *kirby = mh->kirby3;

    if (mh->base.unkC & 0x80 || !kirby->unk110)
    {
        mh->base.unkC &= ~0x80;
        MasterHandStartGrabBroken(mh);
        return;
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (mh->unk9E < 8)
    {
        mh->base.objBase54 = gUnk_08356168[mh->unk9E >> 1];
        ++mh->unk9E;
    }
    if (!--mh->base.counter)
        MasterHandStartGrabRelease(mh);
}

static void MasterHandGrabRelease(struct Object2 *mh)
{
    s32 lhs, rhs;

    ++mh->unk9E;
    lhs = mh->base.y & ~0x3FF;
    rhs = (mh->unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        mh->base.yspeed += 0x30;
        if (mh->base.yspeed > 0x200)
            mh->base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        mh->base.yspeed -= 0x30;
        if (mh->base.yspeed < -0x200)
            mh->base.yspeed = -0x200;
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 0xA0;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 0xA0;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0x3FF;
    rhs = (mh->unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x200)
            mh->base.xspeed = 0x200;
        else if (mh->base.xspeed < -0x200)
            mh->base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
            else if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 0xA0;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 0xA0;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (!mh->unk83)
    {
        mh->base.flags |= 4;
        if (abs(mh->unkA0 - (mh->base.x >> 8)) < 0x20
            && abs(mh->unkA2 - (mh->base.y >> 8)) < 0x10)
            MasterHandStartIdle(mh);
    }
    else if (mh->base.unk1 <= 0x17)
    {
        mh->base.xspeed = 0;
        mh->base.yspeed = 0x1A0;
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            MasterHandChooseAttack(mh);
    }
}

static void MasterHandGrabMiss(struct Object2 *mh)
{
    if (mh->base.xspeed < 0)
    {
        mh->base.xspeed += 0x4C;
        if (mh->base.xspeed > 0)
            mh->base.xspeed = 0;
    }
    else
    {
        mh->base.xspeed -= 0x4C;
        if (mh->base.xspeed < 0)
            mh->base.xspeed = 0;
    }
    if (mh->base.yspeed < 0)
    {
        mh->base.yspeed += 0x4C;
        if (mh->base.yspeed > 0)
            mh->base.yspeed = 0;
    }
    else
    {
        mh->base.yspeed -= 0x4C;
        if (mh->base.yspeed < 0)
            mh->base.yspeed = 0;
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (mh->unk83 == 0xE)
    {
        if (mh->base.flags & 2)
        {
            mh->base.flags &= ~2;
            mh->unk83 = 0xF;
        }
    }
    else if (mh->unk83 == 0xF && mh->base.flags & 2)
    {
        ObjectSetHitbox(&mh->base, -0x10, -0x13, 0x10, 0xC);
        MasterHandStartGrabMissRecover(mh);
    }
}

static void MasterHandGrabMissRecover(struct Object2 *mh)
{
    s32 lhs, rhs;

    ++mh->unk9E;
    lhs = mh->base.y & ~0x3FF;
    rhs = (mh->unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        mh->base.yspeed += 0x30;
        if (mh->base.yspeed > 0x200)
            mh->base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        mh->base.yspeed -= 0x30;
        if (mh->base.yspeed < -0x200)
            mh->base.yspeed = -0x200;
    }
    else
    {
        if (mh->base.yspeed < 0)
        {
            mh->base.yspeed += 0xA0;
            if (mh->base.yspeed > 0)
                mh->base.yspeed = 0;
        }
        else
        {
            mh->base.yspeed -= 0xA0;
            if (mh->base.yspeed < 0)
                mh->base.yspeed = 0;
        }
    }
    lhs = mh->base.x & ~0x3FF;
    rhs = (mh->unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        mh->base.flags &= ~1;
        mh->base.xspeed += 0x30;
        if (mh->base.xspeed > 0x200)
            mh->base.xspeed = 0x200;
        else if (mh->base.xspeed < -0x200)
            mh->base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        mh->base.flags |= 1;
        if (mh->base.flags & 1)
        {
            mh->base.xspeed -= 0x30;
            if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
            else if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
        }
        else
        {
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
    }
    else
    {
        if (mh->base.xspeed < 0)
        {
            mh->base.xspeed += 0xA0;
            if (mh->base.xspeed > 0)
                mh->base.xspeed = 0;
        }
        else
        {
            mh->base.xspeed -= 0xA0;
            if (mh->base.xspeed < 0)
                mh->base.xspeed = 0;
        }
    }
    if (mh->object->subtype1)
        mh->base.flags &= ~1;
    else
        mh->base.flags |= 1;
    if (!mh->unk83)
    {
        mh->base.flags |= 4;
        if (abs(mh->unkA0 - (mh->base.x >> 8)) < 0x20
            && abs(mh->unkA2 - (mh->base.y >> 8)) < 0x10)
            MasterHandStartIdle(mh);
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            MasterHandChooseAttack(mh);
    }
}

static void MasterHandStartGrabBroken(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0x16, MasterHandGrabBroken);
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->unkA0 = mh->object->x;
    mh->unkA2 = mh->object->y;
    mh->base.counter = 0x10;
    ObjectSetHitbox(&mh->base, -0x10, -0x13, 0x10, 0xC);
}

static void MasterHandGrabBroken(struct Object2 *mh)
{
    if (!mh->base.counter)
    {
        s32 lhs, rhs;

        ++mh->unk9E;
        lhs = mh->base.y & ~0x3FF;
        rhs = (mh->unkA2 * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            mh->base.yspeed += 0x30;
            if (mh->base.yspeed > 0x200)
                mh->base.yspeed = 0x200;
        }
        else if (lhs < rhs)
        {
            mh->base.yspeed -= 0x30;
            if (mh->base.yspeed < -0x200)
                mh->base.yspeed = -0x200;
        }
        else
        {
            if (mh->base.yspeed < 0)
            {
                mh->base.yspeed += 0xA0;
                if (mh->base.yspeed > 0)
                    mh->base.yspeed = 0;
            }
            else
            {
                mh->base.yspeed -= 0xA0;
                if (mh->base.yspeed < 0)
                    mh->base.yspeed = 0;
            }
        }
        lhs = mh->base.x & ~0x3FF;
        rhs = (mh->unkA0 * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            mh->base.flags &= ~1;
            mh->base.xspeed += 0x30;
            if (mh->base.xspeed > 0x200)
                mh->base.xspeed = 0x200;
            else if (mh->base.xspeed < -0x200)
                mh->base.xspeed = -0x200;
        }
        else if (lhs > rhs)
        {
            mh->base.flags |= 1;
            if (mh->base.flags & 1)
            {
                mh->base.xspeed -= 0x30;
                if (mh->base.xspeed < -0x200)
                    mh->base.xspeed = -0x200;
                else if (mh->base.xspeed > 0x200)
                    mh->base.xspeed = 0x200;
            }
            else
            {
                mh->base.xspeed += 0x30;
                if (mh->base.xspeed > 0x200)
                    mh->base.xspeed = 0x200;
                else if (mh->base.xspeed < -0x200)
                    mh->base.xspeed = -0x200;
            }
        }
        else
        {
            if (mh->base.xspeed < 0)
            {
                mh->base.xspeed += 0xA0;
                if (mh->base.xspeed > 0)
                    mh->base.xspeed = 0;
            }
            else
            {
                mh->base.xspeed -= 0xA0;
                if (mh->base.xspeed < 0)
                    mh->base.xspeed = 0;
            }
        }
        if (mh->object->subtype1)
            mh->base.flags &= ~1;
        else
            mh->base.flags |= 1;
        if (!mh->unk83)
        {
            mh->base.flags |= 4;
            if (abs(mh->unkA0 - (mh->base.x >> 8)) < 0x20
                && abs(mh->unkA2 - (mh->base.y >> 8)) < 0x10)
                MasterHandStartIdle(mh);
        }
    }
    else if (!--mh->base.counter)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            MasterHandChooseAttack(mh);
    }
}

static void MasterHandSpawnBullet(struct Object2 *mh, u8 a2)
{
    s32 x = mh->base.flags & 1 ? (mh->base.x >> 8) - 0x20 : (mh->base.x >> 8) + 0x20;
    s32 y = (mh->base.y >> 8) - 0x10;
    struct Object2 *bullet = CreateObjTemplateAndObj(mh->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MASTER_HAND_BULLET,
        mh->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    bullet->base.parent = mh;
}

void *CreateShootingEnemyStar(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *star = TaskGetStructPtr(t);

    InitObject(star, template, a2);
    star->base.flags |= 0x10000;
    star->base.flags |= 0x40;
    star->base.flags |= 0x100;
    star->base.flags |= 0x4000;
    star->base.unkC |= 2;
    star->unk9E = 0;
    star->unk7C = sub_0809F840;
    ObjectSetHitbox(&star->base, -5, -3, 5, 8);
    ObjectSetBounds(&star->base, -6, -4, 6, 0xA);
    ObjectInitSprite(star);
    star->base.sprite.unk14 = 0x240;
    ShootingEnemyStarInit(star);
    return star;
}

void ShootingEnemyStarInit(struct Object2 *star)
{
    ObjectSetFunc(star, 0, ShootingEnemyStarMain);
    if (star->object->subtype1)
        star->base.flags |= 1;
    switch (star->subtype)
    {
    case 0:
        star->base.xspeed = 0x580;
        break;
    case 1:
        star->base.xspeed = 0x680;
        star->unk83 = 1;
        break;
    }
    if (star->base.flags & 1)
        star->base.xspeed = -star->base.xspeed;
    sub_080706A0(&star->base, 0 ,0x2A1, 1, sub_08072B98, sub_08084AA0);
}

static void MasterHandCreateGrabHitbox(struct Object2 *mh)
{
    struct Task *t = TaskCreate(MasterHandGrabHitboxMain, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (t) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    ClearObjectBase(objBase);
    objBase->unk0 = 2;
    objBase->x = mh->base.x;
    objBase->y = mh->base.y;
    objBase->parent = mh;
    objBase->counter = 0;
    objBase->roomId = mh->base.roomId;
    objBase->unk56 = mh->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->unk68 |= 0x20;
    objBase->flags = flags = 0x12010400;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    if (mh->base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    ObjectSetHitbox(objBase, 0, -0x18, 0x28, 0xC);
}

static void MasterHandGrabHitboxMain(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *mh = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (mh->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else
    {
        objBase->x = mh->base.x;
        objBase->y = mh->base.y;
        objBase->unk56 = mh->base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            ObjectDisplaySprite(objBase);
        else
        {
            if (mh->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (mh->unk83 == 0xD)
            {
                if (objBase->flags & 0x40000)
                    objBase->flags &= ~0x40000;
                else if (!(objBase->flags & 0x200)) // the bit is also tested in SetPointerSomething
                    SetPointerSomething(objBase);
            }
        }
    }
}

static void MasterHandStartWaitForKirby(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0, MasterHandWaitForKirby);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x40;
}

static void MasterHandStartPunch(struct Object2 *mh)
{
    ObjectSetFunc(mh, 2, MasterHandPunch);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    if (mh->subtype)
        mh->base.counter = 0xC;
    else
        mh->base.counter = 0x14;
    mh->unk85 = 0;
    mh->base.unk68 &= ~7;
    mh->base.unk68 |= 2;
}

static void MasterHandStartReturnHome(struct Object2 *mh)
{
    ObjectSetFunc(mh, 4, MasterHandReturnHome);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->unk85 = 0;
    mh->unkA0 = mh->object->x;
    mh->unkA2 = mh->object->y;
}

static void MasterHandStartFingerGunAim(struct Object2 *mh)
{
    ObjectSetFunc(mh, -1, MasterHandFingerGunAim);
    mh->unk85 = 0;
    mh->unk9F = 0;
    mh->base.counter = 8;
    mh->base.flags &= ~2;
    mh->base.flags &= ~4;
}

static void MasterHandStartFingerGunRecover(struct Object2 *mh)
{
    ObjectSetFunc(mh, 8, MasterHandFingerGunRecover);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->unk85 = 0;
    mh->unkA0 = mh->object->x;
    mh->unkA2 = mh->object->y;
}

static void MasterHandStartPoundApproach(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0, MasterHandPoundApproach);
    mh->kirby3 = FindClosestKirby(&mh->base);
    mh->base.flags |= 0x100;
    mh->unk9F = 0;
    mh->base.counter = 8;
    mh->base.flags &= ~2;
}

static void MasterHandStartPoundAim(struct Object2 *mh)
{
    ObjectSetFunc(mh, -1, MasterHandPoundAim);
    mh->unk9F = 0;
    mh->base.counter = 8;
    mh->base.flags &= ~2;
    mh->base.flags &= ~4;
}

static void MasterHandPoundRecover(struct Object2 *mh)
{
    if (mh->unk9E < 8)
    {
        mh->base.objBase55 = gUnk_08356168[(mh->unk9E >> 1) + 1];
        ++mh->unk9E;
    }
    if (!--mh->base.counter)
        MasterHandStartPoundReturn(mh);
}

static void MasterHandStartPoundReturn(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0xB, MasterHandPoundReturn);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->unkA0 = mh->object->x;
    mh->unkA2 = mh->object->y;
}

static void MasterHandGrabHold(struct Object2 *mh)
{
    struct Kirby *kirby = mh->kirby3;

    if (mh->base.unkC & 0x80 || !kirby->unk110)
    {
        mh->base.unkC &= ~0x80;
        MasterHandStartGrabBroken(mh);
        return;
    }
    mh->base.counter = mh->unk80;
    if (mh->base.flags & 2)
        MasterHandStartGrabSqueeze(mh);
}

static void MasterHandStartGrabSlam(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0x10, MasterHandGrabSlam);
    mh->base.xspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.counter = 8;
    mh->unk9E = 0;
}

static void MasterHandStartGrabPin(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0x10, MasterHandGrabPin);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->base.counter = 8;
    mh->unk9E = 0;
}

static void MasterHandStartGrabRelease(struct Object2 *mh)
{
    mh->kirby3->unk110 = gMasterHandKirbyScript3;
    ObjectSetFunc(mh, 0x11, MasterHandGrabRelease);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->unkA0 = mh->object->x;
    mh->unkA2 = mh->object->y;
}

static void MasterHandStartGrabMiss(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0xE, MasterHandGrabMiss);
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->unkA0 = mh->object->x;
    mh->unkA2 = mh->object->y;
    ObjectSetHitbox(&mh->base, -0x10, -0xC, 8, 0xC);
}

static void MasterHandStartGrabMissRecover(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0x11, MasterHandGrabMissRecover);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    mh->unkA0 = mh->object->x;
    mh->unkA2 = mh->object->y;
}

static void ShootingEnemyStarMain(struct Object2 *star)
{
    star->base.flags |= 4;
}
