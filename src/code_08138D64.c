#include "data.h"
#include "code_08138D64.h"
#include "functions.h"
#include "main.h"
#include "bg.h"
#include "random.h"
#include "malloc_vram.h"
#include "multi_boot_util.h"
#include "multi_08019F28.h"
#include "save.h"
#include "palette.h"
#include "collection_room.h"
#include "title_screen.h"
#include "constants/languages.h"
#include "treasures.h"

struct Unk_08385CD4 {
    u16 animId;
    u16 variant;
    u16 numTiles;
}; /* size = 0x8 */

static s8 sub_0813914C(u8);
static void sub_08139218(struct Task *);
static void sub_0813A908(struct Unk_08138D64 *);
static void sub_0813A9DC(struct Unk_08138D64 *);
static void sub_0813AA4C(struct Unk_08138D64 *);
static void sub_0813AB40(struct Unk_08138D64 *);
static void sub_0813ACA0(struct Unk_08138D64 *);
static void sub_0813AD2C(struct Unk_08138D64 *);
static bool32 sub_0813AF5C(struct Unk_08385CD4 *, s8);
static bool32 sub_0813BCA0(struct Unk_08138D64 *, u8);
static void sub_0813BDDC(struct Unk_08138D64 *);
static void sub_0813BE58(struct Unk_08138D64 *);
static void sub_0813BF18(struct Unk_08138D64 *);
static void sub_0813BF94(struct Unk_08138D64 *);
static void sub_0813C064(struct Unk_08138D64 *);
static void sub_0813C260(struct Unk_08138D64 *);
static void sub_0813C414(struct Unk_08138D64 *);
static void sub_0813C5D0(struct Unk_08138D64 *);
static void sub_0813C6A0(struct Unk_08138D64 *);
static void sub_0813C734(struct Unk_08138D64 *);
static void sub_0813C844(struct Unk_08138D64 *);
static void sub_0813C8D8(struct Unk_08138D64 *);
static void sub_0813CDE4(struct Unk_08138D64 *);
static void sub_0813D364(struct Unk_08138D64 *);
static void sub_0813D4CC(struct Unk_08138D64 *);
static void sub_0813D550(struct Unk_08138D64 *);
static void sub_0813D674(struct Unk_08138D64 *);
static void sub_0813D70C(struct Unk_08138D64 *);
static void sub_0813D784(struct Unk_08138D64 *);
static void sub_0813DA34(struct Unk_08138D64 *);
static void sub_0813DB74(struct Unk_08138D64 *);
static void sub_0813DDA8(struct Unk_08138D64 *);
static void sub_0813E0F8(struct Unk_08138D64 *);
static void sub_0813E184(struct Unk_08138D64 *);
static void sub_0813E210(struct Unk_08138D64 *);
static void sub_0813E344(struct Unk_08138D64 *);
static void sub_0813E3F4(struct Unk_08138D64 *);
static void sub_0813E4A4(struct Unk_08138D64 *);
static void sub_0813E554(struct Unk_08138D64 *);
static void sub_0813E680(struct Unk_08138D64 *);
static void sub_0813E788(struct Unk_08138D64 *);
static void sub_0813EAC0(struct Unk_08138D64 *);
static void sub_0813EED0(struct Unk_08138D64 *);
static void sub_0813EF78(struct Unk_08138D64 *);
static void sub_0813EFF0(struct Unk_08138D64 *);
static void sub_0813F098(struct Unk_08138D64 *);
static void sub_0813F1D4(struct Unk_08138D64 *);
static void sub_0813F294(struct Unk_08138D64 *);
static void sub_0813F380(struct Unk_08138D64 *);
static void sub_0813F4D8(struct Unk_08138D64 *);
static void sub_0813F56C(struct Unk_08138D64 *);
static void sub_0813F61C(struct Unk_08138D64 *);
static void sub_0813F6CC(struct Unk_08138D64 *);
static void sub_0813F7BC(struct Unk_08138D64 *);
static void sub_0813F914(struct Unk_08138D64 *);
static void sub_0813F9A8(struct Unk_08138D64 *);
static void sub_0813FB18(struct Unk_08138D64 *);
static void sub_0813FBC8(struct Unk_08138D64 *);
static void sub_0813FC9C(struct Unk_08138D64 *);
static void sub_0813FDC4(struct Unk_08138D64 *);
static void sub_0813FE58(struct Unk_08138D64 *);
static void sub_0813FF6C(struct Unk_08138D64 *);
static void sub_08140198(struct Unk_08138D64 *);
static void sub_08140284(struct Unk_08138D64 *);
static void sub_08140A1C(struct Unk_08138D64 *);
static void sub_08140E40(struct Unk_08138D64 *);
static void sub_081411A4(struct Unk_08138D64 *);
static void sub_08141258(struct Unk_08138D64 *);
static void sub_08141300(struct Unk_08138D64 *);
static void sub_0814155C(struct Unk_08138D64 *);
static void sub_081416DC(struct Unk_08138D64 *);
static void sub_08141964(struct Unk_08138D64 *);
static void sub_08141E74(void);
static void sub_08141EC0(struct Unk_08138D64 *);
static void sub_08141F70(struct Unk_08138D64 *);
static void sub_08141FA4(struct Unk_08138D64 *);
static void sub_08141FC4(struct Unk_08138D64 *);
static void sub_08142018(struct Unk_08138D64 *);
static void sub_0814207C(struct Unk_08138D64 *);
static void sub_081420EC(struct Unk_08138D64 *);
static void sub_08142118(struct Unk_08138D64 *);
static void sub_08142148(struct Unk_08138D64 *);
static void sub_08142178(struct Unk_08138D64 *);
static void sub_0814218C(struct Unk_08138D64 *);
static void sub_081421A0(struct Unk_08138D64 *);
static void sub_081421B8(struct Unk_08138D64 *);
static void sub_081421F8(struct Unk_08138D64 *);
static void sub_08142228(struct Unk_08138D64 *);
static void sub_081422A8(struct Unk_08138D64 *);
static void sub_08142328(struct Unk_08138D64 *);
static void sub_0814238C(struct Unk_08138D64 *);
static void sub_081423F0(struct Unk_08138D64 *);
static void sub_08142460(struct Unk_08138D64 *);
static void sub_08142494(struct Unk_08138D64 *);
static void sub_081424C8(struct Unk_08138D64 *);
static void sub_08142518(struct Unk_08138D64 *);
static void sub_08142544(struct Unk_08138D64 *);
static void sub_08142590(struct Unk_08138D64 *);
static void sub_081425C0(struct Unk_08138D64 *);
static void sub_081425F0(struct Unk_08138D64 *);
static void sub_08142604(struct Unk_08138D64 *);
static void sub_08142624(struct Unk_08138D64 *);
static void sub_081426AC(struct Unk_08138D64 *);
static void sub_0814271C(struct Unk_08138D64 *);
static void sub_0814273C(struct Unk_08138D64 *);
static void sub_081427BC(struct Unk_08138D64 *);
static void sub_08142808(struct Unk_08138D64 *);
static void sub_08142848(struct Unk_08138D64 *);
static void sub_08142878(struct Unk_08138D64 *);
static void sub_0814288C(struct Unk_08138D64 *);
static void sub_081428A0(struct Unk_08138D64 *);
static void sub_0814291C(struct Unk_08138D64 *);
static void sub_0814293C(struct Unk_08138D64 *);
static void sub_08142984(struct Unk_08138D64 *);
static void sub_081429EC(struct Unk_08138D64 *);
static void sub_08142A54(struct Unk_08138D64 *);
static void sub_08142A9C(struct Unk_08138D64 *);
static void sub_08142AD4(struct Unk_08138D64 *);
static void sub_08142AE8(struct Unk_08138D64 *);
static void sub_08142B0C(struct Unk_08138D64 *);
static void sub_08142B48(struct Unk_08138D64 *);
static void sub_08142B80(struct Unk_08138D64 *);
static void sub_08142BCC(struct Unk_08138D64 *);
static void sub_08142BFC(struct Unk_08138D64 *);
static void sub_08142C10(struct Unk_08138D64 *);
static void sub_08142C24(struct Unk_08138D64 *);
static void sub_08142C44(struct Unk_08138D64 *);
static void sub_08142C9C(struct Unk_08138D64 *);
static void sub_08142CBC(struct Unk_08138D64 *);
static void sub_08142D04(struct Unk_08138D64 *);
static void sub_08142D68(struct Unk_08138D64 *);
static void sub_08142DD8(struct Unk_08138D64 *);
static void sub_08142E0C(struct Unk_08138D64 *);
static void sub_08142E4C(struct Unk_08138D64 *);
static void sub_08142E8C(struct Unk_08138D64 *);
static void sub_08142ED4(struct Unk_08138D64 *);
static void sub_08142F04(struct Unk_08138D64 *);
static void sub_08142F34(struct Unk_08138D64 *);
static void sub_08142F48(struct Unk_08138D64 *);
static void sub_08142F5C(struct Unk_08138D64 *);
static void sub_08142FD0(struct Unk_08138D64 *);
static void sub_08143010(struct Unk_08138D64 *);
static void sub_08143040(struct Unk_08138D64 *);
static void sub_081430C0(struct Unk_08138D64 *);
static void sub_08143140(struct Unk_08138D64 *);
static void sub_081431C0(struct Unk_08138D64 *);
static void sub_081431F0(struct Unk_08138D64 *);
static void sub_08143260(struct Unk_08138D64 *);
static void sub_08143290(struct Unk_08138D64 *);
static void sub_081432A4(struct Unk_08138D64 *);
static void sub_081432B8(struct Unk_08138D64 *);
static void sub_08143314(struct Unk_08138D64 *);
static void sub_08143370(struct Unk_08138D64 *);
static void sub_0814339C(struct Unk_08138D64 *);
static void sub_081433CC(struct Unk_08138D64 *);
static void sub_081433FC(struct Unk_08138D64 *);
static void sub_08143410(struct Unk_08138D64 *);
static void sub_08143424(struct Unk_08138D64 *);
static void sub_0814343C(u8);
static void sub_08143464(u8);
static bool32 sub_08143498(s8);
static void sub_081434AC(void);

static const u16 gUnk_08385BF8[] = {
    0x14, 0x14,
    0x3C, 0x14,
     0xF,  0xF,
    0x1E,  0xF,
     0xF, 0x14,
    0x14, 0x1E,
    0x1E, 0x32,
};

static const u16 gUnk_08385C14[NUM_LANGUAGES][0x10] = {
    [LANGUAGE_JAPANESE] = { 0xF0, 0x10F, 0x110, 0x111, 0x112, 0x113, 0x114, 0x133, 0x134, 0x135, 0x136, 0x137, 0x138, 0x143, 0x144, 0x29E },
    [LANGUAGE_ENGLISH]  = { 0xEC,  0xF7,  0xF8,  0xF9,  0xFA,  0xFB,  0xFC, 0x11B, 0x11C, 0x11D, 0x11E, 0x11F, 0x120, 0x13B, 0x13C, 0x2A1 },
    [LANGUAGE_GERMAN]   = { 0xEB,  0xF1,  0xF2,  0xF3,  0xF4,  0xF5,  0xF6, 0x115, 0x116, 0x117, 0x118, 0x119, 0x11A, 0x139, 0x13A, 0x2A4 },
    [LANGUAGE_FRENCH]   = { 0xEE, 0x103, 0x104, 0x105, 0x106, 0x107, 0x108, 0x127, 0x128, 0x129, 0x12A, 0x12B, 0x12C, 0x13F, 0x140, 0x2A7 },
    [LANGUAGE_SPANISH]  = { 0xED,  0xFD,  0xFE,  0xFF, 0x100, 0x101, 0x102, 0x121, 0x122, 0x123, 0x124, 0x125, 0x126, 0x13D, 0x13E, 0x2AA },
    [LANGUAGE_ITALIAN]  = { 0xEF, 0x109, 0x10A, 0x10B, 0x10C, 0x10D, 0x10E, 0x12D, 0x12E, 0x12F, 0x130, 0x131, 0x132, 0x141, 0x142, 0x2AD },
};

static const struct Unk_08385CD4 gUnk_08385CD4[NUM_LANGUAGES][42] = {
    [LANGUAGE_JAPANESE] = {
        { 0x34F,  0x3, 0x39 },
        { 0x34F,  0x4, 0x39 },
        { 0x34F,  0x5, 0x39 },
        { 0x34F,  0x6, 0x39 },
        { 0x34F,  0x7, 0x39 },
        { 0x34F,  0x8, 0x39 },
        { 0x34F,  0x0, 0x4E },
        { 0x34F,  0x1, 0x4E },
        { 0x34F,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x356,  0x0, 0x42 },
        { 0x356,  0x1, 0x42 },
        { 0x356,  0x2, 0x42 },
        { 0x356,  0x3, 0x42 },
        { 0x356,  0x4, 0x54 },
        { 0x356,  0x5, 0xC0 },
        { 0x356,  0x6, 0xC0 },
        { 0x356,  0x7, 0x38 },
        { 0x364,  0x2, 0x10 },
        { 0x364,  0x3, 0x10 },
        { 0x364,  0x4, 0x10 },
        { 0x364,  0x5, 0x10 },
        { 0x364,  0x6, 0x28 },
        { 0x364,  0x0, 0x40 },
        { 0x364,  0x1, 0x40 },
        { 0x364,  0x7, 0x39 },
        { 0x364,  0x8, 0x39 },
        { 0x364,  0x9, 0x39 },
        { 0x364,  0xA, 0x39 },
        { 0x356,  0x8, 0x42 },
        { 0x356,  0x9, 0x42 },
        { 0x356,  0xA, 0x42 },
        { 0x356,  0xB, 0x42 },
    },
    [LANGUAGE_ENGLISH]  = {
        { 0x350,  0x3, 0x39 },
        { 0x350,  0x4, 0x39 },
        { 0x350,  0x5, 0x39 },
        { 0x350,  0x6, 0x39 },
        { 0x350,  0x7, 0x39 },
        { 0x350,  0x8, 0x39 },
        { 0x350,  0x0, 0x4E },
        { 0x350,  0x1, 0x4E },
        { 0x350,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x357,  0x0, 0x42 },
        { 0x357,  0x1, 0x42 },
        { 0x357,  0x2, 0x42 },
        { 0x357,  0x3, 0x42 },
        { 0x357,  0x4, 0x54 },
        { 0x357,  0x5, 0xC0 },
        { 0x357,  0x6, 0xC0 },
        { 0x357,  0x7, 0x34 },
        { 0x360,  0x2, 0x10 },
        { 0x360,  0x3, 0x10 },
        { 0x360,  0x4, 0x10 },
        { 0x360,  0x5, 0x10 },
        { 0x360,  0x6, 0x28 },
        { 0x360,  0x0, 0x40 },
        { 0x360,  0x1, 0x40 },
        { 0x360,  0x7, 0x39 },
        { 0x360,  0x8, 0x39 },
        { 0x360,  0x9, 0x39 },
        { 0x360,  0xA, 0x39 },
        { 0x357,  0x8, 0x42 },
        { 0x357,  0x9, 0x42 },
        { 0x357,  0xA, 0x42 },
        { 0x357,  0xB, 0x42 },
    },
    [LANGUAGE_GERMAN]   = {
        { 0x351,  0x3, 0x39 },
        { 0x351,  0x4, 0x39 },
        { 0x351,  0x5, 0x39 },
        { 0x351,  0x6, 0x39 },
        { 0x351,  0x7, 0x39 },
        { 0x351,  0x8, 0x39 },
        { 0x351,  0x0, 0x4E },
        { 0x351,  0x1, 0x4E },
        { 0x351,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x358,  0x0, 0x42 },
        { 0x358,  0x1, 0x42 },
        { 0x358,  0x2, 0x42 },
        { 0x358,  0x3, 0x42 },
        { 0x358,  0x4, 0x54 },
        { 0x358,  0x5, 0xC0 },
        { 0x358,  0x6, 0xC0 },
        { 0x358,  0x7, 0x38 },
        { 0x35F,  0x2, 0x10 },
        { 0x35F,  0x3, 0x10 },
        { 0x35F,  0x4, 0x10 },
        { 0x35F,  0x5, 0x10 },
        { 0x35F,  0x6, 0x28 },
        { 0x35F,  0x0, 0x40 },
        { 0x35F,  0x1, 0x40 },
        { 0x35F,  0x7, 0x39 },
        { 0x35F,  0x8, 0x39 },
        { 0x35F,  0x9, 0x39 },
        { 0x35F,  0xA, 0x39 },
        { 0x358,  0x8, 0x42 },
        { 0x358,  0x9, 0x42 },
        { 0x358,  0xA, 0x42 },
        { 0x358,  0xB, 0x42 },
    },
    [LANGUAGE_FRENCH]   = {
        { 0x352,  0x3, 0x39 },
        { 0x352,  0x4, 0x39 },
        { 0x352,  0x5, 0x39 },
        { 0x352,  0x6, 0x39 },
        { 0x352,  0x7, 0x39 },
        { 0x352,  0x8, 0x39 },
        { 0x352,  0x0, 0x4E },
        { 0x352,  0x1, 0x4E },
        { 0x352,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x359,  0x0, 0x42 },
        { 0x359,  0x1, 0x42 },
        { 0x359,  0x2, 0x42 },
        { 0x359,  0x3, 0x42 },
        { 0x359,  0x4, 0x54 },
        { 0x359,  0x5, 0xC0 },
        { 0x359,  0x6, 0xC0 },
        { 0x359,  0x7, 0x38 },
        { 0x362,  0x2, 0x10 },
        { 0x362,  0x3, 0x10 },
        { 0x362,  0x4, 0x10 },
        { 0x362,  0x5, 0x10 },
        { 0x362,  0x6, 0x28 },
        { 0x362,  0x0, 0x40 },
        { 0x362,  0x1, 0x40 },
        { 0x362,  0x7, 0x39 },
        { 0x362,  0x8, 0x39 },
        { 0x362,  0x9, 0x39 },
        { 0x362,  0xA, 0x39 },
        { 0x359,  0x8, 0x42 },
        { 0x359,  0x9, 0x42 },
        { 0x359,  0xA, 0x42 },
        { 0x359,  0xB, 0x42 },
    },
    [LANGUAGE_SPANISH]  = {
        { 0x353,  0x3, 0x39 },
        { 0x353,  0x4, 0x39 },
        { 0x353,  0x5, 0x39 },
        { 0x353,  0x6, 0x39 },
        { 0x353,  0x7, 0x39 },
        { 0x353,  0x8, 0x39 },
        { 0x353,  0x0, 0x4E },
        { 0x353,  0x1, 0x4E },
        { 0x353,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x35A,  0x0, 0x42 },
        { 0x35A,  0x1, 0x42 },
        { 0x35A,  0x2, 0x42 },
        { 0x35A,  0x3, 0x42 },
        { 0x35A,  0x4, 0x54 },
        { 0x35A,  0x5, 0xC0 },
        { 0x35A,  0x6, 0xC0 },
        { 0x35A,  0x7, 0x34 },
        { 0x361,  0x2, 0x10 },
        { 0x361,  0x3, 0x10 },
        { 0x361,  0x4, 0x10 },
        { 0x361,  0x5, 0x10 },
        { 0x361,  0x6, 0x28 },
        { 0x361,  0x0, 0x40 },
        { 0x361,  0x1, 0x40 },
        { 0x361,  0x7, 0x39 },
        { 0x361,  0x8, 0x39 },
        { 0x361,  0x9, 0x39 },
        { 0x361,  0xA, 0x39 },
        { 0x35A,  0x8, 0x42 },
        { 0x35A,  0x9, 0x42 },
        { 0x35A,  0xA, 0x42 },
        { 0x35A,  0xB, 0x42 },
    },
    [LANGUAGE_ITALIAN]  = {
        { 0x354,  0x3, 0x39 },
        { 0x354,  0x4, 0x39 },
        { 0x354,  0x5, 0x39 },
        { 0x354,  0x6, 0x39 },
        { 0x354,  0x7, 0x39 },
        { 0x354,  0x8, 0x39 },
        { 0x354,  0x0, 0x4E },
        { 0x354,  0x1, 0x4E },
        { 0x354,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x35B,  0x0, 0x42 },
        { 0x35B,  0x1, 0x42 },
        { 0x35B,  0x2, 0x42 },
        { 0x35B,  0x3, 0x42 },
        { 0x35B,  0x4, 0x54 },
        { 0x35B,  0x5, 0xC0 },
        { 0x35B,  0x6, 0xC0 },
        { 0x35B,  0x7, 0x34 },
        { 0x363,  0x2, 0x10 },
        { 0x363,  0x3, 0x10 },
        { 0x363,  0x4, 0x10 },
        { 0x363,  0x5, 0x10 },
        { 0x363,  0x6, 0x28 },
        { 0x363,  0x0, 0x40 },
        { 0x363,  0x1, 0x40 },
        { 0x363,  0x7, 0x39 },
        { 0x363,  0x8, 0x39 },
        { 0x363,  0x9, 0x39 },
        { 0x363,  0xA, 0x39 },
        { 0x35B,  0x8, 0x42 },
        { 0x35B,  0x9, 0x42 },
        { 0x35B,  0xA, 0x42 },
        { 0x35B,  0xB, 0x42 },
    },
};

