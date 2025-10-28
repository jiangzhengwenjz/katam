#include "data.h"
#include "functions.h"
#include "kirby.h"
#include "dark_mind.h"
#include "constants/kirby.h"
#include "palette.h"
#include "bg.h"

// TODO: define file boundaries

static void sub_08001C40(struct Unk_08002E48 *, struct LevelInfo *);
static void sub_08002D60(struct Unk_08002E48 *, struct LevelInfo *);
static void sub_08002DA0(struct Unk_08002E48 *, struct LevelInfo *);
static void nullsub_10(struct Unk_08002E48 *, struct LevelInfo *);
static void sub_08002DFC(struct Unk_08002E48 *, struct LevelInfo *);
static u16 sub_08006960(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08006B90(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08006CCC(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08006DF8(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800705C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_080072BC(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08007528(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08007720(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800798C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08007B84(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08007DE0(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08008038(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08008298(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08008484(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_080086E0(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_080088CC(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08008C04(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800913C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009674(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_080099C4(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E08(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E0C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E20(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E34(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E48(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E5C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E70(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E84(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009E98(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009EAC(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009EC0(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009ED4(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009EE8(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009EFC(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F10(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F24(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F38(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F4C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F60(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F74(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F88(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009F9C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009FB0(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009FC4(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009FD8(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_08009FEC(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800A000(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800A014(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800A028(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800A03C(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800A050(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800A064(struct Kirby *, struct Unk_3007DE0 *, u16);
static u16 sub_0800A078(struct Kirby *, struct Unk_3007DE0 *, u16);

const u32 gUnk_082D88B8[] = {
           0x1, 0xB0000000, 0xC0000000, 0x80000000, 0x70000000, 0x10000000, 0x20000000, 0x60000000,
    0x50000000, 0xA0000000, 0x90000000, 0x30000000, 0x40000000,      0x200,        0xC,        0x4,
    0x1000000C, 0x2000000C, 0x6000000C, 0x5000000C, 0x10000004, 0x20000004, 0x60000004, 0x50000004,
    0x3000000C, 0x4000000C, 0x30000004, 0x40000004,  0x1002001,  0x2002001,  0x4002001,  0x8002001,
         0x10C,      0x101,      0x200,      0x200,      0x200,      0x200,      0x200,      0x200,
     0x1000801,  0x2000801,  0x4000801,  0x8000801,  0x1000803,  0x2000803,  0x4000803,  0x8000803,
     0x5000803,  0x9000803,  0xA000803,  0x6000803, 0xA0000002, 0xA0000002, 0x90000002, 0x90000002,
    0x30000002, 0x30000002, 0x40000002, 0x40000002, 0xB0000002, 0xC0000002, 0x80000002, 0x70000002,
    0x10000002, 0x20000002, 0x60000002, 0x50000002, 0xA0000002, 0x90000002, 0x30000002, 0x40000002,
           0x3,        0x6, 0x10000010, 0x20000010, 0x60000010, 0x50000010, 0x30000010, 0x40000010,
         0x210,  0x1100801,  0x2100801,  0x4100801,  0x8100801,  0x1200801,  0x2200801,  0x4200801,
     0x8200801,  0xC000401,   0x102200,   0x102001,       0x81,   0x202200,   0x202001,  0x1100803,
     0x2100803,  0x4100803,  0x8100803,  0x1200803,  0x2200803,  0x4200803,  0x8200803,  0x4008A00,
     0x8008A00,  0x4108A00,  0x8108A00,  0x4208A00,  0x8208A00,  0x1002003,  0x2002003,  0x4002003,
     0x8002003,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
           0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,        0x0,
        0x1200,   0x101260,      0x240,       0x41,   0x101200,   0x201200,   0x301220,   0x401200,
           0x0,        0x0,        0x0,        0x0,   0x104002,     0x4002,   0x104001,     0x4001,
};

const u16 gUnk_082D8CB8[] = {
    0x323, 0x323, 0x323, 0x323
};

const bool32 gUnk_082D8CC0[] = {
    FALSE, FALSE, FALSE, FALSE
};

const s32 gUnk_082D8CD0[][2] = {
    { 0x6000, 0x9000 },
    { 0x5000, 0x9000 },
    { 0x4000, 0x9000 },
    { 0x3000, 0x9000 },
};

const u16 gUnk_082D8CF0[] = {
    0x321, 0x321, 0x321, 0x321
};

const u32 gUnk_082D8CF8[] = {
    0, 0, 0, 0
};

const s32 gUnk_082D8D08[][2] = {
    { 0x6000, 0x1000 },
    { 0x5000, 0x1000 },
    { 0x4000, 0x1000 },
    { 0x3000, 0x1000 },
};

const u16 gUnk_082D8D28[] = {
    0x321, 0x321, 0x321, 0x321
};

const bool32 gUnk_082D8D30[] = {
    FALSE, TRUE, FALSE, TRUE
};

const s32 gUnk_082D8D40[][2] = {
    {  0xF000, 0xF000 },
    { 0x11000, 0xF000 },
    {  0xD000, 0xF000 },
    { 0x13000, 0xF000 },
};

void (*const gUnk_082D8D60[])(struct Unk_08002E48 *, struct LevelInfo *) = {
    sub_08001C40,
    sub_08002D60,
    sub_08002DA0,
    nullsub_10,
    sub_08002DFC,
};

struct RoomTiledBG *const gUnk_082D8D74[] = {
    &gCurLevelInfo[0].unk180[0],
    &gCurLevelInfo[1].unk180[0],
    &gCurLevelInfo[2].unk180[0],
    &gCurLevelInfo[3].unk180[0],
    &gCurLevelInfo[0].unk180[1],
    &gCurLevelInfo[1].unk180[1],
    &gCurLevelInfo[2].unk180[1],
    &gCurLevelInfo[3].unk180[1],
    &gCurLevelInfo[0].unk180[2],
    &gCurLevelInfo[1].unk180[2],
    &gCurLevelInfo[2].unk180[2],
    &gCurLevelInfo[3].unk180[2],
};

u16 (*const gUnk_082D8DA4[])(struct Kirby *, struct Unk_3007DE0 *, u16) = {
    sub_08006960,
    sub_08009E20,
    sub_08009E34,
    sub_08009E5C,
    sub_08009E48,
    sub_08009E70,
    sub_08009E84,
    sub_08009EAC,
    sub_08009E98,
    sub_08009ED4,
    sub_08009EC0,
    sub_08009EE8,
    sub_08009EFC,
    sub_08009E0C,
    sub_08006B90,
    sub_08006CCC,
    sub_080072BC,
    sub_08007528,
    sub_0800798C,
    sub_08007720,
    sub_08008038,
    sub_08008298,
    sub_080086E0,
    sub_08008484,
    sub_08006DF8,
    sub_0800705C,
    sub_08007B84,
    sub_08007DE0,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006B90,
    sub_08006960,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E0C,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_08009ED4,
    sub_08009ED4,
    sub_08009EC0,
    sub_08009EC0,
    sub_08009EE8,
    sub_08009EE8,
    sub_08009EFC,
    sub_08009EFC,
    sub_08009E20,
    sub_08009E34,
    sub_08009E5C,
    sub_08009E48,
    sub_08009F10,
    sub_08009F24,
    sub_08009F4C,
    sub_08009F38,
    sub_08009ED4,
    sub_08009EC0,
    sub_08009F60,
    sub_08009F74,
    sub_080099C4,
    sub_08009E0C,
    sub_08009F88,
    sub_08009F9C,
    sub_08009FC4,
    sub_08009FB0,
    sub_08009FD8,
    sub_08009FEC,
    sub_0800A000,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_080088CC,
    sub_08008C04,
    sub_08006960,
    sub_08009674,
    sub_0800913C,
    sub_08006960,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_080099C4,
    sub_0800A014,
    sub_0800A028,
    sub_0800A03C,
    sub_0800A050,
    sub_0800A064,
    sub_0800A078,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E0C,
    sub_08006960,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E0C,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08009E08,
    sub_08006960,
    sub_08006960,
    sub_08006960,
    sub_08006960,
};

const s16 gUnk_082D91A4[4][3] = {
    { -0x100, -0x200, -0x280 },
    {  0x180,  0x280,  0x400 },
    {  0x100,  0x200,  0x280 },
    { -0x100, -0x150, -0x300 },
};

const s16 gUnk_082D91BC[4][3] = {
    { -0xA0, -0x110, -0x180 },
    { 0x180,  0x200,  0x280 },
    {  0xA0,  0x110,  0x180 },
    { -0xA0, -0x100, -0x180 },
};

void *(*const gSpawnFuncTable2[])(const struct Object *, u8) = {
    NULL, NULL, NULL, NULL
};

#define Macro_08004008(arg0, arg1, arg2, arg3) ({ \
    u8 _ugh = sub_08002470( \
        (arg0)->base.base.base.unk56, \
        (arg1)->unk1C + (arg2), (arg1)->unk1E + (arg3) \
    ); \
    \
    gUnk_082D88B8[_ugh]; \
})

#define Macro_08008484(kirby, arg1, arg2, arg3) ({ \
    u8 _var0 = sub_080023E4((kirby)->base.base.base.unk56, (arg1)->unk1C + (arg2), (arg1)->unk1E + 1); \
    u32 _var1 = gUnk_082D88B8[_var0]; \
    u32 _var2 = 0x200; \
    \
    if ( \
        (kirby)->base.base.base.sprite.animId == 0x127 && \
        (kirby)->base.base.base.sprite.variant == 1 \
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

void sub_080006EC(void);


void sub_08001358(u8 playerId)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

    if (playerId == gUnk_0203AD3C) {
        if (levelInfo->currentRoom == 801 && gAIKirbyState < AI_KIRBY_STATE_NORMAL) {
            m4aMPlayAllStop();
            m4aSoundVSyncOff();
        }
        else {
            m4aSoundVSyncOn();
            levelInfo->unk65C = gUnk_02023518[levelInfo->unk65E];

            if ((gUnk_0203AD20 & 4) == 0)
                m4aSongNumStartOrChange(levelInfo->unk65C);
        }
    }
    else {
        levelInfo->unk65C = gUnk_02023518[levelInfo->unk65E];
    }
}

void sub_08001408(u8 playerId, union LevelInfo_1E0 arg1, void *arg2, u8 *arg3)
{
    u16 var0 = gCurLevelInfo[playerId].roomWidth >> 3;
    u16 currentRoom = gCurLevelInfo[playerId].currentRoom;
    u16 i;

    if (arg1.pat1->unk00 == 1) {
        struct Unk_0888562C *var1 = arg1.pat1;
        u16 *var2 = arg2;

        u16 *var3 = (u16 *) gUnk_02028EE0[gCurLevelInfo[playerId].unk65E]
                  + ((var1->unk03 << 1) * var0 + var1->unk02 * 2);

        u8 *var4;

        if (arg2) {
            var2[0] = var3[0];
            var2[1] = var3[1];
            var2[2] = var3[var0];
            var2[3] = var3[var0 + 1];
        }

        var3[0]        = var1->unk08[0];
        var3[1]        = var1->unk08[1];
        var3[var0]     = var1->unk08[2];
        var3[var0 + 1] = var1->unk08[3];

        var4 = gUnk_02024ED0[gCurLevelInfo[playerId].unk65E]
             + (var1->unk03 * (var0 / 2) + var1->unk02);

        if (arg3)
            arg3[0] = var4[0];

        var4[0] = var1->unk10;
    }
    else {
        struct Unk_0888562C_2 *var5 = arg1.pat2;
        u8 *var6 = arg2;

        u8 *var7 = gUnk_02028EE0[gCurLevelInfo[playerId].unk65E]
                 + ((var5->unk03 << 1) * var0 + var5->unk02 * 2);

        u8 *var8;

        if (arg2) {
            var6[0] = var7[0];
            var6[1] = var7[1];
            var6[2] = var7[var0];
            var6[3] = var7[var0 + 1];
        }

        var7[0]        = var5->unk08[0];
        var7[1]        = var5->unk08[1];
        var7[var0]     = var5->unk08[2];
        var7[var0 + 1] = var5->unk08[3];

        var8 = gUnk_02024ED0[gCurLevelInfo[playerId].unk65E]
             + (var5->unk03 * (var0 / 2) + var5->unk02);

        if (arg3)
            arg3[0] = var8[0];

        var8[0] = var5->unk0C;
    }

    for (i = 0; i < gUnk_0203AD44; i++) {
        if (gCurLevelInfo[i].currentRoom != currentRoom)
            continue;

        gCurLevelInfo[i].unkC0[1].prevScrollY = 0x7FFF;
        gCurLevelInfo[i].unkC0[1].prevScrollX = 0x7FFF;
    }
}

void sub_080015A8(u8 playerId, u16 arg1, u16 arg2, void *arg3)
{
    u32 var0 = gCurLevelInfo[playerId].roomWidth / 8;
    u16 unk1C = gForegroundTilemaps[gRoomProps[gCurLevelInfo[playerId].currentRoom].mapDataIdx]->unk1C;

    if (unk1C == 0) {
        u16 *var1 = arg3;
        u16 *var2 = (u16 *) gUnk_02028EE0[gCurLevelInfo[playerId].unk65E] + ((arg2 << 1) * var0 + arg1 * 2);

        var1[0] = var2[0];
        var1[1] = var2[1];
        var1[2] = var2[var0];
        var1[3] = var2[var0 + 1];
    }
    else {
        u8 *var3 = arg3;
        u8 *var4 = gUnk_02028EE0[gCurLevelInfo[playerId].unk65E] + ((arg2 << 1) * var0 + arg1 * 2);

        var3[0] = var4[0];
        var3[1] = var4[1];
        var3[2] = var4[var0];
        var3[3] = var4[var0 + 1];
    }
}

void sub_08001678(u32 arg0, u16 arg1, u8 arg2, u32 arg3)
{
    switch (arg0) {
        case 0:
            if (arg3 != 0)
                gUnk_02023358[arg2][arg1 >> 3] |= 1 << (arg1 & 7);
            else
                gUnk_02023358[arg2][arg1 >> 3] &= ~(1 << (arg1 & 7));

            break;

        case 1:
            if (arg3 != 0)
                gUnk_02023368[arg1 >> 3] |= 1 << (arg1 & 7);
            else
                gUnk_02023368[arg1 >> 3] &= ~(1 << (arg1 & 7));

            break;

        case 2:
            if (arg3 != 0)
                gUnk_02028BF0[arg1 >> 3] |= 1 << (arg1 & 7);
            else
                gUnk_02028BF0[arg1 >> 3] &= ~(1 << (arg1 & 7));

            break;
    }
}

u32 sub_08001738(struct ObjectBase *arg0)
{
    s32 var0[4] = {
        arg0->x + arg0->unk3C * 0x100,
        arg0->y + arg0->unk3D * 0x100,
        arg0->x + arg0->unk3E * 0x100,
        arg0->y + arg0->unk3F * 0x100
    };

    s32 var1 = gCurLevelInfo[arg0->unk56].roomWidth * 0x100;
    s32 var2 = gCurLevelInfo[arg0->unk56].roomHeight * 0x100;

    if (
        var0[2] < 0 || var1 <= var0[0] ||
        var0[3] < 0 || var2 <= var0[1]
    )
        return 0xFF;

    if (
        var0[0] >= 0 && var0[2] < gCurLevelInfo[arg0->unk56].roomWidth * 0x100 &&
        var0[1] >= 0 && var0[3] < gCurLevelInfo[arg0->unk56].roomHeight * 0x100
    )
        return 1;

    return 0;
}

u32 sub_080017E8(struct ObjectBase *arg0)
{
    s32 var0[4] = {
        arg0->x + arg0->unk3C * 0x100,
        arg0->y + arg0->unk3D * 0x100,
        arg0->x + arg0->unk3E * 0x100,
        arg0->y + arg0->unk3F * 0x100
    };

    struct LevelInfo *levelInfo = gCurLevelInfo + arg0->unk56;

    if (
        levelInfo->__levelMinX__ > var0[2] || levelInfo->__levelMaxX__ <= var0[0] ||
        levelInfo->__levelMinY__ > var0[3] || levelInfo->__levelMaxY__ <= var0[1]
    )
        return 0xFF;

    if (
        levelInfo->__levelMinX__ <= var0[0] && var0[2] < levelInfo->__levelMaxX__ &&
        levelInfo->__levelMinY__ <= var0[1] && var0[3] < levelInfo->__levelMaxY__
    )
        return 1;

    return 0;
}

u32 sub_08001894(struct ObjectBase *arg0)
{
    s32 var0[4] = {
        arg0->x + arg0->unk3C * 0x100,
        arg0->y + arg0->unk3D * 0x100,
        arg0->x + arg0->unk3E * 0x100,
        arg0->y + arg0->unk3F * 0x100
    };

    struct LevelInfo *levelInfo = gCurLevelInfo + arg0->unk56;

    if (
        levelInfo->unk6C > var0[2] || levelInfo->unk74 <= var0[0] ||
        levelInfo->unk70 > var0[3] || levelInfo->unk78 <= var0[1]
    )
        return 0xFF;

    if (
        levelInfo->unk6C <= var0[0] && var0[2] < levelInfo->unk74 &&
        levelInfo->unk70 <= var0[1] && var0[3] < levelInfo->unk78
    )
        return 1;

    return 0;
}

u32 sub_08001940(struct ObjectBase *arg0)
{
    s32 var0[4] = {
        arg0->x + arg0->unk3C * 0x100,
        arg0->y + arg0->unk3D * 0x100,
        arg0->x + arg0->unk3E * 0x100,
        arg0->y + arg0->unk3F * 0x100
    };

    struct LevelInfo *levelInfo = gCurLevelInfo + arg0->unk56;

    if (
        levelInfo->unk90 > var0[2] || levelInfo->unk98 <= var0[0] ||
        levelInfo->unk94 > var0[3] || levelInfo->unk9C <= var0[1]
    )
        return 0xFF;

    if (
        levelInfo->unk90 <= var0[0] && var0[2] < levelInfo->unk98 &&
        levelInfo->unk94 <= var0[1] && var0[3] < levelInfo->unk9C
    )
        return 1;

    return 0;
}

void sub_080019F8(struct LevelInfo *arg0)
{
    struct Background *var0 = arg0->unkC0 + 1,
                        *var1 = arg0->unkC0 + 2,
                        *var2 = arg0->unkC0 + 0;

    if ((arg0->unk8 & 1) == 0) {
        var0->scrollX = (arg0->__screenScrollX__ >> 8) + arg0->__unkScrollValueC__;
        var0->scrollY = (arg0->__screenScrollY__ >> 8) + arg0->__unkScrollValueD__;

        arg0->__unkScrollValueD__ = 0;
        arg0->__unkScrollValueC__ = 0;

        gBgScrollRegs[3][0] = var0->scrollX & 7;
        gBgScrollRegs[3][1] = var0->scrollY & 7;

        sub_08153060(var0);
    }

    if ((arg0->unk8 & 2) == 0) {
        if (gRoomProps[arg0->currentRoom].priorityFlags & 4) {
            arg0->__unkScrollValueA__ += gRoomProps[arg0->currentRoom].unk0E;
            arg0->__unkScrollValueB__ += gRoomProps[arg0->currentRoom].unk10;
        }
        else {
            arg0->__unkScrollValueA__ = (arg0->__screenScrollX__ >> 4) * (arg0->unkB8 >> 4)
                        + gRoomProps[arg0->currentRoom].unk0A * 0x100;

            arg0->__unkScrollValueB__ = ({
                s32 r = arg0->unk180[1].height * 0x800 - 0xA000;
                r -= (arg0->roomHeight * 0x10 - ((arg0->__screenScrollY__ >> 4) + 0xA00)) * (arg0->unkBA >> 4);
            });

            arg0->__unkScrollValueB__ -= gRoomProps[arg0->currentRoom].unk0C * 0x100;
        }
    }

    arg0->__unkScrollValueA__ += arg0->unk3C;
    arg0->__unkScrollValueB__ += arg0->unk40;

    var1->scrollX = arg0->__unkScrollValueA__ >> 8;
    var1->scrollY = arg0->__unkScrollValueB__ >> 8;

    gBgScrollRegs[0][0] = var1->scrollX;
    gBgScrollRegs[0][1] = var1->scrollY;

    if ((var1->unk2E & 0x20) != 0) {
        gBgScrollRegs[0][0] &= 7;
        gBgScrollRegs[0][1] &= 7;
    }

    sub_08153060(var1);

    if ((arg0->unk8 & 4) == 0) {
        if ((gRoomProps[arg0->currentRoom].priorityFlags & 2) != 0) {
            arg0->__screenScrollX_ScreenScrollApplied__ += gRoomProps[arg0->currentRoom].autoScrollX;
            arg0->__screenScrollY_ScreenScrollApplied__ += gRoomProps[arg0->currentRoom].autoScrollY;
        }
        else {
            arg0->__screenScrollX_ScreenScrollApplied__ = (arg0->__screenScrollX__ >> 4) * (arg0->unkB4 >> 4)
                        + gRoomProps[arg0->currentRoom].unk02 * 0x100;

            arg0->__screenScrollY_ScreenScrollApplied__ = ({
                s32 r = arg0->unk180[2].height * 0x800 - 0xA000;
                r -= (arg0->roomHeight * 0x10 - ((arg0->__screenScrollY__ >> 4) + 0xA00)) * (arg0->unkB6 >> 4);
            });

            arg0->__screenScrollY_ScreenScrollApplied__ -= gRoomProps[arg0->currentRoom].unk04 * 0x100;
        }

        arg0->__screenScrollX_ScreenScrollApplied__ += arg0->unk2C;
        arg0->__screenScrollY_ScreenScrollApplied__ += arg0->unk30;

        var2->scrollX = arg0->__screenScrollX_ScreenScrollApplied__ >> 8;
        var2->scrollY = arg0->__screenScrollY_ScreenScrollApplied__ >> 8;

        gBgScrollRegs[2][0] = var2->scrollX;
        gBgScrollRegs[2][1] = var2->scrollY;

        if ((var2->unk2E & 0x20) != 0) {
            gBgScrollRegs[2][0] &= 7;
            gBgScrollRegs[2][1] &= 7;
        }

        sub_08153060(var2);
    }
}

static void sub_08001C40(struct Unk_08002E48 *arg0, struct LevelInfo *levelInfo)
{
    bool32 var0 = FALSE, var1 = FALSE;
    struct Kirby *kirby = gKirbys + levelInfo->unk660;

    levelInfo->unk1C = kirby->base.base.base.x - 0x7800 - levelInfo->__screenScrollX__;
    levelInfo->unk20 = kirby->base.base.base.y - 0x5000 - levelInfo->__screenScrollY__;

    levelInfo->unk1C = levelInfo->unk1C < -levelInfo->unk662 ? -levelInfo->unk662 :
                       levelInfo->unk1C >  levelInfo->unk662 ?  levelInfo->unk662 :
                                                                levelInfo->unk1C;

    levelInfo->unk20 = levelInfo->unk20 < -levelInfo->unk664 ? -levelInfo->unk664 :
                       levelInfo->unk20 >  levelInfo->unk664 ?  levelInfo->unk664 :
                                                                levelInfo->unk20;

    sub_08002DA0(arg0, levelInfo);

    if (abs(levelInfo->unk1C) < levelInfo->unk662) var0 = TRUE;
    if (abs(levelInfo->unk20) < levelInfo->unk664) var1 = TRUE;

    levelInfo->unk662 += 4;
    levelInfo->unk664 += 4;

    if (var0 && var1) {
        levelInfo->unk1EC = 1;
        levelInfo->unk662 = 0x180;
        levelInfo->unk664 = 0x180;
    }
}

void sub_08001D18(u8 playerId)
{
    struct Unk_08002E48 *var0 = TaskGetStructPtr(gUnk_02023354), *var1 = var0;
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

    if ((levelInfo->unk8 & 8) == 0) {
        if (levelInfo->unk68 < 0) {
            levelInfo->__levelMinX__ = levelInfo->unk58;
            levelInfo->__levelMinY__ = levelInfo->unk60;
            levelInfo->__levelMaxX__ = levelInfo->unk5C;
            levelInfo->__levelMaxY__ = levelInfo->unk64;
        }
        else {
            if (levelInfo->__levelMinX__ < levelInfo->unk58) {
                levelInfo->__levelMinX__ += levelInfo->unk68;

                if (levelInfo->__levelMinX__ > levelInfo->unk58)
                    levelInfo->__levelMinX__ = levelInfo->unk58;
            }
            else if (levelInfo->__levelMinX__ > levelInfo->unk58) {
                levelInfo->__levelMinX__ -= levelInfo->unk68;

                if (levelInfo->__levelMinX__ < levelInfo->unk58)
                    levelInfo->__levelMinX__ = levelInfo->unk58;
            }

            if (levelInfo->__levelMinY__ < levelInfo->unk5C) {
                levelInfo->__levelMinY__ += levelInfo->unk68;

                if (levelInfo->__levelMinY__ > levelInfo->unk5C)
                    levelInfo->__levelMinY__ = levelInfo->unk5C;
            }
            else if (levelInfo->__levelMinY__ > levelInfo->unk5C) {
                levelInfo->__levelMinY__ -= levelInfo->unk68;

                if (levelInfo->__levelMinY__ < levelInfo->unk5C)
                    levelInfo->__levelMinY__ = levelInfo->unk5C;
            }

            if (levelInfo->__levelMaxX__ < levelInfo->unk60) {
                levelInfo->__levelMaxX__ += levelInfo->unk68;

                if (levelInfo->__levelMaxX__ > levelInfo->unk60)
                    levelInfo->__levelMaxX__ = levelInfo->unk60;
            }
            else if (levelInfo->__levelMaxX__ > levelInfo->unk60) {
                levelInfo->__levelMaxX__ -= levelInfo->unk68;

                if (levelInfo->__levelMaxX__ < levelInfo->unk60)
                    levelInfo->__levelMaxX__ = levelInfo->unk60;
            }

            if (levelInfo->__levelMaxY__ < levelInfo->unk64) {
                levelInfo->__levelMaxY__ += levelInfo->unk68;

                if (levelInfo->__levelMaxY__ > levelInfo->unk64)
                    levelInfo->__levelMaxY__ = levelInfo->unk64;
            }
            else if (levelInfo->__levelMaxY__ > levelInfo->unk64) {
                levelInfo->__levelMaxY__ -= levelInfo->unk68;

                if (levelInfo->__levelMaxY__ < levelInfo->unk64)
                    levelInfo->__levelMaxY__ = levelInfo->unk64;
            }
        }

        if (levelInfo->unk8C < 0) {
            levelInfo->unk6C = levelInfo->unk7C;
            levelInfo->unk70 = levelInfo->unk84;
            levelInfo->unk74 = levelInfo->unk80;
            levelInfo->unk78 = levelInfo->unk88;
        }
        else {
            if (levelInfo->unk6C < levelInfo->unk7C) {
                levelInfo->unk6C += levelInfo->unk8C;

                if (levelInfo->unk6C > levelInfo->unk7C)
                    levelInfo->unk6C = levelInfo->unk7C;
            }
            else if (levelInfo->unk6C > levelInfo->unk7C) {
                levelInfo->unk6C -= levelInfo->unk8C;

                if (levelInfo->unk6C < levelInfo->unk7C)
                    levelInfo->unk6C = levelInfo->unk7C;
            }

            if (levelInfo->unk70 < levelInfo->unk80) {
                levelInfo->unk70 += levelInfo->unk8C;

                if (levelInfo->unk70 > levelInfo->unk80)
                    levelInfo->unk70 = levelInfo->unk80;
            }
            else if (levelInfo->unk70 > levelInfo->unk80) {
                levelInfo->unk70 -= levelInfo->unk8C;

                if (levelInfo->unk70 < levelInfo->unk80)
                    levelInfo->unk70 = levelInfo->unk80;
            }

            if (levelInfo->unk74 < levelInfo->unk84) {
                levelInfo->unk74 += levelInfo->unk8C;

                if (levelInfo->unk74 > levelInfo->unk84)
                    levelInfo->unk74 = levelInfo->unk84;
            }
            else if (levelInfo->unk74 > levelInfo->unk84) {
                levelInfo->unk74 -= levelInfo->unk8C;

                if (levelInfo->unk74 < levelInfo->unk84)
                    levelInfo->unk74 = levelInfo->unk84;
            }

            if (levelInfo->unk78 < levelInfo->unk88) {
                levelInfo->unk78 += levelInfo->unk8C;

                if (levelInfo->unk78 > levelInfo->unk88)
                    levelInfo->unk78 = levelInfo->unk88;
            }
            else if (levelInfo->unk78 > levelInfo->unk88) {
                levelInfo->unk78 -= levelInfo->unk8C;

                if (levelInfo->unk78 < levelInfo->unk88)
                    levelInfo->unk78 = levelInfo->unk88;
            }
        }

        if (levelInfo->unkB0 < 0) {
            levelInfo->unk90 = levelInfo->unkA0;
            levelInfo->unk94 = levelInfo->unkA8;
            levelInfo->unk98 = levelInfo->unkA4;
            levelInfo->unk9C = levelInfo->unkAC;
        }
        else {
            if (levelInfo->unk90 < levelInfo->unkA0) {
                levelInfo->unk90 += levelInfo->unkB0;

                if (levelInfo->unk90 > levelInfo->unkA0)
                    levelInfo->unk90 = levelInfo->unkA0;
            }
            else if (levelInfo->unk90 > levelInfo->unkA0) {
                levelInfo->unk90 -= levelInfo->unkB0;

                if (levelInfo->unk90 < levelInfo->unkA0)
                    levelInfo->unk90 = levelInfo->unkA0;
            }

            if (levelInfo->unk94 < levelInfo->unkA4) {
                levelInfo->unk94 += levelInfo->unkB0;

                if (levelInfo->unk94 > levelInfo->unkA4)
                    levelInfo->unk94 = levelInfo->unkA4;
            }
            else if (levelInfo->unk94 > levelInfo->unkA4) {
                levelInfo->unk94 -= levelInfo->unkB0;

                if (levelInfo->unk94 < levelInfo->unkA4)
                    levelInfo->unk94 = levelInfo->unkA4;
            }

            if (levelInfo->unk98 < levelInfo->unkA8) {
                levelInfo->unk98 += levelInfo->unkB0;

                if (levelInfo->unk98 > levelInfo->unkA8)
                    levelInfo->unk98 = levelInfo->unkA8;
            }
            else if (levelInfo->unk98 > levelInfo->unkA8) {
                levelInfo->unk98 -= levelInfo->unkB0;

                if (levelInfo->unk98 < levelInfo->unkA8)
                    levelInfo->unk98 = levelInfo->unkA8;
            }

            if (levelInfo->unk9C < levelInfo->unkAC) {
                levelInfo->unk9C += levelInfo->unkB0;

                if (levelInfo->unk9C > levelInfo->unkAC)
                    levelInfo->unk9C = levelInfo->unkAC;
            }
            else if (levelInfo->unk9C > levelInfo->unkAC) {
                levelInfo->unk9C -= levelInfo->unkB0;

                if (levelInfo->unk9C < levelInfo->unkAC)
                    levelInfo->unk9C = levelInfo->unkAC;
            }
        }
    }

    gUnk_082D8D60[levelInfo->unk1EC](var1, levelInfo);

    levelInfo->__screenScrollXDupl__  = levelInfo->__screenScrollX__;
    levelInfo->__screenScrollYDupl__  = levelInfo->__screenScrollY__;
    levelInfo->__screenScrollX__  += levelInfo->unk1C;
    levelInfo->__screenScrollY__ += levelInfo->unk20;
    levelInfo->unk20  = 0;
    levelInfo->unk1C  = 0;
}

void sub_08001FF8(void)
{
    u8 i;

    for (i = 0; i < gUnk_0203AD44; i++) {
        if ((gUnk_02026D50[i] & 2) != 0)
            gUnk_02026D50[i] &= ~3;
        else if ((gUnk_02026D50[i] & 1) != 0)
            gUnk_02026D50[i] |=  2;

        if ((gUnk_02026D50[i] & 8) != 0)
            gUnk_02026D50[i] &= ~0xC;
        else if ((gUnk_02026D50[i] & 4) != 0)
            gUnk_02026D50[i] |= 8;
    }

    for (i = 0; i < gUnk_0203AD44; i++)
        if (gCurLevelInfo[i].currentRoom != 0xFFFF && gCurLevelInfo[i].unk1EC != 4)
            sub_08001D18(i);

    for (i = 0; i < gUnk_0203AD44; i++)
        if (gCurLevelInfo[i].currentRoom != 0xFFFF && gCurLevelInfo[i].unk1EC == 4)
            sub_08001D18(i);
}

void sub_08002118(void)
{
    struct Unk_08002E48 *var0 = TaskGetStructPtr(gUnk_02023354), *var1 = var0;
    u16 i;

    for (i = 0; i < gUnk_0203AD44; i++)
        if (gCurLevelInfo[i].currentRoom != 0xFFFF)
            sub_08003108(i, i == var1->unk0);

    gUnk_03002470[gUnk_03006070++] = sub_080021E4;
    gMainFlags |= 0x10;

    if (gCurLevelInfo[var1->unk0].currentRoom != 0xFFFF)
        sub_080019F8(gCurLevelInfo + var1->unk0);
}

static inline u8 sub_08002374_2(void)
{
    struct Unk_08002E48 *var0;
    var0 = TaskGetStructPtr(gUnk_02023354);

    return var0->unk0;
}

void sub_080021E4(void)
{
    u8 var1;
    struct LevelInfo *levelInfo;
    u16 currentRoom;
    const struct ForegroundInfo *fgInfo;
    u16 why, i;

    if ((gMainFlags & 0x800) != 0)
        return;

    var1 = sub_08002374_2();
    levelInfo = gCurLevelInfo + var1;
    currentRoom = levelInfo->currentRoom;

    if ((gUnk_03000510.unk4 & (1 << var1 | 0x10)) != 0)
        return;

    fgInfo = gForegroundInfo[gRoomProps[currentRoom].pixelDataIdx];
    why = fgInfo->unkC;

    for (i = 0; i < why; i++) {
        u16 *var2 = levelInfo->unk5FC[i];
        const struct ForegroundInfo_8p *var3 = fgInfo->unk8 + i;

        ++var3; --var3;
        if (var2[1] == 0) {
            void *var4 = fgInfo->unk4 + var3->unkC[var2[0]].unk0;
            void *var5 = (void *) 0x6008000 + var3->unk0;
            u16 j;

            for (j = 0; j < var3->unk12; j++) {
                CpuCopy32(var4, var5, var3->unk4);

                var4 += var3->unk8;
                var5 += var3->unk8;
            }
        }

        {
            u32 r0 = var2[1] + 1, r3 = 0;

            if ((var2[1] = r0) < var3->unkC[var2[0]].unk4)
                continue;

            var2[1] = r3;

            if (++var2[0] < var3->unk10)
                continue;

            var2[0] = r3;
        }
    }
}

void sub_0800233C(void)
{
    if (gUnk_02023350) {
        TaskDestroy(gUnk_02023350);
        gUnk_02023350 = NULL;
    }

    if (gUnk_02023354) {
        sub_080006EC();

        TaskDestroy(gUnk_02023354);
        gUnk_02023354 = NULL;
    }
}

u8 sub_08002374(void)
{
    struct Unk_08002E48 *var0;
    var0 = TaskGetStructPtr(gUnk_02023354);

    return var0->unk0;
}

void sub_080023A4(u8 arg0) {
    struct LevelInfo* r1 = gCurLevelInfo + arg0;
    if (r1->currentRoom != 0xffff &&
        (gUnk_0203AD10 & 1) == 0) {
        CreateLevelObjects(arg0);
    }
}

u8 sub_080023E4(u8 playerId, u16 x, u16 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;

    return gUnk_02024ED0[var0->unk65E][
        var0->roomWidth / 16 * y + x
    ];
}

u8 sub_08002434(struct LevelInfo *arg0, u16 x, u16 y)
{
    return gUnk_02024ED0[arg0->unk65E][
        arg0->roomWidth / 16 * y + x
    ];
}

u8 sub_08002470(u8 playerId, u16 x, u16 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;

    u16 roomWidth = var0->roomWidth / 16;
    u16 roomHeight = var0->roomHeight / 16;

    if (x * 0x10000 < 0) {
        x = 0;
    }
    else if (roomWidth <= x) {
        x = roomWidth - 1;
    }

    if (y * 0x10000 < 0) {
        y = 0;
    }
    else if (roomHeight <= y) {
        y = roomHeight - 1;
    }

    return gUnk_02024ED0[var0->unk65E][y * roomWidth + x];
}

u8 sub_080024F0(struct LevelInfo *arg0, u16 x, u16 y)
{
    u16 roomWidth = arg0->roomWidth / 16;
    u16 roomHeight = arg0->roomHeight / 16;

    if (x * 0x10000 < 0) {
        x = 0;
    }
    else if (roomWidth <= x) {
        x = roomWidth - 1;
    }

    if (y * 0x10000 < 0) {
        y = 0;
    }
    else if (roomHeight <= y) {
        y = roomHeight - 1;
    }

    return gUnk_02024ED0[arg0->unk65E][y * roomWidth + x];
}

u8 sub_0800255C(u8 playerId, u16 x, u16 y, u8 value)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;
    u32 var1 = var0->roomWidth / 16 * y + x;

    u8 old = gUnk_02024ED0[var0->unk65E][var1];
    gUnk_02024ED0[var0->unk65E][var1] = value;

    return old;
}

union LevelInfo_1E0 sub_080025AC(u8 playerId, u8 x, u8 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;
    union LevelInfo_1E0 var1 = var0->unk1E0;
    u8 var2 = gUnk_02024ED0[var0->unk65E][y * (var0->roomWidth / 16) + x];

    for (;;) {
        if (
            var1.pat1->unk01 == var2 &&
            var1.pat1->unk02 == x &&
            var1.pat1->unk03 == y
        ) {
            return var1;
        }

        var1.pat1 = (void *) var1.pat1 + var1.pat1->unk04;
    }
}

union LevelInfo_1E0 sub_08002624(u8 playerId, u8 x, u8 y, u8 arg3)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;
    union LevelInfo_1E0 var1 = var0->unk1E0;
    u8 var2 = gUnk_02024ED0[var0->unk65E][y * (var0->roomWidth / 16) + x];

    for (;;) {
        if (
            var1.pat1->unk01 == var2 &&
            var1.pat1->unk02 == x &&
            var1.pat1->unk03 == y &&
            --arg3 == 0xFF
        ) {
            return var1;
        }

        var1.pat1 = (void *) var1.pat1 + var1.pat1->unk04;
    }
}

u8 sub_080026A8(u8 playerId, u16 x, u16 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;

    return gUnk_02026D60[var0->unk65E][
        var0->roomWidth / 16 * y + x
    ];
}

u8 sub_080026F8(u16 roomId)
{
    return gLevelObjLists[gRoomProps[roomId].objectListIdx].obj->unkC;
}

u8 sub_0800271C(u16 roomId, u8 arg1)
{
    return gLevelObjLists[gRoomProps[roomId].objectListIdx].obj->unk4[arg1];
}

u8 sub_08002750(u16 roomId)
{
    return gLevelObjLists[gRoomProps[roomId].objectListIdx].obj->unkD;
}

u8 sub_08002774(u16 roomId, u8 arg1)
{
    return gLevelObjLists[gRoomProps[roomId].objectListIdx].obj->unk8[arg1];
}

void sub_080027A8(void)
{
    CpuFill32(0, gUnk_02023368, 32);
}

void sub_080027C8(void)
{
    CpuFill32(0, gUnk_02028BF0, 32);
}

u32 sub_080027E8(u32 arg0, u16 arg1, u8 arg2)
{
    switch (arg0) {
        case 0:
            return gUnk_02023358[arg2][arg1 / 8] >> (arg1 & 7) & 1;

        case 1:
            return gUnk_02023368[arg1 / 8] >> (arg1 & 7) & 1;

        case 2:
            return gUnk_02028BF0[arg1 / 8] >> (arg1 & 7) & 1;

        default:
            return 0;
    }
}

void sub_08002848(void)
{
    CpuFill32(0, gUnk_02023488, 128);
}

void sub_08002868(void)
{
    CpuFill32(0, gUnk_02028C10, 128);
}

u32 *sub_08002888(enum SUB_08002888_ENUM arg0, u8 index, u8 subindex)
{
    switch (arg0) {
        case SUB_08002888_ENUM_UNK_1:
            return gUnk_02023388[subindex] + index;
        case SUB_08002888_ENUM_UNK_2:
            return gUnk_02023488 + index;
        case SUB_08002888_ENUM_UNK_3:
            return gUnk_02028C10 + index;
        default:
            return NULL;
    }
}

void sub_080028CC(u8 playerId, struct Unk_02023720 *arg1) // remove node
{
    struct Unk_02023720_Mgr *var0 = &gCurLevelInfo[playerId].unk1F0;

    if (!arg1->prev) {
        var0->first = arg1->next;
    }
    else {
        arg1->prev->next = arg1->next;
    }

    if (!arg1->next) {
        var0->last = arg1->prev;
    }
    else {
        arg1->next->prev = arg1->prev;
    }

    arg1->next = NULL;
    arg1->prev = NULL;
    *arg1->unk08 = 0xFF;
    arg1->unk0C = 0;
}

void sub_08002918(u8 playerId, struct Unk_02023720 *arg1) // insert node
{
    struct Unk_02023720_Mgr *var0 = &gCurLevelInfo[playerId].unk1F0;
    struct Unk_02023720 *var1 = var0->last;

    if (!var1) {
        var0->last = arg1;
        var0->first = arg1;
        arg1->prev = NULL;
        arg1->next = NULL;
    }
    else {
        var1->next = arg1;
        arg1->prev = var1;
        var0->last = arg1;
        arg1->next = NULL;
    }

    arg1->unk0C = 1;
    *arg1->unk08 = playerId;
}

struct Unk_02023720 *sub_08002958(u8 playerId)
{
    struct Unk_02023720 *var0 = gCurLevelInfo[playerId].unk1F0.nodes;

    for (;;) {
        if (!var0->unk0C) return var0;
        var0++;
    }
}

struct Unk_02023720 *sub_08002984(u8 playerId, u8 *arg1)
{
    struct Unk_02023720 *var0 = gCurLevelInfo[playerId].unk1F0.first;

    while (var0) {
        if (arg1 == var0->unk08) return var0;
        var0 = var0->next;
    }

    return NULL;
}

u16 sub_080029BC(u8 arg0)
{
    return gUnk_02023508[arg0];
}

void sub_080029CC(u8 arg0, u16 arg1)
{
    gUnk_02023508[arg0] += arg1;
}

u16 sub_080029E4(u8 arg0)
{
    return gUnk_02023510[arg0];
}

void sub_080029F4(u8 arg0, u16 arg1)
{
    gUnk_02023510[arg0] += arg1;
}

u16 sub_08002A0C(u8 arg0)
{
    return gUnk_02023518[arg0];
}

void sub_08002A1C(u8 arg0, u16 arg1)
{
    gUnk_02023518[arg0] = arg1;
}

u16 sub_08002A2C(u8 arg0, u8 arg1)
{
    return gUnk_02023520[arg0][arg1];
}

void sub_08002A44(u8 arg0, u16 arg1, u8 arg2)
{
    gUnk_02023520[arg0][arg2] = arg1;
}

u32 sub_08002A5C(u16 roomId)
{
    return gVisitedDoors[gRoomProps[roomId].doorsIdx] >> 0xF;
}

void sub_08002A80(u16 roomId)
{
    gVisitedDoors[gRoomProps[roomId].doorsIdx] |= 0x8000;
}

u8 sub_08002AAC(u16 roomId)
{
    return gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk04;
}

u8 sub_08002AD0(u16 roomId)
{
    u8 var0 = 0;
    u8 var1 = gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk04;
    u16 var2 = gVisitedDoors[gRoomProps[roomId].doorsIdx];
    u16 i;

    for (i = 0; i < var1; i++) {
        if ((var2 >> i) & 1)
            var0++;
    }

    return var0;
}

void sub_08002B30(u16 roomId, s16 arg1, s16 arg2)
{
    struct Unk_08930E00_1 *var0 = gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk00.pat1;
    u16 i;

    for (i = 0; ; i++) {
        if (
            var0->unk00 == 1 &&
            var0->unk04 == arg1 &&
            var0->unk06 == arg2
        ) {
            gVisitedDoors[gRoomProps[roomId].doorsIdx] |= 1 << i;
            return;
        }
        var0 = (void *)var0 + var0->unk01;
    }
}

u32 sub_08002BA8(u16 roomId, u16 arg1, u8 arg2, u8 arg3)
{
    struct Unk_08930E00_2 *var0 = gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk00.pat2;
    u16 i;

    for (i = 0;; i++) {
        if (
            var0->unk00 == 2 &&
            var0->unk04 == arg1 &&
            var0->unk06 == arg2 &&
            var0->unk07 == arg3
        )
            return gVisitedDoors[gRoomProps[roomId].doorsIdx] >> i & 1;

        var0 = (void *) var0 + var0->unk01;
    }
}

void sub_08002C18(u16 roomId, u16 arg1, u8 arg2, u8 arg3)
{
    struct Unk_08930E00_2 *var0 = gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk00.pat2;
    u16 i;

    for (i = 0;; i++) {
        if (
            var0->unk00 == 2 &&
            var0->unk04 == arg1 &&
            var0->unk06 == arg2 &&
            var0->unk07 == arg3
        ) {
            gVisitedDoors[gRoomProps[roomId].doorsIdx] |= 1 << i;
            return;
        }

        var0 = (void *) var0 + var0->unk01;
    }
}

void sub_08002C98(u16 arg0, u16 *arg1, u32 *arg2, u32 *arg3)
{
    if (gAIKirbyState < AI_KIRBY_STATE_CUTSCENE) {
        *arg1 = gUnk_082D8CB8[arg0];
        *arg2 = gUnk_082D8CC0[arg0];

        arg3[0] = gUnk_082D8CD0[arg0][0];
        arg3[1] = gUnk_082D8CD0[arg0][1];
    }
    else if (gAIKirbyState < AI_KIRBY_STATE_NORMAL) {
        *arg1 = gUnk_082D8CF0[arg0];
        *arg2 = gUnk_082D8CF8[arg0];

        arg3[0] = gUnk_082D8D08[arg0][0];
        arg3[1] = gUnk_082D8D08[arg0][1];
    }
    else {
        *arg1 = gUnk_082D8D28[arg0];
        *arg2 = gUnk_082D8D30[arg0];

        arg3[0] = gUnk_082D8D40[arg0][0];
        arg3[1] = gUnk_082D8D40[arg0][1];
    }
}

void sub_08002D40(u16 arg0, u8 *arg1, u8 *arg2)
{
    *arg1 = gUnk_0893CB44[arg0][0];
    *arg2 = gUnk_0893CB44[arg0][1];
}

static void sub_08002D60(struct Unk_08002E48 *arg0, struct LevelInfo *levelInfo)
{
    struct ObjectBase *var0 = &gKirbys[levelInfo->unk660].base.base.base;

    levelInfo->unk1C = -(levelInfo->__screenScrollX__  + 0x7800) + var0->x;
    levelInfo->unk20 = -(levelInfo->__screenScrollY__ + 0x5000) + var0->y;

    sub_08002DA0(arg0, levelInfo);
}

static void sub_08002DA0(struct Unk_08002E48 *arg0 __attribute__((unused)), struct LevelInfo *levelInfo)
{
    s32 var0 = levelInfo->__screenScrollX__  + levelInfo->unk1C;
    s32 var1 = levelInfo->__screenScrollY__ + levelInfo->unk20;

    if (var0 < levelInfo->unk6C)
        levelInfo->unk1C += levelInfo->unk6C - var0;

    var0 += 0xF000;

    if (var0 > levelInfo->unk74)
        levelInfo->unk1C -= var0 - levelInfo->unk74;

    if (var1 < levelInfo->unk70)
        levelInfo->unk20 += levelInfo->unk70 - var1;

    var1 += 0xA000;

    if (var1 > levelInfo->unk78)
        levelInfo->unk20 -= var1 - levelInfo->unk78;
}

static void nullsub_10(struct Unk_08002E48 *arg0 __attribute__((unused)), struct LevelInfo *arg1 __attribute__((unused))) {}

static void sub_08002DFC(struct Unk_08002E48 *arg0, struct LevelInfo *arg1)
{
    struct LevelInfo *var0 = gCurLevelInfo + arg1->unk661;

    if (arg1->currentRoom == var0->currentRoom) {
        arg1->__screenScrollX__  = var0->__screenScrollX__;
        arg1->__screenScrollY__ = var0->__screenScrollY__;
        arg1->unk1C = 0;
        arg1->unk20 = 0;
    }
}

void sub_08002E3C(void)
{
    gUnk_02023350 = 0;
}

void sub_08002E48(struct Task *arg0)
{
    struct Unk_08002E48 *var0 = TaskGetStructPtr(arg0), *var1 = var0;
    u8 p;

    for (p = 0; p < 4; p++)
        if (gCurLevelInfo[p].currentRoom != 0xFFFF)
            sub_08003028(p, p == var1->unk0);

    gUnk_03002E60 = var1->unk24;
    gUnk_02023354 = 0;
}

void sub_08002EC4(u8 playerId, bool32 arg1)
{
    switch (gCurLevelInfo[playerId].currentRoom) {
        case 918:
            if (!arg1) break;

            gCurLevelInfo[playerId].unk8 = 7;

            gDispCnt &= ~7;
            gDispCnt |= DISPCNT_MODE_1;

            gBgCntRegs[2] = (gBgCntRegs[2] & ~0xC000) | BGCNT_AFF256x256;
            gBgCntRegs[2] = (gBgCntRegs[2] & ~3) | BGCNT_PRIORITY(2);

            gDispCnt &= ~DISPCNT_BG3_ON;
            gDispCnt |= DISPCNT_BG2_ON;

            sub_0810B830();
            sub_08113C34(0, 0x1B);

            gCurLevelInfo[playerId].unk0 = 0;

            break;

        case 919: {
            struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

            levelInfo->unk6C = levelInfo->unk7C = 0x800;
            levelInfo->unk70 = levelInfo->unk80 = 0x800;
            levelInfo->unk74 = levelInfo->unk84 = 0xF800;
            levelInfo->unk78 = levelInfo->unk88 = 0xA800;
            levelInfo->unk90 = levelInfo->unkA0 = 0x800;
            levelInfo->unk94 = levelInfo->unkA4 = 0x800;
            levelInfo->unk98 = levelInfo->unkA8 = 0xF800;
            levelInfo->unk9C = levelInfo->unkAC = 0xA800;

            levelInfo->unk0 = (levelInfo->roomHeight - 160) * 0x100;

            CpuCopy16(gRoomTiledBGs[34], levelInfo->unk180 + 1, sizeof(struct RoomTiledBG));

            if (arg1)
                gBgCntRegs[0] &= 0xFFFC;

            if ((gUnk_02026D50[levelInfo->unk65E] & 1) != 0) {
                gUnk_0203AD10 &= ~0x20;
                gUnk_0203AD10 &= ~0x40;
                gUnk_03000000 = 0;
            }

            levelInfo->__unkScrollValueB__ = gUnk_03000000;

            break;
        }
    }
}

void sub_08003028(u8 playerId, bool32 arg1)
{
    switch (gCurLevelInfo[playerId].currentRoom) {
        case 918:
            if (!arg1) break;

            gCurLevelInfo[playerId].unk8 &= ~7;
            gCurLevelInfo[playerId].unkC0[2].unk2E &= ~0x80;

            gDispCnt &= ~7;

            gBgCntRegs[2] &= ~0xC000;
            gBgCntRegs[2] &= ~3;
            gBgCntRegs[2] |= BGCNT_PRIORITY(1);

            gDispCnt |= DISPCNT_BG3_ON;
            gDispCnt &= ~DISPCNT_BG2_ON;

            gBgCntRegs[0] &= ~0x1F00;
            gBgCntRegs[0] |= BGCNT_SCREENBASE(31);

            break;

        case 919:
            if (!arg1) break;

            gBgCntRegs[0] &= ~DISPCNT_MODE_3;
            gBgCntRegs[0] |= DISPCNT_MODE_3;

            gDispCnt |= BGCNT_SCREENBASE(2);

            break;
    }
}

void sub_08003108(u8 playerId, bool32 arg1)
{
    struct LevelInfo *levelInfo0 = gCurLevelInfo + playerId;
    u16 currentRoom = levelInfo0->currentRoom;

    if (arg1 && (gUnk_03000510.unk4 & (1 << playerId | 0x10)) == 0) {
        const struct ForegroundPalette *fgPal = gForegroundPalettes[gRoomProps[currentRoom].paletteDataIdx];
        u16 i, why = fgPal->unk8;

        for (i = 0; i < why; i++) {
            u16 *var0 = levelInfo0->unk63C[i];
            struct ForegroundPalette_4pp *fgPal4p = fgPal->unk4[i];

            if (fgPal4p->unk4[0] == 0 || fgPal4p->unk0.u16pp[i][2] == 999)
                continue;

            if (var0[1] == 0) {
                if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
                    LoadBgPaletteWithTransformation(
                        fgPal4p->unk0.u16ppp[var0[0]][0],
                        fgPal4p->unk4[1],
                        fgPal4p->unk8
                    );
                }
                else {
                    (DmaCopy16(
                        3,
                        fgPal4p->unk0.u16ppp[var0[0]][0],
                        gBgPalette + fgPal4p->unk4[1],
                        fgPal4p->unk8 * 2
                    ));

                    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
                }

                sub_0803D21C(
                    fgPal4p->unk0.u16ppp[var0[0]][0],
                    fgPal4p->unk4[1],
                    fgPal4p->unk8
                );
            }

            {
                u32 var1 = var0[1] + 1;
                u32 var2 = 0;

                var0[1] = var1;

                if (var0[1] < fgPal4p->unk0.u16pp[var0[0]][2])
                    continue;

                var0[1] = var2;

                if (++var0[0] < fgPal4p->unk4[0])
                    continue;

                var0[0] = var2;
            }
        }
    }

    switch (gCurLevelInfo[playerId].currentRoom) {
        case 918: {
            gCurLevelInfo[playerId].__unkScrollValueA__ = (gCurLevelInfo[playerId].__unkScrollValueA__ & 0xFFFFF800) + 0x800;
            gCurLevelInfo[playerId].__unkScrollValueA__ -= gUnk_0203AD18[0] * 0x100;

            if (gUnk_0203AD18[1] != 0) {
                if ((gUnk_0203AD20 & 8) != 0)
                    gCurLevelInfo[playerId].__unkScrollValueB__ = 0x800 + gUnk_0203AD18[1] * 0x100;
                else
                    gCurLevelInfo[playerId].__unkScrollValueB__ = 0x800 - gUnk_0203AD18[1] * 0x100;
            }
            else {
                gCurLevelInfo[playerId].__unkScrollValueB__ = 0x800;
            }

            if (arg1) {
                if ((gUnk_0203AD20 & 8) != 0) {
                    if (gCurLevelInfo[gUnk_0203AD3C].unk180[1].tilemap != (u16 *) 0x600D800)
                        gCurLevelInfo[gUnk_0203AD3C].unk180[1].tilemap = (u16 *) 0x600D800;
                }
                else {
                    gCurLevelInfo[gUnk_0203AD3C].unk180[1].tilemap = gRoomTiledBGs[gRoomProps[918].backgroundIdx]->tilemap;
                }
            }

            break;
        }

        case 919: {
            s32 var3, var4;

            if (!arg1) break;

            var3 = gCurLevelInfo[playerId].unk0;
            var3 -= 0xA00;

            if (var3 < 0)
                var3 += (gCurLevelInfo[playerId].roomHeight - 0xA0) * 0x100;

            gCurLevelInfo[playerId].unk0 = var3;

            var4 = gCurLevelInfo[playerId].unk0 + gCurLevelInfo[playerId].__unkScrollValueD__ * 0x100;

            if (var4 < 0)
                var4 += (gCurLevelInfo[playerId].roomHeight - 0xA0) * 0x100;

            gCurLevelInfo[playerId].__unkScrollValueD__ = var4 >> 8;

            if ((gUnk_0203AD10 & 0x20) != 0) {
                struct LevelInfo *levelInfo1 = gCurLevelInfo + playerId;
                s32 var5 = levelInfo1->unk180[1].height * 0x800 - 0xA000;

                if (var5 > gUnk_03000000) {
                    var5 -= gUnk_03000000;
                    if (var5 > 0x100) var5 = 0x100;

                    gUnk_03000000 += var5;
                    levelInfo1->__unkScrollValueB__ = gUnk_03000000;

                    gDispCnt &= ~DISPCNT_BG1_ON;
                }
                else {
                    gUnk_0203AD10 |= 0x40;
                    levelInfo1->unkBA = 0;
                }
            }

            break;
        }
    }
}

void sub_08003438(void)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + sub_08002374();
    u16 currentRoom = levelInfo->currentRoom;

    const struct ForegroundInfo *fgInfo = gForegroundInfo[gRoomProps[currentRoom].pixelDataIdx];

    u16 var0 = fgInfo->unkC;
    u16 i, j;

    for (i = 0; i < var0; i++) {
        u16 *var1 = levelInfo->unk5FC[i];
        const struct ForegroundInfo_8p *var2 = fgInfo->unk8 + i;

        void *var3 = var2->unkC[var1[0]].unk0 + fgInfo->unk4;
        void *var4 = (void *) 0x6008000 + var2->unk0;

        for (j = 0; j < var2->unk12; j++) {
            CpuCopy32(var3, var4, var2->unk4);

            var3 += var2->unk8;
            var4 += var2->unk8;
        }
    }

    if (currentRoom == 918 && levelInfo->unk0 == 0) {
        gCurLevelInfo[sub_08002374()].unk8 = 7;

        gDispCnt &= 0xFFF8;
        gDispCnt |= DISPCNT_MODE_1;

        gBgCntRegs[2] &= 0x3FFF;
        gBgCntRegs[2] |= BGCNT_AFF256x256;
        gBgCntRegs[2] &= 0xFFFC;
        gBgCntRegs[2] |= BGCNT_PRIORITY(2);

        gDispCnt &= ~DISPCNT_BG3_ON;
        gDispCnt |= DISPCNT_BG2_ON;

        sub_0810B830();
        sub_08113C34(0, 0x1B);

        if ((gUnk_0203AD20 & 8) != 0)
            gCurLevelInfo[gUnk_0203AD3C].unk180[1].tilemap = (u16 *) 0x0600D800;
        else
            gCurLevelInfo[gUnk_0203AD3C].unk180[1].tilemap = gRoomTiledBGs[gRoomProps[918].backgroundIdx]->tilemap;
    }
}

u32 sub_080035F4(struct ObjectBase *arg0)
{
    u32 var0 = 0;

    s16 var1 = ((arg0->x >> 8) + ((arg0->unk3C + arg0->unk3E) >> 1)) >> 4;
    s16 var2 = ((arg0->x >> 8) + arg0->unk3C) >> 4;
    s16 var3 = ((arg0->x >> 8) + arg0->unk3E) >> 4;
    s16 var4;

    if ((arg0->flags & 0x20) == 0)
        var4 = ((arg0->y >> 8) + arg0->unk3F + 1) >> 4;
    else
        var4 = ((arg0->y >> 8) + arg0->unk3F) >> 4;

    {
        u32 ugh = gUnk_082D88B8[sub_080023E4(arg0->unk56, var1, var4)];
        if ((ugh & 9) == 0) return 0;

        var0 |= ugh & 8;
    }

    if (var1 != var2) {
        u32 ugh = gUnk_082D88B8[sub_080023E4(arg0->unk56, var2, var4)];
        if ((ugh & 9) == 0) return 0;

        var0 |= ugh & 8;
    }

    if (var1 != var3) {
        u32 ugh = gUnk_082D88B8[sub_080023E4(arg0->unk56, var3, var4)];
        if ((ugh & 9) == 0) return 0;

        var0 |= ugh & 8;
    }

    return var0;
}

bool32 sub_08003704(struct ObjectBase *arg0)
{
    s16 var0 = ((arg0->x >> 8) + ((arg0->unk3C + arg0->unk3E) >> 1)) >> 4;
    s16 var1 = ((arg0->x >> 8) + arg0->unk3C) >> 4;
    s16 var2 = ((arg0->x >> 8) + arg0->unk3E) >> 4;
    s16 var3 = ((arg0->y >> 8) + arg0->unk3F + 1) >> 4;

    if ((gUnk_082D88B8[sub_080023E4(arg0->unk56, var0, var3)] & 1) == 0)
        return TRUE;

    if (var0 != var1 && (gUnk_082D88B8[sub_080023E4(arg0->unk56, var1, var3)] & 1) == 0)
        return TRUE;

    if (var0 != var2 && (gUnk_082D88B8[sub_080023E4(arg0->unk56, var2, var3)] & 1) == 0)
        return TRUE;

    return FALSE;
}

void sub_080037E8(struct ObjectBase *arg0)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + arg0->unk56;

    if (arg0->x < levelInfo->unk90 + 0x800)
        arg0->x = levelInfo->unk90 + 0x800;
    else if (arg0->x > levelInfo->unk98 - 0x800)
        arg0->x = levelInfo->unk98 - 0x800;

    if (arg0->y < levelInfo->unk94 + 0x800)
        arg0->y = levelInfo->unk94 + 0x800;
    else if (arg0->y + arg0->unk3F * 0x100 > levelInfo->unk9C - 2)
        arg0->y = levelInfo->unk9C - arg0->unk3F * 0x100 - 2;
}

u32 sub_0800385C(struct Kirby *arg0, u16 arg1)
{
    u16 var0;
    u32 var1;
    u32 var2;

    struct Unk_3007DE0 stack0;

    var0 = 0xF;

    if (arg1 == 0)
        sub_080037E8((void *) arg0);

    stack0.x      = arg0->base.base.base.x;
    stack0.y      = arg0->base.base.base.y;
    stack0.unk8   = arg0->base.base.base.x + arg0->base.base.base.unk3C * 0x100;
    stack0.unk10  = arg0->base.base.base.x + arg0->base.base.base.unk3E * 0x100;
    stack0.unkC   = arg0->base.base.base.y + arg0->base.base.base.unk3D * 0x100;
    stack0.unk14  = arg0->base.base.base.y + arg0->base.base.base.unk3F * 0x100;
    stack0.unk18  = arg0->base.base.base.unk3C;
    stack0.unk1A  = arg0->base.base.base.unk3E;
    stack0.unk19  = arg0->base.base.base.unk3D;
    stack0.unk1B  = arg0->base.base.base.unk3F;
    stack0.unk28  = arg0->base.base.base.unk62;
    stack0.unk29  = 0;
    stack0.unk2A  = 0;
    stack0.xspeed = arg0->base.base.base.xspeed;
    stack0.yspeed = arg0->base.base.base.yspeed;

    if (arg1 == 0) {
        stack0.xspeed += arg0->unkD0;
        stack0.yspeed += arg0->unkD2;
    }

    stack0.unk24 = gCurLevelInfo[arg0->base.base.base.unk56].roomWidth  / 16;
    stack0.unk26 = gCurLevelInfo[arg0->base.base.base.unk56].roomHeight / 16;

    arg0->base.base.base.unk62 = 0;
    arg0->base.base.base.unk58 = 0;
    arg0->base.base.base.unk57 = 0;

    stack0.unk14++;

    if (
        arg1 == 0 &&
        (arg0->base.base.base.flags & 0x70) == 0x10 &&
        stack0.unk10 - stack0.unk8 < 0x1000
    ) {
        stack0.unk8  = arg0->base.base.base.x - 0x800;
        stack0.unk10 = arg0->base.base.base.x + 0x800;
    }

    if (stack0.yspeed <= 0) {
        u8 ugh;

        if (arg1 != 1 && stack0.yspeed < 0) {
            stack0.unk1C = (stack0.unk8 + stack0.unk10) >> 0xD;
            stack0.unk1E = stack0.unkC >> 0xC;

            ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
            stack0.unk29 = ugh;

            if ((gUnk_082D88B8[ugh] & 1) == 0)
                var0 = gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x420);
        }

        stack0.unk1C = (stack0.unk8 + stack0.unk10) >> 0xD;
        stack0.unk1E = stack0.unk14 >> 0xC;

        ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
        stack0.unk2A = ugh;

        if (arg1 != 1)
            var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x50);
        else
            var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x450);
    }
    else {
        u8 ugh;

        if (arg1 != 1) {
            stack0.unk1C = (stack0.unk8 + stack0.unk10) >> 0xD;
            stack0.unk1E = stack0.unk14 >> 0xC;

            ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
            stack0.unk2A = ugh;

            if ((gUnk_082D88B8[ugh] & 1) == 0)
                var0 = gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x450);
        }

        stack0.unk1C = (stack0.unk8 + stack0.unk10) >> 0xD;
        stack0.unk1E = stack0.unkC >> 0xC;

        ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
        stack0.unk29 = ugh;

        if (arg1 != 1)
            var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x20);
        else
            var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x420);
    }

    var1 = 0;

    stack0.unk8  = arg0->base.base.base.x + stack0.unk18 * 0x100 - 1;
    stack0.unk10 = arg0->base.base.base.x + stack0.unk1A * 0x100 + 1;

    if (arg1 == 0) {
        if (stack0.unk1B - stack0.unk19 > 8) {
            stack0.unkC  = stack0.y + (stack0.unk19 + 4) * 0x100;
            stack0.unk14 = stack0.y + (stack0.unk1B - 4) * 0x100;
        }
        else {
            stack0.unkC  = stack0.y + stack0.unk19 * 0x100;
            stack0.unk14 = stack0.y + stack0.unk1B * 0x100;
        }
    }
    else {
        if (stack0.unk1B - stack0.unk19 > 8) {
            stack0.unkC  = stack0.y + (stack0.unk19 + 2) * 0x100;
            stack0.unk14 = stack0.y + (stack0.unk1B - 2) * 0x100;
        }
        else {
            stack0.unkC  = stack0.y + stack0.unk19 * 0x100;
            stack0.unk14 = stack0.y + stack0.unk1B * 0x100;
        }
    }

    if (stack0.xspeed < 0) {
        var1 = 1;
    }
    else if (stack0.xspeed > 0) {
        var1 = 2;
    }
    else if ((arg0->base.base.base.flags & 1) != 0) {
        if ((stack0.unk28 & 1) != 0)
            var1 = 1;
        else if ((stack0.unk28 & 2) != 0)
            var1 = 2;
    }
    else {
        if ((stack0.unk28 & 1) != 0)
            var1 = 2;
        else if ((stack0.unk28 & 2) != 0)
            var1 = 1;
    }

    switch (var1) {
        case 1:
            if ((var0 & 1) != 0) {
                bool8 why = TRUE;

                if (
                    (
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x40000000 ||
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x60000000
                    ) &&
                    stack0.y + stack0.unk1B * 0x100 == stack0.y + stack0.unk19 * 0x100
                )
                    why = FALSE;

                if (why) {
                    u8 ugh;

                    stack0.unk1C = stack0.unk8 >> 0xC;
                    stack0.unk1E = stack0.unkC >> 0xC;

                    ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
                    var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1);
                }
            }

            if ((var0 & 2) != 0 && (arg0->base.base.base.unk62 & 3) == 0) {
                u8 ugh;

                stack0.unk1C = stack0.unk8 >> 0xC;
                stack0.unk1E = stack0.unk14 >> 0xC;

                ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
                gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x10);
            }

            break;

        case 2:
            if ((var0 & 4) != 0) {
                bool8 why = TRUE;

                if (
                    (
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x20000000 ||
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x30000000
                    ) &&
                    stack0.y + stack0.unk1B * 0x100 == stack0.y + stack0.unk19 * 0x100
                )
                    why = FALSE;

                if (why) {
                    u8 ugh;

                    stack0.unk1C = stack0.unk10 >> 0xC;
                    stack0.unk1E = stack0.unkC >> 0xC;

                    ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
                    var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x30);
                }
            }

            if ((var0 & 8) != 0 && (arg0->base.base.base.unk62 & 3) == 0) {
                u8 ugh;

                stack0.unk1C = stack0.unk10 >> 0xC;
                stack0.unk1E = stack0.unk14 >> 0xC;

                ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
                gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x40);
            }

            break;

        default:
            if (arg1 == 1) break;

            if ((var0 & 1) != 0) {
                bool8 why = TRUE;

                if (
                    (
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x40000000 ||
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x60000000
                    ) &&
                    stack0.y + stack0.unk1B * 0x100 == stack0.y + stack0.unk19 * 0x100
                )
                    why = FALSE;

                if (why) {
                    u8 ugh;

                    stack0.unk1C = stack0.unk8 >> 0xC;
                    stack0.unk1E = stack0.unkC >> 0xC;

                    ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
                    var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1);
                }
            }

            if ((var0 & 2) != 0 && (arg0->base.base.base.unk62 & 3) == 0) {
                u8 ugh;

                stack0.unk1C = stack0.unk8 >> 0xC;
                stack0.unk1E = stack0.unk14 >> 0xC;

                ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
                var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x10);
            }

            if ((var0 & 4) != 0 && (arg0->base.base.base.unk62 & 3) == 0) {
                bool8 why = TRUE;

                if (
                    (
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x20000000 ||
                        (gUnk_082D88B8[stack0.unk2A] & 0xF0000000) == 0x30000000
                    ) &&
                    stack0.y + stack0.unk1B * 0x100 == stack0.y + stack0.unk19 * 0x100
                )
                    why = FALSE;

                if (why) {
                    u8 ugh;

                    stack0.unk1C = stack0.unk10 >> 0xC;
                    stack0.unk1E = stack0.unkC >> 0xC;

                    ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);
                    var0 &= gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x30);
                }
            }

            if ((var0 & 8) != 0 && (arg0->base.base.base.unk62 & 3) == 0) {
                u8 ugh;

                stack0.unk1C = stack0.unk10 >> 0xC;
                stack0.unk1E = stack0.unk14 >> 0xC;

                ugh = sub_080023E4(arg0->base.base.base.unk56, stack0.unk1C, stack0.unk1E);

                gUnk_082D8DA4[ugh](arg0, &stack0, arg1 | 0x40);
            }

            break;
    }

    if (arg0->base.base.base.unk57 == 0)
        arg0->base.base.base.unk58 |= gUnk_082D88B8[0];

    var2 = gUnk_082D88B8[sub_080023E4(arg0->base.base.base.unk56, stack0.x >> 0xC, stack0.y >> 0xC)];

    if ((arg0->base.base.base.unk58 & 0x2000) != 0) {
        if ((var2 & 0x2000) != 0)
            arg0->base.base.base.unk58 |= var2 & ~0xF00000;
        else
            arg0->base.base.base.unk58 |= var2 & ~0xF00000;
    }
    else {
        arg0->base.base.base.unk58 |= var2 & ~0xF00000;
    }

    if (arg1 == 0) {
        if ((var2 & 0x800) != 0) {
            if ((var2 & 2) != 0)
                sub_080098C4(arg0, var2);
            else
                sub_080097C4(arg0, var2);
        }
        else if ((var2 & 0x2000) != 0) {
            arg0->base.base.base.unk58 &= ~0xF00000;
            arg0->base.base.base.unk58 |= var2;
        }
    }

    arg0->base.base.base.x = stack0.x;
    arg0->base.base.base.y = stack0.y;

    if ((arg0->base.base.base.unk62 & 4) != 0)
        arg0->base.base.base.flags &= ~0x20;

    return arg0->base.base.base.unk62;
}

bool32 sub_08004008(struct Kirby *arg0, struct Unk_3007DE0 *arg1)
{
    if (
        (arg0->base.base.base.x >> 0xC) == arg1->unk1C &&
        (arg0->base.base.base.unk48 >> 0xC) == (arg0->base.base.base.x >> 0xC) &&
        (arg0->base.base.base.y >> 0xC) == arg1->unk1E &&
        (arg0->base.base.base.unk4C >> 0xC) == (arg0->base.base.base.y >> 0xC)
    ) {
        if ((arg0->base.base.base.flags & 1) != 0) {
            if ((Macro_08004008(arg0, arg1, 1, 0) & 1) != 0) {
                s32 var0 = (arg1->unk1C + 1) * 0x1000 - arg1->unk18 * 0x100;

                if (var0 - arg1->x > 0xBFF)
                    var0 = arg1->x + 0xC00;

                arg1->x = var0;

                arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 1 : 2;
                return TRUE;
            }

            if ((Macro_08004008(arg0, arg1, -1, 0) & 1) != 0) {
                s32 var0 = arg1->unk1C * 0x1000 - 1 - arg1->unk1A * 0x100;

                if (arg1->x - var0 > 0xC00)
                    var0 = arg1->x - 0xC00;

                arg1->x = var0;

                arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) == 0 ? 1 : 2;
                return TRUE;
            }
        }
        else {
            if ((Macro_08004008(arg0, arg1, -1, 0) & 1) != 0) {
                s32 var0 = arg1->unk1C * 0x1000 - 1 - arg1->unk1A * 0x100;

                if (arg1->x - var0 > 0xC00)
                    var0 = arg1->x - 0xC00;

                arg1->x = var0;

                arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) == 0 ? 1 : 2;
                return TRUE;
            }

            if ((Macro_08004008(arg0, arg1, 1, 0) & 1) != 0) {
                s32 var0 = (arg1->unk1C + 1) * 0x1000 - arg1->unk18 * 0x100;

                if (var0 - arg1->x > 0xBFF)
                    var0 = arg1->x + 0xC00;

                arg1->x = var0;

                arg0->base.base.base.unk62 |= (arg0->base.base.base.flags & 1) != 0 ? 1 : 2;
                return TRUE;
            }
        }

        if ((Macro_08004008(arg0, arg1, 0, 1) & 1) != 0) {
            s32 var0 = (arg1->unk1E + 1) * 0x1000 - arg1->unk19 * 0x100 + 1;

            if (var0 - arg1->y > 0xBFF)
                var0 = arg1->y + 0xC00;

            arg1->y = var0;

            arg0->base.base.base.unk62 |= 8;
            arg0->base.base.base.yspeed = 0;
            arg0->unkD2 = 0;
        }
        else if ((Macro_08004008(arg0, arg1, 0, -1) & 1) != 0) {
            s32 var0 = arg1->unk1E * 0x1000 - arg1->unk1B * 0x100 - 1;

            if (arg1->y - var0 > 0xBFF)
                var0 = arg1->y - 0xC00;

            arg1->y = var0;

            arg0->base.base.base.unk62 |= 8;
            arg0->base.base.base.yspeed = 0;
            arg0->unkD2 = 0;
        }

        return TRUE;
    }

    return FALSE;
}

u16 sub_080042BC(struct Kirby *arg0, struct Unk_3007DE0 *arg1, u16 arg2, u8 arg3)
{
    if (arg0->base.base.base.unk0 == 0 && sub_08004008(arg0, arg1) != 0)
        return 0;

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

            if (arg1->unk8 + 1) return 0;
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

            if (arg1->unk10 - 1 > 0) return 0;
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

            arg0->base.base.base.unk57 = arg3;
            arg0->base.base.base.unk58 |= gUnk_082D88B8[arg3];

            return 0xF;
        }

        default:
            return 0;
    }
}

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
            arg0->base.base.base.sprite.animId == 0x127 &&
            arg0->base.base.base.sprite.variant == 1
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
            arg0->base.base.base.sprite.animId == 0x127 &&
            arg0->base.base.base.sprite.variant == 1
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

            if (arg0->base.base.base.sprite.animId == 0x127 && arg0->base.base.base.sprite.variant == 1) {
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

u8 sub_08009DC8(struct Kirby *arg0) { return sub_0800385C(arg0, 0x4); }
u8 sub_08009DD8(struct Kirby *arg0) { return sub_0800385C(arg0, 0x0); }
u8 sub_08009DE8(struct Kirby *arg0) { return sub_0800385C(arg0, 0x1); }
u8 sub_08009DF8(struct Kirby *arg0) { return sub_0800385C(arg0, 0x2); }

static u16 sub_08009E08(struct Kirby *arg0 __attribute__((unused)), struct Unk_3007DE0 *arg1 __attribute__((unused)), u16 arg2 __attribute__((unused))) { return 0xF; }
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
            {((gCurLevelInfo[0].__screenScrollX__  + gCurLevelInfo[0].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[0].__screenScrollY__ + gCurLevelInfo[0].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[1].__screenScrollX__  + gCurLevelInfo[1].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[1].__screenScrollY__ + gCurLevelInfo[1].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[2].__screenScrollX__  + gCurLevelInfo[2].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[2].__screenScrollY__ + gCurLevelInfo[2].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[3].__screenScrollX__  + gCurLevelInfo[3].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[3].__screenScrollY__ + gCurLevelInfo[3].unk20) >> 0xC) - 2}
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

    s16 stack0[] = {levelInfo->__screenScrollX__  >> 0xC, levelInfo->__screenScrollY__ >> 0xC};
    s16 stack4[] = {levelInfo->__screenScrollXDupl__ >> 0xC, levelInfo->__screenScrollYDupl__ >> 0xC};

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
        {(gCurLevelInfo[0].__screenScrollX__ >> 0xc) - 2, (gCurLevelInfo[0].__screenScrollY__ >> 0xc) - 2},
        {(gCurLevelInfo[1].__screenScrollX__ >> 0xc) - 2, (gCurLevelInfo[1].__screenScrollY__ >> 0xc) - 2},
        {(gCurLevelInfo[2].__screenScrollX__ >> 0xc) - 2, (gCurLevelInfo[2].__screenScrollY__ >> 0xc) - 2},
        {(gCurLevelInfo[3].__screenScrollX__ >> 0xc) - 2, (gCurLevelInfo[3].__screenScrollY__ >> 0xc) - 2}
    };

    u8 p;

    for (p = 0; p < gUnk_0203AD30; p++) {
        if (gCurLevelInfo[p].currentRoom == 0xFFFF)
            continue;

        if (
            abs(gCurLevelInfo[p].__screenScrollX__  - gCurLevelInfo[p].__screenScrollXDupl__) > 0x1000 ||
            abs(gCurLevelInfo[p].__screenScrollY__ - gCurLevelInfo[p].__screenScrollYDupl__) > 0x1000
        )
            CreateLevelObjects(p);
        else
            sub_0800A60C(p, stack0);
    }
}

void sub_0800A820(void)
{
    gUnk_03000004 = TaskCreate(sub_0800A6E8, 4, 0xF10, TASK_USE_IWRAM, sub_0800A8BC);
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
