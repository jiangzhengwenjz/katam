#include "global.h"
#include "data.h"
#include "functions.h"
#include "dark_mind.h"
#include "task.h"
#include "code_08002848.h"

void sub_08100F18(struct DarkMind *);
void sub_08101630(struct DarkMind *);
void sub_0810181C(struct DarkMind *);
void sub_08101968(struct DarkMind *);
void sub_08101A40(struct DarkMind *);
void sub_08102938(struct DarkMind *);
void sub_081030A8(struct DarkMind *);
void sub_08103A00(struct DarkMind *);
void sub_08103FC0(struct DarkMind *);
void sub_081044D0(struct DarkMind *);
void sub_08104E04(struct Object2 *);
struct Object4 *sub_081055B8(struct Object2 *);
void sub_081059A8(struct DarkMind *);
struct ObjectBase *sub_08107A48(struct Object2 *);
void sub_081099D4(struct Object2 *);
void sub_08109B64(struct DarkMind *);
void sub_08109B98(struct DarkMind *);
void sub_08109BD0(struct DarkMind *);
void sub_08109C40(struct Object2 *);
void sub_08109C8C(struct DarkMind *);
void sub_08109CB4(struct Object2 *);
void sub_08109D98(struct Object2 *);

#define DarkMindSetFunc(dm, param, func) ObjectSetFunc(&(dm)->unk0, (param), (void *)(func))

struct Object2 *CreateDarkMind(struct Object *r6, u8 r4_)
{
    u16 r4;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct DarkMind), 0x1000, 0x10, ObjectDestroy);
    struct DarkMind *r0, *r5 = TaskGetStructPtr(task, r0);

    InitObject(&r5->unk0, r6, r4_);
    if (gUnk_0203AD10 & 4)
        r5->unk0.subtype = 3;
    r5->unk0.base.unkC |= 1;
    r5->unk0.base.unkC |= 4;
    r5->unk0.base.flags |= 0x2000000;
    r5->unk0.base.flags |= 0x200;
    r5->unk0.base.flags |= 0x100;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.unk80 = gUnk_08351608[r5->unk0.subtype][gUnk_0203AD30 - 1];
    r5->unkD4 = 0;
    r5->unkB4 = 0;
    r5->unkB8 = 0;
    r5->unkC8 = 0;
    r5->unkBC = 0;
    r5->unkC0 = 0;
    r5->unkC4 = 0;
    r5->unkCC = 0;
    r5->unkD5 = 0;
    r5->unkD6 = 0;
    r5->unkD8 = 0;
    r5->unkDA = 0;
    r5->unkDB = 0;
    r5->unkDC = r5->unk0.unk80;
    r5->unkDE = 0;
    r5->unkE2 = 0;
    r5->unkE3 = 0;
    r5->unk0.base.flags |= 1;
    r5->unk0.base.unk5C &= ~7;
    r5->unk0.base.unk5C |= 2 | 1;
    r5->unk0.base.unk5C |= 0x100000 | 0x8000 | 0x80 | 0x20;
    sub_0803E2B0(&r5->unk0.base, -28, -24, 28, 18);
    sub_0803E308(&r5->unk0.base, -40, -60, 60, 20);
    ObjectInitSprite(&r5->unk0);
    r4 = gCurLevelInfo[r5->unk0.base.unk56].unk65E;
    sub_08002A44(r4, sub_08002A0C(r4), 0);
    sub_08002A1C(r4, 0);
    if (gKirbys[gUnk_0203AD3C].base.base.unk60 == r5->unk0.base.unk60 && !(gUnk_0203AD20 & 4))
        m4aSongNumStartOrChange(sub_08002A0C(r4));
    r5->unk0.unk9E = 0;
    r5->unk0.unk7C = sub_08104E04;
    sub_081099D4(&r5->unk0);
    return &r5->unk0;
}

