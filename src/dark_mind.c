#include "global.h"
#include "data.h"
#include "functions.h"
#include "dark_mind.h"
#include "task.h"
#include "code_08002848.h"
#include "main.h"
#include "code_0800A868.h"

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
void sub_08104080(struct DarkMind *);
void sub_081042C8(struct DarkMind *);
void sub_08104424(struct DarkMind *);
void sub_081044D0(struct DarkMind *);
void sub_0810451C(struct DarkMind *);
void sub_0810457C(struct DarkMind *);
void sub_08104704(struct DarkMind *);
void sub_081047D0(struct DarkMind *);
void sub_081049E8(struct DarkMind *);
void sub_08104AA8(struct DarkMind *);
void sub_08104C80(struct DarkMind *);
void sub_08104CD8(struct DarkMind *);
void sub_08104E04(struct DarkMind *);
void sub_081050E8(struct Object2 *, u8);
void sub_08105278(void);
struct Object4 *sub_081055B8(struct Object2 *);
void sub_08105698(void);
void sub_081059A8(struct DarkMind *);
void sub_08105CE0(struct DarkMind *);
void sub_08105EC4(struct DarkMind *);
void sub_081060C0(struct DarkMind *, s16, s16, u8);
void sub_081062B4(struct DarkMind *);
void sub_08106508(struct DarkMind *);
void sub_081065B0(struct DarkMind *);
void sub_08106804(struct DarkMind *, s16, s16);
void sub_081068F8(struct DarkMind *);
void sub_081069BC(struct DarkMind *);
void sub_08106AD0(struct DarkMind *);
void sub_08106BE0(void);
struct Object2 *sub_08107254(struct Object2 *);
void sub_08107844(struct Object2 *);
void sub_0810792C(void);
struct ObjectBase *sub_08107A48(struct Object2 *);
void sub_08107BA8(void);
void sub_08107ED4(struct Object2 *);
void sub_08107FC4(void);
void sub_08108280(struct Object2 *);
void sub_08108368(void);
void sub_08108960(struct Object2 *);
void sub_08108A50(void);
struct Object4 *sub_08109304(struct Object2 *, u8);
void sub_081094C4(void);
void sub_081099A4(struct Object8 *);
void sub_081099C0(struct Object2 *);
void sub_081099D4(struct Object2 *);
void sub_08109A00(struct DarkMind *);
void sub_08109A38(struct DarkMind *);
void sub_08109A8C(struct DarkMind *);
void sub_08109AD4(struct DarkMind *);
void sub_08109B1C(struct DarkMind *);
void sub_08109B64(struct DarkMind *);
void sub_08109B98(struct DarkMind *);
void sub_08109BD0(struct DarkMind *);
void sub_08109C08(struct DarkMind *);
void sub_08109C40(struct Object2 *);
void sub_08109C8C(struct DarkMind *);
void sub_08109CB4(struct Object2 *);
void sub_08109D98(struct Object2 *);
void sub_08109DC4(struct Object2 *, s16 *, s16 *);
void sub_08109E00(struct DarkMind *);
void sub_08109E24(struct DarkMind *);
void sub_08109E4C(struct Object2 *);
void sub_08109E98(struct DarkMind *);
void sub_08109EF8(struct DarkMind *);
void sub_08109F40(struct DarkMind *);
void sub_08109F90(struct Object8 *);
void sub_08109FBC(struct Object8 *);
void sub_0810A034(struct Object8 *);
void sub_0810A104(struct Task *);
void sub_0810A130(struct Task *);

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
    r5->unkBC = NULL;
    r5->unkC0 = NULL;
    r5->unkC4 = NULL;
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
    r5->unk0.unk7C = (void *)sub_08104E04;
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

