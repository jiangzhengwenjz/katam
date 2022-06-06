#include "data.h"
#include "functions.h"
#include "kirby.h"
#include "constants/kirby.h"

// TODO: define file boundaries

#define Macro_08008484(kirby, arg1, arg2, arg3) ({ \
    u8 _var0 = sub_080023E4((kirby)->base.base.base.unk56, (arg1)->unk1C + (arg2), (arg1)->unk1E + 1); \
    u32 _var1 = gUnk_082D88B8[_var0]; \
    u32 _var2 = 0x200; \
    \
    if ( \
        (kirby)->base.base.base.unk10.unkC == 0x127 && \
        (kirby)->base.base.base.unk10.unk1A == 1 \
    ) \
        _var2 |= 2; \
    \
    if ((_var2 & _var1) != 0 || (_var1 & 0xF0000004) == 4) { \
        s32 _var6 = (((arg1)->unk1E + 1) * 0x10 - (arg1)->unk1B) * 0x100 - 1; \
        if (_var6 < *(arg3)) *(arg3) = _var6; \
    } \
})

#define Macro_0800913C(kirby) ({ \
    (kirby)->base.base.base.unk62 |= 4; \
    (kirby)->base.base.base.yspeed = 0; \
    \
    if ((kirby)->base.base.base.unk0 == 0) { \
        (kirby)->unkD2 = 0; \
        \
        if ( \
            (kirby)->base.base.base.unk0 == 0 && \
            ((kirby)->base.base.base.flags & 0x40) == 0 \
        ) { \
            (kirby)->base.base.base.flags &= ~0x1060; \
            (kirby)->base.base.base.yspeed = 0; \
        } \
    } \
})

#define Macro_0800549C(kirby, arg1, arg2, arg3, arg4) ({ \
    s32 _var0 = (arg4); \
    \
    if ((arg1)->y <= (_var0) * 0x100) { \
        (arg1)->y = (_var0) * 0x100; \
        (kirby)->base.base.base.unk62 |= 8; \
        \
        if ((kirby)->base.base.base.yspeed > 0) { \
            (kirby)->base.base.base.yspeed = 0; \
            \
            if ((kirby)->base.base.base.unk0 == 0) \
                (kirby)->unkD2 = 0; \
        } \
    } \
    \
    if (((arg2) & 0x70) == 0x20) { \
        (kirby)->base.base.base.unk57 = (arg3); \
        (kirby)->base.base.base.unk58 |= gUnk_082D88B8[(arg3)] & 0xFFFFF; \
    } \
})

#define Macro_080063B0(kirby) ({ \
    (kirby)->base.base.base.unk62 |= 4; \
    (kirby)->base.base.base.yspeed = 0; \
    \
    if ((kirby)->base.base.base.unk0 == 0) { \
        (kirby)->unkD2 = 0; \
        \
        if ((kirby)->base.base.base.unk0 == 0) { \
            if (((kirby)->base.base.base.flags & 0x40) == 0) \
                (kirby)->base.base.base.flags &= ~0x1060; \
            \
            (kirby)->base.base.base.yspeed = 0; \
        } \
    } \
})

#define Macro_AAAAAAAA_0(kirby, arg1, arg2, arg3) \
    (gUnk_082D88B8[sub_080023E4((kirby)->base.base.base.unk56, (arg1)->unk1C + (arg2), (arg1)->unk1E + (arg3))] & 0x200)

#define Macro_AAAAAAAA_1(kirby, arg1, arg2) ( \
    ((arg2) & 0xF) == 1 || ((kirby)->base.base.base.flags & 0x60) == 0 || \
    ( \
        ( \
            (arg1)->xspeed <= 0 || (arg1)->unk1C <= 0 || \
            Macro_AAAAAAAA_0((kirby), (arg1), -1, 0) != 0 || \
            (kirby)->base.base.base.x + (arg1)->xspeed - (arg1)->unk1C * 0x1000 >= (kirby)->base.base.base.y - (arg1)->yspeed - (arg1)->unk1E * 0x1000 \
        ) && \
        ( \
            (arg1)->xspeed >= 0 || (arg1)->unk24 <= (arg1)->unk1C + 1 || \
            Macro_AAAAAAAA_0((kirby), (arg1), 1, 0) != 0 || \
            ((arg1)->unk1C + 1) * 0x1000 - ((kirby)->base.base.base.x + (arg1)->xspeed) >= (kirby)->base.base.base.y - (arg1)->yspeed - (arg1)->unk1E * 0x1000 \
        ) \
    ) \
)

#define Macro_AAAAAAAA_2(kirby, arg1) ( \
    (arg1)->unk26 > (arg1)->unk1E + 1 && Macro_AAAAAAAA_0((kirby), (arg1), 0, 1) == 0 && \
    ( \
        (arg1)->xspeed <= 0 || (arg1)->unk1C <= 0 || \
        Macro_AAAAAAAA_0((kirby), (arg1), -1, 0) != 0 || \
        (kirby)->base.base.base.x + (arg1)->xspeed - (arg1)->unk1C * 0x1000 >= ((arg1)->unk1E + 1) * 0x1000 - 1 - ((kirby)->base.base.base.y - (arg1)->yspeed) \
    ) && \
    ( \
        (arg1)->xspeed >= 0 || (arg1)->unk24 <= (arg1)->unk1C + 1 || \
        Macro_AAAAAAAA_0((kirby), (arg1), 1, 0) != 0 || \
        ((arg1)->unk1C + 1) * 0x1000 - ((kirby)->base.base.base.x + (arg1)->xspeed) >= ((arg1)->unk1E + 1) * 0x1000 - 1 - ((kirby)->base.base.base.y - (arg1)->yspeed) \
    ) \
)

u32 sub_0800385C(void *, u16);
u32 sub_080042BC(struct Kirby *, struct Unk_3007DE0 *, u16, u8);

u16 sub_080047E0(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    if (
        (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
        (arg1->unkC >> 0xC) != arg1->unk1E
    )
        return 0xF;

    Macro_0800549C(
        arg0, arg1, arg2, arg3,
        arg1->unk1E * 0x10 + (((arg1->x >> 8) - (arg0->base.base.base.x >> 0xC) * 0x10) >> 1) - arg1->unk19 + 1
    );

    return 0xB;
}

u16 sub_08004888(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    if ((arg2 & 0x70) == 0x50 && arg1->y <= arg1->unk1E * 0x1000) {
        u8 uVar1 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

        if ((gUnk_082D88B8[uVar1] & 0xF0000000) != 0) {
            arg1->unk1E--;
            return gUnk_082D8DA4[uVar1](arg0, arg1, arg2 | 0x400);
        }

        return 0xF;
    }

    if (
        (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
        (arg1->unkC >> 0xC) != arg1->unk1E
    )
        return 0xF;

    Macro_0800549C(
        arg0, arg1, arg2, arg3,
        arg1->unk1E * 0x10 + (8 + (((arg1->x >> 8) - (arg0->base.base.base.x >> 0xC) * 0x10) >> 1)) - arg1->unk19 + 1
    );

    return 0xB;
}

u16 sub_08004998(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    if (
        (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
        (arg1->unkC >> 0xC) != arg1->unk1E
    )
        return 0xF;

    Macro_0800549C(
        arg0, arg1, arg2, arg3,
        (arg1->unkC >> 0xC) * 0x10 + ((((arg0->base.base.base.x >> 0xC) + 1) * 0x10 - (arg1->x >> 8) - 1) >> 1) - arg1->unk19 + 2
    );

    return 0xE;
}

u16 sub_08004A44(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    if ((arg2 & 0x70) == 0x50 && arg1->y <= arg1->unk1E * 0x1000) {
        u8 uVar1 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

        if ((gUnk_082D88B8[uVar1] & 0xF0000000) != 0) {
            arg1->unk1E--;
            return gUnk_082D8DA4[uVar1](arg0, arg1, arg2 | 0x400);
        }

        return 0xF;
    }

    if (
        (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
        (arg1->unkC >> 0xC) != arg1->unk1E
    )
        return 0xF;

    Macro_0800549C(
        arg0, arg1, arg2, arg3,
        (arg1->unkC >> 0xC) * 0x10 + (8 + ((((arg0->base.base.base.x >> 0xC) + 1) * 0x10 - (arg1->x >> 8) - 1) >> 1)) - arg1->unk19 + 2
    );

    return 0xE;
}

u16 sub_08004B58(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50) {
        if ((arg2 & 0x70) != 0x30)
            return 7;
        else
            return 0xF;
    }

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            arg1->unk14 >> 0xC != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - arg1->unk1B) * 0x100 - (arg1->x >> 1) - 1;

    if (arg1->unk1C > 0 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, -1, &var0);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if ((arg0->base.base.base.flags & 0x40) != 0 && arg1->y >= var0 - 0x800) {
                arg0->base.base.base.unk62 |= 4;
            }
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0) {
                arg0->unkD2 = 0;
            }

            if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC) {
                arg1->unk19 = arg1->unk1B - 0xC;
            }
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0)
        return 5;

    return 7;
}

