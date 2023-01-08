#include "moley.h"
#include "malloc_vram.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"
#include "random.h"

static void sub_080EB9AC(struct Moley *);
static void sub_080EBBD0(struct Moley *);
static void sub_080EBD4C(struct Moley *);
static void sub_080EBF34(struct Moley *);
static void sub_080EC308(struct Moley *);
static void sub_080EC3B8(struct Moley *);
static void sub_080EC44C(struct Moley *);
static void sub_080EC504(struct Moley *);
static void sub_080EC650(struct Moley *, u8, u8);
static void sub_080ECBAC(struct Object2 *);
static void sub_080ECCAC(struct Object2 *);
static void sub_080ECDE0(struct Object2 *);
static void sub_080ECF6C(void);
static void sub_080ED078(struct Moley *);
static void sub_080ED270(void);
static void sub_080ED520(struct Moley *);
static void sub_080ED54C(struct Moley *);
static void sub_080ED578(struct Moley *);
static void sub_080ED5AC(struct Moley *);
static void sub_080ED5C4(struct Moley *);
static void sub_080ED5FC(struct Moley *);
static void sub_080ED67C(struct Moley *);
static void sub_080ED6D0(struct Moley *);
static void sub_080ED704(struct Moley *);
static void sub_080ED748(struct Moley *);
static void sub_080ED77C(struct Moley *);
static void sub_080ED7D8(struct Moley *);
static void sub_080ED828(struct Moley *);
static void sub_080ED87C(struct Moley *);
static void sub_080ED8B8(struct Moley *);
static void sub_080ED8C4(struct Object2 *);
static void sub_080ED8F0(struct Object2 *);

const struct Unk_02021590 gUnk_08356D90[] = {
    { 0x33F, 0,   0 },
    { 0x33F, 1,   0 },
    { 0x33F, 2,   0 },
    { 0x33F, 3,   0 },
    { 0x33F, 4,   0 },
    { 0x33F, 5,   0 },
    { 0x33F, 6,   0 },
    { 0x33F, 7,   0 },
    { 0x33F, 8,   0 },
    { 0x33F, 9,   0 },
    { 0x33F, 0xA, 0 },
    { 0x33F, 0xB, 0 },
    { 0x33F, 0xB, 0 },
};

const struct Unk_02021590 gUnk_08356DC4[] = {
    { 0x33F, 0xC, 0 },
    { 0x33F, 0xD, 0 },
    { 0x33F, 0xD, 0 },
};

const struct Unk_02021590 gUnk_08356DD0[] = {
    { 0x33F, 0xE, 0 },
    { 0x33F, 0xF, 0 },
    { 0x33F, 0xF, 0 },
};

const struct Unk_02021590 gUnk_08356DDC[] = {
    { 0x33F, 0x10, 0 },
    { 0x33F, 0x11, 0 },
    { 0x33F, 0x11, 0 },
};

const struct Unk_02021590 gUnk_08356DE8[] = {
    { 0x33F, 0x12, 0 },
    { 0x33F, 0x13, 0 },
    { 0x33F, 0x13, 0 },
};

const struct Unk_02021590 gUnk_08356DF4[] = {
    { 0x33F, 0x14, 0 },
    { 0x33F, 0x15, 0 },
    { 0x33F, 0x15, 0 },
};

const struct Unk_02021590 gUnk_08356E00[] = {
    { 0x33F, 0x16, 0 },
    { 0x33F, 0x17, 0 },
    { 0x33F, 0x17, 0 },
};

const struct Unk_02021590 gUnk_08356E0C[] = {
    { 0x341, 0, 0 },
    { 0x341, 1, 0 },
    { 0x341, 1, 0 },
};

const struct Unk_02021590 gUnk_08356E18[] = {
    { 0x33F, 0x18, 2 },
    { 0x33F, 0,    2 },
    { 0x33F, 0x18, 2 },
    { 0x33F, 0,    2 },
    { 0x33F, 0x18, 2 },
    { 0x33F, 0,    2 },
    { 0x33F, 0x18, 2 },
    { 0x33F, 0,    2 },
    { 0x33F, 0x18, 2 },
    { 0x33F, 0,    2 },
    { 0x33F, 0x18, 2 },
    { 0x33F, 0,    2 },
    { 0x33F, 0x18, 2 },
    { 0x33F, 0,    2 },
    { 0x33F, 0,    -1 },
};

void *CreateMoley(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Moley), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Moley *tmp = TaskGetStructPtr(t), *moley = tmp;

    InitObject(&moley->obj2, template, a2);
    moley->obj2.base.unkC |= 1;
    moley->obj2.base.flags |= 0x2000000;
    moley->obj2.base.flags |= 0x100;
    moley->obj2.base.flags |= 0x400;
    moley->obj2.base.flags |= 0x200;
    moley->obj2.base.flags |= 0x40;
    moley->obj2.base.flags |= 0x200000;
    moley->unkB4 = 1;
    moley->unkB6 = 0;
    moley->unkB5 = 0;
    if (moley->obj2.base.x > moley->obj2.kirby3->base.base.base.x)
        moley->obj2.base.flags |= 1;
    else
        moley->obj2.base.flags &= ~1;
    moley->obj2.base.unk5C &= ~7;
    moley->obj2.base.unk5C |= 3;
    moley->obj2.base.unk5C |= 0x1080A0;
    sub_0803E2B0(&moley->obj2.base, -0xC, -0x10, 0xC, 0x14);
    sub_0803E308(&moley->obj2.base, -0xA, -0x10, 0xA, 6);
    ObjectInitSprite(&moley->obj2);
    moley->obj2.unk9E = 0;
    moley->obj2.unk7C = 0;
    Macro_080E7D74(&moley->obj2);
    sub_080ED520(moley);
    return moley;
}

