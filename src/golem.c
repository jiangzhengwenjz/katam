#include "golem.h"
#include "king_golem.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"
#include "constants/kirby.h"

static void sub_080C61B0(struct Object2 *);
static void sub_080C645C(struct Object2 *);
static void sub_080C64A4(struct Object2 *);
static void sub_080C64EC(struct Object2 *);
static void sub_080C6528(struct Object2 *);
static void sub_080C6588(struct Object2 *);
static void sub_080C65B8(struct Object2 *);
static void sub_080C65F8(struct Object2 *);
static void sub_080C6634(struct Object2 *);
static void sub_080C6674(struct Object2 *);
static void sub_080C66B4(struct Object2 *);
static void sub_080C66DC(struct Object2 *);
static void sub_080C6734(struct Task *);
static void sub_080C6770(struct Object2 *);

const struct AnimInfo gUnk_08355674[] = {
    { 0x2E9,   5, 0 },
    { 0x2E9,   0, 0 },
    { 0x2E9,   1, 0 },
    { 0x2E9,   2, 0 },
    { 0x2E9,   4, 0 },
    { 0x2E9,   6, 0 },
    { 0x2E9,   7, 0 },
    { 0x2E9,   8, 0 },
    { 0x2E9,   9, 0 },
    { 0x2E9, 0xA, 0 },
    { 0x2E9, 0xB, 0 },
    { 0x2E9, 0xC, 0 },
    { 0x2E9, 0xC, 0 },
    { 0x2E9, 0xD, 0 },
    { 0x2E9, 0xE, 0 },
};

static void (*const gUnk_083556B0[])(struct Object2 *) = {
    sub_080C645C,
    sub_080C645C,
    sub_080C6404,
    sub_080C6674,
    sub_080C65B8,
    sub_080C65B8,
    sub_080C64A4,
    sub_080C64A4,
};

void *CreateGolem(struct Object *template, u8 a2)
{
    struct Object2 *tmp, *golem;
    struct Task *t;

    if (template->subtype1 & 0x80)
        t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, sub_080C6734);
    else
        t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    tmp = TaskGetStructPtr(t);
    golem = tmp;
    InitObject(golem, template, a2);
    golem->base.flags |= 0x200000;
    sub_0803E2B0(&golem->base, -0xC, -0xC, 0xC, 0xC);
    sub_0803E308(&golem->base, -0xA, 0xF0, 0xA, 0xE);
    golem->base.flags |= 0x208;
    if (!(template->subtype1 & 0x80))
        golem->base.flags |= 0x800000;
    golem->base.unk5C &= ~7;
    golem->base.unk5C |= 3;
    ObjectInitSprite(golem);
    golem->unk85 = template->subtype1 & 0x7F;
    if (template->subtype1 & 0x80)
    {
        sub_080C66DC(golem);
        golem->unk9E = 0;
        golem->unk7C = sub_0809F840;
    }
    else
        sub_080C66B4(golem);
    return golem;
}

static u8 sub_080C5500(struct Object2 *golem)
{
    u8 ret = 0;
    u8 r = Rand16() & 0xF;

    if (golem->unk85)
    {
        switch (r)
        {
        case 0 ... 5:
            if (golem->base.flags & 1)
                ret = 0x20;
            else
                ret = 0x10;
            break;
        case 6:
        case 7:
            ret = 1;
            break;
        case 8:
        case 9:
            ret = 2;
            break;
        case 10:
        case 11:
            ret = 0x82;
            break;
        }
    }
    else
    {
        switch (golem->type)
        {
        case OBJ_GOLEM_1:
            switch (r)
            {
            case 0 ... 5:
                if (golem->base.flags & 1)
                    ret = 0x20;
                else
                    ret = 0x10;
                break;
            case 6 ... 11:
                ret = 1;
                break;
            }
            break;
        case OBJ_GOLEM_2:
            switch (r)
            {
            case 0 ... 5:
                if (golem->base.flags & 1)
                    ret = 0x20;
                else
                    ret = 0x10;
                break;
            case 6 ... 11:
                ret = 0x82;
                break;
            }
            break;
        case OBJ_GOLEM_3:
            switch (r)
            {
            case 0 ... 5:
                if (golem->base.flags & 1)
                    ret = 0x20;
                else
                    ret = 0x10;
                break;
            case 6 ... 11:
                ret = 2;
                break;
            }
            break;
        }
    }
    return ret;
}