void sub_081003EC(struct DarkMind *r5)
{
    struct Kirby *r6 = sub_0803D368(&r5->unk0);
    bool32 r2;
    u8 i;
    struct DarkMind *r8;

    r5->unk0.kirby3 = r6;
    r5->unk0.base.flags |= 4;
    if (!(r6->base.base.unkC & 0x8000)
        && r5->unk0.base.unk60 == r6->base.base.unk60
        && sub_08039430(&r6->base, 
                        r5->unk0.base.x, 
                        r5->unk0.base.y, 
                        r5->unk0.object->unk1A, 
                        r5->unk0.object->unk1C,
                        r5->unk0.object->unk1E,
                        r5->unk0.object->unk20))
    {
        r8 = r5;
        r5->unk0.unkA4 = gCurLevelInfo[r5->unk0.kirby3->base.base.unk56].unkA0 >> 8;
        r5->unk0.unkA6 = gCurLevelInfo[r5->unk0.kirby3->base.base.unk56].unkA4 >> 8;
        r5->unk0.unkA8 = gCurLevelInfo[r5->unk0.kirby3->base.base.unk56].unkA8 >> 8;
        r5->unk0.unkAA = gCurLevelInfo[r5->unk0.kirby3->base.base.unk56].unkAC >> 8;
        r5->unkCC = sub_081055B8(&r5->unk0);
        r2 = FALSE;
        if (!gUnk_0203AD34)
        {
            i = gUnk_0203AD44;
            for (i = gUnk_0203AD44 - 1; i != 0xFF; --i)
                if (gKirbys[i].unk103 == 26)
                    r2 = TRUE;
            if (!r2)
                r8->unkC8 = sub_08107A48(&r5->unk0);
        }
        sub_08109C40(&r5->unk0);
    }
}


void sub_08100538(struct DarkMind *r4)
{
    u8 r1;
    s8 r3;
    struct DarkMind *r5 = r4;
    u8 r6, r7, r8, sb, sl, ip, sp00, sp04, sp08, sp0C, sp10;

    sb = 2;
    r6 = 2;
#ifndef NONMATCHING
    asm(""); // change regalloc
#endif
    ip = 2;
    r7 = 4;
    sp00 = 2;
    sp04 = 2;
    sp08 = 4;
    sl = 4;
    sp0C = 4;
    sp10 = 4;
    r8 = 0;
    r1 = 2;
    r3 = Rand16() & 0x1F;

    switch (r4->unk0.subtype)
    {
    case 0:
        sb = 4;
        ip = 6;
        sp04 = 0;
        sp10 = 0;
        sp0C = 0;
        sl = 0;
        sp08 = 0;
        r7 = 0;
        r6 = 0;
        break;
    case 1:
        r6 = 4;
        ip = 6;
        sp04 = 2;
        sp08 = 2;
        sp10 = 0;
        sp00 = 0;
        sb = 0;
        sl = 0;
        r7 = 0;
        break;
    case 2:
        r6 = 4;
        r7 = 6;
        sp0C = 0;
        sl = 0;
        ip = 0;
        break;
    default:
        sp0C = 0;
        if (r4->unk0.unk80 <= gUnk_08351608[3][gUnk_0203AD30 - 1] >> 1)
        {
            sb = 1;
            r6 = 3;
            ip = 1;
            r7 = 4;
            sp00 = 1;
            sp04 = 1;
            sp08 = 2;
            sl = 4;
            sp10 = 4;
            r8 = 3;
            if (!r5->unkE3) r8 = 12;
        }
        break;
    }
    if ((r3 -= r8) < 0)
    {
        r5->unkE3 = 1;
        sub_08109BD0(r4);
    }
    else if ((r3 -= sb) < 0)
    {
        sub_08103A00(r4);
    }
    else if ((r3 -= r6) < 0)
    {
        sub_08103A00(r4);
        r5->unkDA = 2;
    }
    else if ((r3 -= r1) < 0)
    {
#ifndef NONMATCHING
        asm(""::"r"(r1)); // prevent r1 from being optimized out
#endif
        sub_08103A00(r4);
        r5->unkDA = 3;
    }
    else if ((r3 -= sp04) < 0)
    {
        sub_08103A00(r4);
        r5->unkDA = 5;
    }
    else if ((r3 -= ip) < 0)
    {
        sub_08103FC0(r4);
    }
    else if ((r3 -= r7) < 0)
    {
        sub_08103FC0(r4);
        r5->unkDA = 7;
        r5->unkD8 -= 0x10;
    }
    else if ((r3 -= sp00) < 0)
    {
        sub_08109B64(r4);
    }
    else if ((r3 -= sp08) < 0)
    {
        sub_08109B64(r4);
        r5->unkDA = 9;
    }
    else if ((r3 -= sl) < 0)
    {
        sub_081044D0(r4);
    }
    else if ((r3 -= sp0C) < 0)
    {
        sub_08109B98(r4);
    }
    else if ((r3 -= sp10) < 0)
    {
        sub_08109B98(r4);
        r5->unkDA = 11;
        r5->unkD4 = 4;
    }
    else
    {
        r4->unk0.unk85 = 1;
        r5->unkDA = 0;
        sub_081030A8(r4);
    }
}