static const struct Unk_08385CD4 gUnk_083864B4[] = {
    { 0x355, 0x3, 0x1 },
    { 0x355, 0x4, 0x1 },
    { 0x355, 0x5, 0x1 },
    { 0x355, 0x6, 0x1 },
    { 0x355, 0x7, 0x1 },
    { 0x355, 0x8, 0x1 },
    { 0x355, 0x9, 0x1 },
    { 0x355, 0xA, 0x1 },
    { 0x355, 0xB, 0x1 },
    { 0x355, 0xC, 0x1 },
};

static const s16 gUnk_08386504[] = {
    0x10, 0x28, 0x40,
};

static const s16 gUnk_0838650A[] = {
    0x10, 0x25, 0x3A, 0x4F,
};

static const u8 gUnk_08386512[] = {
    0x13, 0x15, 0x17, 0x19,
};

static const u32 gUnk_08386518[3] = {
    0, 1, 2,
};

static const struct Unk_08385CD4 gUnk_08386524[5] = {
    { 0x355,  0x0, 0x0 },
    { 0x355,  0xD, 0x6 },
    { 0x355, 0x17, 0x0 },
    { 0x355, 0x18, 0x0 },
    { 0x355, 0x19, 0x0 },
};

static const u8 gUnk_0838654C[5] = {
    3, 4, 5, 6, 7,
};

static const u8 gUnk_08386551[3] = {
    0x10, 0x15, 0x1A,
};

static const u16 gUnk_08386554[3] = {
    0x1B, 0x23, 0x2B,
};

static const u16 gUnk_0838655A[3] = {
    0x23, 0x2B, 0x33,
};

static const u16 gUnk_08386560[3] = {
    0x27, 0x2F, 0x37,
};

static const struct Unk_08385CD4 gUnk_08386568[3] = {
    { 0x35C, 0x0, 0x0 },
    { 0x35C, 0x1, 0x0 },
    { 0x35C, 0x2, 0x0 },
};

static const u8 gUnk_08386580[3] = {
    3, 4, 6,
};

static const u8 gUnk_08386583[4] = {
    0x10, 0x12, 0x14, 0x16,
};

static const u16 gUnk_08386588[4] = {
    0x1B, 0x23, 0x2B, 0x33,
};

static const u16 gUnk_08386590[3][2] = {
    { 0x355,  0xD },
    { 0x355, 0x17 },
    { 0x355, 0x18 },
};

static const s16 gUnk_0838659C[4][4] = {
    { 0x78, 0x3C, 0x46, 0x4E },
    { 0x78, 0x3C, 0xAA, 0x4E },
    { 0x78, 0x3C, 0xAA, 0x4E },
    { 0x78, 0x3C, 0xAA, 0x4E },
};

static const s16 gUnk_083865BC[4][4] = {
    { 0x46, 0x4E, 0x2A, 0x60 },
    { 0xAA, 0x4E, 0x78, 0x60 },
    { 0xAA, 0x4E, 0xC6, 0x60 },
    { 0xAA, 0x4E, 0xC6, 0x60 },
};

static const s16 gUnk_083865DC[4][4] = {
    { 0x2A, 0x60, 0x1E, 0x6B },
    { 0x78, 0x60, 0x5A, 0x6B },
    { 0xC6, 0x60, 0x96, 0x6B },
    { 0xC6, 0x60, 0xD2, 0x6B },
};

static const u16 gUnk_083865FC[] = {
    0xE3, 0xE4,
    0xE5, 0xE6,
    0xE7, 0xE8,
    0xE9, 0xEA,
    0xE9, 0xE8,
    0xE7, 0xE6,
    0xE5, 0xE4,
};

static const s8 gUnk_08386618[] = {
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1, -1,
    -1, -1, -1,  0,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  1,
     1,  1,  1,  0,
     0
};

static const u8 gUnk_08386659[] = { 1, 2, 2 };

extern const u8 gUnk_08D62511[];

void sub_08138B44(void) {
    u32 bgCnt[3];
    u16 i;
    struct Task *t;
    struct Unk_08138D64 *tmp, *var;

    memcpy(bgCnt, gUnk_08386518, sizeof(gUnk_08386518));
    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    t = TaskCreate(sub_08141E74, sizeof(struct Unk_08138D64), 0x1000, TASK_USE_IWRAM, sub_08139218);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08138D64));
    var->unk9CC = sub_08141EC0;
    var->unkBDC = sub_0813BDDC;
    var->unk0 = 0;
    var->unk1 = 0;
    var->unkBE3 = 0xA;
    var->unkBE6 = (Rand32() % 0x100) + 0x12C;
    var->unkA = var->unkB = gSaveID > 2 ? 0 : gSaveID;
    for (i = 0; i < 3; ++i) {
        gSaveID = i;
        if (!WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, i)) {
            gUnk_0203ACB0[i] = var->unk7[i] = sub_0813914C(i);
        } else {
            gUnk_0203ACB0[i] = var->unk7[i] = -1;
            ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
            UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, i);
        }
        if (var->unk7[i] == 100)
            var->unk4[i] = 1;
        else
            var->unk4[i] = 0;
    }
    gSaveID = var->unkA;
    m4aSongNumStartOrChange(MUS_MENU);
}

void sub_08138D64(u8 a1) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct Unk_08138D64 *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, gUnk_08386518, sizeof(gUnk_08386518));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    m4aSongNumStartOrChange(MUS_MENU);
    t = TaskCreate(sub_08141E74, sizeof(struct Unk_08138D64), 0x1000, TASK_USE_IWRAM, sub_08139218);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08138D64));
    var->unkBDC = sub_0813BDDC;
    var->unkB = 0;
    var->unkA = 0;
    var->unk0 = 8;
    var->unk1 = 8;
    var->unk9CA = var->unk9CB = a1;
    var->unk3A4 = var->unk3A5 = 1;
    var->unkBE3 = 0xF;
    var->unkBE6 = (Rand32() % 0x100) + 0x12C;
    var->unkA = var->unkB = gSaveID > 2 ? 0 : gSaveID;
    for (i = 0; i < 3; ++i) {
        var->unk7[i] = gUnk_0203ACB0[i];
        if (var->unk7[i] == 100)
            var->unk4[i] = 1;
        else
            var->unk4[i] = 0;
    }
    var->unk9CC = sub_08141EC0;
}

void sub_08138F68(void) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct Unk_08138D64 *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, gUnk_08386518, sizeof(gUnk_08386518));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    m4aSongNumStartOrChange(MUS_MENU);
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    t = TaskCreate(sub_08141E74, sizeof(struct Unk_08138D64), 0x1000, TASK_USE_IWRAM, sub_08139218);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08138D64));
    var->unkBDC = sub_0813BDDC;
    var->unkB = 0;
    var->unkA = 0;
    var->unk0 = 0xA;
    var->unk1 = 0xA;
    var->unk3A4 = var->unk3A5 = 2;
    var->unkBE3 = 0xA;
    var->unkBE6 = (Rand32() % 0x100) + 0x12C;
    var->unkA = var->unkB = gSaveID > 2 ? 0 : gSaveID;
    for (i = 0; i < 3; ++i) {
        var->unk7[i] = gUnk_0203ACB0[i];
        if (var->unk7[i] == 100)
            var->unk4[i] = 1;
        else
            var->unk4[i] = 0;
    }
    var->unk9CC = sub_08141EC0;
}

static s8 sub_0813914C(u8 a1 __attribute__((unused))) {
    s8 r6 = 0x27 * NumChestsCollected() / 0x54;
    u16 r5 = 0, i;

    for (i = 0; i < 0x110; ++i) {
        if (sub_08002A5C(gUnk_08932F8C[i]))
            ++r5;
    }
    r6 += 0x25 * r5 / 0x110;
    r5 = 0;
    for (i = 1; i < 0x10; ++i) {
        if (*sub_08002888(SUB_08002888_ENUM_UNK_3, i, 0))
            ++r5;
    }
    r6 += r5;
    r6 += NumShardsCollected();
    if (gAIKirbyState >= AI_KIRBY_STATE_UNK1)
        ++r6;
    return r6;
}

static void sub_08139218(struct Task *t) {
    u8 i;
    struct Unk_08138D64 *var = TaskGetStructPtr(t);

    if (var->unk28C.tilesVram) {
        VramFree(var->unk28C.tilesVram);
        var->unk28C.tilesVram = 0;
    }
    if (var->unkC.tilesVram) {
        VramFree(var->unkC.tilesVram);
        var->unkC.tilesVram = 0;
    }
    sub_0813A908(var);
    sub_0813AA4C(var);
    sub_0813A9DC(var);
    sub_0813AB40(var);
    sub_0813ACA0(var);
    sub_0813AD2C(var);
    for (i = 0; i < 0xA; ++i)
        gKeysContinuedRepeatIntervals[i] = 8;
}

static void sub_081392A0(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0].numTiles), 0x780,
        gUnk_08385CD4[gLanguage][0].animId, gUnk_08385CD4[gLanguage][0].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0);
    sprite = &a1->unk28C;
    SpriteInitNoPointer2(&a1->unk28C, VramMalloc(0x10), 0x280, 0x355, 2, 0, 0xFF, 0x10, 1, -0x20, 0x10, 0);
}

static void sub_08139368(struct Unk_08138D64 *a1) {
    u8 i;
    struct Sprite *sprite;
    u8 sp00[3];
    u8 sp04[3];
    u8 sp08[3];
    u32 sp0C[3];
    union {
        struct Unk_08385CD4 pat1[5];
        struct {
            u8 unk0[3];
            u16 unk4[3];
        } pat2;
        u16 pat3[3];
    } sp18;
    u8 sp40[5];
    struct Unk_08385CD4 sp48;

    for (i = 0; i < 3; ++i) {
        if (a1->unkA == i) {
            sp00[i] = 2;
            sp04[i] = 2;
            sp08[i] = i + 4;
            sp0C[i] = 0;
        } else {
            sp00[i] = 3;
            sp04[i] = 3;
            sp08[i] = 7;
            sp0C[i] = 0x40000;
        }
    }
    memcpy(sp18.pat1, gUnk_08386524, sizeof(gUnk_08386524));
    memcpy(sp40, gUnk_0838654C, sizeof(gUnk_0838654C));
    for (i = 0; i < 5; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, 0, 0x3FC0, sp18.pat1[i].animId, sp18.pat1[i].variant,
            0, 0xFF, 0x10, sp40[i], -0x40, -0x40, 0);
    }
    memcpy(sp18.pat2.unk0, gUnk_08386551, sizeof(gUnk_08386551));
    memcpy(sp18.pat2.unk4, gUnk_08386554, sizeof(gUnk_08386554));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk34[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i+6].numTiles), sp18.pat2.unk0[i] * 0x40, gUnk_08385CD4[gLanguage][i+6].animId,
            gUnk_08385CD4[gLanguage][i+6].variant, 0, 0xFF, 0x10, sp00[i], 0xF0, sp18.pat2.unk4[i], sp0C[i]);
    }
    memcpy(sp18.pat3, gUnk_0838655A, sizeof(gUnk_0838655A));
    for (i = 0; i < 3; ++i) {
        if (a1->unk7[i] <= 0) {
            sprite = &a1->unk124[i][2];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[0].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[0].animId, gUnk_083864B4[0].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A8, sp18.pat3[i], sp0C[i]);
            continue;
        }
        if (a1->unk7[i] == 100) {
            sprite = &a1->unk124[i][0];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[1].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[1].animId, gUnk_083864B4[1].variant,
                0, 0xFF, 0x10, sp04[i], 0x198, sp18.pat3[i], sp0C[i]);
        }
        if (a1->unk7[i] >= 10) {
            u8 tens = a1->unk7[i] / 10 % 10;

            sprite = &a1->unk124[i][1];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[tens].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[tens].animId, gUnk_083864B4[tens].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A0, sp18.pat3[tens], sp0C[i]);
        }
        {
            u8 ones = a1->unk7[i] % 10;

            sprite = &a1->unk124[i][2];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[ones].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[ones].animId, gUnk_083864B4[ones].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A8, sp18.pat3[ones], sp0C[i]);
        }
    }
    memcpy(sp18.pat3, gUnk_08386560, sizeof(gUnk_08386560));
    for (i = 0; i < 3; ++i) {
        if (sub_08143498(a1->unk7[i])) {
            sub_0813AF5C(&sp48, a1->unk7[i]);
            sprite = &a1->unkAC[i];
            SpriteInitNoPointer2(sprite, VramMalloc(sp48.numTiles), (5 * i + 0xF) * 0x40, sp48.animId, sp48.variant, 0,
                0xFF, 0x10, sp08[i], 0x143, sp18.pat3[i], 0x40000);
        }
    }
}

static void sub_081397FC(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp00[4];
    u32 sp04[4];
    union {
        struct Unk_08385CD4 pat1[3];
        struct {
            u8 unk0[4];
            u16 unk4[4];
        } pat2;
    } sp14;
    u8 sp2C[3];

    for (i = 0; i < 4; ++i) {
        if (a1->unk3A4 == i) {
            sp00[i] = 2;
            sp04[i] = 0;
        } else {
            sp00[i] = 3;
            sp04[i] = 0x40000;
        }
    }
    memcpy(sp14.pat1, gUnk_08386568, sizeof(gUnk_08386568));
    memcpy(sp2C, gUnk_08386580, sizeof(gUnk_08386580));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, VramMalloc(sp14.pat1[i].numTiles), 0x3FC0, sp14.pat1[i].animId, sp14.pat1[i].variant,
            0, 0xFF, 0x10, sp2C[i], -0x40, -0x40, 0);
    }
    memcpy(sp14.pat2.unk0, gUnk_08386583, sizeof(gUnk_08386583));
    memcpy(sp14.pat2.unk4, gUnk_08386588, sizeof(gUnk_08386588));
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i+0x13].numTiles), sp14.pat2.unk0[i] * 0x40, gUnk_08385CD4[gLanguage][i+0x13].animId,
            gUnk_08385CD4[gLanguage][i+0x13].variant, 0, 0xFF, 0x10, sp00[i], 0xF0, sp14.pat2.unk4[i], sp04[i]);
    }
    sprite = &a1->unk37C;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x17].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x17].animId,
        gUnk_08385CD4[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}

static void sub_08139A3C(struct Unk_08138D64 *a1) {
    u8 i;
    u8 r6;
    struct Sprite *sprite;

    r6 = a1->unkA;
    sprite = &a1->unk2B4;
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x35C, 3, 0, 0xFF, 0x10, 6, -0x40, -0x40, 0);
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x355, 1, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite = &a1->unk3A8;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x18].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x18].animId,
        gUnk_08385CD4[gLanguage][0x18].variant, 0, 0xFF, 0x10, 5, 0x78, 0x5C, 0);
    sprite = &a1->unk3D0;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x1A].numTiles), 0x1C0, gUnk_08385CD4[gLanguage][0x1A].animId,
        gUnk_08385CD4[gLanguage][0x1A].variant, 0, 0xFF, 0x10, 7, 0x74, 0x56, 0);
    {
        union {
            struct Unk_08385CD4 pat1[3];
            u16 pat2[3][2];
        } sp00 = {
            .pat1 = {
                { gUnk_08385CD4[gLanguage][6].animId, gUnk_08385CD4[gLanguage][6].variant, gUnk_08385CD4[gLanguage][6].numTiles },
                { gUnk_08385CD4[gLanguage][7].animId, gUnk_08385CD4[gLanguage][7].variant, gUnk_08385CD4[gLanguage][7].numTiles },
                { gUnk_08385CD4[gLanguage][8].animId, gUnk_08385CD4[gLanguage][8].variant, gUnk_08385CD4[gLanguage][8].numTiles },
            },
        };
        struct Unk_08385CD4 sp30;

        sprite = a1->unk34 + r6;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00.pat1[r6].numTiles), 0x540, sp00.pat1[r6].animId, sp00.pat1[r6].variant, 0, 0xFF, 0x10, 2, 0xF0, 0x1B, 0);
        a1->unk124[r6][2].palId = 2;
        a1->unk124[r6][1].palId = 2;
        a1->unk124[r6][0].palId = 2;
        if (a1->unk7[r6] == 100) {
            sprite = &a1->unk124[r6][0];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[1].numTiles), 0x500, gUnk_083864B4[1].animId, gUnk_083864B4[1].variant,
                0, 0xFF, 0x10, 2, 0x198, 0x23, 0);
        }
        if (a1->unk7[r6] >= 10) {
            u8 tens = a1->unk7[r6] / 10 % 10;
    
            sprite = &a1->unk124[r6][1];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[tens].numTiles), 0x500, gUnk_083864B4[tens].animId, gUnk_083864B4[tens].variant,
                0, 0xFF, 0x10, 2, 0x1A0, 0x23, 0);
        }
        {
            u8 ones = a1->unk7[r6] % 10;
    
            sprite = &a1->unk124[r6][2];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[ones].numTiles), 0x500, gUnk_083864B4[ones].animId, gUnk_083864B4[ones].variant,
                0, 0xFF, 0x10, 2, 0x1A8, 0x23, 0);
        }
        memcpy(sp00.pat2, gUnk_08386590, sizeof(gUnk_08386590));
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, 0, 0x3FC0, sp00.pat2[r6][0], sp00.pat2[r6][1], 0, 0xFF, 0x10, 4, -0x40, -0x40, 0);
        if (sub_08143498(a1->unk7[r6])) {
            sub_0813AF5C(&sp30, a1->unk7[r6]);
            sprite = &a1->unkAC[r6];
            SpriteInitNoPointer2(sprite, VramMalloc(sp30.numTiles), 0x500, sp30.animId, sp30.variant, 0, 0xFF, 0x10, 4, 0x143, 0x27, 0x40000);
        }
        for (i = 0; i < 3; ++i) {
            sprite = &a1->unk3F8[i];
            SpriteInitNoPointer2(sprite, VramMalloc(0x90), 0x140, 0x35D, 0, 0, 0xFF, 0x10, 8, 0, 0, 0);
        }
    }
}