u16 sub_08004DBC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50) {
        if ((arg2 & 0x70) != 0x30)
            return 7;
        else
            return 0xF;
    }

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - 8 - arg1->unk1B) * 0x100 - (arg1->x >> 1) - 1;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x800
            )
                arg0->base.base.base.unk62 |= 4;
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            if (((arg2 & 0xF) == 0) && (arg1->unk1B - arg1->unk19 < 0xC))
                arg1->unk19 = arg1->unk1B - 0xC;
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    return 7;
}

u16 sub_08004FA8(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50) {
        if ((arg2 & 0x70) != 0)
            return 0xD;
        else
            return 0xF;
    }

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            arg1->unk14 >> 0xC != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - arg1->unk1B) * 0x100 + (arg1->x >> 1);

    if (arg1->unk24 > arg1->unk1C + 1 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, 1, &var0);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if ((arg0->base.base.base.flags & 0x40) != 0 && arg1->y >= var0 - 0x800) {
                arg0->base.base.base.unk62 |= 4;
            }
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0) {
                arg0->unkD2 = 0;
            }

            if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC) {
                arg1->unk19 = arg1->unk1B - 0xC;
            }
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0)
        return 5;

    return 0xD;
}

u16 sub_0800520C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50) {
        if ((arg2 & 0x70) != 0)
            return 0xD;
        else
            return 0xF;
    }

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - 8 - arg1->unk1B) * 0x100 + (arg1->x >> 1);

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x800
            )
                arg0->base.base.base.unk62 |= 4;
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            if (((arg2 & 0xF) == 0) && (arg1->unk1B - arg1->unk19 < 0xC))
                arg1->unk19 = arg1->unk1B - 0xC;
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    return 0xD;
}

u16 sub_080053F8(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    if (
        (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
        (arg1->unkC >> 0xC) != arg1->unk1E
    )
        return 0xF;

    Macro_0800549C(
        arg0, arg1, arg2, arg3,
        (arg1->unkC >> 0xC) * 0x10 + ((arg1->x >> 8) - (arg0->base.base.base.x >> 0xC) * 0x10) - arg1->unk19 + 1
    );

    return 0xB;
}

u16 sub_0800549C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    if (
        (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
        (arg1->unkC >> 0xC) != arg1->unk1E
    )
        return 0xF;

    Macro_0800549C(
        arg0, arg1, arg2, arg3,
        (arg1->unkC >> 0xC) * 0x10 + ((arg1->unk1C + 1) * 0x10 - (arg1->x >> 8) - 1) - arg1->unk19 + 2
    );

    return 0xE;
}

u16 sub_08005544(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50) {
        if ((arg2 & 0x70) != 0x30)
            return 7;
        else
            return 0xF;
    }

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            arg1->unk14 >> 0xC != arg1->unk1E
        )
    )
        return 0xF;

    var0 = (((arg1->unk1E + 1 + arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100 - arg1->x) - 1;

    if (arg1->unk1C > 0 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, -1, &var0);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if ((arg0->base.base.base.flags & 0x40) != 0 && arg1->y >= var0 - 0x800) {
                arg0->base.base.base.unk62 |= 4;
            }
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0) {
                arg0->unkD2 = 0;
            }

            if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC) {
                arg1->unk19 = arg1->unk1B - 0xC;
            }
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0)
        return 5;

    return 7;
}

u16 sub_080057A4(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50) {
        if ((arg2 & 0x70) != 0)
            return 0xD;
        else
            return 0xF;
    }

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            arg1->unk14 >> 0xC != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E - arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100 + arg1->x;

    if (arg1->unk24 > arg1->unk1C + 1 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, 1, &var0);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if ((arg0->base.base.base.flags & 0x40) != 0 && arg1->y >= var0 - 0x800) {
                arg0->base.base.base.unk62 |= 4;
            }
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0) {
                arg0->unkD2 = 0;
            }

            if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC) {
                arg1->unk19 = arg1->unk1B - 0xC;
            }
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0)
        return 5;

    return 0xD;
}

u16 sub_08005A04(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0, var1;

    if ((arg2 & 0x70) != 0x50)
        return 7;

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - arg1->unk1B) * 0x100 - (arg1->x >> 1);
    var1 = var0 + 0x100;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var1) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x700
            )
                arg0->base.base.base.unk62 |= 4;
        }
    }
    else {
        if (arg1->y >= var0 - 0x700) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            if (((arg2 & 0xF) == 0) && (arg1->unk1B - arg1->unk19 < 0xC))
                arg1->unk19 = arg1->unk1B - 0xC;
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0)
        return 5;

    return 7;
}

u16 sub_08005BF8(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0, var1;

    if ((arg2 & 0x70) != 0x50)
        return 7;

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - 8 - arg1->unk1B) * 0x100 - (arg1->x >> 1);
    var1 = var0 + 0x100;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var1) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x700
            )
                arg0->base.base.base.unk62 |= 4;
        }
    }
    else {
        if (arg1->y >= var0 - 0x700) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            if (((arg2 & 0xF) == 0) && (arg1->unk1B - arg1->unk19 < 0xC))
                arg1->unk19 = arg1->unk1B - 0xC;
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    return 7;
}

u16 sub_08005DE0(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0, var1;

    if ((arg2 & 0x70) != 0x50)
        return 0xD;

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - arg1->unk1B) * 0x100 + (arg1->x >> 1);
    var1 = var0 + 0x100;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var1) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x700
            )
                arg0->base.base.base.unk62 |= 4;
        }
    }
    else {
        if (arg1->y >= var0 - 0x700) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            if (((arg2 & 0xF) == 0) && (arg1->unk1B - arg1->unk19 < 0xC))
                arg1->unk19 = arg1->unk1B - 0xC;
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0)
        return 5;

    return 0xD;
}

u16 sub_08005FD8(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0, var1;

    if ((arg2 & 0x70) != 0x50)
        return 0xD;

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - 8 - arg1->unk1B) * 0x100 + (arg1->x >> 1);
    var1 = var0 + 0x100;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var1) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x700
            )
                arg0->base.base.base.unk62 |= 4;
        }
    }
    else {
        if (arg1->y >= var0 - 0x700) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x400 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var1 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var1;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            if (((arg2 & 0xF) == 0) && (arg1->unk1B - arg1->unk19 < 0xC))
                arg1->unk19 = arg1->unk1B - 0xC;
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    return 0xD;
}

u16 sub_080061C4(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50)
        return 7;

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1 + arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100 - arg1->x - 1;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x800
            )
                arg0->base.base.base.unk62 |= 4;
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0) {
                arg0->unkD2 = 0;
            }

            if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC) {
                arg1->unk19 = arg1->unk1B - 0xC;
            }
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0) {
        return 5;
    }

    return 7;
}

u16 sub_080063B0(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    s32 var0;

    if ((arg2 & 0x70) != 0x50)
        return 0xD;

    if (
        (arg2 & 0x400) == 0 &&
        (
            (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
            (arg1->unk14 >> 0xC) != arg1->unk1E
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E - arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100 + arg1->x;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        if (arg1->y >= var0) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            Macro_080063B0(arg0);
        }
        else {
            if (
                (arg0->base.base.base.flags & 0x40) != 0 &&
                arg1->y >= var0 - 0x800
            ) {
                arg0->base.base.base.unk62 |= 4;
            }
        }
    }
    else {
        if (arg1->y >= var0 - 0x800) {
            if (
                arg0->base.base.base.unk0 == 0 &&
                var0 - 0x500 <= gCurLevelInfo[arg0->base.base.base.unk56].unk94 &&
                var0 <= arg0->base.base.base.unk4C
            ) {
#ifndef NONMATCHING
                asm("":::"r0");
#endif
                arg1->x = arg0->base.base.base.unk48;
                arg1->y = arg0->base.base.base.unk4C;
            }
            else {
                arg1->y = var0;
            }

            arg0->base.base.base.unk62 |= 4;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
                arg1->unk19 = arg1->unk1B - 0xC;
        }
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = arg3;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3] & 0xFFFFF;
    }

    if ((arg2 & 0x400) != 0)
        return 5;

    return 0xD;
}

