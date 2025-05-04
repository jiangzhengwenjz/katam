#include "code_08124BE0.h"
#include "functions.h"
#include "palette.h"
#include "pause_world_map.h"
#include "treasures.h"

// In code_08123950.s
extern void sub_0812403C(struct Unk_0203ACC0*);

// In pause_area_map.s
extern u32 sub_08128694(u32);

struct Unk_08D6115C {
    /* 0x0 */ u32 unk0;
    /* 0x4 */ u8 unk4;
    /* 0x5 */ u8 unk5;
    /* 0x6 */ u8 unk6;
    /* 0x7 */ u8 unk7;
    /* 0x8 */ u8 unk8;
    /* 0x9 */ u8 unk9;
    /* 0xA */ u8 unkA;
    /* 0xB */ u8 unkB;
}; /* size = 0xC */

extern const struct Unk_08D6115C *const gUnk_08D6115C[];

static inline void guard_sub_08031CE4(u8 playerId) {
    if (gUnk_0203AD10 & 2 && playerId != gUnk_0203AD3C) {
        sub_08031CE4(8);
    }
}

// Runs on every pause_menu screen as Task::main function repeatingly
// Doesn't run when activating BigSwitch
// gCurTask as well as all four gUnk_0203ACC0[].unk0 point to Task 0x03001BA8
void sub_08124BE0(void) {
    u16 r9;
    s32 playerId;

    for (playerId = 0; playerId < 4; playerId++) {
        sub_0812403C(gUnk_0203ACC0 + playerId);
    }
    for (playerId = 0; playerId < 4; playerId++) {
        if (gUnk_0203ACC0[playerId].unk12) {
            gUnk_0203ACC0[playerId].unkE |= 0x0004;
            gUnk_0203ACC0[playerId].unk12--;
        }
        else {
            gUnk_0203ACC0[playerId].unkE &= ~0x0004;
        }
    }
    for (playerId = 0; playerId < 4; playerId++) {
        sub_0812403C(gUnk_0203ACC0 + playerId);
    }

    if (gUnk_0203ACC0[gUnk_0203AD50].unk8 & 0x000a && !(gUnk_0203ACC0[gUnk_0203AD50].unkE & 0x0004)) {
        for (playerId = 0; playerId < 4; playerId++) {
            gUnk_0203ACC0[playerId].unkE |= 0x1000;
            gUnk_0203ACC0[playerId].unk12 = 0x3c;
            if (gUnk_0203ACC0[playerId].unkE & 0x0002) {
                m4aSongNumStart(506);
            }
        }
        return;
    }

    if (gUnk_0203AD10 & 4)
        return;

    r9 = 0;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gUnk_0203ACC0[playerId].unkE & 0x0004)) {
            r9 |= gUnk_0203ACC0[playerId].unk8;
        }
    }

    if (r9 & 0x0004) {
        u32 r8 = gUnk_0203ACC0[gUnk_0203AD3C].unkD;

        if (gUnk_0203ACC0[gUnk_0203AD3C].unkD == 2) {
            r8 = 1;
        }
        else if (gUnk_0203ACC0[gUnk_0203AD3C].unkD == 4) {
            r8 = 2;
        }
        else {
            u32 r5 = 0;
            for (playerId = 0; playerId < 4; playerId++) {
                if (!(gUnk_0203ACC0[playerId].unkE & 0x0001)) {
                    r5 |= (1 << sub_08128694(playerId));
                }
            }
            if (!(r5 & (8 | 1))) {
                if (r5 & 4) {
                    if (HasBigChest(0)) {
                        r8 = 2;
                    }
                }
                else {
                    if (r5 & 2) {
                        r8 = 4;
                    }
                }
            }
        }

        if (r8 != gUnk_0203ACC0[gUnk_0203AD3C].unkD) {
            for (playerId = 0; playerId < 4; playerId++) {
                gUnk_0203ACC0[playerId].unkD = r8;
                gUnk_0203ACC0[playerId].unk12 = 0x28;
                guard_sub_08031CE4(playerId);
                if (gUnk_0203ACC0[playerId].unkE & 0x0002) {
                    m4aSongNumStart(506);
                }
            }
            return;
        }
    }

    if (gUnk_0203ACC0[gUnk_0203AD3C].unkD == 4 && r9 & 0x0300 &&
        !((gUnk_0203ACC0[0].unkE | gUnk_0203ACC0[1].unkE | gUnk_0203ACC0[2].unkE | gUnk_0203ACC0[3].unkE) & 0x0400)) {
        u32 r7 = r9 & 0x100 ? 0x200 : 0x100;
        for (playerId = 0; playerId < 4; playerId++) {
            gUnk_0203ACC0[playerId].unkE |= r7;
            gUnk_0203ACC0[playerId].unk12 = 0x28;
            guard_sub_08031CE4(playerId);
            if (gUnk_0203ACC0[playerId].unkE & 0x0002) {
                m4aSongNumStart(506);
            }
        }
    }
}

