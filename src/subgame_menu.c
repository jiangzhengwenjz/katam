#include "main.h"
#include "subgame_menu.h"
#include "functions.h"

extern const u16 gUnk_082DE8AC[][6];
extern const u16 gUnk_082DE8DC[][6];
extern const u16 gUnk_082DE90C[][6];
extern const u16 gUnk_082DE93C[][6];
extern const u16 gUnk_082DE96C[][6];
extern const u16 gUnk_082DE99C[][6][2];

extern const void *const gUnk_08D60AAC[][6];

static void sub_0801EC2C(u16, s32);
static void sub_0801ED94(struct SubGameMenu*);
static void sub_0801EDF8(struct SubGameMenu *);
static void sub_0801F1F4(void);
static void sub_0801F2E8(struct SubGameMenu*);
static void sub_0801F34C(struct SubGameMenu*);
static void sub_0801F4BC(struct SubGameMenu*);
static void sub_0801F5AC(struct SubGameMenu*);
static void sub_0801F608(struct SubGameMenu*);
static void sub_0801F6C8(struct SubGameMenu*);
static void sub_0801F730(struct SubGameMenu*);
static void sub_0801F7F8(void);
static void sub_0801F8EC(struct SubGameMenu*);
static void sub_0801F9FC(struct SubGameMenu*);
static void sub_0801FAD8(struct SubGameMenu*);
static void sub_0801FB98(struct SubGameMenu*);
static void sub_0801FC00(struct SubGameMenu*);
static void sub_0801FD30(struct SubGameMenu*, u16);
static void sub_0801FD58(void);
static void sub_0801FDB8(struct SubGameMenu*);
static void sub_0801FDD4(struct SubGameMenu*);
static void sub_0801FDE4(struct SubGameMenu*);
static void sub_0801FDF4(struct SubGameMenu*);
static void sub_0801FE10(struct SubGameMenu*);
static void sub_0801FE3C(struct SubGameMenu*);
static void sub_0801FE58(struct SubGameMenu*);
static void sub_0801FE68(struct SubGameMenu*);
static void sub_0801FE78(struct SubGameMenu*);
static void sub_0801FE94(struct SubGameMenu*);
static void sub_0801FEC0(struct SubGameMenu*);
static void sub_0801FEFC(struct SubGameMenu*);
static void sub_0801FF0C(struct SubGameMenu*);
static void sub_0801FF28(struct SubGameMenu*);
static void sub_0801FF50(struct SubGameMenu*);
static void sub_0801FFB0(struct SubGameMenu*);
static void sub_0801FFEC(struct SubGameMenu*);
static void sub_0802001C(struct SubGameMenu*);
static void sub_08020058(struct SubGameMenu*);
static void sub_08020094(struct SubGameMenu*);
static void sub_080200C0(struct SubGameMenu*);
static void sub_08020118(struct SubGameMenu*);
static void sub_08020164(struct SubGameMenu*);
static void sub_080201A0(struct SubGameMenu*);
static void sub_080201D0(struct SubGameMenu*);
static void sub_080201EC(struct SubGameMenu*);
static void nullsub_29(struct Task*);
static void nullsub_110(struct Task*);
static void nullsub_111(struct Task*);

void sub_0801E630(s32 arg0) {
    struct SubGameMenu* menu;
    struct Task* task = TaskCreate(sub_0801FD58, sizeof(struct SubGameMenu), 0x100, 0, nullsub_29);
    TaskGetStructPtr(task, menu);
    CpuFill16(0, menu, sizeof(struct SubGameMenu));
    menu->unk14C = 0;
    menu->unk150 = arg0;
    menu->unk154 = sub_0801ED94;
    menu->unk178 = 0;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 0x10;
}

void sub_0801E6C4(s32 arg0) {
    struct SubGameMenu* menu;
    struct Task* task = TaskCreate(sub_0801F1F4, sizeof(struct SubGameMenu), 0x100, 0, nullsub_110);
    TaskGetStructPtr(task, menu);
    CpuFill16(0, menu, sizeof(struct SubGameMenu));
    menu->unk150 = arg0;
    menu->unk154 = sub_0801F2E8;
    menu->unk178 = 0;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 0x1f;
}