u16 sub_08006598(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    switch (arg2 & 0x70) {
        case 0: case 0x10: {
#ifndef NONMATCHING
            register s32 r0 asm("r0"), r4 asm("r4");

            r0 = arg1->unk1C;
            ++r0;
            r4 = r0 * 0x1000;
            r0 = r4 - arg1->unk18 * 0x100;
            arg1->x = r0;
#else
            arg1->x = (arg1->unk1C + 1) * 0x1000 - arg1->unk18 * 0x100;
#endif
            arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 1 : 2;

            if (arg1->unk8 + 1) return 0; // dead code
            return 0;
        }

        case 0x20: {
            if (!Macro_AAAAAAAA_2(arg0, arg1))
                return 0xF;

            arg1->y = (arg1->unk1E + 1) * 0x1000 - arg1->unk19 * 0x100 + 1;

            arg0->base.base.base.unk62 |= 8;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            return 0xF;
        }

        case 0x30: case 0x40: {
#ifndef NONMATCHING
            register s32 r0 asm("r0") = arg1->unk1C * 0x1000;
            register s32 r4 asm("r4") = r0 - 1;

            r0 = r4 - arg1->unk1A * 0x100;
            arg1->x = r0;
#else
            arg1->x = arg1->unk1C * 0x1000 - 1 - arg1->unk1A * 0x100;
#endif
            arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 2 : 1;

            if (arg1->unk10 - 1 > 0) return 0; // dead code
            return 0;
        }

        case 0x50: {
            u8 var0;
            u32 var1;

            if (arg1->unk1E <= 0)
                return 0xF;

            var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);
            var1 = gUnk_082D88B8[var0];

            if ((var1 & 0x200) != 0)
                return 0xF;

            if ((var1 & 0x400) != 0) {
                if (arg0->base.base.base.unk0 == 0) {
                    if (arg0->ability != KIRBY_ABILITY_MINI)
                        return 0xF;
                }
                else if (0x800 < arg1->unk14 - arg1->unkC) {
                    return 0xF;
                }
            }

            if ((var1 & 0xF0000000) != 0) {
                arg1->unk1E--;
                return gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x400);
            }

            if (Macro_AAAAAAAA_1(arg0, arg1, arg2)) {
                arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100  - 1;

                arg0->base.base.base.unk62 |= 4;
                arg0->base.base.base.yspeed = 0;

                if (arg0->base.base.base.unk0 == 0) {
                    arg0->unkD2 = 0;

                    if (arg0->base.base.base.unk0 == 0) {
                        if (!(arg0->base.base.base.flags & 0x40)) {
                            arg0->base.base.base.flags &= ~0x1060;
                            arg0->base.base.base.yspeed = 0;
                        }

                        sub_080097C4(arg0, gUnk_082D88B8[arg3]);
                    }
                }

                arg0->base.base.base.unk57 = arg3;
                arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3];
            }

            return 0xF;
        }

        default:
            return 0;
    }
}

static u16 sub_08006960(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    if ((arg2 & 0x400) != 0)
        return 0xF;

    switch (arg2 & 0x70) {
        case 0:
            return 0xF;

        case 0x10:
            return 0xF;

        case 0x20: {
            s16 stack0[] = {arg1->unk1C, arg1->unk1E};
            u16 retval = 0xF;
            u8 var0;

            arg1->unk1C = arg1->unk8 >> 0xC;
            arg1->unk1E = arg1->unkC >> 0xC;

            if (stack0[0] != arg1->unk1C || stack0[1] != arg1->unk1E) {
                var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

                if ((gUnk_082D88B8[var0] & 1) == 0)
                    retval &= gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x400);
            }

            if ((arg0->base.base.base.unk62 & 8) != 0)
                return retval;

            arg1->unk1C = arg1->unk10 >> 0xC;
            arg1->unk1E = arg1->unkC >> 0xC;

            if (stack0[0] == arg1->unk1C && stack0[1] == arg1->unk1E)
                return retval;

            var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

            if ((gUnk_082D88B8[var0] & 1) == 0)
                retval &= gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x600);

            return retval;
        }

        case 0x30:
            return 0xF;

        case 0x40:
            return 0xF;

        case 0x50: {
            if ((gUnk_082D88B8[sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1)] & 0x200) == 0) {
                s16 stack0[] = {arg1->unk1C, arg1->unk1E};
                u16 retval = 0xF;
                u8 var0;

                arg1->unk1C = arg1->unk8 >> 0xC;
                arg1->unk1E = arg1->unk14 >> 0xC;

                if (stack0[0] != arg1->unk1C || stack0[1] != arg1->unk1E) {
                    var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

                    if ((gUnk_082D88B8[var0] & 1) == 0)
                        retval &= gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x400);
                }

                if ((arg0->base.base.base.unk62 & 4) != 0)
                    return retval;

                arg1->unk1C = arg1->unk10 >> 0xC;
                arg1->unk1E = arg1->unk14 >> 0xC;

                if (stack0[0] == arg1->unk1C && stack0[1] == arg1->unk1E)
                    return retval;

                var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

                if ((gUnk_082D88B8[var0] & 1) == 0)
                    retval &= gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x600);

                return retval;
            }

            return 0xF;
        }

        default:
            return 0xF;
    }
}

static u16 sub_08006B90(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    u8 var0;
    u32 var1;

    switch (arg2 & 0x70) {
        default: case 0: case 0x10: case 0x20: case 0x30: case 0x40:
            return 0xF;

        case 0x50:
            break;
    }

    if ((arg0->base.base.base.flags & 0x1000) != 0)
        return 0xF;

    var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

    if ((gUnk_082D88B8[var0] & 0x200) != 0)
        return 0xF;

    if ((gUnk_082D88B8[var0] & 0xF0000000) != 0) {
        arg1->unk1E--;
        return gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x400);
    }

    var1 = arg1->unk1E * 0x1000;

    if (
        (
            var1 <= arg0->base.base.base.unk4C + arg1->unk1B * 0x100 ||
            var1 > arg1->unk14 * 0x100
        ) &&
        (
            (arg1->unk28 & 4) == 0 ||
            (arg0->base.base.base.unk48 >> 0xC) == arg1->unk1C
        )
    )
        return 0xF;

    arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

    Macro_0800913C(arg0);

    arg0->base.base.base.unk57 = 0xE;
    arg0->base.base.base.unk58 |= gUnk_082D88B8[14] & 0xFFFFF;

    return 0xF;
}

static u16 sub_08006CCC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    u8 var0;
    u32 var1;

    switch (arg2 & 0x70) {
        default: case 0: case 0x10: case 0x20: case 0x30: case 0x40:
            return 0xF;

        case 0x50:
            break;
    }

    var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

    if ((gUnk_082D88B8[var0] & 0x200) != 0)
        return 0xF;

    if ((gUnk_082D88B8[var0] & 0xF0000000) != 0) {
        arg1->unk1E--;
        return gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x400);
    }

    var1 = arg1->unk1E * 0x1000;

    if (
        (
            var1 <= arg0->base.base.base.unk4C + arg1->unk1B * 0x100 ||
            var1 > arg1->unk14 * 0x100
        ) &&
        (
            (arg1->unk28 & 4) == 0 ||
            (arg0->base.base.base.unk48 >> 0xC) == arg1->unk1C
        )
    )
        return 0xF;

    arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

    Macro_0800913C(arg0);

    arg0->base.base.base.unk57 = 0xF;
    arg0->base.base.base.unk58 |= gUnk_082D88B8[15] & 0xFFFFF;

    return 0xF;
}

static u16 sub_08006DF8(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (arg0->base.base.base.flags & 0x1000) != 0 ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed < 0 &&
            arg0->base.base.base.yspeed == 0
        ) ||
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1 + arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100;
    var1 = var0 - arg1->x - 1;
    var2 = var0 - arg0->base.base.base.unk48 - 1;

    if (arg1->unk1C > 0 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, -1, &var1);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var7 = 0x1001;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x18;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[24] & 0xFFFFF;
    }

    return 7;
}

static u16 sub_0800705C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (arg0->base.base.base.flags & 0x1000) != 0 ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed > 0 &&
            arg0->base.base.base.yspeed == 0
        ) ||
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E - arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100;
    var1 = var0 + arg1->x;
    var2 = var0 + arg0->base.base.base.unk48;

    if (arg1->unk24 > arg1->unk1C + 1 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, 1, &var1);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var7 = 0x1001;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x19;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[25] & 0xFFFFF;
    }

    return 0xD;
}

static u16 sub_080072BC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;
    u32 ugh;

    if (
        (arg0->base.base.base.flags & 0x1000) != 0 ||
        (
#ifdef NONMATCHING
            (arg2 & 0x400) == 0 &&
#else
            ({
                u32 r0, r1;

                r0 = 0x400;
                asm("mov %0, %1" : "=r" (r1) : "r" (arg2));
                r0 &= r1;
            }) == 0 &&
#endif
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
#ifdef NONMATCHING
            (arg0->base.base.base.flags & 0x40) != 0 &&
#else
            ({
                u32 r0, r1;

                asm("ldr %0, [%1, #8]" : "=r" (r1) : "r" (arg0));
                r0 = r1 & 0x40;

                ugh = r1;
                r0;
            }) &&
#endif
            arg0->base.base.base.xspeed < 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - arg1->unk1B) * 0x100;
    var1 = var0 - (arg1->x >> 1) - 1;
    var2 = var0 - (arg0->base.base.base.unk48 >> 1) - 1;

    if (arg1->unk1C > 0 && arg1->unk26 > arg1->unk1E + 1) {
        u8 var3 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C - 1, arg1->unk1E + 1);
        u32 var4 = gUnk_082D88B8[var3];
        u32 var5 = 0x200;

        if (
            arg0->base.base.base.unk10.unkC == 0x127 &&
            arg0->base.base.base.unk10.unk1A == 1
        )
            var5 |= 2;

        if (
            (var5 & var4) != 0 ||
#ifdef NONMATCHING
            (var4 & 0xF0000004) == 4
#else
            ({
                u32 r2 = var4 & 0xF0000004;
                arg0++; arg0--;
                ugh = arg0->base.base.base.flags;
                r2;
            }) == 4
#endif
        ) {
            s32 var6 = ((arg1->unk1E + 1) * 0x10 - arg1->unk1B) * 0x100 - 1;
            ugh = arg0->base.base.base.flags;

            if (var6 < var1) var1 = var6;
        }
    }

    if ((ugh & 0x60) != 0) {
        s16 var7 = 0x801;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (ugh & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x10;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[16] & 0xFFFFF;
    }

    return 7;
}

