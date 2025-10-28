#include "mr_frosty.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"

static void sub_080CBC14(struct Object2 *);
static void sub_080CBE1C(struct Object2 *);
static void sub_080CBF00(struct Object2 *);
static void sub_080CC0C0(struct Object2 *);
static void sub_080CC138(struct Object2 *);
static void sub_080CC408(struct Object2 *);
static void sub_080CC4C8(struct Object2 *);
static void sub_080CC818(struct Object2 *);
static void sub_080CCD24(struct Object2 *);
static void sub_080CCDF8(struct Object2 *);
static void sub_080CD050(struct Object2 *);
static void sub_080CD128(void);
static void sub_080CD2FC(struct Object2 *);
static void sub_080CD320(struct Object2 *);
static void sub_080CD370(struct Object2 *);
static void sub_080CD3B8(struct Object2 *);
static void sub_080CD3FC(struct Object2 *);
static void sub_080CD47C(struct Object2 *);
static void sub_080CD4D0(struct Object2 *);
static void sub_080CD524(struct Object2 *);
static void sub_080CD56C(struct Object2 *);
static void sub_080CD588(struct Task *);
static void sub_080CD594(struct Object2 *);

const struct AnimInfo gUnk_08355CF8[] = {
    { 0x319,   0, 0 },
    { 0x319,   2, 0 },
    { 0x319,   2, 0 },
    { 0x319,   3, 0 },
    { 0x319,   4, 0 },
    { 0x319,   5, 0 },
    { 0x319,   6, 0 },
    { 0x319,   7, 0 },
    { 0x319,   8, 0 },
    { 0x319,   9, 0 },
    { 0x319, 0xA, 0 },
    { 0x319, 0xB, 0 },
    { 0x319, 0xC, 0 },
    { 0x319,   8, 0 },
    { 0x319, 0xD, 0 },
    { 0x319, 0xE, 0 },
    { 0x319,   2, 0 },
    { 0x319, 0xD, 0 },
    { 0x319, 0xD, 0 },
    { 0x319, 0xD, 0 },
};

const struct AnimInfo gUnk_08355D48[] = {
    { 0x28B, 1, 0 },
    { 0x28B, 0, 0 },
};

static const s16 gUnk_08355D50[] = {
    -0x20, -0x10, -0x20, -0x10, -0x20, 0, 0
};

static const s16 gUnk_08355D5E[] = {
    0x400, 0x200, 0x100, -0x100, -0x200, -0x400, 0x400
};

const struct AnimInfo gUnk_08355D6C[] = {
    { 0x319, 0xF,  2 },
    { 0x319,   0,  2 },
    { 0x319, 0xF,  2 },
    { 0x319,   0,  2 },
    { 0x319, 0xF,  2 },
    { 0x319,   0,  2 },
    { 0x319, 0xF,  2 },
    { 0x319,   0,  2 },
    { 0x319, 0xF,  2 },
    { 0x319,   0,  2 },
    { 0x319, 0xF,  2 },
    { 0x319,   0,  2 },
    { 0x319, 0xF,  2 },
    { 0x319,   0,  2 },
    { 0x319,   0, -1 },
};

const struct AnimInfo gUnk_08355DA8[] = {
    { 0x319, 0xF, 2 },
    { 0x319,   0, 2 },
    { 0x319,   0, 0 },
};

static const struct Kirby_110 gUnk_08355DB4[] = {
    {  0x10,    6, 1,    2, 0x57,     0 },
    {  0x19,    6, 1,    2, 0x57,     0 },
    {  0x12,    6, 1,    2, 0x57,     0 },
    {  0x17,    6, 1,    2, 0x57,     0 },
    {  0x15,    6, 1,  0xF, 0x57,     0 },
    {  0x18,   -6, 1,    8, 0x58,     0 },
    {  0x16, -0xE, 1, 0x18, 0x59,     0 },
    { -0x32, 0x1C, 0,    1,    0, 0x100 },
};

