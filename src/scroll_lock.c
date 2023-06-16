#include "malloc_ewram.h"
#include "scroll_lock.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"

static void sub_0811C8BC(struct Unk_0811C9D4_0 *, u8, u16);
static void sub_0811CB44(struct Object2 *);
static void sub_0811CBB8(struct Object2 *);
static void sub_0811CD1C(struct Object2 *);
static void sub_0811CD90(struct Object2 *);
static void sub_0811CEF4(struct Object2 *);
static void sub_0811D158(struct Object2 *);
static void sub_0811D508(struct Object2 *);
static void sub_0811D68C(struct Object2 *);
static void sub_0811DB48(struct Object2 *, s32);

const struct Unk_02021590 gUnk_08357C60[] = {
    { 0x2D1, 2, 0 },
};

static void sub_0811C7D0(struct Unk_0811C9D4_0 *a1, u8 a2, u16 a3)
{
    gCurLevelInfo[a2].unk7C = a1->unk8;
    gCurLevelInfo[a2].unk84 = a1->unk10;
    gCurLevelInfo[a2].unk80 = a1->unkC;
    gCurLevelInfo[a2].unk88 = a1->unk14;
    gCurLevelInfo[a2].unkA0 = a1->unk8;
    gCurLevelInfo[a2].unkA4 = a1->unkC;
    gCurLevelInfo[a2].unkA8 = a1->unk10;
    gCurLevelInfo[a2].unkAC = a1->unk14;
    if (a3 & 0x10)
    {
        gCurLevelInfo[a2].unk6C = a1->unk8;
        gCurLevelInfo[a2].unk74 = a1->unk10;
        gCurLevelInfo[a2].unk70 = a1->unkC;
        gCurLevelInfo[a2].unk78 = a1->unk14;
        if (!(a1->unk4 & (0x10 << a2)))
        {
            a1->unk4 |= 0x10 << a2;
            gCurLevelInfo[a2].unk90 = a1->unk8;
            gCurLevelInfo[a2].unk94 = a1->unkC;
            gCurLevelInfo[a2].unk98 = a1->unk10;
            gCurLevelInfo[a2].unk9C = a1->unk14;
        }
    }
    else
        sub_0811C8BC(a1, a2, a3);
}

static void sub_0811C8BC(struct Unk_0811C9D4_0 *a1, u8 a2, u16 a3 __attribute__((unused)))
{
    if (!(a1->unk4 & (0x10 << a2))) {
        a1->unk4 |= 0x10 << a2;
        if (a1->unk10 - a1->unk8 >= 0xF000)
        {
            if (gCurLevelInfo[a2].unk6C <= gCurLevelInfo[a2].unkC - 0x800)
                gCurLevelInfo[a2].unk6C = gCurLevelInfo[a2].unkC - 0x800;
            if (gCurLevelInfo[a2].unk74 >= gCurLevelInfo[a2].unkC + 0xF800)
                gCurLevelInfo[a2].unk74 = gCurLevelInfo[a2].unkC + 0xF800;
        }
        if (a1->unk14 - a1->unkC >= 0xA000)
        {
            if (gCurLevelInfo[a2].unk70 <= gCurLevelInfo[a2].unk10 - 0x800)
                gCurLevelInfo[a2].unk70 = gCurLevelInfo[a2].unk10 - 0x800;
            if (gCurLevelInfo[a2].unk78 >= gCurLevelInfo[a2].unk10 + 0xA800)
                gCurLevelInfo[a2].unk78 = gCurLevelInfo[a2].unk10 + 0xA800;
        }
        if (gCurLevelInfo[a2].unk90 <= gCurLevelInfo[a2].unkC - 0x800)
            gCurLevelInfo[a2].unk90 = gCurLevelInfo[a2].unkC - 0x800;
        if (gCurLevelInfo[a2].unk94 <= gCurLevelInfo[a2].unk10 - 0x800)
            gCurLevelInfo[a2].unk94 = gCurLevelInfo[a2].unk10 - 0x800;
        if (gCurLevelInfo[a2].unk98 >= gCurLevelInfo[a2].unkC + 0xF800)
            gCurLevelInfo[a2].unk98 = gCurLevelInfo[a2].unkC + 0xF800;
        if (gCurLevelInfo[a2].unk9C >= gCurLevelInfo[a2].unk10 + 0xF800)
            gCurLevelInfo[a2].unk9C = gCurLevelInfo[a2].unk10 + 0xF800;
    }
}

