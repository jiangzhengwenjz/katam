#include "global.h"
#include "data.h"
#include "functions.h"
#include "dark_mind.h"
#include "task.h"
#include "code_08002848.h"

void sub_08100F18(struct DarkMind *);
void sub_08101630(struct DarkMind *);
void sub_08101784(struct DarkMind *);
void sub_0810181C(struct DarkMind *);
void sub_08101968(struct DarkMind *);
void sub_08101A40(struct DarkMind *);
void sub_08101B28(struct DarkMind *);
void sub_08101E38(struct DarkMind *);
void sub_08102104(struct DarkMind *);
void sub_08102414(struct DarkMind *);
void sub_081027C0(struct DarkMind *);
void sub_08102938(struct DarkMind *);
void sub_08102A80(struct DarkMind *);
void sub_08102D9C(struct DarkMind *);
void sub_08102F3C(struct DarkMind *);
void sub_08102FD0(struct DarkMind *);
void sub_081030A8(struct DarkMind *);
void sub_08103268(struct DarkMind *);
void sub_081038CC(struct DarkMind *);
void sub_081039AC(struct DarkMind *);
void sub_08103A00(struct DarkMind *);
void sub_08103A64(struct DarkMind *);
void sub_08103AE4(struct DarkMind *);
void sub_08103C68(struct DarkMind *);
void sub_08103CD0(struct DarkMind *);
void sub_08103FC0(struct DarkMind *);
void sub_08104028(struct DarkMind *);
void sub_081042C8(struct DarkMind *);
void sub_081044D0(struct DarkMind *);
void sub_0810451C(struct DarkMind *);
void sub_08104704(struct DarkMind *);
void sub_081049E8(struct DarkMind *);
void sub_08104C80(struct DarkMind *);
void sub_08104E04(struct Object2 *);
void sub_081050E8(struct DarkMind *, u8);
struct Object4 *sub_081055B8(struct Object2 *);
void sub_081059A8(struct DarkMind *);
void sub_08105EC4(struct DarkMind *);
void sub_081060C0(struct DarkMind *, s16, s16, u8);
void sub_081062B4(struct DarkMind *);
struct ObjectBase *sub_08107A48(struct Object2 *);
void sub_081099D4(struct Object2 *);
void sub_08109A00(struct DarkMind *);
void sub_08109A38(struct DarkMind *);
void sub_08109A8C(struct DarkMind *);
void sub_08109AD4(struct DarkMind *);
void sub_08109B1C(struct DarkMind *);
void sub_08109B64(struct DarkMind *);
void sub_08109B98(struct DarkMind *);
void sub_08109BD0(struct DarkMind *);
void sub_08109C40(struct Object2 *);
void sub_08109C8C(struct DarkMind *);
void sub_08109CB4(struct Object2 *);
void sub_08109D98(struct Object2 *);
void sub_08109DC4(struct Object2 *, s16 *, s16 *);
void sub_08103AE4(struct DarkMind *);

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
    r5->unkB4 = NULL;
    r5->unkB8 = NULL;
    r5->unkC8 = NULL;
    r5->unkBC = 0;
    r5->unkC0 = 0;
    r5->unkC4 = 0;
    r5->unkCC = NULL;
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

void sub_08101630(struct DarkMind *r5)
{
    if (r5->unk0.unk80 <= 0)
        sub_08101350(r5);
    else
    {
        r5->unkD5 = 0;
        DarkMindSetFunc(r5, 0, sub_08101784);
        r5->unk0.base.xspeed = 0;
        r5->unk0.base.yspeed = 0;
        r5->unk0.base.flags |= 0x40;
        r5->unk0.kirby3 = sub_0803D368(&r5->unk0);
        if (r5->unk0.base.x > r5->unk0.kirby3->base.base.x)
            r5->unk0.base.flags |= 1;
        else
            r5->unk0.base.flags &= ~1;
        r5->unk0.unkA2 = r5->unk0.base.y >> 8;
        switch (FindIdx(Rand16()))
        {
        case 0:
        case 1:
            r5->unk0.unk9F = 1;
            break;
        case 2:
        case 3:
            r5->unk0.unk9F = 2;
            break;
        case 4:
        default:
            r5->unk0.unk9F = 3;
            break;
        }
        sub_0803E2B0(&r5->unk0.base, -28, -24, 28, 18);
        r5->unk0.unk91 = -8;
        r5->unk0.unk92 = -8;
        r5->unk0.unk93 = -8;
        r5->unk0.unk94 = -8;
        r5->unk0.unk95 = -8;
        r5->unk0.unk96 = -8;
        r5->unk0.unk97 = -32;
    }
}

void sub_08101784(struct DarkMind *r3)
{
    r3->unk0.base.flags |= 4;
    r3->unk0.base.yspeed = gUnk_08357256[(r3->unk0.base.counter >> 4) & 3];
    ++r3->unk0.base.counter;
    if (r3->unk0.unkA2 == (s16)(r3->unk0.base.y >> 8))
    {
        if (!r3->unk0.unk9F)
        {
            r3->unk0.base.yspeed = 0;
            switch (r3->unk0.subtype)
            {
            case 0:
                sub_081007A8(r3);
                break;
            case 1:
                sub_08100858(r3);
                break;
            case 2:
                sub_081009A4(r3);
                break;
            default:
                sub_08100BD0(r3);
                break;
            }
        }
        else
        {
            --r3->unk0.unk9F;
        }
    }
}

