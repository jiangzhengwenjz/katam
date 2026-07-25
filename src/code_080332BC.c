#include "code_080332BC.h"
#include "code_0800ECAC.h"
#include "demo.h"
#include "functions.h"
#include "kirby.h"

// In this file
static void sub_080334E8(void);
static void sub_08033638(void);
extern void sub_080338B4(void);
extern void sub_0803641C(void);
extern void sub_080395C0(void);

// TODO: Could be indicator that this belongs into kirby.c
extern void sub_0803E050(u16);
extern void sub_0803E41C(void);
extern void sub_0803E498(void);
extern void sub_08055920(struct Kirby*);
extern void sub_0806F734(void);
extern void CreateScreenShakeTask(void);
extern void sub_0808838C(void);

extern const u8* gUnk_08D60B44[8];

void sub_080332BC(u8 arg0, u8 arg1, const u16* arg2, const s32* arg3, const bool32* arg4) {
    u8 curKirbyId;
    u8 otherKirbyId;
    u8 idx;
    u16 startRoomId;
    u16 aiKirbyState;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gVramHeapMaxTileSlots = 0x200;
    gVramHeapStartAddr = (u32)OBJ_VRAM1;
    gNumKirbys = 0;

    if (gUnk_0203AD10 & 2) {
        gCurrentPlayerId = (*(vu32*)REG_ADDR_SIOCNT << 0x1a) >> 0x1e;
    }
    else {
        gCurrentPlayerId = arg1;
    }
    gNumPlayers = arg0;

    aiKirbyState = gAIKirbyState;
    startRoomId = 0x323;
    if (aiKirbyState > 199) {
        startRoomId = 0x321;
    }
    sub_080395C0();
    sub_08000460();

    for (curKirbyId = 0; curKirbyId < 4; curKirbyId++) {
        CreateKirby(curKirbyId, &gKirbys[curKirbyId], arg2[curKirbyId], &arg3[2 * curKirbyId], arg4[curKirbyId]);
        sub_0803E558(curKirbyId);
    };

    for (otherKirbyId = arg0; otherKirbyId < 4; otherKirbyId++) {
        CreateKirbyAI(otherKirbyId, arg2[otherKirbyId], startRoomId);
    }

    sub_080334E8();
    sub_080027A8();
    sub_08002848();
    sub_0803E050(gKirbys[gCurrentPlayerId].base.base.base.roomId);
    sub_0803641C();
    sub_080338B4();

    for (idx = 0; idx < gNumKirbys; idx++) {
        gCurLevelInfo[idx].unk1EC = 1;
        gCurLevelInfo[idx].unk660 = idx;
        gKirbys[idx].spawnLocation.x = gKirbys[idx].base.base.base.x >> 0xc;
        gKirbys[idx].spawnLocation.y = gKirbys[idx].base.base.base.y >> 0xc;
        sub_08055920(&gKirbys[idx]);
    }

    gDispCnt |= DISPCNT_OBJ_ON;
}

void sub_08033478(void) {
    gUnk_0203AD20 = 0;
    gUnk_0203AD10 = 0;
    gScreenShakeOffset[0] = 0;
    gScreenShakeOffset[1] = 0;
    gUnk_0203AD38 = 0xff;
    gUnk_02022920 = NULL;
    CpuFill16(0, &gUnk_02022930, sizeof(gUnk_02022930));
    gUnk_03002E60 = (const union Unk_03002E60*)gUnk_082D7850;
    gUnk_03000558 = 0;
    gUnk_03000554 = 0;
}

static void sub_080334E8(void) {
    gUnk_0203AD20 = 0;
    gScreenShakeOffset[0] = 0;
    gScreenShakeOffset[1] = 0;
    gMasterSwordActive = 0;
    gUnk_0203AD38 = 0xff;
    sub_08033638();
    sub_0803E41C();
    sub_0803E498();
    sub_0806F734();
    sub_0808838C();
    CreateScreenShakeTask();
    gUnk_020229D4 = 0;
    gUnk_02021580 = 0xff;
}

void sub_08033540(u8 arg0) {
    struct Unk_03000510* unk_03000510 = &gUnk_03000510;
    u16 thisKirbyRoomId = gKirbys[arg0].base.base.base.roomId;
    u8 r1 = gNumKirbys;

    while (r1-- != 0) {
        if (thisKirbyRoomId == gKirbys[r1].base.base.base.roomId) {
            u32 unk4 = (unk_03000510->unk4 >> r1) & 1;
            u8* unk0 = &unk_03000510->unk0[r1];

            if ((unk4 == 0) || (*unk0 != r1)) {
                unk_03000510->unk4 |= 1 << r1;
                *unk0 = arg0;
            }
        }
    }
}

