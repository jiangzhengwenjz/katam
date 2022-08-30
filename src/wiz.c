#include "wiz.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"

void sub_080E83A8(struct Object2 *);
void sub_080E8430(struct Object2 *);
void sub_080E8588(struct Object2 *);
void sub_080E8738(struct Object2 *);
void sub_080E8C04(struct Object2 *);
void sub_080E8CF0(struct Object2 *);
void sub_080E8E74(struct Object2 *);
void sub_080E8F74(struct Object2 *);
void sub_080E921C(struct Object2 *);
void sub_080E9A54(struct Object2 *, u8);
void sub_080E9C58(struct Object2 *, u8);
void sub_080E9FC0(struct Object2 *, u8);
void sub_080EA1C0(struct Object2 *, u8);
void sub_080EA27C(struct Object2 *, u8);
void sub_080E9384(struct Object2 *, u8);
void sub_080E9524(struct Object2 *, u8);
void sub_080E96F8(struct Object2 *, u8);
void sub_080EABC0(struct Object2 *);
void sub_080EAC18(struct Object2 *);
void sub_080EAC48(struct Object2 *);
void sub_080EACD8(struct Object2 *);
void sub_080EAD0C(struct Object2 *);
void sub_080EAD3C(struct Object2 *);
void sub_080EADA4(struct Object2 *);
void sub_080EADE4(struct Object2 *);
void sub_080EAE4C(struct Object2 *);
void sub_080EAE98(struct Object2 *);
void sub_080EAF24(struct Object2 *);
void sub_080EAFDC(struct Object2 *);

void *CreateWiz(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t, tmp), *wiz = tmp;

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

void sub_080E7EBC(struct Object2 *wiz)
{
    wiz->kirby3 = sub_0803D368(&wiz->base);
    wiz->base.flags |= 4;
    if (!(wiz->kirby3->base.base.base.unkC & 0x8000)
        && wiz->base.roomId == wiz->kirby3->base.base.base.roomId
        && sub_08039430(&wiz->kirby3->base.base,
            wiz->base.x, wiz->base.y,
            wiz->object->unk1A, wiz->object->unk1C,
            wiz->object->unk1E, wiz->object->unk20))
    {
        Macro_081003EC(wiz, &wiz->kirby3->base.base.base);
        sub_080EABC0(wiz);
    }
}

void sub_080E7F98(struct Object2 *wiz)
{
    wiz->base.flags |= 4;
    if (wiz->base.unk1 == 1 || wiz->base.unk1 == 0x20)
        PlaySfx(&wiz->base, 417);
    if (!--wiz->base.counter)
        sub_080EAC18(wiz);
}

void sub_080E8050(struct Object2 *wiz)
{
    if (wiz->base.unk1 <= 0x2C && !(wiz->base.unk1 & 7))
        PlaySfx(&wiz->base, 418);
    if (wiz->base.unk1 == 0x59)
        PlaySfx(&wiz->base, 419);
    if (wiz->base.flags & 2)
        sub_080EAC48(wiz);
}

void sub_080E8178(struct Object2 *wiz)
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

void sub_080E83A8(struct Object2 *wiz)
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

void sub_080E8430(struct Object2 *wiz)
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

void sub_080E8588(struct Object2 *wiz)
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

void sub_080E8738(struct Object2 *wiz)
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

void sub_080E8B08(struct Object2 *wiz)
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

void sub_080E8C04(struct Object2 *wiz)
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

void sub_080E8CF0(struct Object2 *wiz)
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

void sub_080E8DAC(struct Object2 *wiz)
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

void sub_080E8E74(struct Object2 *wiz)
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

void sub_080E8F74(struct Object2 *wiz)
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

void sub_080E9034(struct Object2 *wiz)
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

#define RandLessThan10() \
({ \
    u16 _r = Rand16(), _i; \
 \
    for (_i = 0; _i <= 8; ++_i) \
        if (_r < (_i+1) * (0x10000/10)) \
            break; \
    _i; \
})

void sub_080E921C(struct Object2 *wiz)
{
    u8 r = 0;

    if ((wiz->subtype || wiz->unk80 <= gUnk_08351530[0x11][gUnk_0203AD30 - 1] >> 1))
        r = Rand16() & 1;
    switch (RandLessThan10())
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