static u16 sub_08007528(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2, var3;

    if (
        (arg0->base.base.base.flags & 0x1000) != 0 ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed < 0 &&
            arg0->base.base.base.yspeed == 0
        ) ||
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - 8 - arg1->unk1B) * 0x100;
    var1 = var0 - (arg1->x >> 1) - 1;
    var2 = var0 - (arg0->base.base.base.unk48 >> 1) - 1;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var3 = 0x1000 + 1;
        s16 var4 = arg1->y + (arg1->unk1B << 8) + var3 - ((arg1->unk1E + 1) << 0xC);

        if (
            (
                var2 >= arg0->base.base.base.unk4C &&
                var1 <= arg1->y
            ) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var4 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        ) {
            arg0->base.base.base.unk62 |= 4;
        }
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;

        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x11;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[17] & 0xFFFFF;
    }

    return 7;
}

static u16 sub_08007720(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;
    u32 ugh;

    if (
        (arg0->base.base.base.flags & 0x1000) != 0 ||
        (
#ifdef NONMATCHING
            (arg2 & 0x400) == 0 &&
#else
            ({
                u32 r0, r1;

                r0 = 0x400;
                asm("mov %0, %1" : "=r" (r1) : "r" (arg2));
                r0 &= r1;
            }) == 0 &&
#endif
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
#ifdef NONMATCHING
            (arg0->base.base.base.flags & 0x40) != 0 &&
#else
            ({
                u32 r0, r1;

                asm("ldr %0, [%1, #8]" : "=r" (r1) : "r" (arg0));
                r0 = r1 & 0x40;

                ugh = r1;
                r0;
            }) &&
#endif
            arg0->base.base.base.xspeed > 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - arg1->unk1B) * 0x100;
    var1 = var0 + (arg1->x >> 1);
    var2 = var0 + (arg0->base.base.base.unk48 >> 1);

    if (arg1->unk24 > arg1->unk1C + 1 && arg1->unk26 > arg1->unk1E + 1) {
        u8 var3 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C + 1, arg1->unk1E + 1);
        u32 var4 = gUnk_082D88B8[var3];
        u32 var5 = 0x200;

        if (
            arg0->base.base.base.unk10.unkC == 0x127 &&
            arg0->base.base.base.unk10.unk1A == 1
        )
            var5 |= 2;

        if (
            (var5 & var4) != 0 ||
#ifdef NONMATCHING
            (var4 & 0xF0000004) == 4
#else
            ({
                u32 r2 = var4 & 0xF0000004;
                arg0++; arg0--;
                ugh = arg0->base.base.base.flags;
                r2;
            }) == 4
#endif
        ) {
            s32 var6 = ((arg1->unk1E + 1) * 0x10 - arg1->unk1B) * 0x100 - 1;
            ugh = arg0->base.base.base.flags;

            if (var6 < var1) var1 = var6;
        }
    }

    if ((ugh & 0x60) != 0) {
        s16 var7 = 0x801;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (ugh & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x13;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[19] & 0xFFFFF;
    }

    return 0xD;
}

static u16 sub_0800798C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (arg0->base.base.base.flags & 0x1000) != 0 ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed >= 1 &&
            arg0->base.base.base.yspeed == 0
        ) ||
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - 8 - arg1->unk1B) * 0x100;
    var1 = var0 + (arg1->x >> 1);
    var2 = var0 + (arg0->base.base.base.unk48 >> 1);

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var3 = 0x1000 + 1;
        s16 var4 = arg1->y + (arg1->unk1B << 8) + var3 - ((arg1->unk1E + 1) << 0xC);

        if (
            (
                var2 >= arg0->base.base.base.unk4C &&
                var1 <= arg1->y
            ) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var4 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        ) {
            arg0->base.base.base.unk62 |= 4;
        }
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;

        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x12;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[18] & 0xFFFFF;
    }

    return 0xD;
}

static u16 sub_08007B84(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed < 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1 + arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100;
    var1 = var0 - arg1->x - 1;
    var2 = var0 - arg0->base.base.base.unk48 - 1;

    if (arg1->unk1C > 0 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, -1, &var1);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var7 = 0x1001;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x1A;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[26] & 0xFFFFF;
    }

    return 7;
}

static u16 sub_08007DE0(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed > 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E - arg1->unk1C) * 0x10 - arg1->unk1B) * 0x100;
    var1 = var0 + arg1->x;
    var2 = var0 + arg0->base.base.base.unk48;

    if (arg1->unk24 > arg1->unk1C + 1 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, 1, &var1);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var7 = 0x1001;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x1B;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[27] & 0xFFFFF;
    }

    return 0xD;
}

static u16 sub_08008038(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed < 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - arg1->unk1B) * 0x100;
    var1 = var0 - (arg1->x >> 1) - 1;
    var2 = var0 - (arg0->base.base.base.unk48 >> 1) - 1;

    if (arg1->unk1C > 0 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, -1, &var1);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var7 = 0x800 + 1;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x14;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[20] & 0xFFFFF;
    }

    return 7;
}

static u16 sub_08008298(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed < 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 + arg1->unk1C * 8 - 8 - arg1->unk1B) * 0x100;
    var1 = var0 - (arg1->x >> 1) - 1;
    var2 = var0 - (arg0->base.base.base.unk48 >> 1) - 1;

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var3 = 0x1000 + 1;
        s16 var4 = arg1->y + (arg1->unk1B << 8) + var3 - ((arg1->unk1E + 1) << 0xC);

        if (
            (
                var2 >= arg0->base.base.base.unk4C &&
                var1 <= arg1->y
            ) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var4 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        ) {
            arg0->base.base.base.unk62 |= 4;
        }
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;

        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x15;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[21] & 0xFFFFF;
    }

    return 7;
}

static u16 sub_08008484(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed > 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - arg1->unk1B) * 0x100;
    var1 = var0 + (arg1->x >> 1);
    var2 = var0 + (arg0->base.base.base.unk48 >> 1);

    if (arg1->unk24 > arg1->unk1C + 1 && arg1->unk26 > arg1->unk1E + 1) {
        Macro_08008484(arg0, arg1, 1, &var1);
    }

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var7 = 0x800 + 1;
        s16 var8 = arg1->y + (arg1->unk1B << 8) + var7 - ((arg1->unk1E + 1) << 0xC);

        if (
            (var2 >= arg0->base.base.base.unk4C && var1 <= arg1->y) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var8 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        )
            arg0->base.base.base.unk62 |= 4;
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;
        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x17;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[23] & 0xFFFFF;
    }

    return 0xD;
}