void sub_0810181C(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;

    DarkMindSetFunc(r4, 0, sub_08101B28);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
    if (r4->unk0.base.x > r4->unk0.kirby3->base.base.x)
        r4->unk0.base.flags |= 1;
    else
        r4->unk0.base.flags &= ~1;
    r5->unkD5 = 3;
    if (r4->unk0.base.flags & 1)
    {
        struct Kirby *kirby = r4->unk0.kirby3;
        s32 x1 = r4->unk0.base.x, x2 = kirby->base.base.x;

        if (x1 - x2 <= 0 || !r4->unk0.subtype || x1 - x2 < 0x6000)
        {
            r4->unk0.unkA0 = (x2 >> 8) + 108;
            r4->unk0.unk78 = (void *)sub_08101E38;
        }
        else
        {
            r4->unk0.unkA0 = (x2 >> 8) + 96;
            r4->unk0.unkA2 = (r4->unk0.kirby3->base.base.y >> 8) - 48;
            r5->unkD5 = 2;
        }
    }
    else
    {
        struct Kirby *kirby = r4->unk0.kirby3;
        s32 x1 = r4->unk0.base.x, x2 = kirby->base.base.x;

        if (x1 - x2 >= 0 || !r4->unk0.subtype || x1 - x2 > -0x6000)
        {
            r4->unk0.unkA0 = (x2 >> 8) - 108;
            r4->unk0.unk78 = (void *)sub_08102414;
        }
        else
        {
            r4->unk0.unkA0 = (x2 >> 8) - 96;
            r4->unk0.unkA2 = (r4->unk0.kirby3->base.base.y >> 8) - 48;
            r4->unk0.unk78 = (void *)sub_08102104;
            r5->unkD5 = 2;
        }
    }
    sub_0803E2B0(&r4->unk0.base, -28, -24, 28, 18);
    r4->unk0.unk91 = -8;
    r4->unk0.unk92 = -8;
    r4->unk0.unk93 = -8;
    r4->unk0.unk94 = -8;
    r4->unk0.unk95 = -8;
    r4->unk0.unk96 = -8;
    r4->unk0.unk97 = -32;
}

void sub_08101968(struct DarkMind *r5)
{
    r5->unkD5 = 3;
    DarkMindSetFunc(r5, 0, sub_08101B28);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.kirby3 = sub_0803D46C(&r5->unk0);
    if (r5->unk0.base.x > r5->unk0.kirby3->base.base.x)
            r5->unk0.base.flags |= 1;
        else
            r5->unk0.base.flags &= ~1;
    if (r5->unk0.base.flags & 1)
    {
        r5->unk0.unkA0 = (r5->unk0.kirby3->base.base.x >> 8) + 108;
        r5->unk0.unk78 = (void *)sub_08101E38;
    }
    else
    {
        r5->unk0.unkA0 = (r5->unk0.kirby3->base.base.x >> 8) - 108;
        r5->unk0.unk78 = (void *)sub_08102414;
    }
    sub_0803E2B0(&r5->unk0.base, -28, -24, 28, 18);
    r5->unk0.unk91 = -8;
    r5->unk0.unk92 = -8;
    r5->unk0.unk93 = -8;
    r5->unk0.unk94 = -8;
    r5->unk0.unk95 = -8;
    r5->unk0.unk96 = -8;
    r5->unk0.unk97 = -32;
}

void sub_08101A40(struct DarkMind *r5)
{
    r5->unkD5 = 2;
    DarkMindSetFunc(r5, 0, sub_08101B28);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.kirby3 = sub_0803D368(&r5->unk0);
    if (r5->unk0.base.x > r5->unk0.kirby3->base.base.x)
            r5->unk0.base.flags |= 1;
        else
            r5->unk0.base.flags &= ~1;
    if (r5->unk0.base.flags & 1)
    {
        r5->unk0.unkA0 = (r5->unk0.kirby3->base.base.x >> 8) + 96;
        r5->unk0.unkA2 = (r5->unk0.kirby3->base.base.y >> 8) - 48;
    }
    else
    {
        r5->unk0.unkA0 = (r5->unk0.kirby3->base.base.x >> 8) - 96;
        r5->unk0.unkA2 = (r5->unk0.kirby3->base.base.y >> 8) - 48;
        r5->unk0.unk78 = (void *)sub_08102104;
    }
    sub_0803E2B0(&r5->unk0.base, -28, -24, 28, 18);
    r5->unk0.unk91 = -8;
    r5->unk0.unk92 = -8;
    r5->unk0.unk93 = -8;
    r5->unk0.unk94 = -8;
    r5->unk0.unk95 = -8;
    r5->unk0.unk96 = -8;
    r5->unk0.unk97 = -32;
}

void sub_08101B28(struct DarkMind *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 1)
        || r3->unk0.base.x <= r3->unk0.unkA0 << 8)
    {
        if (r3->unk0.base.xspeed < 0)
        {
            r3->unk0.base.xspeed += 24;
            if (r3->unk0.base.xspeed > 0)
                r3->unk0.base.xspeed = 0;
        }
        else
        {
            r3->unk0.base.xspeed -= 24;
            if (r3->unk0.base.xspeed < 0)
                r3->unk0.base.xspeed = 0;
        }
        if (r3->unk0.base.yspeed < 0)
        {
            r3->unk0.base.yspeed += 8;
            if (r3->unk0.base.yspeed > 0)
                r3->unk0.base.yspeed = 0;
        }
        else
        {
            r3->unk0.base.yspeed -= 8;
            if (r3->unk0.base.yspeed < 0)
                r3->unk0.base.yspeed = 0;
        }
        if (r3->unk0.base.unk62 & 1)
            r3->unk0.base.xspeed = 0;
        if (!r3->unk0.base.xspeed)
        {
            switch (r3->unk0.subtype)
            {
            case 0:
                sub_081007A8(r3);
                break;
            case 1:
                sub_08100858(r3);
                break;
            case 2:
                sub_081009A4(r3);
                break;
            default:
                sub_08100BD0(r3);
                break;
            }
            return;
        }
    }
    else
    {
        if (r3->unk0.base.flags & 1)
        {
            r3->unk0.base.xspeed -= 0x20;
            if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
            else if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
        }
        else
        {
            r3->unk0.base.xspeed += 0x20;
            if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
            else if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
        }
        if (r3->unk0.base.y >= r3->unk0.unkA2 << 8)
        {
            if (r3->unk0.base.yspeed < 0)
            {
                r3->unk0.base.yspeed += 8;
                if (r3->unk0.base.yspeed > 0)
                    r3->unk0.base.yspeed = 0;
            }
            else
            {
                r3->unk0.base.yspeed -= 8;
                if (r3->unk0.base.yspeed < 0)
                    r3->unk0.base.yspeed = 0;
            }
        }
        else
        {
            r3->unk0.base.yspeed -= 0x10;
            if (r3->unk0.base.yspeed < -0xA0)
                r3->unk0.base.yspeed = -0xA0;
        }
    }
    if (r3->unk0.base.unk62 & 4)
        r3->unk0.base.yspeed = 0;
}