#define Macro_081009A4(dm) \
({ \
    struct DarkMind *_r3; \
 \
    _r3 = (dm); \
    _r3->unkD4 = RandLessThan3(); \
    _r3->unkD8 = 0; \
    _r3->unkD6 = 0; \
    _r3->unkDA = 0; \
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
        if (RandLessThan3())
        {
            if (RandLessThan3())
                sub_08100538(r4);
            else
            {
                r4->unk0.unk85 = 0;
                sub_081030A8(r4);
            }
        }
        else if (RandLessThan3())
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
    s16 _r3; \
    u8 _r6; \
    struct Object5 *r1 = sub_08034E14(&(r5)->unk0); \
 \
    if (r1) r1->unk9 = 0; \
    _r3 = ObjTypeAltIdx(&(r5)->unk0); \
    _r6 = gCurLevelInfo[(r5)->unk0.base.unk56].unk65E; \
    if (_r3 >= 0 && gUnk_08352D80[_r3] \
        && !((r5)->unk0.object->unk22 & 4)) \
    { \
        u8 r4; \
 \
        if (!ObjType43To52(&(r5)->unk0)) \
        { \
            for (r4 = 1; r4 < 2; ++r4) \
                sub_08002A44(_r6, sub_08002A2C(_r6, r4 - 1), r4); \
            sub_08002A44(_r6, sub_08002A0C(_r6), 0); \
        } \
        sub_08002A1C(_r6, gUnk_08352D80[_r3]); \
        if (gKirbys[gUnk_0203AD3C].base.base.unk60 == (r5)->unk0.base.unk60 && !(gUnk_0203AD20 & 4)) \
            m4aSongNumStartOrChange(sub_08002A0C(_r6)); \
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
            sub_081050E8(&r5->unk0, 0);
            sub_081050E8(&r5->unk0, 1);
            sub_081050E8(&r5->unk0, 2);
            sub_081050E8(&r5->unk0, 3);
            sub_081050E8(&r5->unk0, 4);
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
    if ((r3->unk0.base.yspeed -= 0x100) < -0x160)
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

void sub_08103FC0(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;

    r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
    r4->unk0.unk85 = 1;
    r4->unkDA = 6;
    if (r4->unk0.kirby3->base.base.x >> 8 < 0x7e)
        r4->unkD6 = (r4->unk0.kirby3->base.base.x >> 8) + 0x30;
    else
        r4->unkD6 = (r4->unk0.kirby3->base.base.x >> 8) - 0x30;
    r5->unkD8 = 56;
    if (r5->unkD6 < 0x20)
        r5->unkD6 = 0x20;
    if (r5->unkD6 > 0xD0)
        r5->unkD6 = 0xD0;
    sub_08102938(r4);
}

void sub_08104028(struct DarkMind *r4)
{
    r4->unkD5 = 5;
    DarkMindSetFunc(r4, 8, sub_08104080);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    if (r4->unkDA == 7)
        r4->unk0.base.yspeed = -0x40;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags &= ~2;
    r4->unk0.base.counter = 0;
    r4->unk0.unk9E = 0;
    r4->unk0.unk9F = 0;
}

void sub_08104080(struct DarkMind *r5)
{
    struct DarkMind *r3 = r5;

    r5->unk0.base.flags |= 4;
    switch (r5->unk0.unk9E)
    {
    case 0:
        if (r5->unkDA == 7)
        {
            if (r5->unk0.kirby3->base.base.x < r5->unk0.base.x)
            {
                r5->unk0.base.xspeed -= 10;
                if (r5->unk0.base.xspeed < -0x60)
                    r5->unk0.base.xspeed = -0x60;
            }
            else
            {
                r5->unk0.base.xspeed += 10;
                if (r5->unk0.base.xspeed > 0x60)
                    r5->unk0.base.xspeed = 0x60;
            }
        }
        r5->unk0.base.unk55 += gUnk_0203AD40 & 2;
        r3->unkCC->unk41 = r5->unk0.base.unk55;
        if (!(r5->unk0.unk9F & 7))
        {
            u16 rand = Rand16() & 3;
            s16 r8 = 6 * (gUnk_08D5FE14[gUnk_08357278[rand] + 0x100] >> 6);
            s16 r7 = 6 * (gUnk_08D5FE14[gUnk_08357278[rand]] >> 6);

            PlaySfx(&r5->unk0.base, 426);
            sub_081060C0(r5, r8, r7, 0);
        }
        if (r5->unk0.unk9F > 0x50)
        {
            r5->unk0.unk9E = 1;
            r5->unk0.base.counter = 0x20;
        }
        ++r5->unk0.unk9F;
        break;
    case 1:
        if (r5->unk0.base.xspeed < 0)
        {
            r5->unk0.base.xspeed += 4;
            if (r5->unk0.base.xspeed > 0)
                r5->unk0.base.xspeed = 0;
        }
        else
        {
            r5->unk0.base.xspeed -= 4;
            if (r5->unk0.base.xspeed < 0)
                r5->unk0.base.xspeed = 0;
        }
        if (r5->unk0.base.yspeed < 0)
        {
            r5->unk0.base.yspeed += 4;
            if (r5->unk0.base.yspeed > 0)
                r5->unk0.base.yspeed = 0;
        }
        else
        {
            r5->unk0.base.yspeed -= 4;
            if (r5->unk0.base.yspeed < 0)
                r5->unk0.base.yspeed = 0;
        }
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

void sub_081042C8(struct DarkMind *r6)
{
    struct DarkMind *r5 = r6;

    r6->unkD5 = 5;
    DarkMindSetFunc(r6, 8, sub_08104424);
    r6->unk0.base.xspeed = 0;
    r6->unk0.base.yspeed = 0;
    r6->unk0.base.flags |= 0x40;
    r6->unk0.base.flags &= ~2;
    r6->unk0.base.counter = 0;
    r6->unk0.unk9E = 0;
    r6->unk0.unk9F = 0;
    PlaySfx(&r6->unk0.base, 426);
    if (r5->unkDA == 8)
    {
        sub_081060C0(r6, 0, -0x300, 0);
        sub_081060C0(r6, -0x21F, -0x21F, 0);
        sub_081060C0(r6, 0x21F, -0x21F, 0);
    }
    else
    {
        sub_081060C0(r6, 0, -0x300, 0);
        sub_081060C0(r6, -0x180, -0x297, 0);
        sub_081060C0(r6, 0x180, -0x297, 0);
        sub_081060C0(r6, -0x297, -0x180, 0);
        sub_081060C0(r6, 0x297, -0x180, 0);
    }
}

void sub_08104424(struct DarkMind *r4)
{
    r4->unk0.base.flags |= 4;
    switch (r4->unk0.unk9E)
    {
    case 0:
        r4->unk0.base.unk55 += 2 * (gUnk_0203AD40 & 2);
        r4->unkCC->unk41 = r4->unk0.base.unk55;
        if (r4->unk0.unk9F > 8)
        {
            r4->unk0.unk9E = 1;
            r4->unk0.base.counter = 0x30;
        }
        ++r4->unk0.unk9F;
        break;
    case 1:
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
        break;
    }
}

void sub_081044D0(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;

    r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
    r4->unk0.unk85 = 1;
    r4->unkDA = 12;
    if (r4->unk0.kirby3->base.base.x >> 8 < 0x7E)
        r4->unkD6 = 222;
    else
        r4->unkD6 = 30;
    r5->unkD8 = 32;
    sub_08102938(r4);
}

void sub_0810451C(struct DarkMind *r4)
{
    r4->unkD5 = 5;
    DarkMindSetFunc(r4, 8, sub_0810457C);
    r4->unk0.base.xspeed = 0x500;
    r4->unk0.base.yspeed = -0x100;
    if (r4->unk0.base.flags & 1)
        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags &= ~2;
    r4->unk0.base.counter = 0;
    r4->unk0.unk9E = 0;
    r4->unk0.unk9F = 0;
}

void sub_0810457C(struct DarkMind *r5)
{
    u8 r3;

    r5->unk0.base.flags |= 4;
    switch (r3 = r5->unk0.unk9E)
    {
    case 0:
        r5->unk0.base.unk55 += gUnk_0203AD40 & 2;
        r5->unkCC->unk41 = r5->unk0.base.unk55;
        if (r5->unk0.unk9F == 0x20)
            r5->unk0.base.yspeed = 0x100;
        if (r5->unk0.base.yspeed < 0)
        {
            r5->unk0.base.yspeed += 4;
            if (r5->unk0.base.yspeed > 0)
                r5->unk0.base.yspeed = r3;
        }
        else
        {
            r5->unk0.base.yspeed -= 4;
            if (r5->unk0.base.yspeed < 0)
                r5->unk0.base.yspeed = r3;
        }
        if (!(r5->unk0.unk9F & 7))
        {
            PlaySfx(&r5->unk0.base, 426);
            sub_081060C0(r5, 0, 0, 0);
        }
        if (r5->unk0.unk9F > 40)
        {
            r5->unk0.unk9E = 1;
            r5->unk0.base.counter = 16;
            r5->unk0.base.yspeed = 0;
            r5->unk0.base.xspeed = 0;
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

void sub_08104704(struct DarkMind *r5)
{
    r5->unkD5 = 5;
    DarkMindSetFunc(r5, 8, sub_081047D0);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 0;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
    PlaySfx(&r5->unk0.base, 426);
}

void sub_081047D0(struct DarkMind *r4)
{
    r4->unk0.base.flags |= 4;
    switch (r4->unk0.unk9E)
    {
    case 0:
        r4->unk0.base.unk55 += 2 * (gUnk_0203AD40 & 2);
        r4->unkCC->unk41 = r4->unk0.base.unk55;
        if (r4->unk0.unk9F > 8)
        {
            r4->unk0.unk9E = 1;
            r4->unk0.base.counter = 16;
        }
        ++r4->unk0.unk9F;
        break;
    case 1:
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
        break;
    }
}

void sub_0810487C(struct DarkMind *sb)
{
    struct DarkMind *r8 = sb;
    u8 r5 = Rand16() & 7;
    s16 r4 = 0x7E - gUnk_083571E0[r5][0];
    s16 ip = gUnk_083571E0[r5][1] + 0x58;

    if (sb->unk0.kirby3->base.base.x >> 8 < 0x7E)
        r4 = gUnk_083571E0[r5][0] + 0x7E;
    if (sb->unk0.kirby3->base.base.y >> 8 > 0x58
        && r5 > 1 && r5 != 4
        && (Rand16() & 1))
    {
        if (sb->unk0.kirby3->base.base.x >> 8 < 0x7E)
            r4 = 0x7E - gUnk_083571E0[r5][0];
        else
            r4 = gUnk_083571E0[r5][0] + 0x7E;
    }
    if (r8->unk0.base.x >> 8 == r4
        && r8->unk0.base.y >> 8 == ip)
    {
        r5 += 2;
        r5 &= 7;
        r4 = 0x7E - gUnk_083571E0[r5][0];
        ip = gUnk_083571E0[r5][1] + 0x58;
        if (r8->unk0.kirby3->base.base.x >> 8 < 0x7E)
            r4 = gUnk_083571E0[r5][0] + 0x7E;
        if (r8->unk0.kirby3->base.base.y >> 8 > 0x58
            && r5 > 1 && r5 != 4)
        {
            if (Rand16() & 1)
            {
                if (r8->unk0.kirby3->base.base.x >> 8 < 0x7E)
                    r4 = 0x7E - gUnk_083571E0[r5][0];
                else
                    r4 = gUnk_083571E0[r5][0] + 0x7E;
            }
        }
    }
    sb->unkD6 = r4;
    sb->unkD8 = ip;
}

void sub_081049E8(struct DarkMind *r5)
{
    r5->unkD5 = 5;
    DarkMindSetFunc(r5, 7, sub_08104AA8);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 0;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
    r5->unk0.base.flags &= ~2;
    if (r5->unk0.base.x > r5->unk0.kirby3->base.base.x)
        r5->unk0.base.flags |= 1;
    else
        r5->unk0.base.flags &= ~1;
    if (abs(r5->unk0.base.x - r5->unk0.kirby3->base.base.x) > 0x3000
        && abs(r5->unk0.base.y - r5->unk0.kirby3->base.base.y) < 0x4000)
        r5->unk0.unk83 = 9;
    sub_081062B4(r5);
}

void sub_08104AA8(struct DarkMind *r4)
{
    struct DarkMind *r3 = r4;

    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    switch (r4->unk0.unk83)
    {
    case 7:
    case 9:
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
            r4->unk0.unk9F = 0;
            if (r4->unk0.unk83 == 7)
                r4->unk0.unk83 = 8;
            else
                r4->unk0.unk83 = 10;
        }
        break;
    case 8:
    case 10:
        r4->unk0.base.flags |= 4;
        r4->unk0.base.unk55 += (gUnk_0203AD40 & 2);
        r3->unkCC->unk41 = r4->unk0.base.unk55;
        if (!r4->unk0.unk9F)
            PlaySfx(&r4->unk0.base, 426);
        if (++r4->unk0.unk9F > 8)
        {
            r4->unk0.unk9F = 0;
            r4->unk0.unk83 = 11;
        }
        break;
    case 11:
        if (++r4->unk0.unk9E > 8)
        {
            u8 r0;
#ifndef NONMATCHING
            register s32 r1 asm("r1");
#else
            s32 r1;
#endif
            r4->unk0.unk9F = 0;
            r0 = r3->unkE2;
            r1 = r3->unkE2;
            if (r1)
            {
                r3->unkE2 = r0 - 1;
                sub_0810487C(r4);
            }
            else
            {
                r3->unkDA = r1;
                r3->unkD8 = r1;
                r3->unkD6 = r1;
            }
            sub_08102938(r4);
        }
        break;
    }
}

void sub_08104C80(struct DarkMind *r5)
{
    r5->unkD5 = 6;
    DarkMindSetFunc(r5, 8, sub_08104CD8);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 600;
    r5->unk0.unk9E = 0x20;
    r5->unk0.unk9F = 0x20;
    r5->unkBC = sub_08107254(&r5->unk0);
}

void sub_08104CD8(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;

    r4->unk0.base.flags |= 4;
    if (!r4->unk0.unk9E)
    {
        r4->unk0.base.yspeed += 24;
        if (r4->unk0.base.yspeed > 0x280)
            r4->unk0.base.yspeed = 0x280;
        r4->unk0.base.yspeed += 0; // ???
        if (r4->unk0.unk9F)
        {
            if (!--r4->unk0.unk9F)
            {
                r4->unk0.base.yspeed = 0;
                sub_08105EC4(r4);
            }
        }
    }
    else
    {
        --r4->unk0.unk9E;
    }
    if (r5->unkBC)
    {
        if (r5->unkBC->base.unk62 & 4
            && !--r4->unk0.base.counter)
        {
            r5->unkD8 = 0;
            r5->unkD6 = 0;
            r5->unkDA = 0;
            sub_08102938(r4);
        }
    }
    else if (!--r4->unk0.base.counter)
    {
        r5->unkD8 = 0;
        r5->unkD6 = 0;
        r5->unkDA = 0;
        sub_08102938(r4);
    }
}

void sub_08104D94(struct DarkMind *r4)
{
    if (r4->unk0.unk78 != (void *)sub_08109C08)
    {
        DarkMindSetFunc(r4, 0, sub_08109C08);
        r4->unk0.base.xspeed = 0;
        r4->unk0.base.yspeed = 0;
        r4->unk0.base.flags |= 0x40;
        r4->unk0.base.counter = 40;
        sub_0803E2B0(&r4->unk0.base, -28, -24, 28, 18);
        r4->unk0.unk91 = -8;
        r4->unk0.unk92 = -8;
        r4->unk0.unk93 = -8;
        r4->unk0.unk94 = -8;
        r4->unk0.unk95 = -8;
        r4->unk0.unk96 = -8;
        r4->unk0.unk97 = -32;
    }
}

void sub_08104E04(struct DarkMind *r4)
{
    struct DarkMind *r5 = r4;
    s32 r2, r1;

    if (r5->unkC8 && r5->unkC8->flags & 0x1000)
        r5->unkC8 = NULL;
    if (r5->unkBC && r5->unkBC->base.flags & 0x1000)
    {
        r5->unkBC = NULL;
        r4->unk0.base.counter = 32;
    }
    if (!(gUnk_03000510.unk4 & ((1 << r4->unk0.base.unk56) | 0x10)))
    {
        r1 = r5->unkDB;
        if (r1)
        {
            if (r4->unk0.unk80 > 0)
            {
                if (r4->unk0.unk83 == 8 || r4->unk0.unk83 == 10)
                    r4->unk0.unk83 = 11;
                if (r4->unk0.base.xspeed < 0)
                {
                    r4->unk0.base.xspeed += 24;
                    if (r4->unk0.base.xspeed > 0)
                        r4->unk0.base.xspeed = 0;
                }
                else
                {
                    r4->unk0.base.xspeed -= 24;
                    if (r4->unk0.base.xspeed < 0)
                        r4->unk0.base.xspeed = 0;
                }
                r4->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
                r5->unkCC->unk40 = r4->unk0.base.unk54;
                if (--r5->unkDB == 0x20)
                {
                    r4->unk0.base.xspeed = -0x400;
                    if (r4->unk0.base.flags & 1)
                        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
                }
                r5->unkDE += r4->unk0.unk80 - r5->unkDC;
                if (r5->unkDE > 8)
                    r4->unk0.base.flags |= 0x8000;
                r2 = r5->unkDB;
                if (!r2 && r4->unk0.unk78 != (void *)sub_08104CD8 && r5->unkDA != 14)
                {
                    r5->unkDA = 0;
                    r5->unkD8 = r2;
                    r5->unkD6 = r2;
                    sub_08102938(r4);
                }
            }
        }
        else
        {
            r5->unkDE = r5->unkDB;
            r4->unk0.base.flags &= ~0x8000;
        }
        if (!r4->unk0.unk83)
        {
            if ((r4->unk0.base.unk5C & 7) >= 7
                && r4->unk0.base.flags & 0x40000)
            {
                r4->unk0.base.flags &= ~0x40000;
                if (r4->unk0.base.kirby1->base.base.unk68 & 0x3FFFF8
                    && (r4->unk0.base.kirby1->base.base.unk68 & 7) > 2u)
                {
                    sub_081026E0(r4);
                    return;
                }
            }
            switch (r4->unk0.subtype)
            {
            case 0:
            case 1:
                break;
            case 2:
                if (!(Rand16() & 3))
                {
                    r4->unk0.base.unk5C &= ~7;
                    r4->unk0.base.unk5C |= 7; // ???
                }
                else
                {
                    r4->unk0.base.unk5C &= ~7;
                    r4->unk0.base.unk5C |= 3;
                }
                break;
            case 3: // ???
            default:
                r4->unk0.base.unk5C &= ~7;
                r4->unk0.base.unk5C |= 7; // ???
                break;
            }
        }
        if (r5->unkDC != r4->unk0.unk80)
        {
            if (!r4->unk0.unk83)
            {
                if (!(Rand16() & 0xF))
                {
                    r5->unkD4 = 1;
                    sub_08104D94(r4);
                    return;
                }
            }
            else if (r4->unk0.base.unk38 == -12)
            {
                struct Kirby *r6 = r4->unk0.base.kirby1;

                sub_08088398(&r4->unk0, gUnk_08357290)->unk0 = r5->unkCC->unkC.unk1F;
                if (r5->unkDA != 14)
                    r5->unkD4 = 2;
                r5->unkDB = 40;
                if (r6)
                {
                    r4->unk0.base.xspeed = 0;
                    r4->unk0.base.flags |= 1;
                    if (r6->base.base.x > r4->unk0.base.x)
                        r4->unk0.base.flags &= ~1;
                }
            }
        }
        r5->unkDC = r4->unk0.unk80;
    }
}

#define Macro_081050E8(obj4, param, cond) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.unk60 == (obj4)->unk42) \
    { \
        if (cond) \
        { \
            (obj4)->unkC.unk1F = sub_0803DF24((param)); \
            if ((obj4)->unkC.unk1F == 0xFF) \
                (obj4)->unkC.unk1F = sub_0803DFAC((param), 0); \
        } \
    } \
    else \
        (obj4)->unkC.unk1F = 0; \
})

void sub_081050E8(struct Object2 *r5, u8 r7)
{
    struct Task *t = TaskCreate(sub_08105278, sizeof(struct Object4), 0x3500, 0x10, sub_0803DCCC);
    struct Object4 *r0, *r4 = TaskGetStructPtr(t, r0);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->base.x;
    r4->unk38 = r5->base.y;
    r4->unk44 = r5;
    r4->unk42 = r5->base.unk60;
    if (!(r5->base.flags & 1))
        r4->unk6 |= 1;
    sub_080709F8(r4, &r4->unkC, gUnk_08357250[r7], 0x398, r7 + 4, 27);
    r4->unkC.unk8 |= 0x80;
    r4->unkC.unk1F = 0; // redundant
    Macro_081050E8(r4, 0x398, 1);
    r4->unk8 = r7;
    switch (r4->unk8)
    {
    case 0:
        r4->unk3C = 0;
        r4->unk3E = 480;
        break;
    case 1:
        r4->unk3C = -464;
        r4->unk3E = 240;
        break;
    case 2:
        r4->unk3C = 464;
        r4->unk3E = 192;
        break;
    case 3:
        r4->unk3C = -384;
        r4->unk3E = -416;
        break;
    case 4:
        r4->unk3C = 384;
        r4->unk3E = -416;
        break;
    }
    if (r4->unk6 & 1)
        r4->unk3C = -r4->unk3C;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(0x1F, 0);
    gBldRegs.bldCnt = BLDCNT_TGT1_OBJ | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3;
}

#define Macro_08105278_1(obj4, dst, val) \
({ \
    struct Sprite *_spr; \
 \
    (_spr = &(obj4)->unkC)->unk0 = sub_0803DE54((val), (obj4)->unkC.unkC, (obj4)->unkC.unk1A); \
    _spr->unk8 = (obj4)->unkC.unk8 & ~0x80000; \
    CpuCopy32(_spr, (dst), sizeof(struct Sprite)); \
    sub_0815521C((dst), (obj4)->unk1); \
    _spr->unk8 = (obj4)->unkC.unk8 | 0x80000; \
})

#define Macro_08105278_2(obj4, dst, val) \
({ \
    struct Sprite *_spr; \
 \
    (_spr = &(obj4)->unkC)->unk0 = sub_081570B0((val)); \
    _spr->unk8  = (obj4)->unkC.unk8 & ~0x80000; \
    CpuCopy32(_spr, (dst), sizeof(struct Sprite)); \
    sub_0815521C((dst), (obj4)->unk1); \
})

#define Macro_08105278_3(obj4) \
({ \
    if ((obj4)->unkC.unk0 && !((obj4)->unk6 & 0x4000)) \
    { \
        sub_08157190((obj4)->unkC.unk0); \
        (obj4)->unkC.unk0 = 0; \
    } \
    (obj4)->unkC.unk8 |= 0x80000; \
})

#define Macro_08105278_4(obj4, dst, val) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.unk60 == (obj4)->unk42) \
    { \
        if ((obj4)->unk6 & 0x4000) \
        { \
            if (!(obj4)->unkC.unk0) \
                Macro_08105278_1((obj4), (dst), (val)); \
        } \
        else if (!(obj4)->unkC.unk0) \
            Macro_08105278_2((obj4), (dst), (val)); \
    } \
    else \
        Macro_08105278_3((obj4)); \
})

void sub_08105278(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r3;

    if (r5->unk6 & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    if (r5->unk44->base.flags & 0x1000)
    {
        r5->unk6 |= 0x1000;
        return;
    }
    Macro_08105278_4(r5, &sprite, gUnk_08357250[r5->unk8]);
    Macro_081050E8(r5, 0x398, !r5->unkC.unk1F);
    r3 = r5->unk44;
    if (r3)
    {
        if (r3->base.unk0 && r3->base.flags & 0x1000)
        {
            r5->unk44 = 0;
            r3 = NULL;
        }
        if (!r3)
            goto _08105464;
        if (gUnk_03000510.unk4 & ((1 << r3->base.unk56) | 0x10) && !(r5->unk6 & 0x2000))
        {
            sub_0803DBC8(r5);
            return;
        }
    }
    else
    {
    _08105464:
        KirbySomething(r5);
    }
    r5->unk6 |= 4;
    if (++r5->unk4 > 61)
    {
        r5->unk6 |= 0x1000;
        return;
    }
    if (r5->unk4 > 31)
    {
        if (r5->unk4 <= 46)
        {
            gBldRegs.bldAlpha = BLDALPHA_BLEND2(gBldRegs.bldAlpha & 0xFF, 0);
            gBldRegs.bldAlpha = BLDALPHA_BLEND2(gBldRegs.bldAlpha, r5->unk4 - 0x1F);
        }
        else
        {
            gBldRegs.bldAlpha = BLDALPHA_BLEND2(0, 0x1F);
            gBldRegs.bldAlpha = BLDALPHA_BLEND2(0x3E - r5->unk4, 0x1F);
        }
    }
    if (!(r5->unk6 & 0x800))
    {
        r5->unk34 += r5->unk3C;
        r5->unk38 -= r5->unk3E;
    }
    if (r5->unk3C < 0)
    {
        r5->unk3C += 7;
        if (r5->unk3C > 0)
            r5->unk3C = 0;
    }
    else
    {
        r5->unk3C -= 7;
        if (r5->unk3C < 0)
            r5->unk3C = 0;
    }
    if (r5->unk3E < 0)
    {
        r5->unk3E += 7;
        if (r5->unk3E > 0)
            r5->unk3E = 0;
    }
    else
    {
        r5->unk3E -= 7;
        if (r5->unk3E < 0)
            r5->unk3E = 0;
    }
    sub_0806FAC8(r5);
    if (!(r5->unk4 & 7) && r5->unkC.unk1C)
        --r5->unkC.unk1C;
}

struct Object4 *sub_081055B8(struct Object2 *r5)
{
    struct Task *t = TaskCreate(sub_08105698, sizeof(struct Object4), 0x1000, 0x10, sub_0810A130);
    struct Object4 *r0, *r4 = TaskGetStructPtr(t, r0);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->base.x;
    r4->unk38 = r5->base.y;
    r4->unk44 = r5;
    r4->unk42 = r5->base.unk60;
    if (!(r5->base.flags & 1))
        r4->unk6 |= 1;
    sub_080709F8(r4, &r4->unkC, 30, 0x39A, 0, 25);
    r4->unkC.unk1F = 0; // redundant
    Macro_081050E8(r4, 0x139A, 1);
    return r4;
}

void sub_08105698(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r3, *r7 = r5->unk44;

    if (r5->unk6 & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    if (r7->base.flags & 0x1000)
    {
        r5->unk6 |= 0x1000;
        return;
    }
    Macro_08105278_4(r5, &sprite, 0x1E);
    Macro_081050E8(r5, 0x139A, !r5->unkC.unk1F);
    r3 = r5->unk44;
    if (r3)
    {
        if (r3->base.unk0 && r3->base.flags & 0x1000)
        {
            r5->unk44 = 0;
            r3 = NULL;
        }
        if (!r3)
            goto _081057CA;
        if (gUnk_03000510.unk4 & ((1 << r3->base.unk56) | 0x10) && !(r5->unk6 & 0x2000))
        {
            sub_0803DBC8(r5);
            return;
        }
    }
    else
    {
    _081057CA:
        KirbySomething(r5);
    }
    r5->unk6 &= ~(0x400 | 4 | 1);
    r5->unk6 |= r7->base.flags & (0x400 | 4);
    r5->unk6 |= (r7->base.flags ^ 1) & 1;
    r5->unk42 = r7->base.unk60;
    r5->unk34 = r7->base.x;
    r5->unk38 = r7->base.y;
    if (r7->unk83 <= 6)
        r5->unk6 |= 0x400;
    else
    {
        r5->unk6 &= ~0x400;
        switch (r7->unk83)
        {
        case 7:
            r5->unkC.unk1A = 0;
            break;
        case 8:
            r5->unkC.unk1A = 2;
            break;
        case 9:
            r5->unkC.unk1A = 1;
            break;
        case 10:
            r5->unkC.unk1A = 3;
            break;
        case 11:
            r5->unkC.unk1A = 4;
            break;
        }
        sub_0806FAC8(r5);
    }
}

#define Macro_081059A8_2(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val) \
({ \
    u8 _i; \
    struct Object2 *_r0; \
 \
    for (_i = 0; _i < 0x20; ++_i) \
    { \
        if (!(gUnk_020229D4 & (1 << _i))) \
        { \
            gUnk_020229D4 |= 1 << _i; \
            break; \
        } \
    } \
    gUnk_020229E0[_i].spawnTable = 1; \
    gUnk_020229E0[_i].unk1 = 36; \
    gUnk_020229E0[_i].x = (xVal); \
    gUnk_020229E0[_i].y = (yVal); \
    gUnk_020229E0[_i].unk2 = 0; \
    gUnk_020229E0[_i].unk3 = 31; \
    gUnk_020229E0[_i].unk4 = 0; \
    gUnk_020229E0[_i].unk5 = 0; \
    gUnk_020229E0[_i].type = (typeVal); \
    gUnk_020229E0[_i].subtype1 = (subtype1Val); \
    gUnk_020229E0[_i].unkF = 0; \
    gUnk_020229E0[_i].subtype2 = (subtype2Val); \
    gUnk_020229E0[_i].unk22 = 0; \
    gUnk_020229E0[_i].unk1A = 0; \
    gUnk_020229E0[_i].unk1C = 0; \
    gUnk_020229E0[_i].unk1E = 0; \
    gUnk_020229E0[_i].unk20 = 0; \
    gUnk_020229E0[_i].unk11 = 0; \
    gUnk_020229E0[_i].unk12 = 0; \
    gUnk_020229E0[_i].unk14 = 0; \
    gUnk_020229E0[_i].unk16 = 0; \
    gUnk_020229E0[_i].unk18 = 0; \
    _r0 = CreateObject((obj2)->base.unk56, &gUnk_020229E0[_i]); \
    _r0; \
})

#define Macro_081059A8(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val) \
({ \
    struct Object2 *_r0; \
    _r0 = Macro_081059A8_2(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val); \
    _r0->base.parent = (obj2); \
    _r0; \
})

void sub_081059A8(struct DarkMind *r5)
{
    s32 r6, sb;
    struct DarkMind *ip = r5, *sp08 = r5;
    struct Object2 *obj; // required for matching

    if (r5->unk0.base.flags & 1)
        r6 = (r5->unk0.base.x >> 8) - 0x20;
    else
        r6 = (r5->unk0.base.x >> 8) + 0x20;
    sb = r5->unk0.base.y >> 8;
    obj = Macro_081059A8(&r5->unk0, r6, sb, OBJ_SHADOW_KIRBY_BOMB, 0, ip->unk0.subtype);
    sp08->unkB4 = obj;

    if (r5->unk0.base.flags & 1)
        r6 = (r5->unk0.base.x >> 8) + 0x20;
    else
        r6 = (r5->unk0.base.x >> 8) - 0x20;
    obj = Macro_081059A8(&r5->unk0, r6, sb, OBJ_SHADOW_KIRBY_BOMB, 1, ip->unk0.subtype);
    sp08->unkB8 = obj;
}

struct Object2 *CreateShadowKirbyBomb(struct Object *r6, u8 r5)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r4 = TaskGetStructPtr(t, r4);

    InitObject(r4, r6, r5);
    r4->base.flags |= 0x40;
    r4->base.flags |= 0x100;
    r4->base.flags |= 0x2000000;
    r4->base.unkC |= 1;
    r4->base.unkC |= 4;
    r4->base.unk5C &= ~7;
    r4->base.unk5C |= 7; // ???
    r4->base.unk5C |= 0xFFFF;
    r4->unk9E = 0;
    r4->unk7C = sub_0809F840;
    sub_0803E2B0(&r4->base, -4, -8, 4, 8);
    ObjectInitSprite(r4);
    r4->base.unk10.unk14 = 0x240;
    sub_08109E4C(r4);
    return r4;
}

#define Macro_08105BF0(dm, parent) \
({ \
    s32 _v1, _v2; \
 \
    (dm)->unk0.base.x = (parent)->base.x; \
    (dm)->unk0.base.y = (parent)->base.y; \
    _v1 = (dm)->unk0.unkA0 * (gUnk_08D5FE14[(dm)->unk0.base.counter + 0x100] >> 6) * 0x100; \
    _v2 = (dm)->unk0.unkA0 * (gUnk_08D5FE14[(dm)->unk0.base.counter] >> 6) * 0x100; \
    (dm)->unk0.base.x += _v1 >> 16; \
    (dm)->unk0.base.y += _v2 >> 16; \
})

void sub_08105BF0(struct DarkMind *r7)
{
    s16 sp00;
    struct DarkMind *parent = r7->unk0.base.parent;

    Macro_08105BF0(r7, &parent->unk0);
    if (r7->unk0.unk83 == 2)
    {
        if (r7->unk0.base.flags & 2)
            r7->unk0.unk83 = 0;
    }
    else
    {
        r7->unk0.base.flags |= 4;
        if (r7->unk0.unkA2 > 40)
        {
            r7->unk0.unkA2 = 40;
            if (++r7->unk0.unk9E > 0x60)
                r7->unk0.unk9F = 1;
        }
        if (r7->unk0.unk9F)
        {
            sub_08109DC4(&r7->unk0, &r7->unk0.unkA0, &sp00);
            --r7->unk0.unkA2;
            if (sp00 >= r7->unk0.unkA2)
            {
                r7->unk0.unkA2 = sp00;
                sub_08109E00(r7);
                return;
            }
        }
        else
            ++r7->unk0.unkA2;
        r7->unk0.base.counter += r7->unk0.unkA2;
        r7->unk0.base.counter &= 0x3FF;
    }
}

void sub_08105CE0(struct DarkMind *r7)
{
    struct DarkMind *r2 = r7->unk0.base.parent;

    if (r2->unk0.unk83 == 1 || r2->unk0.unk83 == 5 || r2->unkDB)
        sub_08109E24(r7);
    else
    {
        r7->unk0.base.flags |= 4;
        Macro_08105BF0(r7, &r2->unk0);
        r7->unk0.base.counter += r7->unk0.unkA2;
        r7->unk0.base.counter &= 0x3FF;
    }
}

void sub_08105D78(struct DarkMind *ip)
{
    struct Object2 *r4 = ip->unk0.base.parent;
    struct DarkMind *r3 = ip->unk0.base.parent;

    if (ip->unk0.unk83 == 1)
    {
        if (ip->unk0.base.flags & 2)
        {
            s16 *r1, *r2; // should be a macro

            ip->unk0.base.flags |= 0x400;
            r1 = &ip->unk0.unkA0;
            r2 = &ip->unk0.unkA2;
            *r1 = 0x2000;
            switch (ip->unk0.subtype)
            {
            case 0:
                *r2 = 8;
                break;
            case 1:
                *r2 = 10;
                break;
            case 2:
                *r2 = 13;
                break;
            default:
                *r2 = 18;
                break;
            }
        }
        if (r3->unkD4) return;
        if (r4->unk83 != 1 && r4->unk83 != 2 && r4->unk83 != 3
            && r4->unk83 != 11 && r4->unk83 != 7 && r4->unk83 != 9
            && r4->unk83 != 5 && r3->unkDA != 12)
            ++ip->unk0.unk9E;
        if (ip->unk0.unk9E)
        {
            ip->unk0.base.flags &= ~0x400;
            ip->unk0.unk83 = 2;
            ip->unk0.base.flags &= ~2;
            Macro_08105BF0(ip, r4);
        }
    }
    if (ip->unk0.unk83 == 2 && ip->unk0.base.flags & 2)
    {
        ip->unk0.unk83 = 0;
        ip->unk0.base.flags &= ~0x200;
        ip->unk0.unk78 = (void *)sub_08105CE0;
        ip->unk0.unk9F = 0;
    }
}

#define RandomFunction(obj, dst) \
({ \
    switch ((obj)->subtype) \
    { \
    case 0: \
        (dst) = 0; \
        break; \
    case 1: \
        (dst) = Rand16() & 1; /* [0, 1] */ \
        break; \
    case 2: \
        (dst) = RandLessThan3(); /* [0, 2] */ \
        break; \
    default: \
        (dst) = Rand16() & 3; /* [0, 3] */ \
        break; \
    } \
})

void sub_08105EC4(struct DarkMind *r4)
{
    u32 r3;
    struct DarkMind *r7 = r4;
    u8 r8 = Rand16() & 7;
    s32 sp00, sp04;
    u8 sp08;

    for (sp08 = 0; sp08 < 2; ++sp08)
    {
        ++r7; --r7;
        if (r7->unk0.base.flags & 1)
            gUnk_0203AD10 += 0; // something happens here that changes regalloc
        sp00 = (r7->unk0.base.x >> 8) + 0;
        sp04 = (r7->unk0.base.y >> 8) + 8;
        RandomFunction(&r4->unk0, r3);
        r4 = (void *)Macro_081059A8(&r7->unk0, sp00, sp04, OBJ_DARK_MIND_STAR_FIRE + r3, 0, r4->unk0.subtype);
        if (r7->unk0.base.flags & 1)
            r4->unk0.base.flags |= 1;
        r4->unk0.unk85 = gUnk_08D61120[r8];
        sub_08106508(r4);
        r8 &= 7; // redundant
        Rand32();
        r8 += ((gRngVal >> 16) % 2) + 1;
    }
}

void sub_081060C0(struct DarkMind *r7, s16 sl, s16 r6, u8 sp00)
{
    u32 r3;
    struct DarkMind *r4;
    s32 ip, sp04;

    ++sp00; --sp00;
    r4 = r7;
    if (r7->unk0.base.flags & 1)
        gUnk_0203AD10 += 0; // something happens here that changes regalloc
    sp04 = (r4->unk0.base.x >> 8) + 0;
    ++r4; --r4;
    ip = (r7->unk0.base.y >> 8) + 8;
    if (sp00 == 1)
    {
        s16 r1 = 14 - Rand16() % 0x20;
        
        ip += 1 * r1;
        r6 -= 8 * r1;
    }
    RandomFunction(&r4->unk0, r3);
    r4 = (void *)Macro_081059A8(&r7->unk0, sp04, ip, OBJ_DARK_MIND_STAR_FIRE + r3, 0, r4->unk0.subtype);
    if (r7->unk0.base.flags & 1)
        r4->unk0.base.flags |= 1;
    sub_08106804(r4, sl, r6);
    if (sp00 == 2) r4->unk0.unk85 = 1;
}

void sub_081062B4(struct DarkMind *r2)
{
    u32 r3;
    struct DarkMind *r7 = r2;
    struct DarkMind *sb = r2;
#ifndef NONMATCHING
    register s32 sl asm("sl");
#else
    s32 sl;
#endif
    s32 sp00;

    ++r2; --r2;
    if (r2->unk0.base.flags & 1)
        gUnk_0203AD10 += 0; // something happens here that changes regalloc
    sl = (r2->unk0.base.x >> 8) + 0;
    sp00 = (r7->unk0.base.y >> 8) + 8;
    RandomFunction(&r2->unk0, r3);
    r2 = (void *)Macro_081059A8(&r7->unk0, sl, sp00, OBJ_DARK_MIND_STAR_FIRE + r3, 0, r2->unk0.subtype);
    if (r7->unk0.base.flags & 1)
        r2->unk0.base.flags |= 1;
    if (sb->unkDA == 14)
        sub_081068F8(r2);
    else
        sub_08109EF8(r2);
}

struct Object2 *CreateDarkMindStar(struct Object *r5, u8 r4)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj = TaskGetStructPtr(t, obj);

    InitObject(obj, r5, r4);
    obj->base.flags |= 0x40;
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    obj->base.unkC |= 2;
    obj->base.unk5C |= 0x100000 | 0x8000;
    obj->unk9E = 0;
    obj->unk7C = sub_0809F840;
    sub_0803E2B0(&obj->base, -4, -4, 4, 4);
    sub_0803E308(&obj->base, -4, -4, 4, 4);
    ObjectInitSprite(obj);
    obj->base.unk10.unk14 = 0x240;
    return obj;
}

void sub_08106508(struct DarkMind *r4)
{
    s16 r1;
    s32 r0;

    DarkMindSetFunc(r4, 0, sub_081065B0);
    r4->unk0.unk83 += r4->unk0.type - OBJ_DARK_MIND_STAR_FIRE;
    r1 = gUnk_08D5FE14[gUnk_08357278[r4->unk0.unk85] + 0x100] >> 6;
    r0 = 12 * r1;
    r4->unk0.base.xspeed = (r0 - r1) >> 2;
    r1 = gUnk_08D5FE14[gUnk_08357278[r4->unk0.unk85]] >> 6;
    r0 = 12 * r1;
    r4->unk0.base.yspeed = (r0 - r1) >> 2;
    if (r4->unk0.base.flags & 1)
        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
    r4->unk0.base.counter = 0x80;
    r4->unk0.unk9F = 0;
    sub_081069BC(r4);
}

void sub_081065B0(struct DarkMind *r4)
{
    ObjXSomething(&r4->unk0);
    ObjYSomething(&r4->unk0);
    r4->unk0.base.flags |= 4;
    if (!--r4->unk0.base.counter)
    {
        sub_0808AE30(&r4->unk0, 0, 0x298, 0);
        r4->unk0.base.flags |= 0x1000;
    }
    else
    {
        if (r4->unk0.base.unk62 & 4)
        {
            s16 r1;
            s32 r0;

            r1 = gUnk_08D5FE14[gUnk_08357278[r4->unk0.unk85]] >> 6;
            r0 = 12 * r1;
            r4->unk0.base.yspeed = -((r0 - r1) >> 2);
        }
        if (r4->unk0.base.unk62 & 8)
        {
            s16 r1;
            s32 r0;

            r1 = gUnk_08D5FE14[gUnk_08357278[r4->unk0.unk85]] >> 6;
            r0 = 12 * r1;
            r4->unk0.base.yspeed = (r0 - r1) >> 2;
        }
        if (r4->unk0.base.unk62 & 3)
        {
            r4->unk0.base.flags ^= 1;
            r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
        }
    }
}

void sub_08106804(struct DarkMind *r4, s16 r5, s16 r6)
{
    DarkMindSetFunc(r4, 0, sub_08109E98);
    r4->unk0.unk83 += r4->unk0.type - OBJ_DARK_MIND_STAR_FIRE;
    r4->unk0.base.xspeed = r5;
    r4->unk0.base.yspeed = r6;
    r4->unk0.base.flags |= 0x100;
    if (r4->unk0.base.flags & 1)
        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
    if (!r5 && !r6)
        r4->unk0.base.flags &= ~0x40;
    r4->unk0.unk9F = 0;
}

void sub_08106874(struct DarkMind *r7)
{
    struct DarkMind *r2 = r7->unk0.base.parent;

    r7->unk0.base.flags |= 4;
    if (r2->unk0.unk83 != 1 && r2->unk0.unk83 != 2 && r2->unk0.unk83 != 3
        && r2->unk0.unk83 != 4 && r2->unk0.unk83 != 5 && r2->unk0.unk83 != 6
        && r2->unk0.unk83 != 7)
    {
        struct Kirby *r1 = r2->unk0.kirby3;
        s32 r4 = (r1->base.base.x - r7->unk0.base.x) >> 8;
        s32 r5 = (r7->unk0.base.y - r1->base.base.y) >> 8;
        u16 d = Sqrt((r4 * r4 + r5 * r5) * 0x100);
        s32 div1 = (r4 * 0x100) / d;
        s32 div2 = (r5 * 0x100) / d;

        r7->unk0.base.xspeed = div1 * 0x40;
        r7->unk0.base.yspeed = div2 * 0x40;
        r7->unk0.unk78 = (void *)sub_08109E98;
        sub_08106AD0(r7);
    }
}

void sub_081068F8(struct DarkMind *r5)
{
    struct Kirby *r6 = ((struct DarkMind *)r5->unk0.base.parent)->unk0.kirby3;
    s32 diffX, diffY, div1, div2, tmp1, tmp2;
    u16 d;

    DarkMindSetFunc(r5, 0, sub_08109F40);
    r5->unk0.unk83 += r5->unk0.type - OBJ_DARK_MIND_STAR_FIRE;
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x100;
    r5->unk0.base.flags |= 0x200;
    r5->unk0.base.flags |= 0x800;
    r5->unk0.base.flags |= 0x400;
    r5->unk0.unk9F = 0;
    diffX = (r6->base.base.x - r5->unk0.base.x) >> 8;
    diffY = (r5->unk0.base.y - r6->base.base.y) >> 8;
    d = Sqrt((diffX * diffX + diffY * diffY) * 0x100);
    div1 = (diffX * 0x100) / d;
    tmp1 = div1 * 0x100;
    div2 = (diffY * 0x100) / d;
    tmp2 = div2 * 0x100;
    r5->unk0.base.xspeed = (0x400u * div1 + tmp1) >> 4;
    r5->unk0.base.yspeed = (0x400u * div2 + tmp2) >> 4;
}

void sub_081069BC(struct DarkMind *r7)
{
    struct DarkMind *r6 = r7;
    struct Task *t;
    struct Object4 *r5, *r4;

    if (!(r7->unk0.base.flags & 0x1000))
    {
        t = TaskCreate(sub_08106BE0, sizeof(struct Object4), 0xFFF, 0x10, sub_0803DCCC);
        r4 = TaskGetStructPtr(t, r5);
        sub_0803E3B0(r4);
        r4->unk0 = 3;
        r4->unk34 = r6->unk0.base.x;
        r4->unk38 = r6->unk0.base.y;
        r4->unk44 = &r6->unk0;
        r4->unk42 = r6->unk0.base.unk60;
        if (!(r6->unk0.base.flags & 1)) r4->unk6 |= 1;
        sub_080709F8(r5, &r5->unkC, 0x10, 0x399, ((r7->unk0.type - OBJ_DARK_MIND_STAR_FIRE) << 1) + 1, 27);
        r4->unkC.unk1F = 0; // redundant
        Macro_081050E8(r4, 0x399, 1);
    }
}

void sub_08106AD0(struct DarkMind *r5)
{
    struct DarkMind *r6;
    struct Task *t;
    struct Object4 *r0, *r4;
    u8 var;

    ++r5; --r5;
    r6 = r5;
    if (!(r5->unk0.base.flags & 0x1000))
    {
        t = TaskCreate(sub_08106BE0, sizeof(struct Object4), 0xFFF, 0x10, sub_0803DCCC);
        r4 = TaskGetStructPtr(t, r0);
        sub_0803E3B0(r4);
        r4->unk0 = 3;
        r4->unk34 = r5->unk0.base.x;
        r4->unk38 = r5->unk0.base.y;
        r4->unk44 = &r5->unk0;
        r4->unk42 = r5->unk0.base.unk60;
        if (!(r5->unk0.base.flags & 1)) r4->unk6 |= 1;
        var = ((r6->unk0.type == OBJ_UNKNOWN_D4
                ? r6->unk0.unk83
                : r6->unk0.type - OBJ_DARK_MIND_STAR_FIRE) << 1) + 1;
        sub_080709F8(r4, &r4->unkC, 0x10, 0x399, var, 27);
        r4->unkC.unk1F = 0; // redundant
        Macro_081050E8(r4, 0x399, 1);
        r4->unk4 = 1;
    }
}

#define Macro_08106BE0(obj4) \
({ \
    if (!((obj4)->unk6 & 0x400) && gKirbys[gUnk_0203AD3C].base.base.unk60 == (obj4)->unk42) \
    { \
        (obj4)->unkC.unk10 += gUnk_0203AD18[0]; \
        (obj4)->unkC.unk12 += gUnk_0203AD18[1]; \
        if ((obj4)->unk6 & 0x4000) \
            sub_081564D8(&(obj4)->unkC); \
        else \
            sub_0815604C(&(obj4)->unkC); \
    } \
})

void sub_08106BE0(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r6 = TaskGetStructPtr(gCurTask, r0);
    struct ObjectBase *r8 = &r6->unk44->base;
    struct Object2 *r7 = r6->unk44;

    if (r6->unk6 & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    if (r8->flags & 0x1000)
    {
        r6->unk6 |= 0x1000;
        return;
    }
    Macro_08105278_4(r6, &sprite, 0x10);
    Macro_081050E8(r6, 0x398, !r6->unkC.unk1F);
    r6->unk6 |= 4;
    r6->unk6 &= ~1;
    r6->unk6 |= (r7->base.flags ^ 1) & 1;
    r6->unk42 = r7->base.unk60;
    if (r7->base.unkC & 0x400)
    {
        r6->unk6 |= 0x1000;
        return;
    }
    if (r6->unk4)
    {
        r6->unk34 = r8->unk48 - r8->xspeed - r8->xspeed;
        r6->unk38 = r8->unk4C + r8->yspeed + r8->yspeed;
        if (!(gUnk_03000510.unk4 & ((1 << r8->unk56) | 0x10)))
        {
            struct Sprite *r4;
            s32 r0;

            if (r6->unk6 & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
                r4 = r0;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
                r4 = r0;
            }
            if (!(r6->unk6 & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->unk6 &= ~4;
                }
                r0 = sub_08155128(r4);
                if (!r0)
                {
                    r6->unk6 |= 2;
                    if (r6->unk6 & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->unk6 &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(r4);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->unk6 &= ~2;
                }
            }
            r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r6->unk40;
            r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r6->unk41;
            if (r6->unkC.unk1C)
            {
                r6->unk40 = 0;
                r6->unk41 = 0;
            }
        }
        r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unk34 = r8->unk48;
        r6->unk38 = r8->unk4C;
        r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
    }
    else
    {
        r6->unk34 = r8->unk48;
        r6->unk38 = r8->unk4C;
        if (!(gUnk_03000510.unk4 & ((1 << r8->unk56) | 0x10)))
        {
            struct Sprite *r4;
            s32 r0;

            if (r6->unk6 & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
                r4 = r0;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
                r4 = r0;
            }
            if (!(r6->unk6 & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->unk6 &= ~4;
                }
                r0 = sub_08155128(r4);
                if (!r0)
                {
                    r6->unk6 |= 2;
                    if (r6->unk6 & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->unk6 &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(r4);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->unk6 &= ~2;
                }
            }
            r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r6->unk40;
            r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r6->unk41;
            if (r6->unkC.unk1C)
            {
                r6->unk40 = 0;
                r6->unk41 = 0;
            }
        }
        else
        {
            r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
            r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        }
        Macro_08106BE0(r6);
    }
}

struct Object2 *sub_08107254(struct Object2 *r3)
{
    struct Object2 *r0;
#ifndef NONMATCHING
    register s32 r5, r8 asm("r8");
#else
    s32 r5, r8;
#endif
    struct Object2 *r7;

    r7 = r3;
    if (r3->base.flags & 1)
        gUnk_0203AD10 += 0; // something happens here that changes regalloc
    r8 = r3->base.x >> 8;
    ++r3; --r3;
    r5 = r7->base.y >> 8;
    if (r3->type == OBJ_DARK_MIND_FORM_2)
        r5 += 0x20;
    r0 = Macro_081059A8(r7, r8, r5, OBJ_DARK_MIND_BOMB, 0, r3->subtype);
    r3 = r0;
    if (r7->base.flags & 1)
        r3->base.flags |= 1;
    return r3;
}

struct Object2 *CreateDarkMindBomb(struct Object *r5, u8 r4)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object8), 0x1000, 0x10, ObjectDestroy);
    struct Object8 *obj8 = TaskGetStructPtr(t, obj8);

    InitObject(&obj8->unk0, r5, r4);
    obj8->unkB4 = NULL;
    obj8->unk0.base.unkC |= 1;
    obj8->unk0.base.unkC |= 4;
    obj8->unk0.base.unkC |= 0x800;
    obj8->unk0.base.flags |= 0x4000000;
    obj8->unk0.base.unk5C &= ~7;
    obj8->unk0.base.unk5C |= 3;
    obj8->unk0.unk9E = 0;
    obj8->unk0.unk7C = (void *)sub_0810A034;
    sub_0803E2B0(&obj8->unk0.base, -4, -4, 4, 4);
    sub_0803E308(&obj8->unk0.base, -4, -4, 4, 4);
    ObjectInitSprite(&obj8->unk0);
    obj8->unk0.base.unk10.unk14 = 0x600;
    sub_081099A4(obj8);
    obj8->unk0.base.counter = 200;
    return (void *)obj8;
}

void sub_08107408(struct Object8 *r4)
{
    struct ObjectBase *r5 = r4->unk0.base.parent;
    struct Object8 *r7 = r4;

    r4->unk0.base.flags |= 4;
    if (r4->unk0.base.unk62 & 4 && !--r4->unk0.base.counter)
    {
        r4->unk0.base.flags |= 0x200;
        r4->unk0.base.flags |= 0x40;
        r4->unk0.unk83 = 1;
    }
    if (r4->unk0.base.flags & 0x40)
    {
        r4->unk0.base.yspeed += 4;
        if (r4->unk0.base.yspeed > 0x180)
            r4->unk0.base.yspeed = 0x180;
        if (r4->unk0.base.y <= 0x5800)
        {
            r4->unk0.base.y = 0x5800;
            r4->unk0.base.yspeed = 0;
        }
        if (!r4->unk0.base.yspeed)
        {
            if (!r4->unk0.unk9F)
            {
                struct Object4 *r0 = sub_0808AE30(&r4->unk0, 0x30, 0x233, 0);

                r0->unkC.unk1F = r5->unk10.unk1F;
                r0->unkC.unk14 = 0x6C0;
                r0->unkC.unk1C = 8;
                PlaySfx(&r4->unk0.base, 430);
            }
            if (++r4->unk0.unk9F > 0x3A)
            {
                r7->unkB4 = sub_08086938(&r4->unk0, 0);
                sub_08109F90(r4);
            }
        }
    }
}

void sub_08107560(struct Object8 *r5)
{
    struct Object8 *r4 = r5;
    u32 c;

    if (r5->unk0.unk83 == 2)
    {
        if (r5->unk0.base.flags & 2)
            r5->unk0.unk83 = 3;
    }
    else
    {
        r5->unk0.base.flags |= 4;
    }
    c = --r5->unk0.base.counter;
    if (!c)
    {
        sub_08107844(&r5->unk0);
        sub_08086A28(r4->unkB4, 0);
        r4->unkB4 = (void *)c; // this is probably just an uninitialized use (UB) but I can't match it in that way
        sub_08109FBC(r5);
        sub_080860A8(&r5->unk0, gUnk_08357268);
        sub_08108280(&r5->unk0);
        sub_08108960(&r5->unk0);
        sub_08109304(&r5->unk0, 0);
        sub_08109304(&r5->unk0, 1);
    }
}

void sub_081075DC(struct DarkMind *r5) // not referenced
{
    struct DarkMind *r3;
    s32 r7, sb;
    struct DarkMind *ip;
#ifndef NONMATCHING
    register u32 r0, r1 asm("r1");
#else
    u32 r0, r1;
#endif

    ip = r5;
#ifndef NONMATCHING
    asm("":"=r"(r5)); // ip can be different from r5
#endif
    r0 = r5->unk0.base.flags;
    r1 = 1;
    if (r0 & r1)
        gUnk_0203AD10 += 0; // something happens here that changes regalloc
    r7 = r5->unk0.base.x >> 8;
    sb = r5->unk0.base.y >> 8;
    r3 = (void *)Macro_081059A8_2(&r5->unk0, r7, sb, OBJ_UNKNOWN_CF, 0, 0);
    r3->unk0.base.parent = r5;
    ++r7; --r7;
    ip->unkC0 = &r3->unk0;
    r3->unk0.base.xspeed = 0x2E00;
    r3->unk0.base.yspeed = 0;
    sub_0803E2B0(&r3->unk0.base, -8, -6, 8, 10);
    r3 = (void *)Macro_081059A8_2(&r5->unk0, r7, sb, OBJ_UNKNOWN_CF, 0, 0);
    r3->unk0.base.parent = r5;
    ip->unkC4 = &r3->unk0;
    r3->unk0.base.xspeed = -0x2C00;
    r3->unk0.base.yspeed = 0;
    sub_0803E2B0(&r3->unk0.base, -10, -4, 6, 12);
}

struct Object2 *sub_08107780(struct Object *r6, u8 r5)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r4 = TaskGetStructPtr(t, r4);

    InitObject(r4, r6, r5);
    r4->base.flags |= 0x40;
    r4->base.flags |= 0x100;
    r4->base.flags |= 0x2000000;
    r4->base.flags |= 0x400;
    r4->base.flags |= 0x800;
    r4->base.unkC |= 1;
    r4->base.unkC |= 4;
    r4->base.unk5C &= ~7; // redundant
    r4->base.unk5C |= 7;
    r4->base.unk5C |= 0xFFFF;
    r4->unk9E = 0;
    r4->unk7C = sub_0809F840;
    sub_0803E2B0(&r4->base, -8, -8, 8, 8);
    ObjectInitSprite(r4);
    sub_081099C0(r4);
    return r4;
}

void sub_08107844(struct Object2 *r5)
{
    struct Task *t = TaskCreate(sub_0810792C, sizeof(struct ObjectBase), 0x3500, 0x10, NULL);
    struct ObjectBase *r4 = TaskGetStructPtr(t, r4);

    sub_0803E380(r4);
    r4->unk0 = 2;
    r4->x = r5->base.x;
    r4->y = r5->base.y;
    r4->parent = r5;
    r4->counter = 0;
    r4->unk60 = r5->base.unk60;
    r4->unk56 = r5->base.unk56;
    if (gUnk_03000510.unk4 & ((1 << r4->unk56) | 0x10))
        r4->flags |= 0x2000;
    r4->unk64 = 0;
    r4->unk66 = 0;
    r4->unk63 = 1;
    r4->flags |= 0x10000000;
    r4->flags |= 0x400;
    r4->unk68 |= 0x20000043;
    r4->unk5C |= 0xFFFF;
    sub_0803E2B0(r4, -120, -80, 120, 80);
    r4->counter = 4;
}

void sub_0810792C(void)
{
    struct ObjectBase *r0, *r4 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r6 = r4->parent;
    u32 r1;

    if (r4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (r6->base.flags & 0x1000)
        r4->flags |= 0x1000;
    else if (!sub_0806F780(r4))
    {
        if (!--r4->counter)
            r4->flags |= 0x1000;
        else
        {
            SetPointerSomething(r4);
            r4->x = gCurLevelInfo[r6->base.unk56].unkC + 0x7800;
            r4->y = gCurLevelInfo[r6->base.unk56].unk10 + 0x5000;
        }
    }
}

#define Macro_08107A48(objBase, param, cond) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.unk60 == (objBase)->unk60) \
    { \
        if (cond) \
        { \
            (objBase)->unk10.unk1F = sub_0803DF24((param)); \
            if ((objBase)->unk10.unk1F == 0xFF) \
                (objBase)->unk10.unk1F = sub_0803DFAC((param), 0); \
        } \
    } \
    else \
        (objBase)->unk10.unk1F = 0; \
})

struct ObjectBase *sub_08107A48(struct Object2 *r4)
{
    struct Task *t = TaskCreate(sub_08107BA8, sizeof(struct ObjectBase), 0x3500, 0x10, sub_0810A104);
    struct ObjectBase *r0, *r5 = TaskGetStructPtr(t, r0);

    sub_0803E380(r0);
    r5->unk0 = 2;
    r5->x = r4->base.x;
    r5->y = r4->base.y;
    r5->parent = r4;
    r5->counter = 0;
    r5->unk60 = r4->base.unk60;
    r5->unk56 = r4->base.unk56;
    if (gUnk_03000510.unk4 & ((1 << r5->unk56) | 0x10))
        r5->flags |= 0x2000;
    r5->unk63 = 0;
    r5->flags |= 0x10000000;
    r5->unk68 = 0x80;
    r5->unk5C |= 0x80000;
    r5->x = 0x8000;
    r5->y = 0;
    sub_0803E2B0(r5, -4, -4, 4, 4);
    sub_0803E308(r5, -4, -4, 4, 8);
    sub_080708DC(r5, &r5->unk10, 0x10, 0x2C3, 3, 26);
    r5->unk10.unk1F = 0;
    Macro_08107A48(r5, 0x2C3, 1);
    gUnk_0203AD34 = 1;
    return r5;
}

#define Macro_08107BA8_1(objBase, dst, val) \
({ \
    struct Sprite *_spr; \
 \
    (_spr = &(objBase)->unk10)->unk0 = sub_0803DE54((val), (objBase)->unk10.unkC, (objBase)->unk10.unk1A); \
    _spr->unk8 = (objBase)->unk10.unk8 & ~0x80000; \
    CpuCopy32(_spr, (dst), sizeof(struct Sprite)); \
    sub_0815521C((dst), (objBase)->unk1); \
    _spr->unk8 = (objBase)->unk10.unk8 | 0x80000; \
})

#define Macro_08107BA8_2(objBase, dst, val) \
({ \
    struct Sprite *_spr; \
 \
    (_spr = &(objBase)->unk10)->unk0 = sub_081570B0((val)); \
    _spr->unk8  = (objBase)->unk10.unk8 & ~0x80000; \
    CpuCopy32(_spr, (dst), sizeof(struct Sprite)); \
    sub_0815521C((dst), (objBase)->unk1); \
})

#define Macro_08107BA8_3(objBase) \
({ \
    if ((objBase)->unk10.unk0 && !((objBase)->flags & 0x4000)) \
    { \
        sub_08157190((objBase)->unk10.unk0); \
        (objBase)->unk10.unk0 = 0; \
    } \
    (objBase)->unk10.unk8 |= 0x80000; \
})

#define Macro_08107BA8_4(objBase, dst, val) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.unk60 == (objBase)->unk60) \
    { \
        if ((objBase)->flags & 0x4000) \
        { \
            if (!(objBase)->unk10.unk0) \
                Macro_08107BA8_1((objBase), (dst), (val)); \
        } \
        else if (!(objBase)->unk10.unk0) \
            Macro_08107BA8_2((objBase), (dst), (val)); \
    } \
    else \
        Macro_08107BA8_3((objBase)); \
})

