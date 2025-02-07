#include "data.h"
#include "collection_room.h"
#include "code_08138D64.h"
#include "functions.h"
#include "main.h"
#include "malloc_vram.h"
#include "palette.h"
#include "trig.h"
#include "constants/languages.h"

#define NUM_TREASURES 0x28

static void sub_08143664(struct Task *);
static void sub_08143730(struct Unk_081434F8 *);
static u8 sub_08143A90(struct Unk_081434F8 *);
static void sub_08143DA8(struct Unk_081434F8 *);
static void sub_08143EF4(struct Unk_081434F8 *);
static void sub_0814405C(struct Unk_081434F8 *);
static void sub_081441A8(struct Unk_081434F8 *);
static bool32 sub_08144238(struct Unk_081434F8 *);
static void sub_08144304(struct Unk_081434F8 *);
static bool32 sub_081443D8(struct Unk_081434F8 *);
static bool32 sub_08144438(struct Unk_081434F8 *);
static bool32 sub_08144510(struct Unk_081434F8 *);
static bool32 sub_081445BC(struct Unk_081434F8 *);
static bool32 sub_08144718(struct Unk_081434F8 *);
static bool32 sub_081447E0(struct Unk_081434F8 *);
static void sub_08144864(struct Unk_081434F8 *);
static void sub_08144B38(struct Unk_081434F8 *);
static bool32 sub_08144C1C(struct Unk_081434F8 *);
static bool32 sub_08144EB4(struct Unk_081434F8 *);
static void sub_0814514C(struct Unk_081434F8 *);
static void sub_08145324(struct Unk_081434F8 *);
static bool32 sub_08145490(struct Unk_081434F8 *);
static bool32 sub_08145574(struct Unk_081434F8 *);
static void sub_08145620(void);
static void sub_0814565C(struct Unk_081434F8 *);
static void sub_08145694(struct Unk_081434F8 *);
static void sub_08145718(struct Unk_081434F8 *);
static void sub_08145740(struct Unk_081434F8 *);
static void sub_08145774(struct Unk_081434F8 *);
static void sub_08145784(struct Unk_081434F8 *);
static void sub_081457F4(struct Unk_081434F8 *);
static void sub_08145848(struct Unk_081434F8 *);
static void sub_081458A0(struct Unk_081434F8 *);
static void sub_0814590C(struct Unk_081434F8 *);
static void sub_08145974(struct Unk_081434F8 *);
static void sub_081459EC(struct Unk_081434F8 *);
static void sub_081459FC(struct Unk_081434F8 *);
static void sub_08145A50(struct Unk_081434F8 *);
static void sub_08145AA8(struct Unk_081434F8 *);
static void sub_08145B00(u8);
static void sub_08145B2C(u8);

static const u32 gUnk_0838665C[] = { 2, 1 };

static const u16 gUnk_08386664[NUM_LANGUAGES][0x27] = {
    [LANGUAGE_JAPANESE] = { 0x208, 0x209, 0x20A, 0x20B, 0x20C, 0x20D, 0x20E, 0x20F, 0x210, 0x211, 0x212, 0x213, 0x214,
                            0x215, 0x216, 0x217, 0x218, 0x219, 0x21A, 0x21B, 0x21C, 0x21D, 0x21E, 0x21F, 0x220, 0x221,
                            0x222, 0x223, 0x224, 0x225, 0x226, 0x227, 0x228, 0x229, 0x22A, 0x22B, 0x22C, 0x22D, 0x22E },
    [LANGUAGE_ENGLISH]  = { 0x16C, 0x16D, 0x16E, 0x16F, 0x170, 0x171, 0x172, 0x173, 0x174, 0x175, 0x176, 0x177, 0x178,
                            0x179, 0x17A, 0x17B, 0x17C, 0x17D, 0x17E, 0x17F, 0x180, 0x181, 0x182, 0x183, 0x184, 0x185,
                            0x186, 0x187, 0x188, 0x189, 0x18A, 0x18B, 0x18C, 0x18D, 0x18E, 0x18F, 0x190, 0x191, 0x192 },
    [LANGUAGE_GERMAN]   = { 0x145, 0x146, 0x147, 0x148, 0x149, 0x14A, 0x14B, 0x14C, 0x14D, 0x14E, 0x14F, 0x150, 0x151,
                            0x152, 0x153, 0x154, 0x155, 0x156, 0x157, 0x158, 0x159, 0x15A, 0x15B, 0x15C, 0x15D, 0x15E,
                            0x15F, 0x160, 0x161, 0x162, 0x163, 0x164, 0x165, 0x166, 0x167, 0x168, 0x169, 0x16A, 0x16B },
    [LANGUAGE_FRENCH]   = { 0x1BA, 0x1BB, 0x1BC, 0x1BD, 0x1BE, 0x1BF, 0x1C0, 0x1C1, 0x1C2, 0x1C3, 0x1C4, 0x1C5, 0x1C6,
                            0x1C7, 0x1C8, 0x1C9, 0x1CA, 0x1CB, 0x1CC, 0x1CD, 0x1CE, 0x1CF, 0x1D0, 0x1D1, 0x1D2, 0x1D3,
                            0x1D4, 0x1D5, 0x1D6, 0x1D7, 0x1D8, 0x1D9, 0x1DA, 0x1DB, 0x1DC, 0x1DD, 0x1DE, 0x1DF, 0x1E0 },
    [LANGUAGE_SPANISH]  = { 0x193, 0x194, 0x195, 0x196, 0x197, 0x198, 0x199, 0x19A, 0x19B, 0x19C, 0x19D, 0x19E, 0x19F,
                            0x1A0, 0x1A1, 0x1A2, 0x1A3, 0x1A4, 0x1A5, 0x1A6, 0x1A7, 0x1A8, 0x1A9, 0x1AA, 0x1AB, 0x1AC,
                            0x1AD, 0x1AE, 0x1AF, 0x1B0, 0x1B1, 0x1B2, 0x1B3, 0x1B4, 0x1B5, 0x1B6, 0x1B7, 0x1B8, 0x1B9 },
    [LANGUAGE_ITALIAN]  = { 0x1E1, 0x1E2, 0x1E3, 0x1E4, 0x1E5, 0x1E6, 0x1E7, 0x1E8, 0x1E9, 0x1EA, 0x1EB, 0x1EC, 0x1ED,
                            0x1EE, 0x1EF, 0x1F0, 0x1F1, 0x1F2, 0x1F3, 0x1F4, 0x1F5, 0x1F6, 0x1F7, 0x1F8, 0x1F9, 0x1FA,
                            0x1FB, 0x1FC, 0x1FD, 0x1FE, 0x1FF, 0x200, 0x201, 0x202, 0x203, 0x204, 0x205, 0x206, 0x207 },
};

static const u16 gUnk_08386838[NUM_LANGUAGES][4][3] = {
    [LANGUAGE_JAPANESE] = {
        { 0x389, 0x0,  0x8 },
        { 0x389, 0x1,  0x8 },
        { 0x38F, 0x0,  0xE },
        { 0x38F, 0x1, 0x10 },
    },
    [LANGUAGE_ENGLISH]  = {
        { 0x389, 0x0,  0x8 },
        { 0x389, 0x1,  0x8 },
        { 0x38B, 0x0,  0xE },
        { 0x38B, 0x1, 0x10 },
    },
    [LANGUAGE_GERMAN]   = {
        { 0x389, 0x0,  0x8 },
        { 0x389, 0x1,  0x8 },
        { 0x38A, 0x0,  0xE },
        { 0x38A, 0x1,  0xC },
    },
    [LANGUAGE_FRENCH]   = {
        { 0x389, 0x0,  0x8 },
        { 0x389, 0x1,  0x8 },
        { 0x38D, 0x0,  0xE },
        { 0x38D, 0x1,  0xC },
    },
    [LANGUAGE_SPANISH]  = {
        { 0x389, 0x0,  0x8 },
        { 0x389, 0x1,  0x8 },
        { 0x38C, 0x0,  0xE },
        { 0x38C, 0x1,  0xE },
    },
    [LANGUAGE_ITALIAN]  = {
        { 0x389, 0x0,  0x8 },
        { 0x389, 0x1,  0x8 },
        { 0x38E, 0x0,  0xE },
        { 0x38E, 0x1,  0xE },
    },
};