static void sub_080EB2C0(struct Moley *moley)
{
    moley->obj2.kirby3 = sub_0803D368(&moley->obj2.base);
    moley->obj2.base.flags |= 4;
    if (!(moley->obj2.kirby3->base.base.base.unkC & 0x8000)
        && moley->obj2.base.roomId == moley->obj2.kirby3->base.base.base.roomId
        && sub_08039430(&moley->obj2.kirby3->base.base,
            moley->obj2.base.x, moley->obj2.base.y,
            moley->obj2.object->unk1A, moley->obj2.object->unk1C,
            moley->obj2.object->unk1E, moley->obj2.object->unk20))
    {
        Macro_081003EC(&moley->obj2, &moley->obj2.kirby3->base.base.base);
        sub_080ED54C(moley);
    }
}

static void sub_080EB39C(struct Moley *moley)
{
    if (moley->obj2.base.counter == 0x8C)
        sub_0806FE64(4, &moley->obj2.base);
    if (moley->obj2.base.counter < 0x78
        && !(moley->obj2.base.counter & 7))
    {
        if (Rand16() & 1)
            sub_080ED078(moley);
        if (!(Rand16() & 3))
            sub_080ED078(moley);
    }
    if (moley->obj2.base.counter < 0x8D
        && !(moley->obj2.base.counter & 0xF))
        PlaySfx(&moley->obj2.base, 394);
    if (!--moley->obj2.base.counter)
    {
        sub_080700D8(&moley->obj2.base);
        sub_080ED578(moley);
    }
}

static void sub_080EB4B8(struct Moley *moley)
{
    switch (moley->obj2.unk83)
    {
    case 3:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 4;
            moley->obj2.base.flags &= ~2;
            PlaySfx(&moley->obj2.base, 394);
        }
        break;
    case 4:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 0;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 0:
        if (moley->obj2.base.counter == 0x10)
            Macro_08100F18(&moley->obj2);
        if (!--moley->obj2.base.counter)
        {
            moley->obj2.unk83 = 5;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 5:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 6;
            moley->obj2.base.flags &= ~2;
            PlaySfx(&moley->obj2.base, 394);
        }
        break;
    case 6:
        if (moley->obj2.base.flags & 2)
            sub_080EBBD0(moley);
        break;
    }
}