void sub_0811C9D4(struct Object2 *scrollLock)
{
    u8 unk56;
    struct Unk_0811C9D4_0 *p;

    scrollLock->base.counter = 0;
    switch (scrollLock->object->unk22 & 3)
    {
    case 0:
        scrollLock->unk8C = EwramMalloc(sizeof(struct Unk_0811C9D4_0));
        CpuFill32(0, scrollLock->unk8C, sizeof(struct Unk_0811C9D4_0));
        ((struct Unk_0811C9D4_0 *)scrollLock->unk8C)->unk0 = 1;
        break;
    case 1:
        scrollLock->unk8C = EwramMalloc(sizeof(struct Unk_0811C9D4));
        CpuFill32(0, scrollLock->unk8C, sizeof(struct Unk_0811C9D4));
        ((struct Unk_0811C9D4 *)scrollLock->unk8C)->unk0.unk0 = 1; // 2?
        break;
    case 2:
        scrollLock->unk8C = EwramMalloc(sizeof(struct Unk_0811C9D4_0));
        CpuFill32(0, scrollLock->unk8C, sizeof(struct Unk_0811C9D4_0));
        ((struct Unk_0811C9D4_0 *)scrollLock->unk8C)->unk0 = 3;
        break;
    case 3:
        scrollLock->unk8C = EwramMalloc(sizeof(struct Unk_0811C9D4));
        CpuFill32(0, scrollLock->unk8C, sizeof(struct Unk_0811C9D4));
        ((struct Unk_0811C9D4 *)scrollLock->unk8C)->unk0.unk0 = 4;
        break;
    }
    unk56 = scrollLock->base.unk56;
    p = (struct Unk_0811C9D4_0 *)scrollLock->unk8C;
    p->unk18 = gCurLevelInfo[unk56].unk7C;
    p->unk1C = gCurLevelInfo[unk56].unk80;
    p->unk20 = gCurLevelInfo[unk56].unk84;
    p->unk24 = gCurLevelInfo[unk56].unk88;
    p->unk28 = gCurLevelInfo[unk56].unkA0;
    p->unk2C = gCurLevelInfo[unk56].unkA4;
    p->unk30 = gCurLevelInfo[unk56].unkA8;
    p->unk34 = gCurLevelInfo[unk56].unkAC;
    switch (p->unk0)
    {
    case 1:
        sub_0811CB44(scrollLock);
        break;
    case 2:
        sub_0811CBB8(scrollLock);
        break;
    case 3:
        sub_0811CD1C(scrollLock);
        break;
    case 4:
        sub_0811CD90(scrollLock);
        break;
    }
}

static void sub_0811CB44(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4_0 *p = scrollLock->unk8C;

    p->unk8 = (scrollLock->object->unk14 & 0xFF00) << 4;
    p->unkC = (scrollLock->object->unk14 & 0xFF) << 12;
    p->unk10 = p->unk8 + ((scrollLock->object->unk12 & 0xFF00) << 4);
    p->unk14 = p->unkC + ((scrollLock->object->unk12 & 0xFF) << 12);
    if (scrollLock->object->unk22 & 4)
    {
        p->unk8 += 0x800;
        p->unkC += 0x800;
        p->unk10 += 0x800;
        p->unk14 += 0x800;
    }
    scrollLock->unk78 = sub_0811CEF4;
    p->unk38 = p->unk8;
    p->unk3C = p->unkC;
}