static u16 sub_080086E0(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var0, var1, var2;

    if (
        (
            (arg2 & 0x400) == 0 &&
            (
                (arg0->base.base.base.x >> 0xC) != arg1->unk1C ||
                (arg1->unk14 >> 0xC) != arg1->unk1E
            )
        ) ||
        (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            arg0->base.base.base.xspeed > 0 &&
            arg0->base.base.base.yspeed == 0
        )
    )
        return 0xF;

    var0 = ((arg1->unk1E + 1) * 0x10 - (arg1->unk1C + 1) * 8 - 8 - arg1->unk1B) * 0x100;
    var1 = var0 + (arg1->x >> 1);
    var2 = var0 + (arg0->base.base.base.unk48 >> 1);

    if ((arg0->base.base.base.flags & 0x60) != 0) {
        s16 var3 = 0x1000 + 1;
        s16 var4 = arg1->y + (arg1->unk1B << 8) + var3 - ((arg1->unk1E + 1) << 0xC);

        if (
            (
                var2 >= arg0->base.base.base.unk4C &&
                var1 <= arg1->y
            ) ||
            (
                ((arg1->unk28 & 4) != 0 || var2 < var1) &&
                (arg2 & 0x400) == 0 &&
                (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C &&
                var4 * 0x10000 <= 0x3000000
            )
        ) {
            arg1->y = var1 - 1;
            Macro_0800913C(arg0);
        }
        else if (
            (arg0->base.base.base.flags & 0x40) != 0 &&
            var1 > var2 &&
            arg1->y >= var1 - 0x800 &&
            arg1->y <= var1
        ) {
            arg0->base.base.base.unk62 |= 4;
        }
    }
    else if (arg1->y >= var1 - 0x800) {
        arg1->y = var1;

        arg0->base.base.base.unk62 |= 4;
        arg0->base.base.base.yspeed = 0;

        if (arg0->base.base.base.unk0 == 0)
            arg0->unkD2 = 0;

        if ((arg2 & 0xF) == 0 && arg1->unk1B - arg1->unk19 < 0xC)
            arg1->unk19 = arg1->unk1B - 0xC;
    }

    if ((arg2 & 0x70) == 0x50) {
        arg0->base.base.base.unk57 = 0x16;
        arg0->base.base.base.unk58 |= gUnk_082D88B8[22] & 0xFFFFF;
    }

    return 0xD;
}

static u16 sub_080088CC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    switch (arg2 & 0x70) {
        case 0: case 0x10: {
            bool32 var0 = FALSE;

            if (arg0->base.base.base.unk0 == 0)
                var0 = arg0->ability != KIRBY_ABILITY_MINI;
            else if (0x7FF < arg1->unk14 - arg1->unkC)
                var0 = TRUE;

            if (var0 || (var0 = arg1->unkC < arg1->unk1E * 0x1000 + 0x800)) {
                arg1->x = (arg1->unk1C + 1) * 0x1000 - arg1->unk18 * 0x100;
                arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 1 : 2;
            }

            return 0xF;
        }

        case 0x20: {
            arg1->y = arg1->unk1E * 0x1000 + 0x800 - arg1->unk19 * 0x100 + 1;

            arg0->base.base.base.unk62 |= 8;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            return 0xF;
        }

        case 0x30: case 0x40: {
            bool32 var1 = FALSE;

            if (arg0->base.base.base.unk0 == 0)
                var1 = arg0->ability != KIRBY_ABILITY_MINI;
            else if (0x7FF < arg1->unk14 - arg1->unkC)
                var1 = TRUE;

            if (var1 || (var1 = arg1->unkC < arg1->unk1E * 0x1000 + 0x800)) {
                arg1->x = arg1->unk1C * 0x1000 - arg1->unk1A * 0x100 - 1;
                arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 2 : 1;
            }

            return 0xF;
        }

        case 0x50: {
            if (arg1->unk1E > 0) {
                u8 var2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

                if ((gUnk_082D88B8[var2] & 0x200) == 0) {
                    if ((gUnk_082D88B8[var2] & 0xF0000000) != 0) {
                        arg1->unk1E--;
                        return gUnk_082D8DA4[var2](arg0, arg1, arg2 | 0x400);
                    }

                   if (
                        arg1->unk1E * 0x1000 <= arg1->unk14 &&
                        arg1->unk14 < arg1->unk1E * 0x1000 + 0x800 &&
                        Macro_AAAAAAAA_1(arg0, arg1, arg2)
                    ) {
                        arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

                        Macro_0800913C(arg0);

                        arg0->base.base.base.unk57 = 0x59;
                        arg0->base.base.base.unk58 |= gUnk_082D88B8[89];
                    }
                }
            }

            return 0xF;
        }

        default:
            return 0;
    }
}

static u16 sub_08008C04(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    switch (arg2 & 0x70) {
        case 0: case 0x10: {
            s32 iVar4, iVar5;

            iVar5 = (arg1->unk1C + 1) * 0x1000;
            arg1->x = iVar5 - arg1->unk18 * 0x100;

            arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 1 : 2;

            iVar4 = arg1->unk8 + 1;

            if (iVar5 > iVar4)
                arg0->base.base.base.unk58 |= gUnk_082D88B8[90];

            return 0;
        }

        case 0x20: {
            if (!Macro_AAAAAAAA_2(arg0, arg1))
                return 0xF;

            arg1->y = (arg1->unk1E + 1) * 0x1000 - arg1->unk19 * 0x100 + 1;

            arg0->base.base.base.unk62 |= 8;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            arg0->base.base.base.unk58 |= gUnk_082D88B8[90];

            return 0xF;
        }

        case 0x30: case 0x40: {
            s32 iVar6 = arg1->unk1C * 0x1000 - 1;
            arg1->x = iVar6 - arg1->unk1A * 0x100;

            arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 2 : 1;

            if (iVar6 < arg1->unk10 - 1)
                arg0->base.base.base.unk58 |= gUnk_082D88B8[90];

            return 0;
        }

        case 0x50: {
            u32 uVar6;
            u8 ugh0;

            if (arg1->unk1E <= 0)
                return 0xF;

            ugh0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);
            uVar6 = gUnk_082D88B8[ugh0];

            if (
                (uVar6 & 0x200) != 0 ||
                ((uVar6 & 0x400) != 0 && arg0->base.base.base.unk0 == 0 && arg0->ability != KIRBY_ABILITY_MINI)
            )
                return 0xF;

            if ((uVar6 & 0xF0000000) != 0) {
                arg1->unk1E--;
                return gUnk_082D8DA4[ugh0](arg0, arg1, arg2 | 0x400);
            }

            if ((arg0->base.base.base.flags & 0x60) != 0) {
                if (0 < arg1->xspeed && 0 < arg1->unk1C) {
                    u8 ugh1 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C - 1, arg1->unk1E);

                    if (
                        (gUnk_082D88B8[ugh1] & 0x200) == 0 &&
                        arg0->base.base.base.x + arg1->xspeed - arg1->unk1C * 0x1000 < (arg0->base.base.base.y - arg1->yspeed) - arg1->unk1E * 0x1000
                    ) {
                        u32 uVar10;
                        u32 uVar9;
                        u8 ugh2;

                        if ((gUnk_082D88B8[ugh1] & 4) == 0)
                            return 0xF;

                        ugh2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

                        if ((gUnk_082D88B8[ugh2] & 0x200) != 0)
                            return 0xF;

                        if ((gUnk_082D88B8[ugh2] & 0xF0000000) != 0) {
                            arg1->unk1E--;
                            return gUnk_082D8DA4[ugh2](arg0, arg1, arg2 | 0x400);
                        }

                        uVar9 = arg1->unk1E * 0x1000;
                        uVar10 = arg0->base.base.base.unk4C + arg1->unk1B * 0x100;

                        if (
                            (uVar9 <= uVar10 || uVar9 > arg1->unk14 * 0x100) &&
                            ((arg1->unk28 & 4) == 0 || (arg0->base.base.base.unk48 >> 0xc) == arg1->unk1C)
                        )
                            return 0xF;

                        arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

                        Macro_0800913C(arg0);

                        arg0->base.base.base.unk57 = ugh1;
                        arg0->base.base.base.unk58 |= gUnk_082D88B8[ugh1] & 0xFFFFF;

                        return 0xF;
                    }
                }

                if (arg1->xspeed < 0 && arg1->unk24 > arg1->unk1C + 1) {
                    u8 ugh1 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C + 1, arg1->unk1E);

                    if (
                        (gUnk_082D88B8[ugh1] & 0x200) == 0 &&
                        (arg1->unk1C + 1) * 0x1000 - (arg0->base.base.base.x + arg1->xspeed) < (arg0->base.base.base.y - arg1->yspeed) - arg1->unk1E * 0x1000
                    ) {
                        u32 uVar10;
                        u32 uVar9;
                        u8 ugh2;

                        if ((gUnk_082D88B8[ugh1] & 4) == 0)
                            return 0xF;

                        ugh2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

                        if ((gUnk_082D88B8[ugh2] & 0x200) != 0)
                            return 0xF;

                        if ((gUnk_082D88B8[ugh2] & 0xF0000000) != 0) {
                            arg1->unk1E--;
                            return gUnk_082D8DA4[ugh2](arg0, arg1, arg2 | 0x400);
                        }

                        uVar9 = arg1->unk1E * 0x1000;
                        uVar10 = arg0->base.base.base.unk4C + arg1->unk1B * 0x100;

                        if (
                            (uVar9 > uVar10 && uVar9 <= arg1->unk14 * 0x100) ||
                            ((arg1->unk28 & 4) != 0 && (arg0->base.base.base.unk48 >> 0xc) != arg1->unk1C)
                        ) {
                            arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

                            Macro_0800913C(arg0);

                            arg0->base.base.base.unk57 = ugh1;
                            arg0->base.base.base.unk58 |= gUnk_082D88B8[ugh1] & 0xFFFFF;
                        }

                        return 0xF;
                    }
                }
            }

            arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

            Macro_0800913C(arg0);

            arg0->base.base.base.unk57 = 0x5A;
            arg0->base.base.base.unk58 |= gUnk_082D88B8[90];

            return 0xF;
        }

        default:
            return 0;
    }
}

