#include "pause_area_map.h"
#include "code_08124BE0.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_fade.h"
#include "pause_world_map.h"
#include "subgames.h"
#include "treasures.h"

static void sub_08127FCC(void);
static void sub_0812824C(void);

extern const u16 gUnk_0835ADCC[0x40];  // Remaining 0x80 bytes -> perhaps multidimensional array
extern const u32 gUnk_0835AECC[0x1000];
extern const u16 gUnk_083610E8[2];
extern const u16 gUnk_083610EC[0x72];
extern const u32 gUnk_08D612E4[4][0x40];
extern const u32 gUnk_08D616E4[0x100];
extern const u8 gUnk_08D61B20[0x1c];

// Holds indices to AreaMap-UI tiles for sub_08128868 to override with empty tiles:
// index 0 & 2: B-QUIT
// index 1: A-ZOOM
// index 3: <<L
// index 4: R>>
extern const u16 gUnk_08D61220[5][4];

#define UnkAreaMapSprite_30_Init(_mapsprite, _animId, _variant, _x, _y, _unk28, _unk2A)                               \
    {                                                                                                                 \
        SpriteInitNoFunc(&(_mapsprite)->unk0, 0x06012000, 0x1c0, (_animId), (_variant), 0, 0xff, 0x10, 8, (_x), (_y), \
                         0xc0000);                                                                                    \
        (_mapsprite)->unk28 = (_unk28);                                                                               \
        (_mapsprite)->unk2A = (_unk2A);                                                                               \
        (_mapsprite)->unk2C = 0;                                                                                      \
        (_mapsprite)->unk2E = 0;                                                                                      \
    }

#define check_unk6E0(_unk6E0)                                                                               \
    ({                                                                                                      \
        if ((_unk6E0)->unk8 <= gUnk_083611F1[(_unk6E0)->unk6][0] * 8) {                                     \
            (_unk6E0)->unk8 = gUnk_083611F1[(_unk6E0)->unk6][0] * 8;                                        \
        }                                                                                                   \
        if ((_unk6E0)->unkC <= gUnk_083611F1[(_unk6E0)->unk6][1] * 8) {                                     \
            (_unk6E0)->unkC = gUnk_083611F1[(_unk6E0)->unk6][1] * 8;                                        \
        }                                                                                                   \
        if ((_unk6E0)->unk8 >= gUnk_083611F1[(_unk6E0)->unk6][2] * 8) {                                     \
            (_unk6E0)->unk8 = gUnk_083611F1[(_unk6E0)->unk6][2] * 8;                                        \
        }                                                                                                   \
        if ((_unk6E0)->unkC >= gUnk_083611F1[(_unk6E0)->unk6][3] * 8) {                                     \
            (_unk6E0)->unkC = gUnk_083611F1[(_unk6E0)->unk6][3] * 8;                                        \
        }                                                                                                   \
        if ((_unk6E0)->unk10 & 0x0001) {                                                                    \
            sub_081548A8(0, (_unk6E0)->unk4, (_unk6E0)->unk4, (_unk6E0)->unk8, (_unk6E0)->unkC, 0x78, 0x50, \
                         gBgAffineRegs);                                                                    \
            (_unk6E0)->unk10 &= ~0x0001;                                                                    \
        }                                                                                                   \
    })

inline void sub_081286F0(u32 unk6E6, u32 unk48_at_unk6E6) {
    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gUnk_08361DF4, 0x70, ARRAY_COUNT(gUnk_08361DF4));
    }
    else {
        DmaCopy16(3, gUnk_08361DF4, gBgPalette + 0x70, sizeof(gUnk_08361DF4));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    LZ77UnCompVram(gUnk_08362104, (void*)0x06009000);
    sub_081270B8(unk6E6, unk48_at_unk6E6);
}