static void sub_080C55D4(struct Object2 *golem)
{
    u8 var = 0;
    u8 oldUnk9D;
    struct Object2 *parent = golem->base.parent;

    if (parent
        && parent->base.unk0 == 1
        && parent->type == OBJ_KING_GOLEM
        && parent->unk80 <= 0)
    {
        golem->base.flags |= 0x1000;
        sub_0808AE30(&golem->base, 0, 0x292, 0);
    }
    if (!Macro_0810B1F4(&golem->base))
    {
        switch (golem->unk83)
        {
        case 1:
            if (golem->unk9E > 0x28)
            {
                if (golem->base.x > golem->kirby3->base.base.base.x)
                    golem->base.flags |= 1;
                else
                    golem->base.flags &= ~1;
                var = sub_080C5500(golem);
            }
            break;
        case 2:
            if (golem->base.flags & 1)
                var |= 0x20;
            else
                var |= 0x10;
            if (golem->base.unk62 & 1)
            {
                if (golem->base.x > golem->kirby3->base.base.base.x)
                    golem->base.flags |= 1;
                else
                    golem->base.flags &= ~1;
                var = sub_080C5500(golem);
            }
            if (golem->unk9E > 0x64)
            {
                if (golem->base.x > golem->kirby3->base.base.base.x)
                    golem->base.flags |= 1;
                else
                    golem->base.flags &= ~1;
                var = sub_080C5500(golem);
            }
            break;
        case 6:
        case 7:
            if (golem->unk9E <= 0xF)
                var = 1;
            if (golem->base.flags & 1)
            {
                if (golem->base.x > golem->kirby3->base.base.base.x + 0xF00)
                    var |= 0x20;
            }
            else
            {
                if (golem->base.x < golem->kirby3->base.base.base.x - 0xF00)
                    var |= 0x10;
            }
            break;
        case 11:
            if (golem->unk9E <= 0x13)
                var = 2;
            break;
        case 12:
            var = 2;
            if ((golem->base.counter & 0xF) == 0xF)
            {
                if (golem->base.x > golem->kirby3->base.base.base.x)
                    var = 0x22;
                else
                    var = 0x12;
            }
        case 13:
        case 14:
            break;
        }
        oldUnk9D = golem->unk9D;
        golem->unk9D = var;
        golem->unk9C = golem->unk9D & ~oldUnk9D;
        ++golem->unk9E;
    }
}

