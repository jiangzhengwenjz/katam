#include "crazy_hand.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "inhalable_star.h"
#include "constants/kirby.h"

static void sub_080DF5A4(struct CrazyHand *);
static void sub_080DF954(struct CrazyHand *);
static void sub_080DF9D0(struct CrazyHand *);
static void sub_080DFA24(struct CrazyHand *);
static void sub_080DFC3C(struct CrazyHand *);
static void sub_080E003C(struct CrazyHand *);
static void sub_080E0098(struct CrazyHand *);
static void sub_080E0628(struct CrazyHand *);
static void sub_080E08B0(struct CrazyHand *);
static void sub_080E0920(struct CrazyHand *);
static void sub_080E12C8(struct CrazyHand *);
static void sub_080E133C(struct CrazyHand *);
static void sub_080E1800(struct CrazyHand *);
static void sub_080E1868(struct CrazyHand *);
static void sub_080E25B4(struct CrazyHand *);
static void sub_080E261C(struct CrazyHand *);
static void sub_080E2BE8(struct CrazyHand *);
static void sub_080E2C78(struct CrazyHand *);
static void sub_080E2D84(struct CrazyHand *);
static void sub_080E2E94(struct CrazyHand *);
static void sub_080E31D4(struct CrazyHand *, u8);
static void sub_080E33E4(struct CrazyHand *);
static void sub_080E34C4(void);
static void sub_080E36C4(struct CrazyHand *);
static void sub_080E3734(struct CrazyHand *);
static void sub_080E3758(struct CrazyHand *);
static void sub_080E37C4(struct CrazyHand *);
static void sub_080E37F0(struct CrazyHand *);
static void sub_080E3844(struct CrazyHand *);
static void sub_080E388C(struct CrazyHand *);
static void sub_080E38E0(struct CrazyHand *);
static void sub_080E3918(struct CrazyHand *);
static void sub_080E396C(struct CrazyHand *);
static void sub_080E39C4(struct CrazyHand *);
static void sub_080E39F8(struct CrazyHand *);
static void sub_080E3A4C(struct CrazyHand *);
static void sub_080E3A94(struct CrazyHand *);
static void sub_080E3AE0(struct CrazyHand *);
static void sub_080E3B2C(struct CrazyHand *);
static void sub_080E3B9C(struct CrazyHand *);
static void sub_080E3BD0(struct CrazyHand *);
static void sub_080E3C0C(struct CrazyHand *);
static void sub_080E3C6C(struct CrazyHand *);
static void sub_080E3CC4(struct CrazyHand *);
static void sub_080E3D10(struct CrazyHand *);
static void sub_080E3D34(struct CrazyHand *);
static void sub_080E3D90(struct CrazyHand *);
static void sub_080E3DE4(struct Object2 *);
static void sub_080E3DF8(struct Object2 *);
static void sub_080E3E24(struct Object2 *);
static void sub_080E3E30(struct Task *);

const struct Unk_02021590 gUnk_08356910[] = {
    { 0x335, 0,    0 },
    { 0x335, 1,    0 },
    { 0x335, 2,    0 },
    { 0x335, 3,    0 },
    { 0x335, 4,    0 },
    { 0x335, 5,    0 },
    { 0x335, 6,    0 },
    { 0x335, 7,    0 },
    { 0x335, 8,    0 },
    { 0x335, 9,    0 },
    { 0x335, 0xA,  0 },
    { 0x335, 0xB,  0 },
    { 0x335, 0xC,  0 },
    { 0x335, 0xD,  0 },
    { 0x335, 0xE,  0 },
    { 0x335, 0xF,  0 },
    { 0x335, 0x10, 0 },
    { 0x335, 0x11, 0 },
    { 0x335, 0x13, 0 },
    { 0x335, 0x14, 0 },
    { 0x335, 0x15, 0 },
    { 0x335, 0x16, 0 },
    { 0x335, 0x12, 0 },
    { 0x335, 0x12, 0 },
    { 0x335, 0x12, 0 },
};

const struct Unk_02021590 gUnk_08356974[] = {
    { 0x335, 0x17, 0 },
    { 0x335, 0x18, 0 },
    { 0x335, 0x18, 0 },
};

// master hand
const struct Unk_02021590 gUnk_08356980[] = {
    { 0x335, 0x19, 2 },
    { 0x335, 0,    2 },
    { 0x335, 0x19, 2 },
    { 0x335, 0,    2 },
    { 0x335, 0x19, 2 },
    { 0x335, 0,    2 },
    { 0x335, 0x19, 2 },
    { 0x335, 0,    2 },
    { 0x335, 0x19, 2 },
    { 0x335, 0,    2 },
    { 0x335, 0x19, 2 },
    { 0x335, 0,    2 },
    { 0x335, 0x19, 2 },
    { 0x335, 0,    2 },
    { 0x335, 0,    -1 },
};

static const struct Kirby_110 gUnk_083569BC[] = {
    { 0,     0,    1, 3,    0xA,  0x280 },
    { 6,     6,    1, 2,    0x58, 0x80  },
    { 6,     6,    1, 0x50, 0x58, 0x40  },
    { -0x32, 0x1C, 0, 1,    0,    2     },
};

static const struct Kirby_110 gUnk_083569DC[] = {
    { 0xA, 0, 1, 0xFF, 0x4A, 0x40  },
    { 0,   0, 0, 1,    0,    0x100 },
};

static const struct Kirby_110 gUnk_083569EC[] = {
    { 0xA, 0,     1, 5, 0x4A, 0x40 },
    { 0xE, -2,    1, 4, 0x4A, 0    },
    { 0,   -0x10, 0, 1, 0,    2    },
};

static const s8 gUnk_08356A04[] = { 6, 2, -5, 2, 4, -2, -3, -2, 2, 2, -2, 2, 1, -3, -1, -3 };

static const s8 gUnk_08356A14[] = { -10, -4, -8, -3, -6, -2, -4, -1, -2, 0, 0, 0 }; // TODO: padding?

void *CreateCrazyHand(struct Object *template, u8 a2)
{
    u16 priority;
    struct Task *t;
    struct CrazyHand *tmp, *ch;

    priority = 0x1000;
    if (template->type == OBJ_CRAZY_HAND_1)
        priority = 0x1010;
    t = TaskCreate(ObjectMain, sizeof(struct CrazyHand), priority, TASK_USE_EWRAM, sub_080E3E30);
    tmp = TaskGetStructPtr(t);
    ch = tmp;
    ch->unkB4 = NULL;
    ch->unkB8 = 0;
    ch->unkB9 = 0;
    ch->unkBA = 0;
    InitObject(&ch->obj2, template, a2);
    ch->obj2.base.unkC |= 1;
    ch->obj2.base.flags |= 0x2000000;
    ch->obj2.base.flags |= 0x400;
    ch->obj2.base.flags |= 0x40;
    ch->obj2.base.flags |= 0x200;
    ch->obj2.base.unkC |= 4;
    ch->obj2.base.unkC |= 1;
    ch->obj2.base.flags |= 0x200000;
    ch->obj2.base.unk68 &= ~7;
    ch->obj2.base.unk5C &= ~7;
    ch->obj2.base.unk5C |= 3;
    ch->obj2.base.unk5C |= 0x1080A0;
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    sub_0803E2B0(&ch->obj2.base, -0x10, -0x13, 0x10, 0xC);
    sub_0803E308(&ch->obj2.base, -0xA, -4, 0xA, 4);
    ObjectInitSprite(&ch->obj2);
    if (ch->obj2.type == OBJ_CRAZY_HAND_2)
        sub_080DF5A4(ch);
    else
    {
        Macro_080E7D74(&ch->obj2);
        sub_080E37C4(ch);
    }
    sub_080E33E4(ch);
    ch->obj2.unk9E = 0;
    ch->obj2.unk7C = 0;
    return ch;
}

static void sub_080DF4C0(struct CrazyHand *ch)
{
    ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
    ch->obj2.base.flags |= 4;
    if (!(ch->obj2.kirby3->base.base.base.unkC & 0x8000)
        && ch->obj2.base.roomId == ch->obj2.kirby3->base.base.base.roomId
        && sub_08039430(&ch->obj2.kirby3->base.base,
            ch->obj2.base.x, ch->obj2.base.y,
            ch->obj2.object->unk1A, ch->obj2.object->unk1C,
            ch->obj2.object->unk1E, ch->obj2.object->unk20))
    {
        Macro_081003EC(&ch->obj2, &ch->obj2.kirby3->base.base.base);
        ch->obj2.unk85 = 0;
        sub_080DF5A4(ch);
    }
}

static void sub_080DF5A4(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0, sub_080E36C4);
    if (ch->obj2.type == OBJ_CRAZY_HAND_1)
    {
        struct Object5 *obj5;
        ch->obj2.base.x = 0x11800;
        ch->obj2.base.xspeed = -0xC0;
        obj5 = sub_08034E14(&ch->obj2);
        if (obj5)
            obj5->unk9 = 0;
    }
    else
    {
        ch->obj2.base.x = -0x1800;
        ch->obj2.base.xspeed = 0x100;
        Macro_08100F18(&ch->obj2);
    }
    ch->obj2.unk85 = 0;
    ch->obj2.base.flags &= ~0x400;
}