void sub_08101E38(struct DarkMind *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 2)
        || r3->unk0.base.x >= r3->unk0.unkA0 << 8)
    {
        if (r3->unk0.base.xspeed < 0)
        {
            r3->unk0.base.xspeed += 24;
            if (r3->unk0.base.xspeed > 0)
                r3->unk0.base.xspeed = 0;
        }
        else
        {
            r3->unk0.base.xspeed -= 24;
            if (r3->unk0.base.xspeed < 0)
                r3->unk0.base.xspeed = 0;
        }
        if (r3->unk0.base.yspeed < 0)
        {
            r3->unk0.base.yspeed += 4;
            if (r3->unk0.base.yspeed > 0)
                r3->unk0.base.yspeed = 0;
        }
        else
        {
            r3->unk0.base.yspeed -= 4;
            if (r3->unk0.base.yspeed < 0)
                r3->unk0.base.yspeed = 0;
        }
        if (r3->unk0.base.unk62 & 2)
            r3->unk0.base.xspeed = 0;
        if (!r3->unk0.base.xspeed)
        {
            switch (r3->unk0.subtype)
            {
            case 0:
                sub_081007A8(r3);
                break;
            case 1:
                sub_08100858(r3);
                break;
            case 2:
                sub_081009A4(r3);
                break;
            default:
                sub_08100BD0(r3);
                break;
            }
            return;
        }
    }
    else
    {
        if (r3->unk0.base.flags & 1)
        {
            r3->unk0.base.xspeed += 0x20;
            if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
            else if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
        }
        else
        {
            r3->unk0.base.xspeed -= 0x20;
            if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
            else if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
        }
        r3->unk0.base.yspeed += 8;
        if (r3->unk0.base.yspeed > 0x80)
            r3->unk0.base.yspeed = 0x80;
    }
    if (r3->unk0.base.unk62 & 8)
        r3->unk0.base.yspeed = 0;
}

void sub_08102104(struct DarkMind *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 1)
        || r3->unk0.base.x >= r3->unk0.unkA0 << 8)
    {
        if (r3->unk0.base.xspeed < 0)
        {
            r3->unk0.base.xspeed += 24;
            if (r3->unk0.base.xspeed > 0)
                r3->unk0.base.xspeed = 0;
        }
        else
        {
            r3->unk0.base.xspeed -= 24;
            if (r3->unk0.base.xspeed < 0)
                r3->unk0.base.xspeed = 0;
        }
        if (r3->unk0.base.yspeed < 0)
        {
            r3->unk0.base.yspeed += 8;
            if (r3->unk0.base.yspeed > 0)
                r3->unk0.base.yspeed = 0;
        }
        else
        {
            r3->unk0.base.yspeed -= 8;
            if (r3->unk0.base.yspeed < 0)
                r3->unk0.base.yspeed = 0;
        }
        if (r3->unk0.base.unk62 & 1)
            r3->unk0.base.xspeed = 0;
        if (!r3->unk0.base.xspeed)
        {
            switch (r3->unk0.subtype)
            {
            case 0:
                sub_081007A8(r3);
                break;
            case 1:
                sub_08100858(r3);
                break;
            case 2:
                sub_081009A4(r3);
                break;
            default:
                sub_08100BD0(r3);
                break;
            }
            return;
        }
    }
    else
    {
        if (r3->unk0.base.flags & 1)
        {
            r3->unk0.base.xspeed -= 0x20;
            if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
            else if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
        }
        else
        {
            r3->unk0.base.xspeed += 0x20;
            if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
            else if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
        }
        if (r3->unk0.base.y >= r3->unk0.unkA2 << 8)
        {
            if (r3->unk0.base.yspeed < 0)
            {
                r3->unk0.base.yspeed += 8;
                if (r3->unk0.base.yspeed > 0)
                    r3->unk0.base.yspeed = 0;
            }
            else
            {
                r3->unk0.base.yspeed -= 8;
                if (r3->unk0.base.yspeed < 0)
                    r3->unk0.base.yspeed = 0;
            }
        }
        else
        {
            r3->unk0.base.yspeed -= 0x10;
            if (r3->unk0.base.yspeed < -0xA0)
                r3->unk0.base.yspeed = -0xA0;
        }
    }
    if (r3->unk0.base.unk62 & 4)
        r3->unk0.base.yspeed = 0;
}

