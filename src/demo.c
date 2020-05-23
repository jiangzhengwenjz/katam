#include "demo.h"
#include "logo.h"
#include "game_state.h"
#include "main.h"
#include "title_screen.h"

void sub_08025E00(void) {
    u16 r3 = 0, i;
    for (i = 0; i < gUnk_0203AD30; i++) {
        r3 |= gUnk_02038990[i*513][gUnk_02038990[513*i][1] + 2] & 0x3ff;
    }
    if ((gPressedKeys & 0xb) || (r3 & 8)) {
        GameStateDestroy(gCurGameState);
        gUnk_03002440 |= 0x400;
        if(++gUnk_03000554 > 2) {
            gUnk_03000554 = 0;
            if(++gUnk_03000558 > 2) {
                gUnk_03000558 = 0;
            }
            sub_08020428(CreateLogo);
        }
        else {
            sub_08020428(CreateTitleScreen);
        }
    }
}

void CreateDemo(u16 arg0) {
    struct GameState* state = GameStateCreate(sub_08025F50, 8, 1, 4, NULL);
    struct DemoStruct* demo;
    if (state->unk12 & 0x10) {
        demo = (struct DemoStruct*)(EWRAM_START + (state->unk6 << 2));
    }
    else {
        demo = (struct DemoStruct*)(IWRAM_START + state->unk6);
    }
    CpuFill16(0, demo, 8);
    demo->unk0 = sub_08025F84;
    demo->unk4 = arg0;
}

u16 sub_08025F2C(void) {
    return (gUnk_03000558 << 1) + 0xffff + gUnk_03000554;
}

void sub_08025F50(void) {
    struct DemoStruct* demo;
    if (gCurGameState->unk12 & 0x10) {
        demo = (struct DemoStruct*)(EWRAM_START + (gCurGameState->unk6 << 2));
    }
    else {
        demo = (struct DemoStruct*)(IWRAM_START + gCurGameState->unk6);
    }
    demo->unk0(demo);
}