static const u16 gUnk_083868C8[][3] = {
    { 0x388,  0x0,  0x4 },
    { 0x388,  0x1,  0x4 },
    { 0x388,  0x2,  0x4 },
    { 0x388,  0x3,  0x4 },
    { 0x388,  0x4,  0x4 },
    { 0x388,  0x5,  0x4 },
    { 0x388,  0x6,  0x4 },
    { 0x388,  0x7,  0x4 },
    { 0x388,  0x8,  0x4 },
    { 0x388,  0x9,  0x4 },
    { 0x388,  0xA,  0x4 },
    { 0x388,  0xB,  0x4 },
    { 0x388,  0xC,  0x4 },
    { 0x388,  0xD,  0x4 },
    { 0x388,  0xE,  0x4 },
    { 0x388,  0xF,  0x4 },
    { 0x388, 0x10,  0x4 },
    { 0x388, 0x11,  0x4 },
    { 0x388, 0x12,  0x4 },
    { 0x388, 0x13,  0x4 },
    { 0x388, 0x14,  0x4 },
    { 0x388, 0x15,  0x4 },
    { 0x388, 0x16,  0x4 },
    { 0x388, 0x17,  0x4 },
    { 0x388, 0x18,  0x4 },
    { 0x388, 0x19,  0x4 },
    { 0x388, 0x1A,  0x4 },
    { 0x388, 0x1B,  0x4 },
    { 0x388, 0x1C,  0x4 },
    { 0x388, 0x1D,  0x4 },
    { 0x388, 0x1E,  0x4 },
    { 0x388, 0x1F,  0x4 },
    { 0x388, 0x20,  0x4 },
    { 0x388, 0x21,  0x4 },
    { 0x388, 0x22,  0x4 },
    { 0x2D1,  0xC,  0x4 },
    { 0x2D1,  0xD,  0x4 },
    { 0x389, 0x11, 0x10 },
    { 0x389,  0x2,  0x2 },
    { 0x389,  0x3,  0x2 },
    { 0x389,  0x4,  0x2 },
    { 0x389,  0x5,  0x2 },
    { 0x389,  0x6,  0x2 },
    { 0x389,  0x7,  0x2 },
    { 0x389,  0x8,  0x2 },
    { 0x389,  0x9,  0x2 },
    { 0x389,  0xA,  0x2 },
    { 0x389,  0xB,  0x2 },
    { 0x389,  0xC,  0x2 },
    { 0x389,  0xF,  0x1 },
    { 0x389, 0x10,  0x1 },
    { 0x389,  0xD,  0x2 },
    { 0x389,  0xE,  0x2 },
    { 0x389, 0x12,  0x9 },
    { 0x389, 0x13,  0x4 },
};

static const u8 gUnk_08386A12[] = {
    0x0, 0x0, 0x0, 0x0, 0x4, 0x4, 0x4, 0x7, 0x5, 0x6, 0x5, 0x7, 0x8, 0x8, 0x5, 0x6, 0x6, 0x4, 0x9, 0x2, 0x2, 0x2, 0x2, 0x2, 0x3, 0x3, 0x3, 0x3, 0x3, 0x2, 0x2,
    0x2, 0x2, 0x2, 0x3, 0x3, 0x3, 0x3, 0x3, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA, 0xA, 0x0, 0x0, 0x0, // TODO: padding?
};

struct Unk_08386A50 {
    u16 unk0;
    u8 unk2;
    u8 unk3;
}; /* size = 0x4 */

static const struct Unk_08386A50 gUnk_08386A50[] = {
    { 0x100,  0x4,   0xF },
    { 0x101,  0x5,   0x8 },
    { 0x102,  0x6,   0xD },
    { 0x103,  0x7,   0x9 },
    { 0x104,  0x8,   0x5 },
    { 0x406,  0x13, 0x23 },
    { 0x401,  0x14, 0x1E },
    { 0x403,  0x15, 0x20 },
    { 0x402,  0x16, 0x1F },
    { 0x400,  0x17, 0x1D },
    { 0x105,  0x9,   0xB },
    { 0x106,  0xA,   0xE },
    { 0x107,  0xB,   0xC },
    { 0x108,  0xC,   0xA },
    { 0x109,  0xD,   0x4 },
    { 0x409,  0x18, 0x26 },
    { 0x408,  0x19, 0x25 },
    { 0x405,  0x1A, 0x22 },
    { 0x404,  0x1B, 0x21 },
    { 0x407,  0x1C, 0x24 },
    { 0x10A,  0xE,   0x3 },
    { 0x10B,  0xF,   0x7 },
    { 0x10C,  0x10,  0x2 },
    { 0x10D,  0x11,  0x1 },
    { 0x10E,  0x12,  0x6 },
    { 0x200,  0x1D, 0x10 },
    { 0x201,  0x1E, 0x11 },
    { 0x204,  0x1F, 0x12 },
    { 0x202,  0x20, 0x13 },
    { 0x207,  0x21, 0x14 },
    { 0x1000, 0x28, 0x1B },
    { 0x800,  0x27, 0x1A },
    { 0x801,  0x27, 0x1A },
    { 0x802,  0x27, 0x1A },
    { 0x803,  0x27, 0x1A },
    { 0x206,  0x22, 0x15 },
    { 0x209,  0x23, 0x16 },
    { 0x208,  0x24, 0x17 },
    { 0x205,  0x25, 0x18 },
    { 0x203,  0x26, 0x19 },
};

struct __attribute__((packed)) Unk_02021590_Packed {
    u16 animId;
    u8 variant;
    s8 unk3;
};

