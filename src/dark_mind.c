#include "global.h"
#include "data.h"
#include "functions.h"
#include "dark_mind.h"
#include "task.h"
#include "code_08002848.h"
#include "main.h"
#include "code_0800A868.h"

void sub_08100F18(struct DarkMindForm1 *);
void sub_08101630(struct DarkMindForm1 *);
void sub_08101784(struct DarkMindForm1 *);
void sub_0810181C(struct DarkMindForm1 *);
void sub_08101968(struct DarkMindForm1 *);
void sub_08101A40(struct DarkMindForm1 *);
void sub_08101B28(struct DarkMindForm1 *);
void sub_08101E38(struct DarkMindForm1 *);
void sub_08102104(struct DarkMindForm1 *);
void sub_08102414(struct DarkMindForm1 *);
void sub_081027C0(struct DarkMindForm1 *);
void sub_08102938(struct DarkMindForm1 *);
void sub_08102A80(struct DarkMindForm1 *);
void sub_08102D9C(struct DarkMindForm1 *);
void sub_08102F3C(struct DarkMindForm1 *);
void sub_08102FD0(struct DarkMindForm1 *);
void sub_081030A8(struct DarkMindForm1 *);
void sub_08103268(struct DarkMindForm1 *);
void sub_081038CC(struct DarkMindForm1 *);
void sub_081039AC(struct DarkMindForm1 *);
void sub_08103A00(struct DarkMindForm1 *);
void sub_08103A64(struct DarkMindForm1 *);
void sub_08103AE4(struct DarkMindForm1 *);
void sub_08103C68(struct DarkMindForm1 *);
void sub_08103CD0(struct DarkMindForm1 *);
void sub_08103FC0(struct DarkMindForm1 *);
void sub_08104028(struct DarkMindForm1 *);
void sub_08104080(struct DarkMindForm1 *);
void sub_081042C8(struct DarkMindForm1 *);
void sub_08104424(struct DarkMindForm1 *);
void sub_081044D0(struct DarkMindForm1 *);
void sub_0810451C(struct DarkMindForm1 *);
void sub_0810457C(struct DarkMindForm1 *);
void sub_08104704(struct DarkMindForm1 *);
void sub_081047D0(struct DarkMindForm1 *);
void sub_081049E8(struct DarkMindForm1 *);
void sub_08104AA8(struct DarkMindForm1 *);
void sub_08104C80(struct DarkMindForm1 *);
void sub_08104CD8(struct DarkMindForm1 *);
void sub_08104E04(struct DarkMindForm1 *);
void sub_081050E8(struct Object2 *, u8);
void sub_08105278(void);
struct Object4 *sub_081055B8(struct Object2 *);
void sub_08105698(void);
void sub_081059A8(struct DarkMindForm1 *);
void sub_08105CE0(struct Object2 *);
void sub_08105EC4(struct DarkMindForm1 *);
void sub_081060C0(struct DarkMindForm1 *, s16, s16, u8);
void sub_081062B4(struct DarkMindForm1 *);
void sub_08106508(struct DarkMindForm1 *);
void sub_081065B0(struct DarkMindForm1 *);
void sub_08106804(struct DarkMindForm1 *, s16, s16);
void sub_081068F8(struct DarkMindForm1 *);
void sub_081069BC(struct DarkMindForm1 *);
void sub_08106AD0(struct Object2 *);
void sub_08106BE0(void);
struct DarkMindBomb *sub_08107254(struct Object2 *);
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
void sub_081099A4(struct DarkMindBomb *);
void sub_081099C0(struct Object2 *);
void sub_081099D4(struct DarkMindForm1 *);
void sub_08109A00(struct DarkMindForm1 *);
void sub_08109A38(struct DarkMindForm1 *);
void sub_08109A8C(struct DarkMindForm1 *);
void sub_08109AD4(struct DarkMindForm1 *);
void sub_08109B1C(struct DarkMindForm1 *);
void sub_08109B64(struct DarkMindForm1 *);
void sub_08109B98(struct DarkMindForm1 *);
void sub_08109BD0(struct DarkMindForm1 *);
void sub_08109C08(struct DarkMindForm1 *);
void sub_08109C40(struct DarkMindForm1 *);
void sub_08109C74(struct DarkMindForm1 *);
void sub_08109C8C(struct DarkMindForm1 *);
void sub_08109CB4(struct DarkMindForm1 *);
void sub_08109CEC(struct DarkMindForm1 *);
void sub_08109D5C(struct DarkMindForm1 *);
void sub_08109D98(struct DarkMindForm1 *);
void sub_08109DC4(struct Object2 *, s16 *, s16 *);
void sub_08109E00(struct Object2 *);
void sub_08109E24(struct Object2 *);
void sub_08109E4C(struct Object2 *);
void sub_08109E98(struct DarkMindForm1 *);
void sub_08109EF8(struct DarkMindForm1 *);
void sub_08109F40(struct DarkMindForm1 *);
void sub_08109F90(struct DarkMindBomb *);
void sub_08109FBC(struct DarkMindBomb *);
void sub_08109FF4(struct DarkMindBomb *);
void sub_0810A034(struct DarkMindBomb *);
void sub_0810A098(struct Object2 *);
void sub_0810A104(struct Task *);
void sub_0810A130(struct Task *);
void sub_0810BE08(struct DarkMindForm2 *);
void sub_0810BE7C(struct DarkMindForm2 *);
void sub_0810C15C(struct DarkMindForm2 *);
void sub_0810C510(struct DarkMindForm2 *);
void sub_0810C62C(struct DarkMindForm2 *);
void sub_0810C6A4(struct DarkMindForm2 *);
void sub_0810C9C8(struct DarkMindForm2 *);
void sub_0810CA50(struct DarkMindForm2 *);
void sub_0810CBE8(struct DarkMindForm2 *);
void sub_0810CC90(struct DarkMindForm2 *);
void sub_0810CF60(struct DarkMindForm2 *);
void sub_0810D2EC(struct DarkMindForm2 *);
void sub_0810D4E0(struct DarkMindForm2 *);
void sub_0810D730(struct DarkMindForm2 *);
void sub_0810D914(struct DarkMindForm2 *);
void sub_0810DCA4(struct DarkMindForm2 *);
void sub_0810DD60(struct DarkMindForm2 *);
void sub_0810DED0(struct DarkMindForm2 *);
void sub_0810DF60(struct DarkMindForm2 *);
void sub_0810E230(struct DarkMindForm2 *);
void sub_0810E300(struct DarkMindForm2 *);
void sub_0810E4A0(struct DarkMindForm2 *);
void sub_0810E590(struct DarkMindForm2 *);
void sub_0810E65C(struct DarkMindForm2 *);
void sub_0810E8D0(struct DarkMindForm2 *);
void sub_0810E938(struct DarkMindForm2 *);
void sub_0810EA50(struct DarkMindForm2 *);
void sub_0810EDEC(struct DarkMindForm2 *);
void sub_0810F13C(struct DarkMindForm2 *);
void sub_0810F5A4(struct Object12 *);
void sub_0810F818(struct Object12 *);
void sub_0810FC44(struct Object12 *);
void sub_0810FDA4(struct Object12 *);
void DarkMindForm2CreateRandomEnemies(struct Object12 *);
void sub_081103C8(struct Object12 *);
void sub_081104C8(struct Object12 *);
void sub_081106F4(struct Object12 *);
void sub_0811076C(struct Object12 *);
void sub_081109AC(struct Object12 *);
void sub_08110B64(struct Object12 *);
void sub_08110DEC(struct Object12 *);
void sub_08110E60(struct Object12 *);
void sub_08110F80(struct Object12 *);
void sub_08111314(struct DarkMindForm2 *);
void sub_08111534(struct Object2 *, struct Object12 *);
void DarkMindForm2CreateLaserShower(struct DarkMindForm2 *);
void sub_08111B88(struct Object2 *);
void sub_08111C5C(void);
struct Object4 *sub_08111EF4(struct DarkMindForm2 *);
void sub_08112024(void);
struct Object4 *sub_081122A0(struct Object2 *, u8);
void sub_081123CC(void);
struct Object4 *sub_081126C0(struct DarkMindForm2 *, u8);
void sub_08112880(void);
struct Task *sub_08113508(struct DarkMindForm2 *, u16);
void sub_081135A8(void);
void sub_0811370C(void);
void sub_081138D0(struct Task *);
void sub_08113940(void);
void DarkMindForm2FlipSprites(void);
void sub_08113BAC(struct Object2 *);
void sub_08113BEC(struct Object2 *);
void sub_08113C10(struct Object2 *);
void sub_08113C9C(struct DarkMindForm2 *);
void sub_08113CCC(struct DarkMindForm2 *);
void sub_08113CE8(struct DarkMindForm2 *);
void sub_08113D2C(struct DarkMindForm2 *);
void sub_08113D68(struct DarkMindForm2 *);
void sub_08113DE8(struct DarkMindForm2 *);
void sub_08113E14(struct DarkMindForm2 *);
void sub_08113E30(struct DarkMindForm2 *);
void sub_08113E98(struct DarkMindForm2 *);
void sub_08113EE8(struct DarkMindForm2 *);
void sub_08113F00(struct DarkMindForm2 *);
void sub_08113F38(struct DarkMindForm2 *);
void sub_08113F50(struct DarkMindForm2 *);
void sub_08113F88(struct DarkMindForm2 *);
void sub_08113FA0(struct DarkMindForm2 *);
void sub_08113FF8(struct DarkMindForm2 *);
void sub_0811401C(struct DarkMindForm2 *);
void sub_08114054(struct DarkMindForm2 *);
void sub_0811406C(struct DarkMindForm2 *);
void sub_081140A4(struct DarkMindForm2 *);
void sub_081140BC(struct DarkMindForm2 *);
void sub_081140F4(struct DarkMindForm2 *);
void sub_08114130(struct DarkMindForm2 *);
void sub_08114170(struct DarkMindForm2 *);
void sub_081141AC(struct DarkMindForm2 *);
void sub_081141D0(struct DarkMindForm2 *);
void sub_081141F4(struct DarkMindForm2 *);
void sub_08114218(struct DarkMindForm2 *);
void sub_08114250(struct DarkMindForm2 *);
void sub_08114268(struct DarkMindForm2 *);
void sub_081142B0(struct DarkMindForm2 *);
void sub_08114310(struct DarkMindForm2 *);
void sub_08114348(struct DarkMindForm2 *);
void sub_08114360(struct DarkMindForm2 *);
void sub_081143AC(struct DarkMindForm2 *);
void sub_081143F0(struct Object12 *);
void sub_08114420(struct Object12 *);
void sub_081144A0(struct Object12 *);
void sub_081144EC(struct Object12 *);
void sub_08114528(struct Object12 *);
void sub_08114554(struct Object12 *);
void sub_08114578(struct Object12 *);
void sub_0811459C(struct Object12 *);
void sub_081145C8(struct Object12 *);
void sub_081145EC(struct Object12 *);
void sub_0811461C(struct Object12 *);
void sub_08114674(struct Object12 *);
void sub_0811468C(struct Object12 *);
void sub_081146B0(struct Object12 *);
void sub_08114708(struct Object2 *);
void sub_08114714(struct Object2 *);
void sub_0811473C(struct Object2 *);
void sub_08114784(struct Object2 *);
void sub_081147B0(struct Task *);
void sub_081147F0(struct Task *);
void sub_08114A4C(struct DarkMindTrigger *);
void sub_08114BA0(struct DarkMindTrigger *);
void sub_08114C44(struct DarkMindTrigger *);
void sub_08114FF4(struct DarkMindTrigger *);
void sub_081150C0(struct DarkMindTrigger *);
void sub_08115240(struct DarkMindTrigger *);
void sub_0811530C(struct DarkMindTrigger *);
void sub_08115370(struct DarkMindTrigger *);
void sub_08115814(struct DarkMindTrigger *);
void sub_0811589C(struct DarkMindTrigger *);
void sub_0811643C(struct DarkMindTrigger *);
void sub_081164E0(struct DarkMindTrigger *);
void sub_08116BC0(struct DarkMindTrigger *);
void sub_08116C54(struct DarkMindTrigger *);
void sub_08116DE4(struct DarkMindTrigger *);
void sub_08116E74(struct DarkMindTrigger *);
void sub_08116FFC(struct DarkMindTrigger *);
struct Object4 *sub_081171BC(struct DarkMindTrigger *);
void sub_08117298(void);
void sub_08117964(struct DarkMindTrigger *, s16, s16, u8);
void sub_08117A9C(struct DarkMindTrigger *, s16, s16, s8, s8);
void sub_08117C84(struct DarkMindTrigger *);
void sub_08117DA0(void);
void sub_08117F6C(struct DarkMindTrigger *);
void sub_08118064(void);
void sub_08118310(void);
void sub_08118600(struct Object2 *, s16, s16);
void sub_08118678(struct DarkMindTrigger *);
void sub_081186B8(struct DarkMindTrigger *);
void sub_081186F0(struct DarkMindTrigger *);
void sub_08118734(struct DarkMindTrigger *);
void sub_0811879C(struct DarkMindTrigger *);
void sub_081187D0(struct DarkMindTrigger *);
void sub_081187F4(struct DarkMindTrigger *);
void sub_08118828(struct DarkMindTrigger *);
void sub_08118868(struct DarkMindTrigger *);
void sub_0811889C(struct DarkMindTrigger *);
void sub_081188EC(struct DarkMindTrigger *);
void sub_08118928(struct DarkMindTrigger *);
void sub_08118964(struct DarkMindTrigger *);
void sub_08118990(struct DarkMindTrigger *);
void sub_08118A00(struct DarkMindTrigger *);
void sub_08118A1C(struct DarkMindTrigger *);
void sub_08118A60(struct DarkMindTrigger *);
void sub_08118AC8(struct Object2 *);
void sub_08118AD4(struct Object2 *);

extern const s8 gUnk_083571E0[][2];
extern const u8 gUnk_08357250[];
extern const s16 gUnk_08357256[];
extern const struct Unk_08357260 gUnk_08357260[];
extern const struct Unk_08357260 gUnk_08357268[];
extern const u16 gUnk_08357278[];
extern const u8 gUnk_08357288[];
extern const u8 gUnk_08357290[];
extern const u16 gUnk_083572C0[];
extern const u16 gUnk_083572D0[][2];
extern const u8 gUnk_083572E8[];
extern const u8 gUnk_083572EE[];
extern const u8 gUnk_083572F3[];
extern const u8 gUnk_083572F9[];

struct Unk_08357304 {
    u16 unk0;
    u8 unk2;
    u16 unk4;
    u8 unk6;
    u16 unk8;
    u8 unkA;
    u16 unkC;
    u8 unkE;
    u16 unk10;
    u8 unk12;
    u16 unk14;
    u8 unk16;
    u16 unk18;
    u8 unk1A;
    u16 unk1C;
    u8 unk1E;
};

extern const struct Unk_08357304 gUnk_08357304;
extern const u16 gUnk_0835736C[];
extern const u8 gUnk_0835737C[];
extern const u8 gUnk_08357384[];
extern const u8 gDarkMindForm2Enemy3Types[];
extern const u8 gDarkMindForm2Enemy2Types[];
extern const u8 gDarkMindForm2Enemy1Types[];
extern const u16 gUnk_083573B4[];
extern const struct Unk_08357260 gUnk_083573AC;
extern const s32 gUnk_083573D0[][2];
extern const struct Unk_08353510 gUnk_083573F0[];
extern const struct Unk_08353510 gUnk_08357648[];
extern const u16 gUnk_08357ABC[];
extern const struct Unk_08357260 gUnk_08357ACC[];
extern const struct Unk_08357260 gUnk_08357AD4[];
extern const u8 gUnk_08357B14[];

// they can probably be merged into one function, but I can't. 
static inline s32 RandLessThan2(void)
{
    u16 r = Rand16(), i;

    for (i = 0; i <= 0; ++i)
        if (r < (i+1) * (0x10000/2))
            break;
    return i;
}

static inline s32 RandLessThan4(void)
{
    u16 r = Rand16(), i;

    for (i = 0; i <= 2; ++i)
        if (r < (i+1) * (0x10000/4))
            break;
    return i;
}

static inline s32 RandLessThan5(void)
{
    u16 r = Rand16(), i;

    for (i = 0; i <= 3; ++i)
        if (r < (i+1) * (0x10000/5))
            break;
    return i;
}

static inline s32 RandLessThan10(void)
{
    u16 r = Rand16(), i;

    for (i = 0; i <= 8; ++i)
        if (r < (i+1) * (0x10000/10))
            break;
    return i;
}

void *CreateDarkMindForm1(struct Object *r6, u8 r4_)
{
    u16 r4;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct DarkMindForm1), 0x1000, 0x10, ObjectDestroy);
    struct DarkMindForm1 *r0, *r5 = TaskGetStructPtr(task, r0);

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
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r5->unk0.base.unk60__42 && !(gUnk_0203AD20 & 4))
        m4aSongNumStartOrChange(sub_08002A0C(r4));
    r5->unk0.unk9E = 0;
    r5->unk0.unk7C = sub_08104E04;
    sub_081099D4(r5);
    return r5;
}

void sub_081003EC(struct DarkMindForm1 *r5)
{
    struct Kirby *r6 = sub_0803D368(&r5->unk0);
    bool32 r2;
    u8 i;
    struct DarkMindForm1 *r8;

    r5->unk0.kirby3 = r6;
    r5->unk0.base.flags |= 4;
    if (!(r6->base.base.unkC & 0x8000)
        && r5->unk0.base.unk60__42 == r6->base.base.unk60__42
        && sub_08039430(&r6->base, 
                        r5->unk0.base.x, 
                        r5->unk0.base.y, 
                        r5->unk0.object->unk1A, 
                        r5->unk0.object->unk1C,
                        r5->unk0.object->unk1E,
                        r5->unk0.object->unk20))
    {
        r8 = r5;
        Macro_081003EC(&r5->unk0, &r5->unk0.kirby3->base.base);
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
        sub_08109C40(r5);
    }
}