static void sub_0811CBB8(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4 *p = scrollLock->unk8C;

    p->unk0.unk8 = (scrollLock->object->unk14 & 0xFF00) << 4;
    p->unk0.unkC = (scrollLock->object->unk14 & 0xFF) << 12;
    p->unk0.unk10 = p->unk0.unk8 + ((scrollLock->object->unk12 & 0xFF00) << 4);
    p->unk0.unk14 = p->unk0.unkC + ((scrollLock->object->unk12 & 0xFF) << 12);
#ifndef NONMATCHING
    asm(""::"r"(gCurLevelInfo));
    asm(""::"r"(&scrollLock->base.unk56));
#endif
    p->unk44 = (scrollLock->object->unk18 & 0xFF00) >> 4;
    p->unk46 = scrollLock->object->unk18;
    p->unk48 = (scrollLock->object->unk16 & 0xFF00) >> 4;
    p->unk4A = scrollLock->object->unk16;
    if (p->unk46 >= 0)
    {
        p->unk4C = p->unk0.unk8 + p->unk0.unk10 - p->unk0.unk8 + (p->unk44 << 8);
        if (p->unk4C > (gCurLevelInfo[scrollLock->base.unk56].roomWidth << 8) - 0x800)
            p->unk4C = (gCurLevelInfo[scrollLock->base.unk56].roomWidth << 8) - 0x800;
    }
    else
    {
        p->unk4C = p->unk0.unk8 - (p->unk44 << 8);
        if (p->unk4C < 0x800)
            p->unk4C = 0x800;
    }
    if (p->unk4A >= 0)
    {
        p->unk50 = p->unk0.unkC + p->unk0.unk14 - p->unk0.unkC + (p->unk48 << 8);
        if (p->unk50 > (gCurLevelInfo[scrollLock->base.unk56].roomHeight << 8) - 0x1800)
            p->unk50 = (gCurLevelInfo[scrollLock->base.unk56].roomHeight << 8) - 0x1800;
    }
    else
    {
        p->unk50 = p->unk0.unkC + (p->unk48 << 8);
        if (p->unk50 < 0x800)
            p->unk50 = 0x800;
    }
    scrollLock->unk78 = sub_0811D158;
    p->unk0.unk38 = p->unk0.unk8;
    p->unk0.unk3C = p->unk0.unkC;
}

static void sub_0811CD1C(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4_0 *p = scrollLock->unk8C;

    p->unk8 = (scrollLock->object->unk14 & 0xFF00) << 4;
    p->unkC = (scrollLock->object->unk14 & 0xFF) << 12;
    p->unk10 = p->unk8 + ((scrollLock->object->unk12 & 0xFF00) << 4);
    p->unk14 = p->unkC + ((scrollLock->object->unk12 & 0xFF) << 12);
    if (scrollLock->object->unk22 & 4)
    {
        p->unk8 += 0x800;
        p->unkC += 0x800;
        p->unk10 += 0x800;
        p->unk14 += 0x800;
    }
    scrollLock->unk78 = sub_0811D508;
    p->unk38 = p->unk8;
    p->unk3C = p->unkC;
}

static void sub_0811CD90(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4 *p = scrollLock->unk8C;

    p->unk0.unk8 = (scrollLock->object->unk14 & 0xFF00) << 4;
    p->unk0.unkC = (scrollLock->object->unk14 & 0xFF) << 12;
    p->unk0.unk10 = p->unk0.unk8 + ((scrollLock->object->unk12 & 0xFF00) << 4);
    p->unk0.unk14 = p->unk0.unkC + ((scrollLock->object->unk12 & 0xFF) << 12);
#ifndef NONMATCHING
    asm(""::"r"(gCurLevelInfo));
    asm(""::"r"(&scrollLock->base.unk56));
#endif
    p->unk44 = (scrollLock->object->unk18 & 0xFF00) >> 4;
    p->unk46 = scrollLock->object->unk18;
    p->unk48 = (scrollLock->object->unk16 & 0xFF00) >> 4;
    p->unk4A = scrollLock->object->unk16;
    if (p->unk46 >= 0)
    {
        p->unk4C = p->unk0.unk8 + p->unk0.unk10 - p->unk0.unk8 + (p->unk44 << 8);
        if (p->unk4C > (gCurLevelInfo[scrollLock->base.unk56].roomWidth << 8) - 0x800)
            p->unk4C = (gCurLevelInfo[scrollLock->base.unk56].roomWidth << 8) - 0x800;
    }
    else
    {
        p->unk4C = p->unk0.unk8 - (p->unk44 << 8);
        if (p->unk4C < 0x800)
            p->unk4C = 0x800;
    }
    if (p->unk4A >= 0)
    {
        p->unk50 = p->unk0.unkC + p->unk0.unk14 - p->unk0.unkC + (p->unk48 << 8);
        if (p->unk50 > (gCurLevelInfo[scrollLock->base.unk56].roomHeight << 8) - 0x1800)
            p->unk50 = (gCurLevelInfo[scrollLock->base.unk56].roomHeight << 8) - 0x1800;
    }
    else
    {
        p->unk50 = p->unk0.unkC + (p->unk48 << 8);
        if (p->unk50 < 0x800)
            p->unk50 = 0x800;
    }
    scrollLock->unk78 = sub_0811D68C;
    p->unk0.unk38 = p->unk0.unk8;
    p->unk0.unk3C = p->unk0.unkC;
}

