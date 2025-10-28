#include "global.h"
#include "data.h"
#include "intro.h"
#include "malloc_vram.h"
#include "palette.h"
#include "random.h"
#include "title_screen.h"
#include "trig.h"
#include "constants/languages.h"

static void sub_08145D1C(struct Task *);
static void sub_08145D94(void);
static void sub_08145F38(struct Unk_08145B64 *);
static void sub_08146018(struct Unk_08145B64 *);
static void sub_081460CC(struct Unk_08145B64 *);
static void sub_081461AC(struct Unk_08145B64 *);
static void sub_08146398(struct Unk_08145B64 *, u8);
static void sub_08146414(struct Unk_08145B64 *, u8);
static void sub_081464D4(struct Unk_08145B64 *, u8);
static void sub_0814669C(struct Unk_08145B64 *, const struct Unk_08387814 *);
static void sub_0814682C(struct Unk_08145B64 *, struct Unk_08145B64_5EC *);
static void sub_081469D4(struct Unk_08145B64 *, struct Unk_08145B64_5EC *);
static void sub_08146CE4(struct Unk_08145B64_5EC *);
static void sub_08146D80(struct Unk_08145B64_5EC *);
static void sub_08146FB0(struct Unk_08145B64_5EC *);
static void sub_08147014(struct Unk_08145B64_5EC *);
static void sub_081470EC(struct Unk_08145B64_5EC *);
static void sub_08147154(struct Unk_08145B64_5EC *);
static void sub_081471E8(struct Unk_08145B64_5EC *);
static void sub_081472DC(struct Unk_08145B64_5EC *);
static void sub_081473E0(struct Unk_08145B64_5EC *);
static void sub_081474C4(struct Unk_08145B64_5EC *);
static void sub_08147580(struct Unk_08145B64_5EC *);
static void sub_081476A8(struct Unk_08145B64_5EC *);
static void sub_08147774(struct Unk_08145B64_5EC *);
static void sub_08147858(struct Unk_08145B64_5EC *);
static void sub_081478FC(struct Unk_08145B64_5EC *);
static void sub_081479E8(struct Unk_08145B64_5EC *);
static void sub_08147A98(struct Unk_08145B64_5EC *);
static void sub_08147B7C(struct Unk_08145B64_5EC *);
static void sub_08147C28(struct Unk_08145B64_5EC *);
static void sub_08147CE8(struct Unk_08145B64_5EC *);
static void sub_08147E10(struct Unk_08145B64_5EC *);
static void sub_08147EDC(struct Unk_08145B64_5EC *);
static void sub_08147FC0(struct Unk_08145B64_5EC *);
static void sub_08148064(struct Unk_08145B64_5EC *);
static void sub_0814815C(struct Unk_08145B64_5EC *);
static void sub_0814825C(struct Unk_08145B64_5EC *);
static void sub_081482C4(struct Unk_08145B64_5EC *);
static void sub_081483B0(struct Unk_08145B64_5EC *);
static void sub_08148464(struct Unk_08145B64_5EC *);
static void sub_08148570(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_081485B4(struct Unk_08145B64_5EC *);
static void sub_0814861C(struct Unk_08145B64_5EC *);
static void sub_081487C0(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08148804(struct Unk_08145B64_5EC *);
static void sub_0814889C(struct Unk_08145B64_5EC *);
static void sub_08148A80(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08148AC4(struct Unk_08145B64_5EC *);
static void sub_08148B24(struct Unk_08145B64_5EC *);
static bool32 sub_08148CD8(struct Unk_08145B64 *);
static void sub_08148E24(struct Unk_08145B64 *);
static void sub_08148F04(struct Unk_08145B64 *);
static void sub_08148F7C(struct Unk_08145B64 *);
static bool32 sub_08148FF8(struct Unk_08145B64 *);
static bool32 sub_0814908C(struct Unk_08145B64 *);
static bool32 sub_08149154(struct Unk_08145B64 *);
static bool32 sub_08149270(struct Unk_08145B64 *);
static bool32 sub_0814932C(struct Unk_08145B64 *);
static bool32 sub_08149450(struct Unk_08145B64 *);
static void sub_081494E4(struct Unk_08145B64 *);
static void sub_08149504(struct Unk_08145B64 *);
static void sub_08149568(struct Unk_08145B64 *);
static void sub_081495B4(u8, u16, u16);
static void sub_08149628(struct Unk_08145B64 *);
static void sub_0814963C(struct Unk_08145B64 *);
static void nullsub_133(struct Unk_08145B64 *);
static void sub_08149680(struct Unk_08145B64 *);
static void sub_081496C8(struct Unk_08145B64 *);
static void sub_08149710(struct Unk_08145B64 *, u8);
static void sub_08149758(struct Unk_08145B64 *);
static void nullsub_134(struct Unk_08145B64 *);
static bool32 sub_081497B0(struct Unk_08145B64 *);
static bool32 sub_081497B4(struct Unk_08145B64_5EC *, struct Sprite *);
static bool32 sub_08149814(struct Unk_08145B64_5EC *, struct Sprite *);
static void sub_08149864(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149874(struct Unk_08145B64_5EC *);
static void sub_08149880(struct Unk_08145B64_5EC *);
static void sub_081498B4(struct Unk_08145B64_5EC *);
static void sub_08149910(struct Unk_08145B64_5EC *);
static void sub_0814996C(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149980(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149994(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_081499AC(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_081499C0(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_081499D4(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_081499E8(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_081499FC(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149A10(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149A28(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149A3C(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149A50(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149A5C(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149A94(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149AC4(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149AFC(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149B30(struct Unk_08145B64_5EC *);
static void sub_08149B5C(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static void sub_08149B90(struct Unk_08145B64_5EC *);
static void sub_08149BD8(struct Unk_08145B64_5EC *);
static void sub_08149C34(struct Unk_08145B64_5EC *, const struct Unk_08387814 *);
static bool32 sub_08149C68(struct Unk_08145B64 *);
static void sub_08149C80(void);

static const u16 gUnk_083871D8[][4] = {
    [LANGUAGE_JAPANESE] = { 0xC7, 0xC8, 0xDD, 0xDE },
    [LANGUAGE_ENGLISH]  = { 0xC7, 0xC8, 0xCD, 0xCE },
    [LANGUAGE_GERMAN]   = { 0xC7, 0xC8, 0xC9, 0xCA },
    [LANGUAGE_FRENCH]   = { 0xC7, 0xC8, 0xD5, 0xD6 },
    [LANGUAGE_SPANISH]  = { 0xC7, 0xC8, 0xD1, 0xD2 },
    [LANGUAGE_ITALIAN]  = { 0xC7, 0xC8, 0xD9, 0xDA },
};

static const u16 gUnk_08387208[][2] = {
    {  0x0, 0x0 },
    {  0x1, 0x0 },
    {  0x2, 0x0 },
    { 0x47, 0x0 },
    { 0x47, 0x1 },
    { 0x47, 0x2 },
};

static const u16 gUnk_08387220[][2] = {
    { 0x32E, 0x0 },
    { 0x32E, 0x4 },
    { 0x32E, 0x5 },
    { 0x32E, 0x6 },
};

static const u16 gUnk_08387230[][2] = {
    { 0x338, 0x0 },
    { 0x338, 0x1 },
    { 0x338, 0x2 },
    { 0x338, 0x3 },
    { 0x338, 0x4 },
    { 0x338, 0x5 },
};

static const u16 gUnk_08387248[][2] = {
    { 0x324, 0x0 },
    { 0x324, 0x1 },
    { 0x324, 0x2 },
    { 0x324, 0x3 },
    { 0x324, 0x4 },
};

static const u16 gUnk_0838725C[][2] = {
    { 0x2F9, 0x0 },
    { 0x2F9, 0x1 },
    { 0x2F9, 0x2 },
    { 0x2F9, 0x3 },
    { 0x2F9, 0x4 },
    { 0x2F9, 0x5 },
};

static const u16 gUnk_08387274[][2] = {
    { 0x323, 0x0 },
    { 0x323, 0x1 },
    { 0x323, 0x2 },
    { 0x323, 0x3 },
};

static const u16 gUnk_08387284[][2] = {
    { 0x315, 0x0 },
    { 0x315, 0x1 },
    { 0x315, 0x2 },
    { 0x315, 0x3 },
    { 0x315, 0x4 },
    { 0x315, 0x5 },
};

static const u16 gUnk_0838729C[][2] = {
    { 0x2FC, 0x0 },
    { 0x2FC, 0x1 },
    { 0x2FC, 0x2 },
    { 0x2FC, 0x3 },
    { 0x2FC, 0x4 },
    { 0x2FC, 0x5 },
    { 0x2FC, 0x6 },
    { 0x2FC, 0x7 },
    { 0x2FC, 0x8 },
};

static const u16 gUnk_083872C0[][2] = {
    { 0x30A, 0x0 },
    { 0x30A, 0x1 },
    { 0x30A, 0x2 },
    { 0x30A, 0x3 },
    { 0x30A, 0x4 },
    { 0x30A, 0x6 },
    { 0x30A, 0x7 },
    { 0x30A, 0x8 },
    { 0x30A, 0xA },
};

const u8 gUnk_083872E4[] = {
    0, 1, 0, 2, 0xFF, 0,
};

const u8 gUnk_083872EA[] = {
    8, 3, 4, 0xFF, 2
};

const u8 gUnk_083872EF[] = {
    5, 6, 7, 0xFF, 2
};

static const u16 gUnk_083872F4[][2] = {
    { 0x316, 0x0 },
    { 0x316, 0x1 },
    { 0x316, 0x2 },
};

static void (*const gUnk_08387300[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_081471E8,
    sub_08146CE4,
    sub_081474C4,
};

static void (*const gUnk_08387310[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_081478FC,
};

static void (*const gUnk_08387318[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_08147C28,
};

static void (*const gUnk_08387320[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_08148064,
};

static void (*const gUnk_08387328[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_081482C4,
};

static void (*const gUnk_08387330[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_081485B4,
};

static void (*const gUnk_08387338[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_08148804,
};

static void (*const gUnk_08387340[])(struct Unk_08145B64_5EC *) = {
    sub_08146CE4,
    sub_08148AC4,
};

static const struct Unk_08387348 gUnk_08387348[] = {
    {
        .unk0 = 0x0,
        .unk1 = 0x0,
        .unk2 = 0x0,
        .unk3 = 0x0,
        .unk4 = NULL,
        .unk8 = NULL,
        .unkC = NULL,
    },
    {
        .unk0 = 0x1,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08149874,
        .unkC = NULL,
    },
    {
        .unk0 = 0x2,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = sub_0814996C,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x3,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x4,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = sub_08149980,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x5,
        .unk1 = 0xA,
        .unk2 = 0x20,
        .unk3 = 0xA,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x6,
        .unk1 = 0x8,
        .unk2 = 0x28,
        .unk3 = 0x8,
        .unk4 = sub_08149864,
        .unk8 = NULL,
        .unkC = gUnk_08387300,
    },
    {
        .unk0 = 0x7,
        .unk1 = 0x7,
        .unk2 = 0x20,
        .unk3 = 0x7,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x8,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x9,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = sub_08149A94,
        .unk8 = NULL,
        .unkC = gUnk_08387310,
    },
    {
        .unk0 = 0xA,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0xB,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0xC,
        .unk1 = 0x8,
        .unk2 = 0x28,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0xD,
        .unk1 = 0x8,
        .unk2 = 0x28,
        .unk3 = 0xC,
        .unk4 = sub_08149AC4,
        .unk8 = NULL,
        .unkC = gUnk_08387318,
    },
    {
        .unk0 = 0xE,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = sub_08148570,
        .unk8 = NULL,
        .unkC = gUnk_08387330,
    },
    {
        .unk0 = 0xF,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x10,
        .unk1 = 0x9,
        .unk2 = 0x20,
        .unk3 = 0x9,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x11,
        .unk1 = 0xA,
        .unk2 = 0x28,
        .unk3 = 0xA,
        .unk4 = sub_08149864,
        .unk8 = NULL,
        .unkC = gUnk_08387300,
    },
    {
        .unk0 = 0x12,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x13,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x14,
        .unk1 = 0x8,
        .unk2 = 0x28,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x15,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x16,
        .unk1 = 0x10,
        .unk2 = 0x28,
        .unk3 = 0x10,
        .unk4 = sub_08149A28,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x5,
        .unk1 = 0xB,
        .unk2 = 0x20,
        .unk3 = 0xB,
        .unk4 = sub_081499D4,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x18,
        .unk1 = 0x8,
        .unk2 = 0x30,
        .unk3 = 0x8,
        .unk4 = sub_08149C34,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x19,
        .unk1 = 0x9,
        .unk2 = 0x20,
        .unk3 = 0x9,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x1A,
        .unk1 = 0xA,
        .unk2 = 0x20,
        .unk3 = 0xA,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x1B,
        .unk1 = 0x9,
        .unk2 = 0x20,
        .unk3 = 0x9,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x1C,
        .unk1 = 0x7,
        .unk2 = 0x20,
        .unk3 = 0x9,
        .unk4 = sub_08149AFC,
        .unk8 = NULL,
        .unkC = gUnk_08387320,
    },
    {
        .unk0 = 0x1D,
        .unk1 = 0xC,
        .unk2 = 0x20,
        .unk3 = 0xC,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x1E,
        .unk1 = 0x7,
        .unk2 = 0x28,
        .unk3 = 0xA,
        .unk4 = sub_08149A50,
        .unk8 = sub_081472DC,
        .unkC = NULL,
    },
    {
        .unk0 = 0x1F,
        .unk1 = 0xA,
        .unk2 = 0x30,
        .unk3 = 0xA,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x20,
        .unk1 = 0xB,
        .unk2 = 0x20,
        .unk3 = 0xB,
        .unk4 = sub_081499AC,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x21,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x22,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x23,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x24,
        .unk1 = 0xF,
        .unk2 = 0x30,
        .unk3 = 0xF,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x24,
        .unk1 = 0xF,
        .unk2 = 0x40,
        .unk3 = 0xF,
        .unk4 = sub_08149994,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x26,
        .unk1 = 0x0,
        .unk2 = 0x30,
        .unk3 = 0x0,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x27,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x28,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = sub_081487C0,
        .unk8 = NULL,
        .unkC = gUnk_08387338,
    },
    {
        .unk0 = 0x29,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x2A,
        .unk1 = 0x7,
        .unk2 = 0x20,
        .unk3 = 0x7,
        .unk4 = sub_081499C0,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x2B,
        .unk1 = 0x8,
        .unk2 = 0x48,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x2C,
        .unk1 = 0x5,
        .unk2 = 0x18,
        .unk3 = 0x5,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x2D,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x2E,
        .unk1 = 0xF,
        .unk2 = 0x38,
        .unk3 = 0xF,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x2F,
        .unk1 = 0xB,
        .unk2 = 0x30,
        .unk3 = 0xB,
        .unk4 = sub_08149B5C,
        .unk8 = NULL,
        .unkC = gUnk_08387328,
    },
    {
        .unk0 = 0x30,
        .unk1 = 0xE,
        .unk2 = 0x28,
        .unk3 = 0xE,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x31,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x32,
        .unk1 = 0x8,
        .unk2 = 0x20,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x33,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x34,
        .unk1 = 0xB,
        .unk2 = 0x20,
        .unk3 = 0xB,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x35,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x36,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x37,
        .unk1 = 0x7,
        .unk2 = 0x28,
        .unk3 = 0x7,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x38,
        .unk1 = 0xA,
        .unk2 = 0x20,
        .unk3 = 0xA,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x39,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x3A,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x3B,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x3C,
        .unk1 = 0x8,
        .unk2 = 0x18,
        .unk3 = 0x8,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x3D,
        .unk1 = 0x14,
        .unk2 = 0x38,
        .unk3 = 0x14,
        .unk4 = sub_08149A3C,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x3E,
        .unk1 = 0xB,
        .unk2 = 0x40,
        .unk3 = 0xB,
        .unk4 = sub_081499FC,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x3F,
        .unk1 = 0xF,
        .unk2 = 0x38,
        .unk3 = 0xF,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x40,
        .unk1 = 0x14,
        .unk2 = 0x68,
        .unk3 = 0x14,
        .unk4 = sub_081499E8,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x41,
        .unk1 = 0x14,
        .unk2 = 0x48,
        .unk3 = 0x14,
        .unk4 = sub_08149A10,
        .unk8 = sub_08146D80,
        .unkC = NULL,
    },
    {
        .unk0 = 0x42,
        .unk1 = 0x10,
        .unk2 = 0x60,
        .unk3 = 0x10,
        .unk4 = sub_08149A5C,
        .unk8 = sub_081474C4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x43,
        .unk1 = 0x10,
        .unk2 = 0x48,
        .unk3 = 0x10,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
    {
        .unk0 = 0x44,
        .unk1 = 0x14,
        .unk2 = 0x50,
        .unk3 = 0x14,
        .unk4 = sub_08148A80,
        .unk8 = NULL,
        .unkC = gUnk_08387340,
    },
    {
        .unk0 = 0x45,
        .unk1 = 0x10,
        .unk2 = 0x40,
        .unk3 = 0x10,
        .unk4 = NULL,
        .unk8 = sub_08146CE4,
        .unkC = NULL,
    },
};

static const s8 gUnk_083877A8[][8] = {
    {  0x0,  0x0, -0x1,  0x0, 0x0,  0x1, 0x0, 0x0 },
    {  0x0, -0x1, -0x1,  0x1, 0x1,  0x0, 0x0, 0x0 },
    { -0x2, -0x1,  0x0,  0x1, 0x2, -0x1, 0x0, 0x1 },
    { -0x2, -0x1,  0x0,  0x1, 0x2, -0x2, 0x0, 0x2 },
    { -0x4, -0x3, -0x2, -0x1, 0x1,  0x2, 0x3, 0x4 },
};

static const u8 gUnk_083877D0[] = { 5, 5 };

static const u16 gUnk_083877D2[] = {
    BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(27) | BGCNT_TXT256x256,
    BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(25) | BGCNT_TXT256x256,
};

static const u16 gUnk_083877D6[] = {
    BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(26) | BGCNT_TXT512x256,
    BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT512x256,
};

static const u16 gUnk_083877DA[] = {
    DISPCNT_BG2_ON, DISPCNT_BG3_ON
};

static const u16 gUnk_083877DE = 0;

static const u16 gUnk_083877E0[] = { 69, 158, 330, 370, 410, 555, 6 };

const u16 gUnk_083877EE[] = {
    0xE1, 0x352, 0x244, 0x5A, 0x352, 0xC8, 0x78, 0x3E8, 0xC8,  0x0, 0x1E, 0x64, 0x118, 0x14A, 0x15E,  0xA, 0xB4, 0x3C, 0x12,
};

static const struct Unk_08387814 gUnk_08387814[] = {
    {  0x19,  0x2, 0x0, 0x0,  0x0,  0x2, 0x10, 0x3C0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x26,  0x3, 0x0, 0x0,  0x0,  0x1, 0x12, 0x3F0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x32,  0x4, 0x0, 0x0,  0x0,  0x0,  0xE, 0x390,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x3E,  0x1, 0x0, 0x0,  0x0,  0xF, 0x10, 0x3C0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x44,  0x5, 0x0, 0x0,  0x0,  0x0, 0x10, 0x340,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x47,  0x6, 0x0, 0x0, 0x3C,  0x0, 0x10, 0x370,   0x0, 0x1, 0x1E, 0x3C,  0x0, 0x0,  0x0, 0x0 },
    {  0x47,  0x6, 0x1, 0x0, 0x28,  0x0, 0x10, 0x3C8,   0x0, 0x1, 0x32, 0x50,  0x0, 0x0,  0x0, 0x0 },
    {  0x47,  0x6, 0x2, 0x0, 0x14,  0x0, 0x10, 0x428,   0x0, 0x1, 0x14, 0x64,  0x0, 0x0,  0x0, 0x0 },
    {  0x4B,  0x9, 0x0, 0x0,  0x0,  0x0, 0x32, 0x338,   0x0, 0x1, 0x28,  0x0,  0x0, 0x1,  0x1, 0x0 },
    {  0x4E, 0x2F, 0x0, 0x0,  0x0, 0x10, 0x10, 0x200,   0x0, 0x1, 0x32,  0x0,  0xB, 0x1, 0x16, 0x0 },
    {  0x54, 0x18, 0x0, 0x0, 0x1E,  0x0, 0x10, 0x640,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x57, 0x18, 0x7, 0x0, 0x14,  0x0, 0x10, 0x550,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x5A,  0x9, 0x0, 0x0,  0x0,  0x0, 0x32, 0x350,   0x0, 0x1, 0x32,  0x0,  0x0, 0x3,  0x1, 0x0 },
    {  0x5A, 0x19, 0x0, 0x0,  0x0, 0xF6, 0x10, 0x3A0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x60, 0x17, 0x0, 0x0,  0x0,  0x0, 0x10, 0x380,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x67, 0x32, 0x0, 0x0, 0x32,  0x0, 0x10, 0x3E8,  -0xA, 0xA,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x6A, 0x2D, 0x0, 0x0,  0x0,  0x0, 0x10, 0x3D1,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x70,  0xF, 0x0, 0x0, 0x19,  0x0, 0x10, 0x5F0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x73, 0x1C, 0x0, 0x0,  0x0,  0x0, 0x10, 0x3C8,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x73, 0x1C, 0x0, 0x0,  0x0,  0x0, 0x10, 0x2E4,   0x0, 0x1, 0x1E,  0x0, 0x32, 0x2, 0x14, 0x0 },
    {  0x79, 0x32, 0x0, 0x0, 0x1E,  0x0, 0x10, 0x3E8,  -0xA, 0xA,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x7D, 0x2A, 0x0, 0x0,  0x0,  0x0, 0x10, 0x3E8,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x80, 0x2B, 0x0, 0x0,  0x0,  0x0, 0x10, 0x360,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x80,  0xF, 0x0, 0x0, 0x37,  0x0, 0x10, 0x640,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x83, 0x37, 0x0, 0x0,  0x0,  0x2, 0x12, 0x560,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x86, 0x1B, 0x0, 0x0,  0x0,  0x0, 0x10, 0x3A0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x89, 0x11, 0x0, 0x0, 0x50,  0x0, 0x10, 0x550,   0x0, 0x1, 0x50, 0x3C,  0x0, 0x0,  0x0, 0x0 },
    {  0x8E, 0x20, 0x0, 0x2, 0x30,  0x0, 0x10, 0x3B8, -0x32, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x92, 0x1B, 0x0, 0x0,  0x0,  0x0, 0x10, 0x390,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0x96, 0x11, 0x0, 0x0, 0x3C,  0x0, 0x10, 0x4D0,   0x0, 0x1, 0x1E, 0x3C,  0x0, 0x0,  0x0, 0x0 },
    {  0x99, 0x16, 0x0, 0x0,  0x0,  0x0, 0x10, 0x3C0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xA2, 0x24, 0x0, 0x0,  0x0,  0x0, 0x10, 0x380,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xA8, 0x25, 0x0, 0x0,  0x0,  0xF, 0x10, 0x666,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xA8, 0x30, 0x0, 0x0, 0x28,  0x0, 0x10, 0x390,  -0xA, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xB2, 0x2C, 0x0, 0x0,  0x0,  0x0, 0x10, 0x350,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xB5, 0x3D, 0x0, 0x0,  0x0,  0x0, 0x10, 0x348,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xB8,  0xA, 0x0, 0x0, 0x3C,  0x0, 0x10, 0x3E0, -0x28, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xBE, 0x3E, 0x0, 0x0,  0x0,  0x0, 0x10, 0x4E0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xC1, 0x2E, 0x0, 0x0,  0x0,  0x0, 0x10, 0x340,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xCB, 0x30, 0x0, 0x0, 0x32,  0x0, 0x10, 0x3B0, -0x32, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xCB,  0xD, 0x0, 0x0,  0x0,  0x0, 0x10, 0x360,   0x0, 0x1, 0x14,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xCE,  0xD, 0x0, 0x0,  0x0,  0x0, 0x10, 0x300,   0x0, 0x1, 0x23,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xD4, 0x38, 0x0, 0x0,  0x0,  0x0, 0x10, 0x2F8,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xD4, 0x10, 0x0, 0x0,  0x0,  0x3, 0x10, 0x598,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xDA, 0x2C, 0x0, 0x0,  0x0,  0x3, 0x10, 0x300,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xDD, 0x42, 0x0, 0x0,  0x0,  0x0, 0x10, 0x3B0,   0x0, 0x0, 0x1E,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xDD, 0x40, 0x0, 0x0, 0x46,  0x0, 0x10, 0x3A0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xE1, 0x44, 0x0, 0x0, 0x28,  0x0, 0x10, 0x3B0,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xE4, 0x43, 0x0, 0x0,  0xC,  0x0, 0x10, 0x3A8,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xEC,  0xC, 0x0, 0x0,  0x0,  0x3, 0x10, 0x390,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xF0, 0x14, 0x0, 0x0, 0x3C,  0x0, 0x10, 0x390, -0x1E, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xF6, 0x41, 0x0, 0x0,  0x0,  0x0, 0x10, 0x388,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    {  0xFD, 0x12, 0x0, 0x0, 0x32,  0x0, 0x10, 0x520, -0x1E, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    { 0x103, 0x21, 0x0, 0x0, 0x4B,  0x0, 0x10, 0x500, -0x32, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    { 0x106, 0x22, 0x0, 0x0,  0x0,  0x0, 0x10, 0x540,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
    { 0x113, 0x3F, 0x0, 0x0,  0x0,  0x0, 0x14, 0x538,   0x0, 0x0,  0x0,  0x0,  0x0, 0x0,  0x0, 0x0 },
};

static const u8 gUnk_08387D54[] = { 0x38 };

extern const struct Object11_8 *const *const gUnk_08D62518[];
extern const u16 gUnk_08D62530[][3];
extern const u8 *const gUnk_08D626D4[];
extern const u16 gUnk_08D626E0[][2];

void sub_08145B64(u16 a1) {
    u8 i;
    struct Task *t;
    struct Unk_08145B64 *var, *tmp;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(30) | BGCNT_TXT512x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(26) | BGCNT_TXT512x256;
    gBgCntRegs[3] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT512x256;
    for (i = 0; i < 4; ++i)
        gBgScrollRegs[i][0] = gBgScrollRegs[i][1] = 0;
    gBgScrollRegs[2][0] = gBgScrollRegs[3][0] = 0x10;
    t = TaskCreate(sub_08145D94, sizeof(struct Unk_08145B64), 0x1000, TASK_USE_IWRAM, sub_08145D1C);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08145B64));
    var->unk13F8 = sub_08148CD8;
    var->unk1408 = sub_08149758;
    var->unk1410 = sub_0814963C;
    var->unk140C = a1;
    var->unkC = 1;
    var->unk8 = 1;
    var->unk4 = 1;
    for (i = 0; i < 2; ++i)
        var->unk3C[i] = sub_08149710;
    for (i = 0; i < 0x20; ++i)
        var->unk548[i] = &var->unk48[i];
    for (i = 0; i < 0x40; ++i)
        var->unk12EC[i] = &var->unk5EC[i];
    var->unk13EC = var->unk13F0 = NULL;
    for (i = 0; i < 0x10; ++i)
        var->unk12[i] = 0xFF;
}

static void sub_08145D1C(struct Task *t) {
    struct Unk_08145B64 *tmp = TaskGetStructPtr(t), *var = tmp;
    u8 i;

    for (i = 0; i < 0x20; ++i) {
        struct Sprite *sprite = &var->unk48[i];

        if (sprite->tilesVram) {
            VramFree(sprite->tilesVram);
            sprite->tilesVram = 0;
        }
    }
    gBgScrollRegs[0][0] = 0x100;
    gBgScrollRegs[0][1] = 0;
    for (i = 1; i < 4; ++i)
        gBgScrollRegs[i][0] = gBgScrollRegs[i][1] = 0;
}

static void sub_08145D94(void) {
    struct Unk_08145B64 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    u8 i;

    ++var->unk0;
    var->unkC = var->unk4;
    var->unk4 = var->unk8;
    sub_08149680(var);
    sub_08149628(var);
    for (i = 0; i < 2; ++i)
        if (var->unk3C[i])
            var->unk3C[i](var, i);
    if (var->unk1408)
        var->unk1408(var);
    sub_081497B0(var);
    if (gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON)
        && !(var->unk4 & 0x10038)) {
        var->unk4 |= 0x10000;
        var->unk8 |= 0x10000;
        var->unk1408 = NULL;
        var->unk1400 = sub_081494E4;
    }
    if (var->unk1400)
        var->unk1400(var);
    if (!var->unk13F8(var))
        sub_081496C8(var);
}

static void sub_08145E84(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(SE_08D5F9D0);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (unk0 >= gUnk_083877EE[0xA]) {
        a1->unk1418 = (gUnk_083877EE[0xB] - gUnk_083877EE[0xA]) / 3;
        ++a1->unk1416;
        a1->unk1417 = 0;
        a1->unk1410 = sub_08145F38;
    }
}

static void sub_08145F38(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(SE_08D5F9D0);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (++a1->unk1417 >= a1->unk1418) {
        a1->unk1417 = 0;
        if (++a1->unk1416 > 3) {
            a1->unk1410 = sub_08146018;
            return;
        }
    }
    if (unk0 >= gUnk_083877EE[0xB]) {
        ++a1->unk1416;
        a1->unk1410 = sub_08146018;
    }
}

static void sub_08146018(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(SE_08D5F9B0);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (unk0 >= gUnk_083877EE[0xC]) {
        a1->unk1418 = (gUnk_083877EE[0xD] - gUnk_083877EE[0xC]) / 3;
        --a1->unk1416;
        a1->unk1417 = 0;
        a1->unk1410 = sub_081460CC;
    }
}

static void sub_081460CC(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(SE_08D5F9D0);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (++a1->unk1417 >= a1->unk1418) {
        a1->unk1417 = 0;
        if (--a1->unk1416 == 0) {
            a1->unk1410 = sub_081461AC;
            return;
        }
    }
    if (unk0 >= gUnk_083877EE[0xD]) {
        --a1->unk1416;
        a1->unk1410 = sub_081461AC;
    }
}

static void sub_081461AC(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(SE_08D5F9D0);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (unk0 >= gUnk_083877EE[0xE])
        a1->unk1410 = nullsub_133;
}

static void sub_0814623C(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    ++a1->unk1417;
    if (a1->unk1417 == a1->unk1418 - 2) {
        m4aSongNumStart(SE_08D5F9D0);
        a1->unk1415 = (Rand32() & 3) - 1;
    } else if (a1->unk1417 == a1->unk1418) {
        a1->unk1417 = 0;
        a1->unk1418 = (Rand32() & 0x1F) + 3;
        a1->unk1415 = 0;
        a1->unk1414 = 0;
    }
    if (unk0 >= gUnk_083877EE[0xE]) {
        a1->unk1415 = 0;
        a1->unk1414 = 0;
        a1->unk1410 = nullsub_133;
    }
}

static void sub_08146308(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;
    u16 cnt[2];

    memcpy(cnt, gUnk_083877D2, sizeof(gUnk_083877D2));
    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x100) {
        gBgCntRegs[bg] = cnt[a2];
        gBgScrollRegs[bg][0] -= 0x100;
        a1->unk32[a2] -= 0x4000;
        a1->unk3C[a2] = sub_08146398;
    }
}

static void sub_08146398(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;

    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x100) {
        gBgScrollRegs[bg][0] -= 0x100;
        a1->unk32[a2] -= 0x4000;
    }
    if (a1->unk0 >= gUnk_083877EE[3 * a2 + 5])
        a1->unk3C[a2] = sub_08146414;
}

static void sub_08146414(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;
    u16 cnt[2];
    u16 r8 = gBgScrollRegs[bg][0];

    memcpy(cnt, gUnk_083877D6, sizeof(gUnk_083877D6));
    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x100) {
        gBgScrollRegs[bg][0] -= 0x100;
        a1->unk32[a2] -= 0x4000;
    }
    if (r8 < 0x10 && gBgScrollRegs[bg][0] >= 0x10) {
        gBgCntRegs[bg] = cnt[a2];
        gBgScrollRegs[bg][0] += 0x100;
        a1->unk32[a2] += 0x4000;
        a1->unk3C[a2] = sub_081464D4;
    }
}

static void sub_081464D4(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;
    u16 cnt[2];

    memcpy(cnt, gUnk_083877DA, sizeof(gUnk_083877DA));
    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x200) {
        a1->unk32[a2] = 0;
        gBgScrollRegs[bg][0] = 0;
        gDispCnt &= ~cnt[a2];
        a1->unk3C[a2] = NULL;
    }
}

static void sub_0814654C(struct Unk_08145B64 *a1) {
    ++a1->unk140E;
    gBldRegs.bldY = 0x10 * a1->unk140E / gUnk_083877EE[0x11];
    if (a1->unk140E >= gUnk_083877EE[0x11]) {
        gBgCntRegs[1] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_TXT256x256;
        gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_EFFECT_BLEND;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0x10);
        gBldRegs.bldY = 0;
        a1->unk8 &= ~0x20;
        a1->unk1408 = nullsub_134;
    }
}

static bool32 sub_081465C4(struct Unk_08145B64 *a1) {
    if (a1->unk10 >= gUnk_08387D54[0])
        return TRUE;
    else {
        if (!(a1->unk4 & 1)) {
            if (a1->unkC & 1 && a1->unk4 & 2) {
                u16 i;

                for (i = 0; i <= a1->unk0; ++i) {
                    for (; i == gUnk_08387814[a1->unk10].unk0; ++a1->unk10)
                        sub_0814669C(a1, &gUnk_08387814[a1->unk10]);
                }
            } else {
                for (; a1->unk0 == gUnk_08387814[a1->unk10].unk0; ++a1->unk10)
                        sub_0814669C(a1, &gUnk_08387814[a1->unk10]);
            }
        }
        return FALSE;
    }
}

static void sub_0814669C(struct Unk_08145B64 *a1, const struct Unk_08387814 *a2) {
    struct Unk_08145B64_5EC *v4;

    if (gUnk_08D62530[a2->unk4][2]) {
        ++a1->unk13F6;
        v4 = a1->unk12EC[a1->unk13F4];
        CpuFill16(0, v4, sizeof(struct Unk_08145B64_5EC));
        v4->unk4 = (s32)(({(s32)v4 - offsetof(struct Unk_08145B64, unk5EC);}) - (s32)a1) * -0x3B13B13B >> 2; // divide by sizeof(struct Unk_08145B64)
        a1->unk13F4 = (a1->unk13F4 + 1) & 0x3F;
        if (a1->unk13F6 == 1) {
            a1->unk13EC = a1->unk13F0 = v4;
            v4->unk14 = NULL;
        } else {
            a1->unk13F0->unk18 = v4;
            v4->unk14 = a1->unk13F0;
            a1->unk13F0 = v4;
        }
        v4->unk18 = NULL;
        v4->unkA = ((gUnk_08387348[a2->unk4].unk2 >> 1) + 0xF0) * 0x40;
        v4->unkC = (-a2->unk7 + 0x78) << 6;
        v4->unkE = -(a2->unkA >> 2);
        v4->unk10 = -(({a2->unkC + 0;}) >> 2);
        v4->unk0 = a2->unk4;
        v4->unk1 = a2->unk5;
        v4->unk2 = a2->unk6;
        v4->unk6 = a2->unk9;
        v4->unk7 = a1->unk10;
        v4->unk20 = a1;
        v4->unk1C = gUnk_08387348[a2->unk4].unk8 ? gUnk_08387348[a2->unk4].unk8 : gUnk_08387348[a2->unk4].unkC[a2->unkE];
        v4->unk1 = a2->unk5 - 1;
        v4->unk5 = 0x10 - a2->unk8;
        if (v4->unk1C != sub_08146CE4) {
            v4->unk2 = 0;
            v4->unk1 = 0xFF;
        }
        if (gUnk_08387348[v4->unk0].unk4)
            gUnk_08387348[v4->unk0].unk4(v4, a2);
        if (v4->unk0 > 0 && v4->unk0 < 5)
            sub_081469D4(a1, v4);
        else
            sub_0814682C(a1, v4);
    }
}

static inline s8 sub_0814682C_helper(struct Unk_08145B64 *a1, u8 val) {
    u8 i;

    for (i = 0; i < 0x10; ++i) {
        if (a1->unk12[i] == val)
            return i;
    }
    ++a1->unk11;
    for (i = 0; i < 0x10; ++i) {
        if (a1->unk12[i] == 0xFF)
            return i;
    }
    return -1;
}

static void sub_0814682C(struct Unk_08145B64 *a1, struct Unk_08145B64_5EC *a2) {
    u32 vram = 0;
    struct Unk_08145B64_5EC *current;
    struct Sprite *sprite;
    s8 palId;
    u8 variant;

    for (current = a1->unk13EC; current; current = current->unk18) {
        if (current != a2
            && (current->unk0 == a2->unk0 && current->unk1 == a2->unk1)
            && a2->unk2
            && a2->unk2 == current->unk2) {
            a2->unk3 = current->unk3;
            return;
        }
    }
    if (vram == 0) // always TRUE
        vram = VramMalloc(gUnk_08D62530[a2->unk0][2]);
    ++a1->unk5CA;
    sprite = a1->unk548[a1->unk5C8];
    a2->unk3 = (s32)(({(s32)sprite - offsetof(struct Unk_08145B64, unk48);}) - (s32)a1) * -0x33333333 >> 3; // divide by sizeof(struct Sprite)
    a1->unk5C8 = (a1->unk5C8 + 1) & 0x1F;
    palId = sub_0814682C_helper(a1, gUnk_08387348[a2->unk0].unk0);
    a1->unk12[palId] = a2->unk0;
    if (a2->unk1 < 0)
        variant = gUnk_08D62530[a2->unk0][1];
    else {
        variant = a2->unk1;
        if (variant == gUnk_08D62530[a2->unk0][1])
            a2->unk1 = -1;
    }
    SpriteInitNoPointer2(sprite, vram, a2->unk5 * 0x40, gUnk_08D62530[a2->unk0][0], variant, 0, 0xFF, a2->unk6, palId, a2->unkA >> 6, a2->unkC >> 6, 0);
}

static void sub_081469D4(struct Unk_08145B64 *a1, struct Unk_08145B64_5EC *a2) {
    struct Sprite *sprite;
    s8 palId;
    u32 unk8;
    struct Sprite local;

    ++a1->unk5CA;
    sprite = a1->unk548[a1->unk5C8];
    a2->unk3 = (s32)(({(s32)sprite - offsetof(struct Unk_08145B64, unk48);}) - (s32)a1) * -0x33333333 >> 3; // divide by sizeof(struct Sprite)
    a1->unk5C8 = (a1->unk5C8 + 1) & 0x1F;
    palId = sub_0814682C_helper(a1, gUnk_08387348[a2->unk0].unk0);
    a1->unk12[palId] = a2->unk0;
    unk8 = 0x400;
    if (a2->unk0 != 1) {
        SpriteInitNoPointer2(&local, 0, 0x3FC0, gUnk_08D626E0[a2->unk0 - 1][0], gUnk_08D626E0[a2->unk0 - 1][1], 0, 0xFF, 0x10,
            palId, -0x40, -0x40, 0);
        unk8 |= 0x40000;
    }
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08D62530[a2->unk0][2]), a2->unk5 * 0x40, gUnk_08D62530[a2->unk0][0], gUnk_08D62530[a2->unk0][1],
        0, 0xFF, a2->unk6, palId, a2->unkA >> 6, a2->unkC >> 6, unk8);
}

static void sub_08146B68(struct Unk_08145B64_5EC *a1) {
    struct Unk_08145B64 *v2 = a1->unk20;

    a1->unk0 = 0;
    if (v2->unk13EC == v2->unk13F0) {
        v2->unk13EC = v2->unk13F0 = NULL;
    } else if (a1 == v2->unk13EC) {
        v2->unk13EC = a1->unk18;
        v2->unk13EC->unk14 = a1->unk14;
    } else if (a1 == v2->unk13F0) {
        v2->unk13F0 = a1->unk14;
        v2->unk13F0->unk18 = a1->unk18;
    } else {
        a1->unk14->unk18 = a1->unk18;
        a1->unk18->unk14 = a1->unk14;
    }
    v2->unk12EC[v2->unk13F5] = a1;
    v2->unk13F5 = (v2->unk13F5 + 1) & 0x3F;
    --v2->unk13F6;
}

static struct Sprite *sub_08146BEC(struct Unk_08145B64_5EC *a1) {
    struct Unk_08145B64 *v1 = a1->unk20;
    struct Sprite *sprite = &v1->unk48[a1->unk3];
    struct Unk_08145B64_5EC *current;

    for (current = v1->unk13EC; current; current = current->unk18) {
        if (current != a1 && current->unk3 == a1->unk3)
            return NULL;
    }
    v1->unk548[v1->unk5C9] = sprite;
    v1->unk5C9 = (v1->unk5C9 + 1) & 0x1F;
    --v1->unk5CA;
    return sprite;
}

static void sub_08146C60(struct Unk_08145B64 *a1) {
    struct Unk_08145B64_5EC *current;
    s8 unk1414 = a1->unk1414, unk1415 = a1->unk1415;

    for (current = a1->unk13EC; current; current = current->unk18) {
        if (current->unk3 >= 0) {
            struct Sprite *sprite = &a1->unk48[current->unk3];

            sprite->x = (current->unkA >> 6) - unk1414;
            sprite->y = (current->unkC >> 6) - gUnk_08387348[current->unk0].unk1 - unk1415;
            sub_0815604C(sprite);
        }
    }
}

static void sub_08146CE4(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    v5 = a1->unk20;
    unk3 = a1->unk3;
    sprite = &v5->unk48[unk3];
    if (v5->unk5CC[unk3] != 1) {
        if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
            sprite->unk1B = 0xFF;
        v5->unk5CC[unk3] = 1;
    }
}

static void sub_08146D80(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;
    s16 *ptr = a1->unk24.pat1;

    if (++ptr[2] >= ptr[1]) {
        ptr[2] = 0;
        m4aSongNumStart(a1->unk24.pat1[0]);
    }
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    v5 = a1->unk20;
    unk3 = a1->unk3;
    sprite = &v5->unk48[unk3];
    if (v5->unk5CC[unk3] != 1) {
        if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
            sprite->unk1B = 0xFF;
        v5->unk5CC[unk3] = 1;
    }
}

static void sub_08146E3C(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *ptr;
    struct Unk_08145B64 *unk20;

    ptr = &a1->unk24;
    a1->unkA += a1->unkE;
    unk20 = a1->unk20;
    if (a1->unk20->unk0 >= gUnk_083877E0[ptr->pat2.unk1]) {
        struct Sprite *sprite;

        ++ptr->pat2.unk1;
        ptr->pat2.unkA = 0;
        a1->unk1C = sub_08149880;
        ptr->pat2.unk2 = a1->unkE;
        a1->unkE = a1->unkE >> 1;
        sprite = &a1->unk20->unk48[a1->unk3];
        sprite->animId = gUnk_08387208[3][0];
        sprite->variant = gUnk_08387208[3][1];
        sub_08155128(sprite);
    } else {
        struct Unk_08145B64 *unk20 = a1->unk20;
        struct Sprite *sprite;
        u8 v4 = a1->unk3;

        sprite = &unk20->unk48[v4];
        if (unk20->unk5CC[v4] != 1) {
            if (sprite->tilesVram && !sub_08155128(&unk20->unk48[v4]))
                sprite->unk1B = 0xFF;
            unk20->unk5CC[v4] = 1;
        }
    }
}

static inline bool32 sub_08146EE8_helper(struct Unk_08145B64_5EC *a1) {
    struct Unk_08145B64_5EC *current;
    struct Unk_08145B64 *unk20 = a1->unk20;

    for (current = unk20->unk13EC; current; current = current->unk18) {
        if (current != a1 && unk20->unk48[current->unk3].tilesVram == unk20->unk48[a1->unk3].tilesVram)
            return TRUE;
    }
    return FALSE;
}

static inline bool32 sub_08146EE8_helper_2(struct Unk_08145B64_5EC *a1, struct Unk_08145B64 *unk20, struct Sprite *sprite) {
    u8 i;

    for (i = 0; i < 0x20; ++i) {
        if (i != a1->unk3) {
            struct Sprite *sprite2 = &unk20->unk48[i];

            if (sprite2->tilesVram && sprite2->palId == sprite->palId)
                return TRUE;
        }
    }
    return FALSE;
}

static void sub_08146EE8(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *ptr = &a1->unk24;
    struct Sprite *sprite;
    struct Unk_08145B64 *unk20;

    if (a1->unk20->unk0 >= gUnk_083877E0[ptr->pat2.unk1]) {
        ++ptr->pat2.unk1;
        sprite = sub_08146BEC(a1);
        if (!sub_08146EE8_helper(a1) && sprite->tilesVram) {
            VramFree(sprite->tilesVram);
            sprite->tilesVram = 0;
        }
        unk20 = a1->unk20;
        if (!sub_08146EE8_helper_2(a1, unk20, sprite)) {
            unk20->unk12[sprite->palId] = 0xFF;
            --unk20->unk11;
        }
        a1->unk3 = 0xFF;
        a1->unk1C = sub_08146FB0;
    }
}

static void sub_08146FB0(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *ptr = &a1->unk24;
    struct Sprite *sprite;

    if (a1->unk20->unk0 >= gUnk_083877E0[ptr->pat2.unk1]) {
        ++ptr->pat2.unk1;
        sub_081469D4(a1->unk20, a1);
        sprite = &a1->unk20->unk48[a1->unk3];
        sprite->animId = gUnk_08387208[4][0];
        sprite->variant = gUnk_08387208[4][1];
        sub_08155128(sprite);
        ptr->pat2.unk7 = a1->unk3;
        ptr->pat2.unk6 = 1;
        a1->unk1C = sub_08147014;
    }
}

static void sub_08147014(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *ptr = &a1->unk24;

    if (++ptr->pat2.unk4 > 1) {
        ptr->pat2.unk4 = 0;
        ptr->pat2.unk6 = !ptr->pat2.unk6;
        if (ptr->pat2.unk6)
            a1->unk3 = ptr->pat2.unk7;
        else
            a1->unk3 = 0xFF;
    }
    if (a1->unk20->unk0 >= gUnk_083877E0[ptr->pat2.unk1]) {
        ++ptr->pat2.unk1;
        a1->unk3 = ptr->pat2.unk7;
        ptr->pat2.unk6 = 1;
        a1->unk1C = sub_081498B4;
    }
}

static void sub_08147078(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *ptr = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (++ptr->pat2.unkA > 0x18) {
        ptr->pat2.unkA = 0;
        if (++ptr->pat2.unk9 > 3)
            a1->unk1C = sub_08149910;
        m4aSongNumStart(SE_08D5F6A8);
    }
    if (!sub_08155128(sprite)) {
        sprite->animId = gUnk_08387208[0][0];
        sprite->variant = gUnk_08387208[0][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081470EC;
    }
}

static void sub_081470EC(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *ptr;
    struct Sprite *sprite;

    ptr = &a1->unk24;
    if (a1->unk20->unk0 >= gUnk_083877E0[ptr->pat2.unk1]) {
        ++ptr->pat2.unk1;
        ptr->pat2.unkA = 0;
        m4aSongNumStart(SE_08D5F704);
        sprite = &a1->unk20->unk48[a1->unk3];
        sprite->animId = gUnk_08387208[2][0];
        sprite->variant = gUnk_08387208[2][1];
        sub_08155128(sprite);
        a1->unkE = 2 * ptr->pat2.unk2;
        a1->unk1C = sub_08147154;
    }
}

static void sub_08147154(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    v5 = a1->unk20;
    unk3 = a1->unk3;
    sprite = &v5->unk48[unk3];
    if (v5->unk5CC[unk3] != 1) {
        if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
            sprite->unk1B = 0xFF;
        v5->unk5CC[unk3] = 1;
    }
}

static void sub_081471E8(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *ptr = &a1->unk24;
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unkA += a1->unkE;
    a1->unkC += -(ptr->pat2.unk1 * 100 * gSineTable[((ptr->pat2.unk4 * 0x400) / ptr->pat2.unk2 & 0x3FF) + 0x100] >> 8)
        / (0x10 * ptr->pat2.unk2);
    ptr->pat2.unk4 = (ptr->pat2.unk4 + 1) % ptr->pat2.unk2;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    v5 = a1->unk20;
    unk3 = a1->unk3;
    sprite = &v5->unk48[unk3];
    if (v5->unk5CC[unk3] != 1) {
        if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
            sprite->unk1B = 0xFF;
        v5->unk5CC[unk3] = 1;
    }
}

static void sub_081472DC(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unkE += 3;
    if (a1->unkE >= 0) {
        struct Sprite *sprite;

        a1->unkE = a1->unk24.pat1[0];
        if (Rand32() % 3)
            a1->unk10 = -0x32;
        else
            a1->unk10 = -0x64;
        sprite = &a1->unk20->unk48[a1->unk3];
        sprite->animId = gUnk_08387220[1][0];
        sprite->variant = gUnk_08387220[1][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081473E0;
    } else {
        a1->unkA += a1->unkE;
        if (a1->unk0
            && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
            struct Sprite *sprite;

            sub_08146B68(a1);
            sprite = sub_08146BEC(a1);
            if (sprite && sub_081497B4(a1, sprite))
                sub_08149814(a1, sprite);
        }
        v5 = a1->unk20;
        unk3 = a1->unk3;
        sprite = &v5->unk48[unk3];
        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_081473E0(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite;

        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite = &a1->unk20->unk48[a1->unk3];
        sprite->animId = gUnk_08387220[0][0];
        sprite->variant = gUnk_08387220[0][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081472DC;
    } else {
        v5 = a1->unk20;
        unk3 = a1->unk3;
        sprite = &v5->unk48[unk3];
        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_081474C4(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (a1->unkE < 0) {
        a1->unkE += 3;
        if (a1->unkE > 0)
            a1->unkE = 0;
    }
    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (!sub_08155128(sprite)) {
        a1->unkE = unk24->pat3.unk0;
        a1->unk10 = unk24->pat3.unk2;
        sprite->animId = gUnk_08387230[2][0];
        sprite->variant = gUnk_08387230[2][1];
        sub_08155128(sprite);
        m4aSongNumStart(SE_08D5F758);
        unk24->pat3.unk4 = 0;
        a1->unk1C = sub_08147580;
    }
}

static void sub_08147580(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite;

        sprite = &a1->unk20->unk48[a1->unk3];
        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_08387230[5][0];
        sprite->variant = gUnk_08387230[5][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147858;
    } else if (++unk24->pat3.unk4 >= unk24->pat3.unk5) {
        struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

        sprite->animId = gUnk_08387230[3][0];
        sprite->variant = gUnk_08387230[3][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081476A8;
    } else {
        struct Unk_08145B64 *v5 = a1->unk20;
        u8 unk3 = a1->unk3;
        struct Sprite *sprite = &v5->unk48[unk3];

        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_081476A8(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_08387230[5][0];
        sprite->variant = gUnk_08387230[5][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147858;
    } else if (!sub_08155128(sprite)) {
        sprite->animId = gUnk_08387230[4][0];
        sprite->variant = gUnk_08387230[4][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147774;
    }
}

static void sub_08147774(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite;

        sprite = &a1->unk20->unk48[a1->unk3];
        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_08387230[5][0];
        sprite->variant = gUnk_08387230[5][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147858;
    } else {
        v5 = a1->unk20;
        unk3 = a1->unk3;
        sprite = &v5->unk48[unk3];
        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_08147858(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (a1->unkE < 0) {
        a1->unkE += 3;
        if (a1->unkE > 0)
            a1->unkE = 0;
    }
    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (!sub_08155128(sprite)) {
        sprite->animId = gUnk_08387230[1][0];
        sprite->variant = gUnk_08387230[1][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081474C4;
    }
}

static void sub_081478FC(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (++unk24->pat3.unk6 >= unk24->pat3.unk8
        && (unk24->pat3.unk6 = 0, unk24->pat3.unkB != 0)
        && unk24->pat3.unkA++ < unk24->pat3.unkB) {
        struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

        sprite->animId = gUnk_08387248[2][0];
        sprite->variant = gUnk_08387248[2][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081479E8;
    } else {
        struct Unk_08145B64 *v5 = a1->unk20;
        u8 unk3 = a1->unk3;
        struct Sprite *sprite = &v5->unk48[unk3];

        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_081479E8(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (a1->unkE < 0) {
        a1->unkE += 3;
        if (a1->unkE > 0)
            a1->unkE = 0;
    }
    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (!sub_08155128(sprite)) {
        a1->unkE = unk24->pat3.unk0;
        a1->unk10 = unk24->pat3.unk2;
        sprite->animId = gUnk_08387248[3][0];
        sprite->variant = gUnk_08387248[3][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147A98;
    }
}

static void sub_08147A98(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite;

        sprite = &a1->unk20->unk48[a1->unk3];
        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_08387248[4][0];
        sprite->variant = gUnk_08387248[4][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147B7C;
    } else {
        v5 = a1->unk20;
        unk3 = a1->unk3;
        sprite = &v5->unk48[unk3];
        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_08147B7C(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (a1->unkE < 0) {
        a1->unkE += 3;
        if (a1->unkE > 0)
            a1->unkE = 0;
    }
    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (!sub_08155128(sprite)) {
        a1->unkE = unk24->pat3.unk0;
        sprite->animId = gUnk_08387248[1][0];
        sprite->variant = gUnk_08387248[1][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081478FC;
    }
}

static void sub_08147C28(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (a1->unkE < 0) {
        a1->unkE += 3;
        if (a1->unkE > 0)
            a1->unkE = 0;
    }
    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (!sub_08155128(sprite)) {
        a1->unkE = unk24->pat3.unk0;
        a1->unk10 = unk24->pat3.unk2;
        sprite->animId = gUnk_0838725C[2][0];
        sprite->variant = gUnk_0838725C[2][1];
        sub_08155128(sprite);
        m4aSongNumStart(SE_08D5F778);
        unk24->pat3.unk4 = 0;
        a1->unk1C = sub_08147CE8;
    }
}

static void sub_08147CE8(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite;

        sprite = &a1->unk20->unk48[a1->unk3];
        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_0838725C[5][0];
        sprite->variant = gUnk_0838725C[5][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147FC0;
    } else if (++unk24->pat3.unk4 >= unk24->pat3.unk5) {
        struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

        sprite->animId = gUnk_0838725C[3][0];
        sprite->variant = gUnk_0838725C[3][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147E10;
    } else {
        struct Unk_08145B64 *v5 = a1->unk20;
        u8 unk3 = a1->unk3;
        struct Sprite *sprite = &v5->unk48[unk3];

        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_08147E10(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_0838725C[5][0];
        sprite->variant = gUnk_0838725C[5][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147FC0;
    } else if (!sub_08155128(sprite)) {
        sprite->animId = gUnk_0838725C[4][0];
        sprite->variant = gUnk_0838725C[4][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147EDC;
    }
}

static void sub_08147EDC(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite;

        sprite = &a1->unk20->unk48[a1->unk3];
        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_0838725C[5][0];
        sprite->variant = gUnk_0838725C[5][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147FC0;
    } else {
        v5 = a1->unk20;
        unk3 = a1->unk3;
        sprite = &v5->unk48[unk3];
        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_08147FC0(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (a1->unkE < 0) {
        a1->unkE += 3;
        if (a1->unkE > 0)
            a1->unkE = 0;
    }
    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (!sub_08155128(sprite)) {
        sprite->animId = gUnk_0838725C[1][0];
        sprite->variant = gUnk_0838725C[1][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147C28;
    }
}

static void sub_08148064(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (++unk24->pat3.unk6 >= unk24->pat3.unk8
        && (unk24->pat3.unk6 = 0, unk24->pat3.unkB != 0)
        && unk24->pat3.unkA++ < unk24->pat3.unkB) {
        struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

        a1->unkE = 2 * unk24->pat3.unk0;
        a1->unk10 = unk24->pat3.unk2;
        sprite->animId = gUnk_08387274[2][0];
        sprite->variant = gUnk_08387274[2][1];
        sub_08155128(sprite);
        a1->unk1C = sub_0814815C;
    } else {
        struct Unk_08145B64 *v5 = a1->unk20;
        u8 unk3 = a1->unk3;
        struct Sprite *sprite = &v5->unk48[unk3];

        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_0814815C(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unk10 >= 0) {
        struct Sprite *sprite;

        sprite = &a1->unk20->unk48[a1->unk3];
        a1->unkC -= a1->unk10;
        a1->unk10 = 0;
        a1->unkE = 0;
        sprite->animId = gUnk_08387274[3][0];
        sprite->variant = gUnk_08387274[3][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08149B30;
    }
}

static void sub_08148200(struct Unk_08145B64_5EC *a1) {
    a1->unkC += a1->unk10;
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_08387274[0][0];
        sprite->variant = gUnk_08387274[0][1];
        sub_08155128(sprite);
        sprite->unk16 = 0x100;
        a1->unk1C = sub_0814825C;
    }
}

static void sub_0814825C(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (unk24->pat3.unkC) {
        if (++unk24->pat3.unk6 < unk24->pat3.unkC)
            return;
    } else if (sub_08155128(sprite)) {
        if (unk24->pat3.unkC) {
            if (++unk24->pat3.unk6 < unk24->pat3.unkC)
                return;
        } else {
            return;
        }
    }
    unk24->pat3.unk6 = 0;
    a1->unkE = unk24->pat3.unk0;
    sprite->animId = gUnk_08387274[1][0];
    sprite->variant = gUnk_08387274[1][1];
    sub_08155128(sprite);
    a1->unk1C = sub_08148064;
}

static void sub_081482C4(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (++unk24->pat3.unk6 >= unk24->pat3.unk8
        && (unk24->pat3.unk6 = 0, unk24->pat3.unkB != 0)
        && unk24->pat3.unkA++ < unk24->pat3.unkB) {
        struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

        sprite->animId = gUnk_08387284[1][0];
        sprite->variant = gUnk_08387284[1][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081483B0;
    } else {
        struct Unk_08145B64 *v5 = a1->unk20;
        u8 unk3 = a1->unk3;
        struct Sprite *sprite = &v5->unk48[unk3];

        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static void sub_081483B0(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (a1->unkE < 0) {
        a1->unkE += 3;
        if (a1->unkE > 0)
            a1->unkE = 0;
    }
    a1->unkA += a1->unkE;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (!sub_08155128(sprite)) {
        a1->unkE = 2 * unk24->pat3.unk0;
        a1->unk10 = unk24->pat3.unk2;
        sprite->animId = gUnk_08387284[2][0];
        sprite->variant = gUnk_08387284[2][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08148464;
    }
}

static void sub_08148464(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    struct Unk_08145B64 *v5;
    u8 unk3;

    a1->unk10 += 9;
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (a1->unk10 >= 0) {
        struct Sprite *sprite;

        sprite = &a1->unk20->unk48[a1->unk3];
        a1->unkC -= a1->unk10;
        a1->unk10 = 0;
        a1->unkE = 0;
        sprite->animId = gUnk_08387284[3][0];
        sprite->variant = gUnk_08387284[3][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08149B90;
    }
}

static void sub_08148508(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (unk24->pat3.unkC) {
        if (++unk24->pat3.unk6 < unk24->pat3.unkC)
            return;
    } else if (sub_08155128(sprite)) {
        if (unk24->pat3.unkC) {
            if (++unk24->pat3.unk6 < unk24->pat3.unkC)
                return;
        } else {
            return;
        }
    }
    unk24->pat3.unk6 = 0;
    a1->unkE = unk24->pat3.unk0;
    sprite->animId = gUnk_08387284[0][0];
    sprite->variant = gUnk_08387284[0][1];
    sub_08155128(sprite);
    a1->unk1C = sub_081482C4;
}

static void sub_08148570(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    s32 tmp;

    tmp = a2->unkC;
    a1->unk24.pat4.unk0 = -(tmp >> 2);
    tmp = a2->unk16;
    unk24->pat4.unk2 = -(tmp >> 2);
    if (a1->unk24.pat4.unk0 < 0)
        unk24->pat4.unk8 = 1;
    else if (a1->unk24.pat4.unk0 > 0)
        unk24->pat4.unk8 = 2;
    else
        unk24->pat4.unk8 = 0;
    unk24->pat3.unk6 = a2->unk12;
    unk24->pat3.unkB = 1;
}

static void sub_081485B4(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    switch (unk24->pat4.unk8) {
    case 0:
        unk24->pat4.unk9 = 0;
        break;
    case 1:
        unk24->pat4.unk9 = 2;
        break;
    case 2:
        unk24->pat4.unk9 = 6;
        break;
    }
    sprite->animId = gUnk_0838729C[unk24->pat4.unk9][0];
    sprite->variant = gUnk_0838729C[unk24->pat4.unk9][1];
    sub_08155128(sprite);
    a1->unk1C = sub_0814861C;
}

static void sub_0814861C(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (++unk24->pat4.unk4 >= unk24->pat4.unk6) {
        unk24->pat4.unk4 = 0;
        if (unk24->pat4.unkB && unk24->pat4.unkA++ < unk24->pat4.unkB) {
            u8 r1 = unk24->pat4.unk8;

            a1->unk10 = unk24->pat4.unk2;
            switch (r1) {
            case 1:
                if (unk24->pat4.unk2 == 0) {
                    unk24->pat4.unk8 = 0;
                    unk24->pat4.unk9 = 3;
                } else if (unk24->pat4.unk2 > 0) {
                    unk24->pat4.unk8 = 2;
                    unk24->pat4.unk9 = 4;
                }
                break;
            case 0:
                if (unk24->pat4.unk2 < 0) {
                    unk24->pat4.unk8 = 1;
                    unk24->pat4.unk9 = 1;
                } else if (unk24->pat4.unk2 > 0) {
                    unk24->pat4.unk8 = 2;
                    unk24->pat4.unk9 = 5;
                }
                break;
            case 2:
                if (unk24->pat4.unk2 < 0) {
                    unk24->pat4.unk8 = 1;
                    unk24->pat4.unk9 = 8;
                } else if (unk24->pat4.unk2 == 0) {
                    unk24->pat4.unk8 = 0;
                    unk24->pat4.unk9 = 7;
                }
                break;
            }
            if (r1 != unk24->pat4.unk8) {
                sprite->animId = gUnk_0838729C[unk24->pat4.unk9][0];
                sprite->variant = gUnk_0838729C[unk24->pat4.unk9][1];
                sub_08155128(sprite);
                return;
            }
        }
    }
    if (!sub_08155128(sprite)) {
        sprite->unk1B = 0xFF;
        switch (unk24->pat4.unk9) {
        case 1:
        case 8:
            unk24->pat4.unk9 = 2;
            break;
        case 3:
        case 7:
            unk24->pat4.unk9 = 0;
            break;
        case 4:
        case 5:
            unk24->pat4.unk9 = 6;
            break;
        default:
            return;
        }
        sprite->animId = gUnk_0838729C[unk24->pat4.unk9][0];
        sprite->variant = gUnk_0838729C[unk24->pat4.unk9][1];
        sub_08155128(sprite);
    }
}

static void sub_081487C0(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    s32 tmp;

    tmp = a2->unkC;
    a1->unk24.pat4.unk0 = -(tmp >> 2);
    tmp = a2->unk16;
    unk24->pat4.unk2 = -(tmp >> 2);
    if (a1->unk24.pat4.unk0 < 0)
        unk24->pat4.unk8 = 1;
    else if (a1->unk24.pat4.unk0 > 0)
        unk24->pat4.unk8 = 2;
    else
        unk24->pat4.unk8 = 0;
    unk24->pat3.unk6 = a2->unk12;
    unk24->pat3.unkB = 1;
}

static void sub_08148804(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];
    const u8 *base;
    u8 i;

    switch (unk24->pat4.unk8) {
    case 0:
        unk24->pat4.unk9 = 0;
        break;
    case 1:
        unk24->pat4.unk9 = 3;
        break;
    case 2:
        unk24->pat4.unk9 = 6;
        break;
    }
    unk24->pat4.unkF = 0;
    base = gUnk_08D626D4[unk24->pat4.unk8];
    for (i = 0; base[i] != unk24->pat4.unk9; ++i) ;
    unk24->pat4.unkE = i;
    sprite->animId = gUnk_083872C0[unk24->pat4.unk9][0];
    sprite->variant = gUnk_083872C0[unk24->pat4.unk9][1];
    sub_08155128(sprite);
    a1->unk1C = sub_0814889C;
}

static void sub_0814889C(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];
    const u8 *base, *v20, *const *tp, *const *tp2;
    u8 i, idx;
    u8 tmp;
    u32 tmp2;

    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (++unk24->pat4.unk4 >= unk24->pat4.unk6) {
        unk24->pat4.unk4 = 0;
        if (unk24->pat4.unkB && unk24->pat4.unkA++ < unk24->pat4.unkB) {
            u8 r1 = unk24->pat4.unk8;

            a1->unk10 = unk24->pat4.unk2;
            switch (r1) {
            case 1:
                if (unk24->pat4.unk2 == 0) {
                    unk24->pat4.unk8 = 0;
                    unk24->pat4.unk9 = 5;
                } else if (unk24->pat4.unk2 > 0) {
                    unk24->pat4.unk8 = 2;
                    unk24->pat4.unk9 = 5;
                }
                break;
            case 0:
                if (unk24->pat4.unk2 < 0) {
                    unk24->pat4.unk8 = 1;
                    unk24->pat4.unk9 = 3;
                } else if (unk24->pat4.unk2 > 0) {
                    unk24->pat4.unk8 = 2;
                    unk24->pat4.unk9 = 6;
                }
                break;
            case 2:
                if (unk24->pat4.unk2 < 0) {
                    unk24->pat4.unk8 = 1;
                    unk24->pat4.unk9 = 8;
                } else if (unk24->pat4.unk2 == 0) {
                    unk24->pat4.unk8 = 0;
                    unk24->pat4.unk9 = 8;
                }
                break;
            }
            base = gUnk_08D626D4[unk24->pat4.unk8];
            for (i = 0; base[i] != unk24->pat4.unk9; ++i) ;
            unk24->pat4.unkE = i;
            if (r1 != unk24->pat4.unk8) {
                unk24->pat4.unkF = 0;
                sprite->animId = gUnk_083872C0[unk24->pat4.unk9][0];
                sprite->variant = gUnk_083872C0[unk24->pat4.unk9][1];
                sub_08155128(sprite);
                return;
            }
        }
    }
    if (++unk24->pat4.unkF > 0x13) {
        tmp = unk24->pat4.unkE;
        unk24->pat4.unkF = 0;
#ifdef NONMATCHING
        v20 = &gUnk_08D626D4[unk24->pat4.unk8][unk24->pat4.unkE];
#else
        v20 = (const u8 *)(tp2 = gUnk_08D626D4, tp = &tp2[unk24->pat4.unk8], idx = unk24->pat4.unkE, idx + (u32)*tp);
#endif
        if (v20[1] != 0xFF)
            unk24->pat4.unkE = tmp2 = unk24->pat4.unkE + 1;
        else
            unk24->pat4.unkE = tmp2 = v20[2];
        if (tmp != (u8)tmp2) {
            struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

            unk24->pat4.unk9 = gUnk_08D626D4[unk24->pat4.unk8][unk24->pat4.unkE];
            sprite->animId = gUnk_083872C0[unk24->pat4.unk9][0];
            sprite->variant = gUnk_083872C0[unk24->pat4.unk9][1];
            sub_08155128(sprite);
        }
    }
}

static void sub_08148A80(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    s32 tmp;

    tmp = a2->unkC;
    a1->unk24.pat4.unk0 = -(tmp >> 2);
    tmp = a2->unk16;
    unk24->pat4.unk2 = -(tmp >> 2);
    if (a1->unk24.pat4.unk0 < 0)
        unk24->pat4.unk8 = 1;
    else if (a1->unk24.pat4.unk0 > 0)
        unk24->pat4.unk8 = 2;
    else
        unk24->pat4.unk8 = 0;
    unk24->pat3.unk6 = a2->unk12;
    unk24->pat3.unkB = 1;
}

static void sub_08148AC4(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];
    const u8 *base;
    u8 i;

    switch (unk24->pat4.unk8) {
    case 0:
        unk24->pat4.unk9 = 0;
        break;
    case 1:
        unk24->pat4.unk9 = 1;
        break;
    case 2:
        unk24->pat4.unk9 = 2;
        break;
    }
    sprite->animId = gUnk_083872F4[unk24->pat4.unk9][0];
    sprite->variant = gUnk_083872F4[unk24->pat4.unk9][1];
    sub_08155128(sprite);
    a1->unk1C = sub_08148B24;
}

static void sub_08148B24(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    if (++unk24->pat4.unk4 >= unk24->pat4.unk6) {
        unk24->pat4.unk4 = 0;
        if (unk24->pat4.unkB && unk24->pat4.unkA++ < unk24->pat4.unkB) {
            u8 r1 = unk24->pat4.unk8;

            a1->unk10 = unk24->pat4.unk2;
            if (unk24->pat4.unk2 < 0) {
                unk24->pat4.unk8 = 1;
                unk24->pat4.unk9 = 1;
            } else if (unk24->pat4.unk2 > 0) {
                unk24->pat4.unk8 = 2;
                unk24->pat4.unk9 = 2;
            } else {
                unk24->pat4.unk8 = 0;
                unk24->pat4.unk9 = 0;
            }
            if (r1 != unk24->pat4.unk8) {
                sprite->animId = gUnk_083872F4[unk24->pat4.unk9][0];
                sprite->variant = gUnk_083872F4[unk24->pat4.unk9][1];
                sub_08155128(sprite);
                return;
            }
        }
    }
    if (!sub_08155128(sprite))
        sprite->unk1B = 0xFF;
}

static void sub_08148C1C(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    if (++unk24->pat1[2] >= unk24->pat1[1]) {
        unk24->pat1[2] = 0;
        m4aSongNumStart(a1->unk24.pat1[0]);
    }
    a1->unkA += a1->unkE;
    a1->unkC += a1->unk10;
    if (a1->unk0
        && (a1->unkA >> 6) + (gUnk_08387348[a1->unk0].unk2 >> 1) <= 0) {
        struct Sprite *sprite;

        sub_08146B68(a1);
        sprite = sub_08146BEC(a1);
        if (sprite && sub_081497B4(a1, sprite))
            sub_08149814(a1, sprite);
    }
    {
        struct Unk_08145B64 *v5 = a1->unk20;
        u8 unk3 = a1->unk3;
        struct Sprite *sprite = &v5->unk48[unk3];

        if (v5->unk5CC[unk3] != 1) {
            if (sprite->tilesVram && !sub_08155128(&v5->unk48[unk3]))
                sprite->unk1B = 0xFF;
            v5->unk5CC[unk3] = 1;
        }
    }
}

static bool32 sub_08148CD8(struct Unk_08145B64 *a1) {
    s32 offset;

    sub_08149C80();
    sub_08148F04(a1);
    sub_08148F7C(a1);
    {
        u32 r5 = gUnk_083871D8[gLanguage][2];

        if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
            LoadBgPaletteWithTransformation(gUnk_082D7850[r5]->palette, 0, 0x50);
        else {
            DmaCopy16(3, gUnk_082D7850[r5]->palette, gBgPalette, 0x50 * sizeof(u16));
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
    }
    {
        u32 r5 = gUnk_083871D8[gLanguage][2];

        if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
            LoadBgPaletteWithTransformation(gUnk_082D7850[r5]->palette + 0x80, 0x80, 0x80);
        else {
            offset = 0x80;
            DmaCopy16(3, gUnk_082D7850[r5]->palette + 0x80, gBgPalette + offset, 0x80 * sizeof(u16));
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
    }
    sub_08148E24(a1);
    sub_0814F3C4(&a1->unk24, *gUnk_08D62518[gLanguage]);
    a1->unk24.unk6 |= 0x40;
    a1->unk8 &= ~1;
    a1->unk8 |= 2;
    a1->unk13F8 = sub_08148FF8;
    return FALSE;
}

static void sub_08148E24(struct Unk_08145B64 *a1) {
    u8 i;
    u16 color;
    u8 sp06[1];

    sp06[0] = 0;
    color = RGB_WHITE | 0x8000;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation(&color, 0x81, 1);
    else {
        DmaCopy16(3, &color, gBgPalette + 0x81, 1 * sizeof(u16));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    for (i = 0; i < 1; ++i) {
        u8 idx = sp06[i];
        u8 charbase = (gBgCntRegs[idx] >> 2) & 3;
        u8 screenbase = (gBgCntRegs[idx] >> 8) & 0x1F;

        CpuFill16(0x1111, (u16 *)0x6003FC0 + charbase * 0x2000, 0x20);
        CpuFill16(0x81FE, (u16 *)0x6000000 + screenbase * 0x400, 0x500);
    }
}

static void sub_08148F04(struct Unk_08145B64 *a1) {
    const struct TiledBg_082D7850 *ptr;
    const u16 *tilemap;
    u16 height;
    u16 *vram;
    const u32 *tileset;
    u16 idx;
    u16 i;
    u32 charbase;
    u32 screenbase;

    idx = gUnk_083871D8[gLanguage][0];
    ptr = gUnk_082D7850[idx];
    tileset = ptr->tileset;
    tilemap = ptr->tilemap;
    height = ptr->height;
    charbase = (gBgCntRegs[2] >> 2) & 3;
    screenbase = (gBgCntRegs[2] >> 8) & 0x1F;
    vram = (u16 *)(screenbase * 0x800 + 0x6000800);
    LZ77UnCompVram(tileset, (u16 *)(charbase * 0x4000 + 0x6002000));
    for (i = 0; i < height; ++i)
        CpuCopy16(tilemap + i * 0x20, vram + i * 0x20, 0x20 * sizeof(u16));
}

static void sub_08148F7C(struct Unk_08145B64 *a1) {
    u32 mask = 3;
    const struct TiledBg_082D7850 *ptr;
    const u16 *tilemap;
    u16 height;
    u16 *vram;
    const u32 *tileset;
    u16 idx;
    u16 i;
    u32 charbase;
    u32 screenbase;

    idx = gUnk_083871D8[gLanguage][1];
    ptr = gUnk_082D7850[idx];
    tileset = ptr->tileset;
    tilemap = ptr->tilemap;
    height = ptr->height;
    charbase = (gBgCntRegs[3] >> 2) & mask;
    screenbase = (gBgCntRegs[3] >> 8) & 0x1F;
    vram = (u16 *)(screenbase * 0x800 + 0x6000800);
    LZ77UnCompVram(tileset, (u16 *)(charbase * 0x4000 + 0x6003000));
    for (i = 0; i < height; ++i)
        CpuCopy16(tilemap + i * 0x20, vram + i * 0x20, 0x20 * sizeof(u16));
}

static bool32 sub_08148FF8(struct Unk_08145B64 *a1) {
    sub_081465C4(a1);
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            if (current->unk3 >= 0)
                a1->unk5CC[current->unk3] = 0;
        }
    }
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            ++current->unk8;
            current->unk1C(current);
        }
    }
    if (a1->unk0 >= gUnk_083877EE[0]) {
        a1->unk46 = gUnk_083877EE[1] >> 2;
        a1->unk13F8 = sub_0814908C;
        a1->unk8 &= ~2;
        a1->unk8 |= 4;
    }
    sub_08146C60(a1);
    return FALSE;
}

static bool32 sub_0814908C(struct Unk_08145B64 *a1) {
    sub_081465C4(a1);
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            if (current->unk3 >= 0)
                a1->unk5CC[current->unk3] = 0;
        }
    }
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            ++current->unk8;
            current->unk1C(current);
        }
    }
    if (a1->unk46) {
        a1->unk44 += a1->unk46;
        gBgScrollRegs[0][0] = a1->unk44 >> 6;
        if (gBgScrollRegs[0][0] >= 0x100) {
            gBgScrollRegs[0][0] = 0x100;
            a1->unk46 = 0;
        }
    }
    if (a1->unk0 >= gUnk_083877EE[2] && !(a1->unk4 & 0x10000)) {
        a1->unk13F8 = sub_08149154;
        a1->unk8 &= ~4;
        a1->unk8 |= 8;
    }
    sub_08146C60(a1);
    return FALSE;
}

static bool32 sub_08149154(struct Unk_08145B64 *a1) {
    a1->unk8 &= ~4;
    a1->unk8 |= 8;
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            if (current->unk3 >= 0)
                a1->unk5CC[current->unk3] = 0;
        }
    }
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            ++current->unk8;
            current->unk1C(current);
        }
    }
    sub_08146C60(a1);
    a1->unk24.unk6 |= 0x40;
    gDispCnt &= ~DISPCNT_BG3_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;
        u32 charbase;
        u32 screenbase;

        idx = gUnk_083871D8[gLanguage][3];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        charbase = (gBgCntRegs[0] >> 2) & 3;
        screenbase = (gBgCntRegs[0] >> 8) & 0x1F;
        vram = (u16 *)(screenbase * 0x800 + 0x6000800);
        LZ77UnCompVram(tileset, (u16 *)(charbase * 0x4000 + 0x6000000));
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x1E * sizeof(u16));
    }
    m4aSongNumStart(SE_SHARD_OBTAINED);
#ifdef NONMATCHING
    a1->unk13F8 = sub_08149270;
#else
    {
        register u32 _13F8 asm("r3") = 0x13F8;
        register bool32 (**unk13F8)(struct Unk_08145B64 *) asm("r1");

        asm("":::"r0");
        unk13F8 = (void *)a1 + _13F8;
        *unk13F8 = sub_08149270;
    }
#endif
    return FALSE;
}

static bool32 sub_08149270(struct Unk_08145B64 *a1) {
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            if (current->unk3 >= 0)
                a1->unk5CC[current->unk3] = 0;
        }
    }
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            ++current->unk8;
            current->unk1C(current);
        }
    }
    sub_08146C60(a1);
    if (sub_0814F274(&a1->unk24))
        a1->unk24.unk6 &= ~0x40;
    if (a1->unk24.unk6 & 0x20) {
        gDispCnt &= ~DISPCNT_BG0_ON;
        gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0x10;
        a1->unk13FC = 0;
        a1->unk13F8 = sub_0814932C;
    }
    return FALSE;
}

static bool32 sub_0814932C(struct Unk_08145B64 *a1) {
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            if (current->unk3 >= 0)
                a1->unk5CC[current->unk3] = 0;
        }
    }
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            ++current->unk8;
            current->unk1C(current);
        }
    }
    sub_08146C60(a1);
    if (++a1->unk13FC > 9)
        a1->unk13F8 = sub_08149C68;
    return FALSE;
}

static bool32 sub_081493AC(struct Unk_08145B64 *a1) {
    a1->unk8 &= ~8;
    a1->unk8 |= 0x10;
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            if (current->unk3 >= 0)
                a1->unk5CC[current->unk3] = 0;
        }
    }
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            ++current->unk8;
            current->unk1C(current);
        }
    }
    sub_08146C60(a1);
    gDispCnt &= ~DISPCNT_BG0_ON;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk13FC = 0;
    a1->unk13F8 = sub_08149450;
    return FALSE;
}

static bool32 sub_08149450(struct Unk_08145B64 *a1) {
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            if (current->unk3 >= 0)
                a1->unk5CC[current->unk3] = 0;
        }
    }
    {
        struct Unk_08145B64_5EC *current;

        for (current = a1->unk13EC; current; current = current->unk18) {
            ++current->unk8;
            current->unk1C(current);
        }
    }
    sub_08146C60(a1);
    ++a1->unk13FC;
    gBldRegs.bldY = 0x10 * a1->unk13FC / 0x1E;
    if (a1->unk13FC > 0x1D)
        a1->unk13F8 = sub_08149C68;
    return FALSE;
}

static void sub_081494E4(struct Unk_08145B64 *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk1400 = sub_08149504;
}

static void sub_08149504(struct Unk_08145B64 *a1) {
    u8 i;

    if (++gBldRegs.bldY > 0xF) {
        for (i = 0; i < 0x20; ++i) {
            struct Sprite *sprite = &a1->unk48[i];

            if (sprite->tilesVram) {
                VramFree(sprite->tilesVram);
                sprite->tilesVram = 0;
            }
        }
        gDispCnt &= ~DISPCNT_BG0_ON;
        a1->unk1400 = sub_08149568;
    }
}

static void sub_08149568(struct Unk_08145B64 *a1) {
    gBgScrollRegs[0][0] = 0x100;
    sub_081495B4(0, gUnk_083871D8[gLanguage][3], 0x100);
    a1->unk1400 = NULL;
    a1->unk13F8 = sub_08149C68;
}

static void sub_081495B4(u8 a1, u16 a2, u16 a3) {
    const struct TiledBg_082D7850 *ptr;
    const u16 *tilemap;
    u16 height;
    u16 *vram;
    const u32 *tileset;
    u16 i;
    u32 charbase;
    u32 screenbase;

    ptr = gUnk_082D7850[a2];
    tileset = ptr->tileset;
    tilemap = ptr->tilemap;
    height = ptr->height;
    charbase = (gBgCntRegs[a1] >> 2) & 3;
    screenbase = (gBgCntRegs[a1] >> 8) & 0x1F;
    vram = (u16 *)(screenbase * 0x800 + ({ (a3 >> 3) * 0x40 + 0x6000000; }));
    LZ77UnCompVram(tileset, (u16 *)(charbase * 0x4000 + 0x6000000));
    for (i = 0; i < height; ++i)
        CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x1E * sizeof(u16));
}

static void sub_08149628(struct Unk_08145B64 *a1) {
    a1->unk1410(a1);
}

static void sub_0814963C(struct Unk_08145B64 *a1) {
    if (a1->unk0 >= gUnk_083877EE[9]) {
        a1->unk1419 = 0;
        m4aSongNumStart(SE_08D5F9D0);
        a1->unk1410 = sub_08145E84;
    }
}

static void nullsub_133(struct Unk_08145B64 *a1 __attribute__((unused))) {}

static void sub_08149680(struct Unk_08145B64 *a1) {
    u8 i;

    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] -= a1->unk1414;
        gBgScrollRegs[i][1] -= a1->unk1415;
    }
}

static void sub_081496C8(struct Unk_08145B64 *a1) {
    u8 i;

    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] += a1->unk1414;
        gBgScrollRegs[i][1] += a1->unk1415;
    }
}

static void sub_08149710(struct Unk_08145B64 *a1, u8 a2) {
    if (a1->unk0 >= gUnk_083877EE[3 * a2 + 3]) {
        a1->unk36[a2] = gUnk_083877EE[3 * a2 + 4] >> 2;
        a1->unk3C[a2] = sub_08146308;
    }
}

static void sub_08149758(struct Unk_08145B64 *a1) {
    if (a1->unk0 + a1->unk140C >= gUnk_083877EE[0x10]) {
        gBldRegs.bldCnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_LIGHTEN;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        a1->unk8 |= 0x20;
        a1->unk140E = 0;
        a1->unk1408 = sub_0814654C;
    }
}

static void nullsub_134(struct Unk_08145B64 *a1 __attribute__((unused))) {}

static bool32 sub_081497B0(struct Unk_08145B64 *a1 __attribute__((unused))) {
    return FALSE;
}

static bool32 sub_081497B4(struct Unk_08145B64_5EC *a1, struct Sprite *a2) {
    struct Unk_08145B64 *v3 = a1->unk20;
    struct Unk_08145B64_5EC *current;

    for (current = v3->unk13EC; current; current = current->unk18) {
        if (current != a1 && v3->unk48[current->unk3].tilesVram == v3->unk48[a1->unk3].tilesVram)
            return FALSE;
    }
    if (a2->tilesVram) {
        VramFree(a2->tilesVram);
        a2->tilesVram = 0;
    }
    return TRUE;
}

static bool32 sub_08149814(struct Unk_08145B64_5EC *a1, struct Sprite *a2) {
    struct Unk_08145B64 *v3 = a1->unk20;
    u8 i;
    struct Sprite *sprite;

    for (i = 0; i < 0x20; ++i) {
        if (i != a1->unk3) {
            sprite = &v3->unk48[i];
            if (sprite->tilesVram && sprite->palId == a2->palId)
                return FALSE;
        }
    }
    v3->unk12[a2->palId] = 0xFF;
    --v3->unk11;
    return TRUE;
}

static void sub_08149864(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *var = &a1->unk24;

    var->pat2.unk1 = a2->unkF >> 1;
    var->pat2.unk2 = a2->unk10;
}

static void sub_08149874(struct Unk_08145B64_5EC *a1) {
    a1->unk1C = sub_08146E3C;
}

static void sub_08149880(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    a1->unkA += a1->unkE;
    if (!sub_08155128(sprite)) {
        a1->unkE = 0;
        a1->unk1C = sub_08146EE8;
    }
}

static void sub_081498B4(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite;
    union Unk_08145B64_5EC_24 *var = &a1->unk24;
    
    if (a1->unk20->unk0 >= gUnk_083877E0[var->pat2.unk1]) {
        ++var->pat2.unk1;
        var->pat2.unk8 = 0;
        var->pat2.unkA = 0x15;
        sprite = &a1->unk20->unk48[a1->unk3];
        sprite->animId = gUnk_08387208[5][0];
        sprite->variant = gUnk_08387208[5][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08147078;
    }
}

static void sub_08149910(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *var = &a1->unk24;
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];
    
    if (++var->pat2.unkA == 0x19)
        m4aSongNumStart(SE_08D5F6D4);
    if (!sub_08155128(sprite)) {
        sprite->animId = gUnk_08387208[0][0];
        sprite->variant = gUnk_08387208[0][1];
        sub_08155128(sprite);
        a1->unk1C = sub_081470EC;
    }
}

static void sub_0814996C(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25B;
    unk24->pat1[1] = 0xA;
    unk24->pat1[2] = 0xA;
}

static void sub_08149980(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25B;
    unk24->pat1[1] = 0xA;
    unk24->pat1[2] = 0xA;
}

static void sub_08149994(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x261;
    unk24->pat1[1] = 0xA;
    unk24->pat1[2] = 0;
}

static void sub_081499AC(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x262;
    unk24->pat1[1] = 0x14;
    unk24->pat1[2] = 0x14;
}

static void sub_081499C0(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25B;
    unk24->pat1[1] = 0xC;
    unk24->pat1[2] = 0xC;
}

static void sub_081499D4(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25B;
    unk24->pat1[1] = 0xC;
    unk24->pat1[2] = 0xC;
}

static void sub_081499E8(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x26B;
    unk24->pat1[1] = 0x3C;
    unk24->pat1[2] = 0x3C;
}

static void sub_081499FC(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25E;
    unk24->pat1[1] = 0xF;
    unk24->pat1[2] = 0xF;
}

static void sub_08149A10(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25E;
    unk24->pat1[1] = 0x10;
    unk24->pat1[2] = 0xB;
}

static void sub_08149A28(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25E;
    unk24->pat1[1] = 0x14;
    unk24->pat1[2] = 0x14;
}

static void sub_08149A3C(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2 __attribute__((unused))) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat1[0] = 0x25E;
    unk24->pat1[1] = 6;
    unk24->pat1[2] = 6;
}

static void sub_08149A50(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    a1->unk24.pat1[0] = -(a2->unkA >> 2);
}

static void sub_08149A5C(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    unk24->pat5.unk0 = -(a2->unkA >> 2);
    unk24->pat5.unk2 = -(Sqrt(0x12 * a2->unkF) << 3);
    unk24->pat5.unk5 = -unk24->pat5.unk2 / 9 - 2;
}

static void sub_08149A94(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unk24.pat5.unk0 = -(a2->unkA >> 2);
    unk24->pat5.unk2 = -(Sqrt(0x12 * a2->unkF) << 3);
    unk24->pat5.unk8 = a2->unk12;
    unk24->pat5.unkB = a2->unk14;
}

static void sub_08149AC4(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unk24.pat5.unk0 = -(a2->unkA >> 2);
    unk24->pat5.unk2 = -(Sqrt(0x12 * a2->unkF) << 3);
    unk24->pat5.unk5 = -unk24->pat5.unk2 / 9 - 2;
}

static void sub_08149AFC(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unk24.pat5.unk0 = -(a2->unkA >> 2);
    unk24->pat5.unk2 = -(Sqrt(0x12 * a2->unkF) << 3);
    unk24->pat5.unk8 = a2->unk12;
    unk24->pat5.unkB = a2->unk14;
    unk24->pat5.unkC = a2->unk15;
}

static void sub_08149B30(struct Unk_08145B64_5EC *a1) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    if (++unk24->pat5.unk6 > 0xF) {
        unk24->pat5.unk6 = 0;
        a1->unk10 = 0x200;
        a1->unk1C = sub_08148200;
    }
}

static void sub_08149B5C(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    a1->unk24.pat5.unk0 = -(a2->unkA >> 2);
    unk24->pat5.unk2 = -(Sqrt(0x12 * a2->unkF) << 3);
    unk24->pat5.unk8 = a2->unk12;
    unk24->pat5.unkB = a2->unk14;
    unk24->pat5.unkC = a2->unk15;
}

static void sub_08149B90(struct Unk_08145B64_5EC *a1) {
    struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

    if (!sub_08155128(sprite)) {
        a1->unk10 = 0x200;
        sprite->animId = gUnk_08387284[4][0];
        sprite->variant = gUnk_08387284[4][1];
        sub_08155128(sprite);
        a1->unk1C = sub_08149BD8;
    }
}

static void sub_08149BD8(struct Unk_08145B64_5EC *a1) {
    a1->unkC += a1->unk10;
    if (a1->unkC >= 0x1E00) {
        struct Sprite *sprite = &a1->unk20->unk48[a1->unk3];

        a1->unkC = 0x1E00;
        a1->unk10 = 0;
        sprite->animId = gUnk_08387284[5][0];
        sprite->variant = gUnk_08387284[5][1];
        sub_08155128(sprite);
        m4aSongNumStart(SE_08D5F800);
        a1->unk1C = sub_08148508;
    }
}

static void sub_08149C34(struct Unk_08145B64_5EC *a1, const struct Unk_08387814 *a2) {
    union Unk_08145B64_5EC_24 *unk24 = &a1->unk24;

    if (a2->unk5 == 0 || a2->unk5 == 9) {
        unk24->pat1[0] = 0x260;
        unk24->pat1[1] = 0xC8;
        unk24->pat1[2] = 0xC3;
        a1->unk1C = sub_08148C1C;
    } else {
        a1->unk1C = sub_08146CE4;
    }
}

static bool32 sub_08149C68(struct Unk_08145B64 *a1) {
    TaskDestroy(gCurTask);
    CreateTitleScreen();
    return TRUE;
}

static void sub_08149C80(void) {
    const struct TiledBg_082D7850 *ptr;
    const u16 *tilemap;
    u16 height;
    u16 *vram;
    const u32 *tileset;
    u16 idx, i;

    idx = gUnk_083871D8[gLanguage][2];
    ptr = gUnk_082D7850[idx];
    tileset = ptr->tileset;
    tilemap = ptr->tilemap;
    height = ptr->height;
    vram = (u16 *)0x600E000;
    LZ77UnCompVram(tileset, (u16 *)0x6004000);
    for (i = 0; i < height; ++i)
        CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x1E * sizeof(u16));
}
