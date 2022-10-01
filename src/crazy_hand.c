#include "crazy_hand.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "constants/kirby.h"

void sub_080DF5A4(struct CrazyHand *);
void sub_080DF954(struct CrazyHand *);
void sub_080DF9D0(struct CrazyHand *);
void sub_080DFA24(struct CrazyHand *);
void sub_080E003C(struct CrazyHand *);
void sub_080E0098(struct CrazyHand *);
void sub_080E0628(struct CrazyHand *);
void sub_080E08B0(struct CrazyHand *);
void sub_080E1800(struct CrazyHand *);
void sub_080E33E4(struct CrazyHand *);
void sub_080E36C4(struct CrazyHand *);
void sub_080E37C4(struct CrazyHand *);
void sub_080E37F0(struct CrazyHand *);
void sub_080E3844(struct CrazyHand *);
void sub_080E388C(struct CrazyHand *);
void sub_080E38E0(struct CrazyHand *);
void sub_080E396C(struct CrazyHand *);
void sub_080E3D10(struct CrazyHand *);
void sub_080E3E30(struct Task *);

extern const s8 gUnk_08356A04[];

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

void sub_080DF4C0(struct CrazyHand *ch)
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

void sub_080DF5A4(struct CrazyHand *ch)
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

void sub_080DF720(struct CrazyHand *ch)
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

void sub_080DF954(struct CrazyHand *ch)
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

void sub_080DF9D0(struct CrazyHand *ch)
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

void sub_080DFA24(struct CrazyHand *ch)
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

void sub_080DFC3C(struct CrazyHand *ch)
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
            sub_080A8D18(&ch->obj2.base, 0x1E, 8, 0, 8);
            ch->obj2.base.flags ^= 1;
            sub_080A8D18(&ch->obj2.base, 0x1E, 8, 0, 8);
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

void sub_080DFDE0(struct CrazyHand *ch)
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

void sub_080DFE40(struct CrazyHand *ch)
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

void sub_080E003C(struct CrazyHand *ch)
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

void sub_080E0098(struct CrazyHand *ch)
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
            ch->obj2.base.yspeed -= *(vs16 *)&ch->obj2.base.counter; // TODO: a few functions here require the volatile cast to match
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

void sub_080E0318(struct CrazyHand *ch)
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

void sub_080E0628(struct CrazyHand *ch)
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