static void sub_080DF720(struct CrazyHand *ch)
{
    s32 sl = 2, sb = 2;
    u32 r3 = 2;
    struct CrazyHand *chAlias = ch;
    struct CrazyHand *ch2 = ch->unkB4;

    ch->obj2.base.unk68 &= ~7;
    if (ch2)
    {
        sb = 1;
        if (ch->obj2.type == OBJ_CRAZY_HAND_2)
            r3 = 3;
        if (ch2->unkB8 == 1)
        {
            sub_080E3D10(ch);
            return;
        }
    }
    if (ch->obj2.unk85 >= r3)
    {
        if (Rand16() & 1)
            sub_080DF9D0(ch);
        else
            sub_080E003C(ch);
        chAlias->unkB9 = 0;
        chAlias->unkBA = 0;
        ch->obj2.unk85 = 0;
    }
    else
    {
        s32 r;

        ++ch->obj2.unk85;
        if (chAlias->unkBA || !ch2)
            sl = 0;
        if (chAlias->unkB9)
            sb = 0;
        r = Rand16() & 7;
        if (r < (u32)sl)
        {
            chAlias->unkB9 = 0;
            sub_080E3D10(ch);
            if (ch->obj2.type == OBJ_CRAZY_HAND_1)
                ch->obj2.unk85 = 4;
            else
                ch->obj2.unk85 = 0;
        }
        else if (r < sl + sb)
        {
            chAlias->unkB9 = 1;
            chAlias->unkBA = 0;
            sub_080E1800(ch);
        }
        else
        {
            chAlias->unkB9 = 0;
            chAlias->unkBA = 0;
            if (Rand16() & 3)
                sub_080E396C(ch);
            else
            {
                if (Rand16() & 1)
                    sub_080DF9D0(ch);
                else
                    sub_080E003C(ch);
                ch->obj2.unk85 = 0;
            }
        }  
    }
}

void sub_080DF894(struct CrazyHand *ch)
{
    struct CrazyHand *chAlias = ch, *ch2 = ch->unkB4;

    ObjectSetFunc(ch, 0, sub_080DF954);
    if (ch->obj2.subtype)
        ch->obj2.base.counter = (Rand16() & 0xF) + 0x2A;
    else
    {
        if (Rand16() & 0x3F)
            ch->obj2.base.counter = (Rand16() & 0x1F) + 0x40;
        else
            ch->obj2.base.counter = (Rand16() & 0xF) + 0x48;
    }
    if (chAlias->unkB4 && ch2->unkB8)
        ch->obj2.base.counter = 0x18;
    ch->obj2.base.unk68 &= ~7;
}

static void sub_080DF954(struct CrazyHand *ch)
{
    if (ch->obj2.base.xspeed < 0)
    {
        ch->obj2.base.xspeed += 0x4C;
        if (ch->obj2.base.xspeed > 0)
            ch->obj2.base.xspeed = 0;
    }
    else
    {
        ch->obj2.base.xspeed -= 0x4C;
        if (ch->obj2.base.xspeed < 0)
            ch->obj2.base.xspeed = 0;
    }
    if (ch->obj2.base.yspeed < 0)
    {
        ch->obj2.base.yspeed += 0x4C;
        if (ch->obj2.base.yspeed > 0)
            ch->obj2.base.yspeed = 0;
    }
    else
    {
        ch->obj2.base.yspeed -= 0x4C;
        if (ch->obj2.base.yspeed < 0)
            ch->obj2.base.yspeed = 0;
    }
    ch->obj2.base.flags |= 4;
    if (!--ch->obj2.base.counter)
        sub_080DF720(ch);
}

static void sub_080DF9D0(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 1, sub_080DFA24);
    ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
    ch->obj2.base.flags |= 0x100;
    ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
    ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    ch->obj2.unk9F = 0;
    ch->obj2.base.counter = 0xC;
    ch->obj2.unk85 = 0;
}

static void sub_080DFA24(struct CrazyHand *ch)
{
    s32 lhs, rhs;

    if (++ch->obj2.unk9E > 7)
    {
        ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
        ch->obj2.unk9E = 0;
        ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
        ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    }
    lhs = ch->obj2.base.y & ~0xFFF;
    rhs = ((ch->obj2.unkA2 - 0x40) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x180)
            ch->obj2.base.yspeed = 0x180;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x180)
            ch->obj2.base.yspeed = -0x180;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 4;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 4;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0xFFF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += ch->obj2.base.counter;
        if (ch->obj2.base.xspeed > 0x180)
            ch->obj2.base.xspeed = 0x180;
        else if (ch->obj2.base.xspeed < -0x180)
            ch->obj2.base.xspeed = -0x180;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= ch->obj2.base.counter;
            if (ch->obj2.base.xspeed < -0x180)
                ch->obj2.base.xspeed = -0x180;
            else if (ch->obj2.base.xspeed > 0x180)
                ch->obj2.base.xspeed = 0x180;
        }
        else
        {
            ch->obj2.base.xspeed += ch->obj2.base.counter;
            if (ch->obj2.base.xspeed > 0x180)
                ch->obj2.base.xspeed = 0x180;
            else if (ch->obj2.base.xspeed < -0x180)
                ch->obj2.base.xspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 4;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 4;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (ch->obj2.base.y < (ch->obj2.unkA6 + 0xC) * 0x100)
        ch->obj2.base.yspeed = 0;
    if (ch->obj2.base.yspeed < 1)
        ch->obj2.unk9F = 1;
    if (ch->obj2.unk9F)
    {
        s32 r2 = 0x10;

        ch->obj2.base.yspeed = 0;
        if (ch->obj2.unk85 > 0x60)
        {
            if (++ch->obj2.base.counter > 0x60)
            {
                ch->obj2.base.counter = 0x60;
                r2 = 0x20;
            }
        }
        else
            ++ch->obj2.unk85;
        if (abs(ch->obj2.kirby3->base.base.base.x - ch->obj2.base.x) < r2 * 0x100)
            sub_080E37F0(ch);
    }
}

static void sub_080DFC3C(struct CrazyHand *ch)
{
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (ch->obj2.unk83 == 3)
    {
        ch->obj2.base.yspeed -= 0x7A;
        if (ch->obj2.base.yspeed < -0x680)
            ch->obj2.base.yspeed = -0x680;
        if (ch->obj2.base.unk62 & 4)
        {
            sub_0806FE64(1, &ch->obj2.base);
            sub_08089864(&ch->obj2.base, -8, 0xC, !(ch->obj2.base.flags & 1));
            sub_08089864(&ch->obj2.base, -0x14, 0xC, ch->obj2.base.flags & 1);
            sub_080A8D18(&ch->obj2, 0x1E, 8, 0, 8);
            ch->obj2.base.flags ^= 1;
            sub_080A8D18(&ch->obj2, 0x1E, 8, 0, 8);
            ch->obj2.base.flags ^= 1;
            PlaySfx(&ch->obj2.base, 374);
            sub_080E3844(ch);
            return;
        }
    }
    else if (ch->obj2.unk85 < 8)
    {
        ch->obj2.base.objBase54 = gUnk_08356A04[ch->obj2.unk85 >> 1];
        ch->obj2.base.objBase55 = gUnk_08356A04[(ch->obj2.unk85 >> 1) + 1];
        ++ch->obj2.unk85;
    }
    if (!--ch->obj2.base.counter)
    {
        ch->obj2.base.flags &= ~0x100;
        ch->obj2.base.yspeed = -0x100;
        ch->obj2.unk83 = 3;
    }
}

static void sub_080DFDE0(struct CrazyHand *ch)
{
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (ch->obj2.unk85 < 8)
    {
        ch->obj2.base.objBase54 = gUnk_08356A04[ch->obj2.unk85 >> 1];
        ++ch->obj2.unk85;
    }
    if (!--ch->obj2.base.counter)
        sub_080E388C(ch);
}

static void sub_080DFE40(struct CrazyHand *ch)
{
    s32 lhs, rhs;

    ++ch->obj2.unk9E;
    lhs = ch->obj2.base.y & ~0x3FF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x200)
            ch->obj2.base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x200)
            ch->obj2.base.yspeed = -0x200;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 0x20;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 0x20;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0x3FF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x200)
            ch->obj2.base.xspeed = 0x200;
        else if (ch->obj2.base.xspeed < -0x200)
            ch->obj2.base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
            else if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 0x20;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 0x20;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (!ch->obj2.unk83)
    {
        ch->obj2.base.flags |= 4;
        if (abs(ch->obj2.unkA0 - (ch->obj2.base.x >> 8)) < 0x10
            && abs(ch->obj2.unkA2 - (ch->obj2.base.y >> 8)) < 0x10)
            sub_080DF894(ch);
    }
    if (ch->obj2.base.flags & 2)
    {
        u32 var;

        ch->obj2.unk83 = 0;
        var = 0;
        if (ch->obj2.subtype)
            var = Rand16() & 1;
        if (var) sub_080DF720(ch);
    }
}

static void sub_080E003C(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0, sub_080E0098);
    ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
    ch->obj2.base.flags |= 0x100;
    ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
    ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    ch->obj2.unk9F = 0;
    ch->obj2.base.counter = 8;
    ch->obj2.unk85 = 0;
    ch->obj2.base.flags &= ~2;
}

static void sub_080E0098(struct CrazyHand *ch)
{
    s8 var = 0x10, var2;
    s32 lhs, rhs;

    if (ch->obj2.object->subtype1)
        var2 = -0x60;
    else
        var2 = 0x60;
    if (!ch->obj2.unk83 && ch->obj2.base.flags & 2)
        ch->obj2.unk83 = 5;
    if (++ch->obj2.unk9E > 7)
    {
        ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
        ch->obj2.unk9E = 0;
        ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
        ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    }
    lhs = ch->obj2.base.y & ~0xFFF;
    rhs = ((ch->obj2.unkA2 + var) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (ch->obj2.base.counter > 0)
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (ch->obj2.base.counter < 0)
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter; // TODO: a few functions here require the volatile cast to match (also see master_hand.c)
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 4;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 4;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0xFFF;
    rhs = ((ch->obj2.unkA0 + var2) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x180)
            ch->obj2.base.xspeed = 0x180;
        else if (ch->obj2.base.xspeed < -0x180)
            ch->obj2.base.xspeed = -0x180;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x180)
                ch->obj2.base.xspeed = -0x180;
            else if (ch->obj2.base.xspeed > 0x180)
                ch->obj2.base.xspeed = 0x180;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x180)
                ch->obj2.base.xspeed = 0x180;
            else if (ch->obj2.base.xspeed < -0x180)
                ch->obj2.base.xspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 4;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 4;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
    {
        ch->obj2.base.flags &= ~1;
        if (ch->obj2.base.x < (ch->obj2.unkA4 + 0xC) * 0x100)
            ch->obj2.base.xspeed = 0;
        if (ch->obj2.base.xspeed >= 0)
            sub_080E38E0(ch);
    }
    else
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.x > (ch->obj2.unkA8 - 0xC) * 0x100)
            ch->obj2.base.xspeed = 0;
        if (ch->obj2.base.xspeed <= 0)
            sub_080E38E0(ch);
    }
}