void sub_08107BA8(void)
{
    struct Sprite sprite;
    struct ObjectBase *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r8 = r5->parent;

    Macro_08107BA8_4(r5, &sprite, 0x10);
    Macro_08107A48(r5, 0x2C3, !r5->unk10.unk1F);
    if (r8->base.flags & 0x1000 || r8->base.unk60 == 0xFFFF)
        r5->unk60 = 0xFFFF;
    if (!sub_0806F780(r5))
    {
        r5->flags |= 4;
        if (!(r5->flags & 0x200))
            SetPointerSomething(r5);
        if (!(r5->flags & 0x100))
        {
            r5->yspeed -= 0x20;
            if (r5->yspeed < -0x300)
                r5->yspeed = -0x300;
            if (!(r5->flags & 0x800))
            {
                r5->x += r5->xspeed;
                r5->y -= r5->yspeed;
            }
            sub_0809D8C8((void *)r5); // TODO: this function may eventually call sub_0800385C which really expects struct Object2 *... Maybe it never enters that branch in this case? 
            if (r5->unk62 & 4)
            {
                r5->unk10.unk1A = 4;
                r5->flags |= 0x100;
                r5->yspeed = 0;
                sub_08107ED4((void *)r5);
            }
        }
        sub_0806F8BC((void *)r5);
        if (r5->flags & 0x40000)
        {
            struct Kirby *r2 = r5->kirby1;

            r5->flags &= ~0x40000;
            if (r2
                && !r2->base.base.unk0
                && r2->base.base.unk56 < gUnk_0203AD30
                && r2->hp > 0
                && r2->unkD4 != 39
                && r2->unkD4 < 123
                && !r2->unk110
                && !(r2->base.base.flags & 0x3800B00))
            {
                r2->unkDD = 26;
                sub_08054C0C(r2);
                r2->unkD4 = 15;
                r5->flags |= 0x1000;
            }
        }
    }
}

