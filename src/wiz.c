#include "wiz.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"
#include "random.h"

static void sub_080E83A8(struct Object2 *);
static void sub_080E8430(struct Object2 *);
static void sub_080E8588(struct Object2 *);
static void sub_080E8738(struct Object2 *);
static void sub_080E8C04(struct Object2 *);
static void sub_080E8CF0(struct Object2 *);
static void sub_080E8E74(struct Object2 *);
static void sub_080E8F74(struct Object2 *);
static void sub_080E921C(struct Object2 *);
static void sub_080E99F0(struct Object2 *);
static void sub_080E9A54(struct Object2 *, u8);
static void sub_080E9C58(struct Object2 *, u8);
static void sub_080E9FC0(struct Object2 *, u8);
static void sub_080E9384(struct Object2 *, u8);
static void sub_080E9524(struct Object2 *, u8);
static void sub_080E96F8(struct Object2 *, u8);
static void sub_080E9BA0(struct Object2 *);
static void sub_080E9E58(struct Object2 *);
static void sub_080EA0D8(struct Object2 *);
static void sub_080EA1C0(struct Object2 *, u8);
static void sub_080EA27C(struct Object2 *, u8);
static void sub_080EA3B8(struct Object2 *);
static void sub_080EA528(void);
static void sub_080EABC0(struct Object2 *);
static void sub_080EAC18(struct Object2 *);
static void sub_080EAC48(struct Object2 *);
static void sub_080EAC80(struct Object2 *);
static void sub_080EACD8(struct Object2 *);
static void sub_080EAD0C(struct Object2 *);
static void sub_080EAD3C(struct Object2 *);
static void sub_080EAD8C(struct Object2 *);
static void sub_080EADA4(struct Object2 *);
static void sub_080EADE4(struct Object2 *);
static void sub_080EAE34(struct Object2 *);
static void sub_080EAE4C(struct Object2 *);
static void sub_080EAE78(struct Object2 *);
static void sub_080EAE98(struct Object2 *);
static void sub_080EAEC4(struct Object2 *);
static void sub_080EAEF4(struct Object2 *);
static void sub_080EAF24(struct Object2 *);
static void sub_080EAF50(struct Object2 *);
static void sub_080EAFDC(struct Object2 *);
static void sub_080EB028(struct Object2 *);
static void sub_080EB044(struct Object2 *);
static void sub_080EB088(struct Object2 *);
static void sub_080EB0B8(struct Object2 *);
static void sub_080EB0DC(struct Object2 *);

static const s16 gUnk_08356CB4[] = {
    0,  0x20,  0x40,  0x80,  0x100,  0x80,  0x40,  0x20,
    0, -0x20, -0x40, -0x80, -0x100, -0x80, -0x40, -0x20,
};

const struct Unk_02021590 gUnk_08356CD4[] = {
    { 0x317, 0,    0 },
    { 0x317, 1,    0 },
    { 0x317, 2,    0 },
    { 0x317, 3,    0 },
    { 0x317, 4,    0 },
    { 0x317, 5,    0 },
    { 0x317, 6,    0 },
    { 0x317, 7,    0 },
    { 0x317, 8,    0 },
    { 0x317, 9,    0 },
    { 0x317, 0xA,  0 },
    { 0x317, 0xB,  0 },
    { 0x317, 0xC,  0 },
    { 0x317, 0xD,  0 },
    { 0x317, 0xE,  0 },
    { 0x317, 0xF,  0 },
    { 0x317, 0x11, 0 },
    { 0x317, 0x12, 0 },
    { 0x317, 0x10, 0 },
    { 0x317, 0x11, 0 },
    { 0x317, 0x11, 0 },
};

const struct Unk_02021590 gUnk_08356D28[] = {
    { 0x317, 0x13, 0 },
    { 0x317, 0x13, 0 },
};

const struct Unk_02021590 gUnk_08356D30[] = {
    { 0x317, 0x14, 0 },
    { 0x317, 0x14, 0 },
};

const struct Unk_02021590 gUnk_08356D38[] = {
    { 0x317, 0x15, 0 },
    { 0x317, 0x15, 0 },
};

const struct Unk_02021590 gUnk_08356D40[] = {
    { 0x317, 0x16, 0 },
    { 0x317, 0x17, 0 },
    { 0x317, 0x16, 0 },
};

const struct Unk_02021590 gUnk_08356D4C[] = {
    { 0x317, 0x19, 0 },
    { 0x317, 0x19, 0 },
};

const struct Unk_02021590 gUnk_08356D54[] = {
    { 0x317, 0x1A, 2 },
    { 0x317, 0,    2 },
    { 0x317, 0x1A, 2 },
    { 0x317, 0,    2 },
    { 0x317, 0x1A, 2 },
    { 0x317, 0,    2 },
    { 0x317, 0x1A, 2 },
    { 0x317, 0,    2 },
    { 0x317, 0x1A, 2 },
    { 0x317, 0,    2 },
    { 0x317, 0x1A, 2 },
    { 0x317, 0,    2 },
    { 0x317, 0x1A, 2 },
    { 0x317, 0,    2 },
    { 0x317, 0x1A, -1 },
};

void *CreateWiz(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *wiz = tmp;

    InitObject(wiz, template, a2);
    wiz->base.unk5C &= ~7;
    wiz->base.unk5C |= 3;
    wiz->base.unk5C |= 0x1080A0;
    wiz->base.unkC |= 1;
    wiz->base.flags |= 0x2000000;
    wiz->base.flags |= 0x200;
    wiz->base.flags |= 0x200000;
    sub_0803E2B0(&wiz->base, -0x14, -0x10, 0x10, 0x10);
    sub_0803E308(&wiz->base, -7, -0xA, 7, 0x12);
    ObjectInitSprite(wiz);
    sub_080EAD0C(wiz);
    wiz->unk9E = 0;
    wiz->unk7C = 0;
    Macro_080E7D74(wiz);
    return wiz;
}