#define GetUnk8AndUnk18(unk8_, unk18_, array, index) ({\
    unk8_ = gUnk_082D7850[array[index][gUnk_08D60A80]]->unk8; \
    unk18_ = gUnk_082D7850[array[index][gUnk_08D60A80]]->unk18; \
})

void sub_0801E754(s32 sb) {
    u16 r4;
    u32 r6;
    u16 r5, r2;
    u16 *r7, *r5_;
    void *r0, *r0_, *ip;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON;
    r4 = gUnk_082DE8AC[sb][gUnk_08D60A80];
    gBgCntRegs[0] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31) | BGCNT_16COLOR;
    gBgScrollRegs[0] = 0;
    gBgScrollRegs[1] = 0;
    if (gUnk_03002440 & 0x10000) {
        sub_08158334(gUnk_082D7850[r4]->unk10, 0, 0x100);
    } else {
        DmaCopy16(3, gUnk_082D7850[r4]->unk10, gBgPalette, sizeof(gBgPalette));
        gUnk_03002440 |= 1;
    }
    LZ77UnCompVram(gUnk_082D7850[r4]->unk8, (void *)0x06008000);
    for (r6 = 0; r6 < 20; ++r6) {
#ifndef NONMATCHING
        asm("":::"memory");
#endif
        DmaCopy16(3, gUnk_082D7850[r4]->unk18 + 30 * r6, (void *)0x0600F800 + 64 * r6, 60);
    }
    GetUnk8AndUnk18(r0_, r7, gUnk_082DE93C, sb);
    gBgCntRegs[1] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR;
    gBgScrollRegs[2] = 0;
    LZ77UnCompVram(r0_, (void *)0x0600CC80);
    DmaFill32(3, 0, (void *)0x0600DF20, 0x20);
    DmaFill16(3, 0xF9, (void *)0x0600F000, 0x800);
    ip = (void *)VRAM + 0xF1D6;
    for (r5 = 0; r5 < 8; ++r5)
        for (r2 = 0; r2 < 8; ++r2)
            (32 * r5 + r2)[(u16 *)ip] = r7[8 * r5 + r2] + 100;
    GetUnk8AndUnk18(r0, r5_, gUnk_082DE90C, sb);
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(28) | BGCNT_TXT512x256 | BGCNT_16COLOR;
    gBgScrollRegs[4] = 0;
    gBgScrollRegs[5] = 0;
    LZ77UnCompVram(r0, (void *)0x0600C000);
    DmaFill32(3, 0, (void *)0x0600CC60, 0x20);
    DmaFill16(3, 0x63, (void *)0x0600E000, 0x1000);
    DmaCopy16(3, r5_, (void *)0x0600E480, 0x40);
    DmaCopy16(3, r5_ + 0x40, (void *)0x0600E4C0, 0x40);
    DmaCopy16(3, r5_ + 0x20, (void *)0x0600EC80, 0x40);
    DmaCopy16(3, r5_ + 0x60, (void *)0x0600ECC0, 0x40);
    gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON;
}

#define SpriteParameterize(sprite, _unkC, _unk1A, _unk1F, _unk8) { \
    (sprite)->unk0 = 0x6010000; \
    (sprite)->unk14 = 0x100; \
    (sprite)->unkC = (_unkC); \
    (sprite)->unk1A = (_unk1A); \
    (sprite)->unk16 = 0; \
    (sprite)->unk1B = 0xFF; \
    (sprite)->unk1C = 16; \
    (sprite)->unk1F = (_unk1F); \
    (sprite)->unk10 = 0; \
    (sprite)->unk12 = 0; \
    (sprite)->unk8 = (_unk8); \
    sub_08155128((sprite)); \
}