static void sub_080E0318(struct CrazyHand *ch)
{
    s8 var = 0x10, var2;
    s32 lhs, rhs;
    s32 var3;

    if (ch->obj2.object->subtype1)
        var2 = -0x60;
    else
        var2 = 0x60;
    if (!ch->obj2.unk83 && ch->obj2.base.flags & 2)
        ch->obj2.unk83 = 5;
    if (++ch->obj2.unk9E > 7)
    {
        ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
        ch->obj2.unk9E = 0;
        ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
        ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    }
    lhs = ch->obj2.base.y & ~0xFFF;
    rhs = ((ch->obj2.unkA2 + var) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (ch->obj2.base.counter > 0)
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (ch->obj2.base.counter < 0)
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 4;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 4;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0xFFF;
    rhs = ((ch->obj2.unkA0 + var2) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x80;
        if (ch->obj2.base.xspeed > 0x100)
            ch->obj2.base.xspeed = 0x100;
        else if (ch->obj2.base.xspeed < -0x100)
            ch->obj2.base.xspeed = -0x100;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x80;
            if (ch->obj2.base.xspeed < -0x100)
                ch->obj2.base.xspeed = -0x100;
            else if (ch->obj2.base.xspeed > 0x100)
                ch->obj2.base.xspeed = 0x100;
        }
        else
        {
            ch->obj2.base.xspeed += 0x80;
            if (ch->obj2.base.xspeed > 0x100)
                ch->obj2.base.xspeed = 0x100;
            else if (ch->obj2.base.xspeed < -0x100)
                ch->obj2.base.xspeed = -0x100;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 4;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 4;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
    {
        ch->obj2.base.flags &= ~1;
        if (ch->obj2.base.xspeed > 0)
            ch->obj2.base.xspeed = 0;
    }
    else
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.xspeed < 0)
            ch->obj2.base.xspeed = 0;
    }
    if (ch->obj2.base.x > (ch->obj2.unkA8 - 0xC) * 0x100 || ch->obj2.base.x < (ch->obj2.unkA4 + 0xC) * 0x100)
        ch->obj2.base.xspeed = 0;
    var3 = 0xC;
    if (ch->obj2.unk85 > 0x60)
    {
        if (++ch->obj2.base.counter > 0x60)
        {
            ch->obj2.base.counter = 0x60;
            var3 = 0x30;
        }
    }
    else
        ++ch->obj2.unk85;
    if (abs(({ ch->obj2.kirby3->base.base.base.y + 0x1000; }) - ch->obj2.base.y) < var3 * 0x100)
    {
        ch->obj2.unk83 = 5;
        ch->obj2.base.flags &= ~2;
        if (ch->obj2.subtype || ch->obj2.type == OBJ_CRAZY_HAND_1)
            ch->obj2.unk9F = 0x2C;
        else
            ch->obj2.unk9F = 0x30;
        ch->obj2.unk85 = 0;
        ch->obj2.unk78 = sub_080E0628;
    }
}

static void sub_080E0628(struct CrazyHand *ch)
{
    s8 var = 0x10, var2;
    s32 lhs, rhs;

    if (ch->obj2.object->subtype1)
        var2 = -0x60;
    else
        var2 = 0x60;
    if (++ch->obj2.unk9E > 7)
    {
        ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
        ch->obj2.unk9E = 0;
        ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
        ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    }
    lhs = ch->obj2.base.y & ~0xFFF;
    rhs = ((ch->obj2.unkA2 + var) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (ch->obj2.base.counter > 0)
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (ch->obj2.base.counter < 0)
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 4;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 4;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0xFFF;
    rhs = ((ch->obj2.unkA0 + var2) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x80;
        if (ch->obj2.base.xspeed > 0x100)
            ch->obj2.base.xspeed = 0x100;
        else if (ch->obj2.base.xspeed < -0x100)
            ch->obj2.base.xspeed = -0x100;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x80;
            if (ch->obj2.base.xspeed < -0x100)
                ch->obj2.base.xspeed = -0x100;
            else if (ch->obj2.base.xspeed > 0x100)
                ch->obj2.base.xspeed = 0x100;
        }
        else
        {
            ch->obj2.base.xspeed += 0x80;
            if (ch->obj2.base.xspeed > 0x100)
                ch->obj2.base.xspeed = 0x100;
            else if (ch->obj2.base.xspeed < -0x100)
                ch->obj2.base.xspeed = -0x100;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 4;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 4;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
    {
        ch->obj2.base.flags &= ~1;
        if (ch->obj2.base.xspeed > 0)
            ch->obj2.base.xspeed = 0;
    }
    else
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.xspeed < 0)
            ch->obj2.base.xspeed = 0;
    }
    if (ch->obj2.base.x > (ch->obj2.unkA8 - 0xC) * 0x100 || ch->obj2.base.x < (ch->obj2.unkA4 + 0xC) * 0x100)
        ch->obj2.base.xspeed = 0;
    if (++ch->obj2.base.counter > 0x60)
        ch->obj2.base.counter = 0x60;
    if (!--ch->obj2.unk9F)
        sub_080E08B0(ch);
}

static void sub_080E08B0(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 6, sub_080E0920);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.unk9F = 0;
    ch->obj2.unk9E = 0;
    ch->obj2.base.flags &= ~2;
    if (ch->obj2.subtype || ch->obj2.type == OBJ_CRAZY_HAND_1)
        ch->obj2.base.counter = 0xC;
    else
        ch->obj2.base.counter = 0x10;
    ++ch->obj2.unk85;
    ch->obj2.base.unk68 &= ~7;
    ch->obj2.base.unk68 |= 2;
}

static void sub_080E0920(struct CrazyHand *ch)
{
    if (ch->obj2.unk83 == 7)
    {
        if (ch->obj2.base.unk1 == 1)
        {
            sub_080E31D4(ch, ch->obj2.object->subtype2);
            PlaySfx(&ch->obj2.base, 375);
        }
        if (ch->obj2.base.unk1 >= 8 && ch->obj2.base.unk1 < 0x10)
            ch->obj2.base.objBase54 = gUnk_08356A14[ch->obj2.base.unk1 - 8];
        if (ch->obj2.base.unk1 == 0x18 && ch->obj2.unk85 < 3)
        {
            u16 r;

            if (ch->obj2.subtype)
                r = Rand16() & 1;
            else
                r = !RandLessThan3();
            if (ch->obj2.type == OBJ_CRAZY_HAND_1 && !r)
                r = Rand16() & 1;
            if (r)
            {
                ch->obj2.unk83 = 6;
                ch->obj2.base.flags &= ~2;
                ch->obj2.base.counter = 0x60;
                if (ch->obj2.subtype || ch->obj2.type == OBJ_CRAZY_HAND_1)
                    ch->obj2.unk9F = 0xC;
                else
                    ch->obj2.unk9F = 0x18;
                ch->obj2.unk78 = sub_080E0628;
                return;
            }
        }
        if (ch->obj2.base.flags & 2)
            sub_080E3918(ch);
    }
    else
    {
        if (ch->obj2.unk9E < 8)
        {
            ch->obj2.base.objBase54 = gUnk_08356A04[ch->obj2.unk9E >> 1];
            ch->obj2.base.objBase55 = gUnk_08356A04[(ch->obj2.unk9E >> 1) + 1];
            ++ch->obj2.unk9E;
        }
        if (!--ch->obj2.base.counter)
        {
            ch->obj2.unk83 = 7;
            ch->obj2.base.flags &= ~2;
            ch->obj2.base.unk68 &= ~7;
        }
    }
}

static void sub_080E0B44(struct CrazyHand *ch)
{
    s32 lhs, rhs;

    ++ch->obj2.unk9E;
    lhs = ch->obj2.base.y & ~0x3FF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x200)
            ch->obj2.base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x200)
            ch->obj2.base.yspeed = -0x200;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 0x20;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 0x20;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0x3FF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x200)
            ch->obj2.base.xspeed = 0x200;
        else if (ch->obj2.base.xspeed < -0x200)
            ch->obj2.base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
            else if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 0x20;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 0x20;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (!ch->obj2.unk83)
    {
        ch->obj2.base.flags |= 4;
        if (abs(ch->obj2.unkA0 - (ch->obj2.base.x >> 8)) < 0x10
            && abs(ch->obj2.unkA2 - (ch->obj2.base.y >> 8)) < 0x10)
            sub_080DF894(ch);
    }
    if (ch->obj2.base.flags & 2)
    {
        u32 var;

        ch->obj2.unk83 = 0;
        var = 0;
        if (ch->obj2.subtype)
            var = Rand16() & 1;
        if (var) sub_080DF720(ch);
    }
}

static void sub_080E0D40(struct CrazyHand *ch)
{
    s8 var = 0, var2;
    s32 lhs, rhs;

    if (!ch->obj2.unk83 && ch->obj2.base.flags & 2)
        ch->obj2.unk83 = 9;
    if (ch->obj2.object->subtype1)
        var2 = -0x60;
    else
        var2 = 0x60;
    if (++ch->obj2.unk9E > 7)
    {
        ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
        ch->obj2.unk9E = 0;
        ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
        ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    }
    lhs = ch->obj2.base.y & ~0xFFF;
    rhs = ((ch->obj2.unkA2 + var) * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (ch->obj2.base.counter > 0)
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (ch->obj2.base.counter < 0)
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 4;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 4;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0xFFF;
    rhs = ((ch->obj2.unkA0 + var2) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x180)
            ch->obj2.base.xspeed = 0x180;
        else if (ch->obj2.base.xspeed < -0x180)
            ch->obj2.base.xspeed = -0x180;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x180)
                ch->obj2.base.xspeed = -0x180;
            else if (ch->obj2.base.xspeed > 0x180)
                ch->obj2.base.xspeed = 0x180;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x180)
                ch->obj2.base.xspeed = 0x180;
            else if (ch->obj2.base.xspeed < -0x180)
                ch->obj2.base.xspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 4;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 4;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
    {
        ch->obj2.base.flags &= ~1;
        if (ch->obj2.base.x < (ch->obj2.unkA4 + 0xC) * 0x100)
            ch->obj2.base.xspeed = 0;
        if (ch->obj2.base.xspeed >= 0)
            sub_080E39C4(ch);
    }
    else
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.x > (ch->obj2.unkA8 - 0xC) * 0x100)
            ch->obj2.base.xspeed = 0;
        if (ch->obj2.base.xspeed <= 0)
            sub_080E39C4(ch);
    }
}