void sub_08100538(struct DarkMindForm1 *r4)
{
    u8 r1;
    s8 r3;
    struct DarkMindForm1 *r5 = r4;
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

void sub_081007A8(struct DarkMindForm1 *r3)
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

void sub_08100858(struct DarkMindForm1 *r3)
{
    u32 r5 = 1;
    struct DarkMindForm1 *r4 = r3;
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

#define Macro_081009A4(dmf1) \
({ \
    struct DarkMindForm1 *_r3; \
 \
    _r3 = (dmf1); \
    _r3->unkD4 = RandLessThan3(); \
    _r3->unkD8 = 0; \
    _r3->unkD6 = 0; \
    _r3->unkDA = 0; \
    sub_08102938((dmf1)); \
})

void sub_081009A4(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;
    u16 rand;
    u32 r3_;
    s32 r0;
    
    switch (r5->unkD5)
    {
    default:
    case 0:
        switch (RandLessThan5())
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
        rand = Rand16() & 7;
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
        if (rand < r3_)
        {
            r4->unk0.unk85 = 0;
            sub_081030A8(r4);
        }
        else if (rand < ((s32)r3_ + r0))
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

void sub_08100BD0(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;
    u16 rand;
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
        switch (RandLessThan5())
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
        rand = Rand16() & 7;
        r6 = 1;
        if (r5->unkD5 == 2)
            r3_ = 4;
        else
            r3_ = 5;
        if (rand < r6)
        {
            r4->unk0.unk85 = 0;
            sub_081030A8(r4);
        }
        else if (r0 = r6 + r3_, rand < r0)
        {
            sub_08100538(r4);
        }
        else if (rand == 7)
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

void sub_08100EA0(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;

    ObjectSetFunc(r5, 0, sub_08100F18);
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

void sub_08100F18(struct DarkMindForm1 *r5)
{
    u8 r4;
    struct DarkMindForm1 *sb = r5;

    r5->unk0.base.flags |= 4;
    if ((r4 = r5->unk0.unk9F))
    {
        r5->unk0.base.yspeed = gUnk_08357256[(r5->unk0.unk9E >> 4) & 3];
        ++r5->unk0.unk9E;
        if (r5->unk0.subtype <= 2)
        {
            if (r5->unk0.base.counter == 180)
                Macro_08100F18(&r5->unk0);
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
                Macro_08100F18(&r5->unk0);
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

void sub_08101350(struct DarkMindForm1 *r4)
{
    r4->unk0.unk7C = NULL;
    if (r4->unk0.object->subtype2 == 3)
        sub_08109CB4(r4);
    else
    {
        ObjectSetFunc(r4, 0, sub_08109C8C);
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

#define Macro_081013C8(obj2, r3) \
({ \
    (r3) = sub_0808AE30(obj2, 0, 0x292, Rand16() & 3); \
 \
    (r3)->unk34 += (0x40 - (Rand16() & 0x7F)) * 0x100; \
    (r3)->unk38 += (0x20 - (Rand16() & 0x3F)) * 0x100; \
})

void sub_081013C8(struct DarkMindForm1 *r7)
{
    struct DarkMindForm1 *r8 = r7;
    struct Object4 *r3;

    if (r7->unk0.unk9F == 32 || r7->unk0.unk9F == 64
        || r7->unk0.unk9F == 94 || r7->unk0.unk9F == 124
        || r7->unk0.unk9F == 148 || r7->unk0.unk9F == 168
        || r7->unk0.unk9F == 186 || r7->unk0.unk9F == 202
        || r7->unk0.unk9F == 216 || r7->unk0.unk9F == 230
        || r7->unk0.unk9F == 240 || r7->unk0.unk9F == 248
        || r7->unk0.unk9F == 255)
        Macro_081013C8(&r7->unk0, r3);
    ++r7->unk0.unk9F;
    if (!(r7->unk0.unk9F & 0x1F))
    {
        if (Rand16() & 1)
            Macro_081013C8(&r7->unk0, r3);
    }
    if (r7->unk0.base.counter > 255)
    {
        if (++r7->unk0.unk9E == 16)
        {
            r8->unkD0 = sub_08086938(&r7->unk0, 1);
            sub_08109D98(r7);
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

void sub_08101560(struct DarkMindForm1 *r7)
{
    struct Object4 *r3;

    if (r7->unk0.unk9F == 32 || r7->unk0.unk9F == 64
        || r7->unk0.unk9F == 94 || r7->unk0.unk9F == 124
        || r7->unk0.unk9F == 148 || r7->unk0.unk9F == 168
        || r7->unk0.unk9F == 186 || r7->unk0.unk9F == 202
        || r7->unk0.unk9F == 216 || r7->unk0.unk9F == 230
        || r7->unk0.unk9F == 240 || r7->unk0.unk9F == 248
        || r7->unk0.unk9F == 255)
        Macro_081013C8(&r7->unk0, r3);
    ++r7->unk0.unk9F;
    if (++r7->unk0.base.counter > 248)
    {
        sub_080700D8(&r7->unk0);
        r7->unk0.base.flags |= 0x1000;
    }
}

void sub_08101630(struct DarkMindForm1 *r5)
{
    if (r5->unk0.unk80 <= 0)
        sub_08101350(r5);
    else
    {
        r5->unkD5 = 0;
        ObjectSetFunc(r5, 0, sub_08101784);
        r5->unk0.base.xspeed = 0;
        r5->unk0.base.yspeed = 0;
        r5->unk0.base.flags |= 0x40;
        r5->unk0.kirby3 = sub_0803D368(&r5->unk0);
        if (r5->unk0.base.x > r5->unk0.kirby3->base.base.x)
            r5->unk0.base.flags |= 1;
        else
            r5->unk0.base.flags &= ~1;
        r5->unk0.unkA2 = r5->unk0.base.y >> 8;
        switch (RandLessThan5())
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

void sub_08101784(struct DarkMindForm1 *r3)
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

void sub_0810181C(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;

    ObjectSetFunc(r4, 0, sub_08101B28);
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
            r4->unk0.unk78 = sub_08101E38;
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
            r4->unk0.unk78 = sub_08102414;
        }
        else
        {
            r4->unk0.unkA0 = (x2 >> 8) - 96;
            r4->unk0.unkA2 = (r4->unk0.kirby3->base.base.y >> 8) - 48;
            r4->unk0.unk78 = sub_08102104;
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

void sub_08101968(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 3;
    ObjectSetFunc(r5, 0, sub_08101B28);
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
        r5->unk0.unk78 = sub_08101E38;
    }
    else
    {
        r5->unk0.unkA0 = (r5->unk0.kirby3->base.base.x >> 8) - 108;
        r5->unk0.unk78 = sub_08102414;
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

void sub_08101A40(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 2;
    ObjectSetFunc(r5, 0, sub_08101B28);
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
        r5->unk0.unk78 = sub_08102104;
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

void sub_08101B28(struct DarkMindForm1 *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 1)
        || r3->unk0.base.x <= r3->unk0.unkA0 * 0x100)
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
        if (r3->unk0.base.y >= r3->unk0.unkA2 * 0x100)
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

void sub_08101E38(struct DarkMindForm1 *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 2)
        || r3->unk0.base.x >= r3->unk0.unkA0 * 0x100)
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

void sub_08102104(struct DarkMindForm1 *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 1)
        || r3->unk0.base.x >= r3->unk0.unkA0 * 0x100)
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
        if (r3->unk0.base.y >= r3->unk0.unkA2 * 0x100)
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

void sub_08102414(struct DarkMindForm1 *r3)
{
    r3->unk0.base.flags |= 4;
    ObjXSomething(&r3->unk0);
    ObjYSomething(&r3->unk0);
    if ((r3->unk0.base.unk62 & 2)
        || r3->unk0.base.x <= r3->unk0.unkA0 * 0x100)
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

void sub_081026E0(struct DarkMindForm1 *r5)
{
    ObjectSetFunc(r5, 5, sub_081027C0);
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

void sub_081027C0(struct DarkMindForm1 *r5)
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
            if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r5->unk0.base.unk60__42)
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

void sub_08102938(struct DarkMindForm1 *r4)
{
    bool32 r5 = FALSE;

    if (r4->unkD5 != 6)
        r4->unkD5 = 1;
    if (r4->unk0.unk78 == sub_08102D9C)
        r5 = TRUE;
    ObjectSetFunc(r4, 1, sub_08109A00);
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

void sub_08102A80(struct DarkMindForm1 *r6)
{
    struct DarkMindForm1 *r5 = r6;

    ObjectSetFunc(r6, 2, sub_08102D9C);
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
        r6->unk0.base.x = r5->unkD6 * 0x100;
        r6->unk0.base.y = r5->unkD8 * 0x100;
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
        if ((r6->unk0.unkA4 * 0x100) + 0x3800 > r6->unk0.base.x)
            r6->unk0.base.x = (r6->unk0.unkA4 * 0x100) + 0x3800;
        if ((r6->unk0.unkA8 * 0x100) - 0x3800 < r6->unk0.base.x)
            r6->unk0.base.x = (r6->unk0.unkA8 * 0x100) - 0x3800;
        if ((r6->unk0.unkA6 * 0x100) + 0x2800 > r6->unk0.base.y)
            r6->unk0.base.y = (r6->unk0.unkA6 * 0x100) + 0x2800;
        if ((r6->unk0.unkAA * 0x100) - 0x5800 < r6->unk0.base.y)
            r6->unk0.base.y = (r6->unk0.unkAA * 0x100) - 0x5800;
    }
}

void sub_08102D9C(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r6 = r4;

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

void sub_08102F3C(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 0, sub_08102FD0);
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

void sub_08102FD0(struct DarkMindForm1 *r3)
{
    struct DarkMindForm1 *r4 = r3;

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

void sub_081030A8(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 6, sub_08109A38);
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

void sub_08103138(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r6 = r4;

    ObjectSetFunc(r4, 7, sub_08103268);
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

void sub_08103268(struct DarkMindForm1 *r4)
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

void sub_08103380(struct DarkMindForm1 *r1)
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

void sub_08103404(struct DarkMindForm1 *r5)
{
    struct DarkMindForm1 *r6 = r5;
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
            ObjectSetFunc(r5, 11, sub_08103380);
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

void sub_08103688(struct DarkMindForm1 *r5)
{
    struct DarkMindForm1 *r6 = r5;
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
            ObjectSetFunc(r5, 11, sub_08103380);
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

void sub_081038CC(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 5;
    ObjectSetFunc(r5, 8, sub_081039AC);
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

void sub_081039AC(struct DarkMindForm1 *r4)
{
    r4->unk0.base.flags |= 4;
    if (!--r4->unk0.base.counter)
    {
        ObjectSetFunc(r4, 11, sub_08103380);
        r4->unk0.base.xspeed = 0;
        r4->unk0.base.yspeed = 0;
        r4->unk0.base.flags |= 0x40;
        r4->unk0.base.flags &= ~2;
        r4->unk0.base.counter = 4;
        r4->unk0.unk9E = 0;
        r4->unk0.unk9F = 0;
    }
}

void sub_08103A00(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;
    
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

void sub_08103A64(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 5;
    ObjectSetFunc(r5, 10, sub_08103AE4);
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

void sub_08103AE4(struct DarkMindForm1 *r5)
{
    struct DarkMindForm1 *r7 = r5;

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
            ObjectSetFunc(r5, 11, sub_08103380);
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

void sub_08103C68(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 5;
    ObjectSetFunc(r5, 10, sub_08103CD0);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = Rand16() & 7;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
}

void sub_08103CD0(struct DarkMindForm1 *r5)
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
            ObjectSetFunc(r5, 11, sub_08103380);
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

void sub_08103E60(struct DarkMindForm1 *r5)
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
            ObjectSetFunc(r5, 11, sub_08103380);
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

void sub_08103FC0(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;

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

void sub_08104028(struct DarkMindForm1 *r4)
{
    r4->unkD5 = 5;
    ObjectSetFunc(r4, 8, sub_08104080);
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

void sub_08104080(struct DarkMindForm1 *r5)
{
    struct DarkMindForm1 *r3 = r5;

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
            ObjectSetFunc(r5, 11, sub_08103380);
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

void sub_081042C8(struct DarkMindForm1 *r6)
{
    struct DarkMindForm1 *r5 = r6;

    r6->unkD5 = 5;
    ObjectSetFunc(r6, 8, sub_08104424);
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

void sub_08104424(struct DarkMindForm1 *r4)
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
            ObjectSetFunc(r4, 11, sub_08103380);
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

void sub_081044D0(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;

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

void sub_0810451C(struct DarkMindForm1 *r4)
{
    r4->unkD5 = 5;
    ObjectSetFunc(r4, 8, sub_0810457C);
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

void sub_0810457C(struct DarkMindForm1 *r5)
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
            ObjectSetFunc(r5, 11, sub_08103380);
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

void sub_08104704(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 5;
    ObjectSetFunc(r5, 8, sub_081047D0);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 0;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
    PlaySfx(&r5->unk0.base, 426);
}

void sub_081047D0(struct DarkMindForm1 *r4)
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
            ObjectSetFunc(r4, 11, sub_08103380);
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

void sub_0810487C(struct DarkMindForm1 *sb)
{
    struct DarkMindForm1 *r8 = sb;
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

void sub_081049E8(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 5;
    ObjectSetFunc(r5, 7, sub_08104AA8);
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

void sub_08104AA8(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r3 = r4;

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
            r4->unk0.unk9F = 0;
            if (r3->unkE2)
            {
                --r3->unkE2;
                sub_0810487C(r4);
            }
            else
            {
                r3->unkDA = 0;
                r3->unkD8 = 0;
                r3->unkD6 = 0;
            }
            sub_08102938(r4);
        }
        break;
    }
}

void sub_08104C80(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 6;
    ObjectSetFunc(r5, 8, sub_08104CD8);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 600;
    r5->unk0.unk9E = 0x20;
    r5->unk0.unk9F = 0x20;
    r5->unkBC = sub_08107254(&r5->unk0);
}

void sub_08104CD8(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;

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
        if (r5->unkBC->unk0.base.unk62 & 4
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

void sub_08104D94(struct DarkMindForm1 *r4)
{
    if (r4->unk0.unk78 != sub_08109C08)
    {
        ObjectSetFunc(r4, 0, sub_08109C08);
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

void sub_08104E04(struct DarkMindForm1 *r4)
{
    struct DarkMindForm1 *r5 = r4;
    s32 r2, r1;

    if (r5->unkC8 && r5->unkC8->flags & 0x1000)
        r5->unkC8 = NULL;
    if (r5->unkBC && r5->unkBC->unk0.base.flags & 0x1000)
    {
        r5->unkBC = NULL;
        r4->unk0.base.counter = 32;
    }
    if (!Macro_0810B1F4(&r4->unk0.base))
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
                if (!r2 && r4->unk0.unk78 != sub_08104CD8 && r5->unkDA != 14)
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

#define Macro_081050E8(obj4 /* objBase */, sprite, param, cond) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == (obj4)->unk60__42) \
    { \
        if (cond) \
        { \
            (sprite)->unk1F = sub_0803DF24(param); \
            if ((sprite)->unk1F == 0xFF) \
                (sprite)->unk1F = sub_0803DFAC((param), 0); \
        } \
    } \
    else \
        (sprite)->unk1F = 0; \
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
    r4->unk60__42 = r5->base.unk60__42;
    if (!(r5->base.flags & 1))
        r4->flags |= 1;
    sub_080709F8(r4, &r4->unkC, gUnk_08357250[r7], 0x398, r7 + 4, 27);
    r4->unkC.unk8 |= 0x80;
    r4->unkC.unk1F = 0; // redundant
    Macro_081050E8(r4, &r4->unkC, 0x398, 1);
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
    if (r4->flags & 1)
        r4->unk3C = -r4->unk3C;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(0x1F, 0);
    gBldRegs.bldCnt = BLDCNT_TGT1_OBJ | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3;
}

void sub_08105278(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r3;

    if (r5->flags & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    if (((struct Object2 *)r5->unk44)->base.flags & 0x1000)
    {
        r5->flags |= 0x1000;
        return;
    }
    Macro_08107BA8_4(r5, &r5->unkC, &sprite, gUnk_08357250[r5->unk8], &r5->unkC);
    Macro_081050E8(r5, &r5->unkC, 0x398, !r5->unkC.unk1F);
    r3 = r5->unk44;
    if (r3)
    {
        if (r3->base.unk0 && r3->base.flags & 0x1000)
        {
            r5->unk44 = NULL;
            r3 = NULL;
        }
        if (!r3)
            goto _08105464;
        if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000))
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
    r5->flags |= 4;
    if (++r5->unk4 > 61)
    {
        r5->flags |= 0x1000;
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
    if (!(r5->flags & 0x800))
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
    r4->unk60__42 = r5->base.unk60__42;
    if (!(r5->base.flags & 1))
        r4->flags |= 1;
    sub_080709F8(r4, &r4->unkC, 30, 0x39A, 0, 25);
    r4->unkC.unk1F = 0; // redundant
    Macro_081050E8(r4, &r4->unkC, 0x139A, 1);
    return r4;
}

void sub_08105698(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r3, *r7 = r5->unk44;

    if (r5->flags & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    if (r7->base.flags & 0x1000)
    {
        r5->flags |= 0x1000;
        return;
    }
    Macro_08107BA8_4(r5, &r5->unkC, &sprite, 0x1E, &r5->unkC);
    Macro_081050E8(r5, &r5->unkC, 0x139A, !r5->unkC.unk1F);
    r3 = r5->unk44;
    if (r3)
    {
        if (r3->base.unk0 && r3->base.flags & 0x1000)
        {
            r5->unk44 = NULL;
            r3 = NULL;
        }
        if (!r3)
            goto _081057CA;
        if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000))
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
    r5->flags &= ~(0x400 | 4 | 1);
    r5->flags |= r7->base.flags & (0x400 | 4);
    r5->flags |= (r7->base.flags ^ 1) & 1;
    r5->unk60__42 = r7->base.unk60__42;
    r5->unk34 = r7->base.x;
    r5->unk38 = r7->base.y;
    if (r7->unk83 <= 6)
        r5->flags |= 0x400;
    else
    {
        r5->flags &= ~0x400;
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

#define Macro_081059A8_3(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val, unk1AVal, unk1CVal, unk1EVal, unk20Val) \
({ \
    CreateObjTemplateAndObj((obj2)->base.unk56, 1, 36, xVal, yVal, 0, 31, 0, 0, \
        typeVal, subtype1Val, 0, subtype2Val, 0, unk1AVal, unk1CVal, unk1EVal, unk20Val, \
        0, 0, 0, 0, 0); \
})

#define Macro_081059A8_2(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val) \
({ \
    Macro_081059A8_3(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val, 0, 0, 0, 0); \
})

#define Macro_081059A8(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val) \
({ \
    void *_r0; \
 \
    _r0 = Macro_081059A8_2(obj2, xVal, yVal, typeVal, subtype1Val, subtype2Val); \
    ((struct Object2 *)_r0)->base.parent = (obj2); \
    _r0; \
})

void sub_081059A8(struct DarkMindForm1 *r5)
{
    s32 r6, sb;
    struct DarkMindForm1 *ip = r5, *sp08 = r5;
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

void *CreateShadowKirbyBomb(struct Object *r6, u8 r5)
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

#define Macro_08105BF0(obj2, parent) \
({ \
    s32 _v1, _v2; \
 \
    (obj2)->base.x = (parent)->base.x; \
    (obj2)->base.y = (parent)->base.y; \
    _v1 = (obj2)->unkA0 * (gUnk_08D5FE14[(obj2)->base.counter + 0x100] >> 6) * 0x100; \
    _v2 = (obj2)->unkA0 * (gUnk_08D5FE14[(obj2)->base.counter] >> 6) * 0x100; \
    (obj2)->base.x += _v1 >> 16; \
    (obj2)->base.y += _v2 >> 16; \
})

void sub_08105BF0(struct Object2 *r7)
{
    s16 sp00;
    struct DarkMindForm1 *parent = r7->base.parent;

    Macro_08105BF0(r7, &parent->unk0);
    if (r7->unk83 == 2)
    {
        if (r7->base.flags & 2)
            r7->unk83 = 0;
    }
    else
    {
        r7->base.flags |= 4;
        if (r7->unkA2 > 40)
        {
            r7->unkA2 = 40;
            if (++r7->unk9E > 0x60)
                r7->unk9F = 1;
        }
        if (r7->unk9F)
        {
            sub_08109DC4(r7, &r7->unkA0, &sp00);
            --r7->unkA2;
            if (sp00 >= r7->unkA2)
            {
                r7->unkA2 = sp00;
                sub_08109E00(r7);
                return;
            }
        }
        else
            ++r7->unkA2;
        r7->base.counter += r7->unkA2;
        r7->base.counter &= 0x3FF;
    }
}

void sub_08105CE0(struct Object2 *r7)
{
    struct DarkMindForm1 *r2 = r7->base.parent;

    if (r2->unk0.unk83 == 1 || r2->unk0.unk83 == 5 || r2->unkDB)
        sub_08109E24(r7);
    else
    {
        r7->base.flags |= 4;
        Macro_08105BF0(r7, &r2->unk0);
        r7->base.counter += r7->unkA2;
        r7->base.counter &= 0x3FF;
    }
}

void sub_08105D78(struct Object2 *ip)
{
    struct Object2 *r4 = ip->base.parent;
    struct DarkMindForm1 *r3 = ip->base.parent;

    if (ip->unk83 == 1)
    {
        if (ip->base.flags & 2)
        {
            s16 *r1, *r2; // should be a macro

            ip->base.flags |= 0x400;
            r1 = &ip->unkA0;
            r2 = &ip->unkA2;
            *r1 = 0x2000;
            switch (ip->subtype)
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
            ++ip->unk9E;
        if (ip->unk9E)
        {
            ip->base.flags &= ~0x400;
            ip->unk83 = 2;
            ip->base.flags &= ~2;
            Macro_08105BF0(ip, r4);
        }
    }
    if (ip->unk83 == 2 && ip->base.flags & 2)
    {
        ip->unk83 = 0;
        ip->base.flags &= ~0x200;
        ip->unk78 = sub_08105CE0;
        ip->unk9F = 0;
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

void sub_08105EC4(struct DarkMindForm1 *r4)
{
    u32 r3;
    struct DarkMindForm1 *r7 = r4;
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
        r4 = Macro_081059A8(&r7->unk0, sp00, sp04, OBJ_DARK_MIND_STAR_FIRE + r3, 0, r4->unk0.subtype);
        if (r7->unk0.base.flags & 1)
            r4->unk0.base.flags |= 1;
        r4->unk0.unk85 = gUnk_08D61120[r8];
        sub_08106508(r4);
        r8 &= 7; // redundant
        Rand32();
        r8 += ((gRngVal >> 16) % 2) + 1;
    }
}

void sub_081060C0(struct DarkMindForm1 *r7, s16 sl, s16 r6, u8 sp00)
{
    u32 r3;
    struct DarkMindForm1 *r4;
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
    r4 = Macro_081059A8(&r7->unk0, sp04, ip, OBJ_DARK_MIND_STAR_FIRE + r3, 0, r4->unk0.subtype);
    if (r7->unk0.base.flags & 1)
        r4->unk0.base.flags |= 1;
    sub_08106804(r4, sl, r6);
    if (sp00 == 2) r4->unk0.unk85 = 1;
}

void sub_081062B4(struct DarkMindForm1 *r2)
{
    u32 r3;
    struct DarkMindForm1 *r7 = r2;
    struct DarkMindForm1 *sb = r2;
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
    r2 = Macro_081059A8(&r7->unk0, sl, sp00, OBJ_DARK_MIND_STAR_FIRE + r3, 0, r2->unk0.subtype);
    if (r7->unk0.base.flags & 1)
        r2->unk0.base.flags |= 1;
    if (sb->unkDA == 14)
        sub_081068F8(r2);
    else
        sub_08109EF8(r2);
}

void *CreateDarkMindStar(struct Object *r5, u8 r4)
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

void sub_08106508(struct DarkMindForm1 *r4)
{
    s16 r1;
    s32 r0;

    ObjectSetFunc(r4, 0, sub_081065B0);
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

void sub_081065B0(struct DarkMindForm1 *r4)
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

void sub_08106804(struct DarkMindForm1 *r4, s16 r5, s16 r6)
{
    ObjectSetFunc(r4, 0, sub_08109E98);
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

void sub_08106874(struct DarkMindForm1 *r7)
{
    struct DarkMindForm1 *r2 = r7->unk0.base.parent;

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
        r7->unk0.unk78 = sub_08109E98;
        sub_08106AD0(&r7->unk0);
    }
}

void sub_081068F8(struct DarkMindForm1 *r5)
{
    struct Kirby *r6 = ((struct DarkMindForm1 *)r5->unk0.base.parent)->unk0.kirby3;
    s32 diffX, diffY, div1, div2, tmp1, tmp2;
    u16 d;

    ObjectSetFunc(r5, 0, sub_08109F40);
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

void sub_081069BC(struct DarkMindForm1 *r7)
{
    struct DarkMindForm1 *r6 = r7;
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
        r4->unk60__42 = r6->unk0.base.unk60__42;
        if (!(r6->unk0.base.flags & 1)) r4->flags |= 1;
        sub_080709F8(r5, &r5->unkC, 0x10, 0x399, ((r7->unk0.type - OBJ_DARK_MIND_STAR_FIRE) << 1) + 1, 27);
        r4->unkC.unk1F = 0; // redundant
        Macro_081050E8(r4, &r4->unkC, 0x399, 1);
    }
}

void sub_08106AD0(struct Object2 *r5)
{
    struct Object2 *r6;
    struct Task *t;
    struct Object4 *r0, *r4;
    u8 var;

    ++r5; --r5;
    r6 = r5;
    if (!(r5->base.flags & 0x1000))
    {
        t = TaskCreate(sub_08106BE0, sizeof(struct Object4), 0xFFF, 0x10, sub_0803DCCC);
        r4 = TaskGetStructPtr(t, r0);
        sub_0803E3B0(r4);
        r4->unk0 = 3;
        r4->unk34 = r5->base.x;
        r4->unk38 = r5->base.y;
        r4->unk44 = r5;
        r4->unk60__42 = r5->base.unk60__42;
        if (!(r5->base.flags & 1)) r4->flags |= 1;
        var = ((r6->type == OBJ_UNKNOWN_D4
                ? r6->unk83
                : r6->type - OBJ_DARK_MIND_STAR_FIRE) << 1) + 1;
        sub_080709F8(r4, &r4->unkC, 0x10, 0x399, var, 27);
        r4->unkC.unk1F = 0; // redundant
        Macro_081050E8(r4, &r4->unkC, 0x399, 1);
        r4->unk4 = 1;
    }
}

#define Macro_08106BE0(obj4, sprite) \
({ \
    if (!((obj4)->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.unk60__42 == (obj4)->unk60__42) \
    { \
        (sprite)->unk10 += gUnk_0203AD18[0]; \
        (sprite)->unk12 += gUnk_0203AD18[1]; \
        if ((obj4)->flags & 0x4000) \
            sub_081564D8(sprite); \
        else \
            sub_0815604C(sprite); \
    } \
})

#define Macro_08108368(obj4, c1, c2) \
({ \
    (obj4)->unkC.unk10 = (((obj4)->unk34 + (c1)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8); \
    (obj4)->unkC.unk12 = (((obj4)->unk38 + (c2)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8); \
    Macro_08106BE0(obj4, &(obj4)->unkC); \
})

void sub_08106BE0(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r6 = TaskGetStructPtr(gCurTask, r0);
    struct ObjectBase *r8 = &((struct Object2 *)r6->unk44)->base;
    struct Object2 *r7 = r6->unk44;

    if (r6->flags & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    if (r8->flags & 0x1000)
    {
        r6->flags |= 0x1000;
        return;
    }
    Macro_08107BA8_4(r6, &r6->unkC, &sprite, 0x10, &r6->unkC);
    Macro_081050E8(r6, &r6->unkC, 0x398, !r6->unkC.unk1F);
    r6->flags |= 4;
    r6->flags &= ~1;
    r6->flags |= (r7->base.flags ^ 1) & 1;
    r6->unk60__42 = r7->base.unk60__42;
    if (r7->base.unkC & 0x400)
    {
        r6->flags |= 0x1000;
        return;
    }
    if (r6->unk4)
    {
        r6->unk34 = r8->unk48 - r8->xspeed - r8->xspeed;
        r6->unk38 = r8->unk4C + r8->yspeed + r8->yspeed;
        if (!Macro_0810B1F4(r8))
        {
            s32 r0;

            if (r6->flags & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
            }
            if (!(r6->flags & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->flags &= ~4;
                }
                r0 = sub_08155128(&r6->unkC);
                if (!r0)
                {
                    r6->flags |= 2;
                    if (r6->flags & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->flags &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(&r6->unkC);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->flags &= ~2;
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
        Macro_08108368(r6, 0, 0);
        r6->unk34 = r8->unk48;
        r6->unk38 = r8->unk4C;
        Macro_08108368(r6, 0, 0);
    }
    else
    {
        r6->unk34 = r8->unk48;
        r6->unk38 = r8->unk4C;
        if (!Macro_0810B1F4(r8))
        {
            s32 r0;

            if (r6->flags & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
            }
            if (!(r6->flags & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->flags &= ~4;
                }
                r0 = sub_08155128(&r6->unkC);
                if (!r0)
                {
                    r6->flags |= 2;
                    if (r6->flags & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->flags &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(&r6->unkC);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->flags &= ~2;
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
        Macro_08106BE0(r6, &r6->unkC);
    }
}

struct DarkMindBomb *sub_08107254(struct Object2 *r3)
{
    struct DarkMindBomb *r0;
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
    r3 = &r0->unk0;
    if (r7->base.flags & 1)
        r3->base.flags |= 1;
    return (void *)r3;
}

void *CreateDarkMindBomb(struct Object *r5, u8 r4)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct DarkMindBomb), 0x1000, 0x10, ObjectDestroy);
    struct DarkMindBomb *obj8 = TaskGetStructPtr(t, obj8);

    InitObject(&obj8->unk0, r5, r4);
    obj8->unkB4 = NULL;
    obj8->unk0.base.unkC |= 1;
    obj8->unk0.base.unkC |= 4;
    obj8->unk0.base.unkC |= 0x800;
    obj8->unk0.base.flags |= 0x4000000;
    obj8->unk0.base.unk5C &= ~7;
    obj8->unk0.base.unk5C |= 3;
    obj8->unk0.unk9E = 0;
    obj8->unk0.unk7C = sub_0810A034;
    sub_0803E2B0(&obj8->unk0.base, -4, -4, 4, 4);
    sub_0803E308(&obj8->unk0.base, -4, -4, 4, 4);
    ObjectInitSprite(&obj8->unk0);
    obj8->unk0.base.unk10.unk14 = 0x600;
    sub_081099A4(obj8);
    obj8->unk0.base.counter = 200;
    return obj8;
}

void sub_08107408(struct DarkMindBomb *r4)
{
    struct ObjectBase *r5 = r4->unk0.base.parent;
    struct DarkMindBomb *r7 = r4;

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

void sub_08107560(struct DarkMindBomb *r5)
{
    struct DarkMindBomb *r4 = r5;
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

void sub_081075DC(struct DarkMindForm1 *r5) // not referenced
{
    struct Object2 *r3;
    s32 r7, sb;
    struct DarkMindForm1 *ip;
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
    r3 = Macro_081059A8_2(&r5->unk0, r7, sb, OBJ_UNKNOWN_CF, 0, 0);
    r3->base.parent = r5;
    ++r7; --r7;
    ip->unkC0 = r3;
    r3->base.xspeed = 0x2E00;
    r3->base.yspeed = 0;
    sub_0803E2B0(&r3->base, -8, -6, 8, 10);
    r3 = Macro_081059A8_2(&r5->unk0, r7, sb, OBJ_UNKNOWN_CF, 0, 0);
    r3->base.parent = r5;
    ip->unkC4 = r3;
    r3->base.xspeed = -0x2C00;
    r3->base.yspeed = 0;
    sub_0803E2B0(&r3->base, -10, -4, 6, 12);
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
    r4->unk60__42 = r5->base.unk60__42;
    r4->unk56 = r5->base.unk56;
    if (Macro_0810B1F4(r4))
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
    r5->unk60__42 = r4->base.unk60__42;
    r5->unk56 = r4->base.unk56;
    if (Macro_0810B1F4(r5))
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
    Macro_081050E8(r5, &r5->unk10, 0x2C3, 1);
    gUnk_0203AD34 = 1;
    return r5;
}

void sub_08107BA8(void)
{
    struct Sprite sprite;
    struct ObjectBase *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r8 = r5->parent;

    Macro_08107BA8_4(r5, &r5->unk10, &sprite, 0x10, &r5->unk10);
    Macro_081050E8(r5, &r5->unk10, 0x2C3, !r5->unk10.unk1F);
    if (r8->base.flags & 0x1000 || r8->base.unk60__42 == 0xFFFF)
        r5->unk60__42 = 0xFFFF;
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
    r5->unk60__42 = r4->base.unk60__42;
    r5->unk38 -= 0x2800;
    sub_080709F8(r5, &r5->unkC, 20, gUnk_083572D0[gUnk_08D60A80][0], gUnk_083572D0[gUnk_08D60A80][1], 1);
    r5->unkC.unk1F = 0;
    Macro_081050E8(r5, &r5->unkC, 0x2C3, 1);
}

void sub_08107FC4(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r3;

    r5->unkC.unk1F = ((struct Object2 *)r5->unk44)->base.unk10.unk1F;
    if (r5->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (((struct Object2 *)r5->unk44)->base.flags & 0x1000)
        r5->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(r5, &r5->unkC, &sprite, 0x14, &r5->unkC);
        Macro_081050E8(r5, &r5->unkC, 0x2C3, !r5->unkC.unk1F);
        r3 = r5->unk44;
        if (r3)
        {
            if (r3->base.unk0 && r3->base.flags & 0x1000)
            {
                r5->unk44 = NULL;
                r3 = NULL;
            }
            if (!r3)
                goto _081081A8;
            if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000))
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
        Macro_0809E55C(r5);
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
    r4->unk60__42 = r5->base.unk60__42;
    r4->unk38 -= 0x4000;
    sub_080709F8(r4, &r4->unkC, 0x30, 0x399, 15, 25);
    r4->unkC.unk1F = 0;
    r4->unk4 = 14;
    Macro_081050E8(r4, &r4->unkC, 0x39A, !r4->unkC.unk1F);
}

void sub_08108368(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r6 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r7 = r6->unk44;

    if (r6->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (r7->base.flags & 0x1000)
        r6->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(r6, &r6->unkC, &sprite, 0x30, &r6->unkC);
        Macro_081050E8(r6, &r6->unkC, 0x39A, !r6->unkC.unk1F);
        Macro_0809E55C(r6);
        r6->unk34 = r7->base.x;
        r6->unk38 = r7->base.y;
        if (!Macro_0810B1F4(&r7->base)
            || r7->base.flags & 0x2000)
        {
            s32 r0;

            if (!--r6->unk4)
            {
                r6->flags |= 0x1000;
                return;
            }
            r6->flags |= 4;
            if (r6->flags & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
            }
            if (!(r6->flags & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->flags &= ~4;
                }
                r0 = sub_08155128(&r6->unkC);
                if (!r0)
                {
                    r6->flags |= 2;
                    if (r6->flags & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->flags &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(&r6->unkC);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->flags &= ~2;
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
        Macro_08108368(r6, 0x3000, 0);
        Macro_08108368(r6, 0x7000, 0);
        r6->unkC.unk8 ^= 0x400;
        Macro_08108368(r6, -0x3000, 0);
        Macro_08108368(r6, -0x7000, 0);
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
    r5->unk60__42 = r4->base.unk60__42;
    r5->unk38 -= 0x4000;
    sub_080709F8(r5, &r5->unkC, 0x30, 0x399, 14, 25);
    r5->unkC.unk1F = 0;
    r5->unk4 = 14;
    Macro_081050E8(r5, &r5->unkC, 0x39A, !r5->unkC.unk1F);
}

void sub_08108A50(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r6 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r7 = r6->unk44;

    if (r6->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (r7->base.flags & 0x1000)
        r6->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(r6, &r6->unkC, &sprite, 0x30, &r6->unkC);
        Macro_081050E8(r6, &r6->unkC, 0x39A, !r6->unkC.unk1F);
        Macro_0809E55C(r6);
        r6->unk34 = r7->base.x;
        r6->unk38 = r7->base.y;
        if (!Macro_0810B1F4(&r7->base)
            || r7->base.flags & 0x2000)
        {
            s32 r0;

            if (!--r6->unk4)
            {
                r6->flags |= 0x1000;
                return;
            }
            r6->flags |= 4;
            if (r6->flags & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
            }
            if (!(r6->flags & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->flags &= ~4;
                }
                r0 = sub_08155128(&r6->unkC);
                if (!r0)
                {
                    r6->flags |= 2;
                    if (r6->flags & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->flags &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(&r6->unkC);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->flags &= ~2;
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
        Macro_08108368(r6, 0x1400, -0x2400);
        Macro_08108368(r6, 0x2C00, -0x6400);
        r6->unkC.unk8 ^= 0x400;
        Macro_08108368(r6, -0x1400, -0x2400);
        Macro_08108368(r6, -0x2C00, -0x6400);
        r6->unkC.unk8 ^= 0x800;
        Macro_08108368(r6, -0x1400, 0x2400);
        Macro_08108368(r6, -0x2C00, 0x6400);
        r6->unkC.unk8 ^= 0x400;
        Macro_08108368(r6, 0x1400, 0x2400);
        Macro_08108368(r6, 0x2C00, 0x6400);
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
    r4->unk60__42 = sp10->base.unk60__42;
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
    Macro_081050E8(r4, &r4->unkC, 0x39A, 1);
    return r4;
}

void sub_081094C4(void)
{
    struct Sprite sprite;
    struct Object9 *r0;
    struct Object4 *r6;
    u8 r8;
    struct Object2 *sp28;
    struct Object9 *sp2C;

    TaskGetStructPtr(gCurTask, r0);
    r6 = &r0->unk0;
    sp28 = r6->unk44;
    sp2C = r0;
    if (r6->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (sp28->base.flags & 0x1000)
        r6->flags |= 0x1000;
    else
    {
        u8 r0;

        Macro_08107BA8_4(r6, &r6->unkC, &sprite, 4, &r6->unkC);
        Macro_081050E8(r6, &r6->unkC, 0x39A, !r6->unkC.unk1F);
        r6->unk60__42 = sp28->base.unk60__42;
        if (Macro_0810B1F4(&sp28->base)
            && !(sp28->base.flags & 0x2000))
        {
            s32 r4 = r6->unk34, r5 = r6->unk38;
    
            for (r8 = 0; r8 < 4; ++r8)
            {
                r6->unk34 = sp2C->unk48[r8][0];
                r6->unk38 = sp2C->unk48[r8][1];
                sub_0803DBC8(r6);
            }
            r6->unk34 = r4;
            r6->unk38 = r5;
        }
        else
        {
            s32 r0;

            if (r6->flags & 1)
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 | 0x400;
            }
            else
            {
                struct Sprite *r0 = &r6->unkC;

                r0->unk8 = r6->unkC.unk8 & ~0x400;
            }
            if (!(r6->flags & 8))
            {
                if ((r6->unkC.unk1B != r6->unkC.unk1A || r6->unkC.unk18 != r6->unkC.unkC)
                    && r6->unkC.unk1C)
                {
                    r6->unk1 = 0;
                    r6->unk2 = 0;
                    r6->flags &= ~4;
                }
                r0 = sub_08155128(&r6->unkC);
                if (!r0)
                {
                    r6->flags |= 2;
                    if (r6->flags & 4 && r6->unkC.unk1C)
                    {
                        r6->unkC.unk1B = 0xFF;
                        r6->flags &= ~4;
                        r6->unk1 = 0;
                        r6->unk2 = r0;
                        sub_08155128(&r6->unkC);
                    }
                }
                else
                {
                    r6->unk2 += r6->unkC.unk1C;
                    r6->unk1 = r6->unk2 >> 4;
                    r6->flags &= ~2;
                }
            }
            r6->unkC.unk10 = (r6->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r6->unk40;
            r6->unkC.unk12 = (r6->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r6->unk41;
            if (r6->unkC.unk1C)
            {
                r6->unk40 = 0;
                r6->unk41 = 0;
            }
            for (r8 = 0; r8 < 4; ++r8)
            {
                sp2C->unk48[r8][1] -= sp2C->unk68[r8][0];
                sp2C->unk48[r8][0] += sp2C->unk68[r8][1];
                if (sp2C->unk68[r8][1] < 0)
                    sp2C->unk68[r8][1] += 8;
                else
                    sp2C->unk68[r8][1] -= 8;
                if (sp2C->unk68[r8][0] < 0)
                    sp2C->unk68[r8][0] += 8;
                else
                    sp2C->unk68[r8][0] -= 8;
                r6->unkC.unk10 = ((sp2C->unk48[r8][0] + (sp28->base.unk54 * 0x100)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
                r6->unkC.unk12 = ((sp2C->unk48[r8][1] + (sp28->base.unk55 * 0x100)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
                Macro_08106BE0(r6, &r6->unkC);
            }
            if (++r6->unk4 > 0x20)
            {
                r6->flags |= 0x1000;
                return;
            }
        }
    }
}

void sub_08109960(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(&r4->unk0, 0, sub_08105CE0);
    sub_08109DC4(&r4->unk0, &r4->unk0.unkA0, &r4->unk0.unkA2);
    if (r4->unk0.object->subtype1)
        r4->unk0.base.counter = 0;
    else
        r4->unk0.base.counter = 0x200;
    r4->unk0.unk9F = 0;
}

void sub_081099A4(struct DarkMindBomb *r4)
{
    ObjectSetFunc(r4, 0, sub_08107408);
    r4->unk0.unk9F = 0;
}

void sub_081099C0(struct Object2 *r0)
{
    ObjectSetFunc(r0, -1, sub_0810A098);
}

void sub_081099D4(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 0, sub_081003EC);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
}

void sub_08109A00(struct DarkMindForm1 *r2)
{
    if (r2->unk0.base.flags & 2)
    {
        r2->unk0.base.xspeed = 0;
        r2->unk0.base.flags |= 0x400;
        if (!--r2->unk0.base.counter)
            sub_08102A80(r2);
    }
}

void sub_08109A38(struct DarkMindForm1 *r4)
{
    r4->unk0.base.flags |= 4;
    if (r4->unk0.base.flags & 2
        && !--r4->unk0.base.counter)
    {
        if (r4->unk0.unk85 == 1 && r4->unkDA == 13)
        {
            r4->unkDA = 14;
            sub_0810487C(r4);
            sub_08102938(r4);
        }
        else
            sub_08103138(r4);
    }
}

void sub_08109A8C(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 4;
    ObjectSetFunc(r5, 8, sub_08103404);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 120;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
}

void sub_08109AD4(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 4;
    ObjectSetFunc(r5, 8, sub_08103688);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 16;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
}

void sub_08109B1C(struct DarkMindForm1 *r5)
{
    r5->unkD5 = 5;
    ObjectSetFunc(r5, 10, sub_08103E60);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.base.flags &= ~2;
    r5->unk0.base.counter = 40;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
}

void sub_08109B64(struct DarkMindForm1 *r4)
{
    r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
    r4->unk0.unk85 = 1;
    r4->unkDA = 8;
    r4->unkD6 = 0x7E;
    r4->unkD8 = 40;
    sub_08102938(r4);
}

void sub_08109B98(struct DarkMindForm1 *r4)
{
    r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
    r4->unk0.unk85 = 1;
    r4->unkDA = 10;
    r4->unkD6 = 0xE6;
    r4->unkD8 = 24;
    r4->unkD4 = 2;
    sub_08102938(r4);
}

void sub_08109BD0(struct DarkMindForm1 *r4)
{
    r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
    r4->unk0.unk85 = 1;
    r4->unkDA = 13;
    r4->unkE2 = 8;
    r4->unkD6 = 0x7E;
    r4->unkD8 = 72;
    sub_08102938(r4);
}

void sub_08109C08(struct DarkMindForm1 *r2)
{
    r2->unk0.base.flags |= 4;
    if (!--r2->unk0.base.counter)
    {
        r2->unkD8 = 0;
        r2->unkD6 = 0;
        r2->unkDA = 0;
        sub_08102938(r2);
    }
}

void sub_08109C40(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 0, sub_08109C74);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.y = -0x3000;
    r4->unk0.base.counter = 180;
    r4->unk0.unk9F = 0;
}

void sub_08109C74(struct DarkMindForm1 *r1)
{
    if (!r1->unkC8)
        sub_08100EA0(r1);
}

void sub_08109C8C(struct DarkMindForm1 *r2)
{
    if (r2->unk0.base.unk1 == 1)
        r2->unk0.base.flags |= 8;
    if (!--r2->unk0.base.counter)
        sub_081026E0(r2);        
}

void sub_08109CB4(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 1, sub_08109CEC);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.counter = 64;
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags &= ~2;
}

void sub_08109CEC(struct DarkMindForm1 *r2)
{
    if (r2->unk0.unk83 == 1)
    {
        if (r2->unk0.base.flags & 2)
        {
            r2->unk0.base.flags |= 0x400;
            if (!--r2->unk0.base.counter)
            {
                r2->unk0.base.flags &= ~2;
                r2->unk0.base.x = 0x7E00;
                r2->unk0.base.y = 0x5800;
                r2->unk0.base.flags |= 1;
                r2->unk0.unk83 = 2;
                r2->unk0.base.flags &= ~0x400;
            }
        }
    }
    else if (r2->unk0.base.flags & 2)
        sub_08109D5C(r2);
}

void sub_08109D5C(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 0, sub_081013C8);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.yspeed = 0x20;
    r4->unk0.base.counter = 0;
    r4->unk0.unk9E = 0;
    sub_0806FE64(6, &r4->unk0);
}

void sub_08109D98(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 0, sub_08101560);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.counter = 0;
    r4->unk0.unk9E = 0;
}

void sub_08109DC4(struct Object2 *r0, s16 *r1, s16 *r3)
{
    *r1 = 0x2000;
    switch (r0->subtype)
    {
    case 0:
        *r3 = 8;
        break;
    case 1:
        *r3 = 10;
        break;
    case 2:
        *r3 = 13;
        break;
    default:
        *r3 = 18;
        break;
    }
}

void sub_08109E00(struct Object2 *r0)
{
    r0->unk83 = 0;
    r0->base.flags &= ~0x200;
    r0->unk78 = sub_08105CE0;
    r0->unk9F = 0;
}

void sub_08109E24(struct Object2 *r2)
{
    r2->unk83 = 1;
    r2->unk9E = 0;
    r2->base.flags |= 0x200;
    r2->unk78 = sub_08105D78;
}

void sub_08109E4C(struct Object2 *r5)
{
    ObjectSetFunc(r5, 2, sub_08105BF0);
    sub_08109DC4(r5, &r5->unkA0, &r5->unkA2);
    r5->unkA2 = 0;
    if (r5->object->subtype1)
        r5->base.counter = 0;
    else
        r5->base.counter = 0x200;
    r5->unk9F = 0;
    r5->unk9E = 0;
}

void sub_08109E98(struct DarkMindForm1 *r4)
{
    r4->unk0.base.flags |= 4;
    if (r4->unk0.unk85 && (r4->unk0.base.y >= 0x8C00 || r4->unk0.base.y <= 0x1000))
        r4->unk0.base.yspeed = -r4->unk0.base.yspeed;
    if (r4->unk0.base.unk58 & 0x200)
    {
        sub_0808AE30(&r4->unk0, 0, 0x298, 0);
        r4->unk0.base.flags |= 0x1000;
    }
}

void sub_08109EF8(struct DarkMindForm1 *r4)
{
    ObjectSetFunc(r4, 0, sub_08106874);
    r4->unk0.unk83 += r4->unk0.type - OBJ_DARK_MIND_STAR_FIRE;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x100;
    r4->unk0.unk9F = 0;
}

void sub_08109F40(struct DarkMindForm1 *r3)
{
    struct Object2 *r1 = r3->unk0.base.parent;

    r3->unk0.base.flags |= 4;
    if (r1->unk83 != 7 && r1->unk83 != 9)
    {
        r3->unk0.base.flags &= ~0x100;
        r3->unk0.base.flags &= ~0x200;
        r3->unk0.base.flags &= ~0x800;
        r3->unk0.base.flags &= ~0x400;
        r3->unk0.unk78 = sub_08109E98;
        sub_08106AD0(&r3->unk0);
    }
}

void sub_08109F90(struct DarkMindBomb *r4)
{
    ObjectSetFunc(r4, 2, sub_08107560);
    r4->unk0.base.counter = 40;
    r4->unk0.base.flags |= 0x200;
    r4->unk0.unk9F = 0;
}

void sub_08109FBC(struct DarkMindBomb *r4)
{
    ObjectSetFunc(r4, 3, sub_08109FF4);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags |= 0x800;
    r4->unk0.base.flags &= ~2;
    r4->unk0.base.counter = 24;
    r4->unk0.unk9F = 0;
}

void sub_08109FF4(struct DarkMindBomb *r2)
{
    if (r2->unk0.unk83 == 4)
    {
        if (r2->unk0.base.flags & 2)
        {
            r2->unk0.base.flags |= 0x1000;
            return;
        }
    }
    else
        r2->unk0.base.flags |= 4;
    if (!--r2->unk0.base.counter)
        r2->unk0.unk83 = 4;
}

void sub_0810A034(struct DarkMindBomb *r4)
{
    sub_0809F840(&r4->unk0);
    if (!Macro_0810B1F4(&r4->unk0.base))
    {
        if (r4->unk0.base.flags & 0x1000000)
            r4->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
        if (r4->unk0.unk80 <= 0)
            r4->unk0.base.unkC |= 2;
    }
}

void sub_0810A098(struct Object2 *ip)
{
    struct ObjectBase *r2 = ip->base.parent;

    ip->base.flags &= ~1;
    ip->base.flags |= (r2->flags & 1);
    ip->base.unk60__42 = r2->unk60__42;
    ip->base.x = r2->x;
    ip->base.y = r2->y;
    if (ip->base.flags & 1)
        ip->base.x -= ip->base.xspeed;
    else
        ip->base.x += ip->base.xspeed;
    ip->base.y += ip->base.yspeed;
}

void sub_0810A104(struct Task *t)
{
    gUnk_0203AD34 = 0;
    sub_0803DCCC(t);
}

void sub_0810A118(struct Task *t) // not referenced
{
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldCnt = 0;
    sub_0803DCCC(t);
}

void sub_0810A130(struct Task *t)
{
    struct Object4 *r0;

    TaskGetStructPtr(t, r0);
    sub_0803E4D4(r0->unkC.unk1F);
    sub_0803DCCC(t);
}

void sub_0810A168(struct DarkMindForm2 *r7)
{
    u8 r8 = 3, sl = 1, sp00 = 1;
    struct DarkMindForm2 *r6 = r7;
    s8 r3 = Rand16() & 7;
    bool32 r4 = FALSE;
    
    if (!gUnk_0203AD34)
    {
        u8 i;
        u32 variable; // fake

        i = gUnk_0203AD44;
        for (i = gUnk_0203AD44 - 1; i != 0xFF; --i)
            if (gKirbys[i].unk103 == 26)
                r4 = TRUE;
        if (!r4 && (Rand16() & 7) < (variable = 2))
        {
            Macro_081059A8_3(&r7->unk0, 240, 132, OBJ_SHADOW_KIRBY, 6, 0, -0xF0, -0x8C, 240, 160);
            sub_0810C9C8(r7);
            return;
        }
    }
    if (r6->unk126 == 0xA || r6->unk134)
        sl = 0;
    if (r6->unk126 == 6 || r6->unk126 == 7 || r6->unk126 == 8)
        r8 = 0;
    if (r6->unk126 == 9)
        sp00 = 0;
    if (r6->unk133 > 2)
    {
        r8 = 0;
        sp00 = 0;
        sl = 0;
    }
    if (r7->unk0.unk80 > r6->unk138)
    {
        sub_0810CC90(r7);
        return;
    }
    if (r7->unk0.unk80 > r6->unk139)
    {
        if ((r3 -= r8) < 0)
        {
            sub_0810DCA4(r7);
            r6->unk132 = 0;
            ++r6->unk133;
            return;
        }
        sub_0810CC90(r7);
        r6->unk133 = 0;
    }
    else if ((r8 = 1), (r3 -= r8) < 0)
    {
        r6->unk134 = 0;
        sub_0810DCA4(r7);
        r6->unk132 = 0;
        ++r6->unk133;
    }
    else if ((r3 -= sl) < 0)
    {
        r6->unk134 = 1;
        sub_081142B0(r7);
        r6->unk132 = 0;
        ++r6->unk133;
    }
    else if ((r3 -= sp00) < 0)
    {
        sub_0810EA50(r7);
    }
    else
    {
        sub_0810CC90(r7);
        r6->unk133 = 0;
    }
}

void sub_0810A3D0(struct DarkMindForm2 *ip)
{
    u8 r2 = 2, r5 = 1, sb = 1;
    struct DarkMindForm2 *r3 = ip;
    s8 r1;

    if (ip->unk12B == 6)
    {
        r2 = 1;
        if (ip->unk0.unk80 <= ip->unk139)
            sb = 2;
        else
            r5 = 2;
    }
    r1 = Rand16() & 3;
    if ((r1 -= r2) < 0)
    {
#ifndef NONMATCHING
        asm("":::"r4", "r6");
#endif
        r3->unk126 = 6;
        r3->unk12B = 6;
        ip->unk0.unk85 = 0;
    }
    else if ((r1 -= r5) < 0)
    {
        r3->unk12A = 0;
        r3->unk126 = 7;
        r3->unk12B = 7;
        ip->unk0.unk85 = 4;
        if (ip->unk0.unk80 <= r3->unk139 && Rand16() & 1)
            ip->unk0.unk85 += RandLessThan3();
    }
    else if ((r1 -= sb) < 0)
    {
        r3->unk126 = 8;
        r3->unk12B = 8;
        ip->unk0.unk85 = 6;
    }
    else
    {
        r3->unk126 = 6;
        ip->unk0.unk85 = 0;
    }
}

void sub_0810A534(struct DarkMindForm2 *r0, u8 r1)
{
    struct DarkMindForm2 *r3 = r0;

    switch (r1)
    {
    case 0:
        switch (RandLessThan2())
        {
        case 0:
            r3->unk12D = 1;
            r3->unkE0 = gUnk_083572E8;
            break;
        case 1:
            r3->unk12D = 1;
            r3->unkE0 = gUnk_083572F3;
            break;
        }
        r3->unk12C = r3->unk12D - 1;
        break;
    case 1:
        switch (RandLessThan2())
        {
        case 0:
            r3->unk12D = 3;
            r3->unkE0 = gUnk_083572E8;
            break;
        case 1:
            r3->unk12D = 3;
            r3->unkE0 = gUnk_083572F3;
            break;
        }
        r3->unk12C = r3->unk12D - 1;
        break;
    case 2: // required for matching
    default:
        switch (RandLessThan4())
        {
        case 0:
            r3->unk12D = 5;
            r3->unkE0 = gUnk_083572E8;
            break;
        case 1:
            if (Rand16() & 1)
                r3->unk12D = 5;
            else
                r3->unk12D = 1;
            r3->unkE0 = gUnk_083572F3;
            break;
        case 2:
            r3->unk12D = 4;
            r3->unkE0 = gUnk_083572EE;
            break;
        case 3:
            r3->unk12D = 5;
            r3->unkE0 = gUnk_083572F9;
            break;
        }
        r3->unk12C = r3->unk12D - 1;
        break;
    }
}

void sub_0810A71C(struct DarkMindForm2 *r4)
{
    s8 r0;
    struct DarkMindForm2 *sp00 = r4;
    struct Object12 *r8 = r4->unkFC, *sb = r4->unk100;
    s8 sl = Rand16() & 7;
    s32 sp04, r6;

    if (r4->unk0.unk80 > r4->unk138)
    {
        sp04 = 3;
        r6 = 4;
        r6 *= (r4->unk126 != 0);
        if (r4->unk132 > 2)
        {
            r6 = 0;
            sp04 = 8;
        }
#ifndef NONMATCHING
        asm("":::"sl"); // side effect
#endif
        r8->unkE1 = 0;
        sb->unkE1 = 0;
        if (Rand16() & 1)
            r4->unk128 = 2;
        else
            r4->unk128 = 1;
#ifndef NONMATCHING
        asm("":"=r"(sl)); // prevent the compiler from knowing sl is <= 0x7F
#endif
        r0 = sl - r6;
        if (r0 < 0)
        {
            r4->unk126 = 0;
            ++r4->unk132;
            return;
        }
        r0 = (Rand16() & 7) - sp04;
        if (r0 < 0)
        {
            r4->unk126 = RandLessThan3() + 3;
            r4->unk127 = 0;
            r4->unk132 = 0;
            return;
        }
        sub_0810A534(sp00, 0);
        r4->unk126 = 1;
        r4->unk127 = Rand16() % 2;
        ++r4->unk132;
    }
    else if (r4->unk0.unk80 > r4->unk139)
    {
        sp04 = 3;
        r6 = 3;
        if (!r4->unk126)
            r6 = 0;
        if (r4->unk132 > 2)
        {
            r6 = 0;
            sp04 = 8;
        }
        r8->unkE1 = 1;
        sb->unkE1 = 1;
        if (Rand16() & 3)
            r4->unk128 = (Rand16() % 2) + 4;
        else
            r4->unk128 = 3;
        r0 = sl - r6;
        if (r0 < 0)
        {
            r4->unk126 = 0;
            ++r4->unk132;
            return;
        }
        r0 = (Rand16() & 7) - sp04;
        if (r0 < 0)
        {
            r4->unk126 = RandLessThan3() + 3;
            r4->unk127 = Rand16() & 1;
            r4->unk132 = 0;
            return;
        }
        sub_0810A534(sp00, 1);
        r4->unk126 = 2;
        r4->unk127 = Rand16() % 2;
        ++r4->unk132;
    }
    else
    {
        u32 rand;

        sp04 = 3;
        r6 = 3;
        if (!r4->unk126)
            r6 = 0;
        if (r4->unk132 > 2)
            sp04 = 8;
        r6 = 3; // becomes the only reaching definition for the following code
        rand = Rand16() & 1;
        r8->unkE1 = rand;
        sb->unkE1 = rand;
        if (r8->unkE1)
        {
            if (Rand16() & 3)
                r4->unk128 = (Rand16() % 2) + 4;
            else
                r4->unk128 = 3;
        }
        else
        {
            if (Rand16() & 1)
                r4->unk128 = 2;
            else
                r4->unk128 = 1;
        }
        r0 = sl - r6;
        if (r0 < 0)
        {
            r4->unk126 = 0;
            ++r4->unk132;
            return;
        }
        r0 = (Rand16() & 7) - sp04;
        if (r0 < 0)
        {
            r4->unk126 = RandLessThan3() + 3;
            r4->unk127 = Rand16() & 1;
            r4->unk132 = 0;
            return;
        }
        sub_0810A534(sp00, 2);
        r4->unk126 = 1;
        r4->unk127 = Rand16() % 2;
        ++r4->unk132;
    }
}

void sub_0810AB1C(struct DarkMindForm2 *r5)
{
    s8 diff;
    u8 r4 = 3, r6 = 3;

    if (r5->unk134)
    {
        r4 = 5;
        r6 = 1;
    }
    diff = (Rand16() & 7) - r4;
    if (diff < 0)
    {
        r5->unk134 = 0;
        sub_0810DCA4(r5);
        r5->unk132 = 0;
        ++r5->unk133;
    }
    else if ((diff -= r6) < 0)
    {
        r5->unk134 = 1;
        sub_081142B0(r5);
        r5->unk132 = 0;
        ++r5->unk133;
    }
    else
    {
        ++r5->unk133;
        ++r5->unk132;
        sub_0810C9C8(r5);
    }
}

void sub_0810ABC0(struct DarkMindForm2 *r3)
{
    u8 r5 = 0;
    struct DarkMindForm2 *r4 = r3;
    struct Object12 *r2 = r3->unkFC;
    s8 rand;

    if (!r4->unk126)
    {
        r5 = 3;
        if (r2->unkE1)
            r5 = 5;
    }
    else if (r4->unk126 == 3 || r4->unk126 == 4 || r4->unk126 == 5)
        r5 = 5;
    rand = Rand16() & 7;
    if (r3->unk0.unk80 <= r4->unk138
        && r3->unk0.unk80 <= r4->unk139
        && (rand -= r5) < 0)
        sub_0810EA50(r3);
    else
    {
        sub_0810C9C8(r3);
        ++r4->unk132;
        ++r4->unk133;
    }
}

void sub_0810AC70(void)
{
    struct DarkMindForm2 *r0, *r7 = TaskGetStructPtr(gCurTask, r0);
    struct DarkMindForm2 *sl = r7;
    s16 r6, r4;
    s16 c1, c2;
    s16 sb;
    u16 r2; // why? 
    struct Sprite *spr;
    u8 c3;
    s32 c4;

    c1 = (r7->unk0.base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r7->unk0.base.unk54;
    c2 = (r7->unk0.base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r7->unk0.base.unk55;
    r6 = c1 + gUnk_0203AD18[0];
    r4 = c2 + gUnk_0203AD18[1];
    r2 = r7->unk11E;
    sb = r7->unk120 >> 4;
    if (gUnk_0203AD20 & 8)
    {
        r4 = 0xA0 - r4;
        r2 = -r2;
        sb = (0x400 - sb) & 0x3FF;
    }
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r7->unk0.base.unk60__42)
        sub_081548A8(sb, r7->unk11C, r2, 0x40, 0x40, r6, r4, &gBgAffineRegs);
    spr = &r7->unkB4;
    if (!(r7->unk0.base.flags & 8))
    {
        c3 = r7->unk135;
        spr->unkC = 0;
        spr->unk1A = 0;
        r7->unk0.base.flags |= 0x200;
        if (r7->unk136)
        {
            if (c3 == 2 || c3 == 0)
            {
                c3 = 5;
                if (!r7->unk131)
                {
                    if (r7->unk136 == 2)
                    {
                        c3 = 0;
                        if (r7->unk0.base.flags & 2)
                            r7->unk136 = 0;
                    }
                    else
                    {
                        c3 = 0;
                        r7->unk136 = 2;
                    }
                    r7->unk0.base.flags &= ~0x400;
                }
            }
            else if (!r7->unk131)
            {
                r7->unk0.base.flags &= ~0x400;
                r7->unk136 = 0;
            }
        }
        if (sl->unk11C != 0x100)
            c3 = 5;
        switch (c3)
        {
        case 2:
            if (sb == 0 || sb == 0x200)
            {
                spr->unkC = gUnk_08357304.unk8;
                spr->unk1A = gUnk_08357304.unkA;
                if (sb != 0)
                    sub_0803E2B0(&r7->unk0.base, -8, -0x20, 8, -0x10);
                else
                    sub_0803E2B0(&r7->unk0.base, -8, 0x10, 8, 0x20);
                r7->unk0.base.flags &= ~0x200;
            }
            else if (sb == 0x100 || sb == 0x300)
            {
                spr->unkC = gUnk_08357304.unk14;
                spr->unk1A = gUnk_08357304.unk16;
                r7->unk0.base.flags &= ~0x200;
                if (sb == 0x100)
                    sub_0803E2B0(&r7->unk0.base, -0x20, -8, -0x10, 8);
                else
                    sub_0803E2B0(&r7->unk0.base, 0x10, -8, 0x20, 8);
            }
            break;
        case 0:
            if (sb == 0 || sb == 0x200)
            {
                spr->unkC = gUnk_08357304.unk0;
                spr->unk1A = gUnk_08357304.unk2;
                if (sb != 0)
                    sub_0803E2B0(&r7->unk0.base, -8, -0x20, 8, -0x10);
                else
                    sub_0803E2B0(&r7->unk0.base, -8, 0x10, 8, 0x20);
            }
            else if (sb == 0x100 || sb == 0x300)
            {
                spr->unkC = gUnk_08357304.unkC;
                spr->unk1A = gUnk_08357304.unkE;
                if (sb == 0x100)
                    sub_0803E2B0(&r7->unk0.base, -0x20, -8, -0x10, 8);
                else
                    sub_0803E2B0(&r7->unk0.base, 0x10, -8, 0x20, 8);
            }
            break;
        case 1:
            if (sb == 0 || sb == 0x200)
            {
                spr->unkC = gUnk_08357304.unk4;
                spr->unk1A = gUnk_08357304.unk6;
            }
            else if (sb == 0x100 || sb == 0x300)
            {
                spr->unkC = gUnk_08357304.unk10;
                spr->unk1A = gUnk_08357304.unk12;
            }
            break;
        case 3:
            if (sb == 0 || sb == 0x200)
            {
                spr->unkC = 0x399;
                spr->unk1A = 0x27;
            }
            break;
        }
        if (!spr->unkC)
        {
            r7->unk0.base.unk54 = 0;
            r7->unk0.base.unk55 = 0;
            return;
        }
        if (spr->unk1B != spr->unk1A || spr->unk18 != spr->unkC)
        {
            r7->unk0.base.unk1 = 0;
            r7->unk0.base.unk2 = 0;
            r7->unk0.base.flags &= ~4;
        }
        c4 = sub_08155128(spr);
        if (!c4)
        {
            r7->unk0.base.flags |= 2;
            if (c3 == 2 || c3 == 3)
            {
                spr->unk1B = 0xFF;
                r7->unk0.base.unk1 = c4;
                r7->unk0.base.unk2 = c4;
                r7->unk0.base.flags &= ~4;
                sub_08155128(spr);
            }
        }
        else
        {
            r7->unk0.base.flags &= ~2;
            r7->unk0.base.unk2 += spr->unk1C;
            r7->unk0.base.unk1 = r7->unk0.base.unk2 >> 4;
        }
    }
    if (sl->unk135 == 1 && r7->unk0.base.flags & 2)
    {
        r7->unk0.base.unk54 = 0;
        r7->unk0.base.unk55 = 0;
        return;
    }
    else
    {
        if (!sl->unk135 && r7->unk0.base.flags & 2)
            r7->unk0.base.flags &= ~0x200;
        if (r7->unk0.base.flags & 0x400)
        {
            r7->unk0.base.unk54 = 0;
            r7->unk0.base.unk55 = 0;
            return;
        }
    }
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 != r7->unk0.base.unk60__42)
    {
        r7->unk0.base.unk54 = 0;
        r7->unk0.base.unk55 = 0;
    }
    else
    {
        spr->unk10 = (r7->unk0.base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r7->unk0.base.unk54;
        spr->unk12 = (r7->unk0.base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r7->unk0.base.unk55;
        spr->unk10 += gUnk_0203AD18[0];
        spr->unk12 += gUnk_0203AD18[1];
        r7->unk0.base.unk55 = 0;
        r7->unk0.base.unk54 = 0;
        if (sb == 0x300)
            spr->unk8 |= 0x400;
        else
            spr->unk8 &= ~0x400;
        if (gUnk_0203AD20 & 8)
            spr->unk8 ^= 0x400;
        if (sb == 0x200)
            spr->unk8 |= 0x800;
        else
            spr->unk8 &= ~0x800;
        if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r7->unk0.base.unk60__42)
            sub_0815604C(spr);
    }
}

void sub_0810B1F4(void)
{
    struct Sprite sprite;
    struct DarkMindForm2 *r0 = TaskGetStructPtr(gCurTask, r0);
    struct DarkMindForm2 *r8 = r0, *sl = r0;
    s16 c1, c2;
    s16 ip, r7;
    u16 r2;
    s16 r4;
    struct Sprite *spr;
    void (*fp)(struct DarkMindForm2 *), (*fp2)(struct DarkMindForm2 *);

    if (r8->unk0.base.flags & 0x1000)
    {
        if (r8->unk0.unk80 <= 0)
            gKirbys[r8->unk0.unk86].unkEC += gUnk_08351648[r8->unk0.type].unk2;
        TaskDestroy(gCurTask);
        return;
    }
    if (sub_0803D6B4(&r8->unk0))
    {
        r8->unk0.unk80 = 1;
        r8->unk0.base.flags |= 0x1000;
        return;
    }
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r8->unk0.base.unk60__42)
    {
        gWinRegs[0] = WIN_RANGE(0, 240);
        if (gUnk_0203AD20 & 8)
            gWinRegs[2] = WIN_RANGE(9 - gUnk_0203AD18[1], 0x18 - gUnk_0203AD18[1]);
        else
            gWinRegs[2] = WIN_RANGE(gUnk_0203AD18[1] + 0x88, gUnk_0203AD18[1] + 0x97);
        gWinRegs[4] = WININ_WIN0_BG0 | WININ_WIN0_BG1 | WININ_WIN0_OBJ | WININ_WIN0_CLR;
        gWinRegs[5] = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ;
        gDispCnt |= DISPCNT_WIN0_ON;
        gBldRegs.bldCnt = BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG3;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0x10);
    }
    Macro_08107BA8_4(&r8->unk0.base, &r8->unk0.base.unk10, &sprite, 0x18, (&sl->unkB4));
    if (Macro_0810B1F4(&r8->unk0.base)
        && !(r8->unk0.base.flags & 0x2000))
    {
        c1 = (r8->unk0.base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r8->unk0.base.unk54;
        c2 = (r8->unk0.base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r8->unk0.base.unk55;
        ip = c1 + gUnk_0203AD18[0];
        r7 = c2 + gUnk_0203AD18[1];
        r2 = sl->unk11E;
        r4 = sl->unk120 >> 4;
        if (gUnk_0203AD20 & 8)
        {
            r7 = 0xA0 - r7;
            r2 = -r2;
            r4 = (0x400 - r4) & 0x3FF;
        }
        if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r8->unk0.base.unk60__42)
            sub_081548A8(r4, sl->unk11C, r2, 0x40, 0x40, ip, r7, &gBgAffineRegs);
        if ((r4 == 0x100 || r4 == 0x200 || r4 == 0x300 || r4 == 0) && sl->unk11C == 0x100)
        {
            spr = &sl->unkB4;
            spr->unk10 = (r8->unk0.base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r8->unk0.base.unk54;
            spr->unk12 = (r8->unk0.base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r8->unk0.base.unk55;
            spr->unk10 += gUnk_0203AD18[0];
            spr->unk12 += gUnk_0203AD18[1];
            if (r4 == 0x300)
                spr->unk8 |= 0x400;
            else
                spr->unk8 &= ~0x400;
            if (gUnk_0203AD20 & 8)
                spr->unk8 ^= 0x400;
            if (r4 == 0x200)
                spr->unk8 |= 0x800;
            else
                spr->unk8 &= ~0x800;
            if (spr->unkC)
            {
                spr->unk1C = 0;
                sub_08155128(spr);
                spr->unk1C = 0x10;
                if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r8->unk0.base.unk60__42)
                    sub_0815604C(spr);
            }
        }
    }
    else
    {
        fp2 = r8->unk0.unk7C;
        if (fp2) fp2(r8);
        fp = r8->unk0.unk78;
        fp(r8);
        if (r8->unk0.base.flags & 0x40000)
            r8->unk0.base.flags &= ~0x40000;
        SetPointerSomething(&r8->unk0.base);
        if (r8->unk0.base.flags & 0x800)
        {
            sub_0810AC70();
            r8->unk0.base.unkC &= ~0x20;
            return;
        }
        if (!(r8->unk0.base.flags & 0x4000000))
        {
            r8->unk0.base.xspeed += r8->unk0.unk98;
            r8->unk0.base.yspeed += r8->unk0.unk9A;
        }
        if (!(r8->unk0.base.flags & 0x800))
        {
            r8->unk0.base.unk48 = r8->unk0.base.x;
            r8->unk0.base.unk4C = r8->unk0.base.y;
            r8->unk0.base.x += r8->unk0.base.xspeed;
            r8->unk0.base.y -= r8->unk0.base.yspeed;
            if (r8->unk0.unk98)
            {
                if (!(r8->unk0.base.flags & 0x4000000))
                    r8->unk0.base.xspeed -= r8->unk0.unk98;
                if (r8->unk0.unk98 < 0)
                {
                    r8->unk0.unk98 += 0x10;
                    if (r8->unk0.unk98 > 0)
                        r8->unk0.unk98 = 0;
                }
                else
                {
                    r8->unk0.unk98 -= 0x10;
                    if (r8->unk0.unk98 < 0)
                        r8->unk0.unk98 = 0;
                }
            }
            if (r8->unk0.unk9A)
            {
                if (!(r8->unk0.base.flags & 0x4000000))
                    r8->unk0.base.yspeed -= r8->unk0.unk9A;
                if (r8->unk0.unk9A < 0)
                {
                    r8->unk0.unk9A += 0x10;
                    if (r8->unk0.unk9A > 0)
                        r8->unk0.unk9A = 0;
                }
                else
                {
                    r8->unk0.unk9A -= 0x10;
                    if (r8->unk0.unk9A < 0)
                        r8->unk0.unk9A = 0;
                }
            }
        }
        sub_0810AC70();
        r8->unk0.base.unkC &= ~0x20;
    }
}

void sub_0810B830(void)
{
    struct Sprite sprite;
    u16 i, j, *dst;

    sprite.unk0 = 0x6008000;
    sprite.unk14 = 0x680;
    sprite.unkC = 0x39B;
    sprite.unk1A = 0;
    sprite.unk16 = 0;
    sprite.unk1B = 0xFF;
    sprite.unk1C = 0x10;
    sprite.unk1F = 0;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk8 = 0x48000;
    sub_08153D78(&sprite);
    CpuFill32(0, (void *)0x600E800, 0x1000);
    dst = (void *)0x600E800;
    for (i = 0; i < 0x10; ++i)
    {
        for (j = 0; j < 8; j += 2)
            dst[j>>1] = (j + (i<<3)) | (((j+1) + (i<<3)) << 8);
        dst += 0x10;
    }
    dst = (void *)0x600E808;
    for (i = 0; i < 0x10; ++i)
    {
        for (j = 0; j < 8; j += 2)
            dst[j>>1] = ((j+0x80) + (i<<3)) | (((j+0x80+1) + (i<<3)) << 8);
        dst += 0x10;
    }
}

void sub_0810B904(struct Task *task)
{
    struct DarkMindForm2 *r0 = TaskGetStructPtr(task, r0);
    struct Sprite *r4 = &r0->unkB4;

    if (r4->unk0)
    {
        sub_08157190(r4->unk0);
        r4->unk0 = 0;
    }
    gWinRegs[0] = 0;
    gWinRegs[2] = 0;
    gWinRegs[4] = 0;
    gWinRegs[5] = 0;
    gDispCnt &= ~DISPCNT_WIN0_ON;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    ObjectDestroy(task);
}

void *CreateDarkMindForm2(struct Object *r5, u8 r4)
{
    struct Task *t = TaskCreate(sub_0810B1F4, sizeof(struct DarkMindForm2), 0xFFF, 0x10, sub_0810B904);
    struct DarkMindForm2 *r0 = TaskGetStructPtr(t, r0);
    struct DarkMindForm2 *r7 = r0;
    u16 v1;
    u8 v2;
    
    InitObject(&r7->unk0, r5, r4);
    r7->unk0.unk91 = -5;
    r7->unk0.unk92 = -5;
    r7->unk0.unk93 = -5;
    r7->unk0.unk94 = -5;
    r7->unk0.unk95 = -5;
    r7->unk0.unk96 = -5;
    r7->unk0.unk97 = -0x18;
    r7->unk126 = 0;
    r7->unk129 = 0;
    r7->unk127 = 0;
    r7->unk12E = 0;
    r7->unk131 = 0;
    r7->unk12C = 0;
    r7->unk12F = 0;
    r7->unk130 = 0;
    r7->unk135 = 2;
    r7->unk136 = 0;
    r7->unk137 = 0;
    r7->unk12D = 0;
    r7->unk12B = 0;
    r7->unk128 = 0;
    r7->unk134 = 0;
    r7->unk132 = 0;
    r7->unk133 = 0;
    r7->unk12A = 0;
    r7->enemy3 = NULL;
    r7->enemy2 = NULL;
    r7->enemy1 = NULL;
    r7->laser = NULL;
    r7->laserShower = NULL;
    r7->bomb = NULL;
    r7->unkFC = NULL;
    r7->unk100 = NULL;
    r7->unkDC = NULL;
    r7->unk11C = 0x100;
    r7->unk11E = 0x100;
    r7->unk120 = 0;
    r7->unk122 = 0;
    r7->unk124 = 0;
    r7->unk138 = (r7->unk0.unk80 / 3) * 2;
    r7->unk139 = r7->unk0.unk80 / 3;
    r7->unk0.base.unkC |= 1;
    r7->unk0.base.unkC |= 4;
    r7->unk0.base.flags |= 0x2000000;
    r7->unk0.base.flags |= 0x200;
    r7->unk0.base.flags |= 0x100;
    r7->unk0.base.flags |= 0x40;
    r7->unk0.base.flags &= ~8;
    r7->unk0.base.unkC |= 0x800;
    r7->unk0.base.flags |= 1;
    r7->unk0.base.unk5C &= ~7;
    r7->unk0.base.unk5C |= 3;
    r7->unk0.base.unk5C |= 0x1080A0;
    r7->unk0.base.unk68 = 0;
    sub_0803E2B0(&r7->unk0.base, -8, 0x10, 8, 0x20);
    sub_0803E308(&r7->unk0.base, -40, -30, 40, 20);
    r7->unk0.base.unk10.unk0 = 0x6008000;
    r7->unk0.base.unk10.unk14 = 0x680;
    r7->unk0.base.unk10.unkC = gUnk_08351648[r7->unk0.type].unk14[r7->unk0.unk83].unk0;
    r7->unk0.base.unk10.unk1A = gUnk_08351648[r7->unk0.type].unk14[r7->unk0.unk83].unk2;
    r7->unk0.base.unk10.unk16 = 0;
    r7->unk0.base.unk10.unk1B = 0xFF;
    r7->unk0.base.unk10.unk1C = 0x10;
    r7->unk0.base.unk10.unk1F = 0;
    r7->unk0.base.unk10.unk10 = 0;
    r7->unk0.base.unk10.unk12 = 0;
    r7->unk0.base.unk10.unk8 = 0x48000;
    r7->unk0.base.unk10.unk0 = 0;
    gUnk_02022EA0 = 0;
    gUnk_03000524 = 1;
    sub_080708DC(&r7->unk0.base, &r7->unkB4, 0x18, 0x399, 44, 30);
    r7->unkB4.unk8 |= 0x80;
    r7->unk0.base.unk10.unk1F = sub_0803DF24(0x399);
    if (r7->unk0.base.unk10.unk1F == 0xFF)
    {
        sub_0803DFAC(0x399, 0);
        r7->unk0.base.unk10.unk1F = sub_0803DF24(0x399);
    }
    r7->unkB4.unk1F = sub_0803DF24(0x39A);
    if (r7->unkB4.unk1F == 0xFF)
    {
        sub_0803DFAC(0x39A, 0);
        r7->unkB4.unk1F = sub_0803DF24(0x39A);
    }
    sub_0814F3C4(&r7->unkE4, gUnk_083B66F4[0]);
    sub_0814F3C4(&r7->unkF0, gUnk_083B66F4[2]);
    r7->unkE4.unk6 |= 0x40;
    r7->unkF0.unk6 |= 0x40;
    v2 = gCurLevelInfo[r7->unk0.base.unk56].unk65E;
    v1 = sub_08002A0C(v2);
    sub_08002A44(v2, v1, 0);
    sub_08002A1C(v2, 0);
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r7->unk0.base.unk60__42 && !(gUnk_0203AD20 & 4))
        m4aSongNumStartOrChange(sub_08002A0C(v2));
    r7->unk0.unk9E = 0;
    r7->unk0.unk7C = sub_0810EDEC;
    sub_080700D8(&r7->unk0);
    sub_08113DE8(r7);
    return r7;
}

void sub_0810BD28(struct DarkMindForm2 *r5)
{
    r5->unk0.kirby3 = sub_0803D368(&r5->unk0);
    r5->unk0.base.flags |= 4;
    if (!(r5->unk0.kirby3->base.base.unkC & 0x8000)
        && r5->unk0.base.unk60__42 == r5->unk0.kirby3->base.base.unk60__42
        && sub_08039430(&r5->unk0.kirby3->base,
            r5->unk0.base.x, r5->unk0.base.y,
            r5->unk0.object->unk1A, r5->unk0.object->unk1C,
            r5->unk0.object->unk1E, r5->unk0.object->unk20))
    {
        Macro_081003EC(&r5->unk0, &r5->unk0.kirby3->base.base);
        sub_0810F13C(r5);
        sub_0810BE08(r5);
    }
}

void sub_0810BE08(struct DarkMindForm2 *r4)
{
    u32 *r1 = sub_08002888(1, 11, 0);

    if (*r1)
        sub_0810C15C(r4);
    else
    {
        *r1 = 1;
        ObjectSetFunc(r4, 0, sub_0810BE7C);
        r4->unk0.base.xspeed = 0;
        r4->unk0.base.yspeed = 0;
        r4->unk0.base.x = 0x7E00;
        r4->unk0.base.y = 0x3800;
        r4->unk0.base.flags |= 0x40;
        r4->unk11C = 0x80;
        r4->unk11E = 0x80;
        r4->unk0.unk9E = 0;
        r4->unk0.unk9F = 0;
        r4->unk0.base.counter = 0;
    }
}

void sub_0810BE7C(struct DarkMindForm2 *r5)
{
    struct DarkMindForm2 *r6 = r5;

    if (++r5->unk0.base.counter > 61)
    {
        ++r5->unk0.unk9F;
        r5->unk0.base.counter = 0;
        if (r5->unk0.unk9E > 2)
            PlaySfx(&r5->unk0.base, 539);
    }
    if (r5->unk0.unk9F)
    {
        if (r5->unk0.unk9E > 2)
        {
            if (r5->unk0.unk9F <= 3)
            {
                r6->unk11C += 2 * r5->unk0.unk9F;
                r6->unk11E += 2 * r5->unk0.unk9F;
            }
            else
            {
                r6->unk11C -= 2 * (8 - r5->unk0.unk9F);
                r6->unk11E -= 2 * (8 - r5->unk0.unk9F);
            }
        }
        if (++r5->unk0.unk9F > 6)
        {
            r5->unk0.unk9F = 0;
            ++r5->unk0.unk9E;
        }
    }
    if (r5->unk0.unk9E > 5)
        sub_08113C9C(r5);
}

void sub_0810BFC0(struct DarkMindForm2 *r5)
{
    struct DarkMindForm2 *r6 = r5;

    r5->unk0.base.counter += r5->unk0.unk9E;
    if (r5->unk0.base.counter > r5->unk0.unk85)
    {
        ++r5->unk0.unk9F;
        r5->unk0.base.counter = 0;
        PlaySfx(&r5->unk0.base, 394);
        if (r5->unk0.unk85 == 0x3D)
            sub_0806FE64(4, &r5->unk0);
        else
        {
            // TODO: UB if Object11::unk0 is negative
            r6->unkE4.unk0 <<= 1;
            r6->unkF0.unk0 <<= 1;
        }
        r5->unk0.unk85 >>= 1;
        if (r5->unk0.unk85 < 0x10)
        {
            r5->unk0.unk85 = 0x10;
            r6->unkE4.unk0 = 0x400;
            r6->unkF0.unk0 = 0x400;
        }
    }
    if (r5->unk0.unk9F)
    {
        if (r5->unk0.unk9F <= 0x10)
        {
            r6->unk11C += (r5->unk0.unk9F + r5->unk0.unk9E) >> 2;
            r6->unk11E += (r5->unk0.unk9F + r5->unk0.unk9E) >> 2;
        }
        else
        {
            r6->unk11C -= (0x20 - r5->unk0.unk9F) >> 2;
            r6->unk11E -= (0x20 - r5->unk0.unk9F) >> 2;
        }
        if (++r5->unk0.unk9F >= 0x20)
        {
            r5->unk0.unk9F = 0;
            ++r5->unk0.unk9E;
        }
    }
    if (r6->unk11C > 0x100)
    {
        sub_080700D8(&r5->unk0);
        sub_0810C15C(r5);
    }
}

void sub_0810C15C(struct DarkMindForm2 *r5)
{
    struct DarkMindForm2 *r8 = r5;

    ObjectSetFunc(r5, 0, sub_08113D2C);
    Macro_08100F18(&r5->unk0);
    r8->unk11C = 0x100;
    r8->unk11E = 0x100;
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.x = 0x7E00;
    r5->unk0.base.y = 0x3800;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.unk9E = 4;
    r5->unk0.unk9F = 0;
    r5->unk0.base.counter = 0x80;
    r5->unk0.unk85 = 0x7A;
    Macro_081059A8_3(&r5->unk0, 240, 120, OBJ_SHADOW_KIRBY, 6, 0, -240, -140, 240, 160);
    r5->unk0.base.flags &= ~0x400;
    r8->unk135 = 0;
    PlaySfx(&r5->unk0.base, 431);
}

void sub_0810C414(struct DarkMindForm2 *r5)
{
    sub_080886A8(&r5->unk0.base);
    sub_08088700(&r5->unk0.base, 0x11);
    sub_0810CBE8(r5);
    ObjectSetFunc(r5, 0, sub_08113D68);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk11C = 0x100;
    r5->unk11E = 0x100;
    r5->unk135 = 1;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
    r5->unk0.base.counter = 0x20;
    sub_08086C48(&r5->unk0);
    sub_0806FE64(4, &r5->unk0);
    sub_08033540(r5->unk0.base.unk56);
    r5->unk0.base.flags |= 0x2000;
    r5->unkE4.unk6 |= 0x10;
}

void sub_0810C4AC(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 0, sub_0810C510);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk11C = 0x100;
    r4->unk11E = 0x100;
    r4->unk0.unk9E = 0;
    r4->unk0.unk9F = 0;
    r4->unk0.base.counter = 0;
    sub_0806FE64(3, &r4->unk0);
    sub_08098184(&r4->unk0);
    sub_080860A8(&r4->unk0, &gUnk_083573AC);
}

void sub_0810C510(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r4->unk0.base.unk60__42)
        sub_0814F274(&r4->unkF0);
    if (r4->unk0.base.counter == 0x20 || r4->unk0.base.counter == 0x90
        || r4->unk0.base.counter == 0x9C || r4->unk0.base.counter == 0xEC
        || r4->unk0.base.counter == 0x12C || r4->unk0.base.counter == 0x138
        || r4->unk0.base.counter == 0x15C)
    {
        r5->unk11C -= 0x10;
        r5->unk11E = r5->unk11C;
        sub_080860A8(&r4->unk0, &gUnk_083573AC);
        sub_0806FE64(2, &r4->unk0);
        PlaySfx(&r4->unk0.base, 594);
    }
    if (++r4->unk0.base.counter > 0x16C)
        sub_0810C62C(r4);
}

void sub_0810C62C(struct DarkMindForm2 *r5)
{
    struct Unk_02022930_0 *s;

    ObjectSetFunc(r5, 0, sub_0810C6A4);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.flags |= 0x40;
    r5->unk0.unk9E = 0;
    r5->unk0.unk9F = 0;
    r5->unk0.base.counter = 360;
    sub_0806FE64(5, &r5->unk0);
    s = sub_0803C83C(5, r5->unk0.base.unk60__42);
    s->unk0 = 3;
    s->unk8 |= 0x40;
    s->unkA = 0x20;
    s->unk2 = 0x1F;
    s->unk4 = 0xFFFF;
    s->unk6 = 0xFFFF;
    s->unk3 = 0xF;
}

void sub_0810C6A4(struct DarkMindForm2 *r7)
{
    struct Unk_02022930_0 *s;
    u8 i;
    struct Kirby *kirby;

    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r7->unk0.base.unk60__42)
        sub_0814F274(&r7->unkF0);
    if (!(r7->unk0.base.counter & 0x1F))
        PlaySfx(&r7->unk0.base, 595);
    if (!--r7->unk0.base.counter)
    {
        m4aSongNumStartOrChange(27);
        CpuFill32(0, (void *)0x600E800, 0x1000);
        if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r7->unk0.base.unk60__42)
            gCurLevelInfo[gUnk_0203AD3C].unk0 = 1;
        s = sub_0803C83C(5, r7->unk0.base.unk60__42);
        s->unk0 = 3;
        s->unkA = 0xFF00;
        s->unkC = 0x1F00;
        s->unk1 = 0x1F;
        s->unk2 = 0;
        s->unk4 = 0xFFFF;
        s->unk6 = 0xFFFF;
        s->unk3 = 0xF;
        Macro_081059A8_2(&r7->unk0, r7->unk0.base.x >> 8, r7->unk0.base.y >> 8, OBJ_DARK_MIND_FORM_3_TRIGGER, 1, 0);
        Macro_081059A8_2(&r7->unk0, 0, 0, OBJ_CUTSCENE_TRIGGER, 2, 0);
        for (i = 0; i < gUnk_0203AD44; ++i)
        {
            kirby = &gKirbys[i];
            if (kirby->base.base.unk60__42 == r7->unk0.base.unk60__42
                && kirby->hp > 0)
            {
                kirby->base.base.flags |= 0x1000000;
                sub_0804BAD8(kirby);
                if (kirby->unk103 == 0x1A)
                    gUnk_0203AD34 = 0;
                kirby->unk103 = 0;
                kirby->unkDB = 0;
                sub_08035E28(0);
                sub_08034C9C(2);
                if ((kirby->unkDD & 0x1F) == 0x1A)
                    gUnk_0203AD34 = 0;
                kirby->unkDD = 0;
                sub_0806F260(kirby);
                sub_0803E558(kirby->base.base.unk56);
            }
        }
        r7->unk0.base.flags |= 0x1000;
    }
}

void sub_0810C9C8(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 0, sub_0810CA50);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk135 = 2;
    switch (Rand16() & 3)
    {
    case 1:
        r4->unk0.unk9F = 120;
        break;
    case 2:
        r4->unk0.unk9F = 60;
        break;
    case 0:
    default:
        r4->unk0.unk9F = 90;
        break;
    }
    r4->unk0.unk9E = 0;
}

void sub_0810CA50(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    r4->unk0.base.yspeed = gUnk_0835736C[(r4->unk0.base.counter >> 3) & 7];
    if (!(r4->unk0.base.counter & 0x1F)
        && (Rand16() & 1))
    {
        r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
        if (r4->unk0.base.x < r4->unk0.kirby3->base.base.x)
            r4->unk0.base.flags &= ~1;
        else
            r4->unk0.base.flags |= 1;
        r4->unk0.unk9E = 0x10;
    }
    if (r4->unk0.unk9E)
    {
        if (r4->unk0.base.flags & 1)
        {
            r4->unk0.base.xspeed -= 0x18;
            if (r4->unk0.base.xspeed < -0x200)
                r4->unk0.base.xspeed = -0x200;
            else if (r4->unk0.base.xspeed > 0x200)
                r4->unk0.base.xspeed = 0x200;
        }
        else
        {
            r4->unk0.base.xspeed += 0x18;
            if (r4->unk0.base.xspeed > 0x200)
                r4->unk0.base.xspeed = 0x200;
            else if (r4->unk0.base.xspeed < -0x200)
                r4->unk0.base.xspeed = -0x200;
        }
        --r4->unk0.unk9E;
    }
    else
    {
        if (r4->unk0.base.xspeed < 0)
        {
            r4->unk0.base.xspeed += 4;
            if (r4->unk0.base.xspeed > 0)
                r4->unk0.base.xspeed = 0;
        }
        else
        {
            r4->unk0.base.xspeed -= 4;
            if (r4->unk0.base.xspeed < 0)
                r4->unk0.base.xspeed = 0;
        }
    }
    if (r4->unk0.base.x < 0x3E00)
        r4->unk0.base.x = 0x3E00;
    if (r4->unk0.base.x > 0xBE00)
        r4->unk0.base.x = 0xBE00;
    ++r4->unk0.base.counter;
    if (r6->unk135 == 2)
    {
        r4->unk0.base.flags |= 4;
        if (!r4->unk0.unk9F)
        {
            r4->unk0.base.yspeed = 0;
            r6->unk135 = 1;
        }
        else if (!r6->unk129)
            --r4->unk0.unk9F;
    }
    else if (r6->unk135 == 1 && r4->unk0.base.flags & 2)
        sub_0810A168(r4);
}

void sub_0810CBE8(struct DarkMindForm2 *r3)
{
    struct DarkMindForm2 *ip = r3;

    if (ip->enemy3 && !(ip->enemy3->base.unkC & 0x400))
        ip->enemy3->base.unkC |= 0x2000;
    if (ip->enemy2 && !(ip->enemy2->base.unkC & 0x400))
        ip->enemy2->base.unkC |= 0x2000;
    if (ip->enemy1 && !(ip->enemy1->base.unkC & 0x400))
        ip->enemy1->base.unkC |= 0x2000;
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r3->unk0.base.unk60__42)
    {
        gUnk_02022EA0 = 2;
        gUnk_03000524 = 1;
        sub_0803E458();
    }
}

void sub_0810CC90(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    ObjectSetFunc(r4, 1, sub_08113E14);
    r4->unk0.base.flags &= ~4;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    PlaySfx(&r4->unk0.base, 431);
    sub_0810A71C(r4);
    r6->unk129 = 1;
    if (r6->unk128 != 4 && r6->unk128 != 5 && r6->unk128 != 2)
        r6->unk135 = 0;
    if (r6->unk126 == 3 || r6->unk126 == 4 || r6->unk126 == 5)
        sub_0810CBE8(r4);
}

#define Macro_0810CD98(dmf2, dmf2Alt) \
({ \
    (dmf2)->unkE4.unk0 = 0x100; \
    (dmf2)->unkF0.unk0 = 0x100; \
    if ((dmf2)->unk126 == 1 || (dmf2)->unk126 == 2) \
        sub_0811406C(dmf2Alt); \
    else \
        sub_08113E98(dmf2Alt); \
})

void sub_0810CD98(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    if (r5->unk0.base.y > 0x5000)
    {
        if (r5->unk0.base.yspeed < 0)
        {
            r5->unk0.base.yspeed += 40;
            if (r5->unk0.base.yspeed > 0)
                r5->unk0.base.yspeed = 0;
        }
        else
        {
            r5->unk0.base.yspeed -= 40;
            if (r5->unk0.base.yspeed < 0)
                r5->unk0.base.yspeed = 0;
        }
    }
    else
    {
        r5->unk0.base.yspeed -= 13;
        if (r5->unk0.base.yspeed < -0x180)
            r5->unk0.base.yspeed = -0x180;
    }
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
    if ((r5->unk0.unk83 == 2 || r5->unk0.unk83 == 4)
        && r4->unkFC->unk0.unk83 != 1
        && r4->unk100->unk0.unk83 != 1
        && r4->unkFC->unk0.unk83 != 3
        && r4->unk100->unk0.unk83 != 3)
        Macro_0810CD98(r4, r5);
    else if (!r5->unk0.base.yspeed && r5->unk0.unk83 != 4 && r5->unk0.unk83 != 2)
    {
        sub_0806FE64(2, &r5->unk0);
        r4->unkE4.unk0 = 0x800;
        r4->unkF0.unk0 = 0x800;
        r5->unk0.unk83 = 2;
    }
}

void sub_0810CEB0(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    ObjectSetFunc(r4, 1, sub_0810CF60);
    r4->unk0.base.flags &= ~4;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    if (r4->unk0.base.x < 0x7E00)
        r4->unk0.base.flags &= ~1;
    else
        r4->unk0.base.flags |= 1;
    if (Rand16() & 3)
    {
        r5->unk0.unk9E = 0;
        r4->unk124 = 0;
    }
    else
    {
        r5->unk0.unk9E = 1;
        r4->unk124 = 0x2000;
        r4->unk122 = 0;
    }
    r4->unk129 = 1;
}

void sub_0810CF60(struct DarkMindForm2 *r3)
{
    struct DarkMindForm2 *ip = r3;

    ip->unk122 += 8;
    if (ip->unk122 > 0xC0)
        ip->unk122 = 0xC0;
    if (r3->unk0.unk9E)
    {
        if (r3->unk0.base.y > 0x7800)
        {
            if (r3->unk0.base.yspeed < 0)
            {
                r3->unk0.base.yspeed += 40;
                if (r3->unk0.base.yspeed > 0)
                    r3->unk0.base.yspeed = 0;
            }
            else
            {
                r3->unk0.base.yspeed -= 40;
                if (r3->unk0.base.yspeed < 0)
                    r3->unk0.base.yspeed = 0;
            }
        }
        else
        {
            r3->unk0.base.yspeed -= 13;
            if (r3->unk0.base.yspeed < -0x180)
                r3->unk0.base.yspeed = -0x180;
        }
    }
    else
    {
        if (r3->unk0.base.y < 0x1800)
        {
            if (r3->unk0.base.yspeed < 0)
            {
                r3->unk0.base.yspeed += 40;
                if (r3->unk0.base.yspeed > 0)
                    r3->unk0.base.yspeed = 0;
            }
            else
            {
                r3->unk0.base.yspeed -= 40;
                if (r3->unk0.base.yspeed < 0)
                    r3->unk0.base.yspeed = 0;
            }
        }
        else
        {
            r3->unk0.base.yspeed += 13;
            if (r3->unk0.base.yspeed > 0x180)
                r3->unk0.base.yspeed = 0x180;
        }
    }
    if (r3->unk0.base.flags & 1)
    {
        r3->unk0.base.xspeed -= 0x20;
        if (r3->unk0.base.xspeed < -0x140)
            r3->unk0.base.xspeed = -0x140;
        else if (r3->unk0.base.xspeed > 0x140)
            r3->unk0.base.xspeed = 0x140;
    }
    else
    {
        r3->unk0.base.xspeed += 0x20;
        if (r3->unk0.base.xspeed > 0x140)
            r3->unk0.base.xspeed = 0x140;
        else if (r3->unk0.base.xspeed < -0x140)
            r3->unk0.base.xspeed = -0x140;
    }
    if (r3->unk0.base.flags & 1)
    {
        if (r3->unk0.base.x < 0x7E00)
        {
            r3->unk0.base.x = 0x7E00;
            r3->unk0.base.xspeed = 0;
        }
    }
    else if (r3->unk0.base.x > 0x7E00)
    {
        r3->unk0.base.x = 0x7E00;
        r3->unk0.base.xspeed = 0;
    }
    if (r3->unk0.base.xspeed == 0 && r3->unk0.base.yspeed == 0
        && ip->unk124 == ip->unk120)
        sub_08113F50(r3);
}

void sub_0810D0EC(struct DarkMindForm2 *r3)
{
    if (r3->unk0.unk83 == 4)
        sub_08113FF8(r3);
    else if (!r3->unk0.base.counter)
    {
        if (r3->unk0.unk9F)
        {
            if (r3->unk0.base.y < 0x1800)
            {
                if (r3->unk0.base.yspeed < 0)
                {
                    r3->unk0.base.yspeed += 40;
                    if (r3->unk0.base.yspeed > 0)
                        r3->unk0.base.yspeed = 0;
                }
                else
                {
                    r3->unk0.base.yspeed -= 40;
                    if (r3->unk0.base.yspeed < 0)
                        r3->unk0.base.yspeed = 0;
                }
            }
            else
            {
                r3->unk0.base.yspeed += 0x10;
                if (r3->unk0.base.yspeed > 0x80)
                    r3->unk0.base.yspeed = 0x80;
            }
        }
        else
        {
            if (r3->unk0.base.y > 0x7800)
            {
                if (r3->unk0.base.yspeed < 0)
                {
                    r3->unk0.base.yspeed += 40;
                    if (r3->unk0.base.yspeed > 0)
                        r3->unk0.base.yspeed = 0;
                }
                else
                {
                    r3->unk0.base.yspeed -= 40;
                    if (r3->unk0.base.yspeed < 0)
                        r3->unk0.base.yspeed = 0;
                }
            }
            else
            {
                r3->unk0.base.yspeed -= 0x10;
                if (r3->unk0.base.yspeed < -0x80)
                    r3->unk0.base.yspeed = -0x80;
            }
        }
        if (r3->unk0.base.yspeed == 0)
            sub_08113FF8(r3);
    }
    else
        --r3->unk0.base.counter;
}

void sub_0810D1D0(struct DarkMindForm2 *r1)
{
    if ((r1->unk0.unk83 == 2 || r1->unk0.unk83 == 4)
        && r1->unkFC->unk0.unk83 != 1 && r1->unk100->unk0.unk83 != 1
        && r1->unkFC->unk0.unk83 != 3 && r1->unk100->unk0.unk83 != 3)
        Macro_0810CD98(r1, r1);
}

void sub_0810D234(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    ObjectSetFunc(r4, 1, sub_0810D2EC);
    r4->unk0.base.flags &= ~4;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    if (r4->unk0.base.x < 0x7E00)
        r4->unk0.base.flags &= ~1;
    else
        r4->unk0.base.flags |= 1;
    r5->unk129 = 1;
    if (Rand16() & 3)
    {
        r4->unk0.unkA2 = 0xB0;
        r4->unk0.unk9F = 1;
        r5->unk124 = 0x2000;
        r5->unk122 = 0;
    }
    else
    {
        r4->unk0.unkA2 = 0x18;
        r4->unk0.unk9F = 0;
    }
}

void sub_0810D2EC(struct DarkMindForm2 *r3)
{
    struct DarkMindForm2 *ip = r3;

    ip->unk122 += 8;
    if (ip->unk122 > 0xC0)
        ip->unk122 = 0xC0;
    if (r3->unk0.unk9F)
    {
        r3->unk0.base.yspeed -= 0x18;
        if (r3->unk0.base.yspeed < -0x1B0)
            r3->unk0.base.yspeed = -0x1B0;
        if (r3->unk0.base.y >= r3->unk0.unkA2 * 0x100)
        {
            r3->unk0.base.y = r3->unk0.unkA2 * 0x100;
            r3->unk0.base.yspeed = 0;
        }
    }
    else
    {
        r3->unk0.base.yspeed += 0x18;
        if (r3->unk0.base.yspeed > 0x1B0)
            r3->unk0.base.yspeed = 0x1B0;
        if (r3->unk0.base.y <= r3->unk0.unkA2 * 0x100)
        {
            r3->unk0.base.y = r3->unk0.unkA2 * 0x100;
            r3->unk0.base.yspeed = 0;
        }
    }
    if (r3->unk0.base.flags & 1)
    {
        r3->unk0.base.xspeed -= 0x20;
        if (r3->unk0.base.xspeed < -0x220)
            r3->unk0.base.xspeed = -0x220;
        else if (r3->unk0.base.xspeed > 0x220)
            r3->unk0.base.xspeed = 0x220;
    }
    else
    {
        r3->unk0.base.xspeed += 0x20;
        if (r3->unk0.base.xspeed > 0x220)
            r3->unk0.base.xspeed = 0x220;
        else if (r3->unk0.base.xspeed < -0x220)
            r3->unk0.base.xspeed = -0x220;
    }
    if (r3->unk0.base.flags & 1)
    {
        if (r3->unk0.base.x <= 0x1E00)
        {
            r3->unk0.base.x = 0x1E00;
            r3->unk0.base.xspeed = 0;
        }
    }
    else if (r3->unk0.base.x >= 0xDE00)
    {
        r3->unk0.base.x = 0xDE00;
        r3->unk0.base.xspeed = 0;
    }
    if (r3->unk0.base.xspeed == 0 && r3->unk0.base.yspeed == 0
        && ip->unk120 == ip->unk124)
        sub_0811401C(r3);
}

void sub_0810D430(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 2, sub_0810D4E0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags ^= 1;
    r4->unk0.base.counter = 24;
    r4->unk0.unk9F = 0;
    if (r4->unk0.unk80 <= r4->unk138)
    {
        if (r4->unk0.base.y > 0x5800)
        {
            if (!(Rand16() & 3))
                r4->unk0.unk9F = 2;
        }
        else
        {
            if (Rand16() & 3)
                r4->unk0.unk9F = 1;
        }
    }
    r4->unk135 = 2;
}

void sub_0810D4E0(struct DarkMindForm2 *ip)
{
    if (ip->unk0.unk83 == 4)
    {
        ip->unk0.unk78 = sub_0810D1D0;
        ip->unk0.base.xspeed = 0;
        ip->unk0.base.yspeed = 0;
        ip->unk0.base.flags &= ~1;
        ip->unk0.base.counter = 0;
    }
    else if (!ip->unk0.base.counter)
    {
        switch (ip->unk0.unk9F)
        {
        case 1:
            if (ip->unk0.base.y > 0x5800)
            {
                if (ip->unk0.base.yspeed < 0)
                {
                    ip->unk0.base.yspeed += 40;
                    if (ip->unk0.base.yspeed > 0)
                        ip->unk0.base.yspeed = 0;
                }
                else
                {
                    ip->unk0.base.yspeed -= 40;
                    if (ip->unk0.base.yspeed < 0)
                        ip->unk0.base.yspeed = 0;
                }
            }
            else
            {
                ip->unk0.base.yspeed -= 40;
                if (ip->unk0.base.yspeed < -0x140)
                    ip->unk0.base.yspeed = -0x140;
            }
            break;
        case 2:
            if (ip->unk0.base.y < 0x5800)
            {
                if (ip->unk0.base.yspeed < 0)
                {
                    ip->unk0.base.yspeed += 40;
                    if (ip->unk0.base.yspeed > 0)
                        ip->unk0.base.yspeed = 0;
                }
                else
                {
                    ip->unk0.base.yspeed -= 40;
                    if (ip->unk0.base.yspeed < 0)
                        ip->unk0.base.yspeed = 0;
                }
            }
            else
            {
                ip->unk0.base.yspeed += 40;
                if (ip->unk0.base.yspeed > 0x140)
                    ip->unk0.base.yspeed = 0x140;
            }
            break;
        }
        if (ip->unk0.base.flags & 1)
        {
            if (ip->unk0.base.x < 0x3600)
            {
                if (ip->unk0.base.xspeed < 0)
                {
                    ip->unk0.base.xspeed += 0x80;
                    if (ip->unk0.base.xspeed > 0)
                        ip->unk0.base.xspeed = 0;
                }
                else
                {
                    ip->unk0.base.xspeed -= 0x80;
                    if (ip->unk0.base.xspeed < 0)
                        ip->unk0.base.xspeed = 0;
                }
            }
            else
            {
                ip->unk0.base.xspeed -= 0x68;
                if (ip->unk0.base.xspeed < -0x2A0)
                    ip->unk0.base.xspeed= -0x2A0;
                else if (ip->unk0.base.xspeed > 0x2A0)
                    ip->unk0.base.xspeed = 0x2A0;
            }
        }
        else
        {
            if (ip->unk0.base.x > 0xC600)
            {
                if (ip->unk0.base.xspeed < 0)
                {
                    ip->unk0.base.xspeed += 0x80;
                    if (ip->unk0.base.xspeed > 0)
                        ip->unk0.base.xspeed = 0;
                }
                else
                {
                    ip->unk0.base.xspeed -= 0x80;
                    if (ip->unk0.base.xspeed < 0)
                        ip->unk0.base.xspeed = 0;
                }
            }
            else
            {
                ip->unk0.base.xspeed += 0x68;
                if (ip->unk0.base.xspeed > 0x2A0)
                    ip->unk0.base.xspeed = 0x2A0;
                else if (ip->unk0.base.xspeed < -0x2A0)
                    ip->unk0.base.xspeed = -0x2A0;
            }
        }
        if (!ip->unk0.base.xspeed)
        {
            ip->unk0.unk78 = sub_0810D1D0;
            ip->unk0.base.xspeed = 0; // redundant
            ip->unk0.base.yspeed = 0;
            ip->unk0.base.flags &= ~1;
            ip->unk0.base.counter = 0;
        }
    } 
    else
        --ip->unk0.base.counter;
}

void sub_0810D6C0(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810D730);
    r4->unk0.base.flags &= ~4;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    if (r4->unk0.base.x < 0x7E00)
        r4->unk0.base.flags &= ~1;
    else
        r4->unk0.base.flags |= 1;
    r4->unk122 = 0;
    r4->unk124 = 0;
    if (!r4->unk126)
        r4->unk129 = 0;
}

void sub_0810D730(struct DarkMindForm2 *r3)
{
    struct DarkMindForm2 *ip = r3;

    ip->unk122 += 6;
    if (ip->unk122 > 0xA0) ip->unk122 = 0xA0;
    if (r3->unk0.base.x > 0x6E00 && r3->unk0.base.x < 0x8E00)
    {
        if (r3->unk0.base.xspeed < 0)
        {
            r3->unk0.base.xspeed += 34;
            if (r3->unk0.base.xspeed > 0)
                r3->unk0.base.xspeed = 0;
        }
        else
        {
            r3->unk0.base.xspeed -= 34;
            if (r3->unk0.base.xspeed < 0)
                r3->unk0.base.xspeed = 0;
        }
    }
    else
    {
        if (r3->unk0.base.flags & 1)
        {
            r3->unk0.base.xspeed -= 0x20;
            if (r3->unk0.base.xspeed < -0x200)
                r3->unk0.base.xspeed = -0x200;
            else if (r3->unk0.base.xspeed > 0x200)
                r3->unk0.base.xspeed = 0x200;
        }
        else
        {
            r3->unk0.base.xspeed += 0x20;
            if (r3->unk0.base.xspeed > 0x200)
                r3->unk0.base.xspeed = 0x200;
            else if (r3->unk0.base.xspeed < -0x200)
                r3->unk0.base.xspeed = -0x200;
        }
    }
    if (r3->unk0.base.y < 0x3000)
    {
        if (r3->unk0.base.yspeed < 0)
        {
            r3->unk0.base.yspeed += 40;
            if (r3->unk0.base.yspeed > 0)
                r3->unk0.base.yspeed = 0;
        }
        else
        {
            r3->unk0.base.yspeed -= 40;
            if (r3->unk0.base.yspeed < 0)
                r3->unk0.base.yspeed = 0;
        }
    }
    else
    {
        r3->unk0.base.yspeed += 13;
        if (r3->unk0.base.yspeed > 0x180)
            r3->unk0.base.yspeed = 0x180;
    }
    if (!r3->unk0.base.xspeed && !r3->unk0.base.yspeed && !ip->unk120 && !ip->unk129)
    {
        r3->unk0.base.flags &= ~1;
        sub_08113F00(r3);
    }
}

void sub_0810D870(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    ObjectSetFunc(r4, 5, sub_0810D914);
    r4->unk0.base.flags &= ~4;
    r4->unk135 = 0;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk122 = 0;
    if (r4->unk0.base.x < 0x7E00)
        r4->unk0.base.flags &= ~1;
    else
        r4->unk0.base.flags |= 1;
    if (!r5->unk127)
        r5->unk124 = 0x1000;
    else
        r5->unk124 = 0x3000;
    r4->unk0.base.counter = 8;
    if (r4->unk0.base.y > 0x3200)
        r4->unk0.unk9F = 0;
    else
        r4->unk0.unk9F = 1;
}

void sub_0810D914(struct DarkMindForm2 *r3)
{
    struct DarkMindForm2 *ip = r3;

    if (r3->unk0.base.x > 0x6E00 && r3->unk0.base.x < 0x8E00)
    {
        if (r3->unk0.base.xspeed < 0)
        {
            r3->unk0.base.xspeed += 0x20;
            if (r3->unk0.base.xspeed > 0)
                r3->unk0.base.xspeed = 0;
        }
        else
        {
            r3->unk0.base.xspeed -= 0x20;
            if (r3->unk0.base.xspeed < 0)
                r3->unk0.base.xspeed = 0;
        }
    }
    else
    {
        if (r3->unk0.base.flags & 1)
        {
            r3->unk0.base.xspeed -= 0x20;
            if (r3->unk0.base.xspeed < -0x240)
                r3->unk0.base.xspeed = -0x240;
            else if (r3->unk0.base.xspeed > 0x240)
                r3->unk0.base.xspeed = 0x240;
        }
        else
        {
            r3->unk0.base.xspeed += 0x20;
            if (r3->unk0.base.xspeed > 0x240)
                r3->unk0.base.xspeed = 0x240;
            else if (r3->unk0.base.xspeed < -0x240)
                r3->unk0.base.xspeed = -0x240;
        }
    }
    ip->unk122 += 8;
    if (ip->unk122 > 0xC0) ip->unk122 = 0xC0;
    if (r3->unk0.unk9F)
    {
        if (r3->unk0.base.y >= 0x3200)
        {
            r3->unk0.base.y = 0x3200;
            if (r3->unk0.base.yspeed < 0)
            {
                r3->unk0.base.yspeed += 0x40;
                if (r3->unk0.base.yspeed > 0)
                    r3->unk0.base.yspeed = 0;
            }
            else
            {
                r3->unk0.base.yspeed -= 0x40;
                if (r3->unk0.base.yspeed < 0)
                    r3->unk0.base.yspeed = 0;
            }
        }
        else
        {
            r3->unk0.base.yspeed -= 29;
            if (r3->unk0.base.yspeed < -0x240)
                r3->unk0.base.yspeed = -0x240;
        }
    }
    else
    {
        if (r3->unk0.base.y <= 0x3200)
        {
            r3->unk0.base.y = 0x3200;
            if (r3->unk0.base.yspeed < 0)
            {
                r3->unk0.base.yspeed += 0x40;
                if (r3->unk0.base.yspeed > 0)
                    r3->unk0.base.yspeed = 0;
            }
            else
            {
                r3->unk0.base.yspeed -= 0x40;
                if (r3->unk0.base.yspeed < 0)
                    r3->unk0.base.yspeed = 0;
            }
        }
        else
        {
            r3->unk0.base.yspeed += 29;
            if (r3->unk0.base.yspeed > 0x240)
                r3->unk0.base.yspeed = 0x240;
        }
    }
    if (!r3->unk0.base.xspeed && !r3->unk0.base.yspeed)
    {
        if (!ip->unk127)
        {
            if (ip->unk120 != 0x1000)
                return;
        }
        else
        {
            if (ip->unk120 != 0x3000)
                return;
        }
        if (((ip->unkFC->unk0.unk83 > 1 && ip->unk100->unk0.unk83 > 1) || ip->unkFC->unk0.base.flags & 0x400)
            && (!r3->unk0.base.counter || !--r3->unk0.base.counter)
            && r3->unk0.base.flags & 2)
        {
            r3->unk0.base.flags &= ~1;
            sub_081140BC(r3);
        }
    }
}

void sub_0810DB14(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    if (r4->unk0.base.counter)
    {
        if (r4->unk0.base.counter == 20)
        {
            sub_08111314(r4);
            r4->unk0.base.xspeed = -0x1D0;
            if (r4->unk120 == 0x1000)
                r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
        }
        if (r4->unk0.base.counter >= 0x10)
            r4->unk0.base.unk54 = gUnk_0835737C[r4->unk0.base.counter & 3];
        if (!--r4->unk0.base.counter)
        {
            r6->unk135 = 1;
            r4->unk0.base.flags &= ~2;
            r6->unk124 = 0;
            r6->unk122 = 0;
        }
    }
    else if (r4->unk0.base.flags & 2)
    {
        r4->unk122 += 6;
        if (r4->unk122 > 0xA0)
            r4->unk122 = 0xA0;
    }
    if (r4->unk0.base.xspeed < 0)
    {
        r4->unk0.base.xspeed += 0x20;
        if (r4->unk0.base.xspeed > 0)
            r4->unk0.base.xspeed = 0;
    }
    else
    {
        r4->unk0.base.xspeed -= 0x20;
        if (r4->unk0.base.xspeed < 0)
            r4->unk0.base.xspeed = 0;
    }
    if (r6->unkFC->unk0.base.flags & 0x400 && r6->unk100->unk0.base.flags & 0x400)
    {
        r6->unk124 = 0;
        sub_081140F4(r4);
    }
}

void sub_0810DC2C(struct DarkMindForm2 *r4)
{
    if (r4->unk0.base.y > 0x2000)
    {
        if (r4->unk0.base.yspeed < 0)
        {
            r4->unk0.base.yspeed += 40;
            if (r4->unk0.base.yspeed > 0)
                r4->unk0.base.yspeed = 0;
        }
        else
        {
            r4->unk0.base.yspeed -= 40;
            if (r4->unk0.base.yspeed < 0)
                r4->unk0.base.yspeed = 0;
        }
    }
    else
    {
        r4->unk0.base.yspeed -= 13;
        if (r4->unk0.base.yspeed < -0x180)
            r4->unk0.base.yspeed = -0x180;
    }
    if (!r4->unk0.base.yspeed && r4->unk0.base.flags & 2)
        sub_0810C9C8(r4);
}

void sub_0810DCA4(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810DD60);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk126 = 6;
    r4->unk135 = 0;
    r4->unk0.base.flags &= ~2;
    sub_0810A3D0(r4);
    if (r4->unk126 == 6)
        r4->unk0.base.counter = 300;
    else
    {
        switch (Rand16() & 3)
        {
        case 0:
        default:
            r4->unk0.base.counter = 300;
            break;
        case 1:
            r4->unk0.base.counter = 260;
            break;
        case 2:
            r4->unk0.base.counter = 220;
            break;
        case 3:
            if (r4->unk0.unk80 > r4->unk139)
                r4->unk0.base.counter = 260;
            else
                r4->unk0.base.counter = 180;
            break;
        }
    }
}

void sub_0810DD60(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    if (r4->unk0.base.flags & 2)
        r6->unk135 = 2;
    r4->unk0.base.yspeed = gUnk_0835736C[(r4->unk0.base.counter >> 3) & 7];
    if (r4->unk0.base.x > 0xC000)
        r4->unk0.base.flags |= 1;
    if (r4->unk0.base.x < 0x3800)
        r4->unk0.base.flags &= ~1;
    if (r4->unk0.base.flags & 1)
    {
        r4->unk0.base.xspeed -= 0x10;
        if (r4->unk0.base.xspeed < -0x200)
            r4->unk0.base.xspeed = -0x200;
        else if (r4->unk0.base.xspeed > 0x200)
            r4->unk0.base.xspeed = 0x200;
    }
    else
    {
        r4->unk0.base.xspeed += 0x10;
        if (r4->unk0.base.xspeed > 0x200)
            r4->unk0.base.xspeed = 0x200;
        else if (r4->unk0.base.xspeed < -0x200)
            r4->unk0.base.xspeed = -0x200;
    }
    if (!--r4->unk0.base.counter)
    {
        sub_0810CBE8(r4);
        PlaySfx(&r4->unk0.base, 433);
        switch (r6->unk126)
        {
        case 6: case 7: // useless
        default:
            sub_0810DED0(r4);
            break;
        case 8:
            sub_0810E590(r4);
            break;
        }
    }
}

void sub_0810DED0(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    ObjectSetFunc(r4, 5, sub_0810DF60);
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk135 = 2;
    r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
    if (r4->unk0.base.y > 0x400)
        r4->unk0.base.yspeed = 0x80;
    else if (r4->unk0.base.y < 0x400)
        r4->unk0.base.yspeed = -0x80;
    r4->unk0.base.counter = 0x3C;
    r4->unk0.unk9E = 0;
    if (r6->unk12A)
        r4->unk0.unk9F = 8;
    else
        r4->unk0.unk9F = 60;
}

void sub_0810DF60(struct DarkMindForm2 *ip)
{
    struct DarkMindForm2 *r5 = ip;

    ip->unk0.base.unk55 = gUnk_0835737C[ip->unk0.unk9E & 3];
    ++ip->unk0.unk9E;
    if (ip->unk0.base.yspeed > 0)
    {
        if (ip->unk0.base.y < 0x400)
        {
            ip->unk0.base.y = 0x400;
            ip->unk0.base.yspeed = 0;
        }
    }
    else if (ip->unk0.base.yspeed < 0)
    {
        if (ip->unk0.base.y > 0x400)
        {
            ip->unk0.base.y = 0x400;
            ip->unk0.base.yspeed = 0;
        }
    }
    if (ip->unk0.base.x - 0x1800 > ip->unk0.kirby3->base.base.x)
    {
        if (ip->unk0.base.flags & 1)
        {
            ip->unk0.base.xspeed += 0x20;
            if (ip->unk0.base.xspeed < -0x280)
                ip->unk0.base.xspeed = -0x280;
            else if (ip->unk0.base.xspeed > 0x280)
                ip->unk0.base.xspeed = 0x280;
        }
        else
        {
            ip->unk0.base.xspeed -= 0x20;
            if (ip->unk0.base.xspeed > 0x280)
                ip->unk0.base.xspeed = 0x280;
            else if (ip->unk0.base.xspeed < -0x280)
                ip->unk0.base.xspeed = -0x280;
        }
    }
    else if (ip->unk0.base.x + 0x1800 < ip->unk0.kirby3->base.base.x)
    {
        if (ip->unk0.base.flags & 1)
        {
            ip->unk0.base.xspeed -= 0x20;
            if (ip->unk0.base.xspeed < -0x280)
                ip->unk0.base.xspeed = -0x280;
            else if (ip->unk0.base.xspeed > 0x280)
                ip->unk0.base.xspeed = 0x280;
        }
        else
        {
            ip->unk0.base.xspeed += 0x20;
            if (ip->unk0.base.xspeed > 0x280)
                ip->unk0.base.xspeed = 0x280;
            else if (ip->unk0.base.xspeed < -0x280)
                ip->unk0.base.xspeed = -0x280;
        }
    }
    else
    {
        if (ip->unk0.base.xspeed < 0)
        {
            ip->unk0.base.xspeed += 0x38;
            if (ip->unk0.base.xspeed > 0)
                ip->unk0.base.xspeed = 0;
        }
        else
        {
            ip->unk0.base.xspeed -= 0x38;
            if (ip->unk0.base.xspeed < 0)
                ip->unk0.base.xspeed = 0;
        }
        if (r5->unk126 == 7 && ip->unk0.unk9F && !--ip->unk0.unk9F)
            ip->unk0.base.counter = 0;
    }
    if (!ip->unk0.base.counter)
    {
        if (!ip->unk0.base.yspeed)
        {
            switch (r5->unk126)
            {
            case 6: // useless
            default:
                sub_08114170(ip);
                break;
            case 7:
                sub_0810E300(ip);
                break;
            }
        }
    }
    else
        --ip->unk0.base.counter;
}

void sub_0810E110(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    ObjectSetFunc(r4, 5, sub_0810E230);
    r6->unk135 = 2;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    if (r4->unk0.base.x > r4->unk0.kirby3->base.base.x)
        r4->unk0.base.flags |= 1;
    else
        r4->unk0.base.flags &= ~1;
    if (r4->unk0.base.x <= 0x2000)
        r4->unk0.base.flags &= ~1;
    if (r4->unk0.base.x >= 0xE000)
        r4->unk0.base.flags |= 1;
    r4->unk0.base.counter = 160;
    sub_08111EF4(r4);
    PlaySfx(&r4->unk0.base, 434);
    DarkMindForm2CreateLaserShower(r4);
    r6->unkE4.unk0 = 0x800;
    r6->unkF0.unk0 = 0x800;
    r4->unk0.unk9E = 0;
}

void sub_0810E230(struct DarkMindForm2 *r3)
{
    if (r3->unk0.base.flags & 1)
    {
        r3->unk0.base.xspeed -= 8;
        if (r3->unk0.base.xspeed < -0x80)
            r3->unk0.base.xspeed = -0x80;
        else if (r3->unk0.base.xspeed > 0x80)
            r3->unk0.base.xspeed = 0x80;
    }
    else
    {
        r3->unk0.base.xspeed += 8;
        if (r3->unk0.base.xspeed > 0x80)
            r3->unk0.base.xspeed = 0x80;
        else if (r3->unk0.base.xspeed < -0x80)
            r3->unk0.base.xspeed = -0x80;
    }
    if (r3->unk0.unk9E > 15)
    {
        if (r3->unk0.unk9E > 28)
        {
            r3->unk0.unk9E = 28;
            r3->unk0.base.yspeed = 0;
        }
        else
            r3->unk0.base.yspeed = gUnk_083573B4[r3->unk0.unk9E - 0x10];
    }
    ++r3->unk0.unk9E;
    if ((r3->unk0.base.x < -0x1000 && r3->unk0.base.flags & 1)
        || (r3->unk0.base.x > 0x10800 && !(r3->unk0.base.flags & 1))
        || !--r3->unk0.base.counter)
        sub_0810E8D0(r3);
}

void sub_0810E300(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_081141D0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    if (r4->unk12A)
        r4->unk0.base.counter = 0x10;
    else
        r4->unk0.base.counter = 0x20;
    r4->unk135 = 3;
    r4->unk12A = 1;
}

void sub_0810E354(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    ObjectSetFunc(r4, 5, sub_0810E4A0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk135 = 2;
    if (r4->unk0.base.x > r4->unk0.kirby3->base.base.x)
        r4->unk0.base.flags |= 1;
    else
        r4->unk0.base.flags &= ~1;
    if (r4->unk0.base.x <= 0x2000)
        r4->unk0.base.flags &= ~1;
    if (r4->unk0.base.x >= 0xE000)
        r4->unk0.base.flags |= 1;
    if (r6->unk126 == 8)
    {
        if (r6->unk12A)
            r4->unk0.base.flags &= ~1;
        else
            r4->unk0.base.flags |= 1;
    }
    r4->unk0.base.counter = 0x20;
    sub_08111EF4(r4);
    PlaySfx(&r4->unk0.base, 434);
    DarkMindForm2CreateLaserShower(r4);
    r6->unkE4.unk0 = 0x800;
    r6->unkF0.unk0 = 0x800;
    r4->unk0.unk9E = 0;
}

void sub_0810E4A0(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    if (r4->unk0.base.flags & 1)
    {
        r4->unk0.base.xspeed -= 8;
        if (r4->unk0.base.xspeed < -0x80)
            r4->unk0.base.xspeed = -0x80;
        else if (r4->unk0.base.xspeed > 0x80)
            r4->unk0.base.xspeed = 0x80;
    }
    else
    {
        r4->unk0.base.xspeed += 8;
        if (r4->unk0.base.xspeed > 0x80)
            r4->unk0.base.xspeed = 0x80;
        else if (r4->unk0.base.xspeed < -0x80)
            r4->unk0.base.xspeed = -0x80;
    }
    if (r4->unk0.unk9E > 15)
    {
        if (r4->unk0.unk9E > 28)
        {
            r4->unk0.unk9E = 28;
            r4->unk0.base.yspeed = 0;
        }
        else
            r4->unk0.base.yspeed = gUnk_083573B4[r4->unk0.unk9E - 0x10];
    }
    ++r4->unk0.unk9E;
    if (!--r4->unk0.base.counter)
    {
        if (!--r4->unk0.unk85)
            sub_0810E8D0(r4);
        else
        {
            sub_0811473C(r5->laserShower);
            r5->unkE4.unk0 = 0x100;
            r5->unkF0.unk0 = 0x100;
            if (r5->unk126 == 7)
                sub_0810DED0(r4);
            else
                sub_08114130(r4);
        }
    }
}

void sub_0810E590(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    ObjectSetFunc(r4, 5, sub_0810E65C);
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r5->unk135 = 2;
    if (r4->unk0.base.y > 0x400)
        r4->unk0.base.yspeed = 0x80;
    else if (r4->unk0.base.y < 0x400)
        r4->unk0.base.yspeed = -0x80;
    else
        r4->unk0.base.yspeed = 0;
    r4->unk0.base.counter = 0x20;
    r4->unk0.unk9E = 0;
    r5->unk12A = Rand16() & 1;
    if (r5->unk12A)
        r4->unk0.unkA0 = 0x20;
    else
        r4->unk0.unkA0 = 0xE0;
    if (r4->unk0.base.x > r4->unk0.unkA0 * 0x100)
        r4->unk0.base.xspeed = -0x20;
    else
        r4->unk0.base.xspeed = 0x20;
}

void sub_0810E65C(struct DarkMindForm2 *r5)
{
    r5->unk0.base.unk55 = gUnk_0835737C[r5->unk0.unk9E & 3];
    ++r5->unk0.unk9E;
    if (r5->unk0.base.yspeed > 0)
    {
        if (r5->unk0.base.y < 0x400)
        {
            r5->unk0.base.y = 0x400;
            r5->unk0.base.yspeed = 0;
        }
    }
    else if (r5->unk0.base.yspeed < 0)
    {
        if (r5->unk0.base.y > 0x400)
        {
            r5->unk0.base.y = 0x400;
            r5->unk0.base.yspeed = 0;
        }
    }
    if (r5->unk0.base.xspeed < 0)
    {
        if (r5->unk0.base.flags & 1)
        {
            r5->unk0.base.xspeed += 0x20;
            if (r5->unk0.base.xspeed < -0x280)
                r5->unk0.base.xspeed = -0x280;
            else if (r5->unk0.base.xspeed > 0x280)
                r5->unk0.base.xspeed = 0x280;
        }
        else
        {
            r5->unk0.base.xspeed -= 0x20;
            if (r5->unk0.base.xspeed > 0x280)
                r5->unk0.base.xspeed = 0x280;
            else if (r5->unk0.base.xspeed < -0x280)
                r5->unk0.base.xspeed = -0x280;
        }
        if (r5->unk0.base.x < r5->unk0.unkA0 * 0x100)
        {
            r5->unk0.base.x = r5->unk0.unkA0 * 0x100;
            r5->unk0.base.xspeed = 0;
        }
    }
    else
    {
        if (r5->unk0.base.flags & 1)
        {
            r5->unk0.base.xspeed -= 0x20;
            if (r5->unk0.base.xspeed < -0x280)
                r5->unk0.base.xspeed = -0x280;
            else if (r5->unk0.base.xspeed > 0x280)
                r5->unk0.base.xspeed = 0x280;
        }
        else
        {
            r5->unk0.base.xspeed += 0x20;
            if (r5->unk0.base.xspeed > 0x280)
                r5->unk0.base.xspeed = 0x280;
            else if (r5->unk0.base.xspeed < -0x280)
                r5->unk0.base.xspeed = -0x280;
        }
        if (r5->unk0.base.x > r5->unk0.unkA0 * 0x100)
        {
            r5->unk0.base.x = r5->unk0.unkA0 * 0x100;
            r5->unk0.base.xspeed = 0;
        }
    }
    if (!r5->unk0.base.xspeed && !r5->unk0.base.yspeed && !--r5->unk0.base.counter)
    {
        ObjectSetFunc(r5, 5, sub_081141D0);
        r5->unk0.base.xspeed = 0;
        r5->unk0.base.yspeed = 0;
        r5->unk0.base.flags &= ~1;
        r5->unk0.base.counter = 10;
        r5->unk135 = 3;
    }
}

void sub_0810E7D0(struct DarkMindForm2 *r6)
{
    if (r6->unk12A)
    {
        if (r6->unk0.base.flags & 1)
        {
            r6->unk0.base.xspeed -= 0x20;
            if (r6->unk0.base.xspeed < -0x280)
                r6->unk0.base.xspeed = -0x280;
            else if (r6->unk0.base.xspeed > 0x280)
                r6->unk0.base.xspeed = 0x280;
        }
        else
        {
            r6->unk0.base.xspeed += 0x20;
            if (r6->unk0.base.xspeed > 0x280)
                r6->unk0.base.xspeed = 0x280;
            else if (r6->unk0.base.xspeed < -0x280)
                r6->unk0.base.xspeed = -0x280;
        }
    }
    else
    {
        if (r6->unk0.base.flags & 1)
        {
            r6->unk0.base.xspeed += 0x20;
            if (r6->unk0.base.xspeed < -0x280)
                r6->unk0.base.xspeed = -0x280;
            else if (r6->unk0.base.xspeed > 0x280)
                r6->unk0.base.xspeed = 0x280;
        }
        else
        {
            r6->unk0.base.xspeed -= 0x20;
            if (r6->unk0.base.xspeed > 0x280)
                r6->unk0.base.xspeed = 0x280;
            else if (r6->unk0.base.xspeed < -0x280)
                r6->unk0.base.xspeed = -0x280;
        }
    }
    if (!--r6->unk0.base.counter)
    {
        ObjectSetFunc(r6, 5, sub_081141D0);
        r6->unk0.base.xspeed = 0;
        r6->unk0.base.yspeed = 0;
        r6->unk0.base.flags &= ~1;
        r6->unk0.base.counter = 10;
        r6->unk135 = 3;
    }
}

void sub_0810E8D0(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    ObjectSetFunc(r4, 5, sub_0810E938);
    r4->unk0.base.yspeed = 0;
    r4->unk135 = 2;
    if (r4->unk0.base.x < 0x7E00)
        r4->unk0.base.flags &= ~1;
    else
        r4->unk0.base.flags |= 1;
    r5->unk0.base.counter = 0x20;
    sub_0811473C(r4->laserShower);
    r4->unkE4.unk0 = 0x100;
    r4->unkF0.unk0 = 0x100;
}

void sub_0810E938(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.x > 0x6E00 && r2->unk0.base.x < 0x8E00)
    {
        if (r2->unk0.base.xspeed < 0)
        {
            r2->unk0.base.xspeed += 34;
            if (r2->unk0.base.xspeed > 0)
                r2->unk0.base.xspeed = 0;
        }
        else
        {
            r2->unk0.base.xspeed -= 34;
            if (r2->unk0.base.xspeed < 0)
                r2->unk0.base.xspeed = 0;
        }
    }
    else
    {
        if (r2->unk0.base.flags & 1)
        {
            r2->unk0.base.xspeed -= 0x20;
            if (r2->unk0.base.xspeed < -0x200)
                r2->unk0.base.xspeed = -0x200;
            else if (r2->unk0.base.xspeed > 0x200)
                r2->unk0.base.xspeed = 0x200;
        }
        else
        {
            r2->unk0.base.xspeed += 0x20;
            if (r2->unk0.base.xspeed > 0x200)
                r2->unk0.base.xspeed = 0x200;
            else if (r2->unk0.base.xspeed < -0x200)
                r2->unk0.base.xspeed = -0x200;
        }
    }
    if (!r2->unk0.base.counter)
    {
        if (r2->unk0.base.y > 0x2000)
        {
            if (r2->unk0.base.yspeed < 0)
            {
                r2->unk0.base.yspeed += 40;
                if (r2->unk0.base.yspeed > 0)
                    r2->unk0.base.yspeed = 0;
            }
            else
            {
                r2->unk0.base.yspeed -= 40;
                if (r2->unk0.base.yspeed < 0)
                    r2->unk0.base.yspeed = 0;
            }
        }
        else
        {
            r2->unk0.base.yspeed -= 13;
            if (r2->unk0.base.yspeed < -0x180)
                r2->unk0.base.yspeed = -0x180;
        }
        if (!r2->unk0.base.xspeed && !r2->unk0.base.yspeed)
        {
            r2->unk0.base.flags &= ~1;
            sub_0810C9C8(r2);
        }
    }
    else
        --r2->unk0.base.counter;
}

void sub_0810EA50(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_081141F4);
    r4->unk0.base.flags &= ~4;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.counter = 120;
    r4->unk126 = 9;
    sub_0806FE64(5, &r4->unk0);
    PlaySfx(&r4->unk0.base, 433);
    r4->unkE4.unk0 = 0x800;
    r4->unkF0.unk0 = 0x800;
}

void sub_0810EB30(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;
    struct Task *t;

    r4->unk0.base.flags |= 4;
    if (r4->unk0.base.counter == 8)
    {
        sub_08111EF4(r4);
        PlaySfx(&r4->unk0.base, 434);
        r6->unk135 = 2;
    }
    if (!--r4->unk0.base.counter)
    {
        t = sub_08113508(r4, 0x320);
        if (t) r6->unkDC = t;
        sub_0810AB1C(r4);
    }
}

void sub_0810EC0C(struct DarkMindForm2 *r3)
{
    if (r3->unk0.base.flags & 1)
    {
        r3->unk0.base.xspeed -= 0x20;
        if (r3->unk0.base.xspeed < -0x200)
            r3->unk0.base.xspeed = -0x200;
        else if (r3->unk0.base.xspeed > 0x200)
            r3->unk0.base.xspeed = 0x200;
    }
    else
    {
        r3->unk0.base.xspeed += 0x20;
        if (r3->unk0.base.xspeed > 0x200)
            r3->unk0.base.xspeed = 0x200;
        else if (r3->unk0.base.xspeed < -0x200)
            r3->unk0.base.xspeed = -0x200;
    }
    if (r3->unk0.base.flags & 1)
    {
        if (r3->unk0.base.x < 0x7E00)
        {
            r3->unk0.base.x = 0x7E00;
            r3->unk0.base.xspeed = 0;
        }
    }
    else
    {
        if (r3->unk0.base.x > 0x7E00)
        {
            r3->unk0.base.x = 0x7E00;
            r3->unk0.base.xspeed = 0;
        }
    }
    if (!r3->unk0.base.xspeed)
        sub_08114310(r3);
}

void sub_0810ECB4(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r6 = r4;

    r4->unk0.base.flags |= 4;
    if (r4->unk0.base.counter > 8)
    {
        r4->unk0.base.unk55 = gUnk_0835737C[r4->unk0.unk9E & 3];
        ++r4->unk0.unk9E;
    }
    if (r4->unk0.base.counter == 8)
    {
        sub_08111EF4(r4);
        PlaySfx(&r4->unk0.base, 434);
        r6->unk135 = 2;
    }
    if (!--r4->unk0.base.counter)
        sub_081143AC(r4);
}

void sub_0810EDA0(struct DarkMindForm2 *r2)
{
    struct DarkMindForm2 *r4 = r2;

    if (r2->unk0.base.y < -0x4000)
        r2->unk0.base.yspeed = 0;
    else
    {
        r2->unk0.base.yspeed += 13;
        if (r2->unk0.base.yspeed > 0x180)
            r2->unk0.base.yspeed = 0x180;
    }
    if (!r4->bomb)
        sub_0810E8D0(r2);
}

void sub_0810EDEC(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *sb = r4;
    struct Object12 *sp00 = sb->unkFC, *sp04 = sb->unk100;
    u16 r8;

    if (r4->bomb && r4->bomb->unk0.base.flags & 0x1000)
        r4->bomb = NULL;
    if (r4->laserShower && r4->laserShower->base.flags & 0x1000)
        r4->laserShower = NULL;
    if (r4->enemy3 && r4->enemy3->base.flags & 0x1000)
        r4->enemy3 = NULL;
    if (r4->enemy2 && r4->enemy2->base.flags & 0x1000)
        r4->enemy2 = NULL;
    if (r4->enemy1 && r4->enemy1->base.flags & 0x1000)
        r4->enemy1 = NULL;
    if (r4->laser && r4->laser->base.flags & 0x1000)
        r4->laser = NULL;
    if (!Macro_0810B1F4(&sb->unk0.base))
    {
        if (sb->unk0.unk80 <= 0)
        {
            sb->unk0.unk7C = NULL;
            sub_0810C414(sb);
            return;
        }
        if (r4->unk12E) r4->unk131 = 0x30;
        if (r4->unk131)
        {
            r8 = r4->unkE4.unk0;
            --r4->unk131;
            r4->unkE4.unk0 = 0xA00;
            r4->unkF0.unk0 = 0xA00;
            if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == sb->unk0.base.unk60__42)
            {
                sub_0814F274(&r4->unkE4);
                sub_0814F274(&r4->unkF0);
            }
            r4->unkE4.unk0 = r8;
            r4->unkF0.unk0 = r8;
            if (r4->unk137)
            {
                r4->unk136 = 1;
                r4->unk137 = 0;
            }
        }
        else if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == sb->unk0.base.unk60__42)
        {
            sub_0814F274(&r4->unkE4);
            sub_0814F274(&r4->unkF0);
        }
        if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == sb->unk0.base.unk60__42)
        {
            if (r4->unkE4.unk6 & 2)
                sub_0803D2A8(2, 0xD);
            if (r4->unkF0.unk6 & 2)
                sub_0803D2A8(0x13, 0xC);
        }
        if (r4->unk130 && !--r4->unk130)
            r4->unk12F = 0;
        if (r4->unk120 != r4->unk124)
        {
            if (abs(r4->unk120 - r4->unk124) > 0x2000)
            {
                if (r4->unk120 - r4->unk124 > 0)
                    r4->unk120 += r4->unk122;
                else
                    r4->unk120 -= r4->unk122;
                r4->unk120 &= 0x3FFF;
            }
            else
            {
                if (r4->unk120 - r4->unk124 < 0)
                {
                    r4->unk120 += r4->unk122;
                    if (r4->unk120 >= r4->unk124)
                        r4->unk120 = r4->unk124;
                }
                else
                {
                    r4->unk120 -= r4->unk122;
                    if (r4->unk120 <= r4->unk124)
                        r4->unk120 = r4->unk124;
                }
            }
        }
        if (sb->unk0.base.unkC & 0x20)
        {
            sb->unk0.base.unkC &= ~0x20;
            sp00->unkE3 = 8;
            sp04->unkE3 = 8;
            r4->unk12E = 1;
            r4->unk137 = 1;
        }
    }
}

void sub_0810F13C(struct DarkMindForm2 *r5)
{
    struct DarkMindForm2 *r7 = r5, *r8 = r5;
    s32 r6, sb;
    struct Object12 *r1;

    if (r5->unk0.base.flags & 1)
        r6 = (r5->unk0.base.x >> 8) - 0x30 * (gUnk_08D5FE14[0x100] >> 6);
    else
        r6 = (r5->unk0.base.x >> 8) + 0x30 * (gUnk_08D5FE14[0x100] >> 6);
    sb = r5->unk0.base.y >> 8;
    r1 = Macro_081059A8_2(&r5->unk0, r6, sb, OBJ_UNKNOWN_D0, 0, r7->unk0.subtype);
    r1->unk0.base.parent = r5;
    r8->unkFC = r1;
    if (r5->unk0.base.flags & 1)
        r6 = (r5->unk0.base.x >> 8) + 0x30 * (gUnk_08D5FE14[0x100] >> 6);
    else
        r6 = (r5->unk0.base.x >> 8) - 0x30 * (gUnk_08D5FE14[0x100] >> 6);
    r1 = Macro_081059A8_2(&r5->unk0, r6, sb, OBJ_UNKNOWN_D0, 1, r7->unk0.subtype);
    r1->unk0.base.parent = r5;
    r8->unk100 = r1;
}

void *sub_0810F320(struct Object *r6, u8 r5)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object12), 0xFFF, 0x10, sub_081147F0);
    struct Object12 *r4 = TaskGetStructPtr(t, r4);

    InitObject(&r4->unk0, r6, r5);
    r4->unkDC = 0;
    r4->unkE2 = 0;
    r4->unkE3 = 0;
    r4->unkE4 = r4->unk0.unk80;
    r4->unkE1 = 0;
    r4->unkE0 = 0;
    r4->unkB4.unk0 = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags |= 0x100;
    r4->unk0.base.flags |= 0x2000000;
    r4->unk0.base.flags |= 0x4000000;
    r4->unk0.base.unkC |= 1;
    r4->unk0.base.unkC |= 4;
    r4->unk0.base.unk5C &= ~7;
    r4->unk0.base.unk5C |= 3;
    r4->unk0.base.unk5C |= 0x100000 | 0x8000 | 0x80 | 0x20;
    r4->unk0.unk91 = 0;
    r4->unk0.unk92 = 0;
    r4->unk0.unk93 = 0;
    r4->unk0.unk94 = 0;
    r4->unk0.unk95 = 0;
    r4->unk0.unk96 = 0;
    r4->unk0.unk97 = -0x16;
    r4->unk0.unk9E = 0;
    r4->unk0.unk7C = sub_08110F80;
    sub_0803E2B0(&r4->unk0.base, -4, -8, 4, 8);
    ObjectInitSprite(&r4->unk0);
    sub_08114528(r4);
    return r4;
}

void sub_0810F428(struct Object12 *ip)
{
    struct DarkMindForm2 *r2 = ip->unk0.base.parent;

    ip->unk0.base.flags |= 4;
    Macro_08105BF0(&ip->unk0, &r2->unk0);
    ip->unk0.base.counter += ip->unk0.unkA2;
    ip->unk0.base.counter &= 0x3FF;
}

void sub_0810F4A0(struct Object12 *r4)
{
    struct DarkMindForm2 *r5 = r4->unk0.base.parent;

    ObjectSetFunc(r4, 1, sub_0810F5A4);
    r4->unk0.unkA0 = 0x4800;
    r4->unk0.unkA2 = 0x20;
    if (r4->unk0.object->subtype1)
        r4->unk0.base.counter = 0;
    else
        r4->unk0.base.counter = 0x200;
    r4->unk0.unk9F = 3;
    r4->unk0.unk9E = 0;
    r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
    if (r5->unk126 == 3 || r5->unk126 == 4 || r5->unk126 == 5)
    {
        if ((r5->unkFC->unk0.unk78 == sub_0810F5A4 || r5->unk100->unk0.unk78 == sub_0810F5A4)
            && Rand16() & 1)
        {
            r5->unkFC->unk0.unk9E = 0x40;
            r5->unkFC->unk0.unk9F = 2;
            r5->unk100->unk0.unk9E = r5->unkFC->unk0.unk9E;
            r5->unk100->unk0.unk9F = r5->unkFC->unk0.unk9F;
        }
    }
    r4->unk0.unk91 = 0;
    r4->unk0.unk92 = 0;
    r4->unk0.unk93 = 0;
    r4->unk0.unk94 = 0;
    r4->unk0.unk95 = 0;
    r4->unk0.unk96 = 0;
    r4->unk0.unk97 = -0x16;
}

void sub_0810F5A4(struct Object12 *r7)
{
    struct DarkMindForm2 *r8 = r7->unk0.base.parent, *r5 = r8;
    s16 cnt;

    r7->unk0.base.flags |= 4;
    if (r8->unk12E) return;
    if (r7->unk0.object->subtype1
        && !(gUnk_0203AD40 & 7))
        PlaySfx(&r7->unk0.base, 429);
    Macro_08105BF0(&r7->unk0, &r5->unk0);
    cnt = r7->unk0.base.counter;
    r7->unk0.base.counter += r7->unk0.unkA2;
    r7->unk0.base.counter &= 0x3FF;
    if (r7->unk0.object->subtype1)
    {
        if (r7->unk0.base.counter < cnt)
        {
            if (r7->unk0.unk9F)
                --r7->unk0.unk9F;
        }
    }
    else
    {
        if (r7->unk0.base.counter - 0x200 >= 0 && cnt - 0x200 < 0)
        {
            if (r7->unk0.unk9F)
                --r7->unk0.unk9F;
        }
    }
    if (r7->unk0.unk9F) return;
    if (!r7->unk0.unk9E)
        sub_081143F0(r7);
    else
    {
        --r7->unk0.unk9E;
        if (abs(r7->unk0.kirby3->base.base.y - r7->unk0.base.y) < 0x1000)
        {
            sub_081143F0(r8->unkFC);
            sub_081143F0(r8->unk100);
        }
    }
}

void sub_0810F77C(struct Object12 *r4)
{
    struct DarkMindForm2 *r5 = r4->unk0.base.parent;

    ObjectSetFunc(r4, 1, sub_0810F818);
    r4->unk0.unkA0 = 0x2000;
    r4->unk0.unkA2 = 0x18;
    r4->unk0.base.counter = 0;
    r4->unk0.unk85 = 0;
    r4->unk0.unk9F = 6;
    if (r4->unk0.object->subtype1)
        r4->unk0.unk9E = 1;
    else
        r4->unk0.unk9E = 0;
    if (r5->unk128 == 5)
    {
        r4->unk0.unk9E ^= 1;
        r4->unk0.unk85 = 1;
    }
    r4->unk0.unk91 = 0;
    r4->unk0.unk92 = 0;
    r4->unk0.unk93 = 0;
    r4->unk0.unk94 = 0;
    r4->unk0.unk95 = 0;
    r4->unk0.unk96 = 0;
    r4->unk0.unk97 = -0x16;
}

void sub_0810F818(struct Object12 *r4)
{
    struct DarkMindForm2 *r6 = r4->unk0.base.parent;
    s16 a, b;
    s16 cnt;

    r4->unk0.base.flags |= 4;
    if (r6->unk12E) return;
    if (r4->unk0.object->subtype1
        && !(gUnk_0203AD40 & 0xF))
        PlaySfx(&r4->unk0.base, 429);
    if (r4->unk0.object->subtype1)
        r4->unk0.base.x = r6->unk0.base.x + 0x30 * (gUnk_08D5FE14[0x100] >> 6);
    else
        r4->unk0.base.x = r6->unk0.base.x - 0x30 * (gUnk_08D5FE14[0x100] >> 6);
    r4->unk0.base.y = r6->unk0.base.y;
    a = (r4->unk0.unkA0 * (gUnk_08D5FE14[r4->unk0.base.counter + 0x100] >> 6) * 0x100) >> 16;
    b = (r4->unk0.unkA0 * (gUnk_08D5FE14[r4->unk0.base.counter] >> 6) * 0x100) >> 16;
    if (r4->unk0.unk9E)
        r4->unk0.base.x += r4->unk0.unkA0 - a;
    else
        r4->unk0.base.x += a - r4->unk0.unkA0;
    if (r4->unk0.unk9F)
        r4->unk0.base.y -= b;
    else
        r4->unk0.base.y += b;
    cnt = r4->unk0.base.counter;
    r4->unk0.base.counter += r4->unk0.unkA2;
    r4->unk0.base.counter &= 0x3FF;
    if (r4->unk0.base.counter < cnt)
    {
        --r4->unk0.unk9F;
        r4->unk0.unk9E ^= 1;
    }
    if (!r4->unk0.unk9F)
        sub_081143F0(r4);
}

void sub_0810F9D4(struct Object12 *r4)
{
    struct DarkMindForm2 *r5 = r4->unk0.base.parent;

    ObjectSetFunc(r4, 3, sub_081144A0);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags &= ~0x400;
    r4->unk0.base.flags &= ~2;
    switch (r4->unkE1)
    {
    case 0:
        r4->unk0.base.x = r5->unk0.base.x;
        r4->unk0.base.y = r5->unk0.base.y;
        if (r4->unk0.object->subtype1)
            r4->unk0.base.counter = 0;
        else
            r4->unk0.base.counter = 0x200;
        r4->unk0.unkA0 = 0x4800;
        r4->unk0.base.x += r4->unk0.unkA0 * (gUnk_08D5FE14[r4->unk0.base.counter + 0x100] >> 6) >> 8;
        r4->unk0.base.y += r4->unk0.unkA0 * (gUnk_08D5FE14[r4->unk0.base.counter] >> 6) >> 8;
        break;
    case 1:
        if (r4->unk0.object->subtype1)
            r4->unk0.base.x = r5->unk0.base.x + 0x30 * (gUnk_08D5FE14[0x100] >> 6);
        else
            r4->unk0.base.x = r5->unk0.base.x - 0x30 * (gUnk_08D5FE14[0x100] >> 6);
        r4->unk0.base.y = r5->unk0.base.y;
        break;
    }
    r4->unk0.base.y -= 0x6E00;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = -0xA00;
    sub_081146B0(r4);
    PlaySfx(&r4->unk0.base, 424);
}

void sub_0810FB68(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_0810FC44);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    if (r4->unk0.object->subtype1)
        r4->unk0.base.xspeed = 0;
    r4->unk0.base.counter = 12;
    PlaySfx(&r4->unk0.base, 438);
    r4->unk0.unk91 = -3;
    r4->unk0.unk92 = -3;
    r4->unk0.unk93 = -3;
    r4->unk0.unk94 = -3;
    r4->unk0.unk95 = -3;
    r4->unk0.unk96 = -3;
    r4->unk0.unk97 = -0x16;
}

void sub_0810FC44(struct Object12 *r3)
{
    struct DarkMindForm2 *ip = r3->unk0.base.parent;
    struct Object12 *r5 = r3;
    struct Object12 *r6 = ip->unkFC, *r7 = ip->unk100;

    r3->unk0.base.flags |= 4;
    if (ip->unk12E) return;
    if (r3->unk0.object->subtype1)
        r3->unk0.base.flags |= 1;
    if (r3->unk0.base.flags & 1)
    {
        r3->unk0.base.xspeed += 0x30;
        if (r3->unk0.base.xspeed < -0x600)
            r3->unk0.base.xspeed = -0x600;
        else if (r3->unk0.base.xspeed > 0x600)
            r3->unk0.base.xspeed = 0x600;
    }
    else
    {
        r3->unk0.base.xspeed -= 0x30;
        if (r3->unk0.base.xspeed > 0x600)
            r3->unk0.base.xspeed = 0x600;
        else if (r3->unk0.base.xspeed < -0x600)
            r3->unk0.base.xspeed = -0x600;
    }
    r3->unk0.base.flags &= ~1;
    if ((r3->unk0.base.x < -0xC00 && r3->unk0.base.xspeed < 0)
        || (r3->unk0.base.x > 0x10A00 && r3->unk0.base.xspeed > 0))
    {
        if (r3->unk0.base.x < -0xC00)
            r3->unk0.base.x = -0xC00;
        if (r3->unk0.base.x > 0x10A00)
            r3->unk0.base.x = 0x10A00;
        r3->unk0.base.y = 0x3000;
        r3->unk0.base.xspeed = 0;
        r5->unkE0 = 1;
        if (r6->unkE0 && r7->unkE0
            && !--r3->unk0.base.counter)
        {
            if (ip->unk126 == 5)
                sub_081106F4(r3);
            else if (r3->unk0.object->subtype1 == ip->unk127)
            {
                if (ip->unk126 == 4)
                    sub_081103C8(r3);
                else
                    sub_0810FDA4(r3);
            }
            else
            {
                sub_08110E60(r3);
            }
        }
    }
}

void sub_0810FDA4(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, DarkMindForm2CreateRandomEnemies);
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.xspeed = 0x800;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.y = 0x3000;
    if (r4->unk0.object->subtype1)
        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
    r4->unk0.base.counter = 36;
    PlaySfx(&r4->unk0.base, 438);
    r4->unk0.unk91 = -3;
    r4->unk0.unk92 = -3;
    r4->unk0.unk93 = -3;
    r4->unk0.unk94 = -3;
    r4->unk0.unk95 = -3;
    r4->unk0.unk96 = -3;
    r4->unk0.unk97 = -0x16;
}

void DarkMindForm2CreateRandomEnemies(struct Object12 *r5)
{
    struct DarkMindForm2 *sl = r5->unk0.base.parent;
    u8 sb = 0;
    u8 r4;
    struct Object2 *obj; // required for matching

    r5->unk0.base.flags |= 4;
    if (sl->unk12E) return;
    if (r5->unk0.base.counter == 10)
    {
        r4 = RandLessThan10();
        if (gDarkMindForm2Enemy3Types[r4] == OBJ_WADDLE_DOO && (Rand16() & 1))
            sb = 1;
        if (gDarkMindForm2Enemy3Types[r4] == OBJ_SIR_KIBBLE
            || gDarkMindForm2Enemy3Types[r4] == OBJ_BOXIN
            || gDarkMindForm2Enemy3Types[r4] == OBJ_WHEELIE
            || gDarkMindForm2Enemy3Types[r4] == OBJ_FOLEY_1)
            sb = 1;
        obj = Macro_081059A8_2(&r5->unk0, r5->unk0.base.x >> 8, r5->unk0.base.y >> 8, gDarkMindForm2Enemy3Types[r4], sb, 0);
        sl->enemy3 = obj;
        PlaySfx(&r5->unk0.base, 359);
    }
    if (r5->unk0.base.counter == 16)
    {
        r4 = RandLessThan10();
        if (gDarkMindForm2Enemy2Types[r4] == OBJ_SIR_KIBBLE
            || gDarkMindForm2Enemy2Types[r4] == OBJ_BOXIN
            || gDarkMindForm2Enemy2Types[r4] == OBJ_WHEELIE
            || gDarkMindForm2Enemy2Types[r4] == OBJ_FOLEY_1)
            sb = 1;
        obj = Macro_081059A8_2(&r5->unk0, r5->unk0.base.x >> 8, r5->unk0.base.y >> 8, gDarkMindForm2Enemy2Types[r4], sb, 0);
        sl->enemy2 = obj;
        PlaySfx(&r5->unk0.base, 359);
    }
    if (r5->unk0.base.counter == 22)
    {
        r4 = RandLessThan10();
        if (gDarkMindForm2Enemy1Types[r4] == OBJ_WHEELIE && !(Rand16() & 3))
            r4 = 10;
        if (gDarkMindForm2Enemy1Types[r4] == OBJ_SIR_KIBBLE
            || gDarkMindForm2Enemy1Types[r4] == OBJ_BOXIN
            || gDarkMindForm2Enemy1Types[r4] == OBJ_WHEELIE
            || gDarkMindForm2Enemy1Types[r4] == OBJ_FOLEY_1)
            sb = 1;
        obj = Macro_081059A8_2(&r5->unk0, r5->unk0.base.x >> 8, r5->unk0.base.y >> 8, gDarkMindForm2Enemy1Types[r4], sb, 0);
        sl->enemy1 = obj;
        PlaySfx(&r5->unk0.base, 359);
    }
    if (!--r5->unk0.base.counter)
    {
        sl->unk129 = 0;
        sub_08110E60(r5);
    }
}

void sub_081103C8(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_081104C8);
    r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
    if (r4->unk0.base.x > r4->unk0.kirby3->base.base.x)
        r4->unk0.base.flags |= 1;
    else
        r4->unk0.base.flags &= ~1;
    r4->unk0.base.y = r4->unk0.kirby3->base.base.y;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.counter = 2;
    PlaySfx(&r4->unk0.base, 438);
    r4->unk0.unk91 = -3;
    r4->unk0.unk92 = -3;
    r4->unk0.unk93 = -3;
    r4->unk0.unk94 = -3;
    r4->unk0.unk95 = -3;
    r4->unk0.unk96 = -3;
    r4->unk0.unk97 = -0x16;
}

void sub_081104C8(struct Object12 *r4)
{
    struct DarkMindForm2 *r0 = r4->unk0.base.parent;

    r4->unk0.base.flags |= 4;
    if (r0->unk12E) return;
    if (r4->unk0.base.flags & 1)
    {
        r4->unk0.base.xspeed -= 40;
        if (r4->unk0.base.xspeed < -0x600)
            r4->unk0.base.xspeed = -0x600;
        else if (r4->unk0.base.xspeed > 0x600)
            r4->unk0.base.xspeed = 0x600;
    }
    else
    {
        r4->unk0.base.xspeed += 40;
        if (r4->unk0.base.xspeed > 0x600)
            r4->unk0.base.xspeed = 0x600;
        else if (r4->unk0.base.xspeed < -0x600)
            r4->unk0.base.xspeed = -0x600;
    }
    if (r4->unk0.base.flags & 1)
    {
        if (r4->unk0.base.x >= -0xC00) return;
        r4->unk0.base.x = -0xC00;
        r4->unk0.base.xspeed = 0;
        if (!--r4->unk0.base.counter)
            sub_0810FDA4(r4);
        else
        {
            r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
            r4->unk0.base.y = r4->unk0.kirby3->base.base.y;
            if (r4->unk0.base.x > r4->unk0.kirby3->base.base.x)
                r4->unk0.base.flags |= 1;
            else
                r4->unk0.base.flags &= ~1;
            PlaySfx(&r4->unk0.base, 438);
        }
    }
    else
    {
        if (r4->unk0.base.x <= 0x10A00) return;
        r4->unk0.base.x = 0x10A00;
        r4->unk0.base.xspeed = 0;
        if (!--r4->unk0.base.counter)
            sub_0810FDA4(r4);
        else
        {
            r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
            r4->unk0.base.y = r4->unk0.kirby3->base.base.y;
            if (r4->unk0.base.x > r4->unk0.kirby3->base.base.x)
                r4->unk0.base.flags |= 1;
            else
                r4->unk0.base.flags &= ~1;
            PlaySfx(&r4->unk0.base, 438);
        }
    }
}

void sub_081106F4(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_0811076C);
    if (r4->unk0.base.x > 0x7E00)
        r4->unk0.base.flags |= 1;
    else
        r4->unk0.base.flags &= ~1;
    r4->unk0.base.y = 0x8800;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.counter = 2;
    r4->unk0.unk9F = 40;
    r4->unk0.unk91 = -3;
    r4->unk0.unk92 = -3;
    r4->unk0.unk93 = -3;
    r4->unk0.unk94 = -3;
    r4->unk0.unk95 = -3;
    r4->unk0.unk96 = -3;
    r4->unk0.unk97 = -0x16;
}

void sub_0811076C(struct Object12 *r4)
{
    struct DarkMindForm2 *r7 = r4->unk0.base.parent;

    r4->unk0.base.flags |= 4;
    if (r7->unk12E) return;
    if (r4->unk0.base.counter == 1)
    {
        if (r4->unk0.base.flags & 1)
        {
            r4->unk0.base.xspeed -= 0x40;
            if (r4->unk0.base.xspeed < -0x600)
                r4->unk0.base.xspeed = -0x600;
            else if (r4->unk0.base.xspeed > 0x600)
                r4->unk0.base.xspeed = 0x600;
        }
        else
        {
            r4->unk0.base.xspeed += 0x40;
            if (r4->unk0.base.xspeed > 0x600)
                r4->unk0.base.xspeed = 0x600;
            else if (r4->unk0.base.xspeed < -0x600)
                r4->unk0.base.xspeed = -0x600;
        }
        r4->unk0.base.yspeed -= 0x18;
        if (r4->unk0.base.yspeed < -0x1D0)
            r4->unk0.base.yspeed = -0x1D0;
    }
    else
    {
        if (r4->unk0.base.flags & 1)
        {
            r4->unk0.base.xspeed -= 0x20;
            if (r4->unk0.base.xspeed < -0x500)
                r4->unk0.base.xspeed = -0x500;
            else if (r4->unk0.base.xspeed > 0x500)
                r4->unk0.base.xspeed = 0x500;
        }
        else
        {
            r4->unk0.base.xspeed += 0x20;
            if (r4->unk0.base.xspeed > 0x500)
                r4->unk0.base.xspeed = 0x500;
            else if (r4->unk0.base.xspeed < -0x500)
                r4->unk0.base.xspeed = -0x500;
        }
        if (!r4->unk0.unk9F)
        {
            r4->unk0.base.yspeed += 0x18;
            if (r4->unk0.base.yspeed > 0x400)
                r4->unk0.base.yspeed = 0x400;
        }
        else if (!--r4->unk0.unk9F)
            PlaySfx(&r4->unk0.base , 438);
    }
    if (r4->unk0.base.flags & 1)
    {
        if (r4->unk0.base.x < -0xC00)
        {
            r4->unk0.base.x = -0xC00;
            r4->unk0.base.xspeed = 0;
            if (!--r4->unk0.base.counter)
            {
                if (r4->unk0.object->subtype1 == r7->unk127)
                    sub_081109AC(r4);
                else
                    sub_0810FDA4(r4);
                return;
            }
            r4->unk0.base.y = 0x8800;
            r4->unk0.base.flags ^= 1;
            r4->unk0.base.xspeed = 0;
        }
    }
    else
    {
        if (r4->unk0.base.x > 0x10A00)
        {
            r4->unk0.base.x = 0x10A00;
            r4->unk0.base.xspeed = 0;
            if (!--r4->unk0.base.counter)
            {
                if (r4->unk0.object->subtype1 == r7->unk127)
                    sub_081109AC(r4);
                else
                    sub_0810FDA4(r4);
                return;
            }
            r4->unk0.base.y = 0x8800;
            r4->unk0.base.flags ^= 1;
            r4->unk0.base.xspeed = 0;
        }
    }
}

void sub_081109AC(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_081145EC);
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.xspeed = 0x800;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.y = 0x3000;
    if (r4->unk0.object->subtype1)
        r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
    r4->unk0.base.counter = 36;
    r4->unk0.unk91 = -3;
    r4->unk0.unk92 = -3;
    r4->unk0.unk93 = -3;
    r4->unk0.unk94 = -3;
    r4->unk0.unk95 = -3;
    r4->unk0.unk96 = -3;
    r4->unk0.unk97 = -0x16;
}

void sub_08110A20(struct Object12 *r4)
{
    struct DarkMindForm2 *r5 = r4->unk0.base.parent;
    u32 r0, r1;
    s32 r3, r6;

    ObjectSetFunc(r4, 0, sub_08110B64);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    // dead code
    r1 = r5->unk12D;
    if ((r5->unk127 && r5->unk126 == 1)
        || (!r5->unk127 && r5->unk126 == 2))
        r1 &= 1;
    r1 = !!r1;
    switch (r5->unkE0[r5->unk12D] & 0xF)
    {
    case 0:
        r3 = 0x1800;
        r6 = 0x2C00;
        
        break;
    case 1:
        r3 = 0x1800;
        r6 = 0x8400;
        break;
    case 2:
        r3 = 0xE800;
        r6 = 0x2C00;
        break;
    default:
        r3 = 0xE800;
        r6 = 0x8400;
        break;
    }
    r4->unk0.unk85 = r5->unkE0[r5->unk12D] >> 4;
    if ((r5->unk127 && r5->unk126 == 1)
        || (!r5->unk127 && r5->unk126 == 2))
        r3 = 0x10000 - r3;
    --r5->unk12D;
    r1 = (r3 - r4->unk0.base.x) >> 5;
    r4->unk0.base.xspeed = r1;
    r4->unk0.unkA0 = r3 >> 8;
    r0 = (r4->unk0.base.y - r6) >> 5;
#ifndef NONMATCHING
    asm("":"=r"(r4));
#endif
    r4->unk0.base.yspeed = r0;
    r4->unk0.unkA2 = r6 >> 8;
    r4->unk0.base.flags |= 0x200;
    r4->unk0.unk91 = -3;
    r4->unk0.unk92 = -3;
    r4->unk0.unk93 = -3;
    r4->unk0.unk94 = -3;
    r4->unk0.unk95 = -3;
    r4->unk0.unk96 = -3;
    r4->unk0.unk97 = -0x16;
}

void sub_08110B64(struct Object12 *r3)
{
    struct DarkMindForm2 *r0 = r3->unk0.base.parent;
    
    r3->unk0.base.flags |= 4;
    if (r0->unk12E) return;
    if (r3->unk0.base.xspeed)
    {
        if (r3->unk0.base.xspeed > 0)
        {
            if (r3->unk0.base.x >> 8 > r3->unk0.unkA0)
            {
                r3->unk0.base.x = r3->unk0.unkA0 * 0x100;
                r3->unk0.base.xspeed = 0;
            }
        }
        else
        {
            if (r3->unk0.base.x >> 8 < r3->unk0.unkA0)
            {
                r3->unk0.base.x = r3->unk0.unkA0 * 0x100;
                r3->unk0.base.xspeed = 0;
            }
        }
    }
    if (r3->unk0.base.yspeed)
    {
        if (r3->unk0.base.yspeed > 0)
        {
            if (r3->unk0.base.y >> 8 < r3->unk0.unkA2)
            {
                r3->unk0.base.y = r3->unk0.unkA2 * 0x100;
                r3->unk0.base.yspeed = 0;
            }
        }
        else
        {
            if (r3->unk0.base.y >> 8 > r3->unk0.unkA2)
            {
                r3->unk0.base.y = r3->unk0.unkA2 * 0x100;
                r3->unk0.base.yspeed = 0;
            }
        }
    }
    if (!r3->unk0.base.xspeed && !r3->unk0.base.yspeed)
    {
        r3->unk0.base.flags &= ~0x200;
        sub_0811461C(r3);
    }
}

void sub_08110C10(struct Object12 *r4)
{
    struct DarkMindForm2 *r2 = r4->unk0.base.parent;

    r4->unk0.base.flags |= 4;
    if (sub_0803925C(&r4->unk0.base, &r2->laser->base))
    {
        r2->laser->unk85 = r4->unk0.unk85;
        sub_08111534(r2->laser, r4);
        sub_08114674(r4);
    }
    else if (!--r4->unk0.base.counter)
        sub_08110E60(r4);
}

void sub_08110C68(struct Object12 *r4)
{
    struct DarkMindForm2 *r5 = r4->unk0.base.parent;
    u8 r2; // required for matching

    ObjectSetFunc(r4, 3, sub_08110DEC);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags &= ~0x400;
    r4->unk0.base.flags &= ~2;
    r4->unk0.base.flags ^= 1;
    r2 = r5->unk12D;
    switch (r5->unkE0[r2] & 0xF)
    {
    case 0:
        r4->unk0.base.x = 0x1800;
        r4->unk0.base.y = 0x2C00;
        break;
    case 1:
        r4->unk0.base.x = 0x1800;
        r4->unk0.base.y = 0x8400;
        break;
    case 2:
        r4->unk0.base.x = 0xE800;
        r4->unk0.base.y = 0x2C00;
        break;
    case 3:
        r4->unk0.base.x = 0xE800;
        r4->unk0.base.y = 0x8400;
        break;
    }
    r4->unk0.unk85 = r5->unkE0[r2] >> 4;
    if ((r5->unk127 && r5->unk126 == 1)
        || (!r5->unk127 && r5->unk126 == 2))
        r4->unk0.base.x = 0x10000 - r4->unk0.base.x;
    --r5->unk12D;
    r4->unk0.base.y -= 0x6E00;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = -0xA00;
    r4->unk0.base.counter = 0x80;
    PlaySfx(&r4->unk0.base, 424);
}

void sub_08110DEC(struct Object12 *r4)
{
    if (r4->unk0.base.flags & 2)
    {
        r4->unk0.base.flags &= ~0x200;
        r4->unk0.base.yspeed = 0;
        ObjectSetFunc(r4, 0, sub_08110C10);
        if (r4->unk0.base.x > 0x8000)
            r4->unk0.base.flags |= 1;
        else
            r4->unk0.base.flags &= ~1;
        if (r4->unk0.base.y < 0x5800)
            r4->unk0.unk83 = 6;
        else
            r4->unk0.unk83 = 4;
        r4->unk0.base.counter = 0x180;
    }
}

void sub_08110E60(struct Object12 *r4)
{
    ObjectSetFunc(r4, 2, sub_081144EC);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0xA00;
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags &= ~0x400;
    r4->unk0.base.flags &= ~2;
    PlaySfx(&r4->unk0.base, 423);
}

void sub_08110F28(struct Object12 *r2)
{
    r2->unk0.unk78 = sub_08114578;
    r2->unk0.unk83 = 8;
    r2->unk0.base.xspeed = 0;
    r2->unk0.base.yspeed = 0;
    r2->unk0.base.flags |= 0x200;
    r2->unk0.base.flags &= ~2;
    r2->unk0.base.counter = 0x40;
    r2->unk0.unk91 = -3;
    r2->unk0.unk92 = -3;
    r2->unk0.unk93 = -3;
    r2->unk0.unk94 = -3;
    r2->unk0.unk95 = -3;
    r2->unk0.unk96 = -3;
    r2->unk0.unk97 = -0x16;
}

void sub_08110F80(struct Object12 *r7)
{
    struct DarkMindForm2 *r5 = r7->unk0.base.parent, *sb = r5;
    struct Object12 *r8 = r7;

    if ((r5->unk0.base.flags & 0x1000 || r5->unk0.unk80 <= 0) && !(r7->unk0.base.unkC & 0x400))
    {
        r7->unk0.unk80 = 0;
        r7->unk0.base.flags |= 0x1000;
        sub_0809DA30(&r7->unk0);
    }
    if (!Macro_0810B1F4(&r7->unk0.base))
    {
        r8->unkE4 = r7->unk0.unk80;
        r7->unk0.unk80 = 9999;
        if (r8->unkE4 != 9999)
        {
            PlaySfx(&r7->unk0.base, 432);
            r8->unkE3 = 8;
            r5->unk12E = 1;
            r5->unk137 = 0;
            r5->unk130 = 60;
            r5->unk12F += r7->unk0.unk80 - r8->unkE4;
            sb->unk0.unk80 -= r7->unk0.unk80 - r8->unkE4;
            sub_08034E14(&sb->unk0);
            if (sb->unk0.unk83 == 2 && r5->unk12F >= 5 * gUnk_0203AD30 + 5)
            {
                sub_08110F28(r7);
                if (r7 == r5->unkFC)
                    sub_08110E60(r5->unk100);
                else
                    sub_08110E60(r5->unkFC);
                r5->unk129 = 0;
                r5->unk126 = 0;
                r5->unk12C = 0;
                r5->unk12D = 0;
                r5->unk127 = 0;
                sb->unk0.unk83 = 4;
                return;
            }
        }
        if (r8->unkE3)
        {
            sb->unk0.base.unk54 = gUnk_08357384[r8->unkE3 - 1];
            r5->unkFC->unk0.base.unk54 = sb->unk0.base.unk54;
            r5->unk100->unk0.base.unk54 = sb->unk0.base.unk54;
            if (!--r8->unkE3)
                r5->unk12E = 0;
        }
        else
            r5->unk12E = 0;
    }
}

void sub_081111C4(struct Object12 *r6)
{
    struct Sprite *r5 = &r6->unkB4;

    if (!r5->unk0) return;
    switch (r6->unk0.unk83)
    {
    case 0 ... 1:
    case 4 ... 7:
        r5->unk1A = 0x19;
        break;
    case 2:
        r5->unk1A = 0x1A;
        break;
    case 3:
        r5->unk1A = 0x1B;
        break;
    default:
        sub_08157190(r5->unk0);
        r5->unk0 = 0;
        return;
    }
    if (r6->unk0.base.flags & 0x400)
    {
        if (r5->unk0)
        {
            sub_08157190(r5->unk0);
            r5->unk0 = 0;
            return;
        }
    }
    else
    {
        if (r6->unk0.base.flags & 1)
            r5->unk8 &= ~0x400;
        else
            r5->unk8 |= 0x400;
        if (!(r6->unk0.base.flags & 8) && !sub_08155128(r5))
        {
            r5->unk1B = 0xFF;
            sub_08155128(r5);
        }
        r5->unk10 = (r6->unk0.base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        r5->unk12 = (r6->unk0.base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        if (!(r6->unk0.base.flags & 0x400)
            && gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r6->unk0.base.unk60__42)
            Macro_08106BE0(&r6->unk0.base, r5);
    }
}

void sub_08111314(struct DarkMindForm2 *r5)
{
    struct DarkMindForm2 *sl, *r6;
    s32 r8, sb;
    struct Object2 *laser; // required for matching

    ++r5; --r5;
    sl = r5;
    r6 = r5;
    if (r6->unk0.base.flags & 1) // doesn't matter
        r8 = r6->unk0.base.x >> 8;
    else
        r8 = r6->unk0.base.x >> 8;
    sb = r5->unk0.base.y >> 8;
    laser = Macro_081059A8_2(&r5->unk0, r8, sb, OBJ_DARK_MIND_LASER, 0, sl->unk0.subtype);
    laser->base.parent = r5;
    r6->laser = laser;
    sub_08113BAC(laser);
}

void *sub_081113EC(struct Object *r6, u8 r5)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r0, *r4 = TaskGetStructPtr(t, r0);

    InitObject(r4, r6, r5);
    r4->unk85 = 0;
    r4->base.flags |= 0x40;
    r4->base.flags |= 0x100;
    r4->base.flags |= 0x8000;
    r4->base.unkC |= 1;
    r4->base.unkC |= 4;
    r4->base.flags |= 0x10000;
    r4->base.unk5C &= ~7;
    r4->base.unk5C |= 7;
    r4->base.unk5C |= 0x100000 | 0x8000 | 0x80 | 0x20;
    r4->unk9E = 0;
    r4->unk7C = sub_0809F840;
    sub_0803E2B0(&r4->base, -14, -2, 14, 2);
    r4->base.unk10.unk14 = 0x640;
    ObjectInitSprite(r4);
    PlaySfx(&r4->base, 436);
    return r4;
}

void sub_08111534(struct Object2 *r3, struct Object12 *r1)
{
    r3->base.xspeed = 0;
    r3->base.yspeed = 0;
    r3->base.x = r1->unk0.base.x;
    r3->base.y = r1->unk0.base.y;
    r3->unk83 = 3;
    r3->unk78 = sub_08114714;
    r3->base.counter = 18;
    r3->base.unk10.unk14 = 0x480;
    PlaySfx(&r3->base, 437);
}

void sub_081115F4(struct Object2 *r5)
{
    s8 r;
    u8 r1, r0;

    switch (r5->unk85)
    {
    case 1:
        r5->base.xspeed = 0;
        r5->base.yspeed = 0x800;
        r5->unk83 = 1;
        sub_0803E2B0(&r5->base, -2, -14, 2, 14);
        break;
    case 2:
        r5->base.xspeed = 0x760;
        r5->base.yspeed = 0x308;
        r5->unk83 = 2;
        sub_0803E2B0(&r5->base, -13, -1, 13, 1);
        break;
    case 0:
        r5->base.xspeed = 0x800;
        r5->base.yspeed = 0;
        r5->unk83 = 0;
        sub_0803E2B0(&r5->base, -14, -2, 14, 2);
        break;
    case 3:
        r5->kirby3 = sub_0803D46C(r5);
        r = Rand16() % 4;
        if (r5->kirby3->base.base.flags & 0x60)
        {
            r1 = 1;
            r0 = 3;
        }
        else
        {
            r1 = 3;
            r0 = 1;
        }
        if ((r -= r0) < 0)
        {
            r5->base.xspeed = 0x760;
            r5->base.yspeed = 0x308;
            r5->unk83 = 2;
            sub_0803E2B0(&r5->base, -13, -1, 13, 1);
        }
        else if ((r -= r1) < 0)
        {
            r5->base.xspeed = 0x800;
            r5->base.yspeed = 0;
            r5->unk83 = 0;
            sub_0803E2B0(&r5->base, -14, -2, 14, 2);
        }
        break;
    }
    if (r5->base.y < 0x5800)
        r5->base.yspeed = -r5->base.yspeed;
    if (r5->base.x > 0x8000)
    {
        r5->base.xspeed = -r5->base.xspeed;
        if (r5->base.yspeed < 0)
            r5->base.flags &= ~1;
        else
            r5->base.flags |= 1;
    }
    else
    {
        if (r5->base.yspeed < 0)
            r5->base.flags |= 1;
        else
            r5->base.flags &= ~1;
    }
    r5->unk78 = sub_08114708;
    r5->base.counter = 18;
    PlaySfx(&r5->base, 167);
}

void DarkMindForm2CreateLaserShower(struct DarkMindForm2 *r5)
{
    struct DarkMindForm2 *r6 = r5, *sb = r5;
    s32 r8 = r5->unk0.base.x >> 8;
    s32 ip = r5->unk0.base.y >> 8;
    struct Object2 *laserShower = Macro_081059A8_2(&r6->unk0, r8, ip, OBJ_DARK_MIND_LASER_SHOWER, 0, r5->unk0.subtype);

    laserShower->base.parent = r6;
    sb->laserShower = laserShower;
    sub_081122A0(laserShower, 0);
    sub_081122A0(laserShower, 1);
    sub_081126C0(r6, 0);
    sub_081126C0(r6, 1);
    PlaySfx(&r5->unk0.base, 434);
}

void *sub_08111984(struct Object *r6, u8 r5)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r0, *r4 = TaskGetStructPtr(t, r0);

    InitObject(r4, r6, r5);
    r4->unk85 = 0;
    r4->base.unk63 = 2;
    r4->base.flags |= 0x40;
    r4->base.flags |= 0x100;
    r4->base.flags |= 0x8000;
    r4->base.flags |= 0x200;
    r4->base.unkC |= 1;
    r4->base.unkC |= 4;
    r4->base.flags |= 0x10000;
    r4->base.unk5C &= ~7;
    r4->base.unk5C |= 7;
    r4->base.unk5C |= 0x100000 | 0x8000 | 0x80 | 0x20;
    r4->unk9E = 0;
    r4->unk7C = sub_0809F840;
    sub_0803E2B0(&r4->base, -24, 8, 24, 0x80);
    r4->base.unk10.unk14 = 0x5C0;
    ObjectInitSprite(r4);
    sub_08113BEC(r4);
    sub_08111B88(r4);
    PlaySfx(&r4->base, 435);
    return r4;
}

void sub_08111AEC(struct Object2 *r4)
{
    struct DarkMindForm2 *r6 = r4->base.parent;

    r4->base.x = r6->unk0.base.x;
    r4->base.y = r6->unk0.base.y;
    switch (r4->unk83)
    {
    case 0:
        if (!r4->unk83 && r4->base.flags & 2)
        {
            r4->unk83 = 1;
            r4->base.flags &= ~0x200;
            sub_0806FE64(5, r4);
        }
        break;
    case 1:
        r4->base.flags |= 4;
        if (!(r4->base.counter & 0x3F))
        {
            sub_080A8C28(&r6->unk0, 0x2C, 0x8D);
            r6->unk0.base.flags ^= 1;
            sub_080A8C28(&r6->unk0, 0x2C, 0x8D);
            r6->unk0.base.flags ^= 1;
        }
        ++r4->base.counter;
        break;
    case 2:
        if (r4->base.flags & 2)
            r4->base.flags |= 0x1000;
        break;
    }
}

void sub_08111B88(struct Object2 *r5)
{
    struct Task *t = TaskCreate(sub_08111C5C, sizeof(struct Object4), 0x1001, 0x10, sub_0803DCCC);
    struct Object4 *r4 = TaskGetStructPtr(t, r4);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->base.x;
    r4->unk38 = r5->base.y;
    r4->unk44 = r5;
    r4->unk60__42 = r5->base.unk60__42;
    sub_080709F8(r4, &r4->unkC, 0xC, 0x399, 0x26, 0x17);
    r4->unkC.unk1F = 0;
    Macro_081050E8(r4, &r4->unkC, 0x39A, TRUE);
}

void sub_08111C5C(void)
{
    struct Sprite spr;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r7 = r5->unk44, *r3;

    if (r5->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (r7->base.flags & 0x1000)
        r5->flags |= 0x1000;
    else
    {
        r5->flags |= 4;
        Macro_08107BA8_4(r5, &r5->unkC, &spr, 12, &r5->unkC);
        Macro_081050E8(r5, &r5->unkC, 0x39A, !r5->unkC.unk1F);
        r5->unk60__42 = r7->base.unk60__42;
        r5->unk34 = r7->base.x;
        if (r7->unk83 != 1)
            r5->flags |= 0x400;
        else
            r5->flags &= ~0x400;
        /* The following two statements appear several times in the file and I can match the other
         * ones w/o goto. However, identical strategies will cause regalloc issue in this one so
         * I'm not going to change any of them since they were likely written in the same way. */
        r3 = r5->unk44;
        if (r3)
        {
            if (r3->base.unk0 && r3->base.flags & 0x1000)
            {
                r5->unk44 = NULL;
                r3 = NULL;
            }
            if (!r3)
                goto _08111E70;
            if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000))
            {
                sub_0803DBC8(r5);
                return;
            }
        }
        else
        {
        _08111E70:
            KirbySomething(r5);
        }
        sub_0806FAC8(r5);
    }
}

struct Object4 *sub_08111EF4(struct DarkMindForm2 *r6)
{
    struct DarkMindForm2 *r5 = r6;
    struct Task *t = TaskCreate(sub_08112024, sizeof(struct Object4), 0x3501, 0x10, sub_0803DCCC);
    struct Object4 *r0, *r4 = TaskGetStructPtr(t, r0);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->unk0.base.x;
    r4->unk38 = r5->unk0.base.y;
    r4->unk44 = r5;
    r4->unk60__42 = r5->unk0.base.unk60__42;
    if (r6->unk120 == 0x1000)
    {
        r4->unk34 -= 0x2000;
        r4->unk38 -= 0x1C00;
    }
    if (r6->unk120 == 0x3000)
    {
        r4->unk34 += 0x2000;
        r4->unk38 -= 0x1C00;
    }
    sub_080709F8(r4, &r4->unkC, 0x24, 0x399, 0x2B, 8);
    r4->unkC.unk1F = 0;
    Macro_081050E8(r4, &r4->unkC, 0x39A, TRUE);
    r4->unk4 = 0x20;
    return r4;
}

void sub_08112024(void)
{
    struct Sprite spr;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r8 = r5->unk44, *r3;

    if (r5->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (r8->base.flags & 0x1000)
        r5->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(r5, &r5->unkC, &spr, 0x24, &r5->unkC);
        Macro_081050E8(r5, &r5->unkC, 0x39A, !r5->unkC.unk1F);
        r5->unk60__42 = r8->base.unk60__42;
        r3 = r5->unk44;
        if (r3)
        {
            if (r3->base.unk0 && r3->base.flags & 0x1000)
            {
                r5->unk44 = NULL;
                r3 = NULL;
            }
            if (!r3)
                goto _0811220C;
            if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000))
            {
                sub_0803DBC8(r5);
                return;
            }
        }
        else
        {
        _0811220C:
            KirbySomething(r5);
        }
        if (r5->flags & 2)
            r5->flags |= 0x1000;
        else
            sub_0806FAC8(r5);
    }
}

struct Object4 *sub_081122A0(struct Object2 *r6, u8 sb)
{
    struct Task *t = TaskCreate(sub_081123CC, sizeof(struct Object4), 0x3501, 0x10, sub_0803DCCC);
    struct Object4 *r0, *r4 = TaskGetStructPtr(t, r0);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r6->base.x;
    r4->unk38 = r6->base.y;
    r4->unk44 = r6;
    r4->unk60__42 = r6->base.unk60__42;
    sub_080709F8(r4, &r4->unkC, 0x24, 0x399, 0x2a, 10);
    r4->unkC.unk1F = 0;
    if (sb)
        r4->flags |= 1;
    Macro_081050E8(r4, &r4->unkC, 0x39A, !r4->unkC.unk1F);
    r4->unk4 = 0x20;
    if (r4->flags & 1)
        r4->unk34 = r6->base.x - 0x1400;
    else
        r4->unk34 = r6->base.x + 0x1400;
    r4->unk38 = r6->base.y + 0x8D00;
    return r4;
}

void sub_081123CC(void)
{
    struct Sprite spr;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r8 = r5->unk44, *r3;

    if (r5->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (r8->base.flags & 0x1000)
        r5->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(r5, &r5->unkC, &spr, 9, &r5->unkC);
        Macro_081050E8(r5, &r5->unkC, 0x39A, !r5->unkC.unk1F);
        r5->unk60__42 = r8->base.unk60__42;
        if (r8->unk83 != 1)
            r5->flags |= 0x400;
        else
            r5->flags &= ~0x400;
        r3 = r5->unk44;
        if (r3)
        {
            if (r3->base.unk0 && r3->base.flags & 0x1000)
            {
                r5->unk44 = NULL;
                r3 = NULL;
            }
            if (!r3)
                goto _081125D4;
            if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000))
            {
                sub_0803DBC8(r5);
                return;
            }
        }
        else
        {
        _081125D4:
            KirbySomething(r5);
        }
        r5->flags |= 4;
        if (r5->flags & 2)
        {
            if (r5->flags & 1)
                r5->unk34 = r8->base.x - 0x1400;
            else
                r5->unk34 = r8->base.x + 0x1400;
            r5->unk38 = r8->base.y + 0x8D00;
            r5->unk34 += (4 - (Rand16() & 7)) * 0x100;
        }
        sub_0806FAC8(r5);
    }
}

struct Object4 *sub_081126C0(struct DarkMindForm2 *sb, u8 sp08)
{
    u8 sp0C = 40, i;
    struct Task *t = TaskCreate(sub_08112880, sizeof(struct Object13), 0x3501, 0x10, sub_0803DCCC);
    struct Object13 *r0 = TaskGetStructPtr(t, r0);
    struct Object4 *r6 = &r0->unk0;
    struct Object13 *r8 = r0;

    sub_0803E3B0(r6);
    r6->unk0 = 3;
    r6->unk34 = sb->unk0.base.x;
    r6->unk38 = sb->unk0.base.y;
    r6->unk44 = sb;
    r6->unk60__42 = sb->unk0.base.unk60__42;
    r6->unk4 = 0;
    for (i = 0; i < 4; ++i)
    {
        r8->unk48[i][0] = sb->unk0.base.x + ((0x10 - (Rand16() & 0x1F)) * 0x100);
        r8->unk48[i][1] = sb->unk0.base.y + 0x8D00;
        r8->unk68[i] = (Rand16() & 0x7FF) + 0x400;
    }
    if (sp08) sp0C = 41;
    sub_080709F8(r6, &r6->unkC, 1, 0x399, sp0C, 10);
    r6->unkC.unk1F = 0;
    if (sp08)
        r6->flags |= 1;
    Macro_081050E8(r6, &r6->unkC, 0x39A, !r6->unkC.unk1F);
    if (r6->flags & 1)
        r6->unk34 = sb->unk0.base.x - 0x1400;
    else
        r6->unk34 = sb->unk0.base.x + 0x1400;
    r6->unk38 = sb->unk0.base.y + 0x8D00;
    return r6;
}

void sub_08112880(void)
{
    struct Sprite sprite;
    u8 r8;
    struct Object13 *r0 = TaskGetStructPtr(gCurTask, r0);
    struct Object4 *r5 = &r0->unk0;
    struct Object2 *sp28 = r5->unk44;
    struct Object13 *sp2C = r0;
    struct DarkMindForm2 *r7 = r5->unk44;

    if (r5->flags & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    if (sp28->base.flags & 0x1000)
    {
        r5->flags |= 0x1000;
        return;
    }
    Macro_08107BA8_4(r5, &r5->unkC, &sprite, 1, &r5->unkC);
    Macro_081050E8(r5, &r5->unkC, 0x39A, !r5->unkC.unk1F);
    r5->unk60__42 = sp28->base.unk60__42;
    if (Macro_0810B1F4(&sp28->base)
        && !(sp28->base.flags & 0x2000))
    {
        s32 r6 = r5->unk34, r7 = r5->unk38;

        for (r8 = 0; r8 < 4; ++r8)
        {
            r5->unk34 = sp2C->unk48[r8][0];
            r5->unk38 = sp2C->unk48[r8][1];
            sub_0803DBC8(r5);
        }
        r5->unk34 = r6;
        r5->unk38 = r7;
    }
    else
    {
        s32 r0;

        if (!r7->laserShower || r7->laserShower->base.flags & 0x1000)
            r5->unk4 = 1;
        if (r5->flags & 1)
        {
            struct Sprite *r0 = &r5->unkC;

            r0->unk8 = r5->unkC.unk8 | 0x400;
        }
        else
        {
            struct Sprite *r0 = &r5->unkC;

            r0->unk8 = r5->unkC.unk8 & ~0x400;
        }
        if (!(r5->flags & 8))
        {
            if ((r5->unkC.unk1B != r5->unkC.unk1A || r5->unkC.unk18 != r5->unkC.unkC)
                && r5->unkC.unk1C)
            {
                r5->unk1 = 0;
                r5->unk2 = 0;
                r5->flags &= ~4;
            }
            r0 = sub_08155128(&r5->unkC);
            if (!r0)
            {
                r5->flags |= 2;
                if (r5->flags & 4 && r5->unkC.unk1C)
                {
                    r5->unkC.unk1B = 0xFF;
                    r5->flags &= ~4;
                    r5->unk1 = 0;
                    r5->unk2 = r0;
                    sub_08155128(&r5->unkC);
                }
            }
            else
            {
                r5->unk2 += r5->unkC.unk1C;
                r5->unk1 = r5->unk2 >> 4;
                r5->flags &= ~2;
            }
        }
        r5->unkC.unk10 = (r5->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r5->unk40;
        r5->unkC.unk12 = (r5->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r5->unk41;
        if (r5->unkC.unk1C)
        {
            r5->unk40 = 0;
            r5->unk41 = 0;
        }
        for (r8 = 0; r8 < 4; ++r8)
        {
            sp2C->unk48[r8][1] -= sp2C->unk68[r8];
            if (sp2C->unk48[r8][1] < 0)
            {
                if (r5->unk4)
                {
                    sp2C->unk68[r8] = 0;
                    continue;
                }
                sp2C->unk48[r8][0] = sp28->base.x + ((0x10 - (Rand16() & 0x1F)) * 0x100);
                sp2C->unk48[r8][1] = sp28->base.y + 0x8D00;
                sp2C->unk68[r8] = (Rand16() & 0x7FF) + 0x400;
            }
            r5->unkC.unk10 = ((sp2C->unk48[r8][0] + (sp28->base.unk54 * 0x100)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
            r5->unkC.unk12 = ((sp2C->unk48[r8][1] + (sp28->base.unk55 * 0x100)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
            Macro_08106BE0(r5, &r5->unkC);
        }
        if (!sp2C->unk68[0] && !sp2C->unk68[1] && !sp2C->unk68[2] && !sp2C->unk68[3])
            r5->flags |= 0x1000;
    }
}

static inline void sub_08112D58_play_sfx(struct Object12 *r6) // fix stack allocation for expressions
{
    PlaySfx(&r6->unk0.base, 439);
}

void sub_08112D58(struct Object12 *r6)
{
    s8 sp00 = 0, sl = 0;
    struct Object12 *r8 = r6;
    struct DarkMindForm2 *r3 = r6->unk0.base.parent;
    s32 ip = r6->unk0.base.x >> 8, r5 = r6->unk0.base.y >> 8;
    struct Object2 *cutter;

    if (r6->unk0.unk80 <= r3->unk138)
    {
        sp00 = RandLessThan3();
        if (r8->unk0.unk80 < r3->unk139)
            sl = RandLessThan3() & 1;
    }
    cutter = Macro_081059A8(&r6->unk0, ip+4, r5-4, OBJ_DARK_MIND_MIRROR_CUTTER, 0, r8->unk0.subtype);
    cutter->unk9E = sp00;
    if (sl) sub_08114784(cutter);
    cutter = Macro_081059A8(&r6->unk0, ip-4, r5-4, OBJ_DARK_MIND_MIRROR_CUTTER, 1, r8->unk0.subtype);
    cutter->unk9E = sp00;
    cutter->unk83 = 1;
    if (sl) sub_08114784(cutter);
    cutter = Macro_081059A8(&r6->unk0, ip-4, r5+4, OBJ_DARK_MIND_MIRROR_CUTTER, 2, r8->unk0.subtype);
    cutter->unk9E = sp00;
    if (sl) sub_08114784(cutter);
    cutter = Macro_081059A8(&r6->unk0, ip+4, r5+4, OBJ_DARK_MIND_MIRROR_CUTTER, 3, r8->unk0.subtype);
    cutter->unk9E = sp00;
    cutter->unk83 = 1;
    if (sl) sub_08114784(cutter);
    sub_08112D58_play_sfx(r6);
}

void *CreateDarkMindMirrorCutter(struct Object *r6, u8 r4)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r5 = TaskGetStructPtr(t, r5);

    InitObject(r5, r6, r4);
    r5->unk85 = 0;
    r5->base.flags |= 0x40;
    r5->base.flags |= 0x100;
    r5->base.flags |= 0x8000;
    r5->base.flags |= 0x2000000;
    r5->base.unkC |= 1;
    r5->base.unkC |= 4;
    r5->base.flags |= 0x10000;
    r5->base.unk5C &= ~7;
    r5->base.unk5C |= 7;
    r5->base.unk5C |= 0x100000 | 0x8000 | 0x80 | 0x20;
    r5->unk9E = 0;
    r5->unk7C = sub_0809F840;
    sub_0803E2B0(&r5->base, -8, -4, 8, 4);
    r5->base.unk10.unk14 = 0x5C0;
    ObjectInitSprite(r5);
    sub_08113C10(r5);
    return r5;
}

void sub_0811323C(struct Object2 *ip)
{
    s32 r3, r4;

    ip->base.flags |= 4;
    switch (ip->unk9E)
    {
    default:
        r3 = 0x500;
        r4 = 0x400;
        break;
    case 0:
        r3 = 0x280;
        r4 = 0x200;
        break;
    case 1:
        r3 = 0x3C0;
        r4 = 0x300;
        break;
    }
    ip->base.xspeed = (gUnk_08D5FE14[(ip->base.counter + 0x60) & 0x3FF] >> 6) * r3 >> 8;
    ip->base.yspeed = (gUnk_08D5FE14[ip->base.counter] >> 6) * r4 >> 8;
    do
    {
        switch (ip->object->subtype1)
        {
        case 1:
            ip->base.xspeed = -ip->base.xspeed;
            break;
        case 2:
            ip->base.xspeed = -ip->base.xspeed;
            ip->base.yspeed = -ip->base.yspeed;
            break;
        case 3:
            ip->base.yspeed = -ip->base.yspeed;
            break;
        }
    } while (0);
    ip->base.counter += 0x10;
    if (ip->base.counter & ~0x3FF)
        ip->base.flags |= 0x1000;
}

void sub_08113310(struct Object2 *ip)
{
    struct Object12 *r3 = ip->base.parent;
    s16 r5, r2;

    ip->base.flags |= 4;
    if (ip->base.counter & ~0x1FF)
        ip->unkA2 -= 0x2F;
    else
        ip->unkA2 += 0x10;
    ip->unkA0 += ip->unkA2;
    ip->base.x = r3->unk0.base.x;
    ip->base.y = r3->unk0.base.y;
    switch (ip->object->subtype1)
    {
    case 0:
    default:
        r5 = ip->unkA0 * (gUnk_08D5FE14[ip->base.counter + 0x100] >> 6) >> 8;
        r2 = ip->unkA0 * (gUnk_08D5FE14[ip->base.counter] >> 6) >> 8;
        break;
    case 1:
        r5 = ip->unkA0 * (gUnk_08D5FE14[((ip->base.counter + 0x100) & 0x3FF) + 0x100] >> 6) >> 8;
        r2 = ip->unkA0 * (gUnk_08D5FE14[(ip->base.counter + 0x100) & 0x3FF] >> 6) >> 8;
        break;
    case 2:
        r5 = ip->unkA0 * (gUnk_08D5FE14[((ip->base.counter + 0x200) & 0x3FF) + 0x100] >> 6) >> 8;
        r2 = ip->unkA0 * (gUnk_08D5FE14[(ip->base.counter + 0x200) & 0x3FF] >> 6) >> 8;
        break;
    case 3:
        r5 = ip->unkA0 * (gUnk_08D5FE14[((ip->base.counter + 0x300) & 0x3FF) + 0x100] >> 6) >> 8;
        r2 = ip->unkA0 * (gUnk_08D5FE14[(ip->base.counter + 0x300) & 0x3FF] >> 6) >> 8;
        break;
    }
    ip->base.x += r5;
    ip->base.y += r2;
    ip->base.counter += 0x10;
    if (ip->base.counter & ~0x3FF)
        ip->base.flags |= 0x1000;
    else if (!ip->object->subtype1)
    {
        if (!(ip->unk9F & 7))
            PlaySfx(&ip->base, 439);
        ++ip->unk9F;
    }
}

struct Task *sub_08113508(struct DarkMindForm2 *r5, u16 r6)
{
    if (r5->unkDC)
    {
        sub_081138D0(r5->unkDC);
        return NULL;
    }
    else
    {
        struct Unk_02022930_0 *s;
        struct Task *t = TaskCreate(sub_081135A8, sizeof(struct Object11), 0xFFFE, 0, sub_081147B0);
        struct Object11 *obj11 = TaskGetStructPtr(t, obj11);

        obj11->unk2 = 0;
        obj11->unk0 = r5->unk0.base.unk60__42;
        obj11->unk4 = r6;
        obj11->unk6 = 8;
        obj11->unk8 = r5;
        s = sub_0803C83C(5, r5->unk0.base.unk60__42);
        s->unk0 = 1;
        s->unkA = 0x400;
        s->unk2 = 0x20;
        s->unk4 = 0xFFFF;
        s->unk6 = 0x3FFF;
        s->unk3 = 0xF;
        return t;
    }
}

#define Macro_081135A8(obj11) \
({ \
    bool32 _b; \
    u8 _i; \
 \
    _b = FALSE; \
    for (_i = 0; _i < gUnk_0203AD44; ++_i) \
    { \
        if (gKirbys[_i].base.base.unk60__42 == (u16)(obj11)->unk0 && !(gUnk_02026D50[gCurLevelInfo[_i].unk65E] & 8)) \
            _b = TRUE; \
    } \
    _b; \
})

void sub_081135A8(void)
{
    struct Object11 *r0, *r2 = TaskGetStructPtr(gCurTask, r0);
    const struct DarkMindForm2 *r4 = r2->unk8;

    if (r4->unk0.base.flags & 0x1000)
    {
        struct Unk_02022930_0 *s = sub_0803C83C(5, r4->unk0.base.unk60__42);

        s->unk0 = 1;
        s->unkA = 0xFF00;
        s->unkC = 0x2000;
        s->unk1 = 0x20;
        s->unk2 = 0;
        s->unk4 = 0xFFFF;
        s->unk6 = 0x3FFF;
        TaskDestroy(gCurTask);
    }
    else
    {
        if (!Macro_081135A8(r2))
            TaskDestroy(gCurTask);
        else
        {
            --r2->unk6;
            if (!r2->unk6)
            {
                struct Unk_02022930_0 *s = sub_0803C83C(5, r4->unk0.base.unk60__42);

                s->unk0 = 1;
                s->unkA = 0xFF00;
                s->unkC = 0x2000;
                s->unk1 = 0x20;
                s->unk2 = 0;
                s->unk4 = 0xFFFF;
                s->unk6 = 0x3FFF;
                s->unk3 = 0xF;
                gCurTask->main = sub_0811370C;
            }
        }
    }
}

#define Macro_0811370C(objBase) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == (objBase)->unk60__42) \
        DarkMindForm2FlipSprites(); \
    else \
        gUnk_0203AD20 &= ~8; \
})

void sub_0811370C(void)
{
    struct Object11 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    const struct DarkMindForm2 *r4 = r5->unk8;

    if (r4->unk0.base.flags & 0x1000 || r4->unk0.unk80 <= 0)
    {
        if (r4->unk0.unk80 <= 0)
        {
            sub_081138D0(gCurTask);
            Macro_0811370C(&r4->unk0.base);
        }
        else
            TaskDestroy(gCurTask);
    }
    else
    {
        if (!Macro_081135A8(r5))
            TaskDestroy(gCurTask);
        else
        {
            if (Macro_0810B1F4(&r4->unk0.base))
                Macro_0811370C(&r4->unk0.base);
            else
            {
                Macro_0811370C(&r4->unk0.base);
                if (!--r5->unk4)
                    sub_081138D0(gCurTask);
            }
        }
    }
}

void sub_081138D0(struct Task *t)
{
    struct Object11 *r2 = TaskGetStructPtr(t, r2);
    struct Unk_02022930_0 *r0;
    const struct DarkMindForm2 *r3 = r2->unk8;

    if (t->main == sub_0811370C)
    {
        r2->unk6 = 9;
        r0 = sub_0803C83C(5, r3->unk0.base.unk60__42);
        r0->unk0 = 1;
        r0->unkA = 0x400;
        r0->unk2 = 0x20;
        r0->unk4 = 0xFFFF;
        r0->unk6 = 0x3FFF;
        r0->unk3 = 0xF;
        t->main = sub_08113940;
    }
}

void sub_08113940(void)
{
    struct Object11 *r0, *r2 = TaskGetStructPtr(gCurTask, r0);
    const struct DarkMindForm2 *ip = r2->unk8;
    struct Unk_02022930_0 *s;

    if (!Macro_081135A8(r2))
        TaskDestroy(gCurTask);
    else
    {
        --r2->unk6;
        if (!r2->unk6)
        {
            s = sub_0803C83C(5, ip->unk0.base.unk60__42);
            s->unk0 = 1;
            s->unkA = 0xFF00;
            s->unkC = 0x2000;
            s->unk1 = 0x20;
            s->unk2 = 0;
            s->unk4 = 0xFFFF;
            s->unk6 = 0x3FFF;
            s->unk3 = 0xF;
            TaskDestroy(gCurTask);
        }
        else
            Macro_0811370C(&ip->unk0.base);
    }
}

void DarkMindForm2FlipSprites(void)
{
    u8 i;
    s8 r5;
    u16 r7;
    u32 combine; // required for matching

    gUnk_0203AD20 |= 8;
    for (i = 0; i <= gUnk_030024F0; ++i)
    {
        gUnk_030031C0[i].all.attr1 ^= 0x2000;
        r7 = DISPLAY_HEIGHT - (gUnk_030031C0[i].all.attr0 & 0xFF);
        r5 = (gUnk_030031C0[i].all.attr1 & 0xC000) >> 14;
        if (gUnk_030031C0[i].all.attr0 & 0x4000 && gUnk_030031C0[i].all.attr1 & 0xC000)
            --r5;
        if (gUnk_030031C0[i].all.attr0 & 0x8000 && !(gUnk_030031C0[i].all.attr1 & 0x8000))
            ++r5;
        combine = ((r7 - (8 << r5)) & 0xFF) | (gUnk_030031C0[i].all.attr0 & 0xFF00);
        gUnk_030031C0[i].all.attr0 = combine;
    }
}

void sub_08113B68(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_0810F428);
    r4->unk0.unkA0 = 0x4800;
    r4->unk0.unkA2 = 0x20;
    if (r4->unk0.object->subtype1)
        r4->unk0.base.counter = 0;
    else
        r4->unk0.base.counter = 0x200;
    r4->unk0.unk9F = 0;
}

void sub_08113BAC(struct Object2 *r5)
{
    struct DarkMindForm2 *r4 = r5->base.parent;
    ObjectSetFunc(r5, 0, sub_08114708);
    r5->base.xspeed = 0x800;
    if (!r4->unk127)
    {
        r5->base.flags |= 1;
        r5->base.xspeed = -r5->base.xspeed;
    }
}

void sub_08113BEC(struct Object2 *r4)
{
    ObjectSetFunc(r4, 0, sub_08111AEC);
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
}

void sub_08113C10(struct Object2 *r4)
{
    ObjectSetFunc(r4, 0, sub_0811323C);
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
}

void sub_08113C34(UNUSED s32 a1, u8 offset)
{
    const u16 *src = gUnk_08D64A24[gRoomProps[0x396].backgroundIdx]->unk18;
    u16 i, j, *dst = ((offset << 10) & 0x7FFFF) + (u16 *)0x6000540;

    for (i = 0; i < 0x16; ++i)
    {
        for (j = 0; j < 0x20; ++j)
        {
            *dst = *src ^ 0x800;
            ++src;
            ++dst;
        }
        dst -= 0x40;
    }
}

void sub_08113C90(void)
{
    gUnk_02022EA0 = 2;
}

void sub_08113C9C(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 0, sub_08113CCC);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 0x7A;
}

void sub_08113CCC(struct DarkMindForm2 *r1)
{
    if (!--r1->unk0.base.counter)
        sub_08113CE8(r1);
}

void sub_08113CE8(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 0, sub_0810BFC0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.unk9E = 4;
    r4->unk0.unk9F = 0;
    r4->unk0.base.counter = 0;
    r4->unk0.unk85 = 0x7A;
}

void sub_08113D2C(struct DarkMindForm2 *r1)
{
    struct DarkMindForm2 *r2 = r1;

    if (!--r2->unk0.base.counter)
        sub_0810C9C8(r1);
    else
    {
        r1->unkE4.unk0 -= 8;
        if (r1->unkE4.unk0 < 0x100)
            r1->unkE4.unk0 = 0x100;
        r2->unkF0.unk0 = r1->unkE4.unk0;
    }
}

void sub_08113D68(struct DarkMindForm2 *r4)
{
    if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == r4->unk0.base.unk60__42)
        sub_0814F274(&r4->unkF0);
    if (r4->unk0.base.counter == 1)
    {
        sub_080700D8(&r4->unk0);
        sub_080335B4(r4->unk0.base.unk56);
        r4->unk0.base.flags &= ~0x2000;
    }
    if (r4->unk0.base.flags & 2)
        r4->unk0.base.flags |= 0x400;
    if (!--r4->unk0.base.counter)
        sub_0810C4AC(r4);
}

void sub_08113DE8(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 0, sub_0810BD28);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
}

void sub_08113E14(struct DarkMindForm2 *r1)
{
    if (++r1->unk0.base.counter > 21)
        sub_08113E30(r1);
}

void sub_08113E30(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    ObjectSetFunc(r4, 1, sub_0810CD98);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk129 = 1;
    if (r4->unk128 == 4 || r4->unk128 == 5)
        sub_0810CEB0(r4);
    else if (r4->unk128 == 2)
        sub_0810D234(r4);
    else
        r5->unk135 = 2;
}

void sub_08113E98(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_08113EE8);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk135 = 1;
    if (!r4->unk126)
        r4->unk129 = 0;
}

void sub_08113EE8(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.flags & 2)
        sub_0810D6C0(r2);
}

void sub_08113F00(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_08113F38);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk135 = 0;
}

void sub_08113F38(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.flags & 2)
        sub_0810ABC0(r2);
}

void sub_08113F50(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 1, sub_08113F88);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk135 = 0;
}

void sub_08113F88(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.flags & 2)
        sub_08113FA0(r2);
}

void sub_08113FA0(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 2, sub_0810D0EC);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.counter = 0x10;
    if (r4->unk0.base.y > 0x5800)
        r4->unk0.unk9F = 1;
    else
        r4->unk0.unk9F = 0;
    r4->unk135 = 2;
}

void sub_08113FF8(struct DarkMindForm2 *r3)
{
    r3->unk0.unk78 = sub_0810D1D0;
    r3->unk0.base.xspeed = 0;
    r3->unk0.base.yspeed = 0;
    r3->unk0.base.flags &= ~1;
    r3->unk0.base.counter = 0;
}

void sub_0811401C(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 1, sub_08114054);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk135 = 0;
}

void sub_08114054(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.flags & 2)
        sub_0810D430(r2);
}

void sub_0811406C(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_081140A4);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk135 = 1;
}

void sub_081140A4(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.flags & 2)
        sub_0810D870(r2);
}

void sub_081140BC(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810DB14);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk135 = 2;
    sub_08111EF4(r4);
    r4->unk0.base.counter = 0x18;
}

void sub_081140F4(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810DC2C);
    r4->unk129 = 0;
    r4->unk135 = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
}

void sub_08114130(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810E7D0);
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.counter = 0x10;
    r4->unk0.unk9E = 0;
    r4->unk135 = 2;
}

void sub_08114170(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_081141AC);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.counter = 0x20;
    r4->unk135 = 3;
}

void sub_081141AC(struct DarkMindForm2 *r2)
{
    r2->unk0.base.flags |= 4;
    if (!--r2->unk0.base.counter)
        sub_0810E110(r2);
}

void sub_081141D0(struct DarkMindForm2 *r2)
{
    r2->unk0.base.flags |= 4;
    if (!--r2->unk0.base.counter)
        sub_0810E354(r2);
}

void sub_081141F4(struct DarkMindForm2 *r4)
{
    if (!--r4->unk0.base.counter)
    {
        sub_080700D8(&r4->unk0);
        sub_08114218(r4);
    }
}

void sub_08114218(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_08114250);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk135 = 0;
}

void sub_08114250(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.flags & 2)
        sub_08114268(r2);
}

void sub_08114268(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810EB30);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.counter = 40;
    r4->unk135 = 3;
    r4->unkE4.unk0 = 0x100;
    r4->unkF0.unk0 = 0x100;
}

void sub_081142B0(struct DarkMindForm2 *r4)
{
    struct DarkMindForm2 *r5 = r4;

    ObjectSetFunc(r4, 5, sub_0810EC0C);
    r4->unk0.base.flags &= ~4;
    r4->unk0.base.yspeed = 0;
    if (r4->unk0.base.x < 0x7E00)
        r4->unk0.base.flags &= ~1;
    else
        r4->unk0.base.flags |= 1;
    r4->unk0.base.counter = 0x40;
    r5->unk126 = 10;
    r4->unk0.unk9E = 0;
}

void sub_08114310(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_08114348);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~2;
    r4->unk135 = 0;
}

void sub_08114348(struct DarkMindForm2 *r2)
{
    if (r2->unk0.base.flags & 2)
        sub_08114360(r2);
}

void sub_08114360(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810ECB4);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.counter = 0x40;
    r4->unk126 = 0xA;
    r4->unk135 = 3;
    r4->unk0.unk9E = 0;
}

void sub_081143AC(struct DarkMindForm2 *r4)
{
    ObjectSetFunc(r4, 5, sub_0810EDA0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags &= ~1;
    r4->unk0.base.counter = 0x40;
    r4->bomb = sub_08107254(&r4->unk0);
    r4->unk0.unk9E = 0;
}

void sub_081143F0(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_08114420);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unkE0 = 0;
    r4->unk0.base.counter = 28;
}

void sub_08114420(struct Object12 *r2)
{
    struct DarkMindForm2 *r3 = r2->unk0.base.parent;

    r2->unk0.base.flags |= 4;
    if (!r3->unk12E && !--r2->unk0.base.counter)
    {
        switch (r3->unk126)
        {
        case 0: // required for matching
        default:
            r3->unk129 = 0;
            sub_08110E60(r2);
            break;
        case 1 ... 2:
            sub_08110A20(r2);
            break;
        case 3 ... 5:
            sub_0810FB68(r2);
            break;
        }
    }
}

void sub_081144A0(struct Object12 *r2)
{
    if (r2->unk0.base.flags & 2)
    {
        r2->unk0.base.flags &= ~0x200;
        r2->unk0.base.yspeed = 0;
        switch (r2->unkE1)
        {
        case 0:
            sub_0810F4A0(r2);
            break;
        case 1:
            sub_0810F77C(r2);
            break;
        }
        r2->unkE1 = 0;
    }
}

void sub_081144EC(struct Object12 *r2)
{
    struct DarkMindForm2 *r3 = r2->unk0.base.parent;

    if (r2->unk0.base.flags & 2)
    {
        r2->unk0.base.yspeed = 0;
        if (r3->unk12C)
        {
            --r3->unk12C;
            sub_08110C68(r2);
        }
        else
            sub_08114528(r2);
    }
}

void sub_08114528(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_08114554);
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags |= 0x400;
    r4->unkE0 = 0;
}

void sub_08114554(struct Object12 *r3)
{
    struct DarkMindForm2 *r0 = r3->unk0.base.parent;

    r3->unk0.base.xspeed = 0;
    r3->unk0.base.yspeed = 0;
    if (r0->unk0.unk83 == 2)
        sub_0810F9D4(r3);
}

void sub_08114578(struct Object12 *r4)
{
    if (!--r4->unk0.base.counter)
    {
        sub_08112D58(r4);
        sub_0811459C(r4);
    }
}

void sub_0811459C(struct Object12 *r3)
{
    r3->unk0.unk78 = sub_081145C8;
    r3->unk0.base.xspeed = 0;
    r3->unk0.base.yspeed = 0;
    r3->unk0.base.flags |= 0x200;
    r3->unk0.base.flags |= 0x400;
    r3->unk0.base.counter = 0;
}

void sub_081145C8(struct Object12 *r2)
{
    r2->unk0.base.counter += 0x10;
    if (r2->unk0.base.counter & ~0x3FF)
        sub_08110E60(r2);
}

void sub_081145EC(struct Object12 *r3)
{
    struct DarkMindForm2 *r2 = r3->unk0.base.parent;

    r3->unk0.base.flags |= 4;
    if (!r2->unk12E)
    {
        if (!--r3->unk0.base.counter)
            sub_08110E60(r3);
    }
}

void sub_0811461C(struct Object12 *r4)
{
    ObjectSetFunc(r4, 0, sub_08110C10);
    if (r4->unk0.base.x > 0x8000)
        r4->unk0.base.flags |= 1;
    else
        r4->unk0.base.flags &= ~1;
    if (r4->unk0.base.y < 0x5800)
        r4->unk0.unk83 = 6;
    else
        r4->unk0.unk83 = 4;
    r4->unk0.base.counter = 0x180;
}

void sub_08114674(struct Object12 *r0)
{
    r0->unk0.unk78 = sub_0811468C;
    ++r0->unk0.unk83;
    r0->unk0.base.counter = 0x16;
}

void sub_0811468C(struct Object12 *r2)
{
    r2->unk0.base.flags |= 4;
    if (!--r2->unk0.base.counter)
        sub_08110E60(r2);    
}

void sub_081146B0(struct Object12 *r4)
{
    sub_080708DC(&r4->unk0.base, &r4->unkB4, 0x28, 0x399, 0x19, 0x1B);
    r4->unk0.base.unk10.unk1F = 0;
    r4->unkB4.unk1F = sub_0803DF24(0x39A);
    if (r4->unkB4.unk1F == 0xFF)
    {
        sub_0803DFAC(0x39A, 0);
        r4->unkB4.unk1F = sub_0803DF24(0x39A);
    }
}

void sub_08114708(struct Object2 *r0)
{
    r0->base.flags |= 4;
}

void sub_08114714(struct Object2 *r2)
{
    r2->base.flags |= 4;
    if (!--r2->base.counter)
    {
        r2->base.unk10.unk14 = 1600;
        sub_081115F4(r2);
    }
}

void sub_0811473C(struct Object2 *r4)
{
    r4->base.flags &= ~2;
    r4->unk83 = 2;
    r4->base.flags |= 0x200;
    if (r4->base.unk56 == gUnk_0203AD3C)
        m4aSongNumStop(435);
    sub_080700D8(r4);
}

void sub_08114784(struct Object2 *r4)
{
    ObjectSetFunc(r4, 0, sub_08113310);
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
    r4->unkA0 = 0;
    r4->unkA2 = 0;
}

void sub_081147B0(struct Task *t)
{
    struct Object11 *r0;
    struct DarkMindForm2 *r2;

    TaskGetStructPtr(t, r0);
    r2 = r0->unk8;
    gUnk_0203AD20 &= ~8;
    r2->unkDC = NULL;
}

void sub_081147F0(struct Task *t)
{
    struct Object12 *r0 = TaskGetStructPtr(t, r0);

    if (r0->unkB4.unk0)
    {
        sub_08157190(r0->unkB4.unk0);
        r0->unkB4.unk0 = 0;
    }
    ObjectDestroy(t);
}

void *CreateDarkMindTrigger(struct Object *r5, u8 r4)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct DarkMindTrigger), 0x1000, 0x10, ObjectDestroy);
    struct DarkMindTrigger *r6 = TaskGetStructPtr(t, r6);

    InitObject(&r6->unk0, r5, r4);
    r6->unk0.base.unkC |= 1;
    r6->unk0.base.unkC |= 4;
    r6->unk0.base.flags |= 0x2000000;
    r6->unk0.base.flags |= 0x200;
    r6->unk0.base.flags |= 0x100;
    r6->unk0.base.flags |= 0x40;
    r6->unk0.unk85 = 0;
    r6->unkB4 = NULL;
    r6->unkBA = r6->unk0.unk80;
    r6->unkBC = 0;
    r6->unkBE = 0;
    r6->unkBF = 0;
    r6->unkC0 = 0;
    r6->unk0.base.flags |= 1;
    r6->unk0.base.unk5C &= ~7;
    r6->unk0.base.unk5C |= 2 | 1;
    r6->unk0.base.unk68 &= ~7;
    r6->unk0.base.unk5C |= 0x100000 | 0x8000 | 0x80 | 0x20;
    sub_0803E2B0(&r6->unk0.base, -14, -14, 14, 14);
    sub_0803E308(&r6->unk0.base, -40, -30, 40, 30);
    ObjectInitSprite(&r6->unk0);
    r6->unk0.unk9E = 0;
    r6->unk0.unk7C = sub_0811643C;
    r6->unkB4 = sub_081171BC(r6);
    if (!r6->unk0.object->subtype1)
        sub_081188EC(r6);
    else
        sub_0811889C(r6);
    return r6;
}

void sub_08114954(struct DarkMindTrigger *r3)
{
    s8 r1 = (Rand16() & 0xF) - 5;
    u8 v1 = 3, v2 = 2;

    if (r1 < 0)
        sub_0811530C(r3);
    else if ((r1 -= v1) < 0)
        sub_081187F4(r3);
    else if ((r1 -= v1) < 0)
        sub_08118828(r3);
    else if ((r1 -= v1) < 0)
        sub_08115814(r3);
    else if ((r1 -= v2) < 0)
        sub_08118868(r3);
    else
        sub_08114BA0(r3);
}

void sub_081149DC(struct DarkMindTrigger *r3)
{
    s8 v = (Rand16() & 7) - 3;
    s8 rng;
    u8 v1 = 0, v2 = 3, v3 = 1;

    if (v < 0)
        sub_08118678(r3);
    else if ((rng = v), rng < 0) // always FALSE
        sub_081186B8(r3);
    else if ((rng -= v2) < 0)
        sub_08114FF4(r3);
    else if ((rng -= v3) < 0)
        sub_08114954(r3);
    else
        sub_08114BA0(r3);
}

void sub_08114A4C(struct DarkMindTrigger *r3)
{
    u8 v1 = 2, v2 = 3;
    s8 rng = (Rand16() & 7);
    s32 v = rng - 2;

    // TODO: r0/r1 regswap
    if (v) { ++v; --v; }
    rng = v;
    if (rng < 0)
        sub_081186B8(r3);
    else if ((rng -= v1) < 0)
        sub_08114FF4(r3);
    else if ((rng -= v2) < 0)
        sub_08114954(r3);
    else
        sub_08118678(r3);
}

void sub_08114AB0(struct DarkMindTrigger *r3)
{
    s8 r1 = (Rand16() & 7) - 1;
    u8 v1 = 3, v2 = 2;

    if (r1 < 0)
        sub_08114BA0(r3);
    else if ((r1 -= v1) < 0)
        sub_08118678(r3);
    else if ((r1 -= v2) < 0)
        sub_08114FF4(r3);
    else if ((r1 -= v2) < 0)
        sub_08114954(r3);
    else
        sub_081186B8(r3);
}

void sub_08114B28(struct DarkMindTrigger *r5)
{
    r5->unk0.kirby3 = sub_0803D368(&r5->unk0);
    r5->unk0.base.flags |= 4;
    if (!(r5->unk0.kirby3->base.base.unkC & 0x8000) && r5->unk0.base.unk60__42 == r5->unk0.kirby3->base.base.unk60__42
        && sub_08039430(&r5->unk0.kirby3->base, 
               r5->unk0.base.x, r5->unk0.base.y,
               r5->unk0.object->unk1A, r5->unk0.object->unk1C,
               r5->unk0.object->unk1E, r5->unk0.object->unk20))
    {
        r5->unk0.base.flags &= ~0x200;
        sub_08114BA0(r5);
    }
}

void sub_08114BA0(struct DarkMindTrigger *r4)
{
    if (r4->unk0.unk80 <= 0 && r4->unk0.unk7C != sub_081164E0)
        sub_08118990(r4);
    ObjectSetFunc(r4, 0, sub_08114C44);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = (Rand16() & 0xF) + 0x10;
    r4->unk0.unk9F = 0;
    if (r4->unk0.unk80 <= gUnk_08351530[0x19][gUnk_0203AD30 - 1] >> 1)
        r4->unk0.base.counter >>= 1;
}

void sub_08114C44(struct DarkMindTrigger *r3)
{
    r3->unk0.base.flags |= 4;
    if (r3->unk0.base.y > 0x3A00)
        r3->unk0.base.yspeed = 0x80;
    else if (r3->unk0.base.y < 0x2600)
        r3->unk0.base.yspeed = -0xD0;
    else
    {
        r3->unk0.base.yspeed = gUnk_08357ABC[(r3->unk0.unk85 >> 3) & 3];
        ++r3->unk0.unk85;
        if (!--r3->unk0.base.counter)
            sub_081149DC(r3);
    }
}

void sub_08114CBC(struct DarkMindTrigger *r6)
{
    struct DarkMindTrigger *r8 = r6;

    r6->unk0.base.flags |= 4;
    r6->unk0.base.yspeed = gUnk_08357ABC[(r6->unk0.unk85 >> 3) & 3];
    ++r6->unk0.unk85;
    if (r6->unk0.base.x - 0x1000 > r6->unk0.kirby3->base.base.x)
    {
        if (r6->unk0.base.flags & 1)
        {
            r6->unk0.base.xspeed -= 40;
            if (r6->unk0.base.xspeed < -0x240)
                r6->unk0.base.xspeed = -0x240;
            else if (r6->unk0.base.xspeed > 0x240)
                r6->unk0.base.xspeed = 0x240; 
        }
        else
        {
            r6->unk0.base.xspeed += 40;
            if (r6->unk0.base.xspeed > 0x240)
                r6->unk0.base.xspeed = 0x240;
            else if (r6->unk0.base.xspeed < -0x240)
                r6->unk0.base.xspeed = -0x240;
        }
    }
    else if (r6->unk0.base.x + 0x1000 < r6->unk0.kirby3->base.base.x)
    {
        if (r6->unk0.base.flags & 1)
        {
            r6->unk0.base.xspeed += 40;
            if (r6->unk0.base.xspeed < -0x240)
                r6->unk0.base.xspeed = -0x240;
            else if (r6->unk0.base.xspeed > 0x240)
                r6->unk0.base.xspeed = 0x240; 
        }
        else
        {
            r6->unk0.base.xspeed -= 40;
            if (r6->unk0.base.xspeed > 0x240)
                r6->unk0.base.xspeed = 0x240;
            else if (r6->unk0.base.xspeed < -0x240)
                r6->unk0.base.xspeed = -0x240;
        }
    }
    else
    {
        if (r6->unk0.base.xspeed < 0)
        {
            r6->unk0.base.xspeed += 18;
            if (r6->unk0.base.xspeed > 0)
                r6->unk0.base.xspeed = 0;
        }
        else
        {
            r6->unk0.base.xspeed -= 18;
            if (r6->unk0.base.xspeed < 0)
                r6->unk0.base.xspeed = 0;
        }
        if (!r6->unk0.base.xspeed)
            r6->unk0.base.counter = 1;
    }
    if (r6->unk0.base.x < 0x2000)
    {
        r6->unk0.base.x = 0x2000;
        r6->unk0.base.counter = 1;
    }
    if (r6->unk0.base.x > 0xD800)
    {
        r6->unk0.base.x = 0xD800;
        r6->unk0.base.counter = 1;
    }
    if (!--r6->unk0.base.counter)
        sub_08114A4C(r6);
    else if (!(r6->unk0.base.counter & 0x1F) && (Rand16() & 7))
    {
        if (Rand16() & 7)
        {
            sub_08117964(r6, 0, -0x2A0, 0);
            r6->unk0.base.unk55 -= 2;
            r8->unkB4->unk41 = r6->unk0.base.unk55;
            PlaySfx(&r6->unk0.base, 426);
        }
        else
        {
            sub_08117A9C(r6, 0, -0x2A0, 0xC, 0);
            sub_08117A9C(r6, 0, -0x2A0, -0xC, 0);
            r6->unk0.base.xspeed = 0;
            r6->unk0.base.unk55 -= 4;
            r8->unkB4->unk41 = r6->unk0.base.unk55;
            PlaySfx(&r6->unk0.base, 426);
        }
    }
}

void sub_08114FF4(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_081150C0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.unk9E = 8;
    r4->unk0.unk9F = 4;
    r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
    PlaySfx(&r4->unk0.base, 423);
}

void sub_081150C0(struct DarkMindTrigger *r4)
{
    if (r4->unk0.unk9E)
    {
        --r4->unk0.unk9E;
        if (!r4->unk0.base.counter)
        {
            sub_08118A60(r4);
            if (Rand16() & 1)
                r4->unk0.base.xspeed = 0x580;
            else
                r4->unk0.base.xspeed = 0x380;
            if (r4->unk0.base.x > 0x8000)
                r4->unk0.base.xspeed = -r4->unk0.base.xspeed;
        }
    }
    else if (r4->unk0.unk9F)
    {
        --r4->unk0.unk9F;
    }
    else
    {
        if (r4->unk0.base.xspeed < 0)
        {
            r4->unk0.base.xspeed += 0x60;
            if (r4->unk0.base.xspeed > 0)
                r4->unk0.base.xspeed = 0;
        }
        else
        {
            r4->unk0.base.xspeed -= 0x60;
            if (r4->unk0.base.xspeed < 0)
                r4->unk0.base.xspeed = 0;
        }
        if (!r4->unk0.base.xspeed)
            sub_08114AB0(r4);
    }
}

void sub_08115180(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_08115240);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 5;
    r4->unk0.unk9F = 0;
    sub_08118A60(r4);
    PlaySfx(&r4->unk0.base, 384);
}

void sub_08115240(struct DarkMindTrigger *r3)
{
    r3->unk0.base.flags |= 4;
    r3->unk0.base.yspeed -= 0x128;
    if (r3->unk0.base.yspeed < -0x600)
        r3->unk0.base.yspeed = -0x600;
    if (!--r3->unk0.base.counter)
        sub_08118734(r3);
}

void sub_08115284(struct DarkMindTrigger *r2)
{
    r2->unk0.base.flags |= 4;
    r2->unk0.base.yspeed += 0x20;
    if (r2->unk0.base.yspeed > 0x300)
        r2->unk0.base.yspeed = 0x300;
    if (r2->unk0.base.y > 0x8800)
    {
        if (r2->unk0.base.y > 0x9800)
        {
            if (r2->unk0.base.y > 0xA400)
                r2->unk0.base.xspeed = (u32)r2->unk0.base.counter << 1;
            else
                r2->unk0.base.xspeed = r2->unk0.base.counter;
        }
        else
            r2->unk0.base.xspeed = r2->unk0.base.counter >> 1;
    }
    else
        r2->unk0.base.xspeed = 0;
    if (r2->unk0.base.y < 0x2800)
    {
        r2->unk0.base.y = 0x2800;
        r2->unk0.unk85 = 0;
        sub_08114AB0(r2);
    }
}

void sub_0811530C(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_08115370);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 12;
    r4->unk0.unk9F = 0;
    r4->unk0.unk9E = Rand16() & 3;
    if (r4->unk0.unk9E < 2)
        r4->unk0.base.counter = 1;
}

void sub_08115370(struct DarkMindTrigger *r6)
{
    r6->unk0.base.flags |= 4;
    r6->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
    r6->unkB4->unk40 = r6->unk0.base.unk54;
    if (!--r6->unk0.base.counter)
    {
        PlaySfx(&r6->unk0.base, 426);
        switch (r6->unk0.unk9E)
        {
        case 0 ... 1:
            sub_08117964(r6, 0, -0x280, 0);
            ObjectSetFunc(r6, 0, sub_08114CBC);
            r6->unk0.base.xspeed = 0;
            r6->unk0.base.yspeed = 0;
            r6->unk0.base.flags |= 0x40;
            r6->unk0.base.counter = 0x3C;
            r6->unk0.unk9F = 0;
            r6->unk0.kirby3 = sub_0803D46C(&r6->unk0);
            return;
        case 2:
            sub_08117A9C(r6, 0, -0x280, 0xC, 0);
            sub_08117A9C(r6, 0, -0x280, -0xC, 0);
            break;
        default:
            sub_08117A9C(r6, 0xA0, -0x280, 8, 0);
            sub_08117A9C(r6, 0, -0x280, 0, 8);
            sub_08117A9C(r6, -0xA0, -0x280, -8, 0);
            break;
        }
        sub_0811879C(r6);
    }
}

void sub_08115504(struct DarkMindTrigger *r4)
{
    struct DarkMindTrigger *r7 = r4;

    r4->unk0.base.flags |= 4;
    if (r4->unk0.base.counter)
    {
        r4->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
        r7->unkB4->unk40 = r4->unk0.base.unk54;
        if (!--r4->unk0.base.counter)
            r4->unk0.base.yspeed = 0x40;
    }
    else
    {
        if (!(r4->unk0.unk9F & 7))
        {
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0, -0x600, 1);
        }
        r4->unk0.base.unk55 += 2 * (gUnk_0203AD40 & 2);
        r7->unkB4->unk41 = r4->unk0.base.unk55;
        if (!--r4->unk0.unk9F)
        {
            sub_08114BA0(r4);
            r4->unk0.base.counter += 18;
        }
    }
}

void sub_08115638(struct DarkMindTrigger *r4)
{
    struct DarkMindTrigger *r7 = r4;

    r4->unk0.base.flags |= 4;
    if (r4->unk0.base.counter)
    {
        r4->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
        r7->unkB4->unk40 = r4->unk0.base.unk54;
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.yspeed = 0x40;
            if (RandLessThan3())
            {
                if (r4->unk0.base.x >= 0x6000 && (r4->unk0.base.x > 0x9800 || r4->unk0.base.x > r4->unk0.kirby3->base.base.x))
                    r4->unk0.base.xspeed = -0x100;
                else
                    r4->unk0.base.xspeed = 0x100;
            }
            else
            {
                sub_08118A60(r4);
                r4->unk0.unk9F >>= 1;
                if (r4->unk0.base.x < 0x8000)
                    r4->unk0.base.xspeed = 0x240;
                else
                    r4->unk0.base.xspeed = -0x240;
            }
        }
    }
    else
    {
        if (!(r4->unk0.unk9F & 7))
        {
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0, -0x400, 0);
        }
        r4->unk0.base.unk55 += 2 * (gUnk_0203AD40 & 2);
        r7->unkB4->unk41 = r4->unk0.base.unk55;
        if (!--r4->unk0.unk9F)
        {
            sub_08114BA0(r4);
            r4->unk0.base.counter += 18;
        }
    }
}

void sub_08115814(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_0811589C);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 36;
    r4->unk0.unk9E = 0;
    r4->unk0.unk85 = 0;
    if (r4->unk0.unk80 <= gUnk_08351530[0x19][gUnk_0203AD30 - 1] >> 1)
        r4->unk0.unk85 = Rand16() & 1;
}

void sub_0811589C(struct DarkMindTrigger *r4)
{
    struct DarkMindTrigger *r8 = r4;

    r4->unk0.base.flags |= 4;
    switch (r4->unk0.unk9E)
    {
    case 0:
        r4->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
        r8->unkB4->unk40 = r4->unk0.base.unk54;
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.unk9F = 4;
            r4->unk0.unk9E = 1;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0, -0x140, 0);
            r4->unk0.base.counter = 0;
            r4->unk0.base.unk55 -= 4;
            r8->unkB4->unk41 = r4->unk0.base.unk55;
        }
        break;
    case 1:
        if (!--r4->unk0.unk9F)
        {
            r4->unk0.unk9E = 2;
            r4->unk0.base.xspeed = 0x140 << r4->unk0.unk85;
            r4->unk0.unk9F = 8;
        }
        break;
    case 2:
        if (!--r4->unk0.unk9F)
        {
            r4->unk0.base.xspeed = 0;
            r4->unk0.unk9F = 1;
            if (!r4->unk0.base.counter)
            {
                PlaySfx(&r4->unk0.base, 426);
                sub_08117964(r4, 0, -0x190, 0);
                r4->unk0.base.unk55 -= 4;
                r8->unkB4->unk41 = r4->unk0.base.unk55;
            }
            if (++r4->unk0.base.counter > 4)
            {
                r4->unk0.base.xspeed = -0x280u << r4->unk0.unk85;
                r4->unk0.unk9F = 8;
                r4->unk0.unk9E = 3;
                r4->unk0.base.counter = 0;
                sub_08118A60(r4);
            }
        }
        break;
    case 3:
        if (!--r4->unk0.unk9F)
        {
            r4->unk0.base.xspeed = 0;
            r4->unk0.unk9F = 1;
            if (!r4->unk0.base.counter)
            {
                PlaySfx(&r4->unk0.base, 426);
                sub_08117964(r4, 0, -0x218, 0);
                r4->unk0.base.unk55 -= 4;
                r8->unkB4->unk41 = r4->unk0.base.unk55;
            }
            if (++r4->unk0.base.counter > 4)
            {
                r4->unk0.base.xspeed = 0x400 << r4->unk0.unk85;
                r4->unk0.unk9F = 8;
                r4->unk0.unk9E = 4;
                r4->unk0.base.counter = 0;
                sub_08118A60(r4);
            }
        }
        break;
    case 4:
        if (!--r4->unk0.unk9F)
        {
            r4->unk0.base.xspeed = 0;
            r4->unk0.unk9F = 1;
            if (!r4->unk0.base.counter)
            {
                PlaySfx(&r4->unk0.base, 426);
                sub_08117964(r4, 0, -0x340, 0);
                r4->unk0.base.unk55 -= 4;
                r8->unkB4->unk41 = r4->unk0.base.unk55;
            }
            if (++r4->unk0.base.counter > 4)
            {
                r4->unk0.base.xspeed = -0x580u << r4->unk0.unk85;
                r4->unk0.unk9F = 8;
                r4->unk0.unk9E = 5;
                r4->unk0.base.counter = 0;
                sub_08118A60(r4);
            }
        }
        break;
    case 5:
        if (!--r4->unk0.unk9F)
        {
            r4->unk0.base.xspeed = 0;
            r4->unk0.unk9F = 1;
            if (!r4->unk0.base.counter)
            {
                PlaySfx(&r4->unk0.base, 426);
                sub_08117964(r4, 0, -0x640, 0);
                r4->unk0.base.unk55 -= 4;
                r8->unkB4->unk41 = r4->unk0.base.unk55;
            }
            if (++r4->unk0.base.counter > 4)
            {
                r4->unk0.base.xspeed = 0x100 << r4->unk0.unk85;
                r4->unk0.unk9F = 16;
                r4->unk0.unk9E = 6;
            }
        }
        break;
    case 6:
        if (!--r4->unk0.unk9F)
        {
            r4->unk0.base.xspeed = 0;
            sub_08114BA0(r4);
        }
        break;
    }
}

void sub_08115E2C(struct DarkMindTrigger *r4)
{
    struct DarkMindTrigger *r3 = r4;

    r4->unk0.base.flags |= 4;
    switch (r4->unk0.unk9E)
    {
    case 0:
        r4->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
        r3->unkB4->unk40 = r4->unk0.base.unk54;
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 8;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0x26D, -0x168, 0);
        }
        break;
    case 1:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 4;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0x1FD, -0x1FD, 0);
        }
        break;
    case 2:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 4;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0, -0x2D0, 0);
        }
        break;
    case 3:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 4;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, -0x1FD, -0x1FD, 0);
        }
        break;
    case 4:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 0x10;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, -0x26D, -0x168, 0);
        }
        break;
    case 5:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 4;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, -0x1FD, -0x1FD, 0);
        }
        break;
    case 6:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 4;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0, -0x2D0, 0);
        }
        break;
    case 7:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 4;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0x1FD, -0x1FD, 0);
        }
        break;
    case 8:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.counter = 4;
            ++r4->unk0.unk9E;
            PlaySfx(&r4->unk0.base, 426);
            sub_08117964(r4, 0x26D, -0x168, 0);
        }
        break;
    case 9:
        if (!--r4->unk0.base.counter)
        {
            r4->unk0.base.xspeed = 0;
            sub_08114BA0(r4);
        }
        break;
    }
}