static void sub_080E7EBC(struct Object2 *wiz)
{
    wiz->kirby3 = sub_0803D368(&wiz->base);
    wiz->base.flags |= 4;
    if (!(wiz->kirby3->base.base.base.unkC & 0x8000)
        && wiz->base.roomId == wiz->kirby3->base.base.base.roomId
        && sub_08039430(&wiz->kirby3->base.base.base,
            wiz->base.x, wiz->base.y,
            wiz->object->unk1A, wiz->object->unk1C,
            wiz->object->unk1E, wiz->object->unk20))
    {
        Macro_081003EC(wiz, &wiz->kirby3->base.base.base);
        sub_080EABC0(wiz);
    }
}

static void sub_080E7F98(struct Object2 *wiz)
{
    wiz->base.flags |= 4;
    if (wiz->base.unk1 == 1 || wiz->base.unk1 == 0x20)
        PlaySfx(&wiz->base, 417);
    if (!--wiz->base.counter)
        sub_080EAC18(wiz);
}

static void sub_080E8050(struct Object2 *wiz)
{
    if (wiz->base.unk1 <= 0x2C && !(wiz->base.unk1 & 7))
        PlaySfx(&wiz->base, 418);
    if (wiz->base.unk1 == 0x59)
        PlaySfx(&wiz->base, 419);
    if (wiz->base.flags & 2)
        sub_080EAC48(wiz);
}

static void sub_080E8178(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0, sub_080EACD8);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    if (wiz->base.x & 0x80)
        wiz->base.x = (wiz->base.x & ~0xFF) + 0x100;
    else
        wiz->base.x = wiz->base.x & ~0xFF;
    wiz->base.flags |= 2;
    wiz->base.counter = 0x3C;
    Macro_08100F18(wiz);
}

void sub_080E82C4(struct Object2 *wiz)
{
    if (wiz->unk80 < 1)
        sub_080EAFDC(wiz);
    else
    {
        ObjectSetFunc(wiz, 0, sub_080E83A8);
        if (wiz->base.x & 0x80)
            wiz->base.x = (wiz->base.x & ~0xFF) + 0x100;
        else
            wiz->base.x = wiz->base.x & ~0xFF;
        wiz->base.xspeed = 0;
        wiz->base.yspeed = 0;
        if (wiz->unk80 <= gUnk_08351530[0x11][gUnk_0203AD30 - 1] >> 1)
        {
            if (wiz->unk85)
            {
                if (wiz->subtype)
                    wiz->base.counter = 0x14;
                else
                    wiz->base.counter = 0x1E;
            }
            else
            {
                if (wiz->subtype)
                    wiz->base.counter = 8;
                else
                    wiz->base.counter = 0x10;
            }
        }
        else
        {
            if (wiz->unk85)
            {
                if (wiz->subtype)
                    wiz->base.counter = 0x28;
                else
                    wiz->base.counter = 0x5A;
            }
            else
            {
                if (wiz->subtype)
                    wiz->base.counter = 0x1E;
                else
                    wiz->base.counter = 0x3C;
            }
        }
    }
}

static void sub_080E83A8(struct Object2 *wiz)
{
    wiz->base.flags |= 4;
    if (!--wiz->base.counter)
    {
        if (wiz->unk85)
        {
            wiz->unk85 = 0;
            sub_080EAE98(wiz);
        }
        else
        {
            ++wiz->unk85;
            switch (Rand16() & 3)
            {
            case 0:
                sub_080E8430(wiz);
                break;
            case 1:
                sub_080E8588(wiz);
                break;
            case 2:
                sub_080EAD3C(wiz);
                break;
            case 3:
                sub_080EADE4(wiz);
                break;
            }
        }
    }
}

static void sub_080E8430(struct Object2 *wiz)
{
    u8 unk85 = wiz->unk85;

    ObjectSetFunc(wiz, 1, sub_080E8738);
    if (wiz->base.x & 0x80)
        wiz->base.x = (wiz->base.x & ~0xFF) + 0x100;
    else
        wiz->base.x = wiz->base.x & ~0xFF;
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->unk9E = 0;
    wiz->unk9F = Rand16() & 1;
    if (wiz->base.y < 0x4000)
        wiz->unk85 = 2;
    else
    {
        wiz->unk85 = 1;
        if (unk85 != 3 && !RandLessThan3())
            wiz->unk85 = 3;
    }
    PlaySfx(&wiz->base, 414);
}

static void sub_080E8588(struct Object2 *wiz)
{
    u8 unk85 = wiz->unk85;

    ObjectSetFunc(wiz, 2, sub_080E8738);
    if (wiz->base.x & 0x80)
        wiz->base.x = (wiz->base.x & ~0xFF) + 0x100;
    else
        wiz->base.x = wiz->base.x & ~0xFF;
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->unk9E = 0;
    wiz->unk9F = 0;
    wiz->unk85 = 1;
    if (wiz->subtype || wiz->unk80 <= gUnk_08351530[0x11][gUnk_0203AD30 - 1] >> 1)
    {
        wiz->unk9F = Rand16() & 1;
        if (wiz->base.y < 0x4000)
        {
            wiz->unk9F = 0;
            wiz->unk85 = 2;
        }
        else
            wiz->unk85 = 1;
    }
    if (unk85 != 3
        && !RandLessThan3()
        && wiz->base.y > 0x4000)
        wiz->unk85 = 3;
    PlaySfx(&wiz->base, 414);
}