static void sub_080C57D8(struct Object2 *golem)
{
    switch (golem->unk83)
    {
    case 0:
        if (golem->base.flags & 8)
        {
            golem->kirby3 = sub_0803D368(&golem->base);
            if (golem->kirby3->base.base.base.unkC & 0x8000
                || golem->base.roomId != golem->kirby3->base.base.base.roomId)
                break;
            if (golem->base.x > golem->kirby3->base.base.base.x)
                golem->base.flags |= 1;
            else
                golem->base.flags &= ~1;
            if (golem->object->unk1A
                || golem->object->unk1C
                || golem->object->unk1E
                || golem->object->unk20)
            {
                if (Macro_08039430_1(&golem->kirby3->base.base.base, golem))
                    golem->base.flags &= ~8;
            }
            else
            {
                if (sub_08039430(&golem->kirby3->base.base.base, golem->base.x, golem->base.y, -0x28, -0x28, 0x50, 0x3C))
                    golem->base.flags &= ~8;
            }
        }
        if (golem->base.flags & 2)
        {
            if (golem->object->unk22 & 4)
            {
                golem->unk83 = 5;
                golem->base.counter = 0;
            }
            else
            {
                golem->base.flags &= ~0x200;
                sub_080C6404(golem);
            }
        }
        else if (!golem->base.counter && !(golem->base.flags & 8))
        {
            if (golem->base.x > golem->kirby3->base.base.base.x)
                golem->base.flags |= 1;
            else
                golem->base.flags &= ~1;
            golem->base.counter = 1;
        }
        break;
    case 5:
        if (++golem->base.counter > 4)
        {
            golem->base.counter = 0;
            golem->base.xspeed = -0x100;
            golem->base.yspeed = 0x1A0;
            if (golem->base.flags & 1)
                golem->base.xspeed = -golem->base.xspeed;
            golem->base.flags |= 0x20;
            golem->unk83 = 6;
        }
        break;
    case 6 ... 8:
        if (golem->unk83 == 7)
        {
            if (golem->base.flags & 2)
                golem->unk83 = 8;
        }
        else if (golem->unk83 == 6 && golem->base.yspeed < 0x1D0)
        {
            golem->unk83 = 7;
            golem->base.flags &= ~2;
        }
        if (golem->base.unk62 & 4)
        {
            golem->base.xspeed = 0;
            golem->base.yspeed = 0;
            golem->unk83 = 9;
            golem->base.flags &= ~2;
            sub_0806FE64(2, &golem->base);
            sub_08089864(&golem->base, -0x10, 0xC, 1);
            sub_08089864(&golem->base, -0x10, 0xC, 0);
        }
        break;
    case 9:
        if (golem->base.flags & 2)
        {
            golem->base.counter = 0;
            golem->base.flags &= ~0x200;
            sub_080C6404(golem);
        }
        break;
    }
}

static void sub_080C5A3C(struct Object2 *golem)
{
    golem->base.flags |= 4;
    if (golem->base.xspeed < 0)
    {
        golem->base.xspeed += 4;
        if (golem->base.xspeed > 0)
            golem->base.xspeed = 0;
    }
    else
    {
        golem->base.xspeed -= 4;
        if (golem->base.xspeed < 0)
            golem->base.xspeed = 0;
    }
    if (++golem->base.counter > 0x14)
        sub_080C645C(golem);
    if (golem->base.counter == 0xA)
    {
        golem->base.flags &= ~0x200;
        golem->base.flags &= ~0x100;
    }
    if (golem->base.counter == 0x10)
        golem->base.flags &= ~0x40;
}

static void sub_080C5AB4(struct Object2 *golem)
{
    if (golem->base.xspeed < 0)
    {
        golem->base.xspeed += 0x10;
        if (golem->base.xspeed > 0)
            golem->base.xspeed = 0;
    }
    else
    {
        golem->base.xspeed -= 0x10;
        if (golem->base.xspeed < 0)
            golem->base.xspeed = 0;
    }
    if (!(golem->base.unk62 & 4))
        sub_080C65F8(golem);
    else if (golem->unk9C & 1)
        sub_080C6634(golem);
    else if (golem->unk9C & 2)
    {
        if (golem->unk9D & 0x80)
            sub_080C64A4(golem);
        else
            sub_080C6674(golem);
    }
    else if (golem->unk9D & 0x30)
        sub_080C645C(golem);
}