static const struct Kirby_110 gUnk_08355DF4[] = {
    {  0x11, -0x12, 1, 2, 0x4A,     0 },
    {   0xE, -0x14, 1, 2, 0x4B,     0 },
    {   0xB, -0x15, 1, 2, 0x4C,     0 },
    {     8, -0x14, 1, 2, 0x4D,     0 },
    {     5, -0x12, 1, 2, 0x4E,     0 },
    {     2,  -0xE, 1, 2, 0x4F,     0 },
    {     0,  -0xA, 1, 2, 0x50,     0 },
    {     0,    -6, 1, 2, 0x51,     0 },
    {     0,    -2, 1, 2, 0x52,     0 },
    {     0,    -2, 1, 8, 0x53,  0x40 },
    { -0x32,  0x1C, 0, 1,    0, 0x100 },
};

static const struct Kirby_110 gUnk_08355E4C[] = {
    {     0,   -4, 1, 0x50, 0x4C,  0x40 },
    {     0,   -4, 1, 0x50, 0x4C,  0x40 },
    { -0x32, 0x1C, 0,    1,    0, 0x100 },
};

static const struct Kirby_110 gUnk_08355E64[] = {
    {    0,   -4, 1, 1, 0x4C, 0x40 },
    { 0x46, 0x12, 0, 1,    0,    2 },
};

static const struct Kirby_110 gUnk_08355E74[] = {
    {     0,   -4, 1, 1, 0x4C, 0x40 },
    { -0x46, 0x12, 0, 1,    0,    2 },
};

void *CreateMrFrosty(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *mf = tmp;

    InitObject(mf, template, a2);
    mf->base.unkC |= 1;
    mf->base.flags |= 0x2000000;
    mf->base.flags |= 0x200;
    mf->base.flags |= 0x200000;
    mf->base.y += 0x200;
    if (mf->base.x > mf->kirby3->base.base.base.x)
        mf->base.flags |= 1;
    else
        mf->base.flags &= ~1;
    mf->base.unk5C &= ~7;
    mf->base.unk5C |= 3;
    mf->base.unk5C |= 0xA0;
    sub_0803E2B0(&mf->base, -0xA, -8, 0xA, 0x15);
    sub_0803E308(&mf->base, -0xC, -8, 0xC, 0x15);
    ObjectInitSprite(mf);
    mf->base.sprite.unk14 = 0x6C0;
    sub_080CD2FC(mf);
    sub_080CD050(mf);
    mf->unk9E = 0;
    mf->unk7C = 0;
    return mf;
}

static void sub_080CB7E8(struct Object2 *mf)
{
    mf->kirby3 = sub_0803D368(&mf->base);
    if (!(mf->kirby3->base.base.base.unkC & 0x8000)
        && mf->base.roomId == mf->kirby3->base.base.base.roomId)
    {
        if (mf->base.x > mf->kirby3->base.base.base.x)
            mf->base.flags |= 1;
        else
            mf->base.flags &= ~1;
        if (Macro_08039430_2(&mf->kirby3->base.base.base, mf))
        {
            Macro_081003EC(mf, &mf->kirby3->base.base.base);
            mf->base.flags &= ~0x200;
            sub_080CD2A0(mf);
            mf->base.counter = 0x5A;
            Macro_08100F18(mf);
        }
    }
}

static void sub_080CB9F4(struct Object2 *mf)
{
    mf->base.flags |= 4;
    if (mf->base.x > mf->kirby3->base.base.base.x)
        mf->base.flags |= 1;
    else
        mf->base.flags &= ~1;
    if (!--mf->base.counter)
    {
        if (!RandLessThan(7))
        {
            mf->unk85 = 2;
            sub_080CD320(mf);
        }
        else if (!RandLessThan(7))
        {
            mf->unk85 = 2;
            sub_080CC0C0(mf);
        }
        else if (!mf->unk85 || !--mf->unk85)
        {
            mf->unk85 = 2;
            if (Rand16() & 1)
                sub_080CD320(mf);
            else
                sub_080CC0C0(mf);
        }
        else
            sub_080CD3B8(mf);
    }
}

