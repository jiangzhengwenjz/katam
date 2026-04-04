#include "code_080332BC.h"
#include "code_0800ECAC.h"
#include "demo.h"
#include "functions.h"
#include "global.h"
#include "kirby.h"

// In this file
static void sub_080334E8(void);
extern void sub_08033638(void);
extern void sub_080338B4(void);
extern void sub_0803641C(void);
extern void sub_080395C0(void);

// TODO: Could be indicator that this belongs into kirby.c
extern void sub_0803E050(u16);
extern void sub_0803E41C(void);
extern void sub_0803E498(void);
extern void CreateKirby(u8, struct Kirby*, u16, const s32*, const u32*);
extern void sub_08055920(struct Kirby*);
extern void sub_0806F734(void);
extern void sub_0806FDF4(void);
extern void sub_0808838C(void);

void sub_080332BC(u8 arg0, u8 arg1, const u16* arg2, const u32* arg3, const u32* arg4) {
    u8 curKirbyId;
    u8 otherKirbyId;
    u8 idx;
    u16 startRoomId;
    u16 aiKirbyState;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gVramHeapMaxTileSlots = 0x200;
    gVramHeapStartAddr = (u32)OBJ_VRAM1;
    gUnk_0203AD44 = 0;

    if (gUnk_0203AD10 & 2) {
        gUnk_0203AD3C = (*(vu32*)REG_ADDR_SIOCNT << 0x1a) >> 0x1e;
    }
    else {
        gUnk_0203AD3C = arg1;
    }
    gUnk_0203AD30 = arg0;

    aiKirbyState = gAIKirbyState;
    startRoomId = 0x323;
    if (aiKirbyState > 199) {
        startRoomId = 0x321;
    }
    sub_080395C0();
    sub_08000460();

    for (curKirbyId = 0; curKirbyId < 4; curKirbyId++) {
        // TODO: Either the signature of this function or of CreateKirby is wrong
        // As this is the only callsite... probably CreateKirby
        CreateKirby(curKirbyId, &gKirbys[curKirbyId], arg2[curKirbyId], &arg3[2 * curKirbyId], (const u32*)arg4[curKirbyId]);
        sub_0803E558(curKirbyId);
    };

    for (otherKirbyId = arg0; otherKirbyId < 4; otherKirbyId++) {
        sub_0800ECAC(otherKirbyId, arg2[otherKirbyId], startRoomId);
    }

    sub_080334E8();
    sub_080027A8();
    sub_08002848();
    sub_0803E050(gKirbys[gUnk_0203AD3C].base.base.base.roomId);
    sub_0803641C();
    sub_080338B4();

    for (idx = 0; idx < gUnk_0203AD44; idx++) {
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
    gUnk_0203AD18[0] = 0;
    gUnk_0203AD18[1] = 0;
    gUnk_0203AD38 = 0xff;
    gUnk_02022920 = 0;
    CpuFill16(0, &gUnk_02022930, sizeof(gUnk_02022930));
    gUnk_03002E60 = (union Unk_03002E60*)&gUnk_082D7850[0];
    gUnk_03000558 = 0;
    gUnk_03000554 = 0;
}

static void sub_080334E8(void) {
    gUnk_0203AD20 = 0;
    gUnk_0203AD18[0] = 0;
    gUnk_0203AD18[1] = 0;
    gUnk_0203AD34 = 0;
    gUnk_0203AD38 = 0xff;
    sub_08033638();
    sub_0803E41C();
    sub_0803E498();
    sub_0806F734();
    sub_0808838C();
    sub_0806FDF4();
    gUnk_020229D4 = 0;
    gUnk_02021580 = 0xff;
}

void sub_08033540(u8 arg0) {
    struct Unk_03000510* unk_03000510 = &gUnk_03000510;
    u16 thisKirbyRoomId = gKirbys[arg0].base.base.base.roomId;
    u8 r1 = gUnk_0203AD44;

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