static void sub_080C5B50(struct Object2 *golem)
{
    golem->base.flags |= 4;
    if (golem->unk9C & 1)
        sub_080C6634(golem);
    else if (golem->unk9C & 2)
    {
        if (golem->unk9D & 0x80)
            sub_080C64A4(golem);
        else
            sub_080C6674(golem);
    }
    else if (golem->unk9D & 0x30)
    {
        if (golem->unk9D & 0x20)
            golem->base.flags |= 1;
        else if (golem->unk9D & 0x10)
            golem->base.flags &= ~1;
        if (golem->base.flags & 1)
        {
            golem->base.xspeed -= 0x30;
            if (golem->base.xspeed < -0xE0)
                golem->base.xspeed = -0xE0;
            else if (golem->base.xspeed > 0xE0)
                golem->base.xspeed = 0xE0;
        }
        else
        {
            golem->base.xspeed += 0x30;
            if (golem->base.xspeed > 0xE0)
                golem->base.xspeed = 0xE0;
            else if (golem->base.xspeed < -0xE0)
                golem->base.xspeed = -0xE0;
        }
    }
    else
    {
        if (golem->base.xspeed < 0)
        {
            golem->base.xspeed += 0x10;
            if (golem->base.xspeed > 0)
                golem->base.xspeed = 0;
        }
        else
        {
            golem->base.xspeed -= 0x10;
            if (golem->base.xspeed < 0)
                golem->base.xspeed = 0;
        }
        if (!golem->base.xspeed)
        {
            golem->base.counter = 0;
            golem->unk83 = 1;
            golem->kirby3 = sub_0803D368(&golem->base);
            golem->base.sprite.unk20[0].unk0 = -1;
            golem->base.flags &= ~0x100;
            golem->base.flags &= ~0x40;
            golem->unk78 = sub_080C5AB4;
            golem->unk9E = 0;
            golem->unk7C = sub_080C55D4;
            golem->kirbyAbility = KIRBY_ABILITY_STONE;
            return;
        }
    }
    if (!(golem->base.unk62 & 4))
        sub_080C65F8(golem);
}

static void sub_080C5CB8(struct Object2 *golem)
{
    golem->base.flags |= 4;
    if (golem->unk9D & 0x20)
        golem->base.flags |= 1;
    else if (golem->unk9D & 0x10)
        golem->base.flags &= ~1;
    if (golem->base.counter > 0xF && !(golem->unk9D & 2))
        golem->base.counter = 0xC8;
    if (golem->base.counter >= 0xC8)
    {
        if (golem->base.xspeed < 0)
        {
            golem->base.xspeed += 8;
            if (golem->base.xspeed > 0)
                golem->base.xspeed = 0;
        }
        else
        {
            golem->base.xspeed -= 8;
            if (golem->base.xspeed < 0)
                golem->base.xspeed = 0;
        }
    }
    else
    {
        if (golem->base.flags & 1)
        {
            golem->base.xspeed -= 0xD;
            if (golem->base.xspeed < -0x220)
                golem->base.xspeed = -0x220;
            else if (golem->base.xspeed > 0x220)
                golem->base.xspeed = 0x220;
        }
        else
        {
            golem->base.xspeed += 0xD;
            if (golem->base.xspeed > 0x220)
                golem->base.xspeed = 0x220;
            else if (golem->base.xspeed < -0x220)
                golem->base.xspeed = -0x220;
        }
    }
    ++golem->base.counter;
    if (golem->base.unk62 & 3)
    {
        PlaySfx(&golem->base, SE_08D587C0);
        sub_0806FE64(2, &golem->base);
        sub_080C6588(golem);
    }
    else if (golem->base.counter >= 0xC8
        && abs(golem->base.xspeed) < 0x180)
        sub_080C6588(golem);
}