static void sub_0801E9DC(struct SubGameMenu *sl) {
    struct Sprite *r7;

    sub_0801EC2C(sl->unk178, 0);
    LZ77UnCompVram(gUnk_08D60AAC[sl->unk150][gUnk_08D60A80], (void *)0x6010000);
    r7 = &sl->unk80[0];
    SpriteParameterize(
        r7, 
        gUnk_082DE99C[sl->unk150][gUnk_08D60A80][0], 
        gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1], 
        15, 
        0xC0000
    );
    r7->unk8 |= 0x80000;
    ++r7;
    SpriteParameterize(
        r7, 
        gUnk_082DE99C[sl->unk150][gUnk_08D60A80][0], 
        (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 1, 
        14, 
        0xC0000
    );
    ++r7;
    SpriteParameterize(
        r7, 
        gUnk_082DE99C[sl->unk150][gUnk_08D60A80][0], 
        (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 2, 
        14, 
        0xC0000
    );
    ++r7;
    SpriteParameterize(
        r7, 
        gUnk_082DE99C[sl->unk150][gUnk_08D60A80][0], 
        (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 7, 
        15, 
        0xC0000
    );
    ++r7;
    SpriteParameterize(
        r7, 
        gUnk_082DE99C[sl->unk150][gUnk_08D60A80][0], 
        (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 7, 
        15, 
        0xC0400
    );
    sub_0801FD30(sl, sl->unk178);
}

static void sub_0801EC2C(u16 r4, s32 r5) {
    if (gUnk_03002440 & 0x20000) {
        sub_0815828C(gUnk_082DE69C, 0xE0, 0x10);
    } else {
        DmaCopy16(3, gUnk_082DE69C, gUnk_03002E20, 0x20);
        gUnk_03002440 |= 2;
    }
    if (r5) {
        if (gUnk_03002440 & 0x20000) {
            sub_0815828C(gUnk_082DE69C + ({0x10 * (2 * r4 + 1);}), 0xF0, 0x10);
        } else {
            DmaCopy16(3, gUnk_082DE69C + ({0x10 * (2 * r4 + 1);}), gUnk_03002E20 + 0x10, 0x20);
            gUnk_03002440 |= 2;
        }
    } else {
        if (gUnk_03002440 & 0x20000) {
            sub_0815828C(gUnk_082DE69C + ({0x20 * r4 + 0x20;}), 0xF0, 0x10);
        } else {
            DmaCopy16(3, gUnk_082DE69C + ({0x20 * r4 + 0x20;}), gUnk_03002E20 + 0x10, 0x20);
            gUnk_03002440 |= 2;
        }
    }
}

#define SpriteParameterize2(sprite, _unk10, _unk12) ({ \
    (sprite)->unk10 = (_unk10); \
    (sprite)->unk12 = (_unk12); \
    sub_0815604C((sprite)); \
})

static void sub_0801ED08(struct SubGameMenu *r5) {
    struct Sprite *r1;

    r1 = r5->unk80;
    SpriteParameterize2(r1, 10, 160);
    r1 = r5->unk80 + 1;
    SpriteParameterize2(r1, 86, 160);
    r1 = r5->unk80 + 2;
    SpriteParameterize2(r1, 160, 160);
    switch (r5->unk178) {
    case 0:
        r1 = r5->unk80 + 4;
        SpriteParameterize2(r1, 80, 152);
        break;
    case 1:
        r1 = r5->unk80 + 3;
        SpriteParameterize2(r1, 80, 152);
        r1 = r5->unk80 + 4;
        SpriteParameterize2(r1, 158, 152);
        break;
    default:
        r1 = r5->unk80 + 3;
        SpriteParameterize2(r1, 160, 152);
        break;
    }
}

static void sub_0801ED94(struct SubGameMenu *ip) {
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    gBgScrollRegs[0] = 0;
    gBgScrollRegs[1] = 0;
    if (ip->unk150 != 3) {
        gBgCntRegs[1] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(28);
        gBgScrollRegs[2] = 0;
        gBgScrollRegs[3] = 0;
    } else {
        gBgCntRegs[1] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28);
        gBgScrollRegs[2] = 0;
        gBgScrollRegs[3] = 0;
    }
    ip->unk154 = sub_0801EDF8;
}

#define Unk_03002400Parameterize(stru, _unk4, _unkC, _unk1C, _unk2E, reload) ({ \
    (stru)->unk4 = (void *)(_unk4); \
    (stru)->unkA = 0; \
    (stru)->unkC = (void *)(_unkC); \
    (stru)->unk18 = 0; \
    (stru)->unk1A = 0; \
    (stru)->unk1C = (_unk1C); \
    (stru)->unk1E = 0; \
    (stru)->unk20 = 0; \
    (stru)->unk22 = 0; \
    (stru)->unk24 = 0; \
    (stru)->unk26 = 30; \
    (stru)->unk28 = 20; \
    (stru)->unk2A = 0; \
    (stru)->unk2B = 0; \
    (stru)->unk2C = 0; \
    (stru)->unk2E = (_unk2E); \
    (stru)->unk30 = 0; \
    (stru)->unk32 = 0; \
    (stru)->unk34 = 0x7FFF; \
    (stru)->unk36 = 0x7FFF; \
    sub_08153060((stru)); \
    LZ77UnCompVram(gUnk_082D7850[(_unk1C)]->unk8, (reload) ? (stru)->unk4 : (void *)(_unk4)); \
})