static void sub_080EB700(struct Moley *moley)
{
    s8 r1;
    u8 r4 = 3, r5 = 3, r6 = 3, sb = 2, ip = 2, r8 = 3;

    if (moley->obj2.unk80 > gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
    {
        r4 = 4;
        r5 = 4;
        r6 = 5;
        sb = 1;
        ip = 1;
        r8 = 1;
    }
    r1 = Rand16() & 0xF;
    if ((r1 -= r4) < 0)
    {
        moley->obj2.base.sprite.unk8 &= ~0x800;
        moley->obj2.base.x = 0x1F800;
        moley->obj2.base.y = 0x11800;
    }
    else if ((r1 -= r5) < 0)
    {
        moley->obj2.base.sprite.unk8 &= ~0x800;
        moley->obj2.base.x = 0x25000;
        moley->obj2.base.y = 0x10800;
    }
    else if ((r1 -= r6) < 0)
    {
        moley->obj2.base.sprite.unk8 &= ~0x800;
        moley->obj2.base.x = 0x2A000;
        moley->obj2.base.y = 0xF800;
    }
    else if ((r1 -= sb) < 0)
    {
        moley->obj2.base.sprite.unk8 |= 0x800;
        moley->obj2.base.x = 0x1F800;
        moley->obj2.base.y = 0xF800;
    }
    else if ((r1 -= ip) < 0)
    {
        moley->obj2.base.sprite.unk8 |= 0x800;
        moley->obj2.base.x = 0x25000;
        moley->obj2.base.y = 0xE800;
    }
    else if ((r1 -= r8) < 0)
    {
        moley->obj2.base.sprite.unk8 |= 0x800;
        moley->obj2.base.x = 0x2A000;
        moley->obj2.base.y = 0xD800;
    }
}

void sub_080EB848(struct Moley *moley)
{
    if (moley->obj2.unk80 <= 0)
        sub_080EC504(moley);
    else
    {
        ObjectSetFunc(moley, 2, sub_080EB9AC);
        moley->obj2.base.xspeed = 0;
        moley->obj2.base.yspeed = 0;
        moley->obj2.kirby3 = sub_0803D368(&moley->obj2.base);
        if (moley->obj2.base.x > moley->obj2.kirby3->base.base.base.x)
            moley->obj2.base.flags |= 1;
        else
            moley->obj2.base.flags &= ~1;
        moley->obj2.base.flags &= ~0x200;
        moley->obj2.base.flags &= ~0x400;
        moley->obj2.base.flags &= ~2;
        if (Rand16() & 1)
            moley->obj2.base.counter = 0x10;
        else
            moley->obj2.base.counter = 0x30;
        if (moley->obj2.base.sprite.unk8 & 0x800)
            sub_0803E2B0(&moley->obj2.base, -0xA, -0x10, 0xA, -4);
        else
            sub_0803E2B0(&moley->obj2.base, -0xA, 4, 0xA, 0x14);
        PlaySfx(&moley->obj2.base, 394);
    }
}

static void sub_080EB9AC(struct Moley *moley)
{
    switch (moley->obj2.unk83)
    {
    case 2:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.base.flags |= 0x400;
            moley->obj2.base.flags |= 0x200;
            if (!--moley->obj2.base.counter)
            {
                if (RandLessThan3() || moley->obj2.unk85 > 2)
                {
                    moley->obj2.base.flags &= ~0x400;
                    moley->obj2.unk83 = 3;
                    moley->obj2.base.flags &= ~2;
                }
                else
                    sub_080EBBD0(moley);
            }
        }
        break;
    case 3:
        if (moley->obj2.base.unk1 == 7)
        {
            moley->obj2.base.flags &= ~0x200;
            PlaySfx(&moley->obj2.base, 394);
        }
        if (moley->obj2.base.flags & 2)
        {
            if (RandLessThan3() || moley->obj2.unk85 > 2)
            {
                moley->obj2.unk83 = 4;
                moley->obj2.base.flags &= ~2;
            }
            else
            {
                moley->obj2.unk83 = 6;
                moley->obj2.base.flags &= ~2;
                moley->obj2.base.flags |= 0x200;
            }
        }
        break;
    case 4:
        if (moley->obj2.base.unk1 == 5)
        {
            if (moley->obj2.base.sprite.unk8 & 0x800)
                sub_0803E2B0(&moley->obj2.base, -0xC, -0x10, 0xC, 0xA);
            else
                sub_0803E2B0(&moley->obj2.base, -0xC, -0x10, 0xC, 0x14);
        }
        if (moley->obj2.base.flags & 2)
            sub_080EBF34(moley);
        break;
    case 6:
        if (moley->obj2.base.flags & 2)
            sub_080EBBD0(moley);
        break;
    }
}

static void sub_080EBBD0(struct Moley *moley)
{
    struct Moley *moley2 = moley;

    ObjectSetFunc(moley, 0, sub_080ED5FC);
    moley2->obj2.base.xspeed = 0;
    moley2->obj2.base.yspeed = 0;
    if (!(moley2->obj2.base.flags & 0x400))
    {
        if (Rand16() & 1) sub_080ED078(moley);
        if (Rand16() & 1) sub_080ED078(moley);
    }
    moley2->obj2.base.flags |= 0x400;
    moley2->obj2.base.flags |= 0x200;
    moley2->obj2.base.flags &= ~2;
    ++moley2->obj2.unk85;
    switch (Rand16() & 3)
    {
    case 0:
        moley2->obj2.base.counter = 0x5A;
        break;
    case 1:
        moley2->obj2.base.counter = 0x3C;
        break;
    case 2:
        moley2->obj2.base.counter = 0x1E;
        break;
    default:
        moley2->obj2.base.counter = 0xF;
        break;
    }
    if (moley2->obj2.base.sprite.unk8 & 0x800
        && !moley->unkB4)
        sub_080EC650(moley2, 1, moley2->obj2.object->subtype2);
    moley->unkB4 = 0;
    ++moley->unkB6;
}

static void sub_080EBCDC(struct Moley *moley)
{
    ObjectSetFunc(moley, 5, sub_080EBD4C);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
    if (Rand16() & 1)
    {
        moley->obj2.base.counter = 1;
        moley->obj2.unk9E = 0;
    }
    else
    {
        moley->obj2.base.counter = 0x18;
        moley->obj2.unk9E = 1;
    }
}

static void sub_080EBD4C(struct Moley *moley)
{
    switch (moley->obj2.unk83)
    {
    case 5:
        if (moley->obj2.base.unk1 == 5)
        {
            if (moley->obj2.base.sprite.unk8 & 0x800)
                sub_0803E2B0(&moley->obj2.base, -0xA, -0x10, 0xA, -4);
            else
                sub_0803E2B0(&moley->obj2.base, -0xA, 4, 0xA, 0x14);
        }
        if (moley->obj2.base.flags & 2
            && !--moley->obj2.base.counter)
        {
            if (moley->obj2.unk9E)
            {
                moley->obj2.unk83 = 6;
                moley->obj2.base.flags &= ~2;
            }
            else if (Rand16() & 1 || moley->obj2.unk85 > 2)
            {
                moley->obj2.unk83 = 6;
                moley->obj2.base.flags &= ~2;
            }
            else
            {
                moley->obj2.unk83 = 4;
                moley->obj2.base.flags &= ~2;
                moley->obj2.base.flags &= ~0x200;
            }
        }
        break;
    case 6:
        if (moley->obj2.base.unk1 == 1)
        {
            moley->obj2.base.flags |= 0x200;
            PlaySfx(&moley->obj2.base, 394);
        }
        if (moley->obj2.base.flags & 2)
            sub_080EBBD0(moley);
        break;
    case 4:
        if (moley->obj2.base.unk1 == 4)
        {
            if (moley->obj2.base.sprite.unk8 & 0x800)
                sub_0803E2B0(&moley->obj2.base, -0xC, -0x10, 0xC, 0xA);
            else
                sub_0803E2B0(&moley->obj2.base, -0xC, -0x10, 0xC, 0x14);
        }
        if (moley->obj2.base.flags & 2)
            sub_080EBF34(moley);
        break;
    }
}

