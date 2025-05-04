#include "code_08124BE0.h"
#include "pause_world_map.h"
#include "treasures.h"

// In code_08123950.s
extern void sub_0812403C(struct Unk_0203ACC0*);

// In pause_area_map.s
extern u32 sub_08128694(u32);

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

    for (playerId = 0; playerId <= 3; playerId++) {
        sub_0812403C(gUnk_0203ACC0 + playerId);
    }
    for (playerId = 0; playerId <= 3; playerId++) {
        if (gUnk_0203ACC0[playerId].unk12) {
            gUnk_0203ACC0[playerId].unkE |= 0x0004;
            gUnk_0203ACC0[playerId].unk12--;
        }
        else {
            gUnk_0203ACC0[playerId].unkE &= ~0x0004;
        }
    }
    for (playerId = 0; playerId <= 3; playerId++) {
        sub_0812403C(gUnk_0203ACC0 + playerId);
    }

    if (gUnk_0203ACC0[gUnk_0203AD50].unk8 & 0x000a && !(gUnk_0203ACC0[gUnk_0203AD50].unkE & 0x0004)) {
        for (playerId = 0; playerId <= 3; playerId++) {
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
    for (playerId = 0; playerId <= 3; playerId++) {
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
            for (playerId = 0; playerId <= 3; playerId++) {
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
            for (playerId = 0; playerId <= 3; playerId++) {
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
        for (playerId = 0; playerId <= 3; playerId++) {
            gUnk_0203ACC0[playerId].unkE |= r7;
            gUnk_0203ACC0[playerId].unk12 = 0x28;
            guard_sub_08031CE4(playerId);
            if (gUnk_0203ACC0[playerId].unkE & 0x0002) {
                m4aSongNumStart(506);
            }
        }
    }
}