void sub_0811643C(struct DarkMindTrigger *r4)
{
    struct Kirby *kirby;

    if (!Macro_0810B1F4(&r4->unk0.base))
    {
        if (r4->unkBA != r4->unk0.unk80)
        {
            sub_080860A8(&r4->unk0, gUnk_08357ACC);
            sub_08117C84(r4);
            sub_08117C84(r4);
            sub_08034E14(&r4->unk0);
        }
        r4->unkBA = r4->unk0.unk80;
        if (r4->unk0.base.flags & 0x40000)
        {
            kirby = r4->unk0.base.kirby1;
            sub_08034E14(&r4->unk0);
            if (!kirby->base.base.unk0 && ~(kirby->base.base.unk5C & ~7) & 0x80 && (kirby->base.base.unk5C & 7) < 4)
            {
                sub_08052E2C(&kirby->base);
                sub_080860A8(&r4->unk0, gUnk_08357AD4);
            }
        }
    }
}

void sub_081164E0(struct DarkMindTrigger *r6)
{
    struct DarkMindTrigger *r4 = r6;
    struct Kirby *kirby;

    if (r6->unk0.unk78 != sub_08116E74 && gUnk_0203AD10 & 0x40)
        sub_08116DE4(r6);
    if (!Macro_0810B1F4(&r4->unk0.base))
    {
        sub_08116C54(r4);
        if (r4->unk0.base.flags & 0x40000)
        {
            kirby = r4->unk0.base.kirby1;
            if (!kirby->base.base.unk0)
            {
                if (~(kirby->base.base.unk5C & ~7) & 0x80 && (kirby->base.base.unk5C & 7) < 4)
                    sub_08052E2C(&kirby->base);
            }
            else
            {
                sub_08117C84(r4);
                sub_08117C84(r4);
                PlaySfx(&r4->unk0.base, 432);
                if (!(gUnk_0203AD10 & 0x20))
                    sub_0806FE64(3, &r4->unk0);
                else if (++r6->unkBE >= 10)
                {
                    ++r6->unkBF;
                    r6->unkBE -= 10;
                    if (r6->unkBF >= 10)
                    {
                        ++r6->unkC0;
                        r6->unkBF -= 10;
                        if (r6->unkC0 >= 10)
                            r6->unkC0 -= 10;
                    }
                }
            }
        }
    }
}