void sub_08102414(struct DarkMind *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 2)
        || r3->unk0.base.x <= r3->unk0.unkA0 << 8)
    {
        if (r3->unk0.base.xspeed < 0)
        {
            r3->unk0.base.xspeed += 24;
            if (r3->unk0.base.xspeed > 0)
                r3->unk0.base.xspeed = 0;
        }
        else
        {
            r3->unk0.base.xspeed -= 24;
            if (r3->unk0.base.xspeed < 0)
                r3->unk0.base.xspeed = 0;
        }
        if (r3->unk0.base.yspeed < 0)
        {
            r3->unk0.base.yspeed += 4;
            if (r3->unk0.base.yspeed > 0)
                r3->unk0.base.yspeed = 0;
        }
        else
        {
            r3->unk0.base.yspeed -= 4;
            if (r3->unk0.base.yspeed < 0)
                r3->unk0.base.yspeed = 0;
        }
        if (r3->unk0.base.unk62 & 2)
            r3->unk0.base.xspeed = 0;
        if (!r3->unk0.base.xspeed)
        {
            switch (r3->unk0.subtype)
            {
            case 0:
                sub_081007A8(r3);
                break;
            case 1:
                sub_08100858(r3);
                break;
            case 2:
                sub_081009A4(r3);
                break;
            default:
                sub_08100BD0(r3);
                break;
            }
            return;
        }
    }
    else
    {
        if (r3->unk0.base.flags & 1)
        {
            r3->unk0.base.xspeed += 0x20;
            if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
            else if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
        }
        else
        {
            r3->unk0.base.xspeed -= 0x20;
            if (r3->unk0.base.xspeed > 0x2E0)
                r3->unk0.base.xspeed = 0x2E0;
            else if (r3->unk0.base.xspeed < -0x2E0)
                r3->unk0.base.xspeed = -0x2E0;
        }
        r3->unk0.base.yspeed += 8;
        if (r3->unk0.base.yspeed > 0x80)
            r3->unk0.base.yspeed = 0x80;
    }
    if (r3->unk0.base.unk62 & 8)
        r3->unk0.base.yspeed = 0;
}

void sub_081026E0(struct DarkMind *r5)
{
    DarkMindSetFunc(r5, 5, sub_081027C0);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags |= 0x200;
    r5->unk0.base.flags |= 0x100;
    r5->unk0.base.flags &= ~8;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 90;
    sub_080860A8(&r5->unk0, gUnk_08357260);
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
    r5->unkDA = 0;
    PlaySfx(&r5->unk0.base, 428);
}

void sub_081027C0(struct DarkMind *r5)
{
    struct Sprite sprite;

    if (!(r5->unk0.base.flags & 0x400))
    {
        if (r5->unk0.base.flags & 2)
        {
            r5->unk0.base.flags |= 0x400;
            r5->unk0.base.flags |= 8;
            r5->unk0.base.unkC |= 0x200;
            sub_08157190(r5->unk0.base.unk10.unk0);
            r5->unk0.base.unk10.unk0 = 0;
            sub_081050E8(r5, 0);
            sub_081050E8(r5, 1);
            sub_081050E8(r5, 2);
            sub_081050E8(r5, 3);
            sub_081050E8(r5, 4);
        }
    }
    else
    {
        ++r5->unk0.unk9E;
        if (r5->unk0.unk9E > 20)
        {
            if (gKirbys[gUnk_0203AD3C].base.base.unk60 == r5->unk0.base.unk60)
                sub_0803CFC4(r5->unk0.base.unk10.unk1F, 0x398, 0, -16, -8, 21, 6 * r5->unk0.unk9F);
            ++r5->unk0.unk9F;
            if (r5->unk0.unk9F >= 45)
                r5->unk0.unk9F = 45;
        }
        if (!--r5->unk0.base.counter)
        {
            if (r5->unk0.unk80 <= 0)
            {
                r5->unk0.base.flags |= 0x1000;
            }
            else
            {
                sprite.unk0 = 0x6000000;
                sprite.unkC = 920;
                sprite.unk1A = 0;
                sprite.unk1B = 0xFF;
                sprite.unk10 = 0;
                sprite.unk12 = 0;
                sprite.unk14 = 0;
                sprite.unk16 = 0;
                sprite.unk1C = 16;
                sprite.unk1F = r5->unk0.base.unk10.unk1F & 0xF;
                sprite.unk8 = 0x80000;
                sub_08155128(&sprite);
                sub_0803D280(sprite.unk1F << 4, 0x10);
                r5->unk0.base.flags &= ~0x200;
                r5->unk0.base.flags &= ~0x400;
                r5->unk0.base.flags &= ~8;
                r5->unk0.base.unkC &= ~0x200;
                sub_08102A80(r5);
            }
        }
    }
}

void sub_08102938(struct DarkMind *r4)
{
    bool32 r5 = FALSE;

    if (r4->unkD5 != 6)
        r4->unkD5 = 1;
    if (r4->unk0.unk78 == (void *)sub_08102D9C)
        r5 = TRUE;
    DarkMindSetFunc(r4, 1, sub_08109A00);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    if (r4->unk0.base.flags & 1)
        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
    if (r5)
        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags |= 0x100;
    r4->unk0.base.flags &= ~2;
    r4->unk0.base.counter = 4;
    r4->unk0.unk9E = 0;
    r4->unk0.unk9F = 0;
    sub_0803E2B0(&r4->unk0.base, -28, -24, 28, 18);
    r4->unk0.unk91 = -8;
    r4->unk0.unk92 = -8;
    r4->unk0.unk93 = -8;
    r4->unk0.unk94 = -8;
    r4->unk0.unk95 = -8;
    r4->unk0.unk96 = -8;
    r4->unk0.unk97 = -32;
    PlaySfx(&r4->unk0.base, 423);
}