static void sub_080CBB04(struct Object2 *mf)
{
    mf->unk83 = 2;
    if (mf->subtype)
        mf->base.xspeed = 0x200;
    else
        mf->base.xspeed = 0x190;
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    mf->unk9E = 0;
    mf->unk78 = sub_080CBC14;
    sub_08089864(&mf->base, 8, 0x10, mf->base.flags);
    PlaySfx(&mf->base, SE_08D58BB4);
    if (Rand16() & 1)
        mf->base.counter = 0x107;
}

static void sub_080CBC14(struct Object2 *mf)
{
    mf->base.flags |= 4;
    ObjXSomething(mf);
    if (mf->base.flags & 2)
        sub_08089864(&mf->base, 8, 0x10, mf->base.flags);
    if (mf->subtype)
    {
        if ((mf->base.counter == 0x30 || mf->base.counter == 0x73)
            && !(Rand16() & 3))
        {
            ObjectSetFunc(mf, 0, sub_080CB9F4);
            mf->kirby3 = sub_0803D368(&mf->base);
            mf->base.xspeed = 0;
            mf->base.counter = 0x1E;
            return;
        }
    }
    else
    {
        if (mf->base.counter == 0x64 && Rand16() & 1)
        {
            ObjectSetFunc(mf, 0, sub_080CB9F4);
            mf->kirby3 = sub_0803D368(&mf->base);
            mf->base.xspeed = 0;
            mf->base.counter = 0x1E;
            return;
        }
    }
    if (mf->base.unk62 & 1)
        sub_080CBE1C(mf);
    else
        ++mf->base.counter;
}

static void sub_080CBE1C(struct Object2 *mf)
{
    ObjectSetFunc(mf, 3, sub_080CBF00);
    mf->base.xspeed = -0xC0;
    mf->base.yspeed = 0x300;
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    mf->base.counter = 0;
    mf->unk9F = 4;
    mf->base.flags |= 0x800;
    mf->base.flags |= 0x40;
    sub_0806FE64(1, &mf->base);
    PlaySfx(&mf->base, SE_08D58C00);
}

static void sub_080CBF00(struct Object2 *mf)
{
    mf->base.flags |= 4;
    if (mf->unk9F && !--mf->unk9F)
    {
        mf->base.flags &= ~0x800;
        mf->base.flags &= ~0x40;
    }
    if (mf->unk83 == 3)
    {
        mf->base.yspeed -= 0x10;
        if (mf->base.yspeed < -0x300)
            mf->base.yspeed = -0x300;
        if (mf->base.unk62 & 4)
        {
            PlaySfx(&mf->base, SE_08D58C00);
            mf->unk83 = 4;
            mf->base.xspeed = -0x80;
            mf->base.yspeed = 0x100;
            if (mf->base.flags & 1)
                mf->base.xspeed = -mf->base.xspeed;
            sub_0806FE64(1, &mf->base);
        }
    }
    else if (mf->unk83 == 4)
    {
        if (!(mf->base.counter & 7))
            sub_08089864(&mf->base, 8, 0x10, ~mf->base.flags);
        if (++mf->base.counter >= 0x20)
        {
            mf->base.xspeed = 0;
            mf->base.flags |= 0x40;
            mf->unk83 = 5;
        }
    }
    else if (mf->unk83 == 5)
    {
        if ((mf->base.unk1 & 3) < 2)
            mf->base.yspeed = 0x100;
        else
            mf->base.yspeed = -0x100;
        if (mf->base.flags & 2)
        {
            mf->base.flags &= ~0x40;
            ObjectSetFunc(mf, 0, sub_080CB9F4);
            mf->kirby3 = sub_0803D368(&mf->base);
            mf->base.xspeed = 0;
            mf->base.counter = 0x1E;
        }
    }
}