void sub_081007A8(struct DarkMind *r3)
{
    switch (r3->unkD5)
    {
    default:
    case 0 ... 2:
        if (Rand16() & 1)
            sub_08101968(r3);
        else
            sub_08100538(r3);
        break;
    case 3:
        if (Rand16() & 7)
            sub_08100538(r3);
        else
        {
            r3->unkD5 = 0;
            sub_08101630(r3);
        }
        break;
    case 5:
        if (Rand16() & 1)
            sub_08101968(r3);
        else
            sub_08101630(r3);
        break;
    }
}

void sub_08100858(struct DarkMind *r3)
{
    u32 r5 = 1;
    struct DarkMind *r4 = r3;
    u16 r2;
#ifdef NONMATCHING
    s32 r0;
#else
    register s32 r0 asm("r0");
#endif

    switch (r3->unkD5)
    {
    default:
    case 0:
    case 1:
        if (Rand16() & 1)
        {
            if (Rand16() & 1)
                sub_08101968(r3);
            else
                sub_08101A40(r3);
        }
        else
            sub_08100538(r3);
        break;
    case 2:
    case 3:
        r2 = Rand16() & 7;
        if (r4->unkD5 == 2)
        {
            r5 = 3;
            r0 = 2;
        }
        else
            r0 = 5;
        if (r2 < r5)
        {
            r3->unk0.unk85 = 0;
            sub_081030A8(r3);
        }
        else if (r2 < (r0 = r5 + r0))
            sub_08100538(r3);
        else if (r2 < ++r0)
        {
            if (r4->unkD5 == 2)
                sub_08101968(r3);
            else
                sub_08101A40(r3);
        }
        else
            sub_08101630(r3);
        break;
    case 4:
    case 5:
        if (Rand16() & 1)
        {
            if (r4->unkD5 == 4)
                sub_08101968(r3);
            else
                sub_08101A40(r3);
        }
        else if (Rand16() & 1)
        {
            if (r4->unkD5 == 4)
                sub_08101A40(r3);
            else
                sub_08101968(r3);
        }
        else
            sub_08101630(r3);
        break;
    }
}

#define Macro_08100BD0() \
({ \
    u16 variable; \
    u16 rand = Rand16(); \
 \
    if (rand < 0x5555) \
        variable = 0; \
    else if (rand < 0xAAAA) \
        variable = 1; \
    else \
        variable = 2; \
    variable; \
})

#define Macro_081009A4(dm) \
({ \
    struct DarkMind *r3; \
 \
    r3 = (dm); \
    r3->unkD4 = Macro_08100BD0(); \
    r3->unkD8 = 0; \
    r3->unkD6 = 0; \
    r3->unkDA = 0; \
    sub_08102938((dm)); \
})

static inline s32 FindIdx(u16 v)
{
    u16 r2;

    for (r2 = 0; r2 < 4; ++r2)
        if (v < 0x3333 * (r2 + 1))
            break;
    return r2;
}