static u16 sub_0800913C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    switch (arg2 & 0x70) {
        case 0: case 0x10: {
            s32 iVar4, iVar5;

            iVar5 = (arg1->unk1C + 1) * 0x1000;
            arg1->x = iVar5 - arg1->unk18 * 0x100;

            arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 1 : 2;

            iVar4 = arg1->unk8 + 1;

            if (iVar5 > iVar4)
                arg0->base.base.base.unk58 |= gUnk_082D88B8[93];

            return 0;
        }

        case 0x20: {
            if (!Macro_AAAAAAAA_2(arg0, arg1))
                return 0xF;

            arg1->y = (arg1->unk1E + 1) * 0x1000 - arg1->unk19 * 0x100 + 1;

            arg0->base.base.base.unk62 |= 8;
            arg0->base.base.base.yspeed = 0;

            if (arg0->base.base.base.unk0 == 0)
                arg0->unkD2 = 0;

            arg0->base.base.base.unk58 |= gUnk_082D88B8[93];

            return 0xF;
        }

        case 0x30: case 0x40: {
            s32 iVar6 = arg1->unk1C * 0x1000 - 1;
            arg1->x = iVar6 - arg1->unk1A * 0x100;

            arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 2 : 1;

            if (iVar6 < arg1->unk10 - 1)
                arg0->base.base.base.unk58 |= gUnk_082D88B8[93];

            return 0;
        }

        case 0x50: {
            u32 uVar6;
            u8 ugh0;

            if (arg1->unk1E <= 0)
                return 0xF;

            ugh0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);
            uVar6 = gUnk_082D88B8[ugh0];

            if (
                (uVar6 & 0x200) != 0 ||
                ((uVar6 & 0x400) != 0 && arg0->base.base.base.unk0 == 0 && arg0->ability != KIRBY_ABILITY_MINI)
            )
                return 0xF;

            if ((uVar6 & 0xF0000000) != 0) {
                arg1->unk1E--;
                return gUnk_082D8DA4[ugh0](arg0, arg1, arg2 | 0x400);
            }

            if ((arg0->base.base.base.flags & 0x60) != 0) {
                if (0 < arg1->xspeed && 0 < arg1->unk1C) {
                    u8 ugh1 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C - 1, arg1->unk1E);

                    if (
                        (gUnk_082D88B8[ugh1] & 0x200) == 0 &&
                        arg0->base.base.base.x + arg1->xspeed - arg1->unk1C * 0x1000 < (arg0->base.base.base.y - arg1->yspeed) - arg1->unk1E * 0x1000
                    ) {
                        u32 uVar10;
                        u32 uVar9;
                        u8 ugh2;

                        if ((gUnk_082D88B8[ugh1] & 4) == 0)
                            return 0xF;

                        ugh2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

                        if ((gUnk_082D88B8[ugh2] & 0x200) != 0)
                            return 0xF;

                        if ((gUnk_082D88B8[ugh2] & 0xF0000000) != 0) {
                            arg1->unk1E--;
                            return gUnk_082D8DA4[ugh2](arg0, arg1, arg2 | 0x400);
                        }

                        uVar9 = arg1->unk1E * 0x1000;
                        uVar10 = arg0->base.base.base.unk4C + arg1->unk1B * 0x100;

                        if (
                            (uVar9 <= uVar10 || uVar9 > arg1->unk14 * 0x100) &&
                            ((arg1->unk28 & 4) == 0 || (arg0->base.base.base.unk48 >> 0xc) == arg1->unk1C)
                        )
                            return 0xF;

                        arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

                        Macro_0800913C(arg0);

                        arg0->base.base.base.unk57 = ugh1;
                        arg0->base.base.base.unk58 |= gUnk_082D88B8[ugh1] & 0xFFFFF;

                        return 0xF;
                    }
                }

                if (arg1->xspeed < 0 && arg1->unk24 > arg1->unk1C + 1) {
                    u8 ugh1 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C + 1, arg1->unk1E);

                    if (
                        (gUnk_082D88B8[ugh1] & 0x200) == 0 &&
                        (arg1->unk1C + 1) * 0x1000 - (arg0->base.base.base.x + arg1->xspeed) < (arg0->base.base.base.y - arg1->yspeed) - arg1->unk1E * 0x1000
                    ) {
                        u32 uVar10;
                        u32 uVar9;
                        u8 ugh2;

                        if ((gUnk_082D88B8[ugh1] & 4) == 0)
                            return 0xF;

                        ugh2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

                        if ((gUnk_082D88B8[ugh2] & 0x200) != 0)
                            return 0xF;

                        if ((gUnk_082D88B8[ugh2] & 0xF0000000) != 0) {
                            arg1->unk1E--;
                            return gUnk_082D8DA4[ugh2](arg0, arg1, arg2 | 0x400);
                        }

                        uVar9 = arg1->unk1E * 0x1000;
                        uVar10 = arg0->base.base.base.unk4C + arg1->unk1B * 0x100;

                        if (
                            (uVar9 > uVar10 && uVar9 <= arg1->unk14 * 0x100) ||
                            ((arg1->unk28 & 4) != 0 && (arg0->base.base.base.unk48 >> 0xc) != arg1->unk1C)
                        ) {
                            arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

                            Macro_0800913C(arg0);

                            arg0->base.base.base.unk57 = ugh1;
                            arg0->base.base.base.unk58 |= gUnk_082D88B8[ugh1] & 0xFFFFF;
                        }

                        return 0xF;
                    }
                }
            }

            arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

            Macro_0800913C(arg0);

            arg0->base.base.base.unk57 = 0x5d;
            arg0->base.base.base.unk58 |= gUnk_082D88B8[93];

            return 0xF;
        }

        default:
            return 0;
    }
}

static u16 sub_08009674(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    s32 var2, var3;
    switch (arg2 & 0x70) {
        case 0: case 0x10: case 0x30: case 0x40:
            return 0xF;

        case 0x20: case 0x50: {
#ifdef NONMATCHING
            s32 var0 = arg1->unk1C * 0x1000 | 0x800;
            s32 var1 = arg1->unk1E * 0x1000 | 0x800;
#else
            register s32 var0 asm("r4"), var1 asm("r5");
            register s32 r0 asm("r0"), r2;
            r0 = arg1->unk1C * 0x1000;
            asm(""::"r"(r0));
            r2 = 0x800;
            var0 = r0;
            var0 |= r2;
            r0 = arg1->unk1E * 0x1000;
            asm(""::"r"(r0));
            var1 = r0;
            var1 |= r2;

#endif
            var2 = arg0->base.base.base.x > var0 ? arg0->base.base.base.x - var0 : var0 - arg0->base.base.base.x;
            var3 = arg0->base.base.base.y > var1 ? arg0->base.base.base.y - var1 : var1 - arg0->base.base.base.y;
            if (max(var3, var2) > 0x800)
                return 0xF;
            if ((arg2 & 0xF) == 0 && arg0->ability == KIRBY_ABILITY_STONE && arg0->unkD4 == 0x34) {
                arg0->base.base.base.yspeed = 0;
                if (var0 < arg0->base.base.base.x)
                    arg0->base.base.base.xspeed = 0x200;
                else
                    arg0->base.base.base.xspeed = -0x200;
            }
            else {
                s16 sVar2;
                s16 uVar5;
                s16 uVar8;

                s16 xspeed_s16 = arg0->base.base.base.xspeed;
                s16 yspeed_s16 = arg0->base.base.base.yspeed;

                if (abs(arg0->base.base.base.yspeed) > 0x80)
                    arg0->base.base.base.yspeed = -(yspeed_s16 * 3 >> 2);
                else
                    arg0->base.base.base.yspeed = -yspeed_s16;
                if (var1) var1 = !var1; // "read" var1
                uVar8 = abs(xspeed_s16);
                uVar5 = abs(yspeed_s16);
                sVar2 = max(uVar5, uVar8);

                if (sVar2 < 0x100)
                    sVar2 = 0x100;
                if (var0 < arg0->base.base.base.x) {
                    arg0->base.base.base.xspeed = sVar2;
                } else {
                    arg0->base.base.base.xspeed = -sVar2;
                }
            }

            return 0xF;
        }

        default:
            return 0;
    }
}

void sub_080097C4(struct Kirby *arg0, u32 arg1)
{
    u32 var0 = (arg1 & 0xF00000) >> 0x14;

    if (
        (arg0->ability == KIRBY_ABILITY_STONE || arg0->ability == KIRBY_ABILITY_SMASH) &&
        (arg1 & 0xF000000) == 0x1000000 &&
        arg0->unkD4 == 0x34
    )
        return;

    switch (arg1 & 0xF000000) {
        case 0x1000000:
            if (var0 != 0 || (arg0->base.base.base.unk62 & 4) == 0)
                if (arg0->unkD2 < gUnk_082D91A4[1][var0])
                    arg0->unkD2 = gUnk_082D91A4[1][var0];

            break;

        case 0x2000000:
            if ((arg0->base.base.base.unk62 & 4) == 0)
                if (arg0->unkD2 > gUnk_082D91A4[3][var0])
                    arg0->unkD2 = gUnk_082D91A4[3][var0];

            break;

        case 0x4000000:
            if (arg0->unkD0 > gUnk_082D91A4[0][var0])
                arg0->unkD0 = gUnk_082D91A4[0][var0];

            break;

        case 0x8000000:
            if (arg0->unkD0 < gUnk_082D91A4[2][var0])
                arg0->unkD0 = gUnk_082D91A4[2][var0];

            break;
    }
}