static void sub_080CC0C0(struct Object2 *mf)
{
    ObjectSetFunc(mf, 6, sub_080CC138);
    if (mf->base.x > mf->kirby3->base.base.base.x)
        mf->base.flags |= 1;
    else
        mf->base.flags &= ~1;
    if (Rand16() & 1)
        mf->base.counter = 3;
    else
        mf->base.counter = 1;
    mf->base.yspeed = 0x600;
    mf->base.flags |= 0x40;
}

static void sub_080CC138(struct Object2 *mf)
{
    mf->base.flags |= 4;
    mf->base.yspeed -= 0x70;
    if (mf->base.yspeed < -0x780)
        mf->base.yspeed = -0x780;
    if (mf->base.unk62 & 4)
    {
        sub_0806FE64(1, &mf->base);
        PlaySfx(&mf->base, SE_08D58C00);
        if (!--mf->base.counter)
        {
            mf->base.flags &= ~0x40;
            ObjectSetFunc(mf, 0, sub_080CB9F4);
            mf->kirby3 = sub_0803D368(&mf->base);
            mf->base.xspeed = 0;
            mf->base.counter = 0x1E;
        }
        else
        {
            if (mf->base.x > mf->kirby3->base.base.base.x)
                mf->base.flags |= 1;
            else
                mf->base.flags &= ~1;
            mf->base.yspeed = 0x600;
        }
    }
}

static void sub_080CC26C(struct Object2 *mf)
{
    struct Kirby *kirby;

    if (mf->base.flags & 2)
    {
        mf->base.flags &= ~0x40;
        kirby = mf->kirby3;
        mf->unk7C = NULL;
        if (kirby && abs(kirby->base.base.base.x - mf->base.x) < 0x1800)
        {
            mf->kirby3 = sub_0803D368(&mf->base);
            sub_080CC408(mf);
        }
        else
        {
            mf->kirby3 = sub_0803D368(&mf->base);
            sub_080CD56C(mf);
        }
    }
    else
        mf->base.yspeed += gUnk_08355D50[mf->base.unk1 >> 3];
}

static void sub_080CC2F4(struct Object2 *mf) // the same as sub_080CC26C
{
    struct Kirby *kirby;

    if (mf->base.flags & 2)
    {
        mf->base.flags &= ~0x40;
        kirby = mf->kirby3;
        mf->unk7C = NULL;
        if (kirby && abs(kirby->base.base.base.x - mf->base.x) < 0x1800)
        {
            mf->kirby3 = sub_0803D368(&mf->base);
            sub_080CC408(mf);
        }
        else
        {
            mf->kirby3 = sub_0803D368(&mf->base);
            sub_080CD56C(mf);
        }
    }
    else
        mf->base.yspeed += gUnk_08355D50[mf->base.unk1 >> 3];
}

static void sub_080CC37C(struct Object2 *mf)
{
    struct Kirby *kirby;

    mf->base.flags |= 4;
    if (mf->base.flags & 2 && ++mf->unk9E > 4)
    {
        kirby = mf->kirby3;
        mf->unk7C = NULL;
        if (!kirby)
        {
            mf->kirby3 = sub_0803D368(&mf->base);
            sub_080CD56C(mf);
        }
        else if (abs(kirby->base.base.base.x - mf->base.x) < 0x1800)
        {
            mf->kirby3 = sub_0803D368(&mf->base);
            sub_080CC408(mf);
        }
        else
        {
            mf->kirby3 = sub_0803D368(&mf->base);
            sub_080CD56C(mf);
        }
    }
}

static void sub_080CC408(struct Object2 *mf)
{
    ObjectSetFunc(mf, -1, sub_080CC4C8);
    mf->base.xspeed = 0x600;
    mf->base.yspeed = 0;
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    PlaySfx(&mf->base, SE_08D58D24);
}