static void sub_0811CEF4(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4_0 *p = scrollLock->unk8C;
    s8 i;
    u16 roomId = scrollLock->base.roomId;

    if (gKirbys[0].base.base.base.roomId == roomId
        && gKirbys[1].base.base.base.roomId == gKirbys[0].base.base.base.roomId
        && gKirbys[2].base.base.base.roomId == gKirbys[1].base.base.base.roomId
        && gKirbys[3].base.base.base.roomId == gKirbys[2].base.base.base.roomId)
    {
        if (Macro_08039430_1(&gKirbys[0].base.base.base, scrollLock)
            && Macro_08039430_1(&gKirbys[1].base.base.base, scrollLock)
            && Macro_08039430_1(&gKirbys[2].base.base.base, scrollLock)
            && Macro_08039430_1(&gKirbys[3].base.base.base, scrollLock))
        {
            if (!(p->unk4 & 1))
            {
                p->unk4 |= 1;
                gCurLevelInfo[0].unk1EC = 0;
            }
            if (!(p->unk4 & 2))
            {
                p->unk4 |= 2;
                gCurLevelInfo[1].unk1EC = 0;
            }
            if (!(p->unk4 & 4))
            {
                p->unk4 |= 4;
                gCurLevelInfo[2].unk1EC = 0;
            }
            if (!(p->unk4 & 8))
            {
                p->unk4 |= 8;
                gCurLevelInfo[3].unk1EC = 0;
            }
            for (i = 0; i < gUnk_0203AD44; ++i)
                sub_0811C7D0(p, gKirbys[i].base.base.base.unk56, scrollLock->object->unk22);
        }
        else
            p->unk4 &= ~0xF;
        if (gKirbys[i].hp <= 0) // TODO: UB: uninitialized use
            sub_0811DB48(scrollLock, i);
        if (scrollLock->object->unk4)
        {
            u32 *pointer = sub_08002888(0, scrollLock->object->unk4, gCurLevelInfo[scrollLock->base.unk56].unk65E);

            if (*pointer)
            {
                --*pointer;
                scrollLock->base.flags |= 0x1000;
            }
        }
    }
    else
        p->unk4 &= ~0xF;
    ++scrollLock->base.counter;
}