static void sub_080E0FC4(struct CrazyHand *ch)
{
    s8 var = 0xC, var2;
    s32 lhs, rhs;

    if (!ch->obj2.unk83)
        ch->obj2.base.flags |= 4;
    if (ch->obj2.object->subtype1)
        var2 = -0x60;
    else
        var2 = 0x60;
    if (++ch->obj2.unk9E > 7)
    {
        ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
        ch->obj2.unk9E = 0;
        ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
        ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    }
    lhs = ch->obj2.base.y & ~0xFFF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0xFFF;
    if (lhs > rhs)
    {
        if (ch->obj2.base.counter > 0)
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed += ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else if (lhs < rhs)
    {
        if (ch->obj2.base.counter < 0)
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else
        {
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 4;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 4;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0xFFF;
    rhs = ((ch->obj2.unkA0 + var2) * 0x100) & ~0xFFF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x80;
        if (ch->obj2.base.xspeed > 0x100)
            ch->obj2.base.xspeed = 0x100;
        else if (ch->obj2.base.xspeed < -0x100)
            ch->obj2.base.xspeed = -0x100;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x80;
            if (ch->obj2.base.xspeed < -0x100)
                ch->obj2.base.xspeed = -0x100;
            else if (ch->obj2.base.xspeed > 0x100)
                ch->obj2.base.xspeed = 0x100;
        }
        else
        {
            ch->obj2.base.xspeed += 0x80;
            if (ch->obj2.base.xspeed > 0x100)
                ch->obj2.base.xspeed = 0x100;
            else if (ch->obj2.base.xspeed < -0x100)
                ch->obj2.base.xspeed = -0x100;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 4;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 4;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
    {
        ch->obj2.base.flags &= ~1;
        if (ch->obj2.base.xspeed > 0)
            ch->obj2.base.xspeed = 0;
    }
    else
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.xspeed < 0)
            ch->obj2.base.xspeed = 0;
    }
    if (ch->obj2.base.x > (ch->obj2.unkA8 - 0xC) * 0x100 || ch->obj2.base.x < (ch->obj2.unkA4 + 0xC) * 0x100)
        ch->obj2.base.xspeed = 0;
    if (ch->obj2.unk83 == 0xA)
    {
        if (++ch->obj2.base.counter > 0x60)
            ch->obj2.base.counter = 0x60;
        if (!--ch->obj2.unk9F)
            sub_080E12C8(ch);
    }
    else
    {
        if (ch->obj2.unk9F > 0x40)
        {
            var = 0x30;
            if (++ch->obj2.base.counter > 0x60)
                ch->obj2.base.counter = 0x60;
        }
        else
            ++ch->obj2.unk9F;
        if (abs(ch->obj2.kirby3->base.base.base.y - ch->obj2.base.y) < var * 0x100)
        {
            ch->obj2.unk83 = 0xA;
            ch->obj2.unk9F = 0x18;
        }
    }
}

static void sub_080E12C8(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0xA, sub_080E133C);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.unk9F = 0;
    ch->obj2.unk9E = 0;
    ch->obj2.base.flags &= ~2;
    if (ch->obj2.subtype)
        ch->obj2.base.counter = 0x14;
    else
        ch->obj2.base.counter = 0x1C;
    ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
    ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    ch->obj2.base.unk68 &= ~7;
    ch->obj2.base.unk68 |= 2;
}

static void sub_080E133C(struct CrazyHand *ch)
{
    struct CrazyHand *ch2 = ch->unkB4;

    if (ch->obj2.unk9E < 8)
    {
        ch->obj2.base.objBase54 = gUnk_08356A04[ch->obj2.unk9E >> 1];
        ch->obj2.base.objBase55 = gUnk_08356A04[(ch->obj2.unk9E >> 1) + 1];
        ++ch->obj2.unk9E;
    }
    if (!ch->obj2.base.counter)
    {
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x90;
            if (ch->obj2.base.xspeed < -0x780)
                ch->obj2.base.xspeed = -0x780;
            else if (ch->obj2.base.xspeed > 0x780)
                ch->obj2.base.xspeed = 0x780;
        }
        else
        {
            ch->obj2.base.xspeed += 0x90;
            if (ch->obj2.base.xspeed > 0x780)
                ch->obj2.base.xspeed = 0x780;
            else if (ch->obj2.base.xspeed < -0x780)
                ch->obj2.base.xspeed = -0x780;
        }
        if (ch->obj2.base.flags & 1)
        {
            if (ch->obj2.base.x >= (ch->obj2.unkA0 - 0x20) * 0x100)
            {
                int x;

                if (!ch2 || (ch2->obj2.unk83 != 0xA && ch2->obj2.unk83 != 3))
                    return;
                if (abs(ch2->obj2.base.y - ch->obj2.base.y) < 0x1800)
                {
                    x = ch->obj2.base.x - 0x2000;
                    if (abs(ch2->obj2.base.x - x) < 0x800)
                    {
                        if (ch2->obj2.unk78 != sub_080E133C)
                            sub_080A8D18(&ch->obj2, 0, -0x14, 2, 0);
                        sub_0806FE64(3, &ch->obj2.base);
                        PlaySfx(&ch->obj2.base, 404);
                        sub_080E39F8(ch);
                    }
                }
            }
            else
                sub_080E39F8(ch);
        }
        else
        {
            if (ch->obj2.base.x <= (ch->obj2.unkA0 + 0x20) * 0x100)
            {
                int x;

                if (!ch2 || (ch2->obj2.unk83 != 0xA && ch2->obj2.unk83 != 3))
                    return;
                if (abs(ch2->obj2.base.y - ch->obj2.base.y) < 0x1400)
                {
                    x = ch->obj2.base.x + 0x2000;
                    if (abs(ch2->obj2.base.x - x) < 0x800)
                    {
                        if (ch2->obj2.unk78 != sub_080E133C)
                            sub_080A8D18(&ch->obj2, 0, -0x14, 2, 0);
                        sub_0806FE64(3, &ch->obj2.base);
                        PlaySfx(&ch->obj2.base, 404);
                        sub_080E39F8(ch);
                    }
                }
            }
            else
                sub_080E39F8(ch);
        }

    }
    else if (!--ch->obj2.base.counter)
        PlaySfx(&ch->obj2.base, 409);
}

static void sub_080E1604(struct CrazyHand *ch)
{
    s32 lhs, rhs;

    ++ch->obj2.unk9E;
    lhs = ch->obj2.base.y & ~0x3FF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x200)
            ch->obj2.base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x200)
            ch->obj2.base.yspeed = -0x200;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 0x20;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 0x20;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0x3FF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x200)
            ch->obj2.base.xspeed = 0x200;
        else if (ch->obj2.base.xspeed < -0x200)
            ch->obj2.base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
            else if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 0x20;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 0x20;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (!ch->obj2.unk83)
    {
        ch->obj2.base.flags |= 4;
        if (abs(ch->obj2.unkA0 - (ch->obj2.base.x >> 8)) < 0x10
            && abs(ch->obj2.unkA2 - (ch->obj2.base.y >> 8)) < 0x10)
            sub_080DF894(ch);
    }
    if (ch->obj2.base.flags & 2)
    {
        u32 var;

        ch->obj2.unk83 = 0;
        var = 0;
        if (ch->obj2.subtype)
            var = Rand16() & 1;
        if (var) sub_080DF720(ch);
    }
}

static void sub_080E1800(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0xC, sub_080E1868);
    ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.base.unkC &= ~0x40;
    ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
    ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    ch->obj2.unk9F = 0;
    if (ch->obj2.subtype)
        ch->obj2.base.counter = 0x48;
    else
        ch->obj2.base.counter = 0x30;
}