void sub_080098C4(struct Kirby *arg0, u32 arg1)
{
    u32 var0 = (arg1 & 0xF00000) >> 0x14;

    if (
        (arg0->ability == KIRBY_ABILITY_STONE || arg0->ability == KIRBY_ABILITY_SMASH) &&
        (arg1 & 0xF000000) == 0x1000000 &&
        arg0->unkD4 == 0x34
    )
        return;

    switch (arg1 & 0xF000000) {
        case 0x1000000:
            if (var0 != 0 || (arg0->base.base.base.unk62 & 4) == 0)
                if (arg0->unkD2 < gUnk_082D91BC[1][var0])
                    arg0->unkD2 = gUnk_082D91BC[1][var0];

            break;

        case 0x2000000:
            if ((arg0->base.base.base.unk62 & 4) == 0)
                if (arg0->unkD2 > gUnk_082D91BC[3][var0])
                    arg0->unkD2 = gUnk_082D91BC[3][var0];

            break;

        case 0x4000000:
            if (arg0->unkD0 > gUnk_082D91BC[0][var0])
                arg0->unkD0 = gUnk_082D91BC[0][var0];

            break;

        case 0x8000000:
            if (arg0->unkD0 < gUnk_082D91BC[2][var0])
                arg0->unkD0 = gUnk_082D91BC[2][var0];

            break;
    }
}

static u16 sub_080099C4(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2)
{
    if ((arg2 & 0x400) != 0)
        return 0xF;

    switch (arg2 & 0x70) {
        case 0:
            return 0xF;

        case 0x10:
            return 0xF;

        case 0x20: {
            s16 stack0[] = {arg1->unk1C, arg1->unk1E};
            u16 retval = 0xF;
            u8 var0;

            arg1->unk1C = arg1->unk8 >> 0xC;
            arg1->unk1E = arg1->unkC >> 0xC;

            if (stack0[0] != arg1->unk1C || stack0[1] != arg1->unk1E) {
                var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

                if ((gUnk_082D88B8[var0] & 1) == 0)
                    retval &= gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x400);
            }

            if ((arg0->base.base.base.unk62 & 8) != 0)
                return retval;

            arg1->unk1C = arg1->unk10 >> 0xC;
            arg1->unk1E = arg1->unkC >> 0xC;

            if (stack0[0] == arg1->unk1C && stack0[1] == arg1->unk1E)
                return retval;

            var0 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

            if ((gUnk_082D88B8[var0] & 1) == 0)
                retval &= gUnk_082D8DA4[var0](arg0, arg1, arg2 | 0x600);

            return retval;
        }

        case 0x30:
            return 0xF;

        case 0x40:
            return 0xF;

        case 0x50: {
            u8 uVar2;

            if (arg0->base.base.base.unk10.unkC == 0x127 && arg0->base.base.base.unk10.unk1A == 1) {
                uVar2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1);

                if ((gUnk_082D88B8[uVar2] & 0x200) == 0) {
                    u32 uVar6;
                    u32 uVar4;

                    if ((gUnk_082D88B8[uVar2] & 0xF0000000) != 0) {
                        arg1->unk1E--;
                        return gUnk_082D8DA4[uVar2](arg0, arg1, arg2 | 0x400);
                    }

                    uVar4 = arg1->unk1E * 0x1000;
                    uVar6 = arg0->base.base.base.unk4C + arg1->unk1B * 0x100;

                    if (
                        (uVar4 > uVar6 && uVar4 <= arg1->unk14 * 0x100) ||
                        ((arg1->unk28 & 4) != 0 && (arg0->base.base.base.unk48 >> 0xC) != arg1->unk1C)
                    ) {
                        arg1->y = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

                        Macro_0800913C(arg0);

                        arg0->base.base.base.unk57 = 0xF;
                        arg0->base.base.base.unk58 |= gUnk_082D88B8[15] & 0xFFFFF;
                    }
                }
            }
            else {
                if ((gUnk_082D88B8[sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E - 1)] & 0x200) == 0) {
                    s16 stack0[2] = {arg1->unk1C, arg1->unk1E};

                    arg1->unk1C = arg1->unk8 >> 0xC;
                    arg1->unk1E = arg1->unk14 >> 0xC;

                    if (stack0[0] != arg1->unk1C || stack0[1] != arg1->unk1E) {
                        uVar2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

                        if ((gUnk_082D88B8[uVar2] & 1) == 0)
                            gUnk_082D8DA4[uVar2](arg0, arg1, arg2 | 0x400);
                    }

                    if ((arg0->base.base.base.unk62 & 4) == 0) {
                        arg1->unk1C = arg1->unk10 >> 0xC;
                        arg1->unk1E = arg1->unk14 >> 0xC;

                        if (stack0[0] != arg1->unk1C || stack0[1] != arg1->unk1E) {
                            uVar2 = sub_080023E4(arg0->base.base.base.unk56, arg1->unk1C, arg1->unk1E);

                            if ((gUnk_082D88B8[uVar2] & 1) == 0)
                                gUnk_082D8DA4[uVar2](arg0, arg1, arg2 | 0x600);
                        }
                    }
                }
            }

            return 0xF;
        }

        default:
            return 0xF;
    }
}

bool32 sub_08009D28(struct ObjectBase *arg0)
{
    if (
        (arg0->flags & 0xC0) != 0 ||
        (gUnk_082D88B8[sub_080023E4(
            arg0->unk56,
            arg0->x >> 0xC,
            arg0->y >> 0xC
        )] & 0x100) == 0
    )
        return FALSE;

    return TRUE;
}

bool32 sub_08009D70(struct ObjectBase *arg0)
{
    if (
        (arg0->flags & 0xE0) != 0 ||
        gUnk_082D88B8[32] != gUnk_082D88B8[sub_080023E4(
            arg0->unk56,
            arg0->x >> 0xC,
            (arg0->y + (arg0->unk3F * 0x100) + 1) >> 0xC
        )]
    )
        return FALSE;

    return TRUE;
}

u8 sub_08009DC8(struct Object2 *arg0) { return sub_0800385C(arg0, 0x4); }
u8 sub_08009DD8(struct Kirby   *arg0) { return sub_0800385C(arg0, 0x0); }
u8 sub_08009DE8(struct Object2 *arg0) { return sub_0800385C(arg0, 0x1); }
u8 sub_08009DF8(struct Object2 *arg0) { return sub_0800385C(arg0, 0x2); }
u8 sub_08009E08(struct Object2 *arg0) { return 0xF; }

static u16 sub_08009E0C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080042BC(arg0, arg1, arg2, 0xD); }
static u16 sub_08009E20(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080047E0(arg0, arg1, arg2, 0x1); }
static u16 sub_08009E34(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004888(arg0, arg1, arg2, 0x2); }
static u16 sub_08009E48(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004998(arg0, arg1, arg2, 0x4); }
static u16 sub_08009E5C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004A44(arg0, arg1, arg2, 0x3); }
static u16 sub_08009E70(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004B58(arg0, arg1, arg2, 0x5); }
static u16 sub_08009E84(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004DBC(arg0, arg1, arg2, 0x6); }
static u16 sub_08009E98(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004FA8(arg0, arg1, arg2, 0x8); }
static u16 sub_08009EAC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_0800520C(arg0, arg1, arg2, 0x7); }
static u16 sub_08009EC0(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_0800549C(arg0, arg1, arg2, 0xA); }
static u16 sub_08009ED4(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080053F8(arg0, arg1, arg2, 0x9); }
static u16 sub_08009EE8(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08005544(arg0, arg1, arg2, 0xB); }
static u16 sub_08009EFC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080057A4(arg0, arg1, arg2, 0xC); }
static u16 sub_08009F10(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08005A04(arg0, arg1, arg2, 0x5); }
static u16 sub_08009F24(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08005BF8(arg0, arg1, arg2, 0x6); }
static u16 sub_08009F38(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08005DE0(arg0, arg1, arg2, 0x8); }
static u16 sub_08009F4C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08005FD8(arg0, arg1, arg2, 0x7); }
static u16 sub_08009F60(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080061C4(arg0, arg1, arg2, 0xB); }
static u16 sub_08009F74(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080063B0(arg0, arg1, arg2, 0xC); }
static u16 sub_08009F88(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004B58(arg0, arg1, arg2, 0x4A); }
static u16 sub_08009F9C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004DBC(arg0, arg1, arg2, 0x4B); }
static u16 sub_08009FB0(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08004FA8(arg0, arg1, arg2, 0x4D); }
static u16 sub_08009FC4(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_0800520C(arg0, arg1, arg2, 0x4C); }
static u16 sub_08009FD8(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08005544(arg0, arg1, arg2, 0x4E); }
static u16 sub_08009FEC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080057A4(arg0, arg1, arg2, 0x4F); }
static u16 sub_0800A000(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_080042BC(arg0, arg1, arg2, 0x50); }
static u16 sub_0800A014(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x67); }
static u16 sub_0800A028(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x68); }
static u16 sub_0800A03C(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x69); }
static u16 sub_0800A050(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x6A); }
static u16 sub_0800A064(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x6B); }
static u16 sub_0800A078(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x6C); }

