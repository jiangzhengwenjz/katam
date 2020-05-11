#include "global.h"
#include "game_state.h"
#include "main.h"
#include "title_screen.h"

void sub_08149CE4(void) {
    u16 *r4, *r6;
    u8 i;
    struct GameState* state;
    struct TitleStruct* title;
    gDispCnt = 0x1640;
    gBgCntRegs[0] = 0x5e01;
    gBgCntRegs[1] = 0x1d06;
    gBgCntRegs[2] = 0x1c0b;
    gBgScrollRegs[0] = 0x100;
    gBgScrollRegs[1] = 0;
    for (i = 1; i < 4; i++) {
        r4 = gBgScrollRegs;
        r6 = gBgScrollRegs + 1;
        r4[2 * i] = r6[2 * i] = 0;
    }
    gBldRegs.bldCnt = 0xbf;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    state = GameStateCreate(sub_08149DC0, 0x148, 0x1000, 0, sub_0814A1C8);
    if (state->unk12 & 0x10) {
        title = (struct TitleStruct*)(EWRAM_START + (state->unk6 << 2));
    }
    else {
        title = (struct TitleStruct*)(IWRAM_START + state->unk6);
    }
    CpuFill16(0, title, sizeof(struct TitleStruct));
    title->unk4 = 0;
    title->unk130 = sub_0814A410;
    sub_0814A274(title);
}