static void sub_08139F58(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk478;
    SpriteInitNoPointer2(sprite, VramMalloc(0x54), 0x640, 0x35E, 0, 0, 0xFF, 0x10, 2, 0x78, 0x3C, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4A0;
    SpriteInitNoPointer2(sprite, VramMalloc(0x10), 0x600, 0x35E, 3, 0, 0xFF, 0x10, 3, 0x78, 0x3C, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4C8;
    SpriteInitNoPointer2(sprite, VramMalloc(0x32), 0x640, 0x35E, 1, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4F0;
    SpriteInitNoPointer2(sprite, VramMalloc(8), 0x600, 0x35E, 4, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk518;
    SpriteInitNoPointer2(sprite, VramMalloc(0x28), 0x640, 0x35E, 2, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk540;
    SpriteInitNoPointer2(sprite, VramMalloc(8), 0x600, 0x35E, 5, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
}

static void sub_0813A110(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i, j;
    u32 vram[2];

    sprite = &a1->unk568;
    SpriteInitNoPointer2(sprite, VramMalloc(0x12), 0x7C0, 0x35E, 6, 0, 0xFF, 0x10, 2, 0x82, 0x12, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk590;
    SpriteInitNoPointer2(sprite, VramMalloc(0x38), 0x7C0, 0x35E, 7, 0, 0xFF, 0x10, 2, 0x7A, 0x30, 0x40000);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk5B8;
    SpriteInitNoPointer2(sprite, VramMalloc(0x93), 0x7C0, 0x35E, 8, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0x40000);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk5E0;
    SpriteInitNoPointer2(sprite, VramMalloc(0xF0), 0x7C0, 0x35E, 9, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0x40000);
    sprite->unk8 |= 0x80000;
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk630[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x1B].numTiles), 0x3C0,
            gUnk_08385CD4[gLanguage][i + 0x1B].animId, gUnk_08385CD4[gLanguage][i + 0x1B].variant, 0, 0xFF, 0x10, 4, a1->unk4C8.x, a1->unk4C8.y + 0x10, 0);
        sprite->unk8 |= 0x80000;
    }
    sprite = &a1->unk608;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x1F].numTiles), 0x3C0,
        gUnk_08385CD4[gLanguage][0x1F].animId, gUnk_08385CD4[gLanguage][0x1F].variant, 0, 0xFF, 0x10, 4, 0xC4, 0x30, 0);
    sprite->unk8 |= 0x80000;
    vram[0] = VramMalloc(gUnk_08385CD4[gLanguage][0x20].numTiles);
    vram[1] = VramMalloc(gUnk_08385CD4[gLanguage][0x21].numTiles);
    for (j = 0; j < 3; ++j) {
        for (i = 0; i < 2; ++i) {
            sprite = &a1->unk6D0[j][i];
            SpriteInitNoPointer2(sprite, vram[i], 0x3C0, gUnk_08385CD4[gLanguage][i + 0x20].animId, gUnk_08385CD4[gLanguage][i + 0x20].variant,
                0, 0xFF, 0x10, 4, i * 0x40 + 0xAD, 0x5E, j | 0x20 | 0x40000);
            sprite->unk8 |= 0x80000;
        }
    }
}

static void sub_0813A464(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
#ifdef NONMATCHING
    u32 r0;
#else
    register u32 r0 asm("r0");
#endif
    s8 r4;
    u8 i, j;
    s8 var;
    u8 sp00[4];
    u8 sp04[4];
    u32 sp08[4];
    u8 sp28[3];
    s16 sp2C;

    sp00[0] = 2;
    sp04[0] = 2;
    sp08[0] = 0;
    for (i = 1; i < 4; ++i) {
        sp00[i] = 3;
        sp04[i] = 3;
        sp08[i] = 0x40000;
    }
    sprite = &a1->unk2B4;
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x35E, 0xA, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x22].numTiles), 0x500,
            gUnk_08385CD4[gLanguage][i + 0x22].animId, gUnk_08385CD4[gLanguage][i + 0x22].variant, 0, 0xFF, 0x10, sp00[i], 0x58, 0x15 * i + 0x1B, sp08[i]);
    }
    sp2C = 0xC8;
    for (i = 0; i < 4; ++i) {
        var = a1->unk9C4[i];
        if (var < 0) {
            sp28[0] = sp28[1] = sp28[2] = 0;
        } else {
            sp28[0] = var / 100;
            r4 = var - 100 * sp28[0];
            sp28[1] = r4 / 10;
            r0 = (u8)(r4 - 10 * sp28[1]);
            sp28[2] = r0;
        }
        for (j = 0; j < 3; ++j) {
            sprite = &a1->unk7E4[i][j];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[sp28[j]].numTiles), 0x4C0,
                gUnk_083864B4[sp28[j]].animId, gUnk_083864B4[sp28[j]].variant, 0, 0xFF, 0x10, sp04[i], 8 * j + sp2C, 0x15 * i + 0x22, sp08[i]);
        }
    }
}

#ifdef UBFIX
static void sub_0813A6D0(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp1C = a1->unk4[a1->unkA];
    // doesn't match with a union
    union {
        struct Unk_08385CD4 pat1[3];
        struct {
            u8 unk0[4];
            u8 unk4[4];
            u32 unk8[4];
        } pat2;
    } sp00;
    u8 sp18[3];

    memcpy(sp00.pat1, gUnk_08386568, sizeof(gUnk_08386568));
    memcpy(sp18, gUnk_08386580, sizeof(gUnk_08386580));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00.pat1[i].numTiles), 0x3FC0, sp00.pat1[i].animId, sp00.pat1[i].variant, 0, 0xFF, 0x10, sp18[i], -0x40, -0x40, 0);
    }
    memcpy(sp00.pat2.unk0, gUnk_08386583, sizeof(gUnk_08386583));
    for (i = 0; i < 4; ++i) {
        if (a1->unk9CA == i) {
            sp00.pat2.unk4[i] = 2;
            sp00.pat2.unk8[i] = 0;
        } else {
            sp00.pat2.unk4[i] = 3;
            sp00.pat2.unk8[i] = 0x40000;
        }
    }
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x26].numTiles), sp00.pat2.unk0[i] * 0x40,
            gUnk_08385CD4[gLanguage][i + 0x26].animId, gUnk_08385CD4[gLanguage][i + 0x26].variant, 0, 0xFF, 0x10, sp00.pat2.unk4[i],
            0xF0, !sp1C ? 8 * i + 0x2B : 8 * i + 0x1B, sp00.pat2.unk8[i]);
    }
    sprite = &a1->unk37C;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x17].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x17].animId,
        gUnk_08385CD4[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}
#else
static void sub_0813A6D0(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp1C = a1->unk4[a1->unkA];
    struct Unk_08385CD4 sp00_struct[0];
    u8 sp00[4];
    u8 sp04[4];
    u32 sp08[4];
    u8 sp18[3];

    memcpy(sp00_struct, gUnk_08386568, sizeof(gUnk_08386568));
    memcpy(sp18, gUnk_08386580, sizeof(gUnk_08386580));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00_struct[i].numTiles), 0x3FC0, sp00_struct[i].animId, sp00_struct[i].variant, 0, 0xFF, 0x10, sp18[i], -0x40, -0x40, 0);
    }
    memcpy(sp00, gUnk_08386583, sizeof(gUnk_08386583));
    for (i = 0; i < 4; ++i) {
        if (a1->unk9CA == i) {
            sp04[i] = 2;
            sp08[i] = 0;
        } else {
            sp04[i] = 3;
            sp08[i] = 0x40000;
        }
    }
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x26].numTiles), sp00[i] * 0x40,
            gUnk_08385CD4[gLanguage][i + 0x26].animId, gUnk_08385CD4[gLanguage][i + 0x26].variant, 0, 0xFF, 0x10, sp04[i],
            0xF0, !sp1C ? 8 * i + 0x2B : 8 * i + 0x1B, sp08[i]);
    }
    sprite = &a1->unk37C;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x17].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x17].animId,
        gUnk_08385CD4[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}
#endif

static void sub_0813A908(struct Unk_08138D64 *a1) {
    u8 i;

    for (i = 0; i < 3; ++i) {
        if (a1->unk34[i].tilesVram) {
            VramFree(a1->unk34[i].tilesVram);
            a1->unk34[i].tilesVram = 0;
        }
        if (sub_08143498(a1->unk7[i])
            && a1->unkAC[i].tilesVram) {
            VramFree(a1->unkAC[i].tilesVram);
            a1->unkAC[i].tilesVram = 0;
        }
        if (a1->unk7[i] == 100
            && a1->unk124[i][0].tilesVram) {
            VramFree(a1->unk124[i][0].tilesVram);
            a1->unk124[i][0].tilesVram = 0;
        }
        if (a1->unk7[i] >= 10
            && a1->unk124[i][1].tilesVram) {
            VramFree(a1->unk124[i][1].tilesVram);
            a1->unk124[i][1].tilesVram = 0;
        }
        if (a1->unk124[i][2].tilesVram) {
            VramFree(a1->unk124[i][2].tilesVram);
            a1->unk124[i][2].tilesVram = 0;
        }
    }
}

static void sub_0813A9DC(struct Unk_08138D64 *a1) {
    if (a1->unk2DC[0].tilesVram) {
        VramFree(a1->unk2DC[0].tilesVram);
        a1->unk2DC[0].tilesVram = 0;
    }
    if (a1->unk2DC[1].tilesVram) {
        VramFree(a1->unk2DC[1].tilesVram);
        a1->unk2DC[1].tilesVram = 0;
    }
    if (a1->unk2DC[2].tilesVram) {
        VramFree(a1->unk2DC[2].tilesVram);
        a1->unk2DC[2].tilesVram = 0;
    }
    if (a1->unk2DC[3].tilesVram) {
        VramFree(a1->unk2DC[3].tilesVram);
        a1->unk2DC[3].tilesVram = 0;
    }
    if (a1->unk37C.tilesVram) {
        VramFree(a1->unk37C.tilesVram);
        a1->unk37C.tilesVram = 0;
    }
}

static void sub_0813AA4C(struct Unk_08138D64 *a1) {
    u8 var = a1->unkA, i;

    if (a1->unk3A8.tilesVram) {
        VramFree(a1->unk3A8.tilesVram);
        a1->unk3A8.tilesVram = 0;
    }
    if (a1->unk3D0.tilesVram) {
        VramFree(a1->unk3D0.tilesVram);
        a1->unk3D0.tilesVram = 0;
    }
    if (a1->unk34[var].tilesVram) {
        VramFree(a1->unk34[var].tilesVram);
        a1->unk34[var].tilesVram = 0;
    }
    if (a1->unkAC[var].tilesVram) {
        VramFree(a1->unkAC[var].tilesVram);
        a1->unkAC[var].tilesVram = 0;
    }
    if (a1->unk472 == 100 && a1->unk124[var][0].tilesVram) {
        VramFree(a1->unk124[var][0].tilesVram);
        a1->unk124[var][0].tilesVram = 0;
    }
    if (a1->unk472 >= 10 && a1->unk124[var][1].tilesVram) {
        VramFree(a1->unk124[var][1].tilesVram);
        a1->unk124[var][1].tilesVram = 0;
    }
    if (a1->unk124[var][2].tilesVram) {
        VramFree(a1->unk124[var][2].tilesVram);
        a1->unk124[var][2].tilesVram = 0;
    }
    for (i = 0; i < 3; ++i) {
        if (a1->unk3F8[i].tilesVram) {
            VramFree(a1->unk3F8[i].tilesVram);
            a1->unk3F8[i].tilesVram = 0;
        }
    }
}

static void sub_0813AB40(struct Unk_08138D64 *a1) {
    if (a1->unk478.tilesVram) {
        VramFree(a1->unk478.tilesVram);
        a1->unk478.tilesVram = 0;
    }
    if (a1->unk4A0.tilesVram) {
        VramFree(a1->unk4A0.tilesVram);
        a1->unk4A0.tilesVram = 0;
    }
    if (a1->unk4C8.tilesVram) {
        VramFree(a1->unk4C8.tilesVram);
        a1->unk4C8.tilesVram = 0;
    }
    if (a1->unk4F0.tilesVram) {
        VramFree(a1->unk4F0.tilesVram);
        a1->unk4F0.tilesVram = 0;
    }
    if (a1->unk518.tilesVram) {
        VramFree(a1->unk518.tilesVram);
        a1->unk518.tilesVram = 0;
    }
    if (a1->unk540.tilesVram) {
        VramFree(a1->unk540.tilesVram);
        a1->unk540.tilesVram = 0;
    }
    if (a1->unk568.tilesVram) {
        VramFree(a1->unk568.tilesVram);
        a1->unk568.tilesVram = 0;
    }
    if (a1->unk590.tilesVram) {
        VramFree(a1->unk590.tilesVram);
        a1->unk590.tilesVram = 0;
    }
    if (a1->unk5B8.tilesVram) {
        VramFree(a1->unk5B8.tilesVram);
        a1->unk5B8.tilesVram = 0;
    }
    if (a1->unk5E0.tilesVram) {
        VramFree(a1->unk5E0.tilesVram);
        a1->unk5E0.tilesVram = 0;
    }
    if (a1->unk608.tilesVram) {
        VramFree(a1->unk608.tilesVram);
        a1->unk608.tilesVram = 0;
    }
    if (a1->unk6D0[0][0].tilesVram) {
        VramFree(a1->unk6D0[0][0].tilesVram);
        a1->unk6D0[0][0].tilesVram = 0;
    }
    if (a1->unk6D0[0][1].tilesVram) {
        VramFree(a1->unk6D0[0][1].tilesVram);
        a1->unk6D0[0][1].tilesVram = 0;
    }
    if (a1->unk630[0].tilesVram) {
        VramFree(a1->unk630[0].tilesVram);
        a1->unk630[0].tilesVram = 0;
    }
    if (a1->unk630[1].tilesVram) {
        VramFree(a1->unk630[1].tilesVram);
        a1->unk630[1].tilesVram = 0;
    }
    if (a1->unk630[2].tilesVram) {
        VramFree(a1->unk630[2].tilesVram);
        a1->unk630[2].tilesVram = 0;
    }
    if (a1->unk630[3].tilesVram) {
        VramFree(a1->unk630[3].tilesVram);
        a1->unk630[3].tilesVram = 0;
    }
}

static void sub_0813ACA0(struct Unk_08138D64 *a1) {
    u8 i;

    for (i = 0; i < 4; ++i) {
        if (a1->unk2DC[i].tilesVram) {
            VramFree(a1->unk2DC[i].tilesVram);
            a1->unk2DC[i].tilesVram = 0;
        }
        if (a1->unk7E4[i][0].tilesVram) {
            VramFree(a1->unk7E4[i][0].tilesVram);
            a1->unk7E4[i][0].tilesVram = 0;
        }
        if (a1->unk7E4[i][1].tilesVram) {
            VramFree(a1->unk7E4[i][1].tilesVram);
            a1->unk7E4[i][1].tilesVram = 0;
        }
        if (a1->unk7E4[i][2].tilesVram) {
            VramFree(a1->unk7E4[i][2].tilesVram);
            a1->unk7E4[i][2].tilesVram = 0;
        }
    }
}

static void sub_0813AD2C(struct Unk_08138D64 *a1) {
    if (a1->unk2DC[0].tilesVram) {
        VramFree(a1->unk2DC[0].tilesVram);
        a1->unk2DC[0].tilesVram = 0;
    }
    if (a1->unk2DC[1].tilesVram) {
        VramFree(a1->unk2DC[1].tilesVram);
        a1->unk2DC[1].tilesVram = 0;
    }
    if (a1->unk2DC[2].tilesVram) {
        VramFree(a1->unk2DC[2].tilesVram);
        a1->unk2DC[2].tilesVram = 0;
    }
    if (a1->unk2DC[3].tilesVram) {
        VramFree(a1->unk2DC[3].tilesVram);
        a1->unk2DC[3].tilesVram = 0;
    }
    if (a1->unk37C.tilesVram) {
        VramFree(a1->unk37C.tilesVram);
        a1->unk37C.tilesVram = 0;
    }
}

static void sub_0813AD9C(struct Unk_08138D64 *a1) {
    u8 i;

    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 3; ++i) {
        sub_0815604C(&a1->unk34[i]);
        if (sub_08143498(a1->unk7[i]))
            sub_0815604C(&a1->unkAC[i]);
        if (a1->unk7[i] == 100)
            sub_0815604C(&a1->unk124[i][0]);
        if (a1->unk7[i] >= 10)
            sub_0815604C(&a1->unk124[i][1]);
        sub_0815604C(&a1->unk124[i][2]);
    }
}

static void sub_0813AE30(struct Unk_08138D64 *a1) {
    u8 var = a1->unkA;

    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    sub_0815604C(&a1->unk34[var]);
    if (sub_08143498(a1->unk7[var]))
        sub_0815604C(&a1->unkAC[var]);
    if (a1->unk7[var] == 100)
        sub_0815604C(&a1->unk124[var][0]);
    if (a1->unk7[var] >= 10)
        sub_0815604C(&a1->unk124[var][1]);
    sub_0815604C(&a1->unk124[var][2]);
}

static void sub_0813AEC8(struct Unk_08138D64 *a1) {
    u8 i;

    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < a1->unk7D0; ++i) {
        sub_0815604C(&a1->unk2DC[i]);
        if (a1->unk9C4[i] == 100)
            sub_0815604C(&a1->unk7E4[i][0]);
        if (a1->unk9C4[i] >= 10)
            sub_0815604C(&a1->unk7E4[i][1]);
        sub_0815604C(&a1->unk7E4[i][2]);
    }
}

