#include "main.h"
#include "subgame_menu.h"
#include "functions.h"

extern const u16 gUnk_082DE8AC[][6];
extern const u16 gUnk_082DE8DC[][6];
extern const u16 gUnk_082DE90C[][6];
extern const u16 gUnk_082DE93C[][6];
extern const u16 gUnk_082DE99C[][6][2];

extern const void *const gUnk_08D60AAC[][6];

void sub_0801EC2C(u16, s32);
void sub_0801FD30(struct SubGameMenu *, u16);
void sub_0801EDF8(struct SubGameMenu *);
void sub_0801FDB8(struct SubGameMenu *);

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
    r0_ = gUnk_082D7850[gUnk_082DE93C[sb][gUnk_08D60A80]]->unk8;
    r7 = gUnk_082D7850[gUnk_082DE93C[sb][gUnk_08D60A80]]->unk18;
    gBgCntRegs[1] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR;
    gBgScrollRegs[2] = 0;
    LZ77UnCompVram(r0_, (void *)0x0600CC80);
    DmaFill32(3, 0, (void *)0x0600DF20, 0x20);
    DmaFill16(3, 0xF9, (void *)0x0600F000, 0x800);
    ip = (void *)0x0600F1D6;
    for (r5 = 0; r5 < 8; ++r5)
        for (r2 = 0; r2 < 8; ++r2)
            (32 * r5 + r2)[(u16 *)ip] = r7[8 * r5 + r2] + 100;
    r0 = gUnk_082D7850[gUnk_082DE90C[sb][gUnk_08D60A80]]->unk8;
    r5_ = gUnk_082D7850[gUnk_082DE90C[sb][gUnk_08D60A80]]->unk18;
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

#define SpriteParameterize(sprite, _unk1A, _unk1F, _unk8) { \
    (sprite)->unk0 = 0x6010000; \
    (sprite)->unk14 = 0x100; \
    (sprite)->unkC = gUnk_082DE99C[sl->unk150][gUnk_08D60A80][0]; \
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

void sub_0801E9DC(struct SubGameMenu *sl) {
    struct Sprite *r7;

    sub_0801EC2C(sl->unk178, 0);
    LZ77UnCompVram(gUnk_08D60AAC[sl->unk150][gUnk_08D60A80], (void *)0x6010000);
    r7 = &sl->unk80[0];
    SpriteParameterize(r7, gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1], 15, 0xC0000);
    r7->unk8 |= 0x80000;
    ++r7;
    SpriteParameterize(r7, (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 1, 14, 0xC0000);
    ++r7;
    SpriteParameterize(r7, (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 2, 14, 0xC0000);
    ++r7;
    SpriteParameterize(r7, (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 7, 15, 0xC0000);
    ++r7;
    SpriteParameterize(r7, (u8)gUnk_082DE99C[sl->unk150][gUnk_08D60A80][1] + 7, 15, 0xC0400);
    sub_0801FD30(sl, sl->unk178);
}

void sub_0801EC2C(u16 r4, s32 r5) {
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

void sub_0801ED08(struct SubGameMenu *r5) {
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

void sub_0801ED94(struct SubGameMenu *ip) {
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

void sub_0801EDF8(struct SubGameMenu *r6) {
    u16 r4, r5;
    struct Unk_03002400 * r4_, *r6_;

    if (r6->unk150 != 3) {
        sub_0801E9DC(r6);
        r6->unk14C = 1;
    }
    r4 = gUnk_082DE8AC[r6->unk150][gUnk_08D60A80];
    r6_ = &r6->unk0[0];
    r6_->unk4 = (void *)0x06008000;
    r6_->unkA = 0;
    r6_->unkC = (void *)0x0600F800;
    r6_->unk18 = 0;
    r6_->unk1A = 0;
    r6_->unk1C = r4;
    r6_->unk1E = 0;
    r6_->unk20 = 0;
    r6_->unk22 = 0;
    r6_->unk24 = 0;
    r6_->unk26 = 30;
    r6_->unk28 = 20;
    r6_->unk2A = 0;
    r6_->unk2B = 0;
    r6_->unk2C = 0;
    r6_->unk2E = 8;
    r6_->unk30 = 0;
    r6_->unk32 = 0;
    r6_->unk34 = 0x7FFF;
    r6_->unk36 = 0x7FFF;
    sub_08153060(r6_);
    LZ77UnCompVram(gUnk_082D7850[r4]->unk8, r6_->unk4);
    gDispCnt |= DISPCNT_BG0_ON;
    if (r6->unk150 == 3) {
        s32 idx = 3; // required for matching

        r5 = gUnk_082DE8DC[idx][gUnk_08D60A80];
        r4_ = &r6->unk0[1];
        r4_->unk4 = (void *)0x06000000;
        r4_->unkA = 0;
        r4_->unkC = (void *)0x0600E000;
        r4_->unk18 = 0;
        r4_->unk1A = 0;
        r4_->unk1C = r5;
        r4_->unk1E = 0;
        r4_->unk20 = 0;
        r4_->unk22 = 0;
        r4_->unk24 = 0;
        r4_->unk26 = 30;
        r4_->unk28 = 20;
        r4_->unk2A = 0;
        r4_->unk2B = 0;
        r4_->unk2C = 0;
        r4_->unk2E = 25;
        r4_->unk30 = 0;
        r4_->unk32 = 0;
        r4_->unk34 = 0x7FFF;
        r4_->unk36 = 0x7FFF;
        sub_08153060(r4_);
        LZ77UnCompVram(gUnk_082D7850[r5]->unk8, r4_->unk4);
        gDispCnt |= DISPCNT_BG1_ON;
    }
    r6->unk154 = sub_0801FDB8;
}