void sub_08102A80(struct DarkMind *r6)
{
    struct DarkMind *r5 = r6;

    DarkMindSetFunc(r6, 2, sub_08102D9C);
    r6->unk0.base.flags |= 0x40;
    r6->unk0.base.flags |= 0x100;
    r6->unk0.base.flags &= ~2;
    r6->unk0.base.flags &= ~0x400;
    r6->unk0.base.counter = 8;
    r6->unk0.base.xspeed = 0;
    r6->unk0.base.yspeed = 0;
    sub_0803E2B0(&r6->unk0.base, -28, -24, 28, 18);
    r6->unk0.unk91 = -8;
    r6->unk0.unk92 = -8;
    r6->unk0.unk93 = -8;
    r6->unk0.unk94 = -8;
    r6->unk0.unk95 = -8;
    r6->unk0.unk96 = -8;
    r6->unk0.unk97 = -32;
    PlaySfx(&r6->unk0.base, 424);
    if (r5->unkD6)
    {
        r6->unk0.base.x = r5->unkD6 << 8;
        r6->unk0.base.y = r5->unkD8 << 8;
        r5->unkD8 = 0;
        r5->unkD6 = 0;
        if (r5->unkDA == 6)
        {
            if (r6->unk0.kirby3->base.base.x < r6->unk0.base.x)
                r6->unk0.base.flags |= 1;
            else
                r6->unk0.base.flags &= ~1;
        }
        else
        {
            if (r6->unk0.base.x < 0x7E00)
                r6->unk0.base.flags &= ~1;
            else
                r6->unk0.base.flags |= 1;
        }
    }
    else
    {
        r6->unk0.kirby3 = sub_0803D46C(&r6->unk0);
        if (r5->unkD4)
        {
            if (r6->unk0.kirby3->base.base.x
                - gCurLevelInfo[r6->unk0.kirby3->base.base.unk56].unkC
                < 0x7800)
                r6->unk0.base.flags |= 1;
            else
                r6->unk0.base.flags &= ~1;
            if (r6->unk0.kirby3->base.base.y
                - gCurLevelInfo[r6->unk0.kirby3->base.base.unk56].unk10
                < 0x3000)
                r6->unk0.base.y = r6->unk0.kirby3->base.base.y + 0x3000;
            else
                r6->unk0.base.y = r6->unk0.kirby3->base.base.y - 0x3000;
            r6->unk0.base.x = ((Rand16() & 0x7F) + 56) << 8;
            r6->unk0.base.y = ((Rand16() & 0x3F) + 40) << 8;
        }
        else
        {
            if (r6->unk0.kirby3->base.base.x
                - gCurLevelInfo[r6->unk0.kirby3->base.base.unk56].unkC
                < 0x7800)
            {
                r6->unk0.base.flags |= 1;
                r6->unk0.base.x = r6->unk0.kirby3->base.base.x + 0x6000;
            }
            else
            {
                r6->unk0.base.flags &= ~1;
                r6->unk0.base.x = r6->unk0.kirby3->base.base.x - 0x6000;
            }
            if (r6->unk0.kirby3->base.base.y
                - gCurLevelInfo[r6->unk0.kirby3->base.base.unk56].unk10
                < 0x3000)
                r6->unk0.base.y = r6->unk0.kirby3->base.base.y + 0x3000;
            else
                r6->unk0.base.y = r6->unk0.kirby3->base.base.y - 0x3000;
        }
        if ((r6->unk0.unkA4 << 8) + 0x3800 > r6->unk0.base.x)
            r6->unk0.base.x = (r6->unk0.unkA4 << 8) + 0x3800;
        if ((r6->unk0.unkA8 << 8) - 0x3800 < r6->unk0.base.x)
            r6->unk0.base.x = (r6->unk0.unkA8 << 8) - 0x3800;
        if ((r6->unk0.unkA6 << 8) + 0x2800 > r6->unk0.base.y)
            r6->unk0.base.y = (r6->unk0.unkA6 << 8) + 0x2800;
        if ((r6->unk0.unkAA << 8) - 0x5800 < r6->unk0.base.y)
            r6->unk0.base.y = (r6->unk0.unkAA << 8) - 0x5800;
    }
}

void sub_08102D9C(struct DarkMind *r4)
{
    struct DarkMind *r6 = r4;

    if (r4->unk0.unk83 > 2)
    {
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.xspeed = 0;
            if (r4->unkD4)
            {
                if (r4->unkDA == 11)
                {
                    sub_081062B4(r4);
                    switch (r4->unkD4)
                    {
                    case 4:
                        r4->unkD6 = 22;
                        r4->unkD8 = 24;
                        break;
                    case 3:
                        r4->unkD6 = 22;
                        r4->unkD8 = 128;
                        break;
                    case 2:
                        r4->unkD6 = 230;
                        r4->unkD8 = 128;
                        break;
                    case 1:
                        r4->unkD6 = 126;
                        r4->unkD8 = 24;
                        break;
                    }
                }
                else if (r4->unkDA == 10)
                {
                    sub_081062B4(r4);
                    switch (r4->unkD4)
                    {
                    case 2:
                        r4->unkD6 = 22;
                        r4->unkD8 = 24;
                        break;
                    case 1:
                        r4->unkD6 = 126;
                        r4->unkD8 = 24;
                        break;
                    }
                }
                --r6->unkD4;
                sub_08102938(r4);
            }
            else
            {
                switch (r4->unkDA)
                {
                default:
                case 4:
                    switch (r4->unk0.subtype)
                    {
                    case 0:
                        sub_081007A8(r4);
                        break;
                    case 1:
                        sub_08100858(r4);
                        break;
                    case 2:
                        sub_081009A4(r4);
                        break;
                    default:
                        sub_08100BD0(r4);
                        break;
                    }
                    break;
                case 1: case 2:
                case 3: case 5:
                    sub_08102F3C(r4);
                    break;
                case 6: case 7:
                case 8: case 9:
                case 10: case 11:
                case 12: case 13:
                case 15:
                    sub_081030A8(r4);
                    break;
                case 14:
                    sub_081049E8(r4);
                    break;
                }
            }
        }
    }
    else if (r4->unk0.base.flags & 2)
    {
        if (!r4->unkD4)
        {
            r4->unk0.base.unk5C &= ~7;
            r4->unk0.base.unk5C |= 3;
            r4->unk0.base.flags &= ~0x200;
            r4->unk0.unk83 = 4;
        }
        else
            r4->unk0.unk83 = 3;
    }
}

