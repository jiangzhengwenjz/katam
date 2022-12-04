#include "master_hand.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "inhalable_star.h"

void sub_080D1AD4(struct Object2 *);
void sub_080D1B60(struct Object2 *);
void sub_080D1BB4(struct Object2 *);
void sub_080D1FB4(struct Object2 *);
void sub_080D2028(struct Object2 *);
void sub_080D22B0(struct Object2 *);
void sub_080D230C(struct Object2 *);
void sub_080D2954(struct Object2 *);
void sub_080D2C4C(struct Object2 *);
void sub_080D2CB0(struct Object2 *);
void sub_080D36F8(struct Object2 *);
void sub_080D379C(struct Object2 *);
void sub_080D394C(struct Object2 *);
void sub_080D3BF0(struct Object2 *);
void sub_080D4DA4(struct Object2 *, u8);
void sub_080D4FCC(struct Object2 *);
void sub_080D51EC(struct Object2 *);
void sub_080D5218(struct Object2 *);
void sub_080D526C(struct Object2 *);
void sub_080D52C0(struct Object2 *);
void sub_080D52F8(struct Object2 *);
void sub_080D534C(struct Object2 *);
void sub_080D5390(struct Object2 *);
void sub_080D53C4(struct Object2 *);

extern const s8 gUnk_08356168[], gUnk_08356178[];

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
    sub_0803E2B0(&mh->base, -0x10, -0x13, 0x10, 0xC);
    sub_0803E308(&mh->base, -6, -4, 6, 4);
    ObjectInitSprite(mh);
    mh->base.sprite.unk14 = 0x6C0;
    sub_080D51EC(mh);
    sub_080D4FCC(mh);
    mh->unk9E = 0;
    mh->unk7C = 0;
    return mh;
}

void sub_080D1780(struct Object2 *mh)
{
    mh->kirby3 = sub_0803D368(&mh->base);
    mh->base.flags |= 4;
    if (!(mh->kirby3->base.base.base.unkC & 0x8000)
        && mh->base.roomId == mh->kirby3->base.base.base.roomId
        && sub_08039430(&mh->kirby3->base.base,
            mh->base.x, mh->base.y,
            mh->object->unk1A, mh->object->unk1C,
            mh->object->unk1E, mh->object->unk20))
    {
        Macro_081003EC(mh, &mh->kirby3->base.base.base);
        mh->base.flags &= ~0x200;
        mh->unk85 = 0;
        sub_080D1A38(mh);
        mh->base.counter = 0x5A;
        Macro_08100F18(mh);
    }
}

void sub_080D1978(struct Object2 *mh)
{
    mh->base.unk68 &= ~7;
    if (mh->unk85 > 1)
    {
        if (Rand16() & 1)
            sub_080D1B60(mh);
        else
            sub_080D22B0(mh);
        mh->unk85 = 0;        
    }
    else
    {
        ++mh->unk85;
        if (Rand16() & 3)
        {
            if (Rand16() & 1)
                sub_080D3BF0(mh);
            else
                sub_080D534C(mh);
        }
        else
        {
            if (Rand16() & 1)
                sub_080D1B60(mh);
            else
                sub_080D22B0(mh);
            mh->unk85 = 0;
        }
    }
}

void sub_080D1A38(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0, sub_080D1AD4);
    if (mh->subtype || mh->unk80 <= gUnk_08351530[6][gUnk_0203AD30 - 1] >> 1)
        mh->base.counter = (Rand16() & 0xF) + 0x20;
    else
        mh->base.counter = (Rand16() & 0x1F) + 0x3A;
    mh->base.unk68 &= ~7;
}

void sub_080D1AD4(struct Object2 *mh)
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
            sub_080D1978(mh);
    }
    else
    {
        mh->base.flags |= 4;
        --mh->base.counter;
    }
}

void sub_080D1B60(struct Object2 *mh)
{
    ObjectSetFunc(mh, 1, sub_080D1BB4);
    mh->kirby3 = sub_0803D368(&mh->base);
    mh->base.flags |= 0x100;
    mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
    mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    mh->unk9F = 0;
    mh->base.counter = 8;
    mh->unk85 = 0;
}

void sub_080D1BB4(struct Object2 *mh)
{
    s32 lhs, rhs;
    bool32 r6 = FALSE;
    s32 var;

    if (++mh->unk9E > 7)
    {
        mh->kirby3 = sub_0803D368(&mh->base);
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
            sub_080D5218(mh);
    }
}

void sub_080D1E10(struct Object2 *mh)
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
            sub_0806FE64(1, &mh->base);
            sub_08089864(&mh->base, -8, 0xC, (mh->base.flags & 1) ^ 1);
            sub_08089864(&mh->base, -0x14, 0xC, mh->base.flags & 1);
            sub_080A8D18(mh, 0x1E, 8, 0, 8);
            mh->base.flags ^= 1;
            sub_080A8D18(mh, 0x1E, 8, 0, 8);
            mh->base.flags ^= 1;
            PlaySfx(&mh->base, 374);
            sub_080D1FB4(mh);
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