static void sub_0811D158(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4 *p = scrollLock->unk8C;
    u8 i;
    u16 roomId = scrollLock->base.roomId;
    u8 unk56 = scrollLock->base.unk56;

    if (!(p->unk0.unk4 & 0x10000000))
    {
        if (gKirbys[0].base.base.base.roomId == roomId
            && gKirbys[1].base.base.base.roomId == gKirbys[0].base.base.base.roomId
            && gKirbys[2].base.base.base.roomId == gKirbys[1].base.base.base.roomId
            && gKirbys[3].base.base.base.roomId == gKirbys[2].base.base.base.roomId)
        {
            if (Macro_08039430_1(&gKirbys[0].base.base.base, scrollLock)
                && Macro_08039430_1(&gKirbys[1].base.base.base, scrollLock)
                && Macro_08039430_1(&gKirbys[2].base.base.base, scrollLock)
                && Macro_08039430_1(&gKirbys[3].base.base.base, scrollLock))
            {
                if (!(p->unk0.unk4 & 1))
                {
                    p->unk0.unk4 |= 1;
                    gCurLevelInfo[0].unk1EC = 0;
                }
                if (!(p->unk0.unk4 & 2))
                {
                    p->unk0.unk4 |= 2;
                    gCurLevelInfo[1].unk1EC = 0;
                }
                if (!(p->unk0.unk4 & 4))
                {
                    p->unk0.unk4 |= 4;
                    gCurLevelInfo[2].unk1EC = 0;
                }
                if (!(p->unk0.unk4 & 8))
                {
                    p->unk0.unk4 |= 8;
                    gCurLevelInfo[3].unk1EC = 0;
                }
                for (i = 0; i < gUnk_0203AD44; ++i)
                    sub_0811C7D0(&p->unk0, gKirbys[i].base.base.base.unk56, scrollLock->object->unk22);
                p->unk0.unk4 |= 0x10000000;
            }
            else
                p->unk0.unk4 &= ~0xF;
            if (gKirbys[i].hp <= 0) // TODO: UB: uninitialized use
                sub_0811DB48(scrollLock, i);
            if (scrollLock->object->unk4)
            {
                u32 *pointer = sub_08002888(0, scrollLock->object->unk4, gCurLevelInfo[scrollLock->base.unk56].unk65E);
        
                if (*pointer)
                {
                    --*pointer;
                    scrollLock->base.flags |= 0x1000;
                }
            }
        }
        else
            p->unk0.unk4 &= ~0xF;
    }
    else
    {
        if (p->unk46)
        {
            gCurLevelInfo[unk56].unk7C += p->unk46;
            gCurLevelInfo[unk56].unk84 += p->unk46;
            gCurLevelInfo[unk56].unkA0 += p->unk46;
            gCurLevelInfo[unk56].unkA8 += p->unk46;
            if (p->unk46)
            {
                if (p->unk46 > 0)
                {
                    if (gCurLevelInfo[unk56].unk84 > p->unk4C)
                        p->unk46 = 0;
                }
                else
                {
                    if (gCurLevelInfo[unk56].unk7C < 0x800)
                        p->unk46 = 0;
                }
            }
        }
        if (p->unk4A)
        {
            gCurLevelInfo[unk56].unk80 += p->unk4A;
            gCurLevelInfo[unk56].unk88 += p->unk4A;
            gCurLevelInfo[unk56].unkA4 += p->unk4A;
            gCurLevelInfo[unk56].unkAC += p->unk4A;
            if (p->unk4A)
            {
                if (p->unk4A > 0)
                {
                    if (gCurLevelInfo[unk56].unk88 > p->unk50)
                        p->unk4A = 0;
                }
                else
                {
                    if (gCurLevelInfo[unk56].unk80 < 0x800)
                        p->unk4A = 0;
                }
            }
        }
        if (!p->unk46 && !p->unk4A)
        {
            if (scrollLock->object->unk4)
            {
                u32 *pointer = sub_08002888(0, scrollLock->object->unk4, gCurLevelInfo[scrollLock->base.unk56].unk65E);
        
                if (*pointer)
                {
                    --*pointer;
                    scrollLock->base.flags |= 0x1000;
                }
            }
        }
    }
    ++scrollLock->base.counter;
}