// Runs once when starting the game (singleplayer)
void sub_08124E80(void) {
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        gUnk_0203ACC0[playerId].unkD = 1;
        gUnk_0203ACC0[playerId].unk13 = 0x10;
    }
}

// Runs once when opening the pause menu or activating BigSwitch
void sub_08124EA0(void) {
    struct Unk_02022930_0* unk_0803C95C = sub_0803C95C(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;
}

// Runs once immediately when pause menu (or BigSwitch activation) should be closed
void sub_08124EC8(void) {
    u16 color;
    struct Unk_02022930_0* unk_0803C95C = sub_0803CA20(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;

    color = RGB_WHITE;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(&color, 0, 1);
    }
    else {
        DmaCopy16(3, &color, gBgPalette, 2)
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    sub_0803D2A8(0, 0xff);
}

// TODO: Find type of struct/datatype with size 4
struct Task* sub_08124F44(void) {
    return TaskCreate(sub_08124BE0, 4, 0x0f00, TASK_x0004, NULL);
}

void sub_08124F64(u32 arg0) {
    CpuCopy32(gUnk_08D6113C[arg0].unkSrc, gUnk_08D6113C[arg0].unkDest, 0x400);
}

// TODO: Contemplate about big endian halfwords in gUnk_08D6115C
static inline u16 load_u16_bigEndian(const u8* MSB, const u8* LSB) {
    return *MSB << 8 | *LSB;
}

// Called for all four kirbys when WorldMap is opened
// TODO: Verify that arg0 is roomId of current kirby
u32 sub_08124F88(u16 arg0, u8 playerId) {
    u16 r1;
    const struct Unk_08D6115C* cur_08D6115C;

    u32 r2 = 0;
    u32 r3 = 0;
    switch (gUnk_08D6CD0C[arg0]->unk46) {
        case 0: r2 = 1; break;
        case 1: r2 = 2; break;
        case 4: r2 = 5; break;
        case 6: r2 = 7; break;
        case 5: r2 = 6; break;
        case 2: r2 = 3; break;
        case 7: r2 = 8; break;
        case 3: r2 = 4; break;
        case 8: r2 = 9; break;
        case 9: r2 = 0; break;
        case 10: r2 = 10; break;
    }

    cur_08D6115C = gUnk_08D6115C[r2];
    for (r1 = 0; cur_08D6115C[r1].unk0; r1++) {
        if (cur_08D6115C[r1].unk0 == arg0) {
            switch (playerId) {
                case 0: r3 = load_u16_bigEndian(&cur_08D6115C[r1].unk4, &cur_08D6115C[r1].unk5); break;
                case 1: r3 = load_u16_bigEndian(&cur_08D6115C[r1].unk6, &cur_08D6115C[r1].unk7); break;
                case 2: r3 = load_u16_bigEndian(&cur_08D6115C[r1].unk8, &cur_08D6115C[r1].unk9); break;
                case 3: r3 = load_u16_bigEndian(&cur_08D6115C[r1].unkA, &cur_08D6115C[r1].unkB); break;
            }
        }
    }

    return r3;
}