static void sub_0801EDF8(struct SubGameMenu *r6) {
    u16 r4, r5;
    struct Unk_03002400 * r4_, *r6_;

    if (r6->unk150 != 3) {
        sub_0801E9DC(r6);
        r6->unk14C = 1;
    }
    r4 = gUnk_082DE8AC[r6->unk150][gUnk_08D60A80];
    r6_ = &r6->unk0[0];
    Unk_03002400Parameterize(r6_, 0x06008000, 0x0600F800, r4, 8, TRUE);
    gDispCnt |= DISPCNT_BG0_ON;
    if (r6->unk150 == 3) {
        s32 idx = 3; // required for matching

        r5 = gUnk_082DE8DC[idx][gUnk_08D60A80];
        r4_ = &r6->unk0[1];
        Unk_03002400Parameterize(r4_, 0x06000000, 0x0600E000, r5, 25, TRUE);
        gDispCnt |= DISPCNT_BG1_ON;
    }
    r6->unk154 = sub_0801FDB8;
}

static void sub_0801EF64(struct SubGameMenu *r2) {
    if (!--r2->unk170) {
        gBldRegs.bldCnt = 0;
        if (r2->unk150 != 3)
            r2->unk154 = sub_0801FDD4;
        else
            r2->unk154 = sub_0801FDE4;
    }
    gBldRegs.bldY = r2->unk170 & 0x1F;
}

#define SetSpriteUnk1F(obj, index, shift) ({ \
    index = obj->unk178; \
    obj->unk80[2].unk1F = 14; \
    obj->unk80[1].unk1F = 14; \
    obj->unk80[0].unk1F = 14; \
    obj->unk80[index].unk1F = 15; \
    sub_0801EC2C(obj->unk178, (obj->unk176 >> shift) & 1); \
})

static void sub_0801EFC0(struct SubGameMenu *r5) {
    u16 r1;

    if ((gPressedKeys & DPAD_LEFT) && r5->unk178) {
        m4aSongNumStart(541);
        --r5->unk178;
    }
    if ((gPressedKeys & DPAD_RIGHT) && r5->unk178 != 2) {
        m4aSongNumStart(541);
        ++r5->unk178;
    }
    SetSpriteUnk1F(r5, r1, 3);
    if (gPressedKeys & B_BUTTON) {
        m4aSongNumStart(543);
        r5->unk148 = 1;
        r5->unk154 = sub_0801FE10;
    } else if (gPressedKeys & (A_BUTTON | START_BUTTON)) {
        m4aSongNumStart(542);
        r5->unk148 = 0;
        r5->unk154 = sub_0801FDF4;
    }
}

static void sub_0801F0B0(struct SubGameMenu *r4) {
    u16 r1;
    SetSpriteUnk1F(r4, r1, 2);
    if (r4->unk170++ > 0x3C)
        r4->unk154 = sub_0801FE10;
}