void sub_080D1FB4(struct Object2 *mh)
{
    ObjectSetFunc(mh, 3, sub_080D2028);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->base.flags |= 0x100;
    mh->base.flags &= ~2;
    if (mh->unk80 <= gUnk_08351530[6][gUnk_0203AD30 - 1] >> 1)
        mh->base.counter = 0x18;
    else
        mh->base.counter = 0x20;
    mh->unk85 = 0;
    mh->base.unk68 &= ~7;
}

void sub_080D2028(struct Object2 *mh)
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
        sub_080D526C(mh);
}

void sub_080D2088(struct Object2 *mh)
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
            sub_080D1A38(mh);
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            sub_080D1978(mh);
    }
}

void sub_080D22B0(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0, sub_080D230C);
    mh->kirby3 = sub_0803D368(&mh->base);
    mh->base.flags |= 0x100;
    mh->unkA0 = mh->kirby3->base.base.base.x >> 8;
    mh->unkA2 = mh->kirby3->base.base.base.y >> 8;
    mh->unk9F = 0;
    mh->base.counter = 8;
    mh->unk85 = 0;
    mh->base.flags &= ~2;
}

void sub_080D230C(struct Object2 *mh)
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
        mh->kirby3 = sub_0803D368(&mh->base);
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
            sub_080D52C0(mh);
    }
    else
    {
        mh->base.flags |= 1;
        if (mh->base.x > (mh->unkA8 - 0xC) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.x < (mh->unkA4 + 0x50) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.xspeed <= 0)
            sub_080D52C0(mh);
    }
}

void sub_080D25DC(struct Object2 *mh)
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
        mh->kirby3 = sub_0803D368(&mh->base);
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
        mh->unk78 = sub_080D2954;
    }
}

void sub_080D2954(struct Object2 *mh)
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
        mh->kirby3 = sub_0803D368(&mh->base);
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
        sub_080D2C4C(mh);
}

void sub_080D2C4C(struct Object2 *mh)
{
    ObjectSetFunc(mh, 6, sub_080D2CB0);
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

void sub_080D2CB0(struct Object2 *mh)
{
    if (mh->unk83 == 7)
    {
        if (mh->base.unk1 == 8)
        {
            sub_080D4DA4(mh, mh->object->subtype2);
            PlaySfx(&mh->base, 375);
        }
        if (mh->base.unk1 >= 8 && mh->base.unk1 <= 0xF)
            mh->base.objBase54 = gUnk_08356178[mh->base.unk1 - 8];
        if (mh->base.unk1 == 0x18)
        {
            u16 r1;

            if (mh->unk85 < 3)
            {
                if (mh->subtype || mh->unk80 <= gUnk_08351530[6][gUnk_0203AD30 - 1] >> 1)
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
                    mh->unk78 = sub_080D2954;
                    return;
                }
            }
        }
        if (mh->base.flags & 2)
            sub_080D52F8(mh);
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

void sub_080D2EA8(struct Object2 *mh)
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
            sub_080D1A38(mh);
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            sub_080D1978(mh);
    }
}

void sub_080D30D0(struct Object2 *mh)
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
        mh->kirby3 = sub_0803D368(&mh->base);
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
            sub_080D5390(mh);
    }
    else
    {
        mh->base.flags |= 1;
        if (mh->base.x > (mh->unkA8 - 0xC) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.x < (mh->unkA4 + 0x50) * 0x100)
            mh->base.xspeed = 0;
        if (mh->base.xspeed <= 0)
            sub_080D5390(mh);
    }
}

void sub_080D3380(struct Object2 *mh)
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
        mh->kirby3 = sub_0803D368(&mh->base);
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
            sub_080D36F8(mh);
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

void sub_080D36F8(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0xA, sub_080D379C);
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

void sub_080D379C(struct Object2 *mh)
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
                sub_080D394C(mh);
                return;
            }
            else
            {
                if (!mh->unk9F)
                {
                    if (mh->base.x < (mh->unkA0 - 8) * 0x100)
                    {
                        sub_080D394C(mh);
                        return;
                    }
                }
            }
        }
        else
        {
            if (mh->base.x > mh->unkA8 * 0x100)
            {
                sub_080D394C(mh);
                return;
            }
            else
            {
                if (!mh->unk9F)
                {
                    if (mh->base.x > (mh->unkA0 + 8) * 0x100)
                        sub_080D394C(mh);
                }
            }
        }
        if (mh->unk9F) --mh->unk9F;
    }
    else if (!--mh->base.counter)
        PlaySfx(&mh->base, 409);
}

void sub_080D394C(struct Object2 *mh)
{
    ObjectSetFunc(mh, 0xA, sub_080D53C4);
    mh->base.xspeed = 0;
    mh->base.yspeed = 0;
    mh->unk9F = 0;
    mh->unk9E = 0;
    mh->base.flags &= ~2;
    if (mh->subtype || mh->unk80 <= gUnk_08351530[6][gUnk_0203AD30 - 1] >> 1)
        mh->base.counter = 0x1C;
    else
        mh->base.counter = 0x20;
    mh->base.unk68 &= ~7;
}

void sub_080D39C8(struct Object2 *mh)
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
            sub_080D1A38(mh);
    }
    if (mh->base.flags & 2)
    {
        mh->unk83 = 0;
        if (Macro_080D2088(mh))
            sub_080D1978(mh);
    }
}