void sub_08116654(struct DarkMindTrigger *r4)
{
    r4->unk0.base.flags |= 4;
    r4->unk0.base.unk54 = gUnk_08357B14[(r4->unk0.base.counter >> 2) & 3];
    r4->unk0.base.unk55 = gUnk_08357B14[((r4->unk0.base.counter + 1) >> 2) & 3];
    r4->unkB4->unk40 = r4->unk0.base.unk54;
    r4->unkB4->unk41 = r4->unk0.base.unk55;
    if (!(r4->unk0.base.counter & 0x1F))
        PlaySfx(&r4->unk0.base, 595);
    ++r4->unk0.base.counter;
    if (!r4->unk0.unk9E)
    {
        ++r4->unk0.unk9F;
        if (!gUnk_083573F0[r4->unk0.unk9F].unk8)
            --r4->unk0.unk9F;
        r4->unk0.unk9E = gUnk_083573F0[r4->unk0.unk9F].unk8;
        if (gUnk_083573F0[r4->unk0.unk9F].unk9 != 0xFF)
            r4->unk0.unk83 = gUnk_083573F0[r4->unk0.unk9F].unk9;
        if (r4->unk0.unk9F)
        {
            if (gUnk_083573F0[r4->unk0.unk9F].unk0 != gUnk_083573F0[r4->unk0.unk9F - 1].unk0)
                r4->unk0.base.xspeed = gUnk_083573F0[r4->unk0.unk9F].unk0;
            if (gUnk_083573F0[r4->unk0.unk9F].unk2 != gUnk_083573F0[r4->unk0.unk9F - 1].unk2)
                r4->unk0.base.yspeed = gUnk_083573F0[r4->unk0.unk9F].unk2;
        }
        else
        {
            r4->unk0.base.yspeed = gUnk_083573F0[r4->unk0.unk9F].unk2;
            r4->unk0.base.xspeed = gUnk_083573F0[r4->unk0.unk9F].unk0;
        }
    }
    r4->unk0.base.xspeed += gUnk_083573F0[r4->unk0.unk9F].unk4;
    r4->unk0.base.yspeed += gUnk_083573F0[r4->unk0.unk9F].unk6;
    --r4->unk0.unk9E;
    if (r4->unk0.unk83 == 1 && r4->unk0.unk9E == 1)
        PlaySfx(&r4->unk0.base, 576);
    if (!gUnk_083573F0[(u8)(r4->unk0.unk9F + 1)].unk8 && !r4->unk0.unk9E)
    {
        sub_080700D8(&r4->unk0);
        r4->unk0.base.flags |= 0x1000;
    }
}