static void sub_0811D508(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4_0 *p = scrollLock->unk8C;
    u16 roomId = scrollLock->base.roomId;
    u8 i;

    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        if (gKirbys[i].base.base.base.roomId == roomId)
        {
            if (Macro_08039430_1(&gKirbys[i].base.base.base, scrollLock))
            {
                if (!(gKirbys[i].base.base.base.unkC & 0x8000))
                {
                    if (!(p->unk4 & (1 << i)))
                    {
                        p->unk4 |= 1 << i;
                        gCurLevelInfo[i].unk1EC = 0;
                    }
                    sub_0811C7D0(p, gKirbys[i].base.base.base.unk56, scrollLock->object->unk22);
                }
            }
            else
                p->unk4 &= ~(1 << i);
            if (gKirbys[i].hp <= 0)
            {
                sub_0811DB48(scrollLock, i);
                p->unk4 &= ~(0x10 << i);
            }
            if (scrollLock->object->unk4)
            {
                u32 *pointer = sub_08002888(0, scrollLock->object->unk4, gCurLevelInfo[scrollLock->base.unk56].unk65E);

                if (*pointer)
                {
                    --*pointer;
                    scrollLock->base.flags |= 0x1000;
                }
            }
        }
        else
        {
            p->unk4 &= ~(0x10 << i);
            p->unk4 &= ~(1 << i);
        }
    }
    ++scrollLock->base.counter;
}

static void sub_0811D68C(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4 *p = scrollLock->unk8C;
    u16 roomId = scrollLock->base.roomId;
    u8 i;
    u8 unk56 = scrollLock->base.unk56;

    if (!(p->unk0.unk4 & 0x10000000))
    {
        for (i = 0; i < gUnk_0203AD44; ++i)
        {
            if (gKirbys[i].base.base.base.roomId == roomId)
            {
                if (Macro_08039430_1(&gKirbys[i].base.base.base, scrollLock))
                {
                    if (!(gKirbys[i].base.base.base.unkC & 0x8000))
                    {
                        if (!(p->unk0.unk4 & (1 << i)))
                        {
                            p->unk0.unk4 |= 1 << i;
                            gCurLevelInfo[i].unk1EC = 0;
                        }
                        sub_0811C7D0(&p->unk0, gKirbys[i].base.base.base.unk56, scrollLock->object->unk22);
                        p->unk0.unk4 |= 0x10000000;
                    }
                }
                else
                    p->unk0.unk4 &= ~(1 << i);
                if (gKirbys[i].hp <= 0)
                    sub_0811DB48(scrollLock, i);
                if (scrollLock->object->unk4)
                {
                    u32 *pointer = sub_08002888(0, scrollLock->object->unk4, gCurLevelInfo[scrollLock->base.unk56].unk65E);

                    if (*pointer)
                    {
                        --*pointer;
                        scrollLock->base.flags |= 0x1000;
                    }
                }
            }
            else
                p->unk0.unk4 &= ~(1 << i);
        }
    }
    else
    {
        if (p->unk46)
        {
            gCurLevelInfo[unk56].unk7C += p->unk46;
            gCurLevelInfo[unk56].unk84 += p->unk46;
            gCurLevelInfo[unk56].unkA0 += p->unk46;
            gCurLevelInfo[unk56].unkA8 += p->unk46;
            if (p->unk46)
            {
                if (p->unk46 > 0)
                {
                    if (gCurLevelInfo[unk56].unk84 > p->unk4C)
                        p->unk46 = 0;
                }
                else
                {
                    if (gCurLevelInfo[unk56].unk7C < 0x800)
                        p->unk46 = 0;
                }
            }
        }
        if (p->unk4A)
        {
            gCurLevelInfo[unk56].unk80 += p->unk4A;
            gCurLevelInfo[unk56].unk88 += p->unk4A;
            gCurLevelInfo[unk56].unkA4 += p->unk4A;
            gCurLevelInfo[unk56].unkAC += p->unk4A;
            if (p->unk4A)
            {
                if (p->unk4A > 0)
                {
                    if (gCurLevelInfo[unk56].unk88 > p->unk50)
                        p->unk4A = 0;
                }
                else
                {
                    if (gCurLevelInfo[unk56].unk80 < 0x800)
                        p->unk4A = 0;
                }
            }
        }
        if (!p->unk46 && !p->unk4A)
        {
            if (scrollLock->object->unk4)
            {
                u32 *pointer = sub_08002888(0, scrollLock->object->unk4, gCurLevelInfo[scrollLock->base.unk56].unk65E);
        
                if (*pointer)
                {
                    --*pointer;
                    scrollLock->base.flags |= 0x1000;
                }
            }
        }
    }
    ++scrollLock->base.counter;
}

