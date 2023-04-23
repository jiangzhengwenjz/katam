#include "malloc_ewram.h"
#include "scroll_lock.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"

void sub_0811C8BC(struct Unk_0811C9D4_0 *, u8, u16);
void sub_0811CB44(struct Object2 *);
void sub_0811CBB8(struct Object2 *);
void sub_0811CD1C(struct Object2 *);
void sub_0811CD90(struct Object2 *);
void sub_0811CEF4(struct Object2 *);
void sub_0811D158(struct Object2 *);
void sub_0811D508(struct Object2 *);
void sub_0811D68C(struct Object2 *);
void sub_0811DB48(struct Object2 *, s32);

void sub_0811C7D0(struct Unk_0811C9D4_0 *a1, u8 a2, u16 a3)
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

void sub_0811C8BC(struct Unk_0811C9D4_0 *a1, u8 a2, u16 a3 __attribute__((unused)))
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

void sub_0811CB44(struct Object2 *scrollLock)
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

void sub_0811CBB8(struct Object2 *scrollLock)
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

void sub_0811CD1C(struct Object2 *scrollLock)
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

void sub_0811CD90(struct Object2 *scrollLock)
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

void sub_0811CEF4(struct Object2 *scrollLock)
{
    struct Unk_0811C9D4_0 *p = scrollLock->unk8C;
    s8 i;
    u16 roomId = scrollLock->base.roomId;

    if (gKirbys[0].base.base.base.roomId == roomId
        && gKirbys[1].base.base.base.roomId == gKirbys[0].base.base.base.roomId
        && gKirbys[2].base.base.base.roomId == gKirbys[1].base.base.base.roomId
        && gKirbys[3].base.base.base.roomId == gKirbys[2].base.base.base.roomId)
    {
        if (sub_08039430(&gKirbys[0].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20)
            && sub_08039430(&gKirbys[1].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20)
            && sub_08039430(&gKirbys[2].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20)
            && sub_08039430(&gKirbys[3].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20))
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

void sub_0811D158(struct Object2 *scrollLock)
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
            if (sub_08039430(&gKirbys[0].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20)
                && sub_08039430(&gKirbys[1].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20)
                && sub_08039430(&gKirbys[2].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20)
                && sub_08039430(&gKirbys[3].base.base.base, scrollLock->base.x, scrollLock->base.y, scrollLock->object->unk1A, scrollLock->object->unk1C, scrollLock->object->unk1E, scrollLock->object->unk20))
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