#define Macro_080E8738(wiz) \
({ \
    u16 _r; \
 \
    if ((wiz)->subtype || (wiz)->unk80 <= gUnk_08351530[0x11][gUnk_0203AD30 - 1] >> 1) \
        _r = Rand16() & 1; \
    else \
        _r = RandLessThan3(); \
    _r; \
})

static void sub_080E8738(struct Object2 *wiz)
{
    if (wiz->unk83 == 2)
    {
        wiz->base.yspeed -= 0x18;
        if (wiz->base.yspeed < -0x300)
            wiz->base.yspeed = -0x300;
        if (wiz->subtype)
        {
            if (wiz->base.flags & 1)
            {
                wiz->base.xspeed -= 0x60;
                if (wiz->base.xspeed < -0x480)
                    wiz->base.xspeed = -0x480;
                else if (wiz->base.xspeed > 0x480)
                    wiz->base.xspeed = 0x480;
            }
            else
            {
                wiz->base.xspeed += 0x60;
                if (wiz->base.xspeed > 0x480)
                    wiz->base.xspeed = 0x480;
                else if (wiz->base.xspeed < -0x480)
                    wiz->base.xspeed = -0x480;
            }
        }
        else
        {
            if (wiz->base.flags & 1)
            {
                wiz->base.xspeed -= 0x60;
                if (wiz->base.xspeed < -0x380)
                    wiz->base.xspeed = -0x380;
                else if (wiz->base.xspeed > 0x380)
                    wiz->base.xspeed = 0x380;
            }
            else
            {
                wiz->base.xspeed += 0x60;
                if (wiz->base.xspeed > 0x380)
                    wiz->base.xspeed = 0x380;
                else if (wiz->base.xspeed < -0x380)
                    wiz->base.xspeed = -0x380;
            }
        }
    }
    else
    {
        if (wiz->base.flags & 1)
        {
            wiz->base.xspeed -= 0x60;
            if (wiz->base.xspeed < -0x200)
                wiz->base.xspeed = -0x200;
            else if (wiz->base.xspeed > 0x200)
                wiz->base.xspeed = 0x200;
        }
        else
        {
            wiz->base.xspeed += 0x60;
            if (wiz->base.xspeed > 0x200)
                wiz->base.xspeed = 0x200;
            else if (wiz->base.xspeed < -0x200)
                wiz->base.xspeed = -0x200;
        }
    }
    wiz->base.flags |= 4;
    if (wiz->base.flags & 1)
    {
        if (wiz->unk85 == 3)
        {
            if (wiz->base.x + wiz->base.xspeed <= 0x8000)
            {
                wiz->base.xspeed = 0;
                sub_080EAE98(wiz);
                return;
            }
        }
        else if (wiz->unk9F && wiz->base.unk62 & 4)
        {
            if (wiz->base.x + wiz->base.xspeed <= 0x6E00)
            {
                if (wiz->unk85 != 2)
                    wiz->base.x = 0x6E00;
                wiz->base.xspeed = 0;
                sub_080E8C04(wiz);
                return;
            }
        }
        else
        {
            if (wiz->base.x + wiz->base.xspeed <= 0x2E00)
            {
                wiz->base.x = 0x2E00;
                wiz->base.xspeed = 0;
                wiz->base.flags ^= 1;
                if (Macro_080E8738(wiz))
                    sub_080E82C4(wiz);
                else
                    sub_080EAD3C(wiz);
                return;
            }
        }
    }
    else
    {
        if (wiz->unk85 == 3)
        {
            if (wiz->base.x + wiz->base.xspeed >= 0x8000)
            {
                wiz->base.xspeed = 0;
                sub_080EAE98(wiz);
                return;
            }
        }
        else if (wiz->unk9F && wiz->base.unk62 & 4)
        {
            if (wiz->base.x + wiz->base.xspeed >= 0x9300)
            {
                if (wiz->unk85 != 2)
                    wiz->base.x = 0x9300;
                wiz->base.xspeed = 0;
                sub_080E8C04(wiz);
                return;
            }
        }
        else
        {
            if (wiz->base.x + wiz->base.xspeed >= 0xD300)
            {
                wiz->base.x = 0xD300;
                wiz->base.xspeed = 0;
                wiz->base.flags ^= 1;
                if (Macro_080E8738(wiz))
                    sub_080E82C4(wiz);
                else
                    sub_080EAD3C(wiz);
                return;
            }
        }
    }
    if (!(wiz->base.unk62 & 4) && !wiz->unk9E)
    {
        wiz->base.counter = 0x22;
        if (wiz->unk83 == 2)
            wiz->base.counter = 0x16;
        wiz->base.flags |= 0x100;
        wiz->unk9E = 1;
    }
    if (wiz->unk9E == 1 && !--wiz->base.counter)
    {
        wiz->base.flags &= ~0x100;
        wiz->unk9E = 2;
    }
}

static void sub_080E8B08(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 4, sub_080E8CF0);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0x400;
    wiz->unk9E = 0;
    if (wiz->base.y < 0x4000)
    {
        wiz->base.yspeed = 0x180;
        wiz->base.counter = 0x3C;
        wiz->unk9E = 1;
        wiz->base.flags |= 0x100;
    }
    wiz->base.flags |= 0x20;
    wiz->base.unk62 &= ~4;
    if (wiz->base.flags & 1)
        wiz->base.xspeed = -wiz->base.xspeed;
    PlaySfx(&wiz->base, 392);
}

static void sub_080E8C04(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 4, sub_080E8CF0);
    wiz->base.xspeed = 0xD0;
    wiz->base.yspeed = 0x400;
    if (wiz->unk85 == 2)
        wiz->base.xspeed = 0xA4;
    wiz->base.counter = 0x3C;
    wiz->unk9E = 1;
    wiz->base.flags |= 0x100;
    wiz->base.flags |= 0x20;
    wiz->base.unk62 &= ~4;
    if (wiz->base.flags & 1)
        wiz->base.xspeed = -wiz->base.xspeed;
    PlaySfx(&wiz->base, 392);
}