void CreateLevelObjects(u8 playerId)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

    if (levelInfo->currentRoom != 0xFFFF) {
        const struct Object *obj = levelInfo->objlistPtr->unk0;

        s16 stack0[4][2] = {
            {((gCurLevelInfo[0].unkC  + gCurLevelInfo[0].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[0].unk10 + gCurLevelInfo[0].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[1].unkC  + gCurLevelInfo[1].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[1].unk10 + gCurLevelInfo[1].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[2].unkC  + gCurLevelInfo[2].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[2].unk10 + gCurLevelInfo[2].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[3].unkC  + gCurLevelInfo[3].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[3].unk10 + gCurLevelInfo[3].unk20) >> 0xC) - 2}
        };

        for (; obj->unk1 != 0; obj = (void *) obj + obj->unk1) {
            if (sub_080027E8(obj->unk2, obj->unk3, levelInfo->unk65E) != 0)
                continue;

            if ((obj->unk5 & 1) == 0) {
                s32 unkX, unkY, unkXX, unkYY;
                u8 p;

                unkX = stack0[playerId][0] - 1;

                if (unkX > (obj->x >> 4) || (obj->x >> 4) >= unkX + 0x16)
                    continue;

                unkY = stack0[playerId][1] - 1;

                if (unkY > (obj->y >> 4) || (obj->y >> 4) >= unkY + 0x11)
                    continue;

                for (p = 0; p < gUnk_0203AD30; p++) {
                    if (
                        p == playerId ||
                        gCurLevelInfo[p].currentRoom != levelInfo->currentRoom ||
                        ((gKirbys + p)->base.base.base.unkC & 0x200000) != 0
                    )
                        continue;

                    unkXX = stack0[p][0] + 1;

                    if (unkXX > (obj->x >> 4) || (obj->x >> 4) >= unkXX + 0x11)
                        continue;

                    unkYY = stack0[p][1] + 1;

                    if (unkYY > (obj->y >> 4) || (obj->y >> 4) >= unkYY + 0xC)
                        continue;

                    goto _0800A286;
                }
            }

            CreateObject(playerId, obj);
        _0800A286:;
        }
    }
}

void sub_0800A2B4(u8 playerId, s16 arg1, s16 (*arg2)[2], s16 arg3)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;
    const struct Object *obj = levelInfo->objlistPtr->unk0;

    struct Unk_02023720 *var2;

    u8 p;

    for (; obj->unk1 != 0; obj = (void *) obj + obj->unk1) {
        if (
            sub_080027E8(obj->unk2, obj->unk3, levelInfo->unk65E) != 0 ||
            arg2[playerId][1] > (obj->y >> 4) || (obj->y >> 4) >= arg2[playerId][1] + 0xE
        )
            continue;

        if (arg3 > 0) {
            if (arg1 - arg3 > (obj->x >> 4) || (obj->x >> 4) > arg1)
                continue;
        }
        else if (arg3 < 0) {
            if (arg1 > (obj->x >> 4) || (obj->x >> 4) > arg1 - arg3)
                continue;
        }
        else {
            if (arg1 != (obj->x >> 4))
                continue;
        }

        for (p = 0; p < gUnk_0203AD30; p++)
            if (
                p != playerId &&
                gCurLevelInfo[p].currentRoom == levelInfo->currentRoom &&
                arg2[p][0] + 1 <= (obj->x >> 4) && (obj->x >> 4) < arg2[p][0] + 0x12 &&
                arg2[p][1] + 1 <= (obj->y >> 4) && (obj->y >> 4) < arg2[p][1] + 0xD
            )
                goto _0800A5EA;

        var2 = sub_08002958(playerId);

        switch (obj->spawnTable) {
            struct ObjectBase *ughhh;

            case 1:
                ughhh = gSpawnFuncTable1[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;

            case 2:
                ughhh = gSpawnFuncTable2[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;
        }

        sub_08002918(playerId, var2);

    _0800A5EA:;
    }
}

void sub_0800A460(u8 playerId, s16 arg1, s16 (*arg2)[2], s16 arg3)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;
    const struct Object *obj = levelInfo->objlistPtr->unk0;

    struct Unk_02023720 *var2;

    u8 p;

    for (; obj->unk1 != 0; obj = (void *) obj + obj->unk1) {
        if (
            sub_080027E8(obj->unk2, obj->unk3, levelInfo->unk65E) != 0 ||
            arg2[playerId][0] > (obj->x >> 4) || (obj->x >> 4) >= arg2[playerId][0] + 0x13
        )
            continue;

        if (arg3 > 0) {
            if (arg1 - arg3 > (obj->y >> 4) || (obj->y >> 4) > arg1)
                continue;
        }
        else if (arg3 < 0) {
            if (arg1 > (obj->y >> 4) || (obj->y >> 4) > arg1 - arg3)
                continue;
        }
        else {
            if (arg1 != (obj->y >> 4))
                continue;
        }

        for (p = 0; p < gUnk_0203AD30; p++)
            if (
                p != playerId &&
                gCurLevelInfo[p].currentRoom == levelInfo->currentRoom &&
                arg2[p][0] + 1 <= (obj->x >> 4) && (obj->x >> 4) < arg2[p][0] + 0x12 &&
                arg2[p][1] + 1 <= (obj->y >> 4) && (obj->y >> 4) < arg2[p][1] + 0xD
            )
                goto _0800A5EA;

        var2 = sub_08002958(playerId);

        switch (obj->spawnTable) {
            struct ObjectBase *ughhh;

            case 1:
                ughhh = gSpawnFuncTable1[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;

            case 2:
                ughhh = gSpawnFuncTable2[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;
        }

        sub_08002918(playerId, var2);

    _0800A5EA:;
    }
}

void sub_0800A60C(u8 playerId, s16 (*arg1)[2])
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

    s16 stack0[] = {levelInfo->unkC  >> 0xC, levelInfo->unk10 >> 0xC};
    s16 stack4[] = {levelInfo->unk14 >> 0xC, levelInfo->unk18 >> 0xC};

    if (stack4[0] < stack0[0])
        sub_0800A2B4(playerId, arg1[playerId][0] + 0x13, arg1, 1);
    else if (stack4[0] > stack0[0])
        sub_0800A2B4(playerId, arg1[playerId][0], arg1, -1);

    if (stack4[1] < stack0[1])
        sub_0800A460(playerId, arg1[playerId][1] + 0xE, arg1, 1);
    else if (stack4[1] > stack0[1])
        sub_0800A460(playerId, arg1[playerId][1], arg1, -1);
}

void sub_0800A6E8(void)
{
    s16 stack0[][2] = {
        {(gCurLevelInfo[0].unkC >> 0xc) - 2, (gCurLevelInfo[0].unk10 >> 0xc) - 2},
        {(gCurLevelInfo[1].unkC >> 0xc) - 2, (gCurLevelInfo[1].unk10 >> 0xc) - 2},
        {(gCurLevelInfo[2].unkC >> 0xc) - 2, (gCurLevelInfo[2].unk10 >> 0xc) - 2},
        {(gCurLevelInfo[3].unkC >> 0xc) - 2, (gCurLevelInfo[3].unk10 >> 0xc) - 2}
    };

    u8 p;

    for (p = 0; p < gUnk_0203AD30; p++) {
        if (gCurLevelInfo[p].currentRoom == 0xFFFF)
            continue;

        if (
            abs(gCurLevelInfo[p].unkC  - gCurLevelInfo[p].unk14) > 0x1000 ||
            abs(gCurLevelInfo[p].unk10 - gCurLevelInfo[p].unk18) > 0x1000
        )
            CreateLevelObjects(p);
        else
            sub_0800A60C(p, stack0);
    }
}

void sub_0800A820(void)
{
    gUnk_03000004 = TaskCreate(sub_0800A6E8, 4, 0xF10, 0, sub_0800A8BC);
}

void sub_0800A84C(void)
{
    if (gUnk_03000004) {
        TaskDestroy(gUnk_03000004);
        gUnk_03000004 = NULL;
    }
}

void *CreateObject(u8 playerId, const struct Object *obj)
{
    struct Unk_02023720 *var0;
    struct Object2 *var1;

    var0 = sub_08002958(playerId);

    switch (obj->spawnTable) {
    case 1:
        var1 = gSpawnFuncTable1[obj->type](obj, playerId);
        var0->unk08 = &var1->base.unk56;
        break;
    case 2:
        var1 = gSpawnFuncTable2[obj->type](obj, playerId);
        var0->unk08 = &var1->base.unk56;
        break;
    default:
        var1 = NULL;
        break;
    }

    sub_08002918(playerId, var0);
    return var1;
}

void sub_0800A8BC(struct Task *arg0)
{
    gUnk_03000004 = NULL;
}

void sub_0800A8C8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}

void sub_0800A8F8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}