#ifndef NONMATCHING
static const struct Unk_02021590_Packed gUnk_08386AF0[] = {
#else
static const struct Unk_02021590 gUnk_08386AF0[] = {
#endif
    { 0x15, 0x0, 0x0 },
    { 0x15, 0x1, 0x0 },
    { 0x15, 0x2, 0x0 },
    { 0x15, 0x3, 0x0 },
    { 0x15, 0x4, 0x0 },
    { 0x15, 0x5, 0x0 },
    { 0x15, 0x6, 0x0 },
    { 0x15, 0x7, 0x0 },
    { 0x15, 0x8, 0x0 },
    { 0x15, 0x9, 0x0 },
    { 0x15, 0xA, 0x0 },
    { 0x15, 0xB, 0x0 },
    { 0x15, 0xC, 0x0 },
    { 0x15, 0xD, 0x0 },
};

static const u16 gUnk_08386B28[][2] = {
    {  0x1, 0x400 },
    {  0x2, 0x404 },
    {  0x3, 0x401 },
    {  0x4, 0x400 },
    {  0x5, 0x402 },
    {  0x6, 0x402 },
    {  0x7, 0x401 },
    {  0x8, 0x402 },
    {  0x9, 0x401 },
    {  0xA, 0x402 },
    {  0xB, 0x401 },
    {  0xC, 0x403 },
    {  0xD, 0x403 },
    {  0xE, 0x405 },
    {  0xF, 0x403 },
    { 0x10, 0x405 },
    { 0x11, 0x405 },
    { 0x12, 0x405 },
    { 0x13, 0x400 },
    { 0x14, 0x404 },
    { 0x15, 0x401 },
    { 0x16, 0x404 },
    { 0x17, 0x404 },
    { 0x18, 0x403 },
    { 0x19, 0x400 },
    { 0x1A, 0x403 },
    { 0x1B, 0x402 },
    { 0x1C, 0x402 },
    { 0x1D, 0x401 },
    { 0x1E, 0x404 },
    { 0x1F, 0x404 },
    { 0x20, 0x404 },
    { 0x21, 0x404 },
    { 0x22, 0x404 },
    { 0x23, 0x401 },
    { 0x24, 0x400 },
    { 0x25, 0x404 },
    { 0x26, 0x404 },
    { 0x27, 0x404 },
    { 0x28, 0x403 },
    { 0x29, 0x401 },
    { 0x2A, 0x402 },
};

static const u16 gUnk_08386BD0[][2] = {
    { 0x64, 0x406 },
    { 0x65, 0x406 },
    { 0x66, 0x406 },
    { 0x67, 0x406 },
    { 0x68, 0x406 },
    { 0x69, 0x406 },
    { 0x6A, 0x406 },
    { 0x6B, 0x406 },
    { 0x6C, 0x406 },
    { 0x6D, 0x406 },
    { 0x6E, 0x406 },
    { 0x6F, 0x406 },
    { 0x70, 0x406 },
    { 0x71, 0x406 },
    { 0x72, 0x406 },
    { 0x73, 0x406 },
    { 0x74, 0x406 },
    { 0x75, 0x406 },
    { 0x76, 0x406 },
    { 0x77, 0x406 },
    { 0x78, 0x406 },
    { 0x79, 0x406 },
    { 0x7A, 0x406 },
    { 0x7B, 0x406 },
    { 0x7C, 0x406 },
    { 0x7D, 0x406 },
    { 0x7E, 0x406 },
    { 0x7F, 0x406 },
    { 0x80, 0x406 },
    { 0x81, 0x406 },
    { 0x82, 0x406 },
    { 0x83, 0x406 },
    { 0x84, 0x406 },
    { 0x85, 0x406 },
    { 0x86, 0x406 },
    { 0x87, 0x406 },
    { 0x88, 0x406 },
    { 0x89, 0x406 },
    { 0x8B, 0x406 },
    { 0x8C, 0x406 },
    { 0x8D, 0x406 },
    { 0x8E, 0x406 },
    { 0x8F, 0x406 },
    { 0x90, 0x406 },
    { 0x91, 0x406 },
    { 0x92, 0x406 },
    { 0x93, 0x406 },
    { 0x94, 0x406 },
    { 0x95, 0x406 },
    { 0x96, 0x406 },
    { 0x97, 0x406 },
    { 0x98, 0x406 },
    { 0x99, 0x406 },
    { 0x9A, 0x406 },
    { 0x9B, 0x406 },
    { 0x9C, 0x406 },
    { 0x9D, 0x406 },
    { 0x9E, 0x406 },
    { 0x9F, 0x406 },
    { 0xA0, 0x406 },
    { 0xA1, 0x406 },
    { 0xA2, 0x406 },
    { 0xA3, 0x406 },
    { 0xA4, 0x406 },
    { 0xA5, 0x406 },
    { 0xA6, 0x406 },
    { 0xA7, 0x406 },
    { 0xA8, 0x406 },
    { 0xA9, 0x406 },
    { 0xAA, 0x406 },
    { 0xAB, 0x406 },
    { 0xAC, 0x406 },
    { 0xAD, 0x406 },
    { 0xAE, 0x406 },
    { 0xAF, 0x406 },
    { 0xB0, 0x406 },
    { 0xB1, 0x406 },
    { 0xB2, 0x406 },
    { 0xB3, 0x406 },
    { 0xB4, 0x406 },
    { 0xB5, 0x406 },
    { 0xB6, 0x406 },
    { 0xB7, 0x406 },
    { 0xB8, 0x406 },
    { 0xB9, 0x406 },
    { 0xBA, 0x406 },
    { 0xBB, 0x406 },
    { 0xBC, 0x406 },
    { 0xBD, 0x406 },
    { 0xBE, 0x406 },
    { 0xBF, 0x406 },
    { 0xC0, 0x406 },
    { 0xC1, 0x406 },
    { 0xC2, 0x406 },
    { 0xC3, 0x406 },
    { 0xC4, 0x406 },
    { 0xC5, 0x406 },
    { 0xC6, 0x406 },
    { 0xC7, 0x406 },
    { 0xC8, 0x406 },
    { 0xC9, 0x406 },
    { 0xCA, 0x406 },
    { 0xCB, 0x406 },
    { 0xCC, 0x406 },
    { 0xCD, 0x406 },
    { 0xCE, 0x406 },
    { 0xCF, 0x406 },
    { 0xD0, 0x406 },
    { 0xD1, 0x406 },
    { 0xD2, 0x406 },
    { 0xD3, 0x406 },
    { 0xD4, 0x406 },
    { 0xD5, 0x406 },
    { 0xD6, 0x406 },
    { 0xD7, 0x406 },
    { 0xD8, 0x406 },
    { 0xD9, 0x406 },
    { 0xDA, 0x406 },
    { 0xDB, 0x406 },
    { 0xDC, 0x406 },
    { 0xDD, 0x406 },
    { 0xDE, 0x406 },
    { 0xDF, 0x406 },
    { 0xE0, 0x406 },
    { 0xE1, 0x408 },
    { 0xE2, 0x406 },
    { 0xE3, 0x406 },
    { 0xE4, 0x406 },
    { 0xE5, 0x408 },
    { 0x12C, 0x407 },
    { 0x12D, 0x407 },
    { 0x12E, 0x407 },
    { 0x12F, 0x407 },
    { 0x130, 0x407 },
    { 0x131, 0x407 },
    { 0x132, 0x407 },
    { 0x133, 0x407 },
    { 0x134, 0x407 },
    { 0x135, 0x407 },
    { 0x136, 0x407 },
    { 0x137, 0x407 },
    { 0x138, 0x407 },
    { 0x139, 0x407 },
    { 0x13A, 0x407 },
    { 0x13B, 0x407 },
    { 0x13C, 0x407 },
    { 0x13D, 0x407 },
    { 0x13E, 0x407 },
    { 0x13F, 0x407 },
    { 0x140, 0x407 },
    { 0x141, 0x407 },
    { 0x142, 0x407 },
    { 0x143, 0x407 },
    { 0x144, 0x407 },
    { 0x145, 0x407 },
    { 0x146, 0x407 },
    { 0x148, 0x407 },
    { 0x149, 0x407 },
    { 0x14A, 0x407 },
    { 0x14B, 0x407 },
    { 0x14C, 0x407 },
    { 0x14D, 0x407 },
    { 0x14E, 0x407 },
    { 0x14F, 0x407 },
    { 0x150, 0x407 },
    { 0x151, 0x407 },
    { 0x152, 0x407 },
    { 0x153, 0x407 },
    { 0x154, 0x407 },
    { 0x155, 0x407 },
    { 0x156, 0x407 },
    { 0x157, 0x407 },
    { 0x158, 0x407 },
    { 0x159, 0x407 },
    { 0x15A, 0x407 },
    { 0x15C, 0x407 },
    { 0x15D, 0x407 },
    { 0x15E, 0x407 },
    { 0x15F, 0x407 },
    { 0x160, 0x407 },
    { 0x161, 0x407 },
    { 0x162, 0x407 },
    { 0x163, 0x407 },
    { 0x164, 0x407 },
    { 0x165, 0x407 },
    { 0x166, 0x407 },
    { 0x167, 0x407 },
    { 0x168, 0x407 },
    { 0x169, 0x407 },
    { 0x16A, 0x407 },
    { 0x16B, 0x407 },
    { 0x16C, 0x407 },
    { 0x16D, 0x407 },
    { 0x16E, 0x407 },
    { 0x16F, 0x407 },
    { 0x170, 0x407 },
    { 0x171, 0x407 },
    { 0x172, 0x407 },
    { 0x173, 0x407 },
    { 0x174, 0x407 },
    { 0x175, 0x407 },
    { 0x176, 0x407 },
    { 0x177, 0x407 },
    { 0x178, 0x407 },
    { 0x179, 0x407 },
    { 0x17A, 0x407 },
    { 0x17B, 0x407 },
    { 0x17C, 0x407 },
    { 0x17F, 0x407 },
    { 0x180, 0x407 },
    { 0x181, 0x407 },
    { 0x182, 0x407 },
    { 0x183, 0x407 },
    { 0x185, 0x407 },
    { 0x186, 0x407 },
    { 0x187, 0x407 },
    { 0x188, 0x407 },
    { 0x18A, 0x407 },
    { 0x18B, 0x407 },
    { 0x18C, 0x407 },
    { 0x18D, 0x407 },
    { 0x18E, 0x407 },
    { 0x18F, 0x407 },
    { 0x190, 0x407 },
    { 0x191, 0x407 },
    { 0x192, 0x407 },
    { 0x193, 0x407 },
    { 0x194, 0x407 },
    { 0x195, 0x407 },
    { 0x196, 0x407 },
    { 0x197, 0x407 },
    { 0x199, 0x407 },
    { 0x19A, 0x407 },
    { 0x19B, 0x407 },
    { 0x19C, 0x407 },
    { 0x19D, 0x407 },
    { 0x19E, 0x407 },
    { 0x19F, 0x407 },
    { 0x1A0, 0x407 },
    { 0x1A1, 0x407 },
    { 0x1A2, 0x407 },
    { 0x1A3, 0x407 },
    { 0x1A4, 0x407 },
    { 0x1A5, 0x407 },
    { 0x1A6, 0x407 },
    { 0x1A7, 0x408 },
    { 0x1A8, 0x408 },
    { 0x1A9, 0x408 },
    { 0x1AA, 0x408 },
    { 0x1AB, 0x408 },
    { 0x1AC, 0x408 },
    { 0x1AD, 0x408 },
    { 0x1AE, 0x408 },
    { 0x1AF, 0x408 },
    { 0x1B0, 0x408 },
    { 0x1B1, 0x408 },
    { 0x1B2, 0x408 },
    { 0x1B3, 0x408 },
    { 0x1B4, 0x408 },
    { 0x1B5, 0x408 },
    { 0x1B6, 0x408 },
    { 0x1B7, 0x408 },
    { 0x1C2, 0x407 },
    { 0x1C3, 0x407 },
    { 0x1C4, 0x407 },
    { 0x1C5, 0x407 },
    { 0x1C7, 0x408 },
    { 0x1F4, 0x409 },
    { 0x1F5, 0x409 },
    { 0x1F6, 0x409 },
    { 0x1F7, 0x409 },
    { 0x1F8, 0x409 },
    { 0x1F9, 0x409 },
    { 0x1FA, 0x409 },
    { 0x1FB, 0x409 },
    { 0x1FC, 0x409 },
    { 0x1FD, 0x409 },
    { 0x1FE, 0x409 },
    { 0x1FF, 0x409 },
    { 0x200, 0x409 },
    { 0x201, 0x409 },
    { 0x202, 0x409 },
    { 0x203, 0x409 },
    { 0x204, 0x409 },
    { 0x205, 0x409 },
    { 0x206, 0x409 },
    { 0x207, 0x409 },
    { 0x208, 0x409 },
    { 0x209, 0x409 },
    { 0x20A, 0x409 },
    { 0x20B, 0x409 },
    { 0x20C, 0x409 },
    { 0x20D, 0x409 },
    { 0x20E, 0x409 },
    { 0x20F, 0x409 },
    { 0x210, 0x409 },
    { 0x212, 0x409 },
    { 0x213, 0x409 },
    { 0x214, 0x409 },
    { 0x215, 0x409 },
    { 0x216, 0x408 },
    { 0x217, 0x408 },
    { 0x218, 0x408 },
    { 0x219, 0x408 },
    { 0x21A, 0x408 },
    { 0x21B, 0x408 },
    { 0x21D, 0x409 },
    { 0x21E, 0x409 },
    { 0x21F, 0x409 },
    { 0x220, 0x409 },
    { 0x221, 0x409 },
    { 0x222, 0x409 },
    { 0x223, 0x409 },
    { 0x224, 0x409 },
    { 0x225, 0x409 },
    { 0x226, 0x409 },
    { 0x227, 0x409 },
    { 0x228, 0x409 },
    { 0x229, 0x409 },
    { 0x22A, 0x409 },
    { 0x22C, 0x409 },
    { 0x22D, 0x409 },
    { 0x22E, 0x409 },
    { 0x230, 0x409 },
    { 0x231, 0x409 },
    { 0x232, 0x409 },
    { 0x235, 0x409 },
    { 0x236, 0x408 },
    { 0x237, 0x408 },
    { 0x238, 0x409 },
    { 0x239, 0x409 },
    { 0x23A, 0x409 },
    { 0x23B, 0x409 },
    { 0x23C, 0x409 },
    { 0x23D, 0x409 },
    { 0x23E, 0x409 },
    { 0x23F, 0x409 },
    { 0x240, 0x409 },
    { 0x241, 0x409 },
    { 0x242, 0x409 },
    { 0x243, 0x409 },
    { 0x244, 0x409 },
    { 0x245, 0x409 },
    { 0x246, 0x409 },
    { 0x247, 0x409 },
    { 0x248, 0x409 },
    { 0x249, 0x409 },
    { 0x24A, 0x409 },
    { 0x24B, 0x409 },
    { 0x24C, 0x409 },
    { 0x24D, 0x409 },
    { 0x24E, 0x409 },
    { 0x24F, 0x409 },
    { 0x250, 0x409 },
    { 0x251, 0x409 },
    { 0x252, 0x408 },
    { 0x253, 0x408 },
    { 0x254, 0x408 },
    { 0x258, 0x409 },
    { 0x259, 0x409 },
    { 0x25A, 0x409 },
    { 0x25B, 0x409 },
    { 0x25C, 0x409 },
    { 0x25D, 0x409 },
    { 0x25E, 0x409 },
    { 0x25F, 0x409 },
    { 0x260, 0x409 },
    { 0x261, 0x409 },
    { 0x262, 0x409 },
    { 0x263, 0x409 },
    { 0x264, 0x409 },
    { 0x265, 0x409 },
    { 0x266, 0x409 },
    { 0x267, 0x409 },
    { 0x268, 0x409 },
    { 0x269, 0x409 },
    { 0x26A, 0x409 },
    { 0x26B, 0x409 },
};

static const u8 gUnk_083871B8[0x10][2] = {
    { 0x98, 0x8A },
    { 0x70, 0x8A },
    { 0xC0, 0x8A },
    { 0x70, 0x8A },
    { 0x60, 0x82 },
    { 0x60, 0x96 },
    { 0x73, 0x8B },
    { 0x7D, 0x8B },
    { 0x58, 0x8C },
    { 0x60, 0x8C },
    { 0x68, 0x8C },
    { 0x88, 0x8C },
    { 0x90, 0x8C },
    { 0x98, 0x8C },
    { 0x2E, 0x8C },
    { 0xC0, 0x8C },
};

void sub_081434F8(void) {
    struct Task *t = TaskCreate(sub_08145620, sizeof(struct Unk_081434F8), 0x1000, TASK_USE_IWRAM, sub_08143664);
    struct Unk_081434F8 *tmp = TaskGetStructPtr(t), *var = tmp;
    u16 i;
    u8 j;

    DmaFill16(3, 0, var, sizeof(struct Unk_081434F8));
    var->unk38 = sub_08143DA8;
    var->unk2D = TRUE;
    var->unk30 = -1;
    var->unk1 = gUnk_0203ADE0;
    sub_08143730(var);
    m4aMPlayAllStop();
    m4aSongNumStart(25);
    for (i = 0; i < 0x2A; ++i) {
        for (j = 0; j < NUM_TREASURES; ++j) {
            if (gUnk_08386A50[j].unk0 == gUnk_08386B28[i][1])
                break;
        }
        if (var->unk2[j]) {
            var->unk2E = i;
            break;
        }
    }
    for (i = 0; i < 0x17A; ++i) {
        for (j = 0; j < NUM_TREASURES; ++j) {
            if (gUnk_08386A50[j].unk0 == gUnk_08386BD0[i][1])
                break;
        }
        if (var->unk2[j]) {
            var->unk32 = i;
            break;
        }
    }
    var->unk37 = sub_08143A90(var);
}

static void sub_08143664(struct Task *t) {
    struct Unk_081434F8 *tmp = TaskGetStructPtr(t), *var = tmp;
    u8 i;

    for (i = 0; i < 0x39; ++i) {
        struct Sprite *sprite = &var->unk40[i];

        if (sprite->tilesVram) {
            VramFree(sprite->tilesVram);
            sprite->tilesVram = 0;
        }
    }
    for (i = 0; i < 0xA; ++i) {
        gKeysContinuedRepeatIntervals[i] = 8;
        gKeysFirstRepeatIntervals[i] = 0x14;
    }
}

static bool32 sub_081436D8(struct Unk_081434F8 *a1) {
    u16 c;
    u8 i;

    if (++a1->unk0 < 0xF)
        return FALSE;
    else {
        a1->unk0 = 0;
        c = gBgPalette[6];
        for (i = 5; i > 3; --i)
            gBgPalette[i + 1] = gBgPalette[i];
        gBgPalette[4] = c;
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        return TRUE;
    }
}

static void sub_08143730(struct Unk_081434F8 *a1) {
    u8 *arr = a1->unk2;
    u8 i, j, k;
    bool32 r4;
    u8 r5;

    for (i = 0; i < NUM_TREASURES; ++i) {
        if (gUnk_08386A50[i].unk0 == 0x100)
            break;
    }
    arr[i] = 1;
    for (j = 1; j < 0xF; ++j) {
        bool32 r5 = sub_08019E14(j - 1);

        for (k = 0; k < NUM_TREASURES; ++k) {
            if (gUnk_08386A50[k].unk0 == j + 0x100)
                break;
        }
        arr[k] = r5;
    }
    r4 = sub_08019E80(0);
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (gUnk_08386A50[i].unk0 == 0x1000)
            break;
    }
    arr[i] = r4;
    for (j = 0; j < 0xA; ++j) {
        bool32 r5 = sub_08019E80(j + 1);

        for (k = 0; k < NUM_TREASURES; ++k) {
            if (gUnk_08386A50[k].unk0 == j + 0x400)
                break;
        }
        arr[k] = r5;
    }
    r5 = sub_08019F0C();
    for (j = 0; j < r5; ++j) {
        for (i = 0; i < NUM_TREASURES; ++i) {
            if (gUnk_08386A50[i].unk0 == j + 0x800)
                break;
        }
        arr[i] = 1;
    }
    for (j = 0; j < 0xA; ++j) {
        bool32 r5 = hasBigChest(j);

        for (k = 0; k < NUM_TREASURES; ++k) {
            if (gUnk_08386A50[k].unk0 == j + 0x200)
                break;
        }
        arr[k] = r5;
    }
}