static void sub_080E8CF0(struct Object2 *wiz)
{
    if (wiz->unk83 == 4)
    {
        if (wiz->base.flags & 2)
            wiz->unk83 = 5;
    }
    else
    {
        if (wiz->base.yspeed <= -0x80)
            wiz->unk83 = 6;
    }
    if (wiz->unk83 == 6)
    {
        wiz->base.flags |= 4;
        if (wiz->base.unk62 & 4)
            sub_080EADA4(wiz);
    }
    if (wiz->base.flags & 1)
    {
        if (wiz->base.x + wiz->base.xspeed < 0x2E00)
            wiz->base.x = 0x2E00;
    }
    else
    {
        if (wiz->base.x + wiz->base.xspeed > 0xD300)
            wiz->base.x = 0xD300;
    }
    if (wiz->unk9E && !--wiz->base.counter)
        wiz->base.flags &= ~0x100;
}

static void sub_080E8DAC(struct Object2 *wiz)
{
    if (wiz->base.flags & 2)
    {
        if (wiz->unk9E)
            wiz->base.flags ^= 1;
        if (Macro_080E8738(wiz))
            sub_080E82C4(wiz);
        else
            sub_080E8E74(wiz);
    }
}

static void sub_080E8E74(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 4, sub_080E8F74);
    wiz->base.xspeed = 0x1A1;
    wiz->base.yspeed = 0x400;
    if (wiz->base.y < 0x4000)
    {
        wiz->base.xspeed = 0x238;
        wiz->base.yspeed = 0x300;
        wiz->unk9E = 1;
        wiz->base.counter = 0x3C;
        wiz->base.flags |= 0x100;
    }
    wiz->base.flags |= 0x20;
    wiz->base.unk62 &= ~4;
    if (wiz->base.flags & 1)
        wiz->base.xspeed = -wiz->base.xspeed;
    PlaySfx(&wiz->base, 392);
}

static void sub_080E8F74(struct Object2 *wiz)
{
    if (wiz->unk83 == 4)
    {
        if (wiz->base.flags & 2)
            wiz->unk83 = 5;
    }
    else
    {
        if (wiz->base.yspeed <= -0x80)
            wiz->unk83 = 6;
    }
    if (wiz->unk83 == 6)
    {
        wiz->base.flags |= 4;
        if (wiz->base.unk62 & 4)
            sub_080EAE4C(wiz);
    }
    if (wiz->base.flags & 1)
    {
        if (wiz->base.x + wiz->base.xspeed < 0x2E00)
        {
            wiz->base.x = 0x2E00;
            wiz->base.xspeed = 0;
        }
    }
    else
    {
        if (wiz->base.x + wiz->base.xspeed > 0xD300)
        {
            wiz->base.x = 0xD300;
            wiz->base.xspeed = 0;
        }
    }
    if (wiz->unk9E && !--wiz->base.counter)
        wiz->base.flags &= ~0x100;
}

static void sub_080E9034(struct Object2 *wiz)
{
    wiz->base.flags |= 0x8000;
    wiz->base.flags |= 0x1000000;
    if (wiz->base.unk1 == 0xB || wiz->base.unk1 == 0x15)
        PlaySfx(&wiz->base, 391);
    if (wiz->base.unk1 == 0x28)
    {
        sub_0808AE30(&wiz->base, 0, 0x2AA, 0);
        sub_080E921C(wiz);
        PlaySfx(&wiz->base, 413);
    }
    if (!--wiz->base.counter)
    {
        u16 r;

        ++wiz->unk9E;
        if (wiz->subtype || wiz->unk80 <= gUnk_08351530[0x11][gUnk_0203AD30 - 1] >> 1)
            r = Rand16() & 1;
        else
            r = Rand16() & 3;
        if (wiz->unk9E > 2)
            r = 1;
        if (r)
            sub_080EAF24(wiz);
        else
        {
            wiz->base.flags |= 4;
            wiz->base.counter = 0x38;
        }
    }
}

static void sub_080E921C(struct Object2 *wiz)
{
    u8 r = 0;

    if (wiz->subtype || wiz->unk80 <= gUnk_08351530[0x11][gUnk_0203AD30 - 1] >> 1)
        r = Rand16() & 1;
    switch (RandLessThan(10))
    {
    case 0:
        sub_080E9384(wiz, r);
        break;
    case 1:
        sub_080E9524(wiz, r);
        break;
    case 2:
        sub_080E96F8(wiz, r);
        break;
    case 3:
        sub_080E9A54(wiz, r);
        break;
    case 4:
        sub_080E9C58(wiz, r);
        break;
    case 5:
        sub_080E9FC0(wiz, r);
        break;
    case 6:
        sub_080EA1C0(wiz, wiz->object->subtype2);
        break;
    case 7:
        sub_080EA27C(wiz, wiz->object->subtype2);
        break;
    case 8:
        if (Rand16() & 1)
            sub_080E9384(wiz, r);
        else
            sub_080E9524(wiz, r);
        break;
    case 9:
        if (Rand16() & 1)
            sub_080E96F8(wiz, r);
        else
            sub_080E9A54(wiz, r);
        break;
    }
}

static void sub_080E9384(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *football;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    football = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_FOOTBALL,
        wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    football->base.parent = wiz;
}