void sub_081009A4(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;
    u16 rand, rand2;
    u32 r3_;
    s32 r0;
    
    switch (r5->unkD5)
    {
    default:
    case 0:
        rand = Rand16();
        switch (FindIdx(rand))
        {
        case 0:
            sub_08101968(r4);
            break;
        case 1:
            sub_08101A40(r4);
            break;
        case 2:
            Macro_081009A4(r4);
            break;
        case 3:
            sub_08100538(r4);
            break;
        case 4:
            r4->unk0.unk85 = 0;
            sub_081030A8(r4);
            break;
        }
        break;
    case 2:
    case 3:
        rand2 = Rand16() & 7;
        r3_ = 1;
        if (r5->unkD5 == 2)
        {
            r3_ = 2;
            r0 = 3;
        }
        else
        {
            r0 = 5;
        }
        if (rand2 < r3_)
        {
            r4->unk0.unk85 = 0;
            sub_081030A8(r4);
        }
        else if (rand2 < ((s32)r3_ + r0))
            sub_08100538(r4);
        else
            Macro_081009A4(r4);
        break;
    case 1:
        if (Rand16() & 7)
        {
            if (Rand16() & 1)
                sub_08100538(r4);
            else
            {
                r4->unk0.unk85 = 0;
                sub_081030A8(r4);
            }
        }
        else
            Macro_081009A4(r4);
        break;
    case 4:
    case 5:
        if (Rand16() & 3)
        {
            Macro_081009A4(r4);
        }
        else if (Rand16() & 1)
            sub_08101A40(r4);
        else
            sub_08101968(r4);
        break;
    }
}

void sub_08100BD0(struct DarkMind *r4)
{
    struct DarkMind *r3;
    struct DarkMind *r5 = r4;
    u16 rand, rand2;
    u32 r6;
#ifdef NONMATCHING
    s32 r0, r3_;
#else
    register s32 r3_ asm("r3"), r0 asm("r0");
#endif

    switch (r5->unkD5)
    {
    default:
    case 0:
        rand = Rand16();
        switch (FindIdx(rand))
        {
        case 0:
            sub_08101968(r4);
            break;
        case 1:
            sub_08101A40(r4);
            break;
        case 2:
            Macro_081009A4(r4);
            break;
        case 3:
            sub_08100538(r4);
            break;
        case 4:
            r4->unk0.unk85 = 0;
            sub_081030A8(r4);
            break;
        }
        break;
    case 2:
    case 3:
        rand2 = Rand16() & 7;
        r6 = 1;
        if (r5->unkD5 == 2)
            r3_ = 4;
        else
            r3_ = 5;
        if (rand2 < r6)
        {
            r4->unk0.unk85 = 0;
            sub_081030A8(r4);
        }
        else if (r0 = r6 + r3_, rand2 < r0)
        {
            sub_08100538(r4);
        }
        else if (rand2 == 7)
        {
            r4->unk0.unk85 = 2;
            r5->unkDA = 15;
            r5->unkD6 = 126;
            r5->unkD8 = 56;
            sub_08102938(r4);
        }
        else
        {
            Macro_081009A4(r4);
        }
        break;
    case 1:
        if (Macro_08100BD0())
        {
            if (Macro_08100BD0())
                sub_08100538(r4);
            else
            {
                r4->unk0.unk85 = 0;
                sub_081030A8(r4);
            }
        }
        else if (Macro_08100BD0())
        {
            r4->unk0.unk85 = 2;
            r5->unkDA = 15;
            r5->unkD6 = 126;
            r5->unkD8 = 56;
            sub_08102938(r4);
        }
        else
        {
            Macro_081009A4(r4);
        }
        break;
    case 4:
    case 5:
        if (Rand16() & 3)
            Macro_081009A4(r4);
        else
            sub_0810181C(r4);
        break;
    case 6:
        sub_08101630(r4);
        break;
    }
}

