#include "global.h"
#include "game_state.h"
#include "gba/m4a_internal.h"

void sub_08152C3C(struct GameState* arg0) {
    u32 r0, r1;
    u16 r2;
    if (!(arg0->unk12 & 2)) {
        r1 = arg0->unk2 + IWRAM_START;
        r0 = arg0->unk4 + IWRAM_START;
        if (r1 != IWRAM_START) {
            if (r0 != IWRAM_START) {
                if (arg0->unkC != NULL) {
                    arg0->unkC(arg0);
                }
                if (arg0 == gUnk_03002EBC) {
                    gUnk_03002EBC = (struct GameState*)(arg0->unk4 + IWRAM_START);
                }
                if (arg0 == gUnk_03002E98) {
                    gUnk_03002E98 = (struct GameState*)(arg0->unk4 + IWRAM_START);
                }
                r1 = arg0->unk2 + IWRAM_START;
                r0 = arg0->unk4 + IWRAM_START;
                ((struct GameState*)(r1))->unk4 = r0;
                ((struct GameState*)(r0))->unk2 = r1;
                if (arg0->unk6 != 0) {
                    if (arg0->unk12 & 0x10) {
                        sub_081590EC(arg0->unk6 + (u32*)EWRAM_START);
                    }
                    else {
                        sub_08152E40(arg0->unk6 + (u8*)IWRAM_START);
                    }
                }
                gUnk_03002560[--gUnk_03002E7C] = arg0;
                arg0->unk0 = 0;
                arg0->unk2 = 0;
                arg0->unk8 = nullsub_145;
                arg0->unk10 = 0;
                arg0->unk12 = 0;
                arg0->unk6 = 0;
            }
        }
    }
}

void sub_08152CF4(void) {
    gUnk_030035D0 = gUnk_03002560[0];
    if (!(gUnk_03002440 & 0x800) && (gUnk_03002560[0] != (struct GameState*)IWRAM_START)) {
        while (gUnk_030035D0 != (struct GameState*)IWRAM_START) {
            gUnk_03002EBC = (struct GameState*)(IWRAM_START + gUnk_030035D0->unk4);
            if (!(gUnk_030035D0->unk12 & 1)) {
                gUnk_030035D0->unk8();
            }
            gUnk_030035D0 = gUnk_03002EBC;
            if (gUnk_030068D4 != 0) {
                if (gUnk_03002558 == 1) {
                    m4aSoundMain();
                }
                gUnk_030068D4 = 0;
            }
        }
    }
    else if (gUnk_03002560[0] != (struct GameState*)IWRAM_START) {
        while (gUnk_030035D0 != (struct GameState*)IWRAM_START) {
            gUnk_03002EBC = (struct GameState*)(IWRAM_START + gUnk_030035D0->unk4);
            if ((gUnk_030035D0->unk12 & 5) == 4) {
                gUnk_030035D0->unk8();
            }
            gUnk_030035D0 = gUnk_03002EBC;
            if (gUnk_030068D4 != 0) {
                m4aSoundMain();
                gUnk_030068D4 = 0;
            }
        }
    }
    gUnk_030035D0 = NULL;
    gUnk_03002EBC = NULL;
}