void sub_08102F3C(struct DarkMind *r4)
{
    DarkMindSetFunc(r4, 0, sub_08102FD0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags &= ~2;
    if (r4->unk0.unkA2 < 0x20)
        r4->unk0.unkA2 = 0x20;
    if (r4->unk0.unkA2 > 0x70)
        r4->unk0.unkA2 = 0x70;
    r4->unk0.unk9E = 0;
    r4->unk0.unk9F = 0;
    sub_0803E2B0(&r4->unk0.base, -28, -24, 28, 18);
    r4->unk0.unk91 = -8;
    r4->unk0.unk92 = -8;
    r4->unk0.unk93 = -8;
    r4->unk0.unk94 = -8;
    r4->unk0.unk95 = -8;
    r4->unk0.unk96 = -8;
    r4->unk0.unk97 = -32;
}

void sub_08102FD0(struct DarkMind *r3)
{
    struct DarkMind *r4 = r3;

    r3->unk0.base.flags |= 4;
    if (++r3->unk0.base.counter < 25) return;
    if (r3->unk0.base.flags & 1)
    {
        r3->unk0.base.xspeed -= 8;
        if (r3->unk0.base.xspeed < -10)
            r3->unk0.base.xspeed = -10;
        else if (r3->unk0.base.xspeed > 10)
            r3->unk0.base.xspeed = 10;
    }
    else
    {
        r3->unk0.base.xspeed += 8;
        if (r3->unk0.base.xspeed > 10)
            r3->unk0.base.xspeed = 10;
        else if (r3->unk0.base.xspeed < -10)
            r3->unk0.base.xspeed = -10;
    }
    // if ((r3->unk0.base.yspeed -= 0x100) < -0x160)
    if ((r3->unk0.base.yspeed -= 0x100) << 16 < -0x160 << 16) // invokes undefined behavior after integer promotion
        r3->unk0.base.yspeed = -0x160;
    switch (r4->unkDA)
    {
    case 3:
    case 5:
        if (r3->unk0.base.y >> 8 > 71)
            sub_081030A8(r3);
        break;
    default:
        if (r3->unk0.kirby3->base.base.y <= r3->unk0.base.y
            || r3->unk0.kirby3->base.base.y >> 8 <= 32
            || r3->unk0.base.y >> 8 > 111)
            sub_081030A8(r3);
        break;
    }
}

void sub_081030A8(struct DarkMind *r4)
{
    DarkMindSetFunc(r4, 6, sub_08109A38);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags &= ~2;
    if (r4->unkDA == 13)
        r4->unk0.base.counter = 16;
    else if (r4->unkDA)
        r4->unk0.base.counter = 8;
    else
        r4->unk0.base.counter = 4;
    r4->unk0.unk9E = 0;
    r4->unk0.unk9F = 0;
    sub_0803E2B0(&r4->unk0.base, -28, -24, 28, 18);
    r4->unk0.unk91 = -8;
    r4->unk0.unk92 = -8;
    r4->unk0.unk93 = -8;
    r4->unk0.unk94 = -8;
    r4->unk0.unk95 = -8;
    r4->unk0.unk96 = -8;
    r4->unk0.unk97 = -32;
}

void sub_08103138(struct DarkMind *r4)
{
    struct DarkMind *r6 = r4;

    DarkMindSetFunc(r4, 7, sub_08103268);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags &= ~2;
    r4->unk0.base.counter = 0;
    r4->unk0.unk9E = 0;
    r4->unk0.unk9F = 0;
    PlaySfx(&r4->unk0.base, 425);
    if (r4->unk0.unk85 == 1)
    {
        switch (r6->unkDA)
        {
        case 1: case 2:
        case 3: case 5:
            r4->unk0.unk83 = 9;
            break;
        case 6: case 7:
            if (r4->unk0.base.x > r4->unk0.kirby3->base.base.x)
                r4->unk0.base.flags |= 1;
            else
                r4->unk0.base.flags &= ~1;
            break;
        }
    }
}

void sub_08103268(struct DarkMind *r4)
{
    if (r4->unk0.base.unk1 == 15)
    {
        sub_0803E2B0(&r4->unk0.base, -12, -12, 12, 24);
        r4->unk0.unk91 = 0;
        r4->unk0.unk92 = 0;
        r4->unk0.unk93 = 0;
        r4->unk0.unk94 = 0;
        r4->unk0.unk95 = 0;
        r4->unk0.unk96 = 0;
        r4->unk0.unk97 = -10;
        r4->unk0.base.unk5C &= ~7;
        r4->unk0.base.unk5C |= 3;
    }
    if (r4->unk0.base.flags & 2)
    {
        switch (r4->unk0.unk85)
        {
        case 0:
            sub_08109A8C(r4);
            break;
        case 1:
            switch (r4->unkDA)
            {
            case 0:
                sub_081038CC(r4);
                break;
            case 1: case 2:
                sub_08103A64(r4);
                break;
            case 3:
                sub_08103C68(r4);
                break;
            case 5:
                sub_08109B1C(r4);
                break;
            case 6: case 7:
                sub_08104028(r4);
                break;
            case 8: case 9:
                sub_081042C8(r4);
                break;
            case 12:
                sub_0810451C(r4);
                break;
            case 10: case 11:
                sub_08104704(r4);
                break;
            }
            break;
        case 2:
            sub_08104C80(r4);
            break;
        }
    }
}

void sub_08103380(struct DarkMind *r1)
{
    if (!r1->unkDB && !--r1->unk0.base.counter)
    {
        if (r1->unkD4 || r1->unkDA)
        {
            r1->unkDA = 0;
            r1->unkD8 = 0;
            r1->unkD6 = 0;
            sub_08102938(r1);
        }
        else
        {
            switch (r1->unk0.subtype)
            {
            case 0:
                sub_081007A8(r1);
                break;
            case 1:
                sub_08100858(r1);
                break;
            case 2:
                sub_081009A4(r1);
                break;
            default:
                sub_08100BD0(r1);
                break;
            }
        }
    }
}

void sub_08103404(struct DarkMind *r5)
{
    struct DarkMind *r6 = r5;
    s16 v1, v2;

    r5->unk0.base.flags |= 4;
    if (r5->unk0.base.counter)
    {
        r5->unk0.base.unk54 = gUnk_08357288[r5->unk0.unk9E >> 1];
        r5->unkCC->unk40 = gUnk_08357288[r5->unk0.unk9E >> 1];
        ++r5->unk0.unk9E;
        r5->unk0.unk9E &= 7;
        if (!r5->unkDB && !r5->unk0.unk9E)
            PlaySfx(&r5->unk0.base, 429);
        r6->unkB4->unkA0 += 0x100;
        if (r6->unkB4->unkA0 > 0x5000)
            r6->unkB4->unkA0 = 0x5000;
        r6->unkB4->unkA2 += 2;
        if (r6->unkB4->unkA2 > 0x1A)
            r6->unkB4->unkA2 = 0x1A;
        r6->unkB8->unkA0 = r6->unkB4->unkA0;
        r6->unkB8->unkA2 = r6->unkB4->unkA2;
        if (!--r5->unk0.base.counter && r5->unk0.subtype > 2 && Rand16() & 1)
            sub_08109AD4(r5);
    }
    else
    {
        sub_08109DC4(r5->unkB4, &v1, &v2);
        r5->unkB4->unkA0 -= 0x100;
        if (r5->unkB4->unkA0 < v1)
            r5->unkB4->unkA0 = v1;
        r5->unkB4->unkA2 -= 2;
        if (r5->unkB4->unkA2 < v2)
            r5->unkB4->unkA2 = v2;
        r5->unkB8->unkA0 = r5->unkB4->unkA0;
        r5->unkB8->unkA2 = r5->unkB4->unkA2;
        if (r5->unkB4->unkA0 == v1 && r5->unkB4->unkA2 == v2)
        {
            DarkMindSetFunc(r5, 11, sub_08103380);
            r5->unk0.base.xspeed = 0;
            r5->unk0.base.yspeed = 0;
            r5->unk0.base.flags |= 0x40;
            r5->unk0.base.flags &= ~2;
            r5->unk0.base.counter = 4;
            r5->unk0.unk9E = 0;
            r5->unk0.unk9F = 0;
        }
    }
}

void sub_08103688(struct DarkMind *r5)
{
    struct DarkMind *r6 = r5;
    s16 v1, v2;

    r5->unk0.base.flags |= 4;
    if (r5->unk0.base.counter)
    {
        r5->unk0.base.unk54 = gUnk_08357288[r5->unk0.unk9E >> 1];
        r5->unkCC->unk40 = gUnk_08357288[r5->unk0.unk9E >> 1];
        ++r5->unk0.unk9E;
        r5->unk0.unk9E &= 7;
        if (!r5->unkDB && !r5->unk0.unk9E)
            PlaySfx(&r5->unk0.base, 429);
        r6->unkB4->unkA0 += 0x100;
        if (r6->unkB4->unkA0 > 0x6800)
            r6->unkB4->unkA0 = 0x6800;
        r6->unkB4->unkA2 += 2;
        if (r6->unkB4->unkA2 > 0x20)
            r6->unkB4->unkA2 = 0x20;
        r6->unkB8->unkA0 = r6->unkB4->unkA0;
        r6->unkB8->unkA2 = r6->unkB4->unkA2;
        --r5->unk0.base.counter;
    }
    else
    {
        sub_08109DC4(r5->unkB4, &v1, &v2);
        r5->unkB4->unkA0 -= 0x100;
        if (r5->unkB4->unkA0 < v1)
            r5->unkB4->unkA0 = v1;
        r5->unkB4->unkA2 -= 2;
        if (r5->unkB4->unkA2 < v2)
            r5->unkB4->unkA2 = v2;
        r5->unkB8->unkA0 = r5->unkB4->unkA0;
        r5->unkB8->unkA2 = r5->unkB4->unkA2;
        if (r5->unkB4->unkA0 == v1 && r5->unkB4->unkA2 == v2)
        {
            DarkMindSetFunc(r5, 11, sub_08103380);
            r5->unk0.base.xspeed = 0;
            r5->unk0.base.yspeed = 0;
            r5->unk0.base.flags |= 0x40;
            r5->unk0.base.flags &= ~2;
            r5->unk0.base.counter = 4;
            r5->unk0.unk9E = 0;
            r5->unk0.unk9F = 0;
        }
    }
}

void sub_081038CC(struct DarkMind *r5)
{
    r5->unkD5 = 5;
    DarkMindSetFunc(r5, 8, sub_081039AC);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    if (r5->unk0.subtype)
        r5->unk0.base.counter = 0x50;
    else
        r5->unk0.base.counter = 0x80;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
    sub_08105EC4(r5);
    PlaySfx(&r5->unk0.base, 426);
}

void sub_081039AC(struct DarkMind *r4)
{
    r4->unk0.base.flags |= 4;
    if (!--r4->unk0.base.counter)
    {
        DarkMindSetFunc(r4, 11, sub_08103380);
        r4->unk0.base.xspeed = 0;
        r4->unk0.base.yspeed = 0;
        r4->unk0.base.flags |= 0x40;
        r4->unk0.base.flags &= ~2;
        r4->unk0.base.counter = 4;
        r4->unk0.unk9E = 0;
        r4->unk0.unk9F = 0;
    }
}

void sub_08103A00(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;
    
    r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
    r4->unk0.unk85 = 1;
    r4->unkDA = 1;
    if (Rand16() & 1)
        r4->unkD6 = 0x2E;
    else
        r4->unkD6 = 0xCE;
    r5->unkD8 = 32;
    sub_08102938(r4);
}

void sub_08103A64(struct DarkMind *r5)
{
    r5->unkD5 = 5;
    DarkMindSetFunc(r5, 10, sub_08103AE4);
    r5->unk0.base.xspeed = -64;
    r5->unk0.base.yspeed = 0;
    if (r5->unkDA == 2)
    {
        if (r5->unk0.base.y > 0x5800)
            r5->unk0.base.yspeed = 0x40;
        else
            r5->unk0.base.yspeed = -0x40;
    }
    if (r5->unk0.base.flags & 1)
        r5->unk0.base.xspeed = -r5->unk0.base.xspeed;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 40;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
}

void sub_08103AE4(struct DarkMind *r5)
{
    struct DarkMind *r7 = r5;

    r5->unk0.base.flags |= 4;
    switch (r5->unk0.unk9E)
    {
    case 0:
        r5->unk0.base.unk55 += (gUnk_0203AD40 & 2) << 1;
        r5->unkCC->unk41 = r5->unk0.base.unk55;
        if ((!(r5->unk0.unk9F & 0xF) && r5->unk0.subtype <= 1)
            || (!(r5->unk0.unk9F & 7) && r5->unk0.subtype > 1))
        {
            PlaySfx(&r5->unk0.base, 426);
            sub_081060C0(r5, 0x600, 0, 1);
        }
        if (r5->unk0.unk9F > 0x40)
        {
            r5->unk0.unk9E = 1;
            if (r7->unkDA == 1)
                r5->unk0.base.xspeed = 0;
            r5->unk0.base.yspeed <<= 1;
        }
        ++r5->unk0.unk9F;
        break;
    case 1:
        if (!--r5->unk0.base.counter)
        {
            DarkMindSetFunc(r5, 11, sub_08103380);
            r5->unk0.base.xspeed = 0;
            r5->unk0.base.yspeed = 0;
            r5->unk0.base.flags |= 0x40;
            r5->unk0.base.flags &= ~2;
            r5->unk0.base.counter = 4;
            r5->unk0.unk9E = 0;
            r5->unk0.unk9F = 0;
        }
        break;
    }
}

void sub_08103C68(struct DarkMind *r5)
{
    r5->unkD5 = 5;
    DarkMindSetFunc(r5, 10, sub_08103CD0);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = Rand16() & 7;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
}

void sub_08103CD0(struct DarkMind *r5)
{
    s16 r7, v1, v2;

    r5->unk0.base.flags |= 4;
    switch (r5->unk0.unk9E)
    {
    case 0:
        r5->unk0.base.unk55 += (gUnk_0203AD40 & 2) << 1;
        r5->unkCC->unk41 = r5->unk0.base.unk55;
        if (!(r5->unk0.unk9F & 0xF))
        {
            r7 = gUnk_083572C0[r5->unk0.base.counter];
            ++r5->unk0.base.counter;
            r5->unk0.base.counter &= 7;
            PlaySfx(&r5->unk0.base, 426);
            v1 = 5 * (gUnk_08D5FE14[r7 + 0x100] >> 6);
            v2 = 5 * (gUnk_08D5FE14[r7] >> 6);
            sub_081060C0(r5, v1 >> 1, v2 >> 1, 0);
        }
        if (r5->unk0.unk9F > 0x60)
        {
            r5->unk0.unk9E = 1;
            r5->unk0.base.counter = 40;
        }
        ++r5->unk0.unk9F;
        break;
    case 1:
        if (!--r5->unk0.base.counter)
        {
            DarkMindSetFunc(r5, 11, sub_08103380);
            r5->unk0.base.xspeed = 0;
            r5->unk0.base.yspeed = 0;
            r5->unk0.base.flags |= 0x40;
            r5->unk0.base.flags &= ~2;
            r5->unk0.base.counter = 4;
            r5->unk0.unk9E = 0;
            r5->unk0.unk9F = 0;
        }
        break;
    }
}

void sub_08103E60(struct DarkMind *r5)
{
    r5->unk0.base.flags |= 4;
    switch (r5->unk0.unk9E)
    {
    case 0:
        r5->unk0.base.unk55 += (gUnk_0203AD40 & 2) << 1;
        r5->unkCC->unk41 = r5->unk0.base.unk55;
        if (!(r5->unk0.unk9F & 0xF))
        {
            PlaySfx(&r5->unk0.base, 426);
            sub_081060C0(r5, 0x300, 0, 0);
            sub_081060C0(r5, 0x24C, -0x1EC, 2);
            sub_081060C0(r5, 0x24C, 0x1EC, 2);
            r5->unk0.unk9E = 1;
        }
        break;
    case 1:
        if (!--r5->unk0.base.counter)
        {
            DarkMindSetFunc(r5, 11, sub_08103380);
            r5->unk0.base.xspeed = 0;
            r5->unk0.base.yspeed = 0;
            r5->unk0.base.flags |= 0x40;
            r5->unk0.base.flags &= ~2;
            r5->unk0.base.counter = 4;
            r5->unk0.unk9E = 0;
            r5->unk0.unk9F = 0;
        }
        break;
    }
}