static void sub_080C5E64(struct Object2 *golem)
{
    if (golem->base.flags & 2)
    {
        golem->base.counter = 0;
        golem->unk83 = 1;
        golem->kirby3 = sub_0803D368(&golem->base);
        golem->base.sprite.unk20[0].unk0 = -1;
        golem->base.flags &= ~0x100;
        golem->base.flags &= ~0x40;
        golem->unk78 = sub_080C5AB4;
        golem->unk9E = 0;
        golem->unk7C = sub_080C55D4;
        golem->kirbyAbility = KIRBY_ABILITY_STONE;
    }
    else
    {
        if (golem->base.counter == 0xC)
        {
            golem->base.xspeed = -0x80;
            if (golem->base.flags & 1)
                golem->base.xspeed = -golem->base.xspeed;
        }
        if (golem->base.xspeed < 0)
        {
            golem->base.xspeed += 0x10;
            if (golem->base.xspeed > 0)
                golem->base.xspeed = 0;
        }
        else
        {
            golem->base.xspeed -= 0x10;
            if (golem->base.xspeed < 0)
                golem->base.xspeed = 0;
        }
        ++golem->base.counter;
    }
}

static void sub_080C5F20(struct Object2 *golem)
{
    if (golem->base.flags & 2)
    {
        golem->base.sprite.unk20[0].unk0 = -1;
        golem->base.counter = 0;
        golem->unk83 = 1;
        golem->kirby3 = sub_0803D368(&golem->base);
        golem->base.sprite.unk20[0].unk0 = -1;
        golem->base.flags &= ~0x100;
        golem->base.flags &= ~0x40;
        golem->unk78 = sub_080C5AB4;
        golem->unk9E = 0;
        golem->unk7C = sub_080C55D4;
        golem->kirbyAbility = KIRBY_ABILITY_STONE;
    }
    else
    {
        if (golem->base.unk1 == 0x14)
            PlaySfx(&golem->base, SE_08D587E8);
        if (golem->base.unk1 >= 0x14 && golem->base.unk1 <= 0x1D)
        {
            golem->base.xspeed = 0x180;
            if (golem->base.flags & 1)
                golem->base.xspeed = -golem->base.xspeed;
        }
        else
        {
            if (golem->base.xspeed < 0)
            {
                golem->base.xspeed += 0x10;
                if (golem->base.xspeed > 0)
                    golem->base.xspeed = 0;
            }
            else
            {
                golem->base.xspeed -= 0x10;
                if (golem->base.xspeed < 0)
                    golem->base.xspeed = 0;
            }
        }
        ++golem->base.counter;
    }
}

static void sub_080C6068(struct Object2 *golem)
{
    if (golem->base.xspeed < 0)
    {
        golem->base.xspeed += 0x10;
        if (golem->base.xspeed > 0)
            golem->base.xspeed = 0;
    }
    else
    {
        golem->base.xspeed -= 0x10;
        if (golem->base.xspeed < 0)
            golem->base.xspeed = 0;
    }
    if (golem->base.counter > 4)
        sub_080C65B8(golem);
    else
    {
        ++golem->base.counter;
        if (!(golem->base.unk62 & 4))
            sub_080C65F8(golem);
    }
}

static void sub_080C60C8(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->base.xspeed = 0;
    golem->unk83 = 9;
    sub_0806FE64(2, &golem->base);
    sub_08089864(&golem->base, -0x10, 0xC, 1);
    sub_08089864(&golem->base, -0x10, 0xC, 0);
    golem->unk78 = sub_080C61B0;
    golem->unk9E = 0;
    golem->unk7C = sub_080C6770;
    golem->kirbyAbility = KIRBY_ABILITY_STONE;
    PlaySfx(&golem->base, SE_08D586E4);
}

static void sub_080C61B0(struct Object2 *golem)
{
    if (golem->base.xspeed < 0)
    {
        golem->base.xspeed += 0x10;
        if (golem->base.xspeed > 0)
            golem->base.xspeed = 0;
    }
    else
    {
        golem->base.xspeed -= 0x10;
        if (golem->base.xspeed < 0)
            golem->base.xspeed = 0;
    }
    if (golem->base.flags & 2)
    {
        golem->base.counter = 0;
        golem->unk83 = 1;
        golem->kirby3 = sub_0803D368(&golem->base);
        golem->base.sprite.unk20[0].unk0 = -1;
        golem->base.flags &= ~0x100;
        golem->base.flags &= ~0x40;
        golem->unk78 = sub_080C5AB4;
        golem->unk9E = 0;
        golem->unk7C = sub_080C55D4;
        golem->kirbyAbility = KIRBY_ABILITY_STONE;
    }
    ++golem->base.counter;
}