void sub_080335B4(u8 arg0) {
    u8 r5 = 0;
    u8 sp0[4] = {0, 0, 0, 0};
    struct Unk_03000510* unk_03000510 = &gUnk_03000510;
    u8 r4;

    r4 = gNumKirbys;
    while (r4-- != 0) {
        if (unk_03000510->unk0[r4] == arg0) {
            unk_03000510->unk4 &= ~(1 << r4);
            unk_03000510->unk0[r4] |= 0xff;
            sp0[r5] = r4;
            r5 += 1;
        }
    }

    for (r4 = 0; r4 < r5; r4++) {
        sub_08033674(sp0[r4]);
    }
}

static void sub_08033638(void) {
    gUnk_03000510.unk0[0] = 0xff;
    gUnk_03000510.unk0[1] = 0xff;
    gUnk_03000510.unk0[2] = 0xff;
    gUnk_03000510.unk0[3] = 0xff;
    gUnk_03000510.unk4 = 0;
}

static void UNUSED sub_08033654(void) {
    gUnk_03000510.unk4 |= 0x10;
}

static void UNUSED sub_08033664(void) {
    gUnk_03000510.unk4 &= ~0x10;
}

void sub_08033674(u8 arg0) {
    struct Unk_03000510* unk_03000510 = &gUnk_03000510;
    u16 thisKirbyRoomId = gKirbys[arg0].base.base.base.roomId;
    u8 r2;

    for (r2 = 0; r2 < gNumKirbys; r2++) {
        if ((thisKirbyRoomId == gKirbys[r2].base.base.base.roomId) && ((gUnk_03000510.unk4 >> r2) & 1)) {
            unk_03000510->unk4 |= 1 << arg0;
            unk_03000510->unk0[arg0] = unk_03000510->unk0[r2];
            break;
        }
    }
}

static void UNUSED sub_080336F4(struct Kirby* arg0) {
    s32 movementState2;
    u8 movementState = arg0->movementState;

    arg0->unk1A0[gUnk_0203AD40 % 4] = movementState;
    movementState2 = movementState | arg0->unk1A0[(gUnk_0203AD40 - 1) % 4] | arg0->unk1A0[(gUnk_0203AD40 - 2) % 4];

    if (arg0->unk124[arg0->unk1A4].unk0 == movementState2) {
        if (arg0->unk124[arg0->unk1A4].unk1 != 0xFF) {
            arg0->unk124[arg0->unk1A4].unk1++;
            return;
        }
    }

    arg0->unk1A4++;
    arg0->unk1A4 &= 0x1f;
    arg0->unk124[arg0->unk1A4].unk0 = movementState2;
    arg0->unk124[arg0->unk1A4].unk1 = 0;
}

static void UNUSED sub_08033790(struct Kirby *arg0) {
    u8 sp0 = 1;
    bool32 sp4 = FALSE;
    u8 ip = arg0->unk1A4;

    const u8** unk_08D60B44;
    const u8* r6;

    arg0->unk1A5 = 0;
    unk_08D60B44 = gUnk_08D60B44;
    
    for (r6 = *unk_08D60B44; r6 != NULL; r6 = *unk_08D60B44) {
        u16 r5;
        u8* sp8 = &arg0->unk1A5;

        r5 = *r6;
        r6++;

        for (; r5 != 0; r5--) {
            u8 r4_minus3;
            u8 r1_minus2;
            u8 r7_minus1;

            sp4 = FALSE;
            r4_minus3 = r6[3 * r5 - 3];
            r1_minus2 = r6[3 * r5 - 2];
            r7_minus1 = r6[3 * r5 - 1];
            
            if (r1_minus2 >= arg0->unk124[ip].unk1
               && (r4_minus3 & arg0->unk124[ip].unk0) != 0
               && r7_minus1 <= arg0->unk124[ip].unk1) {
                sp4 = TRUE;
            }

            if (!sp4) {
                break;
            }

            ip--;
            ip &= 0x1f;
        }

        if (sp4) {
            *sp8 = sp0;
        }

        unk_08D60B44++;
        sp0++;
    }
}