void sub_08100EA0(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;

    DarkMindSetFunc(r5, 0, sub_08100F18);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.y = -0x3000;
    r4->unk0.base.yspeed = -128;
    r4->unk0.base.counter = 180;
    r4->unk0.unk9F = 0;
    if (r4->unk0.subtype == 3)
        r4->unk0.base.counter = 300;
    r5->unkE0 = 256;
    sub_0803CFC4(r5->unk0.base.unk10.unk1F, 920, 0, -0x18, -0x18, -0x18, 0x100);
}

#define Macro_08100F18(r5) \
({ \
    s16 r3; \
    u8 r6; \
    struct Object5 *r1 = sub_08034E14(&(r5)->unk0); \
 \
    if (r1) r1->unk9 = 0; \
    r3 = ObjTypeAltIdx(&(r5)->unk0); \
    r6 = gCurLevelInfo[(r5)->unk0.base.unk56].unk65E; \
    if (r3 >= 0 && gUnk_08352D80[r3] \
        && !((r5)->unk0.object->unk22 & 4)) \
    { \
        u8 r4; \
 \
        if (!ObjType43To52(&(r5)->unk0)) \
        { \
            for (r4 = 1; r4 < 2; ++r4) \
                sub_08002A44(r6, sub_08002A2C(r6, r4 - 1), r4); \
            sub_08002A44(r6, sub_08002A0C(r6), 0); \
        } \
        sub_08002A1C(r6, gUnk_08352D80[r3]); \
        if (gKirbys[gUnk_0203AD3C].base.base.unk60 == (r5)->unk0.base.unk60 && !(gUnk_0203AD20 & 4)) \
            m4aSongNumStartOrChange(sub_08002A0C(r6)); \
    } \
})

void sub_08100F18(struct DarkMind *r5)
{
    u8 r4;
    struct DarkMind *sb = r5;

    r5->unk0.base.flags |= 4;
    if ((r4 = r5->unk0.unk9F))
    {
        r5->unk0.base.yspeed = gUnk_08357256[(r5->unk0.unk9E >> 4) & 3];
        ++r5->unk0.unk9E;
        if (r5->unk0.subtype <= 2)
        {
            if (r5->unk0.base.counter == 180)
                Macro_08100F18(r5);
            if (r5->unk0.base.counter == 150)
                sub_081059A8(r5);
            if (r5->unk0.base.counter <= 180 && sb->unkE0)
            {
                sub_0803CFC4(r5->unk0.base.unk10.unk1F, 0x398, 0, -24, -24, -24, sb->unkE0);
                sb->unkE0 -= 4;
            }
        }
        else
        {
            if (r5->unk0.unk83 == 7 && r5->unk0.base.flags & 2)
            {
                r5->unk0.unk83 = 8;
                sub_080860A8(&r5->unk0, gUnk_08357260);
                PlaySfx(&r5->unk0.base, 434);
            }
            if (r5->unk0.base.counter <= 232)
                if (r5->unk0.base.counter <= 180
                    && sb->unkE0)
                {
                    sub_0803CFC4(r5->unk0.base.unk10.unk1F, 0x398, 0, -24, -24, -24, sb->unkE0);
                    sb->unkE0 -= 8;
                }
            if (r5->unk0.base.counter == 200)
            {
                r5->unk0.unk83 = 7;
                r5->unk0.base.flags &= ~2;
            }
            if (r5->unk0.base.counter == 100)
            {
                r5->unk0.unk83 = 11;
                r5->unk0.base.flags &= ~2;
            }
            if (r5->unk0.base.counter == 96)
            {
                r5->unk0.unk83 = 0;
                r5->unk0.base.flags &= ~2;
            }
            if (r5->unk0.base.counter == 180)
            {
                Macro_08100F18(r5);
                if (r5->unk0.base.counter == 180)
                    sub_081059A8(r5);
            }
        }
        if (!--r5->unk0.base.counter)
        {
            r5->unk0.base.flags &= ~0x200;
            sub_08101630(r5);
        }
    }
    else
    {
        if (r5->unk0.base.y > 0x4000)
        {
            if (r5->unk0.base.yspeed < 0)
            {
                r5->unk0.base.yspeed += 4;
                if (r5->unk0.base.yspeed > 0)
                    r5->unk0.base.yspeed = r4;
            }
            else
            {
                r5->unk0.base.yspeed -= 4;
                if (r5->unk0.base.yspeed < 0)
                    r5->unk0.base.yspeed = r4;
            }
            if (!r5->unk0.base.yspeed)
                r5->unk0.unk9F = 1;
        }
    }
}