static void sub_080E9448(struct Object2 *football)
{
    football->base.flags |= 4;
    if (football->base.unk62 & 3)
    {
        football->base.flags |= 0x1000;
        sub_0809DA30(football);
    }
    if (football->base.unk62 & 4)
    {
        switch (Rand16() & 3)
        {
        case 0:
            football->base.xspeed = 0xD0;
            football->base.yspeed = 0x200;
            break;
        case 1:
            football->base.xspeed = 0x88;
            football->base.yspeed = 0x300;
            break;
        case 2:
            football->base.xspeed = 0x120;
            football->base.yspeed = 0x100;
            break;
        case 3:
            football->base.xspeed = 0x300;
            football->base.yspeed = 0x64;
            break;
        }
        if (football->subtype)
            football->base.xspeed += 0x80;
        if (football->base.flags & 1)
            football->base.xspeed = -football->base.xspeed;
    }
}

static void sub_080E9524(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *car;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    car = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_CAR,
        wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    car->base.parent = wiz;
}

static void sub_080E95E8(struct Object2 *car)
{
    car->base.flags |= 4;
    if (car->subtype)
    {
        if (car->base.flags & 1)
        {
            car->base.xspeed -= 8;
            if (car->base.xspeed < -0x380)
                car->base.xspeed = -0x380;
            else if (car->base.xspeed > 0x380)
                car->base.xspeed = 0x380;
        }
        else
        {
            car->base.xspeed += 8;
            if (car->base.xspeed > 0x380)
                car->base.xspeed = 0x380;
            else if (car->base.xspeed < -0x380)
                car->base.xspeed = -0x380;
        }
    }
    else
    {
        if (car->base.flags & 1)
        {
            car->base.xspeed -= 8;
            if (car->base.xspeed < -0x280)
                car->base.xspeed = -0x280;
            else if (car->base.xspeed > 0x280)
                car->base.xspeed = 0x280;
        }
        else
        {
            car->base.xspeed += 8;
            if (car->base.xspeed > 0x280)
                car->base.xspeed = 0x280;
            else if (car->base.xspeed < -0x280)
                car->base.xspeed = -0x280;
        }
    }
    if (car->base.counter)
        --car->base.counter;
    if (car->base.unk62 & 3)
    {
        if (car->base.counter)
        {
            car->base.flags ^= 1;
            car->base.xspeed = -car->base.xspeed;
        }
        else
        {
            car->base.flags |= 0x1000;
            sub_0809DA30(car);
        }
    }
}

static void sub_080E96F8(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *balloon;
    u16 r;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    balloon = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_BALLOON,
        wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    balloon->base.parent = wiz;
    if (a2)
        r = Rand16() & 3;
    else
        r = !(Rand16() & 3);
    if (r)
    {
        balloon = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_BALLOON,
            wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        balloon->base.parent = wiz;
    }
}

void *CreateWizBalloon(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *balloon = TaskGetStructPtr(t);

    InitObject(balloon, template, a2);
    balloon->base.unkC |= 2;
    balloon->base.flags |= 0x100;
    balloon->base.flags |= 0x40;
    balloon->unk9E = 0;
    balloon->unk7C = sub_0809F840;
    sub_0803E2B0(&balloon->base, -5, -3, 5, 8);
    sub_0803E308(&balloon->base, -6, -4, 6, 0xA);
    ObjectInitSprite(balloon);
    sub_080E9948(balloon);
    return balloon;
}

void sub_080E9948(struct Object2 *balloon)
{
    ObjectSetFunc(balloon, 0, sub_080E99F0);
    if (balloon->object->subtype1)
        balloon->base.flags |= 1;
    balloon->base.counter = Rand16() & 3;
    switch (balloon->base.counter)
    {
    case 0:
        balloon->base.xspeed = 0xC0;
        balloon->base.yspeed = 0x28;
        break;
    case 1:
        balloon->base.xspeed = 0x80;
        balloon->base.yspeed = 0x28;
        break;
    case 2:
        balloon->base.xspeed = 0xE0;
        balloon->base.yspeed = 0x28;
        break;
    case 3:
        balloon->base.xspeed = 0x180;
        balloon->base.yspeed = 0x28;
        break;
    }
    if (balloon->base.flags & 1)
        balloon->base.xspeed = -balloon->base.xspeed;
}

static void sub_080E99F0(struct Object2 *balloon)
{
    balloon->base.flags |= 4;
    switch (balloon->base.counter)
    {
    case 0:
        balloon->base.yspeed += 0x10;
        if (balloon->base.yspeed > 0x300)
            balloon->base.yspeed = 0x300;
        break;
    case 1:
        balloon->base.yspeed += 0x18;
        if (balloon->base.yspeed > 0x300)
            balloon->base.yspeed = 0x300;
        break;
    case 2:
        balloon->base.yspeed += 8;
        if (balloon->base.yspeed > 0x300)
            balloon->base.yspeed = 0x300;
        break;
    case 3:
        balloon->base.yspeed += 4;
        if (balloon->base.yspeed > 0x300)
            balloon->base.yspeed = 0x300;
        break;
    }
}

static void sub_080E9A54(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *bomb;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    bomb = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_BOMB,
        wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    bomb->base.parent = wiz;
}

void sub_080E9B18(struct Object2 *bomb)
{
    ObjectSetFunc(bomb, 0, sub_080E9BA0);
    if (bomb->object->subtype1)
        bomb->base.flags |= 1;
    if (bomb->subtype)
        bomb->base.xspeed = 0x100;
    else
        bomb->base.xspeed = 0xD0;
    bomb->base.yspeed = 0x200;
    if (bomb->base.flags & 1)
        bomb->base.xspeed = -bomb->base.xspeed;
    bomb->base.counter = (Rand16() & 0x3F) + 0x78;
}