static void sub_080CC4C8(struct Object2 *mf)
{
    if (mf->unk83 == 0xB && mf->base.flags & 2)
    {
        ObjectSetFunc(mf, 0, sub_080CB9F4);
        mf->kirby3 = sub_0803D368(&mf->base);
        mf->base.xspeed = 0;
        mf->base.counter = 0x1E;
    }
    else
    {
        if (++mf->base.counter == 2)
        {
            mf->base.xspeed = 0x300;
            if (mf->base.flags & 1)
                mf->base.xspeed = -mf->base.xspeed;
            mf->unk83 = 0xB;
        }
        else if (mf->base.counter > 2 && mf->base.counter < 7)
        {
            mf->base.flags |= 8;
            mf->base.flags |= 0x800;
            mf->base.flags |= 0x40;
            mf->base.objBase54 = gUnk_08352DD0[((3 - mf->base.counter) >> 1) + 4];
        }
        else if (mf->base.counter == 7)
        {
            mf->base.flags &= ~8;
            mf->base.flags &= ~0x800;
            mf->base.flags &= ~0x40;
        }
        else if (mf->base.counter == 0xB)
            mf->base.xspeed = 0;
    }
}

static void sub_080CC5A4(struct Object2 *mf)
{
    if (mf->base.unk1 < 5)
        mf->base.xspeed = 0x300;
    else if (mf->base.unk1 < 0x1F)
        mf->base.xspeed = 0x100;
    else
        mf->base.xspeed = 0;
    if (mf->base.unk62 & 4)
    {
        if (!(mf->base.counter & 7))
            sub_08089864(&mf->base, 8, 0x10, ~mf->base.flags);
        if (!mf->base.counter)
        {
            mf->base.counter = 1;
            PlaySfx(&mf->base, SE_08D58C44);
            sub_0806FE64(1, &mf->base);
        }
    }
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    if (mf->base.flags & 2)
    {
        ObjectSetFunc(mf, 1, sub_080CD370);
        if (mf->subtype)
            mf->base.xspeed = -0x80;
        else
            mf->base.xspeed = -0x60;
        if (mf->base.flags & 1)
            mf->base.xspeed = -mf->base.xspeed;
        mf->base.counter = 0;
    }
}