static void sub_0814389C(struct Unk_081434F8 *a1, u8 a2) {
    if (a1->unk2[a2]) {
        u8 v3 = gUnk_08386A50[a2].unk2;
        struct Sprite *sprite = &a1->unk40[a2];

        SpriteInitNoPointer2(sprite,
            v3 < 4 ? VramMalloc(gUnk_08386838[gLanguage][v3][2]) : VramMalloc(gUnk_083868C8[v3 - 4][2]),
            0x3C0,
            v3 < 4 ? gUnk_08386838[gLanguage][v3][0] : gUnk_083868C8[v3 - 4][0],
            v3 < 4 ? gUnk_08386838[gLanguage][v3][1] : gUnk_083868C8[v3 - 4][1],
            0, 0xFF, 0x10, gUnk_08386A12[v3], 0x16 * (a2 % 10) + 0x15, 0x15 * (a2 / 10) + 0x23, 0
        );
    }
}

static void sub_081439D8(struct Unk_081434F8 *a1) {
    struct Sprite *sprite = &a1->unk40[NUM_TREASURES];

    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083868C8[0x25][2]), 0x400, gUnk_083868C8[0x25][0], gUnk_083868C8[0x25][1],
        0, 0xFF, 0x10, gUnk_08386A12[0x29], 0x15, 0x23, 0);
}