static void sub_080E9BA0(struct Object2 *bomb)
{
    bomb->base.flags |= 4;
    if (!--bomb->base.counter)
    {
        bomb->base.flags |= 0x1000;
        sub_0809DA30(bomb);
    }
    if (bomb->base.unk62 & 4 && bomb->unk9E != 4)
    {
        switch (bomb->unk9E)
        {
        case 0:
            bomb->base.yspeed = 0x1D0;
            break;
        case 1:
            bomb->base.yspeed = 0x140;
            break;
        case 2:
            bomb->base.yspeed = 0x100;
            break;
        case 3:
            bomb->base.yspeed = 0x80;
            break;
        }
        bomb->base.xspeed >>= 1;
        bomb->base.flags |= 0x20;
        ++bomb->unk9E;
    }
    if (!(bomb->base.counter & 7))
        sub_08097E9C(&bomb->base, -6, -6);
}

static void sub_080E9C58(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *cloud;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    cloud = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_CLOUD,
        wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    cloud->base.parent = wiz;
}

void *CreateWizCloud(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *cloud = TaskGetStructPtr(t);

    InitObject(cloud, template, a2);
    cloud->base.unkC |= 2;
    cloud->base.flags |= 0x100;
    cloud->base.flags |= 0x40;
    cloud->unk9E = 0;
    cloud->unk7C = sub_0809F840;
    sub_0803E2B0(&cloud->base, -5, -3, 5, 8);
    sub_0803E308(&cloud->base, -6, -4, 6, 0xA);
    ObjectInitSprite(cloud);
    cloud->base.sprite.unk14 = 0x2C0;
    sub_080EAA30(cloud);
    return cloud;
}

static void sub_080E9DD4(struct Object2 *cloud)
{
    ObjectSetFunc(cloud, 0, sub_080E9E58);
    if (cloud->object->subtype1)
        cloud->base.flags |= 1;
    cloud->base.xspeed = 0x80;
    cloud->base.yspeed = 0;
    if (cloud->subtype)
        cloud->base.counter = 0x30;
    else
        cloud->base.counter = 0x40;
    if (cloud->base.flags & 1)
        cloud->base.xspeed = -cloud->base.xspeed;
    cloud->base.counter -= Rand16() & 0x1F;
}

static void sub_080E9E58(struct Object2 *cloud)
{
    cloud->base.yspeed = gUnk_08356CB4[cloud->unk9E];
    cloud->unk9E = (cloud->unk9E + 1) & 0xF;
    if (!cloud->unk83)
        cloud->base.flags |= 4;
    else
    {
        if (cloud->base.unk1 & 2)
        {
            cloud->base.sprite.palId = 0;
            Macro_081050E8(&cloud->base, &cloud->base.sprite, 0x318, 1);
        }
        else
        {
            cloud->base.sprite.palId = 0;
            Macro_081050E8(&cloud->base, &cloud->base.sprite, 0x317, 1);
        }
        if (cloud->base.flags & 2)
        {
            sub_080EA3B8(cloud);
            cloud->unk83 = 0;
            if (cloud->subtype)
                cloud->base.counter = 0x30;
            else
                cloud->base.counter = 0x40;
            cloud->base.sprite.palId = 0;
            Macro_081050E8(&cloud->base, &cloud->base.sprite, 0x317, 1);
        }
    }
    if (!--cloud->base.counter)
    {
        cloud->unk83 = 1;
        cloud->base.flags &= ~2;
    }
}

static void sub_080E9FC0(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *apple;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    apple = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_APPLE,
        wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    apple->base.parent = wiz;
}

void sub_080EA084(struct Object2 *apple)
{
    ObjectSetFunc(apple, 0, sub_080EA0D8);
    if (apple->object->subtype1)
        apple->base.flags |= 1;
    if (apple->subtype)
        apple->base.xspeed = 0xD0;
    else
        apple->base.xspeed = 0xD0;
    apple->base.yspeed = 0x200;
    if (apple->base.flags & 1)
        apple->base.xspeed = -apple->base.xspeed;
}

static void sub_080EA0D8(struct Object2 *apple)
{
    apple->base.flags |= 4;
    if (!(apple->base.unk1 & 3))
    {
        if (apple->base.counter)
        {
            apple->base.sprite.palId = 0;
            Macro_081050E8(&apple->base, &apple->base.sprite, 0x317, 1);
            apple->base.counter = 0;
        }
        else
        {
            apple->base.sprite.palId = 0;
            Macro_081050E8(&apple->base, &apple->base.sprite, 0x318, 1);
            apple->base.counter = 1;
        }
    }
    if (apple->base.unk62 & 3)
    {
        apple->base.flags |= 0x1000;
        sub_0809DA30(apple);
    }
}

static void sub_080EA1C0(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *bb;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    bb = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_BRONTO_BURT,
        1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    bb->base.parent = wiz;
}