static void sub_080E1868(struct CrazyHand *ch)
{
    if (ch->obj2.subtype)
    {
        s32 lhs, rhs;

        if (++ch->obj2.unk9E > 7)
        {
            ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
            ch->obj2.unk9E = 0;
            ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
            ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
        }
        lhs = ch->obj2.base.y & ~0xFFF;
        rhs = (ch->obj2.unkA2 * 0x100) & ~0xFFF;
        if (lhs > rhs)
        {
            ch->obj2.base.yspeed += 0x30;
            if (ch->obj2.base.yspeed > 0x200)
                ch->obj2.base.yspeed = 0x200;
        }
        else if (lhs < rhs)
        {
            ch->obj2.base.yspeed -= 0x30;
            if (ch->obj2.base.yspeed < -0x200)
                ch->obj2.base.yspeed = -0x200;
        }
        else
        {
            if (ch->obj2.base.yspeed < 0)
            {
                ch->obj2.base.yspeed += 4;
                if (ch->obj2.base.yspeed > 0)
                    ch->obj2.base.yspeed = 0;
            }
            else
            {
                ch->obj2.base.yspeed -= 4;
                if (ch->obj2.base.yspeed < 0)
                    ch->obj2.base.yspeed = 0;
            }
        }
        lhs = ch->obj2.base.x & ~0xFFF;
        rhs = (ch->obj2.unkA0 * 0x100) & ~0xFFF;
        if (lhs < rhs)
        {
            ch->obj2.base.flags &= ~1;
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
        else if (lhs > rhs)
        {
            ch->obj2.base.flags |= 1;
            if (ch->obj2.base.flags & 1)
            {
                ch->obj2.base.xspeed -= 0x30;
                if (ch->obj2.base.xspeed < -0x200)
                    ch->obj2.base.xspeed = -0x200;
                else if (ch->obj2.base.xspeed > 0x200)
                    ch->obj2.base.xspeed = 0x200;
            }
            else
            {
                ch->obj2.base.xspeed += 0x30;
                if (ch->obj2.base.xspeed > 0x200)
                    ch->obj2.base.xspeed = 0x200;
                else if (ch->obj2.base.xspeed < -0x200)
                    ch->obj2.base.xspeed = -0x200;
            }
        }
        else
        {
            if (ch->obj2.base.xspeed < 0)
            {
                ch->obj2.base.xspeed += 4;
                if (ch->obj2.base.xspeed > 0)
                    ch->obj2.base.xspeed = 0;
            }
            else
            {
                ch->obj2.base.xspeed -= 4;
                if (ch->obj2.base.xspeed < 0)
                    ch->obj2.base.xspeed = 0;
            }
        }
    }
    else
    {
        s32 lhs, rhs;

        if (++ch->obj2.unk9E > 7)
        {
            ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
            ch->obj2.unk9E = 0;
            ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
            ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
        }
        lhs = ch->obj2.base.y & ~0xFFF;
        rhs = (ch->obj2.unkA2 * 0x100) & ~0xFFF;
        if (lhs > rhs)
        {
            ch->obj2.base.yspeed += 0x30;
            if (ch->obj2.base.yspeed > 0x180)
                ch->obj2.base.yspeed = 0x180;
        }
        else if (lhs < rhs)
        {
            ch->obj2.base.yspeed -= 0x30;
            if (ch->obj2.base.yspeed < -0x180)
                ch->obj2.base.yspeed = -0x180;
        }
        else
        {
            if (ch->obj2.base.yspeed < 0)
            {
                ch->obj2.base.yspeed += 4;
                if (ch->obj2.base.yspeed > 0)
                    ch->obj2.base.yspeed = 0;
            }
            else
            {
                ch->obj2.base.yspeed -= 4;
                if (ch->obj2.base.yspeed < 0)
                    ch->obj2.base.yspeed = 0;
            }
        }
        lhs = ch->obj2.base.x & ~0xFFF;
        rhs = (ch->obj2.unkA0 * 0x100) & ~0xFFF;
        if (lhs < rhs)
        {
            ch->obj2.base.flags &= ~1;
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x180)
                ch->obj2.base.xspeed = 0x180;
            else if (ch->obj2.base.xspeed < -0x180)
                ch->obj2.base.xspeed = -0x180;
        }
        else if (lhs > rhs)
        {
            ch->obj2.base.flags |= 1;
            if (ch->obj2.base.flags & 1)
            {
                ch->obj2.base.xspeed -= 0x30;
                if (ch->obj2.base.xspeed < -0x180)
                    ch->obj2.base.xspeed = -0x180;
                else if (ch->obj2.base.xspeed > 0x180)
                    ch->obj2.base.xspeed = 0x180;
            }
            else
            {
                ch->obj2.base.xspeed += 0x30;
                if (ch->obj2.base.xspeed > 0x180)
                    ch->obj2.base.xspeed = 0x180;
                else if (ch->obj2.base.xspeed < -0x180)
                    ch->obj2.base.xspeed = -0x180;
            }
        }
        else
        {
            if (ch->obj2.base.xspeed < 0)
            {
                ch->obj2.base.xspeed += 4;
                if (ch->obj2.base.xspeed > 0)
                    ch->obj2.base.xspeed = 0;
            }
            else
            {
                ch->obj2.base.xspeed -= 4;
                if (ch->obj2.base.xspeed < 0)
                    ch->obj2.base.xspeed = 0;
            }
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (ch->obj2.base.flags & 2)
        ch->obj2.unk83 = 0xD;
    if (!--ch->obj2.base.counter)
        sub_080E3C6C(ch);
}

bool8 sub_080E1B8C(struct CrazyHand *ch, struct Kirby *kirby)
{
    if (ch->obj2.unk83 != 0xD
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(ch, 0xE, sub_080E3AE0);
    sub_0803E2B0(&ch->obj2.base, -0x10, -0xC, 8, 0xC);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.unk9F = 0;
    ch->obj2.unk9E = 0;
    kirby->unk110 = gUnk_083569BC;
    ch->obj2.kirby3 = kirby;
    ch->obj2.base.counter = ch->obj2.unk80;
    ch->obj2.base.flags &= ~2;
    ch->obj2.base.unk6C = kirby;
    PlaySfx(&ch->obj2.base, 410);
    return TRUE;
}

static void sub_080E1CCC(struct CrazyHand *ch)
{
    s32 lhs, rhs;
    struct Kirby *kirby = ch->obj2.kirby3;

    if (ch->obj2.base.unkC & 0x80 || !kirby->unk110)
    {
        ch->obj2.base.unkC &= ~0x80;
        sub_080E25B4(ch);
        return;
    }
    ++ch->obj2.unk9E;
    lhs = ch->obj2.base.y & ~0x3FF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x200)
            ch->obj2.base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x200)
            ch->obj2.base.yspeed = -0x200;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 0x20;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 0x20;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0x3FF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x200)
            ch->obj2.base.xspeed = 0x200;
        else if (ch->obj2.base.xspeed < -0x200)
            ch->obj2.base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
            else if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 0x20;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 0x20;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (ch->obj2.base.flags & 2)
    {
        ch->obj2.unk83 = 0x10;
        sub_0803E2B0(&ch->obj2.base, -0x10, -0x13, 0x10, 0xC);
    }
    if (ch->obj2.unk83 == 0x10
        && ch->obj2.unkA2 + 0x10 >= ch->obj2.base.y >> 8
        && ch->obj2.base.x < ch->obj2.unkA8 * 0x100 + 0x400
        && ch->obj2.base.x > ch->obj2.unkA4 * 0x100 - 0x400)
        sub_080E3B9C(ch);
}

static void sub_080E1EC0(struct CrazyHand *ch)
{
    struct Kirby *kirby = ch->obj2.kirby3;

    if (ch->obj2.base.unkC & 0x80 || !kirby->unk110)
    {
        ch->obj2.base.unkC &= ~0x80;
        sub_080E25B4(ch);
        return;
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (!ch->obj2.base.counter)
    {
        ch->obj2.base.yspeed -= 0x7A;
        if (ch->obj2.base.yspeed < -0x680)
            ch->obj2.base.yspeed = -0x680;
        if (ch->obj2.base.unk62 & 4)
        {
            sub_0806FE64(1, &ch->obj2.base);
            sub_08089864(&ch->obj2.base, -8, 0xC, !(ch->obj2.base.flags & 1));
            sub_08089864(&ch->obj2.base, -0x14, 0xC, ch->obj2.base.flags & 1);
            PlaySfx(&ch->obj2.base, 374);
            sub_080E3BD0(ch);
        }
    }
    else if (!--ch->obj2.base.counter)
    {
        ch->obj2.base.flags &= ~0x100;
        ch->obj2.base.yspeed = -0x100;
    }
}

static void sub_080E2024(struct CrazyHand *ch)
{
    struct Kirby *kirby = ch->obj2.kirby3;

    if (ch->obj2.base.unkC & 0x80 || !kirby->unk110)
    {
        ch->obj2.base.unkC &= ~0x80;
        sub_080E25B4(ch);
        return;
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (ch->obj2.unk9E < 8)
    {
        ch->obj2.base.objBase54 = gUnk_08356A04[ch->obj2.unk9E >> 1];
        ++ch->obj2.unk9E;
    }
    if (!--ch->obj2.base.counter)
        sub_080E3C0C(ch);
}

static void sub_080E20B4(struct CrazyHand *ch)
{
    s32 lhs, rhs;

    ++ch->obj2.unk9E;
    lhs = ch->obj2.base.y & ~0x3FF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x200)
            ch->obj2.base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x200)
            ch->obj2.base.yspeed = -0x200;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 0x20;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 0x20;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0x3FF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x200)
            ch->obj2.base.xspeed = 0x200;
        else if (ch->obj2.base.xspeed < -0x200)
            ch->obj2.base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
            else if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 0x20;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 0x20;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (!ch->obj2.unk83)
    {
        ch->obj2.base.flags |= 4;
        if (abs(ch->obj2.unkA0 - (ch->obj2.base.x >> 8)) < 0x10
            && abs(ch->obj2.unkA2 - (ch->obj2.base.y >> 8)) < 0x10)
            sub_080DF894(ch);
    }
    else if (ch->obj2.base.unk1 < 0x18)
    {
        ch->obj2.base.xspeed = 0;
        ch->obj2.base.yspeed = 0x1A0;
    }
    if (ch->obj2.base.flags & 2)
    {
        u32 var;

        ch->obj2.unk83 = 0;
        var = 0;
        if (ch->obj2.subtype)
            var = Rand16() & 1;
        if (var) sub_080DF720(ch);
    }
}