static bool32 sub_08143A38(struct Unk_081434F8 *a1) {
    struct Sprite *sprite = &a1->unk40[NUM_TREASURES];

    if (a1->unk2B == a1->unk2A) 
        return FALSE;
    else {
        sprite->x = 0x16 * (a1->unk2A % 0xA) + 0x15;
        sprite->y = 0x15 * (a1->unk2A / 0xA) + 0x23;
        return TRUE;
    }
}

static u8 sub_08143A90(struct Unk_081434F8 *a1) {
    u8 *arr = a1->unk2;
    u8 i;
    u8 ret = 0;
    u16 var;

    for (i = 0; i < NUM_TREASURES; ++i) {
        if (arr[i]) {
            if ((gUnk_08386A50[i].unk0 >> 8) & 4) {
                var = gUnk_08386A50[i].unk0;
                if (var > 0x405 && var < 0x40A) {
                    ret |= 2;
                    if (ret & 1)
                        return ret;
                } else {
                    ret |= 1;
                    if (ret & 2)
                        return ret;
                }
            }
        }
    }
    return ret;
}

#define gUnk_08386AF0_aligned ({ \
    const struct Unk_02021590 *ptr = (const void *)gUnk_08386AF0; \
 \
    ptr; \
})

static void sub_08143AF8(struct Unk_081434F8 *a1) {
    struct Sprite sp00;
    u8 sp28[0x10][2];
    u8 i;
    const struct Unk_02021590 *ptr;

    memset(&sp00, 0, sizeof(struct Sprite));
    memcpy(sp28, gUnk_083871B8, sizeof(gUnk_083871B8));
    {
        u8 sp48[0x10] = {
            1, 0x39, 0x39, 0x3A, 0x35, 0x36, 0x37, 0x38,
            a1->unk2E / 100 + 0x2A,
            (a1->unk2E / 10 % 10) + 0x2A,
            (a1->unk2E % 10) + 0x2A,
            a1->unk32 / 100 + 0x2A,
            (a1->unk32 / 10 % 10) + 0x2A,
            (a1->unk32 % 10) + 0x2A,
            2, 3,
        };
        for (i = 0; i < 0x10; ++i) {
            struct Sprite *sprite = &a1->unk40[0x29 + i];
            u8 r5 = sp48[i];

            sprite->tilesVram = VramMalloc(r5 < 4 ? gUnk_08386838[gLanguage][r5][2] : gUnk_083868C8[r5 - 4][2]);
            sprite->unk14 = 0x3C0;
            sprite->animId = r5 < 4 ? gUnk_08386838[gLanguage][r5][0] : gUnk_083868C8[r5 - 4][0];
            sprite->variant = r5 < 4 ? gUnk_08386838[gLanguage][r5][1] : gUnk_083868C8[r5 - 4][1];
            sprite->unk16 = 0;
            sprite->unk1B = 0xFF;
            sprite->unk1C = 0x10;
            sprite->palId = gUnk_08386A12[r5];
            sprite->x = sp28[i][0];
            sprite->y = sp28[i][1]; 
            sprite->unk8 = 0;
            if (i == 2)
                sprite->palId = 0xB;
            if (i == 3) {
                sprite->unk14 = 0x380;
                sprite->unk8 |= 0x40000;
            }
            sub_08155128(sprite);
        }
    }
#ifdef NONMATCHING
    SpriteInitNoPointer2(&sp00, 0, 0x7C0,
        a1->unk1 == -1 ? gUnk_08386AF0[0].animId : gUnk_08386AF0[a1->unk1].animId,
        a1->unk1 == -1 ? gUnk_08386AF0[0].variant : gUnk_08386AF0[a1->unk1].variant,
        0, 0xFF, 0x10, 0xA, -0x40, -0x40, 0);
#else
    SpriteInitNoPointer2(&sp00, 0, 0x7C0,
        a1->unk1 == -1 ? gUnk_08386AF0_aligned[0].animId : gUnk_08386AF0_aligned[a1->unk1].animId,
        (a1->unk1 == -1 ? gUnk_08386AF0[0].variant : gUnk_08386AF0[a1->unk1].variant) ^ 0,
        0, 0xFF, 0x10, 0xA, -0x40, -0x40, 0);
#endif
}

static void sub_08143DA8(struct Unk_081434F8 *a1) {
    u8 i;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    DmaFill16(3, RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    DmaFill16(3, RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON;
    for (i = 0; i < 2; ++i)
        gBgCntRegs[i] = gUnk_0838665C[i] | ((0x1F - i) << 8) | (i << 2);
    a1->unk38 = sub_0814565C;
}

static void sub_08143E6C(struct Unk_081434F8 *a1) { // see sub_0813FF6C
    const struct TiledBg_082D7850 *ptr;
    const u16 *tilemap;
    u16 height;
    u16 *vram, *dst;
    const u32 *tileset;
    u16 idx;
    u16 i;
    u32 j;

    idx = gUnk_08386664[gLanguage][0];
    ptr = gUnk_082D7850[idx];
    tileset = ptr->tileset;
    do tilemap = ptr->tilemap; while (0);
    height = ptr->height;
#ifndef NONMATCHING
    asm("mov\t%0, #0":"=r"(j)::"cc");
#else
    j = 0;
#endif
    dst = (void *)0x6000000 + j;
    vram = (void *)0x600F800 + j;
    gBgScrollRegs[0][0] = j;
    gBgScrollRegs[0][1] = j;
    LZ77UnCompVram(tileset, dst);
    for (i = 0; i < height; ++i)
        DmaCopy16(3, tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    a1->unk38 = sub_08143EF4;
}

static void sub_08143EF4(struct Unk_081434F8 *a1) {
    const struct TiledBg_082D7850 *ptr;
    const u16 *tilemap;
    u16 height;
    u16 *vram;
    const u32 *tileset;
    u16 idx;
    u16 i;

    idx = gUnk_08386664[gLanguage][gUnk_08386A50[0].unk3];
    ptr = gUnk_082D7850[idx];
    tileset = ptr->tileset;
    tilemap = ptr->tilemap;
    height = ptr->height;
    vram = (void *)0x600F340;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    LZ77UnCompVram(tileset, (u16 *)0x6004000);
    for (i = 0; i < height; ++i)
        DmaCopy16(3, tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    a1->unk38 = sub_08145718;
}

static inline struct Sprite *GetSpriteFromArray(struct Unk_081434F8 *a1, u8 idx) {
    return &a1->unk40[idx];
}

static void sub_08143F88(struct Unk_081434F8 *a1) {
    u8 i, j;
    struct Sprite *sprite;

    for (i = 0; i < 0xA; ++i) {
        gKeysContinuedRepeatIntervals[i] = 5;
        gKeysFirstRepeatIntervals[i] = 0xA;
    }
    a1->unk2C = 0;
    a1->unk2D = TRUE;
    sprite = &a1->unk40[0x29];
    sprite->animId = gUnk_08386838[gLanguage][1][0];
    sprite->variant = gUnk_08386838[gLanguage][1][1];
    sprite->palId = gUnk_08386A12[1];
    sub_08155128(sprite);
    sub_08144438(a1);
    a1->unk38 = sub_0814405C;
    for (j = 0; j < NUM_TREASURES; ++j) {
        if (a1->unk2[j])
            sub_0815604C(&a1->unk40[j]);
    }
    sub_0815604C(GetSpriteFromArray(a1, NUM_TREASURES));
    sub_08145974(a1);
}

static void sub_0814405C(struct Unk_081434F8 *a1) {
    u8 i;

    a1->unk2B = a1->unk2A;
    if (!sub_081447E0(a1)) {
        if (gPressedKeys & B_BUTTON) {
            m4aSongNumStart(543);
            a1->unk38 = sub_08145848;
        }
        else
        {
            sub_08144238(a1);
            sub_08143A38(a1);
            sub_081443D8(a1);
            sub_08144438(a1);
            sub_08144304(a1);
        }
    }
    sub_081445BC(a1);
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, NUM_TREASURES));
    sub_08145974(a1);
}

static void sub_081440F8(struct Unk_081434F8 *a1) {
    u8 i;
    struct Sprite *sprite;

    a1->unk2C = 0;
    a1->unk2D = TRUE;
    sprite = &a1->unk40[0x29];
    sprite->animId = gUnk_08386838[gLanguage][1][0];
    sprite->variant = gUnk_08386838[gLanguage][1][1];
    sprite->palId = gUnk_08386A12[1];
    sub_08155128(sprite);
    sub_08144510(a1);
    sub_081459EC(a1);
    a1->unk3C = 0;
    a1->unk38 = sub_081441A8;
    a1->unk40[0x2C].unk1B = 0xFF;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, NUM_TREASURES));
    sub_08145974(a1);
}