static void sub_080EA27C(struct Object2 *wiz, u8 a2)
{
    s32 x, y;
    struct Object2 *droppy;

    if (wiz->base.flags & 1)
        x = wiz->base.x >> 8;
    else
        x = wiz->base.x >> 8;
    y = wiz->base.y >> 8;
    droppy = CreateObjTemplateAndObj(wiz->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_WIZ_DROPPY,
        wiz->base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    droppy->base.parent = wiz;
}

void sub_080EA340(struct Object2 *droppy)
{
    ObjectSetFunc(droppy, 1, sub_080EB0DC);
    if (droppy->object->subtype1)
        droppy->base.flags |= 1;
    droppy->base.xspeed = 0xA0;
    if (Rand16() & 1)
    {
        droppy->unk83 = 3;
        droppy->base.xspeed = 0x120;
    }
    if (droppy->base.flags & 1)
        droppy->base.xspeed = -droppy->base.xspeed;
    droppy->base.counter = 0x5A;
}

static void sub_080EA3B8(struct Object2 *cloud)
{
    struct Task *t = TaskCreate(sub_080EA528, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = cloud->base.x;
    objBase->y = cloud->base.y;
    objBase->parent = cloud;
    objBase->counter = 0;
    objBase->roomId = cloud->base.roomId;
    objBase->unk56 = cloud->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x100;
    objBase->unk68 = 0x20000043;
    objBase->unk5C |= 0x80000;
    objBase->xspeed = 0;
    objBase->yspeed = -0x400;
    sub_0803E2B0(objBase, -2, -2, 2, 2);
    sub_0803E308(objBase, 2, 2, 2, 2);
    sub_080708DC(objBase, &objBase->sprite, 6, 0x317, 0x18, 0xC);
    objBase->sprite.palId = 0;
    Macro_081050E8(objBase, &objBase->sprite, 0x318, 1);
    objBase->counter = 8;
}

static void sub_080EA528(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite sprite;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 6, &objBase->sprite);
    Macro_081050E8(objBase, &objBase->sprite, 0x318, !objBase->sprite.palId);
    if (!sub_0806F780(objBase))
    {
        objBase->flags |= 4;
        SetPointerSomething(objBase);
        if (!(objBase->flags & 0x800))
        {
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        if (!--objBase->counter)
            objBase->flags &= ~0x100;
        if (objBase->x <= gCurLevelInfo[objBase->unk56].unk50 && objBase->x >= gCurLevelInfo[objBase->unk56].unk48)
        {
            if (objBase->y <= gCurLevelInfo[objBase->unk56].unk54 && objBase->y >= gCurLevelInfo[objBase->unk56].unk4C)
                sub_0806FC70(objBase);
        }
        if (objBase->unk62 || objBase->flags & 0x40000)
        {
            sub_0808AE30(objBase, 0, 0x298, 0);
            objBase->flags |= 0x1000;
        }
        else
            sub_0806F8BC(objBase);
    }
}

void *CreateWizFootball(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *football = TaskGetStructPtr(t);

    InitObject(football, template, a2);
    football->base.unkC |= 2;
    football->unk9E = 0;
    football->unk7C = sub_0809F840;
    sub_0803E2B0(&football->base, -5, -7, 5, 4);
    sub_0803E308(&football->base, -6, -8, 6, 6);
    ObjectInitSprite(football);
    sub_080EA874(football);
    return football;
}

void sub_080EA874(struct Object2 *football)
{
    ObjectSetFunc(football, 0, sub_080E9448);
    if (football->object->subtype1)
        football->base.flags |= 1;
    football->base.xspeed = 0xD0;
    football->base.yspeed = 0x200;
    if (football->base.flags & 1)
        football->base.xspeed = -football->base.xspeed;
}

void *CreateWizCar(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *car = TaskGetStructPtr(t);

    InitObject(car, template, a2);
    car->unk9E = 0;
    car->unk7C = sub_0809F840;
    sub_0803E2B0(&car->base, -5, -3, 5, 8);
    sub_0803E308(&car->base, -6, -4, 6, 0xA);
    ObjectInitSprite(car);
    sub_080EA95C(car);
    return car;
}

void sub_080EA95C(struct Object2 *car)
{
    ObjectSetFunc(car, 0, sub_080E95E8);
    if (car->object->subtype1)
        car->base.flags |= 1;
    car->base.counter = 0x5A;
}

void *CreateWizBomb(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *bomb = TaskGetStructPtr(t);

    InitObject(bomb, template, a2);
    bomb->base.unkC |= 2;
    bomb->unk9E = 0;
    bomb->unk7C = sub_0809F840;
    sub_0803E2B0(&bomb->base, -5, -6, 5, 5);
    sub_0803E308(&bomb->base, -6, -7, 6, 7);
    ObjectInitSprite(bomb);
    sub_080E9B18(bomb);
    return bomb;
}

void sub_080EAA30(struct Object2 *cloud)
{
    ObjectSetFunc(cloud, 0, sub_080EB0B8);
    if (cloud->object->subtype1)
        cloud->base.flags |= 1;
    cloud->base.xspeed = 0;
    cloud->base.yspeed = 0x180;
    if (cloud->base.flags & 1)
        cloud->base.xspeed = -cloud->base.xspeed;
    cloud->base.counter = 0x18;
}

void *CreateWizApple(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *apple = TaskGetStructPtr(t);

    InitObject(apple, template, a2);
    apple->base.unkC |= 2;
    apple->unk9E = 0;
    apple->unk7C = sub_0809F840;
    sub_0803E2B0(&apple->base, -5, -6, 5, 5);
    sub_0803E308(&apple->base, -6, -7, 6, 7);
    ObjectInitSprite(apple);
    sub_080EA084(apple);
    return apple;
}

void *CreateWizDroppy(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *droppy = TaskGetStructPtr(t);

    InitObject(droppy, template, a2);
    droppy->unk9E = 0;
    droppy->unk7C = sub_0809F840;
    sub_0803E2B0(&droppy->base, -5, -7, 5, 4);
    sub_0803E308(&droppy->base, -6, -8, 6, 6);
    ObjectInitSprite(droppy);
    sub_080EA340(droppy);
    return droppy;
}

static void sub_080EABC0(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0x10, sub_080E7F98);
    wiz->base.x = 0x8000;
    wiz->base.y = -0x1000;
    wiz->base.yspeed = -0x80;
    wiz->unk85 = 0;
    wiz->base.flags &= ~0x400;
    wiz->base.counter = 0xB4;
    wiz->base.flags |= 0x100;
    wiz->base.flags |= 0x200;
    wiz->base.flags |= 1;
}

static void sub_080EAC18(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0x11, sub_080E8050);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->base.flags |= 0x40;
    wiz->base.flags |= 2;
}