bool8 sub_080CC6F0(struct Object2 *mf, struct Kirby *kirby)
{
    if (mf->unk83 != 2
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->unkD4 == 0x27
        || kirby->unkD4 > 0x7A
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(mf, 0xD, sub_080CC818);
    mf->base.xspeed = 0;
    mf->base.yspeed = 0;
    mf->unk9F = 0;
    mf->unk9E = 0;
    kirby->unk110 = gUnk_08355DB4;
    mf->kirby3 = kirby;
    mf->base.flags &= ~2;
    mf->base.unk6C = kirby;
    PlaySfx(&mf->base, SE_08D58F7C);
    return TRUE;
}

static void sub_080CC818(struct Object2 *mf)
{
    struct Kirby *kirby = mf->kirby3;

    if (mf->base.unkC & 0x80 || (!kirby->unk110 && mf->unk83 != 0x10))
    {
        mf->base.unkC &= ~0x80;
        mf->base.flags &= ~8;
        ObjectSetFunc(mf, 0, sub_080CB9F4);
        mf->kirby3 = sub_0803D368(&mf->base);
        mf->base.xspeed = 0;
        mf->base.counter = 0x1E;
        return;
    }
    switch (mf->unk83)
    {
    case 0xD:
        if (mf->base.counter < 8)
            mf->base.objBase54 = gUnk_08352DD0[(mf->base.counter >> 1) + 2];
        if (mf->base.counter == 1)
            mf->base.flags |= 8;
        else if (mf->base.counter == 0x10)
            mf->base.flags &= ~8;
        ++mf->base.counter;
        if (mf->base.flags & 2 && ++mf->unk9E > 0xC)
        {
            mf->unk9E = 0;
            mf->unk83 = 0xE;
            kirby->unk110 = gUnk_08355DF4;
            mf->base.flags &= ~2;
            mf->base.counter = 0;
        }
        break;
    case 0xE:
        if (++mf->base.counter > 0x14)
        {
            mf->unk83 = 0xF;
            kirby->unk110 = gUnk_08355E4C;
            mf->base.counter = 0;
            PlaySfx(&mf->base, SE_08D58A48);
        }
        break;
    case 0xF:
        if (++mf->base.counter > 0x30)
        {
            if (mf->base.x - gCurLevelInfo[mf->base.unk56].cameraOffsetX < 0x7800)
            {
                if (mf->base.flags & 1)
                {
                    mf->base.flags &= ~1;
                    kirby->unk110 = gUnk_08355E74;
                }
                else
                    kirby->unk110 = gUnk_08355E64;
            }
            else
            {
                if (!(mf->base.flags & 1))
                {
                    mf->base.flags |= 1;
                    kirby->unk110 = gUnk_08355E74;
                }
                else
                    kirby->unk110 = gUnk_08355E64;
            }
            mf->unk83 = 0x10;
            mf->base.counter = 0;
            PlaySfx(&mf->base, SE_08D58AB4);
        }
        break;
    case 0x10:
        if (mf->base.counter < 0xC)
            mf->base.objBase54 = gUnk_08352DD0[mf->base.counter >> 1];
            if (++mf->base.counter > 0x1E)
            {
                ObjectSetFunc(mf, 0, sub_080CB9F4);
                mf->kirby3 = sub_0803D368(&mf->base);
                mf->base.xspeed = 0;
                mf->base.counter = 0x1E;
            }
        break;
    }
}

void *CreateMrFrostyIceCube(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, sub_080CD588);
    struct Object2 *tmp = TaskGetStructPtr(t), *ic = tmp;

    InitObject(ic, template, a2);
    ic->base.flags |= 0x40;
    ic->base.unkC |= 2;
    ic->unk9E = 0;
    ic->unk7C = sub_0809F840;
    sub_0803E2B0(&ic->base, -5, -4, 5, 7);
    sub_0803E308(&ic->base, -6, -5, 6, 9);
    if (ic->type == OBJ_MR_FROSTY_ICE_CUBE_LARGE)
    {
        ic->base.unk5C &= ~7;
        ic->base.unk5C |= 3;
        sub_0803E2B0(&ic->base, -0xA, -0xA, 0xA, 0xC);
        sub_0803E308(&ic->base, -0xE, -0xA, 0xE, 0x10);
    }
    ObjectInitSprite(ic);
    sub_080CD2CC(ic);
    PlaySfx(&ic->base, SE_08D58CA4);
    return ic;
}

static void sub_080CCCA8(struct Object2 *ic)
{
    struct Object2 *mf = ic->base.parent;

    ic->base.yspeed = gUnk_08355D5E[ic->base.counter >> 3];
    if (ic->base.counter < 0x2E)
        ++ic->base.counter;
    if (mf->unk83 > 0x10 || ic->base.unk62 & 1 || ic->base.unk62 & 4)
    {
        ic->base.flags |= 0x1000;
        sub_0809DA30(ic);
    }
    else if (mf->unk78 == sub_080CC4C8 && mf->unk83 == 0xB)
        sub_080CCD24(ic);
}