void sub_08116920(struct DarkMindTrigger *r5)
{
    u8 r7 = 0, i;
    struct Kirby *kirby;

    r5->unk0.base.flags |= 4;
    if (++r5->unk0.base.counter > 4)
    {
        for (i = 0; i < gUnk_0203AD44; ++i)
        {
            kirby = gKirbys + i;
            if (kirby->hp > 0 && kirby->base.base.unk60__42 == r5->unk0.base.unk60__42)
            {
                sub_080525C0(kirby);
                sub_080531B4(kirby, gUnk_08D6112C[r7]);
                kirby->base.base.flags &= ~1;
                kirby->base.base.x = gUnk_083573D0[r7][0];
                kirby->base.base.y = gUnk_083573D0[r7][1];
                ++r7;
            }
        }
        sub_08118928(r5);
    }
}

void sub_081169E4(struct DarkMindTrigger *ip)
{
    ip->unk0.base.flags |= 4;
    if (!ip->unk0.unk9E)
    {
        ++ip->unk0.unk9F;
        if (!gUnk_08357648[ip->unk0.unk9F].unk8)
            --ip->unk0.unk9F;
        ip->unk0.unk9E = gUnk_08357648[ip->unk0.unk9F].unk8;
        if (gUnk_08357648[ip->unk0.unk9F].unk9 != 0xFF)
            ip->unk0.unk83 = gUnk_08357648[ip->unk0.unk9F].unk9;
        if (ip->unk0.unk9F)
        {
            if (gUnk_08357648[ip->unk0.unk9F].unk0 != gUnk_08357648[ip->unk0.unk9F - 1].unk0)
                ip->unk0.base.xspeed = gUnk_08357648[ip->unk0.unk9F].unk0;
            if (gUnk_08357648[ip->unk0.unk9F].unk2 != gUnk_08357648[ip->unk0.unk9F - 1].unk2)
                ip->unk0.base.yspeed = gUnk_08357648[ip->unk0.unk9F].unk2;
        }
        else
        {
            ip->unk0.base.yspeed = gUnk_08357648[ip->unk0.unk9F].unk2;
            ip->unk0.base.xspeed = gUnk_08357648[ip->unk0.unk9F].unk0;
        }
    }
    ip->unk0.base.xspeed += gUnk_08357648[ip->unk0.unk9F].unk4;
    ip->unk0.base.yspeed += gUnk_08357648[ip->unk0.unk9F].unk6;
    --ip->unk0.unk9E;
    if (!gUnk_08357648[(u8)(ip->unk0.unk9F + 1)].unk8 && !ip->unk0.unk9E)
        sub_08116BC0(ip);
    else if (++ip->unk0.base.counter == 0x9E)
        PlaySfx(&ip->unk0.base, 513);
}