void sub_08101350(struct DarkMind *r4)
{
    r4->unk0.unk7C = 0;
    if (r4->unk0.object->subtype2 == 3)
        sub_08109CB4(&r4->unk0);
    else
    {
        DarkMindSetFunc(r4, 0, sub_08109C8C);
        r4->unk0.base.flags |= 0x200;
        r4->unk0.base.counter = 60;
        if (r4->unk0.base.xspeed > 0x80)
            r4->unk0.base.xspeed = 0x80;
        else if (r4->unk0.base.xspeed < -0x80)
            r4->unk0.base.xspeed = -0x80;
        if (r4->unk0.base.yspeed > 0x80)
            r4->unk0.base.yspeed = 0x80;
        else if (r4->unk0.base.yspeed < -0x80)
            r4->unk0.base.yspeed = -0x80;
    }
}

#define Macro_081013C8(dm, r3) \
({ \
    (r3) = sub_0808AE30(&(dm)->unk0, 0, 0x292, Rand16() & 3); \
 \
    (r3)->unk34 += (0x40 - (Rand16() & 0x7F)) << 8; \
    (r3)->unk38 += (0x20 - (Rand16() & 0x3F)) << 8; \
})

void sub_081013C8(struct DarkMind *r7)
{
    struct DarkMind *r8 = r7;
    struct Object4 *r3;

    if (r7->unk0.unk9F == 32 || r7->unk0.unk9F == 64
        || r7->unk0.unk9F == 94 || r7->unk0.unk9F == 124
        || r7->unk0.unk9F == 148 || r7->unk0.unk9F == 168
        || r7->unk0.unk9F == 186 || r7->unk0.unk9F == 202
        || r7->unk0.unk9F == 216 || r7->unk0.unk9F == 230
        || r7->unk0.unk9F == 240 || r7->unk0.unk9F == 248
        || r7->unk0.unk9F == 255)
        Macro_081013C8(r7, r3);
    ++r7->unk0.unk9F;
    if (!(r7->unk0.unk9F & 0x1F))
    {
        if (Rand16() & 1)
            Macro_081013C8(r7, r3);
    }
    if (r7->unk0.base.counter > 255)
    {
        if (++r7->unk0.unk9E == 16)
        {
            r8->unkD0 = sub_08086938(&r7->unk0, 1);
            sub_08109D98(&r7->unk0);
            return;
        }
    }
    else
    {
        sub_0803CFC4(r7->unk0.base.unk10.unk1F, 0x398, 0, 31, 31, 31, r7->unk0.base.counter);
        r7->unk0.base.counter += 2;
    }
    if (r7->unk0.base.unk1 == 1)
        r7->unk0.base.flags |= 8;
}

void sub_08101560(struct DarkMind *r7)
{
    struct Object4 *r3;

    if (r7->unk0.unk9F == 32 || r7->unk0.unk9F == 64
        || r7->unk0.unk9F == 94 || r7->unk0.unk9F == 124
        || r7->unk0.unk9F == 148 || r7->unk0.unk9F == 168
        || r7->unk0.unk9F == 186 || r7->unk0.unk9F == 202
        || r7->unk0.unk9F == 216 || r7->unk0.unk9F == 230
        || r7->unk0.unk9F == 240 || r7->unk0.unk9F == 248
        || r7->unk0.unk9F == 255)
        Macro_081013C8(r7, r3);
    ++r7->unk0.unk9F;
    if (++r7->unk0.base.counter > 248)
    {
        sub_080700D8(&r7->unk0);
        r7->unk0.base.flags |= 0x1000;
    }
}