static void sub_080C6244(struct Object2 *golem)
{
    if (golem->unk83 == 7 && golem->base.flags & 2)
        sub_080C65F8(golem);
    else
    {
        if (golem->base.yspeed < 0x1D0)
            golem->unk83 = 7;
        if (golem->base.yspeed >= 0x1D0)
        {
            if (!(golem->unk9D & 1))
            {
                golem->unk83 = 7;
                golem->base.yspeed = 0x1D0;
            }
        }
        if (golem->unk9D & 0x30)
        {
            if (golem->unk9D & 0x20)
                golem->base.flags |= 1;
            else if (golem->unk9D & 0x10)
                golem->base.flags &= ~1;
            if (golem->base.flags & 1)
            {
                golem->base.xspeed -= 0x80;
                if (golem->base.xspeed < -0xE0)
                    golem->base.xspeed = -0xE0;
                else if (golem->base.xspeed > 0xE0)
                    golem->base.xspeed = 0xE0;
            }
            else
            {
                golem->base.xspeed += 0x80;
                if (golem->base.xspeed > 0xE0)
                    golem->base.xspeed = 0xE0;
                else if (golem->base.xspeed < -0xE0)
                    golem->base.xspeed = -0xE0;
            }
        }
        else
        {
            if (golem->base.xspeed < 0)
            {
                golem->base.xspeed += 8;
                if (golem->base.xspeed > 0)
                    golem->base.xspeed = 0;
            }
            else
            {
                golem->base.xspeed -= 8;
                if (golem->base.xspeed < 0)
                    golem->base.xspeed = 0;
            }
        }
        ++golem->base.counter;
        if (golem->base.unk62 & 4)
        {
            golem->base.flags &= ~0x20;
            sub_080C60C8(golem);
        }
    }
}

static void sub_080C6380(struct Object2 *golem)
{
    if (golem->base.xspeed < 0)
    {
        golem->base.xspeed += 8;
        if (golem->base.xspeed > 0)
            golem->base.xspeed = 0;
    }
    else
    {
        golem->base.xspeed -= 8;
        if (golem->base.xspeed < 0)
            golem->base.xspeed = 0;
    }
    if (golem->base.unk62 & 1)
        golem->base.xspeed = 0;
    if (golem->base.unk62 & 4)
    {
        golem->base.flags &= ~0x20;
        sub_080C60C8(golem);
    }
    if (golem->base.unk62 & 8)
    {
        golem->base.xspeed = 0;
        golem->base.yspeed = 0;
    }
    ++golem->base.counter;
}

void sub_080C6404(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 1;
    golem->kirby3 = sub_0803D368(&golem->base);
    golem->base.sprite.unk20[0].unk0 = -1;
    golem->base.flags &= ~0x100;
    golem->base.flags &= ~0x40;
    golem->unk78 = sub_080C5AB4;
    golem->unk9E = 0;
    golem->unk7C = sub_080C55D4;
    golem->kirbyAbility = KIRBY_ABILITY_STONE;
}

static void sub_080C645C(struct Object2 *golem)
{
    ObjectSetFunc(golem, 2, sub_080C5B50);
    golem->base.counter = 0;
    golem->unk83 = 2;
    golem->kirby3 = sub_0803D368(&golem->base);
    golem->unk78 = sub_080C5B50;
    golem->unk9E = 0;
    golem->unk7C = sub_080C55D4;
    golem->kirbyAbility = KIRBY_ABILITY_STONE;
}