static void sub_081441A8(struct Unk_081434F8 *a1) {
    u8 i;
    struct Sprite *sprite;

    if (++a1->unk3C > 0x1D) {
        gUnk_0203ADE0 = a1->unk1;
        a1->unk38 = sub_08143F88;
    }
    sub_08144718(a1);
    sub_081459FC(a1);
    if (!sub_08155128(&a1->unk40[0x2C]))
        a1->unk40[0x2C].unk1B = 0xFF;
    sub_0815604C(&a1->unk40[0x2C]);
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, NUM_TREASURES));
    sub_08145974(a1);
}

static bool32 sub_08144238(struct Unk_081434F8 *a1) {
    s8 ones = a1->unk2A % 10;
    s8 tens = a1->unk2A / 10;
    u8 var;

    if (gRepeatedKeys & DPAD_UP) {
        if (--tens < 0)
            tens = 3;
    }
    if (gRepeatedKeys & DPAD_DOWN) {
        if (++tens > 3)
            tens = 0;
    }
    if (gRepeatedKeys & DPAD_LEFT) {
        if (--ones < 0)
            ones = 9;
    }
    if (gRepeatedKeys & DPAD_RIGHT) {
        if (++ones > 9)
            ones = 0;
    }
    var = 10 * tens + ones;
    if (var == a1->unk2A) {
        return FALSE;
    } else {
        a1->unk2A = var;
        m4aSongNumStart(541);
        return TRUE;
    }
}

static void sub_08144304(struct Unk_081434F8 *a1) {
    if (a1->unk2B != a1->unk2A) {
        if (a1->unk2[a1->unk2A]) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08386664[gLanguage][gUnk_08386A50[a1->unk2A].unk3];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (void *)0x600F340;
            gBgScrollRegs[1][0] = 0;
            gBgScrollRegs[1][1] = 0;
            LZ77UnCompVram(tileset, (u16 *)0x6004000);
            for (i = 0; i < height; ++i)
                DmaCopy16(3, tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        } else {
            DmaFill16(3, 0, (u16 *)0x6004000, 0x4000);
        }
    }
}

static bool32 sub_081443D8(struct Unk_081434F8 *a1) {
    u32 r2 = gUnk_08386A50[a1->unk2A].unk0;
    u32 r0 = gUnk_08386A50[a1->unk2B].unk0;
    struct Sprite *sprite;

    r2 >>= 8;
    r0 >>= 8;
    if (r2 == r0) return FALSE;
    switch (r2) {
    case 1:
        sprite = &a1->unk40[0x29];
        sprite->x = 0x98;
        sprite->y = 0x8A;
        break;
    case 0x10:
        sprite = &a1->unk40[0x29];
        sprite->x = 0xB4;
        sprite->y = 0x79;
        break;
    }
    return TRUE;
}

#ifdef NONMATCHING
static bool32 sub_08144438(struct Unk_081434F8 *a1) {
    struct Sprite sprite;
    u16 unk0;
    s8 r3;
    u8 unk2A;

    memset(&sprite, 0, sizeof(struct Sprite));
    unk2A = a1->unk2A;
    unk0 = gUnk_08386A50[unk2A].unk0;
    r3 = unk0 - 1;
    if (a1->unk2[unk2A] == 0
        || (unk0 >> 8) != 1
        || unk2A == a1->unk2B
        || r3 < 0)
        return FALSE;
    SpriteInitNoPointer2(&sprite, 0, 0x7C0,
        r3 == -1 ? gUnk_08386AF0[0].animId : gUnk_08386AF0[r3].animId,
        r3 == -1 ? gUnk_08386AF0[0].variant : gUnk_08386AF0[r3].variant,
        0, 0xFF, 0x10, 0xB, -0x40, -0x40, 0);
    return TRUE;
}
#else
static bool32 sub_08144438(struct Unk_081434F8 *a1) {
    struct Sprite sprite;
    u16 unk0;
    s8 r3;
    u8 unk2A;
    register u8 r0 asm("r0");

    memset(&sprite, 0, sizeof(struct Sprite));
    r0 = a1->unk2A;
    asm(""::"r"(r0));
    unk2A = r0;
    unk0 = gUnk_08386A50[unk2A].unk0;
    r3 = unk0 - 1;
    if (a1->unk2[unk2A] == 0
        || (unk0 >> 8) != 1
        || unk2A == a1->unk2B
        || r3 < 0)
        return FALSE;
    SpriteInitNoPointer2(&sprite, 0, 0x7C0,
        r3 == -1 ? gUnk_08386AF0_aligned[0].animId : gUnk_08386AF0_aligned[r3].animId,
        r3 == -1 ? gUnk_08386AF0[0].variant : gUnk_08386AF0[r3].variant,
        0, 0xFF, 0x10, 0xB, -0x40, -0x40, 0);
    return TRUE;
}
#endif

static bool32 sub_08144510(struct Unk_081434F8 *a1) {
    struct Sprite sprite;
    u8 unk0;
    s8 r3;
    u8 unk2A;

    memset(&sprite, 0, sizeof(struct Sprite));
    unk2A = a1->unk2A;
    unk0 = gUnk_08386A50[unk2A].unk0;
    r3 = unk0 - 1;
    a1->unk1 = r3;
#ifdef NONMATCHING
    SpriteInitNoPointer2(&sprite, 0, 0x7C0,
        r3 == -1 ? gUnk_08386AF0[0].animId : gUnk_08386AF0[r3].animId,
        r3 == -1 ? gUnk_08386AF0[0].variant : gUnk_08386AF0[r3].variant,
        0, 0xFF, 0x10, 0xA, -0x40, -0x40, 0);
#else
    SpriteInitNoPointer2(&sprite, 0, 0x7C0,
        r3 == -1 ? gUnk_08386AF0_aligned[0].animId : gUnk_08386AF0_aligned[r3].animId,
        r3 == -1 ? gUnk_08386AF0[0].variant : gUnk_08386AF0[r3].variant,
        0, 0xFF, 0x10, 0xA, -0x40, -0x40, 0);
#endif
    return TRUE;
}

static bool32 sub_081445BC(struct Unk_081434F8 *a1) {
    u32 r1 = gUnk_08386A50[a1->unk2A].unk0 >> 8;
    struct Sprite *sprite;
    bool8 v3;

    if (r1 != 1 && r1 != 0x10) {
        return FALSE;
    } else {
        if (gUnk_08386A50[a1->unk2A].unk0 >> 8 != gUnk_08386A50[a1->unk2B].unk0 >> 8) {
            a1->unk2C = 0;
            a1->unk2D = TRUE;
            sprite = &a1->unk40[0x29];
            sprite->animId = gUnk_08386838[gLanguage][1][0];
            sprite->variant = gUnk_08386838[gLanguage][1][1];
            sprite->palId = gUnk_08386A12[1];
            sub_08155128(sprite);
            return TRUE;
        } else {
            if (++a1->unk2C < 0x1E)
                return FALSE;
            a1->unk2C = 0;
            v3 = a1->unk2D = !a1->unk2D;
            sprite = &a1->unk40[0x29];
            sprite->animId = v3 < 4 ? gUnk_08386838[gLanguage][v3][0] : gUnk_083868C8[v3 - 4][0];
            sprite->variant = v3 < 4 ? gUnk_08386838[gLanguage][v3][1] : gUnk_083868C8[v3 - 4][1];
            sprite->palId = gUnk_08386A12[v3];
            sub_08155128(sprite);
            return TRUE;
        }
    }
}

static bool32 sub_08144718(struct Unk_081434F8 *a1) {
    struct Sprite *sprite;
    bool8 v3;

    if (++a1->unk2C < 5)
        return FALSE;
    a1->unk2C = 0;
    v3 = a1->unk2D = !a1->unk2D;
    sprite = &a1->unk40[0x29];
    sprite->animId = v3 < 4 ? gUnk_08386838[gLanguage][v3][0] : gUnk_083868C8[v3 - 4][0];
    sprite->variant = v3 < 4 ? gUnk_08386838[gLanguage][v3][1] : gUnk_083868C8[v3 - 4][1];
    sprite->palId = gUnk_08386A12[v3];
    sub_08155128(sprite);
    return TRUE;
}

static bool32 sub_081447E0(struct Unk_081434F8 *a1) {
    u32 unk0;

    if (!(gPressedKeys & A_BUTTON) || !a1->unk2[a1->unk2A])
        return FALSE;
    do unk0 = gUnk_08386A50[a1->unk2A].unk0; while (0);
    switch (unk0 >> 8) {
    case 1:
        if ((s8)unk0 - 1 == a1->unk1) {
            return FALSE;
        } else {
            a1->unk38 = sub_081440F8;
            m4aSongNumStart(547);
            return TRUE;
        }
    case 0x10:
        if (!a1->unk37) {
            return FALSE;
        } else {
            a1->unk38 = sub_08144864;
            m4aSongNumStart(542);
            return TRUE;
        }
    }
    return FALSE;
}