static void sub_080EBF34(struct Moley *moley)
{
    ObjectSetFunc(moley, 0, sub_080ED67C);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~0x200;
    moley->obj2.base.flags &= ~2;
    if (moley->obj2.subtype || moley->obj2.unk80 < gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
    {
        if (Rand16() & 1)
            moley->obj2.base.counter = 0x18;
        else
            moley->obj2.base.counter = 0x10;
    }
    else
    {
        if (Rand16() & 1)
            moley->obj2.base.counter = 0x24;
        else
            moley->obj2.base.counter = 0x18;
    }
    if (moley->obj2.unk80 < gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
        moley->obj2.base.counter >>= 1;
    ++moley->obj2.unk85;
}

static void sub_080EC040(struct Moley *moley)
{
    u32 var = 5;
    u16 r;
    struct Moley *moley2 = moley;

    if (moley->obj2.subtype || moley->obj2.unk80 < gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
        var = 3;
    if (moley2->unkB6 > var)
    {
        if (moley->obj2.subtype)
        {
            if (moley->obj2.unk80 < gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
                r = Rand16() & 1;
            else
                r = RandLessThan3();
        }
        else
        {
            if (moley->obj2.unk80 < gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
                r = RandLessThan3();
            else
                r = Rand16() & 3;
        }
        if (!r)
        {
            sub_080ED704(moley);
            return;
        }
    }
    ObjectSetFunc(moley, 7, sub_080ED6D0);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
    if (Rand16() & 1 || moley->obj2.subtype)
        moley->obj2.base.counter = 1;
    else
        moley->obj2.base.counter = 2;
}

static void sub_080EC1F4(struct Moley *moley)
{
    struct Moley *moley2 = moley;

    ObjectSetFunc(moley, 8, sub_080EC308);
    moley->obj2.kirby3 = sub_0803D368(&moley->obj2.base);
    if (moley->obj2.base.x > moley->obj2.kirby3->base.base.base.x)
        moley->obj2.base.flags |= 1;
    else
        moley->obj2.base.flags &= ~1;
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
    if (moley->obj2.subtype)
    {
        if (Rand16() & 1)
            moley->obj2.base.counter = 0xC;
        else
            moley->obj2.base.counter = 8;
    }
    else
    {
        if (Rand16() & 1)
            moley->obj2.base.counter = 0x24;
        else
            moley->obj2.base.counter = 0x18;
    }
    if (moley->obj2.unk80 <= gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
        moley->obj2.base.counter >>= 1;
    sub_080EC650(moley, 0, moley->obj2.object->subtype2);
    moley2->unkB4 = 1;
    ++moley->obj2.unk85;
}

static void sub_080EC308(struct Moley *moley)
{
    switch (moley->obj2.unk83)
    {
    case 8:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 9;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 9:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 0;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 0:
        if (!--moley->obj2.base.counter)
        {
            if (RandLessThan3() || moley->obj2.unk85 > 2)
            {
                moley->obj2.unk85 = 0;
                sub_080EBCDC(moley);
            }
            else
                sub_080EC1F4(moley);
        }
        break;
    }
}

static void sub_080EC3B8(struct Moley *moley)
{
    struct Moley *moley2 = moley;

    ObjectSetFunc(moley, 8, sub_080EC44C);
    moley->obj2.kirby3 = sub_0803D368(&moley->obj2.base);
    if (moley->obj2.base.x > moley->obj2.kirby3->base.base.base.x)
        moley->obj2.base.flags |= 1;
    else
        moley->obj2.base.flags &= ~1;
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
    if (moley->obj2.subtype)
        moley->obj2.base.counter = 0x1C;
    else
        moley->obj2.base.counter = 0x2A;
    sub_080EC650(moley, 2, moley->obj2.object->subtype2);
    moley2->unkB4 = 1;
    ++moley2->unkB5;
}

static void sub_080EC44C(struct Moley *moley)
{
    struct Moley *moley2 = moley;

    switch (moley->obj2.unk83)
    {
    case 8:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 9;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 9:
        if (moley->obj2.base.flags & 2)
        {
            u32 var = 8;

            if (moley->obj2.subtype && moley->obj2.unk80 < gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
                var = 0xC;
            if (moley2->unkB5 < var)
                sub_080EC3B8(moley);
            else
            {
                moley->obj2.unk83 = 0;
                moley->obj2.base.flags &= ~2;
            }
        }
        break;
    case 0:
        if (!--moley->obj2.base.counter)
        {
            moley->obj2.unk85 = 0;
            sub_080EBCDC(moley);
        }
        break;
    }
}

static void sub_080EC504(struct Moley *moley)
{
    ObjectSetFunc(moley, -1, sub_080ED77C);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags |= 0x200;
    if (moley->obj2.base.x == 0x2A000 && moley->obj2.base.y == 0xF800
        && (moley->obj2.unk83 == 0 || moley->obj2.unk83 > 6 || moley->obj2.unk83 == 4 || moley->obj2.unk83 == 5))
        sub_080ED87C(moley);
    else if (moley->obj2.base.flags & 0x400)
        sub_080ED7D8(moley);
    else
    {
        moley->obj2.base.flags &= ~0x400;
        moley->obj2.base.flags &= ~2;
        switch (moley->obj2.unk83)
        {
        default:
            moley->obj2.unk83 = 5;
            break;
        case 2:
        case 3:
            moley->obj2.unk83 = 6;
            break;
        case 5:
        case 6:
            break;
        }
    }
}

static void sub_080EC5B4(struct Moley *moley)
{
    if (!moley->obj2.base.counter)
    {
        u8 i;

        for (i = 0; i < gUnk_0203AD44; ++i)
        {
            struct Kirby *kirby = gKirbys + i;

            if (kirby->base.base.base.roomId == moley->obj2.base.roomId
                && kirby->base.base.base.flags & 0x1000000
                && (moley->obj2.object->unk2 != 0 || moley->obj2.object->unk3 != 0x1F))
            {
                ++*sub_08002888(0, moley->obj2.object->unk4, gCurLevelInfo[moley->obj2.base.unk56].unk65E);
                moley->obj2.base.counter = 1;
            }
        }
    }
}

static void sub_080EC650(struct Moley *moley, u8 a2, u8 a3)
{
    u8 type = RandLessThan(7) + OBJ_MOLEY_ROCK;
    s32 x, y;
    struct Object2 *obj2;

    if (moley->obj2.base.flags & 1)
        x = (moley->obj2.base.x >> 8) - 0x14;
    else
        x = (moley->obj2.base.x >> 8) + 0x14;
    if (moley->obj2.base.sprite.unk8 & 0x800)
        y = (moley->obj2.base.y >> 8) + 0x14;
    else
        y = (moley->obj2.base.y >> 8) - 0x14;
    if (a2 == 1)
    {
        x = moley->obj2.base.x >> 8;
        y = moley->obj2.base.y >> 8;
    }
    obj2 = CreateObjTemplateAndObj(moley->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, type, a2, 0, a3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    obj2->base.parent = moley;
    if (moley->obj2.base.flags & 1)
        obj2->base.flags |= 1;
}

void *CreateMoleyItem(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *obj2 = tmp;

    InitObject(obj2, template, a2);
    obj2->base.flags |= 0x40;
    obj2->base.unkC |= 2;
    obj2->unk9E = 0;
    obj2->unk7C = sub_0809F840;
    sub_0803E2B0(&obj2->base, -5, -6, 5, 5);
    sub_0803E308(&obj2->base, -6, -7, 6, 7);
    switch (obj2->type)
    {
    case OBJ_MOLEY_SCREW:
    case OBJ_MOLEY_TIRE:
        sub_0803E2B0(&obj2->base, -4, -4, 4, 4);
        break;
    case OBJ_MOLEY_ROCK:
        sub_0803E2B0(&obj2->base, -6, -6, 6, 6);
        break;
    case OBJ_MOLEY_BIG_ROCK:
        obj2->base.unk5C &= ~7;
        obj2->base.unk5C |= 3;
        // fallthrough
    case OBJ_MOLEY_BOMB:
    case OBJ_MOLEY_BARREL:
    case OBJ_MOLEY_SPIKE_BALL:
        sub_0803E2B0(&obj2->base, -8, -8, 8, 8);
        break;
    }
    ObjectInitSprite(obj2);
    obj2->base.sprite.unk14 = 0x640;
    if (obj2->object->subtype1 == 1)
        sub_080EC8E8(obj2);
    else
        sub_080ED8C4(obj2);
    return obj2;
}

void sub_080EC8E8(struct Object2 *obj2)
{
    u32 r4 = 0;
    struct Moley *moley = obj2->base.parent;
    struct Kirby *kirby = moley->obj2.kirby3;

    ObjectSetFunc(obj2, 0, sub_080ECDE0);
    obj2->base.xspeed = 0;
    obj2->base.yspeed = 0;
    if (obj2->object->subtype1 != 1)
    {
        if (obj2->object->subtype1)
            r4 = Rand16() & 0xFF;
        else
            r4 = abs(kirby->base.base.base.x - moley->obj2.base.x) >> 8;
        if (r4 < 0x1E)
            obj2->base.xspeed = 0x80;
        else if (r4 < 0x3C)
            obj2->base.xspeed = 0xD0;
        else if (r4 < 0x5A)
            obj2->base.xspeed = 0x120;
        else if (r4 < 0x78)
            obj2->base.xspeed = 0x180;
        else if (r4 < 0x96)
            obj2->base.xspeed = 0x1D0;
        else if (r4 < 0xB4)
            obj2->base.xspeed = 0x200;
        else if (r4 < 0xD2)
            obj2->base.xspeed = 0x240;
        else
            obj2->base.xspeed = 0x280;
        obj2->base.xspeed += Rand16() & 0x7F;
        obj2->base.yspeed = 0x1D0;
        obj2->base.yspeed += Rand16() & 0x7F;
        if (moley->obj2.base.y >= 0xF800)
        {
            if (moley->obj2.base.x == 0x1F800)
            {
                obj2->base.yspeed += 0x80;
                obj2->base.xspeed += 0x80;
            }
            else if (moley->obj2.base.x == 0x2A000)
                obj2->base.yspeed -= 0xD0;
        }
        else
            if (moley->obj2.base.x == 0x1F800)
                obj2->base.yspeed += 0xE0;
        if (moley->obj2.base.sprite.unk8 & 0x800)
        {
            obj2->base.yspeed >>= 1;
            obj2->base.xspeed += 0x80;
        }
        if (obj2->base.flags & 1)
            obj2->base.xspeed = -obj2->base.xspeed;
    }
    if (obj2->type == OBJ_MOLEY_SPIKE_BALL)
        obj2->base.yspeed = 0;
    obj2->base.flags &= ~0x200;
    obj2->base.flags &= ~0x40;
    PlaySfx(&obj2->base, 395);
    switch (obj2->type)
    {
    case OBJ_MOLEY_SCREW:
    case OBJ_MOLEY_TIRE:
        obj2->unk78 = sub_080ECCAC;
        break;
    case OBJ_MOLEY_BARREL:
        obj2->base.counter = 0x91;
        obj2->unk9E = 0;
        obj2->unk78 = sub_080ECBAC;
        break;
    case OBJ_MOLEY_BOMB:
        obj2->base.counter = 0x5A;
        obj2->unk9E = 0;
        obj2->unk78 = sub_080ECBAC;
        break;
    case OBJ_MOLEY_ROCK:
    case OBJ_MOLEY_BIG_ROCK:
    case OBJ_MOLEY_SPIKE_BALL:
        break;
    }
}

static void sub_080ECBAC(struct Object2 *obj2)
{
    if (!obj2->unk9E)
        obj2->base.flags |= 4;
    if (obj2->base.unk62 & 4)
    {
        if (obj2->unk9E != 3)
        {
            if (obj2->unk83 == 0)
                obj2->unk83 = 1;
            else
                obj2->unk83 = 0;
            switch (obj2->unk9E)
            {
            case 0:
                obj2->base.yspeed = 0x120;
                break;
            case 1:
                obj2->base.yspeed = 0xC0;
                break;
            case 2:
                obj2->base.yspeed = 0x80;
                break;
            }
            obj2->base.xspeed >>= 1;
            obj2->base.flags |= 0x20;
            ++obj2->unk9E;
        }
        else
            obj2->base.xspeed = obj2->base.yspeed = 0;
    }
    if (!--obj2->base.counter)
    {
        obj2->base.flags |= 0x1000;
        sub_0809DA30(obj2);
    }
    if (obj2->type == OBJ_MOLEY_BOMB)
    {
        if (!(obj2->base.counter & 7))
            sub_08097E9C(&obj2->base, -0xA, -0xA);
    }
    else
    {
        if (!(obj2->base.counter & 7))
            sub_08097E9C(&obj2->base, -obj2->base.sprite.unk20[0].unk4, obj2->base.sprite.unk20[0].unk5);
    }
}

static void sub_080ECCAC(struct Object2 *obj2)
{
    if (!obj2->unk83)
        obj2->base.flags |= 4;
    if (obj2->base.unk62 & 4)
    {
        if (obj2->unk83 == 0)
            obj2->unk83 = 1;
        else
            obj2->unk83 = 0;
        if (obj2->type == OBJ_MOLEY_SCREW)
        {
            switch (Rand16() & 1)
            {
            case 0:
                obj2->base.xspeed = 0x100;
                obj2->base.yspeed = 0x1D0;
                break;
            case 1:
                obj2->base.xspeed = 0x80;
                obj2->base.yspeed = 0x2D0;
                break;
            case 2: // unreachable
                obj2->base.xspeed = 0x100;
                obj2->base.yspeed = 0x280;
                break;
            case 3: // unreachable
                obj2->base.xspeed = 0x260;
                obj2->base.yspeed = 0x140;
                break;
            }
            if (obj2->base.flags & 1)
                obj2->base.xspeed = -obj2->base.xspeed;
            if (++obj2->base.counter > 5)
            {
                obj2->base.flags |= 0x1000;
                sub_0809DA30(obj2);
                return;
            }
        }
        else if (obj2->object->subtype1 == 1)
        {
            if (++obj2->base.counter < 3)
                obj2->base.yspeed = 0x220;
            else
            {
                obj2->base.flags |= 0x1000;
                sub_0809DA30(obj2);
                return;
            }
        }
        else
        {
            if (++obj2->base.counter > 4)
            {
                obj2->base.flags |= 0x1000;
                sub_0809DA30(obj2);
                return;
            }
            else
                obj2->base.yspeed = 0x220;
        }
        obj2->base.flags |= 0x20;
    }
}

static void sub_080ECDE0(struct Object2 *obj2)
{
    obj2->base.flags |= 4;
    if (obj2->type == OBJ_MOLEY_SPIKE_BALL && obj2->base.unk62 & 3)
    {
        obj2->base.flags |= 0x1000;
        sub_0809DA30(obj2);
        return;
    }
    if (obj2->base.unk62 & 4)
    {
        if (obj2->type != OBJ_MOLEY_SPIKE_BALL)
        {
            if (!obj2->base.counter)
            {
                sub_0806FE64(1, &obj2->base);
                if (obj2->unk83 == OBJ_MOLEY_ROCK)
                    obj2->base.yspeed = 0x200;
                else
                    obj2->base.yspeed = 0x120;
                obj2->base.flags |= 0x20;
                obj2->base.xspeed >>= 1;
                obj2->base.counter = 1;
            }
            else
            {
                sub_0806FE64(1, &obj2->base);
                obj2->base.flags |= 0x1000;
                sub_0809DA30(obj2);
            }

        }
        else
        {
            if (obj2->subtype)
                obj2->base.xspeed = 0x200;
            else
                obj2->base.xspeed = 0x100;
            if (obj2->base.flags & 1)
                obj2->base.xspeed = -obj2->base.xspeed;
        }
    }
}

static void sub_080ECEC0(struct Moley *moley)
{
    struct Task *t = TaskCreate(sub_080ECF6C, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = moley->obj2.base.x;
    obj4->y = moley->obj2.base.y;
    obj4->parent = moley;
    obj4->roomId = moley->obj2.base.roomId;
    obj4->y -= 0x1000;
    if (!(moley->obj2.base.flags & 1))
        obj4->flags |= 1;
    obj4->flags |= 0x4000;
    sub_080709F8(obj4, &obj4->sprite, 0x6012000, 0x340, 0, 0x17);
}

static void sub_080ECF6C(void)
{
    struct Object4 *tmp, *obj4;
    struct Moley *moley;

    tmp = TaskGetStructPtr(gCurTask);
    obj4 = tmp;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (((struct Moley *)obj4->parent)->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        moley = obj4->parent;
        if (moley)
        {
            do {
                if (moley->obj2.base.unk0 && moley->obj2.base.flags & 0x1000)
                {
                    obj4->parent = NULL;
                    moley = NULL;
                }
                if (!moley)
                    goto _080ECFF4;
                if (Macro_0810B1F4(&moley->obj2.base) && !(obj4->flags & 0x2000))
                {
                    sub_0803DBC8(obj4);
                    return;
                }
            } while (0); // never required elsewhere
        }
        else
        {
        _080ECFF4:
            KirbySomething(obj4);
        }
        obj4->flags |= 4;
        sub_0806FAC8(obj4);
    }
}

static void sub_080ED078(struct Moley *moley)
{
    struct Task *t = TaskCreate(sub_080ED270, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    u16 r;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = moley->obj2.base.x;
    objBase->y = moley->obj2.base.y;
    objBase->parent = moley;
    objBase->counter = 0;
    objBase->roomId = moley->obj2.base.roomId;
    objBase->unk56 = moley->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x200;
    if (moley->obj2.base.sprite.unk8 & 0x800)
    {
        objBase->y -= 0x800;
        objBase->yspeed = 0;
    }
    else
    {
        objBase->y += 0x1600;
        objBase->yspeed = (Rand16() & 0x1FF) + 0x100;
    }
    objBase->xspeed = (Rand16() & 0x7F) + 0x20;
    r = Rand16() & 0xF;
    if (Rand16() & 1)
    {
        objBase->flags |= 1;
        objBase->x -= r << 8;
        objBase->xspeed = -objBase->xspeed;
    }
    else
        objBase->x += r << 8;
    if (Rand16() & 1)
    {
        sub_080708DC(objBase, &objBase->sprite, 4, 0x342, 0, 0x17);
        objBase->counter = 0;
    }
    else
    {
        sub_080708DC(objBase, &objBase->sprite, 1, 0x342, 1, 0x17);
        objBase->counter = 1;
    }
    objBase->sprite.palId = 0;
    Macro_081050E8(objBase, &objBase->sprite, 0x342, 1);
}

static void sub_080ED270(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite sprite;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (((struct Moley *)objBase->parent)->obj2.base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else 
    {
        if (objBase->counter)
            Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 1, &objBase->sprite);
        else
            Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 4, &objBase->sprite);
        Macro_081050E8(objBase, &objBase->sprite, 0x342, !objBase->sprite.palId);
        if (!sub_0806F780(objBase))
        {
            objBase->flags |= 4;
            objBase->yspeed -= 0x15;
            if (objBase->yspeed < -0x300)
                objBase->yspeed = -0x300;
            if (!(objBase->flags & 0x800))
            {
                objBase->unk48 = objBase->x;
                objBase->unk4C = objBase->y;
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            if (!(objBase->flags & 0x100))
            {
                if (objBase->x <= gCurLevelInfo[objBase->unk56].unk50
                    && objBase->x >= gCurLevelInfo[objBase->unk56].unk48
                    && objBase->y <= gCurLevelInfo[objBase->unk56].unk54
                    && objBase->y >= gCurLevelInfo[objBase->unk56].unk4C)
                    sub_0806FC70(objBase);
            }
            if (objBase->unk62)
            {
                objBase->unk62 = 0;
                objBase->yspeed = 0x100;
                objBase->xspeed >>= 1;
                objBase->flags |= 0x100;
            }
            sub_0806F8BC(objBase);
        }
    }
}

static void sub_080ED520(struct Moley *moley)
{
    ObjectSetFunc(moley, 0, sub_080EB2C0);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags |= 0x40;
}

static void sub_080ED54C(struct Moley *moley)
{
    ObjectSetFunc(moley, 0, sub_080EB39C);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.counter = 0xD2;
    moley->obj2.unk85 = 0;
}

static void sub_080ED578(struct Moley *moley)
{
    ObjectSetFunc(moley, 2, sub_080ED5AC);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
}

static void sub_080ED5AC(struct Moley *moley)
{
    if (moley->obj2.base.flags & 2)
        sub_080ED5C4(moley);
}

static void sub_080ED5C4(struct Moley *moley)
{
    ObjectSetFunc(moley, 3, sub_080EB4B8);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
    moley->obj2.base.counter = 0x20;
}

static void sub_080ED5FC(struct Moley *moley)
{
    if (moley->obj2.base.counter == 8)
    {
        sub_080EB700(moley);
        sub_0806FE64(1, &moley->obj2.base);
        sub_080ED078(moley);
        if (Rand16() & 1) sub_080ED078(moley);
    }
    if (!--moley->obj2.base.counter)
    {
        if (Rand16() & 1) sub_080ED078(moley);
        sub_080EB848(moley);
    }
}

static void sub_080ED67C(struct Moley *moley)
{
    if (!--moley->obj2.base.counter)
    {
        if (Rand16() & 3 || moley->obj2.unk85 > 2)
            sub_080EC040(moley);
        else
            sub_080EBCDC(moley);
    }
}

static void sub_080ED6D0(struct Moley *moley)
{
    moley->obj2.base.flags |= 4;
    if (moley->obj2.base.flags & 2
        && !--moley->obj2.base.counter)
    {
        moley->obj2.unk85 = 0;
        sub_080EC1F4(moley);
    }
}

static void sub_080ED704(struct Moley *moley)
{
    ObjectSetFunc(moley, 7, sub_080ED748);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
    moley->obj2.base.counter = 6;
    moley->unkB6 = 0;
    moley->unkB5 = 0;
}

static void sub_080ED748(struct Moley *moley)
{
    moley->obj2.base.flags |= 4;
    if (moley->obj2.base.flags & 2
        && !--moley->obj2.base.counter)
    {
        moley->obj2.unk85 = 0;
        sub_080EC3B8(moley);
    }
}

static void sub_080ED77C(struct Moley *moley)
{
    sub_080EC5B4(moley);
    switch (moley->obj2.unk83)
    {
    case 5:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 6;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 6:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.base.flags |= 0x400;
            if (++moley->obj2.base.counter > 0x3C)
                sub_080ED7D8(moley);
        }
        break;
    }
}

static void sub_080ED7D8(struct Moley *moley)
{
    ObjectSetFunc(moley, 3, sub_080ED828);
    moley->obj2.base.x = 0x2A000;
    moley->obj2.base.y = 0xF800;
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.sprite.unk8 &= ~0x800;
    moley->obj2.base.flags |= 1;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
}

static void sub_080ED828(struct Moley *moley)
{
    sub_080EC5B4(moley);
    switch (moley->obj2.unk83)
    {
    case 3:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 4;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 4:
        if (moley->obj2.base.flags & 2)
        {
            if (++moley->obj2.base.counter > 0xC)
                sub_080ED87C(moley);
        }
        break;
    }
}

static void sub_080ED87C(struct Moley *moley)
{
    ObjectSetFunc(moley, 0xB, sub_080ED8B8);
    moley->obj2.base.xspeed = 0;
    moley->obj2.base.yspeed = 0;
    moley->obj2.base.flags &= ~0x400;
    moley->obj2.base.flags &= ~2;
    sub_080ECEC0(moley);
    moley->obj2.base.counter = 0;
}

static void sub_080ED8B8(struct Moley *moley)
{
    sub_080EC5B4(moley);
}

static void sub_080ED8C4(struct Object2 *obj2)
{
    ObjectSetFunc(obj2, 1, sub_080ED8F0);
    obj2->base.xspeed = 0;
    obj2->base.yspeed = 0;
    obj2->base.flags |= 0x200;
}

static void sub_080ED8F0(struct Object2 *obj2)
{
    struct Moley *moley = obj2->base.parent;

    if (obj2->base.unk1 == 3)
    {
        if (obj2->base.flags & 1)
            obj2->base.x += 0xA00;
        else
            obj2->base.x -= 0xA00;
        if (moley->obj2.base.sprite.unk8 & 0x800)
            obj2->base.y += 0x400;
        else
            obj2->base.y -= 0x400;
    }
    if (obj2->base.flags & 2)
        sub_080EC8E8(obj2);
}