static void sub_080EAC48(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 4, sub_080EAC80);
    wiz->base.xspeed = 0x160;
    wiz->base.yspeed = 0x180;
    wiz->base.flags |= 2;
    wiz->base.flags &= ~0x40;
    wiz->base.counter = 0x28;
}

static void sub_080EAC80(struct Object2 *wiz)
{
    if (wiz->unk83 == 6)
        wiz->base.flags |= 4;
    else if (wiz->base.flags & 2)
        wiz->unk83 = 6;
    if (!--wiz->base.counter)
        wiz->base.flags &= ~0x100;
    if (wiz->base.unk62 & 4)
        sub_080E8178(wiz);
}

static void sub_080EACD8(struct Object2 *wiz)
{
    wiz->base.flags |= 4;
    if (!--wiz->base.counter)
    {
        wiz->base.flags &= ~0x200;
        wiz->unk85 = 0;
        sub_080E82C4(wiz);
    }
}

static void sub_080EAD0C(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0, sub_080E7EBC);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->base.flags |= 0x40;
    wiz->base.flags |= 0x400;
}

static void sub_080EAD3C(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 3, sub_080EAD8C);
    if (wiz->base.x & 0x80)
        wiz->base.x = (wiz->base.x & ~0xFF) + 0x100;
    else
        wiz->base.x = wiz->base.x & ~0xFF;
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->base.flags &= ~2;
}

static void sub_080EAD8C(struct Object2 *wiz)
{
    if (wiz->base.flags & 2)
        sub_080E8B08(wiz);
}

static void sub_080EADA4(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 7, sub_080E8DAC);
    wiz->base.flags &= ~2;
    wiz->unk9E = 0;
    if (wiz->base.xspeed)
        wiz->unk9E = 1;
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
}

static void sub_080EADE4(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 3, sub_080EAE34);
    if (wiz->base.x & 0x80)
        wiz->base.x = (wiz->base.x & ~0xFF) + 0x100;
    else
        wiz->base.x = wiz->base.x & ~0xFF;
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->base.flags &= ~2;
}

static void sub_080EAE34(struct Object2 *wiz)
{
    if (wiz->base.flags & 2)
        sub_080E8E74(wiz);
}

static void sub_080EAE4C(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 7, sub_080EAE78);
    wiz->base.flags &= ~2;
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
}

static void sub_080EAE78(struct Object2 *wiz)
{
    if (wiz->base.flags & 2)
    {
        wiz->base.flags ^= 1;
        sub_080E82C4(wiz);
    }
}

static void sub_080EAE98(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0xD, sub_080EAEC4);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->base.flags &= ~2;
}

static void sub_080EAEC4(struct Object2 *wiz)
{
    if (wiz->base.unk1 > 0x14)
    {
        wiz->base.flags |= 0x8000;
        wiz->base.flags |= 0x1000000;
    }
    if (wiz->base.flags & 2)
        sub_080EAEF4(wiz);
}

static void sub_080EAEF4(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0xE, sub_080E9034);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->base.flags &= ~2;
    wiz->base.counter = 0x38;
}

static void sub_080EAF24(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0xF, sub_080EAF50);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = 0;
    wiz->base.flags &= ~2;
}

static void sub_080EAF50(struct Object2 *wiz)
{
    if (wiz->base.unk1 <= 0x1D)
    {
        wiz->base.flags |= 0x8000;
        wiz->base.flags |= 0x1000000;
        if (wiz->base.unk1 == 0x1D)
        {
            wiz->base.flags &= ~0x8000;
            wiz->base.flags &= ~0x1000000;
        }
    }
    if (wiz->base.flags & 2)
    {
        wiz->base.flags &= ~0x8000;
        if (wiz->unk85)
        {
            if (Rand16() & 1)
                sub_080E8430(wiz);
            else
                sub_080E8588(wiz);
        }
        else
            sub_080E82C4(wiz);
    }
}

static void sub_080EAFDC(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0x12, sub_080EB028);
    wiz->base.xspeed = -0x100;
    wiz->base.yspeed = 0x300;
    wiz->base.flags &= ~2;
    wiz->base.flags |= 0x200;
    wiz->base.counter = 0x1E;
    if (wiz->base.flags & 1)
        wiz->base.xspeed = -wiz->base.xspeed;
}

static void sub_080EB028(struct Object2 *wiz)
{
    if (!--wiz->base.counter)
        sub_080EB044(wiz);
}

static void sub_080EB044(struct Object2 *wiz)
{
    ObjectSetFunc(wiz, 0x13, sub_080EB088);
    wiz->base.xspeed = 0;
    wiz->base.yspeed = -0x80;
    wiz->base.flags &= ~2;
    wiz->base.flags |= 0x40;
    wiz->base.flags &= ~0x20;
    wiz->base.flags |= 0x100;
    wiz->base.counter = 0x8C;
}

static void sub_080EB088(struct Object2 *wiz)
{
    wiz->base.flags |= 4;
    if (!--wiz->base.counter)
    {
        sub_0809DA30(wiz);
        wiz->base.flags |= 0x1000;
    }
}

static void sub_080EB0B8(struct Object2 *cloud)
{
    cloud->base.flags |= 4;
    if (!--cloud->base.counter)
        sub_080E9DD4(cloud);
}

static void sub_080EB0DC(struct Object2 *droppy)
{
    droppy->base.flags |= 4;
    if (droppy->base.counter)
        --droppy->base.counter;
    if (droppy->base.unk62 & 3)
    {
        if (droppy->base.counter)
        {
            droppy->base.flags ^= 1;
            droppy->base.xspeed = -droppy->base.xspeed;
        }
        else
        {
            droppy->base.flags |= 0x1000;
            sub_0809DA30(droppy);
        }
    }
}