static void sub_08144864(struct Unk_081434F8 *a1) {
    u8 i, j;
    struct Sprite *sprite;

    m4aSongNumStop(25);
    a1->unk30 = -1;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08386664[gLanguage][0x1C];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (void *)0x600F340;
        gBgScrollRegs[1][0] = 0;
        gBgScrollRegs[1][1] = 0;
        LZ77UnCompVram(tileset, (u16 *)0x6004000);
        for (i = 0; i < height; ++i)
            DmaCopy16(3, tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    for (i = 0; i < 0xA; ++i) {
        gKeysContinuedRepeatIntervals[i] = 2;
        gKeysFirstRepeatIntervals[i] = 0xA;
    }
    if (!(a1->unk37 & 1)) {
        sprite = &a1->unk40[0x33];
        sprite->animId = gUnk_083868C8[0x30][0];
        sprite->variant = gUnk_083868C8[0x30][1];
        sprite->palId = gUnk_08386A12[0x34];
        sub_08155128(sprite);
    }
    if (!(a1->unk37 & 2)) {
        sprite = &a1->unk40[0x36];
        sprite->animId = gUnk_083868C8[0x30][0];
        sprite->variant = gUnk_083868C8[0x30][1];
        sprite->palId = gUnk_08386A12[0x34];
        sub_08155128(sprite);
    }
    if (!(a1->unk37 & 1))
        a1->unk36 = 1;
    if (a1->unk36 == 0)
        a1->unk38 = sub_08145A50;
    else if (a1->unk36 == 1)
        a1->unk38 = sub_08145AA8;
    for (j = 0; j < NUM_TREASURES; ++j) {
        if (a1->unk2[j])
            sub_0815604C(&a1->unk40[j]);
    }
    sub_0815604C(GetSpriteFromArray(a1, NUM_TREASURES));
    sub_08145324(a1);
}

static void sub_08144A0C(struct Unk_081434F8 *a1) {
    u8 j;

    if (sub_08144C1C(a1))
        sub_0814514C(a1);
    sub_08145490(a1);
    if (gPressedKeys & B_BUTTON)
        a1->unk38 = sub_08144B38;
    if (gPressedKeys & DPAD_RIGHT && a1->unk37 & 2)
    {
        a1->unk36 = 1;
        a1->unk38 = sub_08145AA8;
    }
    for (j = 0; j < NUM_TREASURES; ++j) {
        if (a1->unk2[j])
            sub_0815604C(&a1->unk40[j]);
    }
    sub_0815604C(GetSpriteFromArray(a1, NUM_TREASURES));
    sub_08145324(a1);
}

static void sub_08144AA4(struct Unk_081434F8 *a1) {
    u8 j;

    if (sub_08144EB4(a1))
        sub_0814514C(a1);
    sub_08145574(a1);
    if (gPressedKeys & B_BUTTON)
        a1->unk38 = sub_08144B38;
    if (gPressedKeys & DPAD_LEFT && a1->unk37 & 1)
    {
        a1->unk36 = 0;
        a1->unk38 = sub_08145A50;
    }
    for (j = 0; j < NUM_TREASURES; ++j) {
        if (a1->unk2[j])
            sub_0815604C(&a1->unk40[j]);
    }
    sub_0815604C(GetSpriteFromArray(a1, NUM_TREASURES));
    sub_08145324(a1);
}

static void sub_08144B38(struct Unk_081434F8 *a1) {
    u8 i, j;
    struct Sprite *sprite;

    m4aMPlayAllStop();
    m4aSongNumStart(543);
    m4aSongNumStart(25);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08386664[gLanguage][0x1B];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (void *)0x600F340;
        gBgScrollRegs[1][0] = 0;
        gBgScrollRegs[1][1] = 0;
        LZ77UnCompVram(tileset, (u16 *)0x6004000);
        for (i = 0; i < height; ++i)
            DmaCopy16(3, tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    for (i = 0; i < 0xA; ++i)
        gKeysContinuedRepeatIntervals[i] = 5;
    a1->unk38 = sub_08143F88;
    for (j = 0; j < NUM_TREASURES; ++j) {
        if (a1->unk2[j])
            sub_0815604C(&a1->unk40[j]);
    }
    sub_0815604C(GetSpriteFromArray(a1, 0x28));
}

static bool32 sub_08144C1C(struct Unk_081434F8 *a1) {
    s16 r4 = a1->unk2E, r6 = a1->unk2E;
    u8 i, j;
    s32 ip = 0x2A;

    for (j = 0; j < NUM_TREASURES; ++j) {
        if (gUnk_08386A50[j].unk0 == gUnk_08386B28[r4][1])
            break;
    }
    if (a1->unk2[j]) {
        if (gPressedKeys & DPAD_UP) {
            if (++r4 > ip - 1)
                r4 = 0;
        } else if (gRepeatedKeys & DPAD_UP) {
            if (++r4 > ip - 1)
                r4 = ip - 1;
        } else if (gPressedKeys & DPAD_DOWN) {
            if (--r4 < 0)
                r4 = ip - 1;
        } else if (gRepeatedKeys & DPAD_DOWN) {
            if (--r4 < 0)
                r4 = 0;
        }
    } else {
        if (gPressedKeys & DPAD_UP) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386B28[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (++r4 > ip - 1)
                    r4 = 0;
            } while (1);
        } else if (gRepeatedKeys & DPAD_UP) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386B28[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (++r4 > ip - 1) {
                    r4 = ip - 1;
                    break;
                }
            } while (1);
        } else if (gPressedKeys & DPAD_DOWN) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386B28[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (--r4 < 0)
                    r4 = ip - 1;
            } while (1);
        } else if (gRepeatedKeys & DPAD_DOWN) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386B28[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (--r4 < 0) {
                    r4 = 0;
                    break;
                }
            } while (1);
        }
    }
    if (r4 == r6) {
        return FALSE;
    } else {
        a1->unk2E = r4;
        return TRUE;
    }
}

static bool32 sub_08144EB4(struct Unk_081434F8 *a1) {
    s16 r4 = a1->unk32, r6 = a1->unk32;
    u8 i, j;
    s32 ip = 0x17A;

    for (j = 0; j < NUM_TREASURES; ++j) {
        if (gUnk_08386A50[j].unk0 == gUnk_08386BD0[r4][1])
            break;
    }
    if (a1->unk2[j]) {
        if (gPressedKeys & DPAD_UP) {
            if (++r4 > ip - 1)
                r4 = 0;
        } else if (gRepeatedKeys & DPAD_UP) {
            if (++r4 > ip - 1)
                r4 = ip - 1;
        } else if (gPressedKeys & DPAD_DOWN) {
            if (--r4 < 0)
                r4 = ip - 1;
        } else if (gRepeatedKeys & DPAD_DOWN) {
            if (--r4 < 0)
                r4 = 0;
        }
    } else {
        if (gPressedKeys & DPAD_UP) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386BD0[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (++r4 > ip - 1)
                    r4 = 0;
            } while (1);
        } else if (gRepeatedKeys & DPAD_UP) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386BD0[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (++r4 > ip - 1) {
                    r4 = ip - 1;
                    break;
                }
            } while (1);
        } else if (gPressedKeys & DPAD_DOWN) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386BD0[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (--r4 < 0)
                    r4 = ip - 1;
            } while (1);
        } else if (gRepeatedKeys & DPAD_DOWN) {
            do {
                for (i = 0; i < NUM_TREASURES; ++i) {
                    if (gUnk_08386A50[i].unk0 == gUnk_08386BD0[r4][1])
                        break;
                }
                if (a1->unk2[i])
                    break;
                if (--r4 < 0) {
                    r4 = 0;
                    break;
                }
            } while (1);
        }
    }
    if (r4 == r6) {
        return FALSE;
    } else {
        a1->unk32 = r4;
        return TRUE;
    }
}

static void sub_0814514C(struct Unk_081434F8 *a1) {
    u32 v2;
    u8 i;
    s16 r4;
    struct Sprite *sprite;
    u8 val;

    if (!a1->unk36) {
        v2 = 0x31;
        r4 = a1->unk2E;
        for (i = 0; i < NUM_TREASURES; ++i) {
            if (gUnk_08386A50[i].unk0 == gUnk_08386B28[r4][1])
                break;
        }
        val = a1->unk2[i];
    } else {
        v2 = 0x34;
        r4 = a1->unk32;
        for (i = 0; i < NUM_TREASURES; ++i) {
            if (gUnk_08386A50[i].unk0 == gUnk_08386BD0[r4][1])
                break;
        }
        val = a1->unk2[i];
    }
    if (val) {
        u8 array[3], i;

        array[0] = r4 / 100;
        array[1] = r4 / 10 % 10;
        array[2] = r4 % 10;
        for (i = 0; i < 3; ++i) {
            sprite = &a1->unk40[v2 + i];
            sprite->animId = array[i] + 0x2A < 4u ? gUnk_08386838[gLanguage][array[i] + 0x2A][0] : gUnk_083868C8[array[i] + 0x26][0];
            sprite->variant = array[i] + 0x2A < 4u ? gUnk_08386838[gLanguage][array[i] + 0x2A][1] : gUnk_083868C8[array[i] + 0x26][1];
            sprite->palId = gUnk_08386A12[array[i] + 0x2A];
            sub_08155128(sprite);
        }
    } else {
        sprite = &a1->unk40[v2 + 2];
        sprite->animId = gUnk_083868C8[0x30][0];
        sprite->variant = gUnk_083868C8[0x30][1];
        sprite->palId = gUnk_08386A12[0x34];
        sub_08155128(sprite);
    }
}