static void sub_080E22EC(struct CrazyHand *ch)
{
    if (ch->obj2.base.xspeed < 0)
    {
        ch->obj2.base.xspeed += 0x4C;
        if (ch->obj2.base.xspeed > 0)
            ch->obj2.base.xspeed = 0;
    }
    else
    {
        ch->obj2.base.xspeed -= 0x4C;
        if (ch->obj2.base.xspeed < 0)
            ch->obj2.base.xspeed = 0;
    }
    if (ch->obj2.base.yspeed < 0)
    {
        ch->obj2.base.yspeed += 0x4C;
        if (ch->obj2.base.yspeed > 0)
            ch->obj2.base.yspeed = 0;
    }
    else
    {
        ch->obj2.base.yspeed -= 0x4C;
        if (ch->obj2.base.yspeed < 0)
            ch->obj2.base.yspeed = 0;
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (ch->obj2.unk83 == 0xE)
    {
        if (ch->obj2.base.flags & 2)
        {
            ch->obj2.base.flags &= ~2;
            ch->obj2.unk83 = 0xF;
        }
    }
    else if (ch->obj2.unk83 == 0xF)
    {
        if (ch->obj2.base.flags & 2)
        {
            sub_0803E2B0(&ch->obj2.base, -0x10, -0x13, 0x10, 0xC);
            sub_080E3CC4(ch);
        }
    }
}

static void sub_080E23B8(struct CrazyHand *ch)
{
    s32 lhs, rhs;

    ++ch->obj2.unk9E;
    lhs = ch->obj2.base.y & ~0x3FF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x200)
            ch->obj2.base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x200)
            ch->obj2.base.yspeed = -0x200;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 0x20;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 0x20;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0x3FF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x200)
            ch->obj2.base.xspeed = 0x200;
        else if (ch->obj2.base.xspeed < -0x200)
            ch->obj2.base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
            else if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 0x20;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 0x20;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (!ch->obj2.unk83)
    {
        ch->obj2.base.flags |= 4;
        if (abs(ch->obj2.unkA0 - (ch->obj2.base.x >> 8)) < 0x10
            && abs(ch->obj2.unkA2 - (ch->obj2.base.y >> 8)) < 0x10)
            sub_080DF894(ch);
    }

    if (ch->obj2.base.flags & 2)
    {
        u32 var;

        ch->obj2.unk83 = 0;
        var = 0;
        if (ch->obj2.subtype)
            var = Rand16() & 1;
        if (var) sub_080DF720(ch);
    }
}

static void sub_080E25B4(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0x16, sub_080E261C);
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
    ch->obj2.base.counter = 0x10;
    sub_0803E2B0(&ch->obj2.base, -0x10, -0x13, 0x10, 0xC);
}

static void sub_080E261C(struct CrazyHand *ch)
{
    if (!ch->obj2.base.counter)
    {
        s32 lhs, rhs;

        ++ch->obj2.unk9E;
        lhs = ch->obj2.base.y & ~0x3FF;
        rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            ch->obj2.base.yspeed += 0x30;
            if (ch->obj2.base.yspeed > 0x200)
                ch->obj2.base.yspeed = 0x200;
        }
        else if (lhs < rhs)
        {
            ch->obj2.base.yspeed -= 0x30;
            if (ch->obj2.base.yspeed < -0x200)
                ch->obj2.base.yspeed = -0x200;
        }
        else
        {
            if (ch->obj2.base.yspeed < 0)
            {
                ch->obj2.base.yspeed += 0x20;
                if (ch->obj2.base.yspeed > 0)
                    ch->obj2.base.yspeed = 0;
            }
            else
            {
                ch->obj2.base.yspeed -= 0x20;
                if (ch->obj2.base.yspeed < 0)
                    ch->obj2.base.yspeed = 0;
            }
        }
        lhs = ch->obj2.base.x & ~0x3FF;
        rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            ch->obj2.base.flags &= ~1;
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
        else if (lhs > rhs)
        {
            ch->obj2.base.flags |= 1;
            if (ch->obj2.base.flags & 1)
            {
                ch->obj2.base.xspeed -= 0x30;
                if (ch->obj2.base.xspeed < -0x200)
                    ch->obj2.base.xspeed = -0x200;
                else if (ch->obj2.base.xspeed > 0x200)
                    ch->obj2.base.xspeed = 0x200;
            }
            else
            {
                ch->obj2.base.xspeed += 0x30;
                if (ch->obj2.base.xspeed > 0x200)
                    ch->obj2.base.xspeed = 0x200;
                else if (ch->obj2.base.xspeed < -0x200)
                    ch->obj2.base.xspeed = -0x200;
            }
        }
        else
        {
            if (ch->obj2.base.xspeed < 0)
            {
                ch->obj2.base.xspeed += 0x20;
                if (ch->obj2.base.xspeed > 0)
                    ch->obj2.base.xspeed = 0;
            }
            else
            {
                ch->obj2.base.xspeed -= 0x20;
                if (ch->obj2.base.xspeed < 0)
                    ch->obj2.base.xspeed = 0;
            }
        }
        if (ch->obj2.object->subtype1)
            ch->obj2.base.flags &= ~1;
        else
            ch->obj2.base.flags |= 1;
        if (!ch->obj2.unk83)
        {
            ch->obj2.base.flags |= 4;
            if (abs(ch->obj2.unkA0 - (ch->obj2.base.x >> 8)) < 0x10
                && abs(ch->obj2.unkA2 - (ch->obj2.base.y >> 8)) < 0x10)
                sub_080DF894(ch);
        }
    }
    else if (!--ch->obj2.base.counter)
    {
        u32 var;

        ch->obj2.unk83 = 0;
        var = 0;
        if (ch->obj2.subtype)
            var = Rand16() & 1;
        if (var) sub_080DF720(ch);
    }
}

static void sub_080E2834(struct CrazyHand *ch)
{
    struct CrazyHand *chAlias = ch;
    struct CrazyHand *ch2 = ch->unkB4;

    if (ch->obj2.base.xspeed < 0)
    {
        ch->obj2.base.xspeed += 0x4C;
        if (ch->obj2.base.xspeed > 0)
            ch->obj2.base.xspeed = 0;
    }
    else
    {
        ch->obj2.base.xspeed -= 0x4C;
        if (ch->obj2.base.xspeed < 0)
            ch->obj2.base.xspeed = 0;
    }
    if (ch->obj2.base.yspeed < 0)
    {
        ch->obj2.base.yspeed += 0x4C;
        if (ch->obj2.base.yspeed > 0)
            ch->obj2.base.yspeed = 0;
    }
    else
    {
        ch->obj2.base.yspeed -= 0x4C;
        if (ch->obj2.base.yspeed < 0)
            ch->obj2.base.yspeed = 0;
    }
    ch->obj2.base.flags |= 4;
    if (!chAlias->unkB4)
    {
        chAlias->unkB8 = 0;
        sub_080DF894(ch);
    }
    else if (ch2->unkB8 == 1)
        sub_080E3D34(ch);
}

static void sub_080E28CC(struct CrazyHand *ch)
{
    struct CrazyHand *ch2 = ch->unkB4;

    if (!ch2)
        sub_080E3D90(ch);
    else
    {
        ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
        ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
        if (ch->obj2.unk83 == 0x12 || ch->obj2.unk9F)
        {
            s8 var;
            s32 lhs, rhs;

            if (ch->obj2.object->subtype1)
                var = -0x60;
            else
                var = 0x60;
            ++ch->obj2.unk9E;
            lhs = ch->obj2.base.y & ~0x3FF;
            rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
            if (lhs > rhs)
            {
                if (ch->obj2.base.counter > 0)
                {
                    ch->obj2.base.yspeed += ch->obj2.base.counter;
                    if (ch->obj2.base.yspeed > 0x180)
                        ch->obj2.base.yspeed = 0x180;
                }
                else
                {
                    ch->obj2.base.yspeed += ch->obj2.base.counter;
                    if (ch->obj2.base.yspeed < -0x180)
                        ch->obj2.base.yspeed = -0x180;
                }
            }
            else if (lhs < rhs)
            {
                if (ch->obj2.base.counter < 0)
                {
                    ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
                    if (ch->obj2.base.yspeed > 0x180)
                        ch->obj2.base.yspeed = 0x180;
                }
                else
                {
                    ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter;
                    if (ch->obj2.base.yspeed < -0x180)
                        ch->obj2.base.yspeed = -0x180;
                }
            }
            else
            {
                if (ch->obj2.base.yspeed < 0)
                {
                    ch->obj2.base.yspeed += 0x10;
                    if (ch->obj2.base.yspeed > 0)
                        ch->obj2.base.yspeed = 0;
                }
                else
                {
                    ch->obj2.base.yspeed -= 0x10;
                    if (ch->obj2.base.yspeed < 0)
                        ch->obj2.base.yspeed = 0;
                }
            }
            lhs = ch->obj2.base.x & ~0x3FF;
            rhs = ((ch->obj2.unkA0 + var) * 0x100) & ~0x3FF;
            if (lhs < rhs)
            {
                ch->obj2.base.flags &= ~1;
                ch->obj2.base.xspeed += 0x30;
                if (ch->obj2.base.xspeed > 0x180)
                    ch->obj2.base.xspeed = 0x180;
                else if (ch->obj2.base.xspeed < -0x180)
                    ch->obj2.base.xspeed = -0x180;
            }
            else if (lhs > rhs)
            {
                ch->obj2.base.flags |= 1;
                if (ch->obj2.base.flags & 1)
                {
                    ch->obj2.base.xspeed -= 0x30;
                    if (ch->obj2.base.xspeed < -0x180)
                        ch->obj2.base.xspeed = -0x180;
                    else if (ch->obj2.base.xspeed > 0x180)
                        ch->obj2.base.xspeed = 0x180;
                }
                else
                {
                    ch->obj2.base.xspeed += 0x30;
                    if (ch->obj2.base.xspeed > 0x180)
                        ch->obj2.base.xspeed = 0x180;
                    else if (ch->obj2.base.xspeed < -0x180)
                        ch->obj2.base.xspeed = -0x180;
                }
            }
            else
            {
                if (ch->obj2.base.xspeed < 0)
                {
                    ch->obj2.base.xspeed += 0x18;
                    if (ch->obj2.base.xspeed > 0)
                        ch->obj2.base.xspeed = 0;
                }
                else
                {
                    ch->obj2.base.xspeed -= 0x18;
                    if (ch->obj2.base.xspeed < 0)
                        ch->obj2.base.xspeed = 0;
                }
            }
            if (ch->obj2.object->subtype1)
            {
                ch->obj2.base.flags &= ~1;
                if (ch->obj2.base.x < (ch->obj2.unkA4 + 0xC) * 0x100)
                    ch->obj2.base.xspeed = 0;
            }
            else
            {
                ch->obj2.base.flags |= 1;
                if (ch->obj2.base.x > (ch->obj2.unkA8 - 0xC) * 0x100)
                    ch->obj2.base.xspeed = 0;
            }
            if (ch->obj2.unk9F == 1)
            {
                if (++ch->obj2.base.counter > 0x60)
                    ch->obj2.base.counter = 0x60;
                if ((ch->obj2.base.y & ~0x7FF) == (ch2->obj2.base.y & ~0x7FF)
                    && abs(ch->obj2.base.x - ch2->obj2.base.x) > 0x6000)
                {
                    ch->obj2.base.xspeed = 0;
                    ch->obj2.base.yspeed = 0;
                    ch->obj2.unk83 = 0x13;
                    ch->obj2.unk9F = 0;
                }
            }
            else
                --ch->obj2.unk9F;
            if (ch->obj2.unk9F) return;
        }
        if (ch->obj2.unk83 == 0x13 && ch2->obj2.unk83 == 0x13)
        {
            sub_080E2BE8(ch);
            sub_080E2BE8(ch2);
        }
    }
}