// Fade to next menu with SELECT
inline void sub_08128788(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (!sub_0812A304()) {
        if (areamap->unk58 == 2) {
            CreatePauseWorldMap(0);
        }
        else if (areamap->unk58 == 1) {
            sub_08124430();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }
    sub_08128074(areamap);
}

// Fade to game with B/START
// Similarily to sub_08126AE0
inline void sub_081287F4(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    sub_08128074(areamap);
    if (areamap->unk46++ > 0x12) {
        TaskDestroy(gUnk_0203ACC0[gUnk_0203AD3C].unk0);
        TaskDestroy(gCurTask);
        sub_08039670();
    }
}

// Overrides tiles with empty ones at Screenbase 23 (Bg1, Areamap UI Tilemap)
static inline void empty_screenbase_23(u32 arg0) {
    u32 r3, r2;
    u16* vramAdr;

    for (r3 = gUnk_08D61220[arg0][1]; r3 <= gUnk_08D61220[arg0][3]; r3++) {
        for (r2 = gUnk_08D61220[arg0][0], vramAdr = (u16*)0x0600b800 + 0x20 * r3 + r2; r2 <= gUnk_08D61220[arg0][2];
             vramAdr++, vramAdr++, vramAdr--, r2++) {
            *vramAdr = 0x7080;
        }
    }
}

// Inlined in sub_08127214
inline void sub_08128868(u32 arg0) {
    empty_screenbase_23(arg0);
}

// TODO: Decompile pause_world_map.s bottom-up from here

void sub_081278D4(void) {
    struct Task* task;
    struct AreaMap *areamap, *tmp;
    s32 index, index2, unkVersatile, unk48_count;
    u16 language;
    struct AreaMap_6F4* unk6F4;
    struct Unk_08361220* cur6D0;

    gDispCnt = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(22) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_256COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT512x512;
    gBgScrollRegs[0][1] = 8;
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[2][0] = 0;

    task = TaskCreate(sub_08127FCC, sizeof(struct AreaMap), 0x1000, TASK_USE_IWRAM | TASK_x0004, NULL);
    areamap = tmp = TaskGetStructPtr(task);
    areamap->unk44 = 0;
    areamap->unk46 = 0;
    areamap->unk47 = 0;
    (&areamap->unk6E0)->unk10 |= 0x0001;

    for (index = 0; index < (s32)ARRAY_COUNT(areamap->unk48); index++) {
        s32 r6;
        areamap->unk48[index] = 0;
        unkVersatile = gUnk_083611D0[index];
        for (r6 = 0; r6 < gUnk_083611E6[index]; r6++) {
            if (sub_08002A5C(gUnk_08361220[unkVersatile + r6].unk0)) {
                areamap->unk48[index] = 1;
                break;
            }
        }
        if (HasBigChest(index)) {
            areamap->unk48[index] = 2;
        }
    }

    unk48_count = 0;
    for (index = 1; index < (s32)ARRAY_COUNT(areamap->unk48); index++) {
        if (areamap->unk48[index]) {
            unk48_count++;
        }
    }
    if (unk48_count < 2) {
        gUnk_0203ACC0[0].unkE |= 0x0400;
        gUnk_0203ACC0[1].unkE |= 0x0400;
        gUnk_0203ACC0[2].unkE |= 0x0400;
        gUnk_0203ACC0[3].unkE |= 0x0400;
    }

    sub_08126CEC(areamap);
    sub_08126C48();

    areamap->unk6E0.unk0 = 0;
    areamap->unk6E0.unk2 = 0;
    cur6D0 = areamap->unk6D0[gUnk_0203AD50];
    areamap->unk6E0.unk6 = cur6D0->unk2;
    areamap->unk6E0.unk8 = cur6D0->unk4 * 8;
    areamap->unk6E0.unkC = cur6D0->unk5 * 8;
    areamap->unk6E0.unk10 = 0;
    areamap->unk6E0.unk4 = areamap->unk6E0.unk12 = gUnk_0203ACC0[gUnk_0203AD3C].unk13 * 0x10;
    areamap->unk6E0.unk7 = 0;

    sub_0812752C(areamap);
    for (unkVersatile = 0; unkVersatile < gUnk_0203AD44; unkVersatile++) {
        sub_08126B58(&areamap->unk120[unkVersatile].unk0, &areamap->unk1F0[unkVersatile].unk0, unkVersatile);
    }
    sub_08126F04(areamap);

    language = gLanguage;
    UnkAreaMapSprite_30_Init(areamap->unk60 + 0, gUnk_08363748[language].unk34, gUnk_08363748[language].unk36, 0xa,
                             0x50, 0xa0, 0x500);
    UnkAreaMapSprite_30_Init(areamap->unk60 + 1, gUnk_08363748[language].unk28, gUnk_08363748[language].unk2A, 0x78,
                             0x14, 0x780, 0x140);
    UnkAreaMapSprite_30_Init(areamap->unk60 + 2, gUnk_08363748[language].unk2C, gUnk_08363748[language].unk2E, 0xe6,
                             0x50, 0xe60, 0x500);
    UnkAreaMapSprite_30_Init(areamap->unk60 + 3, gUnk_08363748[language].unk30, gUnk_08363748[language].unk32, 0x78,
                             0x8c, 0x780, 0x8c0);
    sub_08155128(&areamap->unk60[0].unk0);
    sub_08155128(&areamap->unk60[1].unk0);
    sub_08155128(&areamap->unk60[2].unk0);
    sub_08155128(&areamap->unk60[3].unk0);

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gUnk_0835ADCC, 0, ARRAY_COUNT(gUnk_0835ADCC));
    }
    else {
        DmaCopy16(3, gUnk_0835ADCC, gBgPalette, sizeof(gUnk_0835ADCC));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gUnk_08D61280[areamap->unk6E0.unk6], 0x40,
                                        ARRAY_COUNT(gUnk_08D61280[areamap->unk6E0.unk6]));
    }
    else {
        DmaCopy16(3, gUnk_08D61280[areamap->unk6E0.unk6], gBgPalette + 0x40,
                  sizeof(gUnk_08D61280[areamap->unk6E0.unk6]));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gUnk_08D6126C, 0x50, ARRAY_COUNT(gUnk_08D6126C));
    }
    else {
        DmaCopy16(3, gUnk_08D6126C, gBgPalette + 0x50, sizeof(gUnk_08D6126C));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    CpuCopy32(gUnk_0835AECC, (void*)VRAM, sizeof(gUnk_0835AECC));
    CpuCopy32(gUnk_08D616E4, (void*)0x06002000, sizeof(gUnk_08D616E4));
    CpuCopy32(gUnk_08D612E4[0], (void*)0x06002400, sizeof(gUnk_08D612E4[0]));

    areamap->unk5E = -1;
    areamap->unk5C = -1;

    unk6F4 = areamap->unk6F4;
    for (index2 = 0; index2 < ARRAY_COUNT(gUnk_083610E8); index2++) {
        const u16* cur083610EC = gUnk_083610EC + gUnk_083610E8[index2];
        CpuCopy16(cur083610EC, unk6F4[index2].unk0, sizeof(unk6F4[index2].unk0));
        unk6F4[index2].unk8 = cur083610EC + ARRAY_COUNT(unk6F4[index2].unk0);
        unk6F4[index2].unkC = 0;
        unk6F4[index2].unkE = 0;
    }

    sub_08126DDC(areamap);
    unkVersatile = areamap->unk6E0.unk6;
    sub_081286F0(unkVersatile, areamap->unk48[unkVersatile]);
    sub_081275F8(areamap);

    check_unk6E0(&areamap->unk6E0);
    (&areamap->unk6E0)->unk10 |= 0x0001;

    for (index = 0; index < 4; index++) {
        gUnk_0203ACC0[index].unkE &= ~(0x0100 | 0x0200);
    }
}