static void sub_08145324(struct Unk_081434F8 *a1) {
    u8 i;
    struct Sprite *base = a1->unk40;

    sub_0815604C(&a1->unk40[0x2D]);
    sub_0815604C(&a1->unk40[0x2E]);
    if (a1->unk36 == 0) {
        sub_0815604C(&a1->unk40[0x37]);
        if (a1->unk37 & 2)
            sub_0815604C(&a1->unk40[0x30]);
    } else if (a1->unk36 == 1) {
        sub_0815604C(&a1->unk40[0x38]);
        if (a1->unk37 & 1)
            sub_0815604C(&a1->unk40[0x2F]);
    }
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (gUnk_08386A50[i].unk0 == gUnk_08386B28[a1->unk2E][1])
            break;
    }
    if (a1->unk2[i]) {
        if (a1->unk2E > 99)
            sub_0815604C(&base[0x31]);
        if (a1->unk2E > 9)
            sub_0815604C(&base[0x32]);
    }
    sub_0815604C(&base[0x33]);
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (gUnk_08386A50[i].unk0 == gUnk_08386BD0[a1->unk32][1])
            break;
    }
    if (a1->unk2[i]) {
        if (a1->unk32 > 99)
            sub_0815604C(&base[0x34]);
        if (a1->unk32 > 9)
            sub_0815604C(&base[0x35]);
    }
    sub_0815604C(&base[0x36]);
}

static bool32 sub_08145490(struct Unk_081434F8 *a1) {
    u8 i;

    if (!(gPressedKeys & A_BUTTON))
        return FALSE;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (gUnk_08386A50[i].unk0 == gUnk_08386B28[a1->unk2E][1])
            break;
    }
    if (a1->unk2[i]) {
        if (a1->unk2E != a1->unk30) {
            MPlayStart(&gUnk_030016A0, gSongTable[gUnk_08386B28[a1->unk2E][0]].header);
            a1->unk30 = a1->unk2E;
        } else if (gUnk_030016A0.status & 0x80000000) {
            MPlayStart(&gUnk_030016A0, gSongTable[gUnk_08386B28[a1->unk2E][0]].header);
            a1->unk30 = a1->unk2E;
        } else {
            MPlayStop(&gUnk_030016A0);
            a1->unk30 = -1;
        }
    } else {
        MPlayStop(&gUnk_030016A0);
        a1->unk30 = -1;
    }
    return TRUE;
}

static bool32 sub_08145574(struct Unk_081434F8 *a1) {
    u8 i;

    if (!(gPressedKeys & A_BUTTON))
        return FALSE;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (gUnk_08386A50[i].unk0 == gUnk_08386BD0[a1->unk32][1])
            break;
    }
    if (a1->unk2[i]) {
        MPlayStart(&gUnk_030016E0, gSongTable[gUnk_08386BD0[a1->unk32][0]].header);
        a1->unk34 = a1->unk32;
    } else {
        MPlayStop(&gUnk_030016E0);
        a1->unk34 = -1;
    }
    return TRUE;
}

static void sub_08145620(void) {
    struct Unk_081434F8 *var = TaskGetStructPtr(gCurTask);

    sub_081436D8(var);
    var->unk38(var);
}

static void sub_0814565C(struct Unk_081434F8 *a1) {
    u8 i;

    for (i = 0; i < 3; ++i)
        sub_08145B00(i);
    for (i = 0; i < 8; ++i)
        sub_08145B2C(i);
    a1->unk38 = sub_08145694;
}

static inline void LoadBgPaletteWithTransformation2(const u16 *src, u8 offset, u16 size) {
    LoadBgPaletteWithTransformation(src, offset, size);
}

static void sub_08145694(struct Unk_081434F8 *a1) {
    u16 idx = gUnk_08386664[gLanguage][0];

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation2(gUnk_082D7850[idx]->palette, 0, 0x100);
    else {
        DmaCopy16(3, gUnk_082D7850[idx]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    a1->unk38 = sub_08143E6C;
}

static void sub_08145718(struct Unk_081434F8 *a1) {
    u8 i;

    for (i = 0; i < 0x1F; ++i)
        sub_0814389C(a1, i);
    a1->unk38 = sub_08145740;
}

static void sub_08145740(struct Unk_081434F8 *a1) {
    u8 i;

    for (i = 0x1F; i < NUM_TREASURES; ++i)
        sub_0814389C(a1, i);
    sub_08143AF8(a1);
    sub_081439D8(a1);
    a1->unk38 = sub_08145774;
}

static void sub_08145774(struct Unk_081434F8 *a1) {
    a1->unk3C = 0;
    a1->unk38 = sub_08145784;
}

static void sub_08145784(struct Unk_081434F8 *a1) {
    u8 i;

    ++a1->unk3C;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk3C / 0xA;
    if (a1->unk3C > 9)
        a1->unk38 = sub_081457F4;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, 0x28));
    sub_08145974(a1);
}

static void sub_081457F4(struct Unk_081434F8 *a1) {
    u8 i;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk38 = sub_08143F88;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, 0x28));
    sub_08145974(a1);
}

static void sub_08145848(struct Unk_081434F8 *a1) {
    u8 i;

    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk3C = 0;
    a1->unk38 = sub_081458A0;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, 0x28));
    sub_08145974(a1);
}

static void sub_081458A0(struct Unk_081434F8 *a1) {
    u8 i;

    ++a1->unk3C;
    gBldRegs.bldY = 0x10 * a1->unk3C / 5;
    if (a1->unk3C > 4)
        a1->unk38 = sub_0814590C;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, 0x28));
    sub_08145974(a1);
}

static void sub_0814590C(struct Unk_081434F8 *a1) {
    m4aMPlayAllStop();
    DmaFill16(3, RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    DmaFill16(3, RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_08138F68();
}

static void sub_08145974(struct Unk_081434F8 *a1) {
    if (a1->unk2[a1->unk2A]) {
        switch (gUnk_08386A50[a1->unk2A].unk0 >> 8) {
        case 1:
            sub_0815604C(&a1->unk40[0x2A]);
            sub_0815604C(&a1->unk40[0x29]);
            if (gUnk_08386A50[a1->unk2A].unk0 & 0xFF)
                sub_0815604C(&a1->unk40[0x2B]);
            break;
        case 0x10:
            if (a1->unk37)
                sub_0815604C(&a1->unk40[0x29]);
            break;
        }
    }
}

static void sub_081459EC(struct Unk_081434F8 *a1) {
    struct Sprite *sprite = &a1->unk40[0x2C];

    sprite->x = 0x67;
    sprite->y = 0x81;
}

static void sub_081459FC(struct Unk_081434F8 *a1) {
    struct Sprite *sprite = &a1->unk40[0x2C];

    sprite->x = 0x70 - (9 * gSineTable[a1->unk3C * 0x800 / 0x1Eu & 0x3FF] >> 0xE);
    sprite->y = 0x12 * a1->unk3C / 0x1E + 0x81;
}

static void sub_08145A50(struct Unk_081434F8 *a1) {
    u8 i;

    a1->unk40[0x2D].x = 0x60;
    a1->unk40[0x2E].x = 0x60;
    a1->unk38 = sub_08144A0C;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, 0x28));
    sub_08145324(a1);
}

static void sub_08145AA8(struct Unk_081434F8 *a1) {
    u8 i;

    a1->unk40[0x2D].x = 0x90;
    a1->unk40[0x2E].x = 0x90;
    a1->unk38 = sub_08144AA4;
    for (i = 0; i < NUM_TREASURES; ++i) {
        if (a1->unk2[i])
            sub_0815604C(&a1->unk40[i]);
    }
    sub_0815604C(GetSpriteFromArray(a1, 0x28));
    sub_08145324(a1);
}

static void sub_08145B00(u8 a1) {
    DmaFill16(3, 0, (u16 *)0x6000000 + a1 * 0x2000, 0x4000);
}

static void sub_08145B2C(u8 a1) {
    DmaFill16(3, 0x1FF, (u16 *)0x6000000 + (0x1F - a1) * 0x400, 0x800);
}
