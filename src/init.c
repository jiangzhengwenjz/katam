#include "global.h"
#include "init.h"
#include "data.h"
#include "multi_boot_util.h"
#include "functions.h"
#include "logo.h"
#include "gba/m4a.h"

extern const u16 gUnk_082D848C[];
extern const u32 gUnk_082D8498[];
extern const u32 gUnk_082D8768[];

#define SUB_0800043C_WAIT() ({       \
    while (1) {                      \
        if (REG_VCOUNT == 0xa1       \
            || REG_VCOUNT == 0xa2    \
            || REG_VCOUNT == 0xa3) { \
            break;                   \
        }                            \
    }                                \
    while (REG_VCOUNT <= 0xa3) {}    \
})

void sub_080001CC(void) {
    u16 i, r6;
    REG_RCNT = 0;
    CpuFill16(0, &gMultiBootParam, sizeof(gMultiBootParam));
    CpuFill16(0, &gMultiBootStruct, sizeof(gMultiBootStruct));
    CpuFill16(0, &gMultiBootDataRecv, sizeof(gMultiBootDataRecv));
    gUnk_0300050C = 0xffffffff;
    gUnk_03000480 = 0;
    gUnk_03002E60 = 0x80000000;
    gUnk_03003674 = &gUnk_083B909C;
    sub_0800AC5C();
    r6 = 0;
    if (sub_0800A91C(0, 0) != 0) {
        sub_0800AC00(0);
        sub_0800ACD4(0, 0);
        r6 = 1;
    }
    for (i = 0; i < 3; i++) {
        if (sub_0800A91C(1, i) != 0) {
            sub_0800AC00(1);
            sub_0800ACD4(1, i);
            r6 |= 1 << (i+1);
        }
    }
    sub_0800AC00(1);
    if ((r6 != 0) && (r6 != 0xf)) {
        sub_080002C8();
    }
    sub_08031BFC();
    sub_08033478();
    sub_08020490();
    CreateLogo();
}

void sub_080002C8(void) {
    s32 i;
    u16 ie, dispcnt, bldcnt, bldalpha, ime, *r2; 
    const u16* r3;
    if (!(gUnk_03002440 & 0x1000)) {
        m4aSoundVSyncOff();
        ie = REG_IE;
        dispcnt = REG_DISPCNT;
        bldcnt = REG_BLDCNT;
        bldalpha = REG_BLDY;
        REG_DISPCNT = DISPCNT_FORCED_BLANK;
        REG_IME = 0;
        REG_IE = 0;
        REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BG0;
        REG_BLDY = 16;
        REG_BG0CNT = BGCNT_SCREENBASE(4);
        REG_BG0HOFS = 0;
        REG_BG0HOFS = 0;
        REG_IME = INTR_FLAG_VBLANK;
        r3 = gUnk_082D848C;
        r2 = (u16*)BG_PLTT;
        for (i = 4; i >= 0; i--) {
            *r2++ = *r3++;
        }
        LZ77UnCompVram(gUnk_082D8498, (void*)VRAM);
        LZ77UnCompVram(gUnk_082D8768, (void*)VRAM + 0x2000);
        REG_DISPCNT = DISPCNT_BG0_ON;
        for (i = 0x10; i >= 0; i--) {
            SUB_0800043C_WAIT();
            REG_BLDY = i;
        }
        REG_KEYINPUT;
        do {
            SUB_0800043C_WAIT();
        } while (!((REG_KEYINPUT ^ 0x3fff) % 2));
        for (i = 0; i <= 0x10; i++) {
            SUB_0800043C_WAIT();
            REG_BLDY = i;
        }
        REG_DISPCNT = DISPCNT_FORCED_BLANK;
        REG_IME = 0;
        REG_IE = ie;
        REG_DISPCNT = dispcnt;
        REG_BLDCNT = bldcnt;
        REG_BLDY = bldalpha;
        REG_IME = 1;
        m4aSoundVSyncOn();
    }
}

void sub_0800043C(void) {
    SUB_0800043C_WAIT();
}

void nullsub_100(void) {

}