static void sub_0801F118(struct SubGameMenu *r5) {
    u32 r4 = r5->unk150;

    gUnk_0203AD14 = r5->unk178;
    DmaFill16(3, RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    DmaFill16(3, RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gUnk_03002440 |= 3;
    gBldRegs.bldCnt = (BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BD) | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x1F;
    TaskDestroy(gCurTask);
    if (r5->unk148) {
        sub_08138D64(r4);
    } else {
        switch (r4) {
        case 0:
            sub_08134C58();
            sub_08134D64();
            break;
        case 1:
            sub_0812A670();
            sub_0812A77C();
            break;
        case 2:
            sub_0812F814();
            sub_0812F91C();
            break;
        case 3:
            sub_08025650(gUnk_0203AD30);
            break;
        }
    }
}

static void sub_0801F1F4(void) {
    u16 r3;
    struct SubGameMenu *r0, *r4 = TaskGetStructPtr(gCurTask, r0);
    u16 *d1, *d2, *d3, *s1, *s2, *s3, *r2;

    ++r4->unk176;
    // Really dumb but it's required for matching
    r3 = 0;
    d1 = r4->unk158[0];
    d2 = r4->unk158[1];
    d3 = r4->unk158[2];
    s1 = gUnk_020382C8[4];
    s2 = gUnk_020382C8[2];
    s3 = gUnk_020382C8[3];
    for (; r3 < 4; ++r3) {
        r2 = d1 + r3; // swap operands
        *r2 = s2[r3];
        r2 = d2 + r3;
        *r2 = s3[r3];
        r2 = d3 + r3;
        *r2 = s1[r3];
    }
    if (r4->unk14C) {
        if (!gUnk_0203AD3C) {
            sub_0801ED08(r4);
        } else {
            struct Sprite *sprite = &r4->unk80[r4->unk178];
            SpriteParameterize2(sprite, 168, 160);
        }
    }
    r4->unk154(r4);
}

static void sub_0801F2E8(struct SubGameMenu *ip) {
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    gBgScrollRegs[0] = 0;
    gBgScrollRegs[1] = 0;
    if (ip->unk150 != 3) {
        gBgCntRegs[1] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(28);
        gBgScrollRegs[2] = 0;
        gBgScrollRegs[3] = 0;
    } else {
        gBgCntRegs[1] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28);
        gBgScrollRegs[2] = 0;
        gBgScrollRegs[3] = 0;
    }
    ip->unk154 = sub_0801F34C;
}

static void sub_0801F34C(struct SubGameMenu *r6) {
    u16 r4, r5;
    struct Unk_03002400 * r4_, *r6_;

    if (r6->unk150 != 3) {
        sub_0801E9DC(r6);
        r6->unk14C = 1;
    }
    r4 = gUnk_082DE8AC[r6->unk150][gUnk_08D60A80];
    r6_ = &r6->unk0[0];
    Unk_03002400Parameterize(r6_, 0x06008000, 0x0600F800, r4, 8, FALSE);
    gDispCnt |= DISPCNT_BG0_ON;
    if (r6->unk150 == 3) {
        s32 idx = 3; // required for matching

        r5 = gUnk_082DE8DC[idx][gUnk_08D60A80];
        r4_ = &r6->unk0[1];
        Unk_03002400Parameterize(r4_, 0x06000000, 0x0600E000, r5, 25, TRUE);
        gDispCnt |= DISPCNT_BG1_ON;
    }
    r6->unk154 = sub_0801F4BC;
}

static void sub_0801F4BC(struct SubGameMenu* arg0) {
    u32 r4 = arg0->unk150;
    if (r4 != 3 && gUnk_0203AD3C != 0) {
        u16 i, *vram, *r4_3;
        u8 *r4_2;
        GetUnk8AndUnk18(r4_2, r4_3, gUnk_082DE8DC, r4);
        LZ77UnCompVram(r4_2, (void*)VRAM + 0xC000);
        DmaFill32(3, 0, (void*)VRAM + 0xCC60, 0x20);
        gUnk_030060A0.parts[1] = 0x63;
        gUnk_03002E80[4] = 0;
        gUnk_03002E80[5] = 0;
        gUnk_03002E80[6] = 0xff;
        gUnk_03002E80[7] = 0x12;
        vram = (void*)VRAM + 0xE480;
        for (i = 0; i < 0x1e; i++) {
            vram[i] = r4_3[i];
        }
        vram = (void*)VRAM + 0xE4C0;
        for (i = 0; i < 0x1e; i++) {
            vram[i] = r4_3[i + 0x1e];
        }
        gDispCnt |= DISPCNT_BG1_ON;
    }
    arg0->unk154 = sub_0801FE3C;
}

static void sub_0801F5AC(struct SubGameMenu* arg0) {
    if (--arg0->unk170 == 0) {
        gBldRegs.bldCnt = 0;
        if (arg0->unk150 != 3) {
            arg0->unk154 = sub_0801FE58;
        } else {
            arg0->unk154 = sub_0801FE68;
        }
    }
    gBldRegs.bldY = arg0->unk170 & 0x1f;
}

static void sub_0801F608(struct SubGameMenu* arg0) {
    u16 r1;
    if (arg0->unk158[1][0] & 0x20) {
        if (arg0->unk178 != 0) {
            m4aSongNumStart(0x21d);
            arg0->unk178--;
        }
    }
    if (arg0->unk158[1][0] & 0x10) {
        if (arg0->unk178 != 2) {
            m4aSongNumStart(0x21d);
            arg0->unk178++;
        }
    }
    SetSpriteUnk1F(arg0, r1, 3);
    if (arg0->unk158[1][0] & 0x9) {
        m4aSongNumStart(0x21e);
        arg0->unk154 = sub_0801FE78;
    }
}

static void sub_0801F6C8(struct SubGameMenu* arg0) {
    u16 r1;
    SetSpriteUnk1F(arg0, r1, 2);
    if (arg0->unk170++ > 0x3c) {
        arg0->unk154 = sub_0801FE94;
    }
}

static void sub_0801F730(struct SubGameMenu* arg0) {
    u32 r4 = arg0->unk150;
    gUnk_0203AD14 = arg0->unk178;
    DmaFill16(3, RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    DmaFill16(3, RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gUnk_03002440 |= 3;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 31;
    TaskDestroy(gCurTask);
    switch(r4) {
    case 0:
        sub_08134C58();
        sub_08134D64();
        break;
    case 1:
        sub_0812A670();
        sub_0812A77C();
        break;
    case 2:
        sub_0812F814();
        sub_0812F91C();
        break;
    case 3:
        sub_08025650(gUnk_0203AD30);
        break;
    }
}

static void sub_0801F7F8(void) {
    u16 i;
    struct SubGameMenu *menu, *menu2;
    menu = TaskGetStructPtr(gCurTask, menu2);
    menu->unk176++;
    for (i = 0; i < 4; i++) {
        menu->unk158[0][i] = gUnk_020382C8[2][i];
        menu->unk158[1][i] = gUnk_020382C8[3][i];
        menu->unk158[2][i] = gUnk_020382C8[4][i];
    }
    if (menu->unk14C != 0) {
        if (gUnk_0203AD3C == 0) {
            sub_0801ED08(menu);
        } else {
            struct Sprite *sprite = &menu->unk80[menu->unk178];
            SpriteParameterize2(sprite, 168, 160);
        }
    }
    menu->unk154(menu);
}

static void sub_0801F8EC(struct SubGameMenu* arg0) {
    u16 i, j, *vram, *unk18;
    u8 *unk8;
    GetUnk8AndUnk18(unk8, unk18, gUnk_082DE96C, arg0->unk150);
    gBgCntRegs[1] = 0x1e0e;
    gBgScrollRegs[2] = 0;
    LZ77UnCompVram(unk8, (void*)VRAM + 0xCC80);
    DmaFill32(3, 0, (void*)VRAM + 0xDF20, 0x20);
    DmaFill16(3, 0xf9, (void*)VRAM + 0xF000, 0x800);
    vram = (void*)VRAM + 0xF1D6;
    for (i = 0; i < 8; i++) {
        for (j = 0; j < 8; j++) {
            vram[i * 32 + j] = unk18[i * 8 + j] + 0x64;
        }
    }
    gDispCnt |= DISPCNT_BG1_ON;
    arg0->unk170 = 0;
    arg0->unk154 = sub_08020058;
}

static void sub_0801F9FC(struct SubGameMenu* arg0) {
    if (--arg0->unk172 == 0xffff) {
        TaskDestroy(gCurTask);
        gUnk_02038580 = 0;
        sub_08032E98();
    } else {
        s16 res = sub_08031C64();
        if (res == 2) {
            sub_08031C3C();
            gUnk_0203AD30 = gUnk_020382A0.unk28;
            gUnk_0203AD3C = (*(vu32*)REG_ADDR_SIOCNT) << 0x1a >> 0x1e;
            gUnk_0203AD44 = 4;
            gUnk_0203AD24 = 0;
            arg0->unk154 = sub_0801FEFC;
        } else if (res == 1) {
            if (arg0->unk174++ > 8) {
                sub_08031C54();
            }
        } else if (res < 0) {
            sub_08031C3C();
            arg0->unk154 = sub_08020094;
        } else {
            arg0->unk174 = 0;
        }
    }
}

static void sub_0801FAD8(struct SubGameMenu* arg0) {
    u16 r1;
    if (arg0->unk158[1][0] & 0x20) {
        if (arg0->unk178 != 0) {
            m4aSongNumStart(0x21d);
            arg0->unk178--;
        }
    }
    if (arg0->unk158[1][0] & 0x10) {
        if (arg0->unk178 != 2) {
            m4aSongNumStart(0x21d);
            arg0->unk178++;
        }
    }
    SetSpriteUnk1F(arg0, r1, 3);
    if (arg0->unk158[1][0] & 0x9) {
        m4aSongNumStart(0x21e);
        arg0->unk154 = sub_0801FF0C;
    }
}

static void sub_0801FB98(struct SubGameMenu* arg0) {
    u16 r1;
    SetSpriteUnk1F(arg0, r1, 2);
    if (arg0->unk170++ > 0x3c) {
        arg0->unk154 = sub_0801FF28;
    }
}

static void sub_0801FC00(struct SubGameMenu* arg0) {
    u32 r4 = arg0->unk150;
    gUnk_0203AD14 = arg0->unk178;
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gUnk_03002440 |= 3;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 31;
    TaskDestroy(gCurTask);
    switch(r4) {
    case 0:
        sub_08134C58();
        sub_08134D64();
        break;
    case 1:
        sub_0812A670();
        sub_0812A77C();
        break;
    case 2:
        sub_0812F814();
        sub_0812F91C();
        break;
    }
}

void sub_0801FCA8(s32 arg0) {
    struct Task* task = TaskCreate(sub_0801F7F8, sizeof(struct SubGameMenu), 0x200, 0, nullsub_111);
    struct SubGameMenu *menu, *menu2;
    menu = TaskGetStructPtr(task, menu2);
    CpuFill16(0, menu, sizeof(struct SubGameMenu));
    menu->unk150 = arg0;
    menu->unk154 = sub_0801FEC0;
    menu->unk178 = 0;
    sub_0801E9DC(menu);
}

static void sub_0801FD30(struct SubGameMenu* arg0, u16 arg1) {
    arg0->unk80[2].unk1F = 0xe;
    arg0->unk80[1].unk1F = 0xe;
    arg0->unk80[0].unk1F = 0xe;
    arg0->unk80[arg1].unk1F = 0xf;
}

static void sub_0801FD58(void) {
    struct SubGameMenu *menu, *menu2;
    menu = TaskGetStructPtr(gCurTask, menu2);
    menu->unk176++;
    if (menu->unk14C != 0) {
        sub_0801ED08(menu);
    }
    menu->unk154(menu);
}

static void nullsub_29(struct Task* arg0) {}

static void sub_0801FDB8(struct SubGameMenu* arg0) {
    arg0->unk170 = 0x10;
    arg0->unk154 = sub_0801EF64;
}

static void sub_0801FDD4(struct SubGameMenu* arg0) {
    arg0->unk154 = sub_0801EFC0;
}

static void sub_0801FDE4(struct SubGameMenu* arg0) {
    arg0->unk154 = sub_0801FF50;
}

static void sub_0801FDF4(struct SubGameMenu* arg0) {
    arg0->unk170 = 0;
    arg0->unk154 = sub_0801F0B0;
}

static void sub_0801FE10(struct SubGameMenu* arg0) {
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 0;
    arg0->unk170 = 0;
    arg0->unk154 = sub_0801FFB0;
}

static void nullsub_110(struct Task* arg0) {}

static void sub_0801FE3C(struct SubGameMenu* arg0) {
    arg0->unk170 = 0x10;
    arg0->unk154 = sub_0801F5AC;
}

static void sub_0801FE58(struct SubGameMenu* arg0) {
    arg0->unk154 = sub_0801F608;
}

static void sub_0801FE68(struct SubGameMenu* arg0) {
    arg0->unk154 = sub_0801FFEC;
}

static void sub_0801FE78(struct SubGameMenu* arg0) {
    arg0->unk170 = 0;
    arg0->unk154 = sub_0801F6C8;
}

static void sub_0801FE94(struct SubGameMenu* arg0) {
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 0;
    arg0->unk170 = 0;
    arg0->unk154 = sub_0802001C;
}

static void nullsub_111(struct Task* arg0) {}

static void sub_0801FEC0(struct SubGameMenu* arg0) {
    gDispCnt |= DISPCNT_OBJ_ON;
    gDispCnt &= ~(DISPCNT_BG2_ON | DISPCNT_BG1_ON);
    gBgScrollRegs[4] = 0;
    gBgScrollRegs[5] = 0;
    arg0->unk154 = sub_0801F8EC;
}

static void sub_0801FEFC(struct SubGameMenu* arg0) {
    arg0->unk154 = sub_080200C0;
}

static void sub_0801FF0C(struct SubGameMenu* arg0) {
    arg0->unk170 = 0;
    arg0->unk154 = sub_0801FB98;
}

static void sub_0801FF28(struct SubGameMenu* arg0) {
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 0;
    arg0->unk170 = 0;
    arg0->unk154 = sub_08020164;
}

static void sub_0801FF50(struct SubGameMenu* arg0) {
    if (gPressedKeys & B_BUTTON) {
        m4aSongNumStart(0x21f);
        arg0->unk148 = 1;
        arg0->unk154 = sub_0801FE10;
    } else if (gPressedKeys & (A_BUTTON | START_BUTTON)) {
        m4aSongNumStart(0x21e);
        arg0->unk148 = 0;
        arg0->unk154 = sub_0801FE10;
    }
}

static void sub_0801FFB0(struct SubGameMenu* arg0) {
    gBldRegs.bldY = arg0->unk170 & 0x1f;
    if (++arg0->unk170 > 15) {
        gBldRegs.bldY = 31;
        arg0->unk154 = sub_0801F118;
    }
}

static void sub_0801FFEC(struct SubGameMenu* arg0) {
    if (arg0->unk158[1][0] & 9) {
        arg0->unk148 = 0;
        arg0->unk154 = sub_0801FE94;
    }
}

static void sub_0802001C(struct SubGameMenu* arg0) {
    gBldRegs.bldY = arg0->unk170 & 0x1f;
    if (++arg0->unk170 > 15) {
        gBldRegs.bldY = 31;
        arg0->unk154 = sub_0801F730;
    }
}

static void sub_08020058(struct SubGameMenu* arg0) {
    if (arg0->unk170++ > 0x3c) {
        gDispCnt &= ~DISPCNT_BG1_ON;
        arg0->unk154 = sub_080201A0;
    }
}

static void sub_08020094(struct SubGameMenu* arg0) {
    arg0->unk174 = 0;
    sub_08030C94(2, 0);
    arg0->unk154 = sub_0801F9FC;
}

static void sub_080200C0(struct SubGameMenu* arg0) {
    u16 i;
    arg0->unk170 = 0;
    for (i = 0; i < 4; i++) {
        arg0->unk158[0][i] = 0;
        arg0->unk158[1][i] = 0;
        arg0->unk158[2][i] = 0;
    }
    sub_08031C70(3);
    sub_08031CD4();
    arg0->unk154 = sub_08020118;
}

static void sub_08020118(struct SubGameMenu* arg0) {
    arg0->unk176++;
    if (arg0->unk170++ > 8) {
        arg0->unk170 = 0;
        if (sub_08030D4C(0) == 0) {
            sub_08032E98();
        } else {
            arg0->unk154 = sub_080201D0;
        }
    }
}

static void sub_08020164(struct SubGameMenu* arg0) {
    gBldRegs.bldY = arg0->unk170 & 0x1f;
    if (++arg0->unk170 > 15) {
        gBldRegs.bldY = 31;
        arg0->unk154 = sub_0801FC00;
    }
}

static void sub_080201A0(struct SubGameMenu* arg0) {
    sub_08158934();
    arg0->unk170 = 8;
    arg0->unk172 = 0xb4;
    arg0->unk154 = sub_080201EC;
}

static void sub_080201D0(struct SubGameMenu* arg0) {
    arg0->unk14C = 1;
    arg0->unk154 = sub_0801FAD8;
}

static void sub_080201EC(struct SubGameMenu* arg0) {
    if (--arg0->unk170 == 0xffff) {
        sub_0815898C();
        arg0->unk154 = sub_08020094;
    }
}