void sub_08116BC0(struct DarkMindTrigger *r5)
{
    struct Kirby *kirby;
    struct Object5 *r1;
    u8 i;

    ObjectSetFunc(r5, 0, sub_08118964);
    r5->unk0.base.xspeed = 0;
    r5->unk0.base.yspeed = 0;
    r5->unk0.base.counter = 0x40;
    r5->unk0.base.flags |= 0x40;
    r1 = sub_08034E14(&r5->unk0);
    if (r1)
        r1->unk9 = 0;
    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        kirby = &gKirbys[i];
        if (kirby->hp > 0 && kirby->base.base.unk60__42 == r5->unk0.base.unk60__42)
        {
            sub_08052BB4(kirby);
            kirby->base.base.yspeed = 0;
        }
    }
}

void sub_08116C54(struct DarkMindTrigger *r6)
{
    struct Object4 *r0;

    r6->unk0.base.unk54 = gUnk_08357B14[(r6->unkBC >> 2) & 3];
    r6->unk0.base.unk55 = gUnk_08357B14[((r6->unkBC + 1) >> 2) & 3];
    r6->unkB4->unk40 = r6->unk0.base.unk54;
    r6->unkB4->unk41 = r6->unk0.base.unk55;
    if (!(r6->unkBC & 7))
    {
        r0 = sub_0808AE30(&r6->unk0, 0, 0x298, Rand16() & 1);
        r0->unk34 += ((0x10 - (Rand16() & 0x1F)) * 0x100);
        r0->unk38 += ((0x10 - (Rand16() & 0x1F)) * 0x100);
        sub_08117F6C(r6);
    }
    if (!(r6->unkBC & 0xF))
    {
        sub_08117C84(r6);
        if (!(Rand16() & 3))
        {
            r0 = sub_0808AE30(&r6->unk0, 0, 0x292, Rand16() % 4);
            r0->unk34 += ((0x10 - (Rand16() & 0x1F)) * 0x100);
            r0->unk38 += ((0x10 - (Rand16() & 0x1F)) * 0x100);
        }
        if (!(Rand16() & 3))
            sub_08117C84(r6);
    }
    ++r6->unkBC;
}