static bool32 sub_0813AF5C(struct Unk_08385CD4 *a1, s8 a2) {
    if (a2 < 0xA)
        return FALSE;
    if (a2 < 0x14) {
        a1->animId = gUnk_08385CD4[gLanguage][9].animId;
        a1->variant = gUnk_08385CD4[gLanguage][9].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][9].numTiles;
    } else if (a2 < 0x1E) {
        a1->animId = gUnk_08385CD4[gLanguage][0xA].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xA].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xA].numTiles;
    } else if (a2 < 0x28) {
        a1->animId = gUnk_08385CD4[gLanguage][0xB].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xB].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xB].numTiles;
    } else if (a2 < 0x32) {
        a1->animId = gUnk_08385CD4[gLanguage][0xC].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xC].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xC].numTiles;
    } else if (a2 < 0x3C) {
        a1->animId = gUnk_08385CD4[gLanguage][0xD].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xD].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xD].numTiles;
    } else if (a2 < 0x46) {
        a1->animId = gUnk_08385CD4[gLanguage][0xE].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xE].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xE].numTiles;
    } else if (a2 < 0x50) {
        a1->animId = gUnk_08385CD4[gLanguage][0xF].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xF].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xF].numTiles;
    } else if (a2 < 0x5A) {
        a1->animId = gUnk_08385CD4[gLanguage][0x10].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0x10].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0x10].numTiles;
    } else if (a2 < 0x64) {
        a1->animId = gUnk_08385CD4[gLanguage][0x11].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0x11].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0x11].numTiles;
    } else if (a2 == 0x64) {
        a1->animId = gUnk_08385CD4[gLanguage][0x12].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0x12].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0x12].numTiles;
    }
    return TRUE;
}

static void sub_0813B26C(struct Unk_08138D64 *a1) {
    u8 unkA = a1->unkA;
    u8 unkB = a1->unkB;
    bool32 r1, r1_2;
    struct Sprite *sprite;

    sprite = &a1->unk34[unkA];
    sprite->palId = 2;
    sub_08155128(sprite);
    if (a1->unk7[unkA] < 10)
        r1 = FALSE;
    else
        r1 = TRUE;
    if (r1) {
        sprite = &a1->unkAC[unkA];
        sprite->palId = unkA + 4;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkA] == 100) {
        sprite = &a1->unk124[unkA][0];
        sprite->palId = 2;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkA] >= 10) {
        sprite = &a1->unk124[unkA][1];
        sprite->palId = 2;
        sub_08155128(sprite);
    }
    sprite = &a1->unk124[unkA][2];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk34[unkB];
    sprite->palId = 3;
    sub_08155128(sprite);
    if (a1->unk7[unkB] < 10)
        r1_2 = FALSE;
    else
        r1_2 = TRUE;
    if (r1_2) {
        sprite = &a1->unkAC[unkB];
        sprite->palId = 7;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkB] == 100) {
        sprite = &a1->unk124[unkB][0];
        sprite->palId = 3;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkB] >= 10) {
        sprite = &a1->unk124[unkB][1];
        sprite->palId = 3;
        sub_08155128(sprite);
    }
    sprite = &a1->unk124[unkB][2];
    sprite->palId = 3;
    sub_08155128(sprite);
}

static void sub_0813B3C8(struct Unk_08138D64 *a1) {
    u8 a = a1->unk9C8[0];
    u8 b = a1->unk9C8[1];
    struct Sprite *sprite;

    sprite = &a1->unk2DC[a];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[a][0];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[a][1];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[a][2];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk2DC[b];
    sprite->palId = 3;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[b][0];
    sprite->palId = 3;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[b][1];
    sprite->palId = 3;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[b][2];
    sprite->palId = 3;
    sub_08155128(sprite);
}

static u8 sub_0813B484(void) {
    if (gPressedKeys & A_BUTTON || gPressedKeys & START_BUTTON)
        return 1;
    else if (gPressedKeys & B_BUTTON)
        return 2;
    else if (gRepeatedKeys & DPAD_UP)
        return 3;
    else if (gRepeatedKeys & DPAD_DOWN)
        return 4;
    else if (gRepeatedKeys & DPAD_LEFT)
        return 5;
    else if (gRepeatedKeys & DPAD_RIGHT)
        return 6;
    else
        return 0;   
}

static bool32 sub_0813B4F0(struct Unk_08138D64 *a1) {
    if (gPrevInput == gHeldKeys) {
        if (++a1->unkBF0 >= 0x1C20) {
            a1->unkBF0 = 0;
            a1->unk9CC = sub_081432B8;
            return TRUE;
        }
    } else {
        a1->unkBF0 = 0;
    }
    return FALSE;
}

static bool32 sub_0813B548(struct Unk_08138D64 *a1, u8 a2) {
    if (!a1->unk7D5) {
        if (a1->unkBE8.pat2->unk11 != a1->unk7D0) {
            a1->unk7D5 = 1;
            a1->unk7D6 = 0;
            a1->unk7D4 = a1->unkBE8.pat2->unk11;
        } else {
            a1->unk7D6 = 0;
        }
    } else {
        if (a1->unkBE8.pat1->unk11 != a1->unk7D4 && a1->unk7D4 > a1->unkBE8.pat2->unk11) {
            a1->unk7D5 = 0;
            a1->unk7D6 = 0;
        } else if (++a1->unk7D6 >= a2 && gMultiBootStruct.unk02 != 1) {
            a1->unk7D0 = a1->unkBE8.pat2->unk11;
            a1->unk7D1 = a1->unkBE8.pat2->unk10;
            return TRUE;
        }
    }
    return FALSE;
}

static bool32 sub_0813B61C(struct Unk_08138D64 *a1) {
    if (a1->unk7DE) {
        if (++a1->unk7E0 < 0xB4)
            return FALSE;
        a1->unk7DE = 0;
        a1->unk7E0 = 0;
    }
    if (gPressedKeys & B_BUTTON)
        sub_08032BBC(a1->unkBE8.pat2);
    if (a1->unkBE8.pat2->unkE == 7) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_08140198;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
        m4aSongNumStart(SE_08D5E2DC);
        return TRUE;
    }
    return FALSE;
}

static bool32 sub_0813B6B0(struct Unk_08138D64 *a1) {
    if (!a1->unk7D1 && a1->unkBE8.pat2->unkE == 1 && (gPressedKeys & A_BUTTON || gPressedKeys & START_BUTTON)) {
        sub_08032BA4(a1->unkBE8.pat2);
        m4aSongNumStart(SE_08D5E2B8);
        if (!a1->unk7DE) {
            a1->unk7DE = 1;
            a1->unk7E0 = 0;
        }
        return TRUE;
    }
    return FALSE;
}

static void sub_0813B720(struct Unk_08138D64 *a1, s16 a2, u8 a3) {
    u8 i;
    s16 v10[4][4];

    memcpy(v10, gUnk_0838659C, sizeof(gUnk_0838659C));
    for (i = 0; i < 4; ++i) {
        a1->unk7C0[i][0] = v10[i][0] + a2 * (v10[i][2] - v10[i][0]) / a3;
        a1->unk7C0[i][1] = v10[i][1] + a2 * (v10[i][3] - v10[i][1]) / a3;
    }
}

static void sub_0813B7E0(struct Unk_08138D64 *a1, u8 a2) {
    struct Sprite *sprites1[] = {
        &a1->unk4C8,
        &a1->unk4C8,
        &a1->unk478,
    };
    struct Sprite *sprites2[] = {
        &a1->unk4F0,
        &a1->unk4F0,
        &a1->unk4A0,
    };
    struct Sprite *r5 = sprites1[a2], *r4 = sprites2[a2], *r0;
    u8 i;

    for (i = 0; i < 2; ++i) {
        r4->x = a1->unk7C0[i][0];
        r5->x = a1->unk7C0[i][0];
        r4->y = a1->unk7C0[i][1];
        r5->y = a1->unk7C0[i][1];
        r5->unk14 = gUnk_08386512[i] << 6;
        r4->unk14 = (gUnk_08386512[i] - 1) << 6;
        sub_0815604C(r5);
        sub_0815604C(r4);
    }
    sub_0813BCA0(a1, 2);
    r0 = &a1->unk630[a1->unk7D1];
    r0->x = a1->unk7C0[a1->unk7D1][0];
    r0->y = a1->unk7C0[a1->unk7D1][1] + 0x10;
    sub_0815604C(r0);
}

static void sub_0813B8B0(struct Unk_08138D64 *a1, s16 a2, u8 a3) {
    u8 i;
    s16 v14[4][4];

    memcpy(v14, gUnk_083865BC, sizeof(gUnk_083865BC));
    for (i = 0; i < 4; ++i) {
        a1->unk7C0[i][0] = v14[i][0] + a2 * (v14[i][2] - v14[i][0]) / a3;
        a1->unk7C0[i][1] = v14[i][1] + a2 * (v14[i][3] - v14[i][1]) / a3;
    }
    if (a2 != a3) {
        a1->unk590.x = -(a2 * 0x1C) / a3 + 0x7A;
        a1->unk590.y = a2 * 0x12 / a3 + 0x30;
    } else {
        a1->unk5B8.x = 0x79;
        a1->unk5B8.y = 0x3A;
    }
}

static void sub_0813B9C0(struct Unk_08138D64 *a1, u8 a2) {
    u8 i;
    struct Sprite *r5 = &a1->unk4C8, *r4 = &a1->unk4F0, *r0;

    for (i = 0; i < 3; ++i) {
        r4->x = a1->unk7C0[i][0];
        r5->x = a1->unk7C0[i][0];
        r4->y = a1->unk7C0[i][1];
        r5->y = a1->unk7C0[i][1];
        r5->unk14 = gUnk_08386512[i] << 6;
        r4->unk14 = (gUnk_08386512[i] - 1) << 6;
        sub_0815604C(r5);
        sub_0815604C(r4);
    }
    sub_0813BCA0(a1, 3);
    r0 = &a1->unk630[a1->unk7D1];
    r0->x = a1->unk7C0[a1->unk7D1][0];
    r0->y = a1->unk7C0[a1->unk7D1][1] + 0x10;
    sub_0815604C(r0);
    if (a2 == 1)
        sub_0815604C(&a1->unk5B8);
    else
        sub_0815604C(&a1->unk590);
}

static void sub_0813BA90(struct Unk_08138D64 *a1, s16 a2, u8 a3) {
    u8 i;
    s16 v14[4][4];

    memcpy(v14, gUnk_083865DC, sizeof(gUnk_083865DC));
    for (i = 0; i < 4; ++i) {
        a1->unk7C0[i][0] = v14[i][0] + a2 * (v14[i][2] - v14[i][0]) / a3;
        a1->unk7C0[i][1] = v14[i][1] + a2 * (v14[i][3] - v14[i][1]) / a3;
    }
    if (a2 != a3) {
        a1->unk5B8.x = -(a2 * 0xC + a2) / a3 + 0x79;
        a1->unk5B8.y = a2 * 0x10 / a3 + 0x3A;
    } else {
        a1->unk5E0.x = 0x75;
        a1->unk5E0.y = 0x38;
    }
}

static void sub_0813BBA0(struct Unk_08138D64 *a1, u8 a2) {
    struct Sprite *sprites1[] = {
        &a1->unk518,
        &a1->unk518,
        &a1->unk4C8,
    };
    struct Sprite *sprites2[] = {
        &a1->unk540,
        &a1->unk540,
        &a1->unk4F0,
    };
    struct Sprite *r5 = sprites1[a2], *r4 = sprites2[a2], *r0;
    u8 i;

    for (i = 0; i < 4; ++i) {
        r4->x = a1->unk7C0[i][0];
        r5->x = a1->unk7C0[i][0];
        r4->y = a1->unk7C0[i][1];
        r5->y = a1->unk7C0[i][1];
        r5->unk14 = gUnk_08386512[i] << 6;
        r4->unk14 = (gUnk_08386512[i] - 1) << 6;
        sub_0815604C(r5);
        sub_0815604C(r4);
    }
    if (a2 == 1)
        sub_0815604C(&a1->unk5E0);
    else
        sub_0815604C(&a1->unk5B8);
    sub_0813BCA0(a1, 4);
    r0 = &a1->unk630[a1->unk7D1];
    r0->x = a1->unk7C0[a1->unk7D1][0];
    r0->y = a1->unk7C0[a1->unk7D1][1] + 0x10;
    sub_0815604C(r0);
}

static bool32 sub_0813BCA0(struct Unk_08138D64 *a1, u8 a2) {
    u8 i, j;

    if (a1->unk7D1) return FALSE;
    for (i = 1; i < a2; ++i) {
        struct {
            s16 unk0[5];
        } sp00 = {
            {
                0, 0, 0,
                a1->unk7C0[i][0] + 3, a1->unk7C0[i][1] + 0x10
            },
        };
        j = i + -1;
        if (a1->unk7DB[j]) {
            ++a1->unk7D8[j];
            switch (a1->unk7DB[j]) {
            case 1:
                sp00.unk0[1] = sp00.unk0[2] = 0x100;
                if (a1->unk7D8[j] > 0xE) {
                    a1->unk7D8[j] = 0;
                    a1->unk7DB[j] = 2;
                }
                break;
            case 2:
                sp00.unk0[1] = sp00.unk0[2] = (10 - a1->unk7D8[j]) * 0x100 / 10;
                if (a1->unk7D8[j] + 1 > 9) {
                    a1->unk7D8[j] = 0;
                    a1->unk7DB[j] = 0;
                }
                break;
            }
            sub_08155604(&a1->unk6D0[j][0], sp00.unk0);
            sub_08155604(&a1->unk6D0[j][1], sp00.unk0);
            sub_0815604C(&a1->unk6D0[j][0]);
            sub_0815604C(&a1->unk6D0[j][1]);
        }
    }
    return TRUE;
}

static void sub_0813BDDC(struct Unk_08138D64 *a1) {
    if (--a1->unkBE6 < 1) {
        m4aSongNumStartOrChange(SE_08D5E330);
        a1->unkBE6 = (Rand32() & 0x3FF) * 2 + 0xB4;
    }
    ++a1->unkBE0;
    if (a1->unkBE0 > 0x707) {
        a1->unkBE0 = 0;
        a1->unkBDC = sub_0813BE58;
    }
}

static void sub_0813BE58(struct Unk_08138D64 *a1) {
    if (++a1->unkBE0 >= gUnk_08385BF8[a1->unk3]
        && (a1->unkBE0 = 0, a1->unkBE2 = 0, ++a1->unk3 == 7)) {
        const u16 *src = gUnk_03002E60[0xEA].x->palette;

        CpuCopy16(src, a1->unk9DA, sizeof(a1->unk9DA));
        DmaCopy16(3, src, gBgPalette, 0x120);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        a1->unkBE0 = 0;
        a1->unkBDC = sub_0813BF18;
    } else {
        if (!a1->unkBE2)
            sub_0813C064(a1);
    }
}

static void sub_0813BF18(struct Unk_08138D64 *a1) {
    if (--a1->unkBE6 < 1) {
        m4aSongNumStartOrChange(SE_08D5E350);
        a1->unkBE6 = (Rand32() & 0x3FF) * 2 + 0xB4;
    }
    ++a1->unkBE0;
    if (a1->unkBE0 > 0x707) {
        a1->unkBE0 = 0;
        a1->unkBDC = sub_0813BF94;
    }
}

static void sub_0813BF94(struct Unk_08138D64 *a1) {
    if (++a1->unkBE0 >= gUnk_08385BF8[a1->unk3]
        && (a1->unkBE0 = 0, a1->unkBE2 = 0, ++a1->unk3 == 14)) {
        const u16 *src = gUnk_03002E60[0xE3].x->palette;

        CpuCopy16(src, a1->unk9DA, sizeof(a1->unk9DA));
        DmaCopy16(3, src, gBgPalette, 0x120);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        a1->unk3 = 0;
        a1->unkBE0 = 0;
        a1->unkBDC = sub_0813BDDC;
    } else {
        if (!a1->unkBE2)
            sub_0813C064(a1);
    }
}