static void sub_0811D9AC(struct Task *t)
{
    struct Object2 *scrollLock = TaskGetStructPtr(t);
    struct Unk_0811C9D4_0 *p = scrollLock->unk8C;
    u16 roomId = scrollLock->base.roomId;
    u8 unk2, unk3, unk65E;
    u8 i;
    u8 unk56 = scrollLock->base.unk56;

    unk2 = scrollLock->object->unk2;
    unk3 = scrollLock->object->unk3;
    unk65E = gCurLevelInfo[unk56].unk65E;
    if (!(scrollLock->object->unk22 & 8))
    {
        for (i = 0; i < gUnk_0203AD44; ++i)
        {
            if (gKirbys[i].base.base.base.roomId == roomId
                && p->unk38 == gCurLevelInfo[i].unk7C
                && p->unk3C == gCurLevelInfo[i].unk80)
            {
                gCurLevelInfo[i].unk7C = p->unk18;
                gCurLevelInfo[i].unk80 = p->unk1C;
                gCurLevelInfo[i].unk84 = p->unk20;
                gCurLevelInfo[i].unk88 = p->unk24;
                gCurLevelInfo[i].unkA0 = p->unk28;
                gCurLevelInfo[i].unkA4 = p->unk2C;
                gCurLevelInfo[i].unkA8 = p->unk30;
                gCurLevelInfo[i].unkAC = p->unk34;
                gCurLevelInfo[i].unk6C = p->unk18;
                gCurLevelInfo[i].unk70 = p->unk1C;
                gCurLevelInfo[i].unk74 = p->unk20;
                gCurLevelInfo[i].unk78 = p->unk24;
                gCurLevelInfo[i].unk90 = p->unk28;
                gCurLevelInfo[i].unk94 = p->unk2C;
                gCurLevelInfo[i].unk98 = p->unk30;
                gCurLevelInfo[i].unk9C = p->unk34;
                gCurLevelInfo[i].unk1EC = 0;
            }
        }
    }
    ObjectDestroy(t);
    if (unk2 || unk56 != 0xFF)
        sub_08001678(unk2, unk3, unk65E, 1);
}

static void sub_0811DB48(struct Object2 *scrollLock, s32 i)
{
    struct Unk_0811C9D4_0 *p;
    u16 roomId;

    i = (u8)i; // Actually i is u8, but we need s32 to fix other problems caused by implicit declaration
    p = scrollLock->unk8C;
    roomId = scrollLock->base.roomId;
    if (gKirbys[i].base.base.base.roomId == roomId
        && p->unk38 == gCurLevelInfo[i].unk7C
        && p->unk3C == gCurLevelInfo[i].unk80)
    {
        gCurLevelInfo[i].unk7C = p->unk18;
        gCurLevelInfo[i].unk80 = p->unk1C;
        gCurLevelInfo[i].unk84 = p->unk20;
        gCurLevelInfo[i].unk88 = p->unk24;
        gCurLevelInfo[i].unkA0 = p->unk28;
        gCurLevelInfo[i].unkA4 = p->unk2C;
        gCurLevelInfo[i].unkA8 = p->unk30;
        gCurLevelInfo[i].unkAC = p->unk34;
        gCurLevelInfo[i].unk6C = p->unk18;
        gCurLevelInfo[i].unk70 = p->unk1C;
        gCurLevelInfo[i].unk74 = p->unk20;
        gCurLevelInfo[i].unk78 = p->unk24;
        gCurLevelInfo[i].unk90 = p->unk28;
        gCurLevelInfo[i].unk94 = p->unk2C;
        gCurLevelInfo[i].unk98 = p->unk30;
        gCurLevelInfo[i].unk9C = p->unk34;
        gCurLevelInfo[i].unk1EC = 0;
    }
}

void *CreateScrollLock(struct Object *arg0, u8 arg1)
{
    struct Object2 *obj;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0xff6, TASK_USE_IWRAM, sub_0811D9AC);

    obj = TaskGetStructPtr(task);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x2018F40;
    obj->base.unk5C |= 0x20;
    obj->base.unkC |= 1;
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}
