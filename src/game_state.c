#include "global.h"
#include "game_state.h"
#include "gba/m4a_internal.h"

void sub_08152CF4(void) {
    gUnk_030035D0 = gUnk_03002560;
    if (!(gUnk_03002440 & 0x800) && (gUnk_03002560 != (struct GameState*)IWRAM_START)) {
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
    else if (gUnk_03002560 != (struct GameState*)IWRAM_START) {
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