static void sub_0813C064(struct Unk_08138D64 *a1) {
    union Unk_03002E60 var;
    u32 four = 4;
    u8 idx;
    union Unk_03002E60 *ptr;
    u8 i;
    u16 *sb;
    u8 sl;
    u16 sp00[14];
    s8 sp1C[0x41];
    const u16 *palette;
    u32 sp68;
    s32 c = 0x25;

    memcpy(sp00, gUnk_083865FC, sizeof(sp00));
    memcpy(sp1C, gUnk_08386618, sizeof(sp1C));
    sp68 = 0;
    sl = c * (a1->unk9D4 % four);
    idx = a1->unk3;
    ptr = gUnk_03002E60;
    var = ptr[sp00[(idx + 1) % 0xE]];
    sb = a1->unk9DA;
    palette = var.x->palette;
    for (i = sl; i < sl + c; ++i) {
        u16 r6, r3_2;
        u32 t1, t2, t3;
        u32 a, b, c;
        s8 *r4, *r2, *r3;

        r6 = sb[i];
        r3_2 = palette[i];
        t1 = r6 & 0x1F;
        r4 = &sp1C[(r3_2 & 0x1F) - t1 + 0x1F];
        a = *r4 + t1;
        t2 = (r6 & 0x3E0) >> 5;
        r2 = &sp1C[((r3_2 & 0x3E0) >> 5) - t2 + 0x1F];
        b = a | ((*r2 + t2) << 5);
        t3 = (r6 & 0x7C00) >> 10;
        r3 = &sp1C[((r3_2 & 0x7C00) >> 10) - t3 + 0x1F];
        c = b | ((*r3 + t3) << 10);
        sb[i] = c;
        sp68 |= *(u8 *)r4 | *(u8 *)r2 | *(u8 *)r3;
    }
    if (!sp68)
        a1->unkBE2 = 1;
    DmaCopy16(3, sb, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
}

static void sub_0813C1C4(struct Unk_08138D64 *a1) {
    const struct TiledBg_082D7850 *ptr = gUnk_082D7850[0xE2];
    const u16 *tilemap = ptr->tilemap;
    u16 height = ptr->height;
    u16 *vram = (u16 *)0x600E800;
    u16 i;

    for (i = 0; i < height; ++i)
        CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    if (!a1->unk1 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    a1->unk9CC = sub_0813C260;
}

static void sub_0813C260(struct Unk_08138D64 *a1) {
    u16 i;
    u16 idx;

    gDispCnt |= DISPCNT_BG2_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;

        idx = gUnk_08385C14[gLanguage][0];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    gDispCnt |= DISPCNT_BG0_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;

        ptr = gUnk_082D7850[0xE1];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600F000;
        LZ77UnCompVram(tileset, (u16 *)0x6004000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    gDispCnt |= DISPCNT_BG1_ON;
    if (!a1->unk1 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    a1->unk9CC = sub_08141FA4;
}

static void sub_0813C388(struct Unk_08138D64 *a1) {
    a1->unkBEC = sub_0802E57C();
    if (!a1->unk1 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    switch (a1->unk1) {
    default:
        a1->unk9CC = sub_0813C414;
        break;
    case 8:
        a1->unk9CC = sub_08140E40;
        break;
    case 0xA:
        a1->unk9CC = sub_0813CDE4;
        break;
    }
}

static void sub_0813C414(struct Unk_08138D64 *a1) {
    u8 i;
    u16 idx;

    sub_08139368(a1);
    a1->unk0 = a1->unk1;
    a1->unk1 = 1;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813C5D0;
    a1->unk28C.y = gUnk_08386504[a1->unkA];
    a1->unk34[0].y = 0x1B;
    a1->unk34[1].y = 0x23;
    a1->unk34[2].y = 0x2B;
    for (i = 0; i < 3; ++i) {
        a1->unkAC[i].y = a1->unk34[i].y + 0xC;
        a1->unk124[i][0].y = a1->unk124[i][1].y = a1->unk124[i][2].y = a1->unk34[i].y + 8;
    }
    if (!a1->unk0 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    if (a1->unk0 == 2 || a1->unk0 == 3) {
        SpriteInit(&a1->unkC, a1->unkC.tilesVram, 0x780, gUnk_08385CD4[gLanguage][0].animId, gUnk_08385CD4[gLanguage][0].variant, 0, 0xFF, 0x10,
            0, -0x9C, 0, 0x40000);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 i;

            idx = gUnk_08385C14[gLanguage][0];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
    } else {
        gBgScrollRegs[1][1] = 0x18;
    }
    a1->unkBDC(a1);
}

static void sub_0813C5D0(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    a1->unkC.x = 0x9C * a1->unk9D8 / 5 - 0x9C;
    if (!a1->unk0)
        gBgScrollRegs[1][1] = (-0x18 * a1->unk9D8) / 5 + 0x18;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_0813C6A0;
    if (!a1->unk0 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
}

static void sub_0813C6A0(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813C734;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    if (!a1->unk0 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    a1->unkBDC(a1);
}

static void sub_0813C734(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    for (i = 0; i < 3; ++i) {
        s32 var;

        a1->unk34[i].x = (var = -0xD0 * a1->unk9D8 / 5) + 0xF0;
        a1->unkAC[i].x = var + 0x143;
        a1->unk124[i][0].x = a1->unk34[i].x + 0xA8;
        a1->unk124[i][1].x = a1->unk34[i].x + 0xB0;
        a1->unk124[i][2].x = a1->unk34[i].x + 0xB8;
    }
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_0813C844;
    if (!a1->unk0 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
}

static void sub_0813C844(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813C8D8;
    if (!a1->unk0 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
}

static void sub_0813C8D8(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    a1->unk34[0].y = 0x1B;
    a1->unk34[1].y = 0x10 * a1->unk9D8 / 5 + 0x23;
    a1->unk34[2].y = 0x20 * a1->unk9D8 / 5 + 0x2B;
    for (i = 0; i < 3; ++i) {
        a1->unkAC[i].y = a1->unk34[i].y + 0xC;
        a1->unk124[i][0].y = a1->unk34[i].y + 8;
        a1->unk124[i][1].y = a1->unk34[i].y + 8;
        a1->unk124[i][2].y = a1->unk34[i].y + 8;
    }
    a1->unk28C.x = 0x30 * a1->unk9D8 / 5 - 0x20;
    gBgScrollRegs[0][1] = 0x18 * a1->unk9D8 / 5;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_08141FC4;
    if (!a1->unk0 && ++a1->unkBE4 <= a1->unkBE3)
        gBldRegs.bldY = 0x10 - (0x10 * a1->unkBE4 / a1->unkBE3);
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
}

static void sub_0813CA24(struct Unk_08138D64 *a1) {
    a1->unkB = a1->unkA;
    sub_0813B4F0(a1);
    switch (sub_0813B484()) {
    case 0:
        break;
    case 1:
        if (a1->unk7[a1->unkA] < 0) {
            a1->unk7[a1->unkA] = 0;
            gUnk_0203ACB0[a1->unkA] = 0;
            if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA)) {
                ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA);
            }
        }
        gSaveID = a1->unkA;
        m4aSongNumStart(SE_08D5E2B8);
        a1->unk9CC = sub_08142018;
        break;
    case 2:
        m4aSongNumStart(SE_08D5E2DC);
        a1->unk9CC = sub_0814207C;
        break;
    case 3:
        m4aSongNumStart(SE_08D5E294);
        if (!a1->unkA)
            a1->unkA = 2;
        else
            --a1->unkA;
        break;
    case 4:
        m4aSongNumStart(SE_08D5E294);
        if (a1->unkA == 2)
            a1->unkA = 0;
        else
            ++a1->unkA;
        break;
    }
    if (a1->unkA != a1->unkB) {
        sub_0813B26C(a1);
        a1->unk28C.y = gUnk_08386504[a1->unkA];
        sub_08155128(&a1->unk28C);
    }
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
}

static void sub_0813CB78(struct Unk_08138D64 *a1) {
    u8 i;
    s32 var;

    ++a1->unk9D8;
    for (i = 0; i < 3; ++i) {
        a1->unk34[i].x = (var = 0xD0 * a1->unk9D8 / 5) + 0x20;
        a1->unkAC[i].x = var + 0x73;
        a1->unk124[i][0].x = a1->unk34[i].x + 0xA8;
        a1->unk124[i][1].x = a1->unk34[i].x + 0xB0;
        a1->unk124[i][2].x = a1->unk34[i].x + 0xB8;
    }
    a1->unk28C.x = (-0x30 * a1->unk9D8) / 5 + 0x10;
    a1->unkC.x = (-0x9C * a1->unk9D8) / 5;
    gBgScrollRegs[0][1] = (-0x18 * a1->unk9D8) / 5 + 0x18;
    if (a1->unk9D8 > 4) {
        sub_0813A908(a1);
        a1->unk9CC = sub_0813CDE4;
        a1->unkBDC(a1);
    } else {
        if (!sub_08155128(&a1->unk28C))
            a1->unk28C.unk1B = 0xFF;
        sub_0813AD9C(a1);
        a1->unkBDC(a1);
    }
}

static void sub_0813CCA8(struct Unk_08138D64 *a1) {
    u8 i;
    s32 var;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xA;
    for (i = 0; i < 3; ++i) {
        a1->unk34[i].x = (var = (0xD0 * a1->unk9D8) / 0xA) + 0x20;
        a1->unkAC[i].x = var + 0x73;
        a1->unk124[i][0].x = a1->unk34[i].x + 0xA8;
        a1->unk124[i][1].x = a1->unk34[i].x + 0xB0;
        a1->unk124[i][2].x = a1->unk34[i].x + 0xB8;
    }
    a1->unk28C.x = (-0x30 * a1->unk9D8) / 0xA + 0x10;
    a1->unkC.x = (-0x9C * a1->unk9D8) / 0xA;
    gBgScrollRegs[0][1] = (-0x18 * a1->unk9D8) / 0xA + 0x18;
    gBgScrollRegs[1][1] = 0x18 * a1->unk9D8 / 0xA;
    if (a1->unk9D8 > 9)
        a1->unk9CC = sub_081420EC;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
}

static inline struct Sprite *GetUnk2DC(struct Unk_08138D64 *a1) {
    return a1->unk2DC;
}

static void sub_0813CDE4(struct Unk_08138D64 *a1) {
    u8 j;
    struct Sprite *sprite;

    sub_081397FC(a1);
    a1->unk0 = a1->unk1;
    a1->unk1 = 2;
    a1->unk9D8 = 0;
    SpriteInit(&a1->unkC, a1->unkC.tilesVram, 0x780, gUnk_08385CD4[gLanguage][1].animId, gUnk_08385CD4[gLanguage][1].variant, 0, 0xFF,
        0x10, 0, -0x9C, 0, 0x40000);
    a1->unk2DC[0].y = 0x1B;
    a1->unk2DC[1].y = 0x23;
    a1->unk2DC[2].y = 0x2B;
    a1->unk2DC[3].y = 0x33;
    switch (a1->unk0) {
    case 1:
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08385C14[gLanguage][1];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        a1->unk3A4 = a1->unk3A5 = 0;
        sprite = &GetUnk2DC(a1)[0];
        sprite->palId = 2;
        sub_08155128(sprite);
        for (j = 1; j < 4; ++j) {
            sprite = &a1->unk2DC[j];
            sprite->palId = 3;
            sub_08155128(sprite);
        }
        a1->unk28C.y = 0x10;
        sub_08155128(&a1->unk28C);
        a1->unk9CC = sub_081421B8;
        break;
    case 3:
        a1->unk28C.y = gUnk_0838650A[a1->unk3A4];
        sub_08155128(&a1->unk28C);
        a1->unk9CC = sub_081421B8;
        break;
    case 4:
        a1->unkBEC = sub_0802E57C();
        a1->unk28C.y = gUnk_0838650A[a1->unk3A4];
        sub_08155128(&a1->unk28C);
        a1->unk9CC = sub_0813D364;
        break;
    case 7:
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08385C14[gLanguage][2];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        a1->unk28C.y = gUnk_0838650A[a1->unk3A4];
        sub_08155128(&a1->unk28C);
        a1->unk9CC = sub_081421B8;
        break;
    case 0xA:
        a1->unk9CC = sub_0813D550;
        break;
    }
    a1->unkBDC(a1);
}

static void sub_0813D0DC(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    a1->unkC.x = 0x9C * a1->unk9D8 / 5 - 0x9C;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_08142228;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_0813D178(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    a1->unk2DC[0].x = a1->unk2DC[1].x = a1->unk2DC[2].x = a1->unk2DC[3].x = (-0xD0 * a1->unk9D8) / 5 + 0xF0;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_081422A8;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_0813D234(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    a1->unk2DC[0].y = 0x1B;
    a1->unk2DC[1].y = 0xD * a1->unk9D8 / 5 + 0x23;
    a1->unk2DC[2].y = 0x1A * a1->unk9D8 / 5 + 0x2B;
    a1->unk2DC[3].y = 0x27 * a1->unk9D8 / 5 + 0x33;
    a1->unk28C.x = 0x30 * a1->unk9D8 / 5 - 0x20;
    if (a1->unk0 == 1 || a1->unk0 == 7)
        gBgScrollRegs[0][1] = 0x18 * a1->unk9D8 / 5;
    if (a1->unk9D8 > 4) {
        a1->unkBF0 = 0;
        a1->unk9CC = sub_0813D784;
    }
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_0813D364(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    gDispCnt |= DISPCNT_BG1_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][6];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, a1->unk9DA, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    a1->unkC.x = 0;
    a1->unk2DC[0].x = a1->unk2DC[1].x = a1->unk2DC[2].x = a1->unk2DC[3].x = 0x20;
    a1->unk2DC[0].y = 0x1B;
    a1->unk2DC[1].y = 0x30;
    a1->unk2DC[2].y = 0x45;
    a1->unk2DC[3].y = 0x5A;
    a1->unk37C.y = 0x15 * a1->unk3A4 + 0x25;
    a1->unk28C.unk1B = 0xFF;
    sub_08155128(&a1->unk28C);
    sprite = &a1->unk2DC[a1->unk3A4];
    sprite->palId = 4;
    sprite->unk8 = 0;
    sub_08155128(sprite);
    a1->unk37C.palId = 6;
    sub_08155128(&a1->unk37C);
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813D4CC;
}

static void sub_0813D4CC(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk9D8 / 0xA;
    if (a1->unk9D8 > 9)
        a1->unk9CC = sub_08142328;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_0813D550(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    a1->unk3A4 = 2;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][3];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, a1->unk9DA, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    gBgScrollRegs[0][1] = 0x18;
    a1->unkC.x = 0;
    a1->unk2DC[0].x = a1->unk2DC[1].x = a1->unk2DC[2].x = a1->unk2DC[3].x = 0x20;
    a1->unk2DC[0].y = 0x1B;
    a1->unk2DC[1].y = 0x30;
    a1->unk2DC[2].y = 0x45;
    a1->unk2DC[3].y = 0x5A;
    a1->unk28C.x = 0x10;
    a1->unk28C.y = 0x3A;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813D674;
}

static void sub_0813D674(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unkBE4;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unkBE4 / a1->unkBE3;
    if (a1->unkBE4 > 9)
        a1->unk9CC = sub_0813D70C;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static void sub_0813D70C(struct Unk_08138D64 *a1) {
    u8 i;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unkBF0 = 0;
    a1->unk9CC = sub_0813D784;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static inline u8 GetUnk3A4(struct Unk_08138D64 *a1) {
    return a1->unk3A4;
}

static inline u8 GetUnk3A5(struct Unk_08138D64 *a1) {
    return a1->unk3A5;
}

static inline struct Sprite *GetUnk28C(struct Unk_08138D64 *a1) {
    return &a1->unk28C;
}

static inline struct Sprite *GetUnk2DCSub(struct Unk_08138D64 *a1, u32 idx) {
    return &a1->unk2DC[idx];
}

static void sub_0813D784(struct Unk_08138D64 *a1) {
    struct Sprite *sprite = NULL;
    u8 j;

    sub_0813B4F0(a1);
    do {
        a1->unk3A5 = a1->unk3A4;
        switch (sub_0813B484()) {
        case 0:
            break;
        case 1:
            m4aSongNumStart(SE_08D5E2B8);
            switch (a1->unk3A4) {
            case 0:
                a1->unk9CC = sub_0813DA34;
                break;
            case 1:
                a1->unk2 = 7;
                a1->unk9CC = sub_0814273C;
                a1->unk9D0 = sub_08140A1C;
                break;
            case 2:
                a1->unk9CC = sub_0813E0F8;
                a1->unk2 = 0xA;
                break;
            case 3:
                a1->unk2 = 3;
                a1->unk9CC = sub_0814273C;
                a1->unk9D0 = sub_0813E210;
                break;
            }
            break;
        case 2:
            m4aSongNumStart(SE_08D5E2DC);
            a1->unk2 = 1;
            a1->unk9CC = sub_0814273C;
            a1->unk9D0 = sub_0813C414;
            break;
        case 3:
            m4aSongNumStart(SE_08D5E294);
            if (a1->unk3A4 == 0)
                a1->unk3A4 = 3;
            else
                --a1->unk3A4;
            break;
        case 4:
            m4aSongNumStart(SE_08D5E294);
            if (a1->unk3A4 == 3)
                a1->unk3A4 = 0;
            else
                ++a1->unk3A4;
            break;
        }
        if (a1->unk3A4 != a1->unk3A5) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 i;
            u16 idx;

            idx = gUnk_08385C14[gLanguage][a1->unk3A4 + 1];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
            sprite = GetUnk2DCSub(a1, GetUnk3A4(a1));
            sprite->palId = 2;
            sub_08155128(sprite);
            sprite = GetUnk2DCSub(a1, GetUnk3A5(a1));
            sprite->palId = 3;
            sub_08155128(sprite);
            a1->unk28C.y = gUnk_0838650A[a1->unk3A4];
            sub_08155128(&a1->unk28C);
        }
    } while (0);
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (j = 0; j < 4; ++j)
        sub_0815604C(&a1->unk2DC[j]);
    a1->unkBDC(a1);
}

static void sub_0813DA34(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i;

    a1->unkBE5 = 1;
    a1->unk37C.y = 0x15 * a1->unk3A4 + 0x25;
    a1->unk3A6 = 0;
    a1->unk37C.palId = 5;
    sub_08155128(&a1->unk37C);
    a1->unk28C.unk1B = 0xFF;
    sub_08155128(&a1->unk28C);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][5];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    sprite = &a1->unk2DC[a1->unk3A4];
    sprite->palId = 4;
    sprite->unk8 = 0;
    sub_08155128(sprite);
    a1->unkBF0 = 0;
    a1->unk9CC = sub_0813DB74;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_0813DB74(struct Unk_08138D64 *a1) {
    const u16 array[] = { gUnk_08385C14[gLanguage][5], gUnk_08385C14[gLanguage][6] };
    u8 i;

    sub_0813B4F0(a1);
    switch (sub_0813B484()) {
    case 0:
        break;
    case 1:
        m4aSongNumStart(SE_08D5E2B8);
        a1->unkBE5 = 0;
        if (a1->unk3A6 == 0)
            a1->unk9CC = sub_0814238C;
        else if (a1->unk3A6 == 1) {
            a1->unk2 = 4;
            a1->unk9CC = sub_081426AC;
        }
        break;
    case 2:
        m4aSongNumStart(SE_08D5E2DC);
        a1->unkBE5 = 0;
        a1->unk9CC = sub_0813DDA8;
        break;
    case 3:
        if (a1->unk3A6 != 0)
            m4aSongNumStart(SE_08D5E294);
        a1->unk3A6 = 0;
        a1->unk37C.palId = 5;
        sub_08155128(&a1->unk37C);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = array[a1->unk3A6];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    case 4:
        if (a1->unk3A6 != 1)
            m4aSongNumStart(SE_08D5E294);
        a1->unk3A6 = 1;
        a1->unk37C.palId = 6;
        sub_08155128(&a1->unk37C);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = array[a1->unk3A6];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    }
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_0813DDA8(struct Unk_08138D64 *a1) {
    u8 i;
    struct Sprite *sprite = &a1->unk2DC[a1->unk3A4];

    sprite->palId = 2;
    sprite->unk8 = 0;
    sub_08155128(sprite);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][a1->unk3A4 + 1];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    a1->unk9CC = sub_0813D784;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static void sub_0813DE7C(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE)
        a1->unk9CC = sub_081423F0;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static void sub_0813DEF0(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        a1->unk9D8 = 0;
        a1->unk9CC = sub_08142494;
    }
}

static void sub_0813DF4C(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE)
        a1->unk9CC = sub_0814271C;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_0813DFCC(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    a1->unk2DC[0].x = a1->unk2DC[1].x = a1->unk2DC[2].x = a1->unk2DC[3].x = 0xD0 * a1->unk9D8 / 5 + 0x20;
    a1->unk28C.x = -0x30 * a1->unk9D8 / 5 + 0x10;
    a1->unkC.x = -0x9C * a1->unk9D8 / 5;
    if (a1->unk2 == 1 || a1->unk2 == 7)
        gBgScrollRegs[0][1] = -0x18 * a1->unk9D8 / 5 + 0x18;
    if (a1->unk9D8 > 4) {
        sub_0813A9DC(a1);
        a1->unk9CC = sub_081427BC;
        a1->unkBDC(a1);
        return;
    }
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_0813E0F8(struct Unk_08138D64 *a1) {
    u8 i;

    m4aMPlayFadeOut(&gMPlayInfo_0, 1);
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813E184;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
}

static void sub_0813E184(struct Unk_08138D64 *a1) {
#ifdef NONMATCHING
    struct Sprite *sprite;
#else
    register struct Sprite *sprite asm("r4");
#endif
    u8 i;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xA;
    if (a1->unk9D8 > 9)
        a1->unk9CC = sub_08142848;
    sub_0815604C(&a1->unkC);
    sprite = &a1->unk28C;
    sub_0815604C(sprite);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    if (!sub_08155128(sprite))
        a1->unk28C.unk1B = 0xFF;
}

static void sub_0813E210(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    sub_08139A3C(a1);
    a1->unk0 = a1->unk1;
    a1->unk1 = 3;
    a1->unk472 = a1->unk7[a1->unkA];
    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, gUnk_08385CD4[gLanguage][4].animId, gUnk_08385CD4[gLanguage][4].variant, 0, 0xFF, 0x10,
        0, -0x9C, 0, 0x40000);
    a1->unk28C.unk1B = 0xFF;
    sub_08155128(&a1->unk28C);
    a1->unk9CC = sub_0814291C;
}

static void sub_0813E2CC(struct Unk_08138D64 *a1) {
    u8 idx = a1->unkA;
    s16 var;

    a1->unk34[idx].y = 0x1B;
    var = 0x27;
    a1->unkAC[idx].y = var;
    a1->unk124[idx][0].y = a1->unk124[idx][1].y = a1->unk124[idx][2].y = a1->unk34[idx].y + 8;
    a1->unk28C.y = gUnk_08386504[0];
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813E344;
    sub_0813AE30(a1);
}

static void sub_0813E344(struct Unk_08138D64 *a1) {
    u8 idx = a1->unkA;
    s32 var;

    ++a1->unk9D8;
    a1->unk34[idx].x = (var = -0xD0 * a1->unk9D8 / 5) + 0xF0;
    a1->unkAC[idx].x = var + 0x143;
    a1->unk124[idx][0].x = a1->unk34[idx].x + 0xA8;
    a1->unk124[idx][1].x = a1->unk34[idx].x + 0xB0;
    a1->unk124[idx][2].x = a1->unk34[idx].x + 0xB8;
    a1->unk28C.x = 0x30 * a1->unk9D8 / 5 - 0x20;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_0813E3F4;
    sub_0813AE30(a1);
}

static void sub_0813E3F4(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    a1->unk470 = 1;
    a1->unk3A7 = 0;
    a1->unk3D0.palId = 7;
    sub_08155128(&a1->unk3D0);
    sprite = &a1->unk3A8;
    sprite->animId = gUnk_08385CD4[gLanguage][0x18].animId;
    sprite->variant = gUnk_08385CD4[gLanguage][0x18].variant;
    sub_08155128(&a1->unk3A8);
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
    a1->unkBF0 = 0;
    a1->unk9CC = sub_0813E554;
}

static void sub_0813E4A4(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    a1->unk470 = 2;
    a1->unk3A7 = 0;
    a1->unk3D0.palId = 7;
    sub_08155128(&a1->unk3D0);
    sprite = &a1->unk3A8;
    sprite->animId = gUnk_08385CD4[gLanguage][0x19].animId;
    sprite->variant = gUnk_08385CD4[gLanguage][0x19].variant;
    sub_08155128(&a1->unk3A8);
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
    a1->unkBF0 = 0;
    a1->unk9CC = sub_0813E554;
}

static void sub_0813E554(struct Unk_08138D64 *a1) {
    sub_0813B4F0(a1);
    switch (sub_0813B484()) {
    case 0:
        break;
    case 1:
        m4aSongNumStart(SE_08D5E2B8);
        if (a1->unk3A7) {
            if (a1->unk470 == 1)
                a1->unk9CC = sub_0813E4A4;
            else
                a1->unk9CC = sub_0813E680;
        } else {
            a1->unk9CC = sub_08142A54;
        }
        break;
    case 2:
        m4aSongNumStart(SE_08D5E2DC);
        a1->unk9CC = sub_08142A54;
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
        if (a1->unk3A7 == 0)
            m4aSongNumStart(SE_08D5E294);
        a1->unk3A7 = 1;
        a1->unk3D0.palId = 6;
        sub_08155128(&a1->unk3D0);
        break;
    case 6:
        if (a1->unk3A7)
            m4aSongNumStart(SE_08D5E294);
        a1->unk3A7 = 0;
        a1->unk3D0.palId = 7;
        sub_08155128(&a1->unk3D0);
        break;
    }
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
}

static void sub_0813E680(struct Unk_08138D64 *a1) {
    u8 i, j;
    u32 var;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813E788;
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
    m4aSongNumStart(SE_08D5E310);
    for (i = 0; i < 3; ++i) {
        a1->unk3F8[i].x = (Rand32() % 0x80) + 0x4B;
        a1->unk3F8[i].y = (Rand32() % 0x20) + 0x1B;
        var = Rand32() & 0xF;
        for (j = 0; j < var; ++j)
            sub_08155128(&a1->unk3F8[i]);
    }
    a1->unk473 = 0;
    a1->unk474 = (Rand32() & 7) + 5;
}

static void sub_0813E788(struct Unk_08138D64 *a1) {
    u8 i;
    u8 idx = a1->unkA;
    u8 sp00[3];
    struct Unk_08385CD4 sp04;
    s8 sp0C = (Rand32() & 7) - 4;

    if (++a1->unk9D8 > 0x3B)
        a1->unk9CC = sub_0813EAC0;
    if (a1->unk7[idx] > 0) {
        u8 r5, r6;
        struct Sprite *sprite_r1;
        bool32 b;
        s8 tmp;

        memcpy(sp00, gUnk_08386659, sizeof(gUnk_08386659));
        a1->unk7[idx] -= sp00[a1->unk9D8 % 3];
        if (a1->unk7[idx] < 0)
            a1->unk7[idx] = 0;
        r5 = a1->unk7[idx] / 10 % 10;
        r6 = a1->unk7[idx] % 10;
        sprite_r1 = &a1->unk124[idx][1];
        sprite_r1->animId = gUnk_083864B4[r5].animId;
        sprite_r1->variant = gUnk_083864B4[r5].variant;
        sub_08155128(sprite_r1);
        sprite_r1 = &a1->unk124[idx][2];
        sprite_r1->animId = gUnk_083864B4[r6].animId;
        sprite_r1->variant = gUnk_083864B4[r6].variant;
        sub_08155128(sprite_r1);
        tmp = a1->unk7[idx];
        if (tmp < 10)
            b = FALSE;
        else
            b = TRUE;
        if (b) {
            sub_0813AF5C(&sp04, tmp);
            sprite_r1 = &a1->unkAC[idx];
            sprite_r1->animId = sp04.animId;
            sprite_r1->variant = sp04.variant;
            sub_08155128(sprite_r1);
        }
    }
    a1->unk3A8.y = sp0C + 0x5C;
    a1->unk3D0.y = sp0C + 0x56;
    a1->unk34[idx].y = sp0C + 0x1B;
    a1->unk124[idx][0].y = a1->unk124[idx][1].y = a1->unk124[idx][2].y = sp0C + 0x23;
    a1->unkAC[idx].y = sp0C + 0x27;
    for (i = 0; i < 3; ++i)
        a1->unk3F8[i].y = gUnk_08D62511[2 * i] + sp0C;
    a1->unk28C.y = gUnk_08386504[0] + sp0C;
    gBgScrollRegs[2][1] = sp0C;
    for (i = 0; i < 3; ++i) {
        if (!sub_08155128(&a1->unk3F8[i])) {
            a1->unk3F8[i].x = (Rand32() % 0x80) + 0x4B;
            a1->unk3F8[i].y = (Rand32() % 0x20) + 0x1B;
            a1->unk3F8[i].unk1B = 0xFF;
        }
    }
    if (++a1->unk473 >= a1->unk474) {
        a1->unk471 = !a1->unk471;
        a1->unk473 = 0;
        a1->unk474 = (Rand32() & 7) + 5;
    }
    if (a1->unk471) {
        a1->unk34[idx].palId = 3;
        sub_08155128(&a1->unk34[idx]);
    } else {
        a1->unk34[idx].palId = 2;
        sub_08155128(&a1->unk34[idx]);
    }
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
    for (i = 0; i < 3; ++i)
        sub_0815604C(&a1->unk3F8[i]);
}

static void sub_0813EAC0(struct Unk_08138D64 *a1) {
    u8 idx = a1->unkA;
    struct Sprite *sprite;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142984;
    sprite = &a1->unk124[idx][0];
    sprite->animId = gUnk_083864B4[0].animId;
    sprite->variant = gUnk_083864B4[0].variant;
    sub_08155128(sprite);
    sprite = &a1->unk124[idx][1];
    sprite->animId = gUnk_083864B4[0].animId;
    sprite->variant = gUnk_083864B4[0].variant;
    sub_08155128(sprite);
    sprite = &a1->unk124[idx][2];
    sprite->animId = gUnk_083864B4[0].animId;
    sprite->variant = gUnk_083864B4[0].variant;
    sub_08155128(sprite);
    a1->unk28C.y = gUnk_08386504[0];
    a1->unkC.y = 0;
    a1->unk34[idx].y = 0x1B;
    a1->unk124[idx][0].y = a1->unk124[idx][1].y = a1->unk124[idx][2].y = 0x23;
    a1->unkAC[idx].y = 0x27;
    a1->unk3A8.y = 0x5C;
    a1->unk3D0.y = 0x56;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[0][1] = 0x18;
    a1->unk34[idx].palId = 2;
    sub_08155128(&a1->unk34[idx]);
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
}

static void sub_0813EBDC(struct Unk_08138D64 *a1) {
    u8 idx = a1->unkA;
    u32 var;

    ++a1->unk9D8;
    a1->unk34[idx].x = (var = 0xD0 * a1->unk9D8 / 5) + 0x20;
    a1->unkAC[idx].x = var + 0x73;
    a1->unk124[idx][0].x = a1->unk34[idx].x + 0xA8;
    a1->unk124[idx][1].x = a1->unk34[idx].x + 0xB0;
    a1->unk124[idx][2].x = a1->unk34[idx].x + 0xB8;
    a1->unk28C.x = (-0x30 * a1->unk9D8) / 5 + 0x10;
    a1->unkC.x = (-0x9C * a1->unk9D8) / 5;
    if (a1->unk2 == 1)
        gBgScrollRegs[0][1] = (-0x18 * a1->unk9D8) / 5 + 0x18;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_08142A9C;
    else
        sub_0813AE30(a1);
}

static void sub_0813ECBC(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    a1->unk0 = a1->unk1;
    a1->unk1 = a1->unk2;
    a1->unk7D0 = 0;
    a1->unk7D1 = 0;
    a1->unk7D4 = 0;
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    if (a1->unk1 == 5)
        a1->unkBE8.pat1 = sub_08019F28(a1->unk9CA);
    else
        a1->unkBE8.pat2 = sub_08032B0C();
    gDispCnt &= ~DISPCNT_BG1_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][0xD];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FB40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    DmaCopy16(3, a1->unk9DA, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, gUnk_08385CD4[gLanguage][3].animId, gUnk_08385CD4[gLanguage][3].variant,
        0, 0xFF, 0x10, 0, 0, 0, 0x40000);
    sprite->unk8 |= 0x80000;
    a1->unk9CC = sub_08142AD4;
}

static void sub_0813EE48(struct Unk_08138D64 *a1) {
    u8 i;
    u16 var;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813EED0;
    var = gObjPalette[0x38];
    for (i = 3; i != 0; --i)
        gObjPalette[i + 0x35] = gObjPalette[i + 0x34];
    gObjPalette[0x35] = var;
    gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk478);
    sub_0815604C(&a1->unk4A0);
}

static void sub_0813EED0(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE)
        a1->unk9CC = sub_0813EF78;
    a1->unk568.y = 0x10 * (a1->unk9D8 - 0x11) / 0xF + 0x12;
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk478);
    sub_0815604C(&a1->unk4A0);
    sub_0815604C(&a1->unk568);
}

static void sub_0813EF78(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9CC = sub_0813EFF0;
    a1->unk568.y = 0x10;
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk478);
    sub_0815604C(&a1->unk4A0);
    sub_0815604C(&a1->unk568);
}

static void sub_0813EFF0(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk7D3 = 0;
    a1->unk9CC = sub_0813F098;
    a1->unk7D4 = 0;
    a1->unk7D6 = 0;
    a1->unk7D5 = 0;
    a1->unk568.y = 0x11;
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    a1->unk7DE = 0;
    a1->unk7E0 = 0;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk478);
    sub_0815604C(&a1->unk4A0);
    sub_0815604C(&a1->unk568);
}

static void sub_0813F098(struct Unk_08138D64 *a1) {
    if (sub_0813B548(a1, 0x3C) && a1->unk7D0 > 1 && a1->unk7D0 > a1->unk7D1)
        a1->unk9CC = sub_0813F1D4;
    else
        sub_0813B61C(a1);
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    if (!(a1->unk7D3 & 1))
        a1->unk568.y = 0x10 * a1->unk9D8 / 0xF + 0x12;
    else
        a1->unk568.y = (-0x10 * a1->unk9D8) / 0xF + 0x22;
    if (a1->unk9D8++ > 0xE) {
        a1->unk7D3 = (a1->unk7D3 + 1) & 3;
        a1->unk9D8 = 0;
    }
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk478);
    sub_0815604C(&a1->unk4A0);
    sub_0815604C(&a1->unk568);
}

static void sub_0813F1D4(struct Unk_08138D64 *a1) {
    a1->unk7D4 = 0;
    a1->unk7D6 = 0;
    a1->unk7D5 = 0;
    a1->unk590.x = 0x7A;
    a1->unk590.y = 0x30;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813F294;
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        ++a1; --a1;
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B720(a1, 0, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B7E0(a1, 0);
    sub_0815604C(&a1->unkC);
}

static void sub_0813F294(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4) {
        a1->unk7D8[0] = 0;
        a1->unk7DB[0] = 1;
        a1->unk7DE = 0;
        a1->unk7E0 = 0;
        if (a1->unk7D0 > 2)
            a1->unk9CC = sub_0813F61C;
        else
            a1->unk9CC = sub_0813F380;
    }
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B720(a1, a1->unk9D8, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B7E0(a1, 0);
    sub_0815604C(&a1->unkC);
}

static inline struct Multi_08032B0C *GetUnkBE8(struct Unk_08138D64 *a1) {
    return a1->unkBE8.pat2;
}

static void sub_0813F380(struct Unk_08138D64 *a1) {
    sub_0813B6B0(a1);
    if (sub_0813B548(a1, 0xF) && a1->unk7D0 != 2) {
        switch (a1->unk7D0) {
        case 0:
        case 1:
            a1->unk9CC = sub_0813F4D8;
            break;
        case 3:
        case 4:
            a1->unk9CC = sub_0813F61C;
            break;
        }
    } else {
        bool32 v4;

        if (a1->unk1 == 4 && GetUnkBE8(a1)->unkE == 2)
            v4 = TRUE;
        else
            v4 = FALSE;
        if (v4) {
            a1->unk9CC = sub_08140198;
            a1->unk2 = 6;
        } else {
            bool32 v7;

            if (a1->unk1 == 5 && GetUnkBE8(a1)->unkE == 5)
                v7 = TRUE;
            else
                v7 = FALSE;
            if (v7) {
                a1->unk9CC = sub_08140198;
                a1->unk2 = 9;
            } else {
                sub_0813B61C(a1);
            }
        }
    }
    if (GetUnkBE8(a1)->unkE == 8) {
        sub_08032B84(GetUnkBE8(a1));
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B7E0(a1, 1);
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk590);
    if (!a1->unk7D1)
        sub_0815604C(&a1->unk608);
}

static void sub_0813F4D8(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 1;
    a1->unk9CC = sub_0813F56C;
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        ++a1; --a1;
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B720(a1, 4, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B7E0(a1, 2);
    sub_0815604C(&a1->unkC);
}

static void sub_0813F56C(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4)
        a1->unk9CC = sub_0813EE48;
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B720(a1, 5 - a1->unk9D8, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B7E0(a1, 2);
    sub_0815604C(&a1->unkC);
}

static void sub_0813F61C(struct Unk_08138D64 *a1) {
    a1->unk7D4 = 0;
    a1->unk7D6 = 0;
    a1->unk7D5 = 0;
    a1->unk9D8 = 1;
    a1->unk9CC = sub_0813F6CC;
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        ++a1; --a1;
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B8B0(a1, 1, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B9C0(a1, 0);
    sub_0815604C(&a1->unkC);
}

static void sub_0813F6CC(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4) {
        a1->unk7D8[1] = 0;
        a1->unk7DB[1] = 1;
        a1->unk7DE = 0;
        a1->unk7E0 = 0;
        if (a1->unk7D0 == 4)
            a1->unk9CC = sub_0813FB18;
        else
            a1->unk9CC = sub_0813F7BC;
    }
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B8B0(a1, a1->unk9D8, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B9C0(a1, 0);
    sub_0815604C(&a1->unkC);
}

static void sub_0813F7BC(struct Unk_08138D64 *a1) {
    sub_0813B6B0(a1);
    if (sub_0813B548(a1, 0xF) && a1->unk7D0 != 3) {
        switch (a1->unk7D0) {
        case 0:
        case 1:
        case 2:
            a1->unk9CC = sub_0813F914;
            break;
        case 4:
            a1->unk9CC = sub_0813FB18;
            break;
        }
    } else {
        bool32 v4;

        if (a1->unk1 == 4 && GetUnkBE8(a1)->unkE == 2)
            v4 = TRUE;
        else
            v4 = FALSE;
        if (v4) {
            a1->unk9CC = sub_08140198;
            a1->unk2 = 6;
        } else {
            bool32 v7;

            if (a1->unk1 == 5 && GetUnkBE8(a1)->unkE == 5)
                v7 = TRUE;
            else
                v7 = FALSE;
            if (v7) {
                a1->unk9CC = sub_08140198;
                a1->unk2 = 9;
            } else {
                sub_0813B61C(a1);
            }
        }
    }
    if (GetUnkBE8(a1)->unkE == 8) {
        sub_08032B84(GetUnkBE8(a1));
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B8B0(a1, 5, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B9C0(a1, 1);
    sub_0815604C(&a1->unkC);
    if (!a1->unk7D1)
        sub_0815604C(&a1->unk608);
}

static void sub_0813F914(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 1;
    a1->unk9CC = sub_0813F9A8;
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        ++a1; --a1;
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B8B0(a1, 4, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B9C0(a1, 2);
    sub_0815604C(&a1->unkC);
}

static void sub_0813F9A8(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4) {
        a1->unk7D1 = a1->unkBE8.pat2->unk10;
        switch (a1->unk7D0) {
        case 0:
        case 1:
            a1->unk9CC = sub_0813F4D8;
            break;
        case 2:
            if (a1->unk7D1 >= a1->unk7D0)
                a1->unk9CC = sub_0813F4D8;
            else
                a1->unk9CC = sub_0813F380;
            break;
        case 3:
            if (a1->unk7D1 >= a1->unk7D0)
                a1->unk9CC = sub_0813F4D8;
            else
                a1->unk9CC = sub_0813F61C;
            break;
        case 4:
            a1->unk9CC = sub_0813F61C;
            break;
        }
    }
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813B8B0(a1, 5 - a1->unk9D8, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813B9C0(a1, 2);
    sub_0815604C(&a1->unkC);
}

static void sub_0813FB18(struct Unk_08138D64 *a1) {
    a1->unk7D4 = 0;
    a1->unk7D6 = 0;
    a1->unk7D5 = 0;
    a1->unk9D8 = 1;
    a1->unk9CC = sub_0813FBC8;
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        ++a1; --a1;
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813BA90(a1, 1, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813BBA0(a1, 0);
    sub_0815604C(&a1->unkC);
}

static void sub_0813FBC8(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4) {
        a1->unk7D8[2] = 0;
        a1->unk7DB[2] = 1;
        a1->unk7DE = 0;
        a1->unk7E0 = 0;
        a1->unk9CC = sub_0813FC9C;
    }
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813BA90(a1, a1->unk9D8, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813BBA0(a1, 0);
    sub_0815604C(&a1->unkC);
}

static void sub_0813FC9C(struct Unk_08138D64 *a1) {
    sub_0813B6B0(a1);
    if (sub_0813B548(a1, 0xF)) {
        a1->unk9CC = sub_0813FDC4;
    } else {
        bool32 v4;

        if (a1->unk1 == 4 && GetUnkBE8(a1)->unkE == 2)
            v4 = TRUE;
        else
            v4 = FALSE;
        if (v4) {
            a1->unk9CC = sub_08140198;
            a1->unk2 = 6;
        } else {
            bool32 v7;

            if (a1->unk1 == 5 && GetUnkBE8(a1)->unkE == 5)
                v7 = TRUE;
            else
                v7 = FALSE;
            if (v7) {
                a1->unk9CC = sub_08140198;
                a1->unk2 = 9;
            } else {
                sub_0813B61C(a1);
            }
        }
    }
    if (GetUnkBE8(a1)->unkE == 8) {
        sub_08032B84(GetUnkBE8(a1));
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813BA90(a1, 5, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813BBA0(a1, 1);
    sub_0815604C(&a1->unkC);
    if (!a1->unk7D1)
        sub_0815604C(&a1->unk608);
}

static void sub_0813FDC4(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 1;
    a1->unk9CC = sub_0813FE58;
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        ++a1; --a1;
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813BA90(a1, 4, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813BBA0(a1, 2);
    sub_0815604C(&a1->unkC);
}

static void sub_0813FE58(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4) {
        a1->unk7D1 = a1->unkBE8.pat2->unk10;
        switch (a1->unk7D0) {
        case 0:
        case 1:
        case 2:
            a1->unk9CC = sub_0813F914;
            break;
        case 3:
            if (a1->unk7D1 >= a1->unk7D0)
                a1->unk9CC = sub_0813F914;
            else
                a1->unk9CC = sub_0813F7BC;
            break;
        case 4:
            a1->unk9CC = sub_0813FB18;
            break;
        }
    }
    if (a1->unkBE8.pat2->unkE == 8) {
        sub_08032B84(a1->unkBE8.pat2);
        a1->unk9CC = sub_0813FF6C;
        if (a1->unk1 == 4)
            a1->unk2 = 2;
        else if (a1->unk1 == 5)
            a1->unk2 = 7;
    }
    sub_0813BA90(a1, 5 - a1->unk9D8, 5);
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    sub_0813BBA0(a1, 2);
    sub_0815604C(&a1->unkC);
}

static inline void LoadBgPaletteWithTransformation2(const u16 *src, u8 offset, u16 size) {
    LoadBgPaletteWithTransformation(src, offset, size);
}

static void sub_0813FF6C(struct Unk_08138D64 *a1) {
    CpuCopy16(gUnk_082D7850[gUnk_08385C14[gLanguage][0xF]]->palette + 0x90, (u16 *)0x5000120, 0x20);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;
        u32 j;
        u16 *dst;

        idx = gUnk_08385C14[gLanguage][0xF];
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
        LZ77UnCompVram(tileset, dst);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation2(gUnk_082D7850[gUnk_08385C14[gLanguage][0xF]]->palette, 0, 0x100);
    else {
        DmaCopy16(3, gUnk_082D7850[gUnk_08385C14[gLanguage][0xF]]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    DmaCopy16(3, a1->unk9DA, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    a1->unk9CC = sub_08142B0C;
    sub_0815604C(&a1->unkC);
}

static void sub_081400BC(struct Unk_08138D64 *a1) {
    CpuFill16_2(0, (u16 *)0x06000000, 0x4000);
    CpuFill16_2(0x1ff, (u16 *)0x0600F800, 0x800);
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation2(gUnk_082D7850[0xE3]->palette, 0, 0x100);
    else {
        DmaCopy16(3, gUnk_082D7850[0xE3]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    gBgScrollRegs[0][1] = 0x18;
    sub_0813AB40(a1);
    if (a1->unk1 == 4)
        a1->unk9CC = sub_0813CDE4;
    else if (a1->unk1 == 5)
        a1->unk9CC = sub_08140E40;
}

static void sub_08140198(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08140284;
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    switch (a1->unk7D0) {
    case 0:
    case 1:
        sub_0815604C(&a1->unk478);
        sub_0815604C(&a1->unk4A0);
        sub_0815604C(&a1->unk568);
        break;
    case 2:
        sub_0813B7E0(a1, 1);
        sub_0815604C(&a1->unk590);
        break;
    case 3:
        sub_0813B9C0(a1, 1);
        break;
    case 4:
        sub_0813BBA0(a1, 1);
        break;
    }
    sub_0815604C(&a1->unkC);
    if (a1->unk7D1 == 0 && a1->unk7D0 > 1)
        sub_0815604C(&a1->unk608);
}

static void sub_08140284(struct Unk_08138D64 *a1) {
    s32 var;
    s32 f = 0xF;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    var = a1->unk9D8;
    if (var >= f)
        a1->unk9CC = sub_08142BCC;
    if (++a1->unk7D2 > 0xE) {
        a1->unk7D2 = 0;
        sub_081434AC();
    }
    switch (a1->unk7D0) {
    case 0:
    case 1:
        sub_0815604C(&a1->unk478);
        sub_0815604C(&a1->unk4A0);
        sub_0815604C(&a1->unk568);
        break;
    case 2:
        sub_0813B7E0(a1, 1);
        sub_0815604C(&a1->unk590);
        break;
    case 3:
        sub_0813B9C0(a1, 1);
        break;
    case 4:
        sub_0813BBA0(a1, 1);
        break;
    }
    sub_0815604C(&a1->unkC);
    if (a1->unk7D1 == 0 && a1->unk7D0 > 1)
        sub_0815604C(&a1->unk608);
}

static void sub_08140380(struct Unk_08138D64 *a1) {
    struct Multi_08032B0C *ptr = a1->unkBE8.pat2;
    u16 fill[2];

    sub_0813AB40(a1);
    *&fill[0] = 0;
    CpuSet2(&fill[0], (u16 *)0x6000000, CPU_SET_SRC_FIXED | CPU_SET_16BIT | 0x2000);
    *&fill[0] = 0x1FF;
    CpuSet2(&fill[0], (u16 *)0x600F800, CPU_SET_SRC_FIXED | CPU_SET_16BIT | 0x400);
    gBgScrollRegs[0][1] = 0x18;
    switch (a1->unk2) {
    case 2:
        a1->unk9CC = sub_0813CDE4;
        break;
    case 7:
        a1->unk9CC = sub_08140E40;
        break;
    case 6:
        a1->unk9CC = sub_08142C24;
        break;
    case 9:
        if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA)) {
            ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
            UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA);
        }
        TaskDestroy(gCurTask);
        CpuFill16(RGB_WHITE, gBgPalette, 0x200);
        CpuFill16(RGB_WHITE, gObjPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        sub_08032BD4(ptr);
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
    }
}

static void sub_081404AC(struct Unk_08138D64 *a1) {
    u8 i;
    struct Sprite *sprite;

    a1->unk0 = a1->unk1;
    a1->unk1 = 6;
    a1->unk9C8[0] = 0;
    a1->unk9C8[1] = 0;
    a1->unk7D0 = a1->unkBE8.pat2->unk11;
    a1->unk7D1 = a1->unkBE8.pat2->unk10;
    a1->unkBEC = sub_0802E57C();
    for (i = 0; i < a1->unk7D0; ++i)
        a1->unk9C4[i] = a1->unkBE8.pat2->unk4[i];
    for (i = a1->unk7D0; i < 4; ++i)
        a1->unk9C4[i] = -1;
    gDispCnt |= DISPCNT_BG1_ON;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][0xE];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, a1->unk9DA, gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, gUnk_08385CD4[gLanguage][5].animId, gUnk_08385CD4[gLanguage][5].variant,
        0, 0xFF, 0x10, 0, 0, 0, 0x40000);
    a1->unk28C.x = 0x48;
    a1->unk28C.y = 0x10;
    a1->unk28C.unk1B = 0xFF;
    sub_08155128(&a1->unk28C);
    sub_0813A464(a1);
    a1->unk9CC = sub_08142C9C;
}

static void sub_0814069C(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk9D8 / 0xF;
    for (i = 0; i < 4; ++i) {
        a1->unk2DC[i].x = (-0x98 * a1->unk9D8) / 0xF + 0xF0;
        a1->unk7E4[i][0].x = a1->unk2DC[i].x + 0x70;
        a1->unk7E4[i][1].x = a1->unk2DC[i].x + 0x78;
        a1->unk7E4[i][2].x = a1->unk2DC[i].x + 0x80;
    }
    a1->unk28C.x = 0x68 * a1->unk9D8 / 0xF - 0x20;
    a1->unkC.x = 0x9C * a1->unk9D8 / 0xF - 0x9C;
    gBgScrollRegs[0][1] = 0x18 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE)
        a1->unk9CC = sub_08142CBC;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AEC8(a1);
}

static void sub_081407B4(struct Unk_08138D64 *a1) {
    a1->unk9C8[1] = a1->unk9C8[0];
    a1->unk9C8[0] = a1->unkBE8.pat2->unk12;
    if (a1->unkBE8.pat2->unkE == 4) {
        m4aSongNumStart(SE_08D5E2B8);
        a1->unk9CC = sub_08142D04;
    }
    if (a1->unk9C8[0] != a1->unk9C8[1]) {
        m4aSongNumStart(SE_08D5E294);
        sub_0813B3C8(a1);
        a1->unk28C.y = 0x15 * a1->unk9C8[0] + 0x10;
        sub_08155128(&a1->unk28C);
    }
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AEC8(a1);
    a1->unkBDC(a1);
}

static void sub_0814086C(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1; --a1;
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    for (i = 0; i < 4; ++i) {
        a1->unk2DC[i].x = (0x98 * a1->unk9D8) / 0xF + 0x58;
        a1->unk7E4[i][0].x = a1->unk2DC[i].x + 0x70;
        a1->unk7E4[i][1].x = a1->unk2DC[i].x + 0x78;
        a1->unk7E4[i][2].x = a1->unk2DC[i].x + 0x80;
    }
    a1->unk28C.x = (-0x68 * a1->unk9D8) / 0xF + 0x48;
    a1->unkC.x = (-0x9C * a1->unk9D8) / 0xF;
    gBgScrollRegs[0][1] = (-0x18 * a1->unk9D8) / 0xF + 0x18;
    if (a1->unk9D8 > 0xE) {
        a1->unk9CC = sub_08142D68;
        a1->unkBDC(a1);
    } else {
        if (!sub_08155128(&a1->unk28C))
            a1->unk28C.unk1B = 0xFF;
        sub_0813AEC8(a1);
        a1->unkBDC(a1);
    }
}

static void sub_081409AC(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        sub_0802FBF4(a1->unkBEC);
        a1->unk9D8 = 0;
        a1->unk9CC = sub_08142E0C;
    }
}

static void sub_08140A1C(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    a1->unk0 = a1->unk1;
    a1->unk1 = 7;
    a1->unk9CB = 0;
    a1->unk9CA = 0;
    a1->unk9D8 = 0;
    sub_0813A6D0(a1);
    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, gUnk_08385CD4[gLanguage][2].animId, gUnk_08385CD4[gLanguage][2].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0x40000);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][7];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    a1->unk28C.y = !a1->unk4[a1->unkA] ? 0x20 : 0x10;
    sub_08155128(&a1->unk28C);
    a1->unk9CC = sub_08142FD0;
    a1->unkBDC(a1);
}

static void sub_08140B4C(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    a1->unkC.x = 0x9C * a1->unk9D8 / 5 - 0x9C;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_08143040;
    if (!sub_08155128(&a1->unk28C))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_08140BE8(struct Unk_08138D64 *a1) {
    u8 i, j;
    u8 var = !a1->unk4[a1->unkA] ? 3 : 4;
    struct Sprite *sprite1, *sprite2;

    ++a1->unk9D8;
    j = 0;
    sprite1 = &a1->unk28C;
    sprite2 = &a1->unkC;
    for (; j < var; ++j)
        a1->unk2DC[j].x = -0xD0 * a1->unk9D8 / 5 + 0xF0;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_081430C0;
    if (!sub_08155128(sprite1))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(sprite2);
    sub_0815604C(sprite1);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_08140CD0(struct Unk_08138D64 *a1) {
    u8 i, j;
    u8 r7 = a1->unk4[a1->unkA];
    u8 var = !r7 ? 3 : 4;
    s32 v6;
    struct Sprite *sprite1, *sprite2;

    ++a1->unk9D8;
    j = 0;
    sprite1 = &a1->unk28C;
    sprite2 = &a1->unkC;
    for (; j < var; ++j)
        a1->unk2DC[j].y = (
            v6 = !r7 ? 21 * j + 0x2B : 21 * j + 0x1B,
            (!r7 ? 8 * j + 0x2B : 8 * j + 0x1B) + (!r7 ? ({v6 - 0x2B;}) - 8 * j : ({v6 - 0x1B;}) - 8 * j) * a1->unk9D8 / 5
        );
    a1->unk28C.x = 0x30 * a1->unk9D8 / 5 - 0x20;
    gBgScrollRegs[0][1] = 0x18 * a1->unk9D8 / 5;
    if (a1->unk9D8 > 4) {
        a1->unkBF0 = 0;
        a1->unk9CC = sub_08141300;
    }
    if (!sub_08155128(sprite1))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(sprite2);
    sub_0815604C(sprite1);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static inline u16 *GetUnk9DA(struct Unk_08138D64 *a1) {
    return a1->unk9DA;
}

static void sub_08140E40(struct Unk_08138D64 *a1) {
    u8 r7 = a1->unk4[a1->unkA];
    u8 var = !r7 ? 3 : 4;
    struct Sprite *sprite;
    u8 i;

    a1->unk0 = a1->unk1;
    a1->unk1 = 7;
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][a1->unk9CA + 7];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    DmaCopy16(3, GetUnk9DA(a1), gBgPalette, 0x120);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    gBgScrollRegs[0][1] = 0x18;
    sub_0813A6D0(a1);
    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x780, gUnk_08385CD4[gLanguage][2].animId, gUnk_08385CD4[gLanguage][2].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0x40000);
    a1->unkC.x = 0;
    for (i = 0; i < var; ++i) {
        a1->unk2DC[i].x = 0x20;
        a1->unk2DC[i].y = !r7 ? 21 * i + 0x2B : 21 * i + 0x1B;
    }
    a1->unk28C.x = 0x10;
    a1->unk28C.y = !r7 ? 21 * a1->unk9CA + 0x20 : 21 * a1->unk9CA + 0x10;
    if (a1->unk0 == 5) {
        a1->unkBEC = sub_0802E57C();
        gDispCnt |= DISPCNT_BG1_ON;
        a1->unk37C.y = !r7 ? 21 * a1->unk9CA + 0x35 : 21 * a1->unk9CA + 0x25;
        a1->unk3A6 = 1;
        a1->unk37C.palId = 6;
        sub_08155128(&a1->unk37C);
        if (a1->unk9CA != 3) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08385C14[gLanguage][0xC];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        } else {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08385C14[gLanguage][6];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        sprite = &a1->unk2DC[a1->unk9CA];
        sprite->palId = 4;
        sprite->unk8 = 0;
        sub_08155128(sprite);
    }
    a1->unk9D8 = 0;
    a1->unk9CC = sub_081411A4;
}

static void sub_081411A4(struct Unk_08138D64 *a1) {
    u8 i;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 14)
        a1->unk9CC = sub_08141258;
    gBgScrollRegs[0][1] = 0x18;
    if (a1->unk0 == 5)
        sub_0815604C(&a1->unk37C);
    else if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static void sub_08141258(struct Unk_08138D64 *a1) {
    u8 i;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unkBF0 = 0;
    if (a1->unk0 == 5)
        a1->unk9CC = sub_081416DC;
    else
        a1->unk9CC = sub_08141300;
    if (a1->unk0 == 5)
        sub_0815604C(&a1->unk37C);
    else if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static inline u8 GetUnk9CA(struct Unk_08138D64 *a1) {
    return a1->unk9CA;
}

static inline u8 GetUnk9CB(struct Unk_08138D64 *a1) {
    return a1->unk9CB;
}

static void sub_08141300(struct Unk_08138D64 *a1) {
    u8 i;
    u8 r7 = a1->unk4[a1->unkA];
    u8 var = !r7 ? 3 : 4;
    struct Sprite *sprite = NULL;

    sub_0813B4F0(a1);
    do {
        a1->unk9CB = a1->unk9CA;
        switch (sub_0813B484()) {
        case 0:
            break;
        case 1:
            m4aSongNumStart(SE_08D5E2B8);
            a1->unk9CC = sub_0814155C;
            break;
        case 2:
            m4aSongNumStart(SE_08D5E2DC);
            a1->unk2 = 2;
            a1->unk9CC = sub_08143140;
            break;
        case 3:
            m4aSongNumStart(SE_08D5E294);
            if (!a1->unk9CA)
                a1->unk9CA = var - 1;
            else
                --a1->unk9CA;
            break;
        case 4:
            m4aSongNumStart(SE_08D5E294);
            if (a1->unk9CA == var - 1)
                a1->unk9CA = 0;
            else
                ++a1->unk9CA;
            break;
        }
        if (a1->unk9CA != a1->unk9CB) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;
    
            idx = gUnk_08385C14[gLanguage][a1->unk9CA + 7];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
            sprite = GetUnk2DCSub(a1, GetUnk9CA(a1));
            sprite->palId = 2;
            sub_08155128(sprite);
            sprite = GetUnk2DCSub(a1, GetUnk9CB(a1));
            sprite->palId = 3;
            sub_08155128(sprite);
            a1->unk28C.y = !r7 ? 21 * a1->unk9CA + 0x20 : 21 * a1->unk9CA + 0x10;
            sub_08155128(&a1->unk28C);
        }
    } while (0);
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
#ifdef NONMATCHING
    sub_0815604C(GetUnk28C(a1));
#else
    asm("ldr r0, [sp, #4]\n"
        "bl sub_0815604C\n"); // does not work
#endif
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static inline void SetUnkBF0(struct Unk_08138D64 *a1) {
    a1->unkBF0 = 0;
}

static void sub_0814155C(struct Unk_08138D64 *a1) {
    u8 i;
    u8 r7 = a1->unk4[a1->unkA];
    u8 var = !r7 ? 3 : 4;
    struct Sprite *sprite = NULL;

    a1->unkBE5 = 1;
    a1->unk37C.y = !r7 ? 21 * a1->unk9CA + 0x35 : 21 * a1->unk9CA + 0x25;
    a1->unk3A6 = 0;
    a1->unk37C.palId = 5;
    sub_08155128(&a1->unk37C);
    a1->unk28C.unk1B = 0xFF;
    sub_08155128(&a1->unk28C);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][0xB];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    sprite = GetUnk2DCSub(a1, a1->unk9CA);
    sprite->palId = 4;
    sprite->unk8 = 0;
    sub_08155128(sprite);
    SetUnkBF0(a1);
    a1->unk9CC = sub_081416DC;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_081416DC(struct Unk_08138D64 *a1) {
    u8 i;

    sub_0813B4F0(a1);
    switch (sub_0813B484()) {
    case 0:
        break;
    case 1:
        m4aSongNumStart(SE_08D5E2B8);
        a1->unkBE5 = 0;
        if (a1->unk3A6 == 0) {
            a1->unk9CC = sub_081431F0;
            a1->unk2 = 8;
        } else if (a1->unk3A6 == 1) {
            a1->unk9CC = sub_081431F0;
            a1->unk2 = 5;
        }
        break;
    case 2:
        m4aSongNumStart(SE_08D5E2DC);
        a1->unkBE5 = 0;
        a1->unk9CC = sub_08141964;
        break;
    case 3:
        if (a1->unk3A6)
            m4aSongNumStart(SE_08D5E294);
        a1->unk3A6 = 0;
        a1->unk37C.palId = 5;
        sub_08155128(&a1->unk37C);
        {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08385C14[gLanguage][0xB];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    case 4:
        if (a1->unk3A6 != 1)
            m4aSongNumStart(SE_08D5E294);
        a1->unk3A6 = 1;
        a1->unk37C.palId = 6;
        sub_08155128(&a1->unk37C);
        if (a1->unk9CA != 3) {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08385C14[gLanguage][0xC];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        } else {
            const struct TiledBg_082D7850 *ptr;
            const u16 *tilemap;
            u16 height;
            u16 *vram;
            const u32 *tileset;
            u16 idx;
            u16 i;

            idx = gUnk_08385C14[gLanguage][6];
            ptr = gUnk_082D7850[idx];
            tileset = ptr->tileset;
            tilemap = ptr->tilemap;
            height = ptr->height;
            vram = (u16 *)0x600FD40;
            LZ77UnCompVram(tileset, (u16 *)0x6000000);
            for (i = 0; i < height; ++i)
                CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
        }
        break;
    }
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_08141964(struct Unk_08138D64 *a1) {
    u8 i;
    struct Sprite *sprite = &a1->unk2DC[a1->unk9CA];

    sprite->palId = 2;
    sprite->unk8 = 0;
    sub_08155128(sprite);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;

        idx = gUnk_08385C14[gLanguage][a1->unk9CA + 7];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        vram = (u16 *)0x600FD40;
        LZ77UnCompVram(tileset, (u16 *)0x6000000);
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x20 * sizeof(u16));
    }
    a1->unk9CC = sub_08141300;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static void sub_08141A3C(struct Unk_08138D64 *a1) {
    u8 i, j;
    u8 r7 = a1->unk4[a1->unkA];
    u8 var = !r7 ? 3 : 4;

    ++a1->unk9D8;
    for (j = 0; j < var; ++j)
        a1->unk2DC[j].x = 0xD0 * a1->unk9D8 / 5 + 0x20;
    a1->unk28C.x = -0x30 * a1->unk9D8 / 5 + 0x10;
    a1->unkC.x = -0x9C * a1->unk9D8 / 5;
    gBgScrollRegs[0][1] = -0x18 * a1->unk9D8 / 5 + 0x18;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_081431C0;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_08141B78(struct Unk_08138D64 *a1) {
    u8 i;
    s32 var;
    s32 var2 = 0xF;

    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    var = a1->unk9D8;
    if (var >= var2)
        a1->unk9CC = sub_08143260;
    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_08141BF8(struct Unk_08138D64 *a1) {
    u8 unk9CA = a1->unk9CA;

    sub_0813AD2C(a1);
    switch (a1->unk2) {
    case 8:
        CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
        CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        TaskDestroy(gCurTask);
        switch (unk9CA) {
        case 0:
            sub_0801A744(0);
            break;
        case 1:
            sub_0801A744(1);
            break;
        case 2:
            sub_0801A744(2);
            break;
        case 3:
            if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA)) {
                ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA);
            }
            sub_0801A744(3);
            break;
        }
        break;
    case 5:
        a1->unk9CC = sub_0813ECBC;
        break;
    }
}

static void sub_08141CDC(struct Unk_08138D64 *a1) {
    u8 i;

    switch (a1->unk0) {
    case 1:
        if (!sub_08155128(GetUnk28C(a1)))
            a1->unk28C.unk1B = 0xFF;
        sub_0813AD9C(a1);
        break;
    case 2:
        if (a1->unkBE5)
            sub_0815604C(&a1->unk37C);
        else {
            if (!sub_08155128(GetUnk28C(a1)))
                a1->unk28C.unk1B = 0xFF;
        }
        sub_0815604C(&a1->unkC);
        sub_0815604C(GetUnk28C(a1));
        for (i = 0; i < 4; ++i)
            sub_0815604C(&a1->unk2DC[i]);
        break;
    case 3:
        sub_0815604C(&a1->unk3A8);
        sub_0815604C(&a1->unk3D0);
        sub_0813AE30(a1);
        break;
    case 7:
        if (a1->unkBE5)
            sub_0815604C(&a1->unk37C);
        else {
            if (!sub_08155128(GetUnk28C(a1)))
                a1->unk28C.unk1B = 0xFF;
        }
        sub_0815604C(&a1->unkC);
        sub_0815604C(GetUnk28C(a1));
        for (i = 0; i < 4; ++i)
            sub_0815604C(&a1->unk2DC[i]);
        break;
    case 4 ... 6:
        break;
    }
}

void sub_08141E30(void) {
    gUnk_0203ACB0[gSaveID > 2 ? 0 : gSaveID] = sub_0813914C(gSaveID > 2 ? 0 : gSaveID);
}

static void sub_08141E74(void) {
    struct Unk_08138D64 *var = TaskGetStructPtr(gCurTask);

    ++var->unk9D4;
    var->unk9CC(var);
}

static void sub_08141EC0(struct Unk_08138D64 *a1) {
    u8 i;

    for (i = 0; i < 3; ++i) {
        sub_0814343C(i);
        sub_08143464(i);
    }
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation2(gUnk_082D7850[0xE3]->palette, 0, 0x100);
    else {
        DmaCopy16(3, gUnk_082D7850[0xE3]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    CpuCopy16(gUnk_082D7850[0xE3]->palette, a1->unk9DA, 0x200);
    a1->unk9CC = sub_08141F70;
}

static void sub_08141F70(struct Unk_08138D64 *a1) {
    LZ77UnCompVram(gUnk_082D7850[0xE2]->tileset, (u16 *)0x6008000);
    a1->unk9CC = sub_0813C1C4;
}

static void sub_08141FA4(struct Unk_08138D64 *a1) {
    sub_081392A0(a1);
    a1->unk9CC = sub_0813C388;
}

static void sub_08141FC4(struct Unk_08138D64 *a1) {
    a1->unkBF0 = 0;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
    a1->unk9CC = sub_0813CA24;
}

static void sub_08142018(struct Unk_08138D64 *a1) {
    gUnk_0203ADE0 = -1;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813CB78;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
}

static void sub_0814207C(struct Unk_08138D64 *a1) {
    m4aMPlayFadeOut(&gMPlayInfo_0, 1);
    a1->unk9D8 = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
    a1->unkBDC(a1);
    a1->unk9CC = sub_0813CCA8;
}

static void sub_081420EC(struct Unk_08138D64 *a1) {
    m4aMPlayAllStop();
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142118;
}

static void sub_08142118(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4)
        a1->unk9CC = sub_08142148;
}

static void sub_08142148(struct Unk_08138D64 *a1) {
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    a1->unk9CC = sub_08142178;
}

static void sub_08142178(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_0814218C;
}

static void sub_0814218C(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_081421A0;
}

static void sub_081421A0(struct Unk_08138D64 *a1) {
    TaskDestroy(gCurTask);
    CreateTitleScreen();
}

static void sub_081421B8(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4)
        a1->unk9CC = sub_081421F8;
    a1->unkBDC(a1);
}

static void sub_081421F8(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813D0DC;
    a1->unkBDC(a1);
}

static void sub_08142228(struct Unk_08138D64 *a1) {
    u8 i;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813D178;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_081422A8(struct Unk_08138D64 *a1) {
    u8 i;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813D234;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_08142328(struct Unk_08138D64 *a1) {
    u8 i;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9CC = sub_0813DB74;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_0814238C(struct Unk_08138D64 *a1) {
    u8 i;

    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813DE7C;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
}

static void sub_081423F0(struct Unk_08138D64 *a1) {
    gDispCnt &= ~(DISPCNT_BG0_ON | DISPCNT_BG1_ON);
    if (a1->unk28C.tilesVram) {
        VramFree(a1->unk28C.tilesVram);
        a1->unk28C.tilesVram = 0;
    }
    if (a1->unkC.tilesVram) {
        VramFree(a1->unkC.tilesVram);
        a1->unkC.tilesVram = 0;
    }
    sub_0813A9DC(a1);
    sub_0802E6C4(a1->unkBEC);
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142460;
}

static void sub_08142460(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4) {
        a1->unk9D8 = 0;
        a1->unk9CC = sub_0813DEF0;
    }
}

static void sub_08142494(struct Unk_08138D64 *a1) {
    sub_0802FBF4(a1->unkBEC);
    a1->unk9D8 = 0;
    a1->unk9CC = sub_081424C8;
}

static void sub_081424C8(struct Unk_08138D64 *a1) {
    if (a1->unkBEC->unk188 & 1 || gPressedKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) {
        m4aMPlayFadeOut(&gMPlayInfo_0, 1);
        a1->unk9CC = sub_08142518;
    }
}

static void sub_08142518(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142544;
}

static void sub_08142544(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE) {
        m4aMPlayAllStop();
        a1->unk9D8 = 0;
        a1->unk9CC = sub_08142590;
    }
}

static void sub_08142590(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4)
        a1->unk9CC = sub_081425C0;
}

static void sub_081425C0(struct Unk_08138D64 *a1) {
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    a1->unk9CC = sub_081425F0;
}

static void sub_081425F0(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08142604;
}

static void sub_08142604(struct Unk_08138D64 *a1) {
    m4aMPlayAllStop();
    a1->unk9CC = sub_08142624;
}

static void sub_08142624(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA)) {
        ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
        UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA);
    }
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_08123FD4();
}

static void sub_081426AC(struct Unk_08138D64 *a1) {
    u8 i;

    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813DF4C;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_0814271C(struct Unk_08138D64 *a1) {
    sub_0813A9DC(a1);
    a1->unk9CC = sub_0813ECBC;
}

static void sub_0814273C(struct Unk_08138D64 *a1) {
    u8 i;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813DFCC;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_081427BC(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    if (a1->unk2 == 7)
        a1->unk9CC = a1->unk9D0;
    else
        a1->unk9CC = sub_08142808;
    a1->unkBDC(a1);
}

static void sub_08142808(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 == 5)
        a1->unk9CC = a1->unk9D0;
    a1->unkBDC(a1);
}

static void sub_08142848(struct Unk_08138D64 *a1) {
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    a1->unk9CC = sub_08142878;
}

static void sub_08142878(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_0814288C;
}

static void sub_0814288C(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_081428A0;
}

static void sub_081428A0(struct Unk_08138D64 *a1) {
    m4aMPlayAllStop();
    if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA)) {
        ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
        UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA);
    }
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_081434F8();
}

static void sub_0814291C(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0814293C;
}

static void sub_0814293C(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    a1->unkC.x = 0x9C * a1->unk9D8 / 5 - 0x9C;
    if (a1->unk9D8 > 4)
        a1->unk9CC = sub_0813E2CC;
    sub_0813AE30(a1);
}

static void sub_08142984(struct Unk_08138D64 *a1) {
    u8 unkA = a1->unkA;

    gUnk_0203ACB0[unkA] = -1;
    a1->unk7[unkA] = -1;
    a1->unk4[unkA] = 0;
    ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
    UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, a1->unkA);
    a1->unk9CC = sub_081429EC;
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
}

static void sub_081429EC(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 >= 0x1E || gPressedKeys & B_BUTTON) {
        m4aSongNumStart(SE_08D5E2DC);
        a1->unk9CC = sub_08142A54;
        a1->unk2 = 1;
    }
    sub_0813AE30(a1);
    sub_0815604C(&a1->unk3A8);
    sub_0815604C(&a1->unk3D0);
}

static void sub_08142A54(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0813EBDC;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AD9C(a1);
}

static void sub_08142A9C(struct Unk_08138D64 *a1) {
    sub_0813AA4C(a1);
    if (a1->unk2 == 1)
        a1->unk9CC = sub_0813C414;
    else
        a1->unk9CC = sub_0813CDE4;
}

static void sub_08142AD4(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08142AE8;
}

static void sub_08142AE8(struct Unk_08138D64 *a1) {
    sub_08139F58(a1);
    sub_0813A110(a1);
    a1->unk9CC = sub_0813EE48;
}

static void sub_08142B0C(struct Unk_08138D64 *a1) {
    if (gPressedKeys & B_BUTTON) {
        m4aSongNumStart(SE_08D5E2DC);
        a1->unk9CC = sub_08142B48;
    }
    sub_0815604C(&a1->unkC);
}

static void sub_08142B48(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142B80;
    sub_0815604C(&a1->unkC);
}

static void sub_08142B80(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE)
        a1->unk9CC = sub_081400BC;
    sub_0815604C(&a1->unkC);
}

static void sub_08142BCC(struct Unk_08138D64 *a1) {
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    a1->unk9CC = sub_08142BFC;
}

static void sub_08142BFC(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08142C10;
}

static void sub_08142C10(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08140380;
}

static void sub_08142C24(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142C44;
}

static void sub_08142C44(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 0x3B) {
        if (a1->unkBE8.pat2->unk4[0] != -1) // TODO: pat1?
            a1->unk9CC = sub_081404AC;
        else {
            gUnk_02038580 = 0;
            sub_08032E98();
        }
    }
}

static void sub_08142C9C(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0814069C;
}

static void sub_08142CBC(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9CC = sub_081407B4;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AEC8(a1);
}

static void sub_08142D04(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0814086C;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0813AEC8(a1);
    a1->unkBDC(a1);
}

static void sub_08142D68(struct Unk_08138D64 *a1) {
    gDispCnt &= ~(DISPCNT_BG0_ON | DISPCNT_BG1_ON);
    if (a1->unk28C.tilesVram) {
        VramFree(a1->unk28C.tilesVram);
        a1->unk28C.tilesVram = 0;
    }
    if (a1->unkC.tilesVram) {
        VramFree(a1->unkC.tilesVram);
        a1->unkC.tilesVram = 0;
    }
    sub_0813ACA0(a1);
    sub_0802E6C4(a1->unkBEC);
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142DD8;
}

static void sub_08142DD8(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4) {
        a1->unk9D8 = 0;
        a1->unk9CC = sub_081409AC;
    }
}

static void sub_08142E0C(struct Unk_08138D64 *a1) {
    if (a1->unkBE8.pat2->unkE == 5 && a1->unkBEC->unk188 & 1)
        a1->unk9CC = sub_08142E4C;
}

static void sub_08142E4C(struct Unk_08138D64 *a1) {
    m4aMPlayFadeOut(&gMPlayInfo_0, 1);
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08142E8C;
}

static void sub_08142E8C(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0xF;
    if (a1->unk9D8 > 0xE) {
        m4aMPlayAllStop();
        a1->unk9CC = sub_08142ED4;
    }
}

static void sub_08142ED4(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4)
        a1->unk9CC = sub_08142F04;
}