static void sub_080CCD24(struct Object2 *ic)
{
    if (ic->type == OBJ_MR_FROSTY_ICE_CUBE_LARGE)
        ObjectSetFunc(ic, 1, sub_080CCDF8);
    else
        ObjectSetFunc(ic, 0, sub_080CCDF8);
    ic->kirby3 = sub_0803D368(&ic->base);
    if (abs(ic->kirby3->base.base.base.y - ic->base.y) < 0x2800)
        ic->unk85 = 0;
    else
        ic->unk85 = 1;
    if (ic->unk85)
    {
        ic->base.xspeed = 0x100;
        ic->base.yspeed = 0x300;
    }
    else
    {
        ic->base.xspeed = 0x300;
        ic->base.yspeed = 0x100;
    }
    if (ic->type == OBJ_MR_FROSTY_ICE_CUBE_LARGE)
        ic->base.xspeed -= ic->base.xspeed >> 2;
    if (ic->base.flags & 1)
        ic->base.xspeed = -ic->base.xspeed;
    ic->base.counter = 4;
    ic->base.flags |= 0x800;
    ic->base.flags |= 0x40;
}

static void sub_080CCDF8(struct Object2 *ic)
{
    struct Object2 *mf = ic->base.parent;

    if (mf->unk83 > 0x10 || ic->base.unk62 & 1)
    {
        ic->base.flags |= 0x1000;
        sub_0809DA30(ic);
    }
    else
    {
        if (ic->base.counter)
        {
            ic->base.objBase54 = gUnk_08352DD0[6 - (ic->base.counter >> 1)];
            --ic->base.counter;
        }
        else
        {
            ic->base.flags &= ~0x800;
            ic->base.flags &= ~0x40;
            ic->base.yspeed -= 0x1E;
            if (ic->base.yspeed < -0x700)
                ic->base.yspeed = -0x700;
            if (ic->base.unk62 & 4)
            {
                if (ic->unk85)
                {
                    ic->base.xspeed = 0x100;
                    ic->base.yspeed = 0x300;
                }
                else
                {
                    ic->base.xspeed = 0x300;
                    ic->base.yspeed = 0x100;
                }
                if (ic->type == OBJ_MR_FROSTY_ICE_CUBE_LARGE)
                    ic->base.xspeed -= ic->base.xspeed >> 2;
                if (ic->base.flags & 1)
                    ic->base.xspeed = -ic->base.xspeed;
            }
        }
    }
}