void sub_08107ED4(struct Object2 *r4)
{
    struct Task *t = TaskCreate(sub_08107FC4, sizeof(struct Object4), 0x3500, 0x10, sub_0803DCCC);
    struct Object4 *r5 = TaskGetStructPtr(t, r5);

    sub_0803E3B0(r5);
    r5->unk0 = 3;
    r5->unk34 = r4->base.x;
    r5->unk38 = r4->base.y;
    r5->unk44 = r4;
    r5->unk42 = r4->base.unk60;
    r5->unk38 -= 0x2800;
    sub_080709F8(r5, &r5->unkC, 20, gUnk_083572D0[gUnk_08D60A80][0], gUnk_083572D0[gUnk_08D60A80][1], 1);
    r5->unkC.unk1F = 0;
    Macro_081050E8(r5, 0x2C3, 1);
}

void sub_08107FC4(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r3;

    r5->unkC.unk1F = r5->unk44->base.unk10.unk1F;
    if (r5->unk6 & 0x1000)
        TaskDestroy(gCurTask);
    else if (r5->unk44->base.flags & 0x1000)
        r5->unk6 |= 0x1000;
    else
    {
        u8 r0;

        Macro_08105278_4(r5, &sprite, 0x14);
        Macro_081050E8(r5, 0x2C3, !r5->unkC.unk1F);
        r3 = r5->unk44;
        if (r3)
        {
            if (r3->base.unk0 && r3->base.flags & 0x1000)
            {
                r5->unk44 = 0;
                r3 = NULL;
            }
            if (!r3)
                goto _081081A8;
            if (gUnk_03000510.unk4 & ((1 << r3->base.unk56) | 0x10) && !(r5->unk6 & 0x2000))
            {
                sub_0803DBC8(r5);
                return;
            }
        }
        else
        {
        _081081A8:
            KirbySomething(r5);
        }
        // TODO: fix this loop
        for (r0 = gUnk_0203AD44; r0; --r0) {
            if (gCurLevelInfo[r0 - 1].currentRoom == r5->unk42 && !(gUnk_02026D50[gCurLevelInfo[r0 - 1].unk65E] & 8)) {
                goto _08108266;
            }
        }
#ifndef NONMATCHING
        asm("mov\t%0, #1":"=r"(r0));
#else
        r0 = 1;
#endif
        if (r0) {
            r5->unk6 |= 0x1000;
        }
    _08108266:
        sub_0806FAC8(r5);
    }
}