void sub_08116DE4(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_08116E74);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags &= ~0x10000000;
    r4->unk0.base.xspeed = (0x8000 - r4->unk0.base.x) >> 5;
    r4->unk0.base.yspeed = (r4->unk0.base.y - 0x4A00) >> 5;
    if (r4->unk0.base.xspeed > 0xC0)
        r4->unk0.base.xspeed = 0xC0;
    else if (r4->unk0.base.xspeed < -0xC0)
        r4->unk0.base.xspeed = -0xC0;
    if (r4->unk0.base.yspeed > 0xC0)
        r4->unk0.base.yspeed = 0xC0;
    else if (r4->unk0.base.yspeed < -0xC0)
        r4->unk0.base.yspeed = -0xC0;
    m4aMPlayFadeOut(&gUnk_030016A0, 0x10);
}

void sub_08116E74(struct DarkMindTrigger *r4)
{
    struct DarkMindTrigger *r5 = r4;

    r4->unk0.base.flags |= 4;
    r4->unk0.base.unk54 = gUnk_08357B14[(r4->unk0.base.counter >> 2) & 3];
    r4->unk0.base.unk55 = gUnk_08357B14[((r4->unk0.base.counter + 1) >> 2) & 3];
    r5->unkB4->unk40 = r4->unk0.base.unk54;
    r5->unkB4->unk41 = r4->unk0.base.unk55;
    sub_08116C54(r4);
    if (r4->unk0.base.xspeed)
    {
        if (r4->unk0.base.xspeed > 0)
        {
            if (r4->unk0.base.x >= 0x8000)
            {
                r4->unk0.base.x = 0x8000;
                r4->unk0.base.xspeed = 0;
            }
        }
        else if (r4->unk0.base.xspeed < 0)
        {
            if (r4->unk0.base.x <= 0x8000)
            {
                r4->unk0.base.x = 0x8000;
                r4->unk0.base.xspeed = 0;
            }
        }
    }
    if (r4->unk0.base.yspeed)
    {
        if (r4->unk0.base.yspeed > 0)
        {
            if (r4->unk0.base.y <= 0x4A00)
            {
                r4->unk0.base.y = 0x4A00;
                r4->unk0.base.yspeed = 0;
            }
        }
        else if (r4->unk0.base.yspeed < 0)
        {
            if (r4->unk0.base.y >= 0x4A00)
            {
                r4->unk0.base.y = 0x4A00;
                r4->unk0.base.yspeed = 0;
            }
        }
    }
    if (r4->unk0.base.counter >= 300)
        r4->unk0.unk7C = NULL;
    if ((r4->unk0.base.flags & 0x40000 && r4->unk0.base.counter > 300)
        || r4->unk0.base.counter > 480)
    {
        r4->unk0.base.unk54 = 0;
        r4->unk0.base.unk55 = 0;
        r5->unkB4->unk40 = r4->unk0.base.unk54;
        r5->unkB4->unk41 = r4->unk0.base.unk55;
        sub_08116FFC(r4);
        if (r4->unk0.base.flags & 0x40000)
        {
            r5->unkBF += 3;
            if (r5->unkBF >= 10)
            {
                ++r5->unkC0;
                r5->unkBF -= 10;
                if (r5->unkC0 >= 10)
                    r5->unkC0 -= 10;
            }
        }
    }
    else if (r4->unk0.base.x == 0x8000 && r4->unk0.base.y == 0x4A00)
    {
        r4->unk0.base.xspeed = 0;
        r4->unk0.base.yspeed = 0;
        ++r4->unk0.base.counter;
    }
}