static void sub_080CCEE0(struct Object2 *mf)
{
    s32 x = mf->base.x >> 8;
    s32 y = (mf->base.y >> 8) + 8;
    struct Object2 *ic;

    if (RandLessThan3())
        ic = CreateObjTemplateAndObj(mf->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MR_FROSTY_ICE_CUBE_SMALL,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    else
        ic = CreateObjTemplateAndObj(mf->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MR_FROSTY_ICE_CUBE_LARGE,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    ic->base.parent = mf;
    mf->kirby3 = (void *)ic; // TODO: type
    if (mf->base.flags & 1)
        ic->base.flags |= 1;
}

static void sub_080CD050(struct Object2 *mf)
{
    struct Task *t = TaskCreate(sub_080CD128, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = mf->base.x;
    objBase->y = mf->base.y;
    objBase->parent = mf;
    objBase->counter = 0;
    objBase->roomId = mf->base.roomId;
    objBase->unk56 = mf->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = flags = 0x12010400;
    objBase->unk68 |= 0x20;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    if (mf->base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    sub_0803E2B0(objBase, -0xE, -0xC, 0xE, 0x15);
}

static void sub_080CD128(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *mf = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (((struct Object2 *)objBase->parent)->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else
    {
        objBase->x = mf->base.x;
        objBase->y = mf->base.y;
        objBase->unk56 = mf->base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else
        {
            if (mf->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (mf->unk83 == 2)
            {
                mf->base.unk68 &= ~7;
                if (objBase->flags & 0x40000)
                    objBase->flags &= ~0x40000;
                else if (!(objBase->flags & 0x200))
                    SetPointerSomething(objBase);
            }
            else
            {
                mf->base.unk68 &= ~7;
                mf->base.unk68 |= 2;
            }
        }
    }
}

void sub_080CD2A0(struct Object2 *mf)
{
    ObjectSetFunc(mf, 0, sub_080CB9F4);
    mf->kirby3 = sub_0803D368(&mf->base);
    mf->base.xspeed = 0;
    mf->base.counter = 0x1E;
}

void sub_080CD2CC(struct Object2 *ic)
{
    if (ic->type == OBJ_MR_FROSTY_ICE_CUBE_LARGE)
        ObjectSetFunc(ic, 1, sub_080CCCA8);
    else
        ObjectSetFunc(ic, 0, sub_080CCCA8);
}

static void sub_080CD2FC(struct Object2 *ic)
{
    ObjectSetFunc(ic, 0, sub_080CB7E8);
    ic->base.xspeed = 0;
    ic->base.yspeed = 0;
}

static void sub_080CD320(struct Object2 *mf)
{
    ObjectSetFunc(mf, 1, sub_080CD370);
    if (mf->subtype)
        mf->base.xspeed = -0x80;
    else
        mf->base.xspeed = -0x60;
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    mf->base.counter = 0;
}

static void sub_080CD370(struct Object2 *mf)
{
    mf->base.flags |= 4;
    if (mf->base.flags & 2 && ++mf->unk9E > 7)
        sub_080CBB04(mf);
    else if (mf->base.unk62 & 2)
        sub_080CBB04(mf);
    else
        ++mf->base.counter;
}

static void sub_080CD3B8(struct Object2 *mf)
{
    ObjectSetFunc(mf, 7, sub_080CD3FC);
    if (mf->base.x > mf->kirby3->base.base.base.x)
        mf->base.flags |= 1;
    else
        mf->base.flags &= ~1;
    mf->base.xspeed = 0;
    mf->base.yspeed = 0;
}

static void sub_080CD3FC(struct Object2 *mf)
{
    mf->base.flags |= 4;
    if (++mf->base.counter > 0x2B)
    {
        switch (RandLessThan3())
        {
        case 0:
            sub_080CD47C(mf);
            break;
        case 1:
            sub_080CD4D0(mf);
            break;
        case 2:
            sub_080CD524(mf);
            break;
        }
    }
}

static void sub_080CD47C(struct Object2 *mf)
{
    ObjectSetFunc(mf, 8, sub_080CC26C);
    mf->base.xspeed = -0x80;
    mf->base.yspeed = 0x200;
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    mf->base.flags |= 0x40;
    sub_080CCEE0(mf);
    mf->unk7C = sub_080CD594;
}

static void sub_080CD4D0(struct Object2 *mf)
{
    ObjectSetFunc(mf, 9, sub_080CC2F4);
    mf->base.xspeed = -0x80;
    mf->base.yspeed = 0x200;
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    mf->base.flags |= 0x40;
    sub_080CCEE0(mf);
    mf->unk7C = sub_080CD594;
}

static void sub_080CD524(struct Object2 *mf)
{
    ObjectSetFunc(mf, 0xA, sub_080CC37C);
    mf->base.xspeed = -0x80;
    mf->base.yspeed = 0;
    if (mf->base.flags & 1)
        mf->base.xspeed = -mf->base.xspeed;
    sub_080CCEE0(mf);
    mf->unk7C = sub_080CD594;
}

static void sub_080CD56C(struct Object2 *mf)
{
    ObjectSetFunc(mf, 0xC, sub_080CC5A4);
    mf->base.xspeed = 0;
}

static void sub_080CD588(struct Task *t)
{
    ObjectDestroy(t);
}

static void sub_080CD594(struct Object2 *mf)
{
    if (mf->kirby3->base.base.base.unk0 == 1
      && (mf->kirby3->base.base.type == OBJ_MR_FROSTY_ICE_CUBE_SMALL
            || mf->kirby3->base.base.type == OBJ_MR_FROSTY_ICE_CUBE_LARGE)
      && mf->kirby3->base.base.base.flags & 0x1000)
    {
        mf->kirby3 = NULL;
        mf->unk7C = NULL;
    }
}