static void sub_08127FCC(void) {
    struct AreaMap* areamap;
    areamap = TaskGetStructPtr(gCurTask);

    if (gUnk_0203ACC0[0].unkE & 0x1000 || gUnk_0203ACC0[1].unkE & 0x1000 || gUnk_0203ACC0[2].unkE & 0x1000 ||
        gUnk_0203ACC0[3].unkE & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = sub_081287F4;
    }
    else {
        sub_0803D2A8(0, 0xff);
        sub_0803D280(0x80, 0x7f);
        gCurTask->main = sub_0812824C;
        sub_08127760(areamap);
    }
}

void sub_08128074(struct AreaMap* areamap) {
    u32 playerId, r5;

    for (playerId = 0; playerId < 4; playerId++) {
        sub_0803E558(playerId);
    }

    check_unk6E0(&areamap->unk6E0);

    if (areamap->unk48[areamap->unk6E0.unk6] == 2 && (areamap->unk40 & 0x2f) > 0xf) {
        u8 unk6 = areamap->unk6E0.unk6;
        if (areamap->unk6E0.unk8 > gUnk_083611F1[unk6][0] * 8) {
            sub_0815604C(&areamap->unk60[0].unk0);
        }
        if (areamap->unk6E0.unkC > gUnk_083611F1[unk6][1] * 8) {
            sub_0815604C(&areamap->unk60[1].unk0);
        }
        if (areamap->unk6E0.unk8 < gUnk_083611F1[unk6][2] * 8) {
            sub_0815604C(&areamap->unk60[2].unk0);
        }
        if (areamap->unk6E0.unkC < gUnk_083611F1[unk6][3] * 8) {
            sub_0815604C(&areamap->unk60[3].unk0);
        }
    }

    for (r5 = 0; r5 < 2; r5++) {
        sub_08127834(&areamap->unk6F4[r5]);
    }

    sub_08126DDC(areamap);
    sub_08127010(areamap);
    areamap->unk40++;

    areamap->unk5E--;
    if (areamap->unk5E < 1) {
#ifndef NONMATCHING
        register s16 *old, *ptr asm("r1");
        register u32 val asm("r4");

        ptr = &areamap->unk5C;
        ++*ptr;
        old = ptr;
        while (TRUE) {
            ptr = old;
            val = gUnk_08D61B20[*ptr];
            if (val == 0xff) {
                *ptr = 0;
            }
            else {
                CpuCopy32(gUnk_08D612E4[val], (void*)0x06002400, sizeof(gUnk_08D612E4[0]));
                ++*old;
                areamap->unk5E = val = gUnk_08D61B20[*old];
                break;
            }
        }
#else
        areamap->unk5C++;
        while (gUnk_08D61B20[areamap->unk5C] == 0xff)
            areamap->unk5C = 0;
        CpuCopy32(gUnk_08D612E4[gUnk_08D61B20[areamap->unk5C]], (void*)0x06002400, sizeof(gUnk_08D612E4[0]));
        areamap->unk5C++;
        areamap->unk5E = gUnk_08D61B20[areamap->unk5C];
#endif
    }
}