void sub_08108280(struct Object2 *r5)
{
    struct Task *t = TaskCreate(sub_08108368, sizeof(struct Object4), 0x3500, 0x10, sub_0803DCCC);
    struct Object4 *r4 = TaskGetStructPtr(t, r4);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->base.x;
    r4->unk38 = r5->base.y;
    r4->unk44 = r5;
    r4->unk42 = r5->base.unk60;
    r4->unk38 -= 0x4000;
    sub_080709F8(r4, &r4->unkC, 0x30, 0x399, 15, 25);
    r4->unkC.unk1F = 0;
    r4->unk4 = 14;
    Macro_081050E8(r4, 0x39A, !r4->unkC.unk1F);
}

void sub_08108368(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r6 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r7 = r6->unk44;

    if (r6->unk6 & 0x1000)
        TaskDestroy(gCurTask);
    else if (r7->base.flags & 0x1000)
        r6->unk6 |= 0x1000;
    else
    {
        u8 r0;

        Macro_08105278_4(r6, &sprite, 0x30);
        Macro_081050E8(r6, 0x39A, !r6->unkC.unk1F);
        // TODO: fix this loop
        for (r0 = gUnk_0203AD44; r0; --r0) {
            if (gCurLevelInfo[r0 - 1].currentRoom == r6->unk42 && !(gUnk_02026D50[gCurLevelInfo[r0 - 1].unk65E] & 8)) {
                goto _08108556;
            }
        }
#ifndef NONMATCHING
        asm("mov\t%0, #1":"=r"(r0));
#else
        r0 = 1;
#endif
        if (r0) {
            r6->unk6 |= 0x1000;
        }
    _08108556:
        r6->unk34 = r7->base.x;
        r6->unk38 = r7->base.y;
        if (!(gUnk_03000510.unk4 & ((1 << r7->base.unk56) | 0x10))
            || r7->base.flags & 0x2000)
        {
            struct Sprite *r4;
            s32 r0;

            if (!--r6->unk4)
            {
                r6->unk6 |= 0x1000;
                return;
            }
            r6->unk6 |= 4;
            if (r6->unk6 & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
                r4 = r0;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
                r4 = r0;
            }
            if (!(r6->unk6 & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->unk6 &= ~4;
                }
                r0 = sub_08155128(r4);
                if (!r0)
                {
                    r6->unk6 |= 2;
                    if (r6->unk6 & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->unk6 &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(r4);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->unk6 &= ~2;
                }
            }
            r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r6->unk40;
            r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r6->unk41;
            if (r6->unkC.unk1C)
            {
                r6->unk40 = 0;
                r6->unk41 = 0;
            }
        }
        r6->unkC.unk10 = ((r6->unk34 + 0x3000) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk10 = ((r6->unk34 + 0x7000) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk8 ^= 0x400;
        r6->unkC.unk10 = ((r6->unk34 - 0x3000) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk10 = ((r6->unk34 - 0x7000) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk8 ^= 0x400;
    }
}

void sub_08108960(struct Object2 *r4)
{
    struct Task *t = TaskCreate(sub_08108A50, sizeof(struct Object4), 0x3500, 0x10, sub_0803DCCC);
    struct Object4 *r5 = TaskGetStructPtr(t, r5);

    sub_0803E3B0(r5);
    r5->unk0 = 3;
    r5->unk34 = r4->base.x;
    r5->unk38 = r4->base.y;
    r5->unk44 = r4;
    r5->unk42 = r4->base.unk60;
    r5->unk38 -= 0x4000;
    sub_080709F8(r5, &r5->unkC, 0x30, 0x399, 14, 25);
    r5->unkC.unk1F = 0;
    r5->unk4 = 14;
    Macro_081050E8(r5, 0x39A, !r5->unkC.unk1F);
}

void sub_08108A50(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r6 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r7 = r6->unk44;

    if (r6->unk6 & 0x1000)
        TaskDestroy(gCurTask);
    else if (r7->base.flags & 0x1000)
        r6->unk6 |= 0x1000;
    else
    {
        u8 r0;

        Macro_08105278_4(r6, &sprite, 0x30);
        Macro_081050E8(r6, 0x39A, !r6->unkC.unk1F);
        // TODO: fix this loop
        for (r0 = gUnk_0203AD44; r0; --r0) {
            if (gCurLevelInfo[r0 - 1].currentRoom == r6->unk42 && !(gUnk_02026D50[gCurLevelInfo[r0 - 1].unk65E] & 8)) {
                goto _08108C42;
            }
        }
#ifndef NONMATCHING
        asm("mov\t%0, #1":"=r"(r0));
#else
        r0 = 1;
#endif
        if (r0) {
            r6->unk6 |= 0x1000;
        }
    _08108C42:
        r6->unk34 = r7->base.x;
        r6->unk38 = r7->base.y;
        if (!(gUnk_03000510.unk4 & ((1 << r7->base.unk56) | 0x10))
            || r7->base.flags & 0x2000)
        {
            struct Sprite *r4;
            s32 r0;

            if (!--r6->unk4)
            {
                r6->unk6 |= 0x1000;
                return;
            }
            r6->unk6 |= 4;
            if (r6->unk6 & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
                r4 = r0;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
                r4 = r0;
            }
            if (!(r6->unk6 & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->unk6 &= ~4;
                }
                r0 = sub_08155128(r4);
                if (!r0)
                {
                    r6->unk6 |= 2;
                    if (r6->unk6 & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->unk6 &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(r4);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->unk6 &= ~2;
                }
            }
            r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r6->unk40;
            r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r6->unk41;
            if (r6->unkC.unk1C)
            {
                r6->unk40 = 0;
                r6->unk41 = 0;
            }
        }
        r6->unkC.unk8 ^= 0x400;
        r6->unkC.unk10 = ((r6->unk34 + 0x1400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 - 0x2400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk10 = ((r6->unk34 + 0x2C00) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 - 0x6400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk8 ^= 0x400;
        r6->unkC.unk10 = ((r6->unk34 - 0x1400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 - 0x2400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk10 = ((r6->unk34 - 0x2C00) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 - 0x6400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk8 ^= 0x800;
        r6->unkC.unk10 = ((r6->unk34 - 0x1400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 + 0x2400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk10 = ((r6->unk34 - 0x2C00) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 + 0x6400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk8 ^= 0x400;
        r6->unkC.unk10 = ((r6->unk34 + 0x1400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 + 0x2400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk10 = ((r6->unk34 + 0x2C00) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r6->unkC.unk12 = ((r6->unk38 + 0x6400) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        Macro_08106BE0(r6);
        r6->unkC.unk8 ^= 0x800;
    }
}

struct Object4 *sub_08109304(struct Object2 *sp10, u8 sp08)
{
    u8 sp0C = 16;
    struct Task *t = TaskCreate(sub_081094C4, sizeof(struct Object9), 0x3501, 0x10, sub_0803DCCC);
    struct Object9 *r0, *r5;
    struct Object4 *r4;
    u8 i;
    
    TaskGetStructPtr(t, r0);
    r4 = &r0->unk0;
    r5 = r0;
    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = sp10->base.x;
    r4->unk38 = sp10->base.y;
    r4->unk44 = sp10;
    r4->unk42 = sp10->base.unk60;
    r4->unk44 = sp10->base.parent;
    r4->unk4 = 0;
    for (i = 0; i < 4; ++i)
    {
        r5->unk48[i][0] = sp10->base.x;
        r5->unk48[i][1] = sp10->base.y;
        r5->unk68[i][0] = (Rand16() & 0x3FF) + 0x300;
        r5->unk68[i][1] = (Rand16() & 0x3FF) + 0x300;
        if (Rand16() & 1) r5->unk68[i][0] = -r5->unk68[i][0];
        if (Rand16() & 1) r5->unk68[i][1] = -r5->unk68[i][1];
    }
    if (sp08) sp0C = 17;
    sub_080709F8(r4, &r4->unkC, 4, 0x399, sp0C, 0x18);
    r4->unkC.unk1F = 0;
    Macro_081050E8(r4, 0x39A, 1);
    return r4;
}