static void sub_080E2BE8(struct CrazyHand *ch)
{
    struct CrazyHand *ch2 = ch->unkB4;

    ObjectSetFunc(ch, 0x14, sub_080E2C78);
    ch->obj2.base.xspeed = -0x80;
    ch->obj2.base.yspeed = 0;
    if (ch->obj2.base.flags & 1)
        ch->obj2.base.xspeed = -ch->obj2.base.xspeed;
    ch->obj2.unkA0 = abs(ch->obj2.base.x - ch2->obj2.base.x) >> 8;
    ch->obj2.unkA0 >>= 1;
    if (ch->obj2.object->subtype1)
        ch->obj2.unkA0 += ch->obj2.base.x >> 8;
    else
        ch->obj2.unkA0 = (ch->obj2.base.x >> 8) - ch->obj2.unkA0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.unk68 &= ~7;
    ch->obj2.base.unk68 |= 2;
}

static void sub_080E2C78(struct CrazyHand *ch)
{
    if (ch->obj2.base.counter < 0x10)
    {
        if (ch->obj2.base.counter > 7)
        {
            ch->obj2.base.objBase54 = gUnk_08356A04[(ch->obj2.base.counter - 8) >> 1];
            ch->obj2.base.objBase55 = gUnk_08356A04[((ch->obj2.base.counter - 8) >> 1) + 1];
            ch->obj2.base.xspeed = 0;
        }
        ++ch->obj2.base.counter;
    }
    else
    {
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x68;
            if (ch->obj2.base.xspeed < -0x500)
                ch->obj2.base.xspeed = -0x500;
            else if (ch->obj2.base.xspeed > 0x500)
                ch->obj2.base.xspeed = 0x500;
        }
        else
        {
            ch->obj2.base.xspeed += 0x68;
            if (ch->obj2.base.xspeed > 0x500)
                ch->obj2.base.xspeed = 0x500;
            else if (ch->obj2.base.xspeed < -0x500)
                ch->obj2.base.xspeed = -0x500;
        }
        if (ch->obj2.object->subtype1)
        {
            if (ch->obj2.unkA0 < (ch->obj2.base.x + ch->obj2.base.xspeed) >> 8)
            {
                ch->obj2.base.x = ch->obj2.unkA0 * 0x100;
                ch->obj2.base.xspeed = 0;
                sub_080E2D84(ch);
            }
        }
        else
        {
            if (ch->obj2.unkA0 > (ch->obj2.base.x + ch->obj2.base.xspeed) >> 8)
            {
                ch->obj2.base.x = ch->obj2.unkA0 * 0x100;
                ch->obj2.base.xspeed = 0;
                sub_080E2D84(ch);
            }
        }
    }
}

static void sub_080E2D84(struct CrazyHand *ch)
{
    struct CrazyHand *chAlias = ch;

    ObjectSetFunc(ch, 0x14, sub_080E2E94);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    if (ch->obj2.subtype)
        ch->obj2.unk9E = 0x14;
    else
        ch->obj2.unk9E = 0x20;
    if (chAlias->unkB4)
    {
        if (ch->obj2.object->subtype1)
            sub_080A8D18(&ch->obj2, 0, 0x10, 3, 0);
        else
            sub_080A8D18(&ch->obj2, 0, -0x28, 2, 0);
        sub_0806FE64(3, &ch->obj2.base);
        PlaySfx(&ch->obj2.base, 404);
        ch->obj2.base.unk68 &= ~7;
    }
}

#define Macro_080E2E94(ch) \
({ \
    struct CrazyHand *_r4 = (ch)->unkB4; \
 \
    ObjectSetFunc(ch, 0x12, sub_080E28CC); \
    (ch)->obj2.kirby3 = sub_0803D368(&(ch)->obj2.base); \
    _r4->obj2.kirby3 = (ch)->obj2.kirby3; \
    (ch)->obj2.base.flags |= 0x100; \
    (ch)->obj2.unk9F = 0x5A; \
    (ch)->obj2.base.counter = 8; \
    sub_0803E2B0(&(ch)->obj2.base, -0xC, -0x20, 4, 4); \
})

static void sub_080E2E94(struct CrazyHand *ch)
{
    struct CrazyHand *chAlias = ch, *ch2 = ch->unkB4;

    if (ch->obj2.base.counter < 8)
    {
        ch->obj2.base.objBase54 = gUnk_08356A14[ch->obj2.base.counter];
        if (ch->unkB4)
            ch2->obj2.base.objBase54 = ch->obj2.base.objBase54;
    }
    if (ch->obj2.base.counter >= ch->obj2.unk9E)
    {
        ++chAlias->unkBA;
        if (chAlias->unkB4)
        {
            ch2->unkBA = chAlias->unkBA;
            if (chAlias->unkBA < 3 && Rand16() & 1)
            {
                Macro_080E2E94(ch);
                Macro_080E2E94(ch2);
                ch->obj2.unk83 = 0x13;
                ch->obj2.unk9F = 0x2D;
                ch2->obj2.unk83 = 0x13;
                ch2->obj2.unk9F = 0x2D;
                return;
            }
        }
        sub_080E3D90(ch);
    }
    else
        ++ch->obj2.base.counter;
}

static void sub_080E2FF8(struct CrazyHand *ch)
{
    s32 lhs, rhs;

    ++ch->obj2.unk9E;
    lhs = ch->obj2.base.y & ~0x3FF;
    rhs = (ch->obj2.unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        ch->obj2.base.yspeed += 0x30;
        if (ch->obj2.base.yspeed > 0x200)
            ch->obj2.base.yspeed = 0x200;
    }
    else if (lhs < rhs)
    {
        ch->obj2.base.yspeed -= 0x30;
        if (ch->obj2.base.yspeed < -0x200)
            ch->obj2.base.yspeed = -0x200;
    }
    else
    {
        if (ch->obj2.base.yspeed < 0)
        {
            ch->obj2.base.yspeed += 0x20;
            if (ch->obj2.base.yspeed > 0)
                ch->obj2.base.yspeed = 0;
        }
        else
        {
            ch->obj2.base.yspeed -= 0x20;
            if (ch->obj2.base.yspeed < 0)
                ch->obj2.base.yspeed = 0;
        }
    }
    lhs = ch->obj2.base.x & ~0x3FF;
    rhs = (ch->obj2.unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        ch->obj2.base.flags &= ~1;
        ch->obj2.base.xspeed += 0x30;
        if (ch->obj2.base.xspeed > 0x200)
            ch->obj2.base.xspeed = 0x200;
        else if (ch->obj2.base.xspeed < -0x200)
            ch->obj2.base.xspeed = -0x200;
    }
    else if (lhs > rhs)
    {
        ch->obj2.base.flags |= 1;
        if (ch->obj2.base.flags & 1)
        {
            ch->obj2.base.xspeed -= 0x30;
            if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
            else if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
        }
        else
        {
            ch->obj2.base.xspeed += 0x30;
            if (ch->obj2.base.xspeed > 0x200)
                ch->obj2.base.xspeed = 0x200;
            else if (ch->obj2.base.xspeed < -0x200)
                ch->obj2.base.xspeed = -0x200;
        }
    }
    else
    {
        if (ch->obj2.base.xspeed < 0)
        {
            ch->obj2.base.xspeed += 0x20;
            if (ch->obj2.base.xspeed > 0)
                ch->obj2.base.xspeed = 0;
        }
        else
        {
            ch->obj2.base.xspeed -= 0x20;
            if (ch->obj2.base.xspeed < 0)
                ch->obj2.base.xspeed = 0;
        }
    }
    if (ch->obj2.object->subtype1)
        ch->obj2.base.flags &= ~1;
    else
        ch->obj2.base.flags |= 1;
    if (!ch->obj2.unk83)
    {
        ch->obj2.base.flags |= 4;
        if (abs(ch->obj2.unkA0 - (ch->obj2.base.x >> 8)) < 0x10
            && abs(ch->obj2.unkA2 - (ch->obj2.base.y >> 8)) < 0x10)
            sub_080DF894(ch);
    }
    if (ch->obj2.base.flags & 2)
    {
        ch->obj2.unk83 = 0;
        sub_0803E2B0(&ch->obj2.base, -0x10, -0x13, 0x10, 0xC);
    }
}