static void sub_08142F04(struct Unk_08138D64 *a1) {
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    a1->unk9CC = sub_08142F34;
}

static void sub_08142F34(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08142F48;
}

static void sub_08142F48(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08142F5C;
}

static void sub_08142F5C(struct Unk_08138D64 *a1) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_08032BD4(a1->unkBE8.pat2);
}

static void sub_08142FD0(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4)
        a1->unk9CC = sub_08143010;
    a1->unkBDC(a1);
}

static void sub_08143010(struct Unk_08138D64 *a1) {
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08140B4C;
    a1->unkBDC(a1);
}

static void sub_08143040(struct Unk_08138D64 *a1) {
    u8 i;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_08140BE8;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_081430C0(struct Unk_08138D64 *a1) {
    u8 i;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_08140CD0;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_08143140(struct Unk_08138D64 *a1) {
    u8 i;

    a1->unk9D8 = 0;
    a1->unk9CC = sub_08141A3C;
    if (!sub_08155128(GetUnk28C(a1)))
        a1->unk28C.unk1B = 0xFF;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    a1->unkBDC(a1);
}

static void sub_081431C0(struct Unk_08138D64 *a1) {
    sub_0813AD2C(a1);
    a1->unk9CC = sub_0813CDE4;
    a1->unkBDC(a1);
}

static void sub_081431F0(struct Unk_08138D64 *a1) {
    u8 i;

    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    a1->unk9D8 = 0;
    a1->unk9CC = sub_08141B78;
    sub_0815604C(&a1->unkC);
    sub_0815604C(GetUnk28C(a1));
    for (i = 0; i < 4; ++i)
        sub_0815604C(&a1->unk2DC[i]);
    sub_0815604C(&a1->unk37C);
}

static void sub_08143260(struct Unk_08138D64 *a1) {
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    a1->unk9CC = sub_08143290;
}

static void sub_08143290(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_081432A4;
}

static void sub_081432A4(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08141BF8;
}

static void sub_081432B8(struct Unk_08138D64 *a1) {
    a1->unk0 = a1->unk1;
    a1->unk9D8 = 0;
    m4aMPlayFadeOut(&gMPlayInfo_0, 2);
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    sub_08141CDC(a1);
    a1->unkBDC(a1);
    a1->unk9CC = sub_08143314;
}

static void sub_08143314(struct Unk_08138D64 *a1) {
    ++a1->unk9D8;
    gBldRegs.bldY = 0x10 * a1->unk9D8 / 0x1E;
    if (a1->unk9D8 >= 0x1E)
        a1->unk9CC = sub_08143370;
    sub_08141CDC(a1);
    a1->unkBDC(a1);
}

static void sub_08143370(struct Unk_08138D64 *a1) {
    m4aMPlayAllStop();
    a1->unk9D8 = 0;
    a1->unk9CC = sub_0814339C;
}

static void sub_0814339C(struct Unk_08138D64 *a1) {
    if (++a1->unk9D8 > 4)
        a1->unk9CC = sub_081433CC;
}

static void sub_081433CC(struct Unk_08138D64 *a1) {
    if (a1->unkBEC) {
        sub_0802FBE0(a1->unkBEC);
        a1->unkBEC = NULL;
    }
    a1->unk9CC = sub_081433FC;
}

static void sub_081433FC(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08143410;
}

static void sub_08143410(struct Unk_08138D64 *a1) {
    a1->unk9CC = sub_08143424;
}

static void sub_08143424(struct Unk_08138D64 *a1 __attribute__((unused))) {
    TaskDestroy(gCurTask);
    CreateTitleScreen();
}

static void sub_0814343C(u8 a1) {
    CpuFill16(0, (u16 *)0x6000000 + a1 * 0x2000, 0x4000);
}

static void sub_08143464(u8 a1) {
    CpuFill16(0x1FF, (u16 *)0x6000000 + (0x1F - a1) * 0x400, 0x800);
}

static bool32 sub_08143498(s8 a1) {
    if (a1 < 10)
        return FALSE;
    else
        return TRUE;
}

static void sub_081434AC(void) {
    u16 c = gObjPalette[0x38];
    u8 i;

    for (i = 3; i != 0; --i)
        gObjPalette[i + 0x35] = gObjPalette[i + 0x34];
    gObjPalette[0x35] = c; 
    gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
}