static inline s32 new_unk6_inc(struct AreaMap* areamap) {
    s32 r1, r3;
    r3 = r1 = areamap->unk6E0.unk6;
    do {
        r1++;
        if (r1 > 9)
            r1 = 1;
    } while (!areamap->unk48[r1] && r1 != r3);
    return r1;
}

static inline s32 new_unk6_dec(struct AreaMap* areamap) {
    s32 r1, r3;
    r3 = r1 = areamap->unk6E0.unk6;
    do {
        r1--;
        if (r1 < 1)
            r1 = 9;
    } while (!areamap->unk48[r1] && r1 != r3);
    return r1;
}

static void sub_0812824C(void) {
    s32 unkVersatile;
    u16 r3, r4;
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (gUnk_0203ACC0[0].unkE & 0x1000 || gUnk_0203ACC0[1].unkE & 0x1000 || gUnk_0203ACC0[2].unkE & 0x1000 ||
        gUnk_0203ACC0[3].unkE & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = sub_081287F4;
        sub_08128074(areamap);
        return;
    }

    if (areamap->unk47) {
        if (areamap->unk44++ > 8) {
            s32 tmp;

            areamap->unk44 = 0;
            tmp = areamap->unk47 == 1 ? new_unk6_inc(areamap) : new_unk6_dec(areamap);
            unkVersatile = (u8)tmp;
            if (unkVersatile) {
                ++unkVersatile;
                --unkVersatile;
            }
            areamap->unk6E0.unk6 = unkVersatile;

            sub_081275F8(areamap);
            (&areamap->unk6E0)->unk10 |= 0x0001;
            sub_0803D2A8(0, 0xff);
            sub_0803D280(0x80, 0x7f);
            sub_08126F04(areamap);
            sub_0812752C(areamap);
            sub_08127760(areamap);
            unkVersatile = areamap->unk6E0.unk6;
            sub_081286F0(unkVersatile, areamap->unk48[unkVersatile]);
            areamap->unk47 = 0;
        }
        sub_08128074(areamap);
        return;
    }

    r3 = gUnk_0203ACC0[gUnk_0203AD3C].unkA;  // needed for matching
    r4 = gUnk_0203ACC0[gUnk_0203AD3C].unk8;
    if (areamap->unk48[areamap->unk6E0.unk6] == 2) {
        if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & 0x0040) {
            areamap->unk6E0.unkC -= 4;
            (&areamap->unk6E0)->unk10 |= 0x0001;
        }
        else if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & 0x0080) {
            areamap->unk6E0.unkC += 4;
            (&areamap->unk6E0)->unk10 |= 0x0001;
        }

        if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & 0x0010) {
            areamap->unk6E0.unk8 += 4;
            (&areamap->unk6E0)->unk10 |= 0x0001;
        }
        else if (gUnk_0203ACC0[gUnk_0203AD3C].unkA & 0x0020) {
            areamap->unk6E0.unk8 -= 4;
            (&areamap->unk6E0)->unk10 |= 0x0001;
        }

        if (r4 & 1) {
            if (!areamap->unk6E0.unk7) {
                if (areamap->unk6E0.unk12 == 0x0100) {
                    areamap->unk6E0.unk7 = -1;
                }
                else {
                    areamap->unk6E0.unk7 = 1;
                }
            }
            else {
                areamap->unk6E0.unk7 *= -1;
            }
        }

        if (areamap->unk6E0.unk7) {
            if (areamap->unk6E0.unk7 == -1) {
                areamap->unk6E0.unk12 -= 0x10;
                if (areamap->unk6E0.unk12 == 0x0080) {
                    areamap->unk6E0.unk7 = 0;
                }
            }
            else {
                areamap->unk6E0.unk12 += 0x10;
                if (areamap->unk6E0.unk12 == 0x0100) {
                    areamap->unk6E0.unk7 = 0;
                }
            }

            areamap->unk6E0.unk4 = areamap->unk6E0.unk12;
            (&areamap->unk6E0)->unk10 |= 0x0001;
            if (!areamap->unk6E0.unk7) {
                gUnk_0203ACC0[gUnk_0203AD3C].unk13 = areamap->unk6E0.unk12 / 0x10;
            }
        }
    }

    if (areamap->unk120[gUnk_0203AD3C].unk28 && (gUnk_0203ACC0[gUnk_0203AD3C].unkE & (0x0200 | 0x0100))) {
        if (gUnk_0203ACC0[gUnk_0203AD3C].unkE & 0x0200) {
            areamap->unk47 = 0x01;
        }
        else {
            areamap->unk47 = -0x01;
        }
        for (unkVersatile = 0; unkVersatile < 4; unkVersatile++) {
            gUnk_0203ACC0[unkVersatile].unkE &= ~(0x0200 | 0x0100);
        }
        sub_08128BEC(0x20, 1, 2);
    }

    sub_08128074(areamap);

    for (unkVersatile = 0; unkVersatile < 4; unkVersatile++) {
        if (gUnk_0203ACC0[unkVersatile].unkE & 0x0002 &&
            (0 < gUnk_0203ACC0[unkVersatile].unkD && gUnk_0203ACC0[unkVersatile].unkD < 3)) {
            areamap->unk58 = gUnk_0203ACC0[unkVersatile].unkD;
            CreatePauseFade(0x20, 1);
            gCurTask->main = sub_08128788;
        }
    }
}

u32 sub_08128694(u32 playerId) {
    s32 roomId;
    u16 playerRoomId = gKirbys[playerId].base.base.base.roomId;
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 9) {
        return 2;
    }
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 10) {
        return 3;
    }
    for (roomId = 0; roomId < (s32)ARRAY_COUNT(gUnk_08361220); roomId++) {
        if (playerRoomId == gUnk_08361220[roomId].unk0) {
            return 1;
        }
    }
    return 0;
}