static void sub_080E31D4(struct CrazyHand *ch, u8 a2)
{
    s32 x = ch->obj2.base.flags & 1 ? (ch->obj2.base.x >> 8) - 0x20 : (ch->obj2.base.x >> 8) + 0x20;
    s32 y = (ch->obj2.base.y >> 8) - 0x10;
    struct Object2 *bullet = CreateObjTemplateAndObj(ch->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MASTER_HAND_BULLET,
        ch->obj2.base.flags & 1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    bullet->base.parent = ch;
}

void *CreateMasterHandBullet(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *bullet = TaskGetStructPtr(t);

    InitObject(bullet, template, a2);
    bullet->base.flags |= 0x10000;
    bullet->base.flags |= 0x40;
    bullet->base.flags |= 0x100;
    bullet->base.flags |= 0x200;
    bullet->base.flags |= 0x4000;
    bullet->base.unkC |= 2;
    bullet->base.unk68 |= 0x100;
    bullet->base.unk5C |= 0x80000;
    bullet->unk9E = 0;
    bullet->unk7C = sub_0809F840;
    sub_0803E2B0(&bullet->base, -4, -6, 8, 6);
    ObjectInitSprite(bullet);
    bullet->base.sprite.unk14 = 0x240;
    sub_080E3370(bullet);
    return bullet;
}

void sub_080E3370(struct Object2 *bullet)
{
    ObjectSetFunc(bullet, 0, sub_080E3DE4);
    if (bullet->object->subtype1)
        bullet->base.flags |= 1;
    switch (bullet->subtype)
    {
    case 0:
        bullet->base.xspeed = 0x580;
        break;
    case 1:
        bullet->base.xspeed = 0x680;
        bullet->unk83 = 1;
        break;
    }
    if (bullet->base.flags & 1)
        bullet->base.xspeed = -bullet->base.xspeed;
    bullet->base.flags |= 0x800;
}

static void sub_080E33E4(struct CrazyHand *ch)
{
    struct Task *t = TaskCreate(sub_080E34C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = ch->obj2.base.x;
    objBase->y = ch->obj2.base.y;
    objBase->parent = ch;
    objBase->counter = 0;
    objBase->roomId = ch->obj2.base.roomId;
    objBase->unk56 = ch->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->unk68 |= 0x20;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    objBase->unk5C |= 0x80000;
    objBase->flags = flags = 0x12010400;
    if (ch->obj2.base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    sub_0803E2B0(objBase, 0, -0x18, 0x24, 0xC);
}

static void sub_080E34C4(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct CrazyHand *ch = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (ch->obj2.base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else
    {
        objBase->x = ch->obj2.base.x;
        objBase->y = ch->obj2.base.y;
        objBase->unk56 = ch->obj2.base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else
        {
            if (ch->obj2.base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (ch->obj2.unk83 == 0xD)
            {
                if (objBase->flags & 0x40000)
                    objBase->flags &= ~0x40000;
                else if (!(objBase->flags & 0x200))
                    SetPointerSomething(objBase);
            }
        }
    }
}

static void sub_080E3610(struct CrazyHand *ch, u8 a2)
{
    struct CrazyHand *chAlias = ch;
    s32 x = 0x40;
    s32 y = ch->obj2.base.y >> 8;
    struct CrazyHand *ch2 = CreateObjTemplateAndObj(ch->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_CRAZY_HAND_2,
        1, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    ch->obj2.base.parent = ch2;
    ch2->obj2.base.parent = chAlias;
    chAlias->unkB4 = ch2;
    ch2->unkB4 = chAlias;
}

static void sub_080E36C4(struct CrazyHand *ch)
{
    ch->obj2.base.flags |= 4;
    if (ch->obj2.type == OBJ_CRAZY_HAND_1)
    {
        if (ch->obj2.base.x + ch->obj2.base.xspeed <= 0xC800)
        {
            ch->obj2.base.x = 0xC800;
            ch->obj2.base.xspeed = 0;
            sub_080E3734(ch);
            sub_080E3610(ch, ch->obj2.object->subtype2);
        }
    }
    else
    {
        if (ch->obj2.base.x + ch->obj2.base.xspeed >= 0x4000)
        {
            ch->obj2.base.x = 0x4000;
            ch->obj2.base.xspeed = 0;
            sub_080E3734(ch);
        }
    }
}

static void sub_080E3734(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0, sub_080E3758);
    ch->obj2.unk85 = 0;
    ch->obj2.base.counter = 0x1E;
}

static void sub_080E3758(struct CrazyHand *ch)
{
    ch->obj2.base.flags |= 4;
    if (ch->obj2.type == OBJ_CRAZY_HAND_1)
    {
        if (!(ch->unkB4->obj2.base.flags & 0x200))
        {
            ch->obj2.base.flags &= ~0x200;
            ch->obj2.unk85 = 3;
            sub_080DF894(ch);
        }
    }
    else if (!--ch->obj2.base.counter)
    {
        ch->obj2.base.flags &= ~0x200;
        ch->obj2.unk85 = 0;
        sub_080DF894(ch);
    }
}

static void sub_080E37C4(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0, sub_080DF4C0);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x40;
}

static void sub_080E37F0(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 2, sub_080DFC3C);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    if (ch->obj2.subtype)
        ch->obj2.base.counter = 0x14;
    else
        ch->obj2.base.counter = 0x18;
    ch->obj2.unk85 = 0;
    ch->obj2.base.unk68 &= ~7;
    ch->obj2.base.unk68 |= 2;
}

static void sub_080E3844(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 3, sub_080DFDE0);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.base.counter = 0x26;
    ch->obj2.unk85 = 0;
    ch->obj2.base.unk68 &= ~7;
}

static void sub_080E388C(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 4, sub_080DFE40);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unk85 = 0;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
}

static void sub_080E38E0(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, -1, sub_080E0318);
    ch->obj2.unk85 = 0;
    ch->obj2.unk9F = 0;
    ch->obj2.base.counter = 8;
    ch->obj2.base.flags &= ~2;
    ch->obj2.base.flags &= ~4;
}

static void sub_080E3918(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 8, sub_080E0B44);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unk85 = 0;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
}

static void sub_080E396C(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0, sub_080E0D40);
    ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
    ch->obj2.base.flags |= 0x100;
    ch->obj2.unkA0 = ch->obj2.kirby3->base.base.base.x >> 8;
    ch->obj2.unkA2 = ch->obj2.kirby3->base.base.base.y >> 8;
    ch->obj2.unk9F = 0;
    ch->obj2.base.counter = 8;
    ch->obj2.base.flags &= ~2;
}

static void sub_080E39C4(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, -1, sub_080E0FC4);
    ch->obj2.unk9F = 0;
    ch->obj2.base.counter = 8;
    ch->obj2.base.flags &= ~2;
    ch->obj2.base.flags &= ~4;
}

static void sub_080E39F8(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0xA, sub_080E3A4C);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.unk9F = 0;
    ch->obj2.unk9E = 0;
    ch->obj2.base.flags &= ~2;
    if (ch->obj2.subtype)
        ch->obj2.base.counter = 0x18;
    else
        ch->obj2.base.counter = 0x30;
    ch->obj2.base.unk68 &= ~7;
}

static void sub_080E3A4C(struct CrazyHand *ch)
{
    if (ch->obj2.unk9E < 8)
    {
        ch->obj2.base.objBase55 = gUnk_08356A04[(ch->obj2.unk9E >> 1) + 1];
        ++ch->obj2.unk9E;
    }
    if (!--ch->obj2.base.counter)
        sub_080E3A94(ch);
}

static void sub_080E3A94(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0xB, sub_080E1604);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
}

static void sub_080E3AE0(struct CrazyHand *ch)
{
    struct Kirby *kirby = ch->obj2.kirby3;

    if (ch->obj2.base.unkC & 0x80 || !kirby->unk110)
    {
        ch->obj2.base.unkC &= ~0x80;
        sub_080E25B4(ch);
    }
    else
    {
        ch->obj2.base.counter = ch->obj2.unk80;
        if (ch->obj2.base.flags & 2)
            sub_080E3B2C(ch);
    }
}

static void sub_080E3B2C(struct CrazyHand *ch)
{
    ch->obj2.kirby3->unk110 = gUnk_083569DC;
    ObjectSetFunc(ch, 0xF, sub_080E1CCC);
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unkA0 = (gCurLevelInfo[ch->obj2.base.unk56].unkC + 0x7800) >> 8;
    ch->obj2.unkA2 = ch->obj2.object->y;
}

static void sub_080E3B9C(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0x10, sub_080E1EC0);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.counter = 8;
    ch->obj2.unk9E = 0;
}

static void sub_080E3BD0(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0x10, sub_080E2024);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.base.counter = 8;
    ch->obj2.unk9E = 0;
}

static void sub_080E3C0C(struct CrazyHand *ch)
{
    ch->obj2.kirby3->unk110 = gUnk_083569EC;
    ObjectSetFunc(ch, 0x11, sub_080E20B4);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
}

static void sub_080E3C6C(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0xE, sub_080E22EC);
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
    sub_0803E2B0(&ch->obj2.base, -0x10, -0xC, 8, 0xC);
}

static void sub_080E3CC4(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0x11, sub_080E23B8);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
}

static void sub_080E3D10(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0, sub_080E2834);
    ch->unkB8 = 1;
    ch->unkBA = 0;
}

static void sub_080E3D34(struct CrazyHand *ch)
{
    struct CrazyHand *ch2 = ch->unkB4;

    ObjectSetFunc(ch, 0x12, sub_080E28CC);
    ch->obj2.kirby3 = sub_0803D368(&ch->obj2.base);
    ch2->obj2.kirby3 = ch->obj2.kirby3;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.unk9F = 0x5A;
    ch->obj2.base.counter = 8;
    sub_0803E2B0(&ch->obj2.base, -0xC, -0x20, 4, 4);
}

static void sub_080E3D90(struct CrazyHand *ch)
{
    ObjectSetFunc(ch, 0x15, sub_080E2FF8);
    ch->obj2.base.xspeed = 0;
    ch->obj2.base.yspeed = 0;
    ch->unkB8 = 0;
    ch->obj2.base.flags |= 0x100;
    ch->obj2.base.flags &= ~2;
    ch->obj2.unkA0 = ch->obj2.object->x;
    ch->obj2.unkA2 = ch->obj2.object->y;
}

static void sub_080E3DE4(struct Object2 *bullet)
{
    if (bullet->base.unk1 == 8)
        sub_080E3DF8(bullet);
}

static void sub_080E3DF8(struct Object2 *bullet)
{
    ObjectSetFunc(bullet, 1, sub_080E3E24);
    bullet->base.flags &= ~0x800;
    bullet->base.flags &= ~0x200;
}

static void sub_080E3E24(struct Object2 *bullet)
{
    bullet->base.flags |= 4;
}

static void sub_080E3E30(struct Task *t)
{
    struct CrazyHand *ch = TaskGetStructPtr(t), *ch2 = ch->unkB4;

    if (ch2)
    {
        ch2->obj2.subtype = 1;
        ch2->unkB4 = NULL;
        ch2->obj2.base.parent = NULL;
    }
    ObjectDestroy(t);
}