static void sub_080C64A4(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 0xA;
    golem->base.xspeed = 0;
    golem->kirby3 = sub_0803D368(&golem->base);
    golem->unk78 = sub_080C64EC;
    golem->unk9E = 0;
    golem->unk7C = sub_080C6770;
    golem->kirbyAbility = KIRBY_ABILITY_WHEEL;
}

static void sub_080C64EC(struct Object2 *golem)
{
    if (golem->base.flags & 2)
    {
        golem->base.xspeed = 0x1D0;
        if (golem->base.flags & 1)
            golem->base.xspeed = -golem->base.xspeed;
        sub_080C6528(golem);
    }
    else
        ++golem->base.counter;
}

static void sub_080C6528(struct Object2 *golem)
{
    golem->base.counter = 0;
    if (Rand16() & 1)
        golem->unk83 = 0xB;
    else
        golem->unk83 = 0xC;
    golem->unk78 = sub_080C5CB8;
    golem->unk9E = 0;
    golem->unk7C = sub_080C55D4;
    golem->kirbyAbility = KIRBY_ABILITY_WHEEL;
}

static void sub_080C6588(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 0xD;
    golem->unk78 = sub_080C5E64;
    golem->unk9E = 0;
    golem->unk7C = sub_080C6770;
    golem->kirbyAbility = KIRBY_ABILITY_WHEEL;
}

static void sub_080C65B8(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->base.yspeed = 0x3C0;
    golem->unk83 = 6;
    golem->base.flags |= 0x20;
    golem->unk78 = sub_080C6244;
    golem->unk9E = 0;
    golem->unk7C = sub_080C55D4;
    golem->kirbyAbility = KIRBY_ABILITY_STONE;
}

static void sub_080C65F8(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 8;
    golem->base.flags |= 0x20;
    golem->unk78 = sub_080C6380;
    golem->unk9E = 0;
    golem->unk7C = sub_080C55D4;
    golem->kirbyAbility = KIRBY_ABILITY_STONE;
}

static void sub_080C6634(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 5;
    golem->kirby3 = sub_0803D368(&golem->base);
    golem->unk78 = sub_080C6068;
    golem->unk9E = 0;
    golem->unk7C = sub_080C6770;
    golem->kirbyAbility = KIRBY_ABILITY_STONE;
}

static void sub_080C6674(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 0xE;
    golem->kirby3 = sub_0803D368(&golem->base);
    golem->unk78 = sub_080C5F20;
    golem->unk9E = 0;
    golem->unk7C = sub_080C6770;
    golem->kirbyAbility = KIRBY_ABILITY_FIGHTER;
}

static void sub_080C66B4(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 0;
    golem->unk78 = sub_080C57D8;
    golem->unk9E = 0;
    golem->unk7C = sub_080C55D4;
}

static void sub_080C66DC(struct Object2 *golem)
{
    golem->base.counter = 0;
    golem->unk83 = 0xB;
    golem->base.xspeed = -0x240;
    golem->base.flags |= 1;
    golem->base.flags |= 0x200;
    golem->base.flags |= 0x100;
    golem->base.flags |= 0x40;
    golem->base.flags &= ~8;
    golem->unk78 = sub_080C5A3C;
    golem->unk9E = 0;
    golem->unk7C = sub_080C6770;
    golem->kirbyAbility = KIRBY_ABILITY_STONE;
}

static void sub_080C6734(struct Task *t)
{
    struct Object2 *golem = TaskGetStructPtr(t);
    struct KingGolem *kg = golem->base.parent;

    if (kg)
        kg->enemy = NULL;
    ObjectDestroy(t);
}

static void sub_080C6770(struct Object2 *golem)
{
    struct Object2 *parent = golem->base.parent;

    if (parent
        && parent->base.unk0 == 1
        && parent->type == OBJ_KING_GOLEM
        && parent->unk80 <= 0)
    {
        golem->base.flags |= 0x1000;
        sub_0808AE30(&golem->base, 0, 0x292, 0);
    }
}