void sub_08116FFC(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_08118A00);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.unk7C = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags |= 8;
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags |= 0x2000;
    sub_08033540(r4->unk0.base.unk56);
    sub_080860A8(&r4->unk0, gUnk_08350E34);
    PlaySfx(&r4->unk0.base, 380);
}

void sub_081170D0(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_08118A1C);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x400;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.flags |= 0x200;
    r4->unk0.base.flags &= ~0x2000;
    sub_080335B4(r4->unk0.base.unk56);
    sub_0806FE64(3, &r4->unk0);
    sub_08098184(&r4->unk0);
    sub_0808AE30(&r4->unk0, 0, 0x299, 0);
    PlaySfx(&r4->unk0.base, 379);
}

struct Object4 *sub_081171BC(struct DarkMindTrigger *r5)
{
    struct Task *t = TaskCreate(sub_08117298, sizeof(struct Object4), 0x3500, 0, sub_0803DCCC);
    struct Object4 *r0, *r4 = TaskGetStructPtr(t, r0);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->unk0.base.x;
    r4->unk38 = r5->unk0.base.y;
    r4->unk44 = &r5->unk0;
    r4->unk60__42 = r5->unk0.base.unk60__42;
    sub_080709F8(r4, &r4->unkC, 42, 0x39C, 2, 26);
    r4->unkC.unk1F = 0;
    Macro_081050E8(r4, &r4->unkC, 0x39C, 1);
    return r4;
}

void sub_08117298(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r7 = r5->unk44, *r3;

    if (r5->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (r7->base.flags & 0x1000)
        r5->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(r5, &r5->unkC, &sprite, 42, &r5->unkC);
        Macro_081050E8(r5, &r5->unkC, 0x39C, !r5->unkC.unk1F);
        r5->flags &= ~0x405;
        r5->flags |= r7->base.flags & 0x404;
        r5->flags |= (r7->base.flags ^ 1) & 1;
        r5->unk60__42 = r7->base.unk60__42;
        r5->unk34 = r7->base.x;
        r5->unk38 = r7->base.y;
        r3 = r5->unk44;
        if (r3)
        {
            if (r3->base.unk0 && r3->base.flags & 0x1000)
            {
                r5->unk44 = NULL;
                r3 = NULL;
            }
            if (!r3)
                goto _081174AC;
            if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000))
            {
                sub_0803DBC8(r5);
                return;
            }
        }
        else
        {
        _081174AC:
            KirbySomething(r5);
        }
        sub_0806FAC8(r5);
    }
}

void sub_08117530(void)
{
    struct Object4 *r0, *r7 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *sl = r7->unk44;
    struct DarkMindTrigger *sp00 = r7->unk44;

    if (r7->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (sl->base.flags & 0x1000)
        r7->flags |= 0x1000;
    else
    {
        if (!Macro_0810B1F4(&sl->base) || !(sl->base.flags & 0x2000))
            ++r7->unk4;
        if (r7->unk4 > 6 && !sl->base.xspeed && !sl->base.yspeed)
            r7->flags |= 0x1000;
        if (r7->unk4 & 1)
        {
            r7->unk34 = sl->base.x;
            r7->unk38 = sl->base.y;
            r7->unkC.unk0 = sl->base.unk10.unk0;
            r7->unkC.unk4 = sl->base.unk10.unk4;
            r7->unkC.unk8 = sl->base.unk10.unk8;
            r7->unkC.unkC = sl->base.unk10.unkC;
            r7->unkC.unkE = sl->base.unk10.unkE;
            r7->unkC.unk14 = 0x6C0;
            r7->unkC.unk16 = sl->base.unk10.unk16;
            r7->unkC.unk1A = sl->base.unk10.unk1A;
            r7->unkC.unk1B = sl->base.unk10.unk1B;
            r7->unkC.unk1C = sl->base.unk10.unk1C;
            r7->unkC.unk1D = sl->base.unk10.unk1D;
            r7->unkC.unk1E = sl->base.unk10.unk1E;
            r7->unkC.unk1F = sl->base.unk10.unk1F;
            Macro_08108368(r7, 0, 0);
            r7->unk34 = sl->base.unk48;
            r7->unk38 = sl->base.unk4C;
            r7->unkC.unk14 = 0x700;
            Macro_08108368(r7, 0, 0);
            r7->unk34 = sl->base.x;
            r7->unk38 = sl->base.y;
            r7->unkC.unk0 = sp00->unkB4->unkC.unk0;
            r7->unkC.unk4 = sp00->unkB4->unkC.unk4;
            r7->unkC.unk8 = sp00->unkB4->unkC.unk8;
            r7->unkC.unkC = sp00->unkB4->unkC.unkC;
            r7->unkC.unkE = sp00->unkB4->unkC.unkE;
            r7->unkC.unk14 = 0x6C0;
            r7->unkC.unk16 = sp00->unkB4->unkC.unk16;
            r7->unkC.unk1A = sp00->unkB4->unkC.unk1A;
            r7->unkC.unk1B = sp00->unkB4->unkC.unk1B;
            r7->unkC.unk1C = sp00->unkB4->unkC.unk1C;
            r7->unkC.unk1D = sp00->unkB4->unkC.unk1D;
            r7->unkC.unk1E = sp00->unkB4->unkC.unk1E;
            r7->unkC.unk1F = sp00->unkB4->unkC.unk1F;
            Macro_08108368(r7, 0, 0);
            r7->unk34 = sl->base.unk48;
            r7->unk38 = sl->base.unk4C;
            r7->unkC.unk14 = 0x700;
            Macro_08108368(r7, 0, 0);
        }
    }
}

void sub_08117964(struct DarkMindTrigger *r5, s16 a2, s16 a3, u8 a4)
{
    struct DarkMindTrigger *ip = r5;
    s32 r7, sp00;
    struct Object2 *r4;
    s16 r1;

    if (r5->unk0.base.flags & 1) // useless condition
        r7 = r5->unk0.base.x >> 8;
    else
        r7 = r5->unk0.base.x >> 8;
    sp00 = (r5->unk0.base.y >> 8) + 8;
    if (a4)
    {
        r1 = 15 - (Rand16() & 0x1F);
        r7 += r1;
        a2 += 0x10 * r1;
    }
    r4 = Macro_081059A8_2(&r5->unk0, r7, sp00, OBJ_UNKNOWN_D4, 0, ip->unk0.subtype);
    r4->base.parent = r5;
    sub_08118600(r4, a2, a3);
    if (r5->unk0.unk78 != sub_08115E2C)
        sub_08106AD0(r4);
}

void sub_08117A9C(struct DarkMindTrigger *r6, s16 a2, s16 a3, s8 a4, s8 a5)
{
    struct Object2 *r4 = &r6->unk0;
    s32 ip, sl;
    struct Object2 *r0;
    s16 r1;

    if (r6->unk0.base.flags & 1)
        ip = (r6->unk0.base.x >> 8) - a4;
    else
        ip = (r6->unk0.base.x >> 8) + a4;
    sl = (r6->unk0.base.y >> 8) + a5;
    r4 = Macro_081059A8(&r6->unk0, ip, sl, OBJ_UNKNOWN_D4, 0, r4->subtype);
    sub_08118600(r4, a2, a3);
    sub_08106AD0(r4);
}

void *sub_08117BBC(struct Object *r5, u8 r4)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r6 = TaskGetStructPtr(t, r6);

    InitObject(r6, r5, r4);
    r6->base.flags |= 0x40;
    r6->base.unkC |= 1;
    r6->base.unkC |= 4;
    r6->base.unkC |= 2;
    r6->base.unk5C &= ~7;
    r6->base.unk5C |= 3;
    r6->base.unk68 &= ~7;
    r6->base.unk5C |= 0x100000 | 0x8000 | 0x80 | 0x20;
    r6->unk9E = 0;
    r6->unk7C = sub_08118AD4;
    sub_0803E2B0(&r6->base, -4, -4, 4, 4);
    sub_0803E308(&r6->base, -4, -4, 4, 4);
    ObjectInitSprite(r6);
    r6->base.unk10.unk14 = 0x240;
    return r6;
}

void sub_08117C84(struct DarkMindTrigger *r4)
{
    struct Task *t = TaskCreate(sub_08117DA0, sizeof(struct Object4), 0x3500, 0, sub_0803DCCC);
    struct Object4 *r0, *r7 = TaskGetStructPtr(t, r0);
    u16 r4_;
    u32 a, b;

    sub_0803E3B0(r7);
    r7->unk0 = 3;
    r7->unk34 = r4->unk0.base.x;
    r7->unk38 = r4->unk0.base.y;
    r7->unk44 = r4;
    r7->unk60__42 = r4->unk0.base.unk60__42;
#ifdef NONMATCHING
    r7->unk3E = -0x80 - (Rand16() & 0x3F);
#else
    b = Rand16();
    a = 0x3F;
    b &= a;
    a-= 0xBF;
    r7->unk3E = a - b;
#endif
    r7->unk34 += ((0x10 - (Rand16() & 0x1F)) * 0x100);
    r7->unk38 += ((0x10 - (Rand16() & 0x1F)) * 0x100);
    switch (Rand16() & 3)
    {
    default:
        r4_ = 9;
        break;
    case 2:
        r4_ = 10;
        break;
    case 3:
        r4_ = 11;
        break;
    }
    r7->flags |= 0x4000;
    sub_080709F8(r7, &r7->unkC, 0x6012000, 0x291, r4_, 6);
}

void sub_08117DA0(void)
{
    struct Object2 *r1;
    struct Object4 *r0, *r3 = TaskGetStructPtr(gCurTask, r0);

    if (r3->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        r1 = r3->unk44;
        if (r1)
        {
            if (r1->base.unk0 && r1->base.flags & 0x1000)
            {
                r3->unk44 = NULL;
                r1 = NULL;
            }
            if (!r1)
                goto _08117E38;
            if (Macro_0810B1F4(&r1->base) && !(r3->flags & 0x2000))
            {
                sub_0803DBC8(r3);
                return;
            }
        }
        else
        {
        _08117E38:
            KirbySomething(r3);
        }
        Macro_0809E55C(r3);
        r3->flags |= 4;
        r3->unk3E -= 0x10;
        if (++r3->unk4 > 0x18)
            r3->flags |= 0x1000;
        else
        {
            if (!(r3->flags & 0x800))
            {
                r3->unk34 += r3->unk3C;
                r3->unk38 -= r3->unk3E;
            }
            sub_0806FAC8(r3);
        }
    }
}

void sub_08117F6C(struct DarkMindTrigger *r4)
{
    struct Task *t = TaskCreate(sub_08118064, sizeof(struct Object4), 0x3500, 0, sub_0803DCCC);
    struct Object4 *r7 = TaskGetStructPtr(t, r7);
    u32 v;

    sub_0803E3B0(r7);
    r7->unk0 = 3;
    r7->unk34 = r4->unk0.base.x;
    r7->unk38 = r4->unk0.base.y;
    r7->unk44 = r4;
    r7->unk60__42 = r4->unk0.base.unk60__42;
    r7->unk3E = (Rand16() & 0x3F);
    v = 0x200;
    r7->unk3E += v;
    r7->unk34 += ((0x10 - (Rand16() & 0x1F)) * 0x100);
    r7->unk38 += ((8 - (Rand16() & 0x1F)) * 0x100);
    r7->flags |= 0x4000;
    sub_080709F8(r7, &r7->unkC, 0x6012000, 0x2A6, 0, 6);
}

void sub_08118064(void)
{
    struct Object2 *r1;
    struct Object4 *r0, *r3 = TaskGetStructPtr(gCurTask, r0);

    if (r3->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        r1 = r3->unk44;
        if (r1)
        {
            if (r1->base.unk0 && r1->base.flags & 0x1000)
            {
                r3->unk44 = NULL;
                r1 = NULL;
            }
            if (!r1)
                goto _081180F8;
            if (Macro_0810B1F4(&r1->base) && !(r3->flags & 0x2000))
            {
                sub_0803DBC8(r3);
                return;
            }
        }
        else
        {
        _081180F8:
            KirbySomething(r3);
        }
        Macro_0809E55C(r3);
        r3->flags |= 4;
        r3->unk3E -= 0xC;
        if (r3->flags & 2)
            r3->flags |= 0x1000;
        else
        {
            if (!(r3->flags & 0x800))
            {
                r3->unk34 += r3->unk3C;
                r3->unk38 -= r3->unk3E;
            }
            sub_0806FAC8(r3);
        }
    }
}

void sub_08118220(struct DarkMindTrigger *r5, u8 r6)
{
    struct Task *t = TaskCreate(sub_08118310, sizeof(struct Object4), 0x3500, 0, sub_0803DCCC);
    struct Object4 *r4 = TaskGetStructPtr(t, r4);
    u32 v;

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->unk0.base.x;
    r4->unk38 = r5->unk0.base.y;
    r4->unk44 = r5;
    r4->unk60__42 = r5->unk0.base.unk60__42;
    r4->unk34 = (0xE0 - 0xA * r6) * 0x100;
    r4->unk38 = 0xA000;
    r4->unk8 = r6;
    sub_080709F8(r4, &r4->unkC, 2, 0x389, 2, 0);
    r4->unkC.unk1F = 0;
    Macro_081050E8(r4, &r4->unkC, 0x389, 1);
}

void sub_08118310(void)
{
    struct Sprite sprite;
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct DarkMindTrigger *r6 = r5->unk44, *r1;

    if (r5->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        r1 = r5->unk44;
        if (r1)
        {
            if (r1->unk0.base.unk0 && r1->unk0.base.flags & 0x1000)
            {
                r5->unk44 = NULL;
                r1 = NULL;
            }
            if (!r1)
                goto _081183AC;
            if (Macro_0810B1F4(&r1->unk0.base) && !(r5->flags & 0x2000))
            {
                sub_0803DBC8(r5);
                return;
            }
        }
        else
        {
        _081183AC:
            KirbySomething(r5);
        }
        Macro_0809E55C(r5);
        Macro_08107BA8_4(r5, &r5->unkC, &sprite, 2, &r5->unkC);
        Macro_081050E8(r5, &r5->unkC, 0x389, !r5->unkC.unk1F);
        switch (r5->unk8)
        {
        default:
            r5->unkC.unk1A = r6->unkBE + 2;
            break;
        case 1:
            r5->unkC.unk1A = r6->unkBF + 2;
            break;
        case 2:
            r5->unkC.unk1A = r6->unkC0 + 2;
            break;
        }
        sub_0806FAC8(r5);
    }
}

void sub_08118600(struct Object2 *r5, s16 r4, s16 r6)
{
    ObjectSetFunc(r5, 0, sub_08118AC8);
    Rand32();
    r5->unk83 += (gRngVal >> 16) & 3;
    r5->base.xspeed = r4;
    r5->base.yspeed = r6;
    r5->base.flags |= 0x100;
    if (!r4 && !r6)
        r5->base.flags &= ~0x40;
    r5->unk9F = 0;
}

void sub_08118678(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_08114CBC);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 0x3C;
    r4->unk0.unk9F = 0;
    r4->unk0.kirby3 = sub_0803D46C(&r4->unk0);
}

void sub_081186B8(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_081186F0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0x40;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 0x1C;
    r4->unk0.unk9F = 0;
}

void sub_081186F0(struct DarkMindTrigger *r3)
{
    r3->unk0.base.flags |= 4;
    r3->unk0.base.unk54 += 2 * (gUnk_0203AD40 & 2);
    r3->unkB4->unk40 = r3->unk0.base.unk54;
    if (!--r3->unk0.base.counter)
        sub_08115180(r3);
}

void sub_08118734(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_08115284);
    r4->unk0.base.xspeed = 0;
    if (Rand16() & 1)
    {
        if (r4->unk0.base.x < 0x7800)
            r4->unk0.base.counter = 0x120;
        else
            r4->unk0.base.counter = -0x120;
    }
    r4->unk0.base.flags |= 0x40;
}

void sub_0811879C(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_081187D0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 0xC;
    r4->unk0.unk9F = 0;
}

void sub_081187D0(struct DarkMindTrigger *r2)
{
    r2->unk0.base.flags |= 4;
    if (!--r2->unk0.base.counter)
        sub_08114BA0(r2);
}

void sub_081187F4(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_08115504);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 0x24;
    r4->unk0.unk9F = 0x40;
}

void sub_08118828(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_08115638);
    r4->unk0.kirby3 = sub_0803D368(&r4->unk0);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 0x24;
    r4->unk0.unk9F = 0x40;
}

void sub_08118868(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 1, sub_08115E2C);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.base.counter = 0x24;
    r4->unk0.unk9E = 0;
}

void sub_0811889C(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_08116654);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.x = 0x7800;
    r4->unk0.base.y = 0x5800;
    r4->unk0.base.flags |= 0x40;
    sub_080700D8(&r4->unk0);
    sub_0806FE64(4, &r4->unk0);
    r4->unk0.base.unk10.unk14 = 0x300;
    r4->unkB4->unkC.unk14 = 0x300;
}

void sub_081188EC(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_08116920);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.x = 0x6800;
    r4->unk0.base.y = -0x1400;
    r4->unk0.base.counter = 0;
    r4->unk0.base.flags |= 0x40;
}

void sub_08118928(struct DarkMindTrigger *r4)
{
    ObjectSetFunc(r4, 0, sub_081169E4);
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.counter = 0;
    r4->unk0.base.x = 0x6800;
    r4->unk0.base.y = -0x1400;
    r4->unk0.base.flags |= 0x40;
}

void sub_08118964(struct DarkMindTrigger *r2)
{
    r2->unk0.base.flags |= 4;
    if (!--r2->unk0.base.counter)
    {
        r2->unk0.base.flags &= ~0x200;
        sub_08114BA0(r2);
    }
}

void sub_08118990(struct DarkMindTrigger *r4)
{
    r4->unk0.base.xspeed = 0;
    r4->unk0.base.yspeed = 0;
    r4->unk0.base.flags |= 0x40;
    r4->unk0.unk80 = 1;
    r4->unk0.base.unk5C &= ~7;
    r4->unk0.base.unk5C |= 7; // ???
    r4->unk0.unk7C = sub_081164E0;
    if (gUnk_0203AD10 & 4)
    {
        gUnk_0203AD10 |= 0x40;
    }
    else
    {
        gUnk_0203AD10 |= 0x20;
        sub_08118220(r4, 0);
        sub_08118220(r4, 1);
        sub_08118220(r4, 2);
    }
}

void sub_08118A00(struct DarkMindTrigger *r1)
{
    if (++r1->unk0.base.counter > 0x40)
        sub_081170D0(r1);
}

void sub_08118A1C(struct DarkMindTrigger *r0)
{
    r0->unk0.base.flags |= 4;
    if (++r0->unk0.base.counter > 300)
    {
        if (gUnk_0203AD10 & 4)
            sub_08020428(sub_08025A80);
        else
            sub_08020428(sub_0802B4A8);
    }
}

void sub_08118A60(struct DarkMindTrigger *r5)
{
    struct Task *t = TaskCreate(sub_08117530, sizeof(struct Object4), 0xFFF, 0, NULL);
    struct Object4 *r4 = TaskGetStructPtr(t, r4);
    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r5->unk0.base.x;
    r4->unk38 = r5->unk0.base.y;
    r4->unk44 = r5;
    r4->unk60__42 = r5->unk0.base.unk60__42;
}

void sub_08118AC8(struct Object2 *r0)
{
    r0->base.flags |= 4;
}

void sub_08118AD4(struct Object2 *r4)
{
    struct Kirby *kirby;

    sub_0809F840(r4);
    if (!Macro_0810B1F4(&r4->base))
    {
        if (r4->base.flags & 0x40000)
        {
            kirby = r4->base.kirby1;
            if (!kirby->base.base.unk0 && ~(kirby->base.base.unk5C & ~7) & 0x80 && (kirby->base.base.unk5C & 7) <= 3)
            {
                sub_08052E2C(&kirby->base);
                if (!(gUnk_0203AD10 & 0x60))
                    sub_080860A8(r4, gUnk_08357AD4);
            }
        }
    }
}
