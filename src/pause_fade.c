#include "game_state.h"
#include "main.h"
#include "pause_fade.h"

void CreatePauseFade(s8 arg0, u32 arg1) {
    struct GameState* state = GameStateCreate(PauseFadeMain, 4, 0x100, 4, NULL);
    struct PauseCommon *fade, *fade2;

    if (state->unk12 & 0x10) {
        fade = (struct PauseCommon*)(EWRAM_START + (state->unk6 << 2));
    }
    else {
        fade = (struct PauseCommon*)(IWRAM_START + state->unk6);
    }
    fade2 = fade;

    if ((arg0 << 0x18) > 0) {
        fade2->unk3 = 0;
        fade2->unk0 = 0;
    }
    else {
        fade2->unk3 = 1;
        fade2->unk0 = 0x1f0;
    }
    
    if (arg1 != 0) {
        fade2->unk3 |= 0x10;
        gBldRegs.bldCnt = 0xbf;
    }
    else {
        fade2->unk3 |= 0x20;
        gBldRegs.bldCnt = 0xff;
    }
    fade2->unk2 = arg0;
    gBldRegs.bldAlpha = 1;
    gBldRegs.bldY = fade2->unk0 >> 4;
}

void CreatePauseFadeSetBldCnt(u8 arg0, u32 arg1) {
    struct GameState* state = GameStateCreate(PauseFadeMain, 4, 0x100, 4, NULL);
    struct PauseCommon *fade, *fade2;

    if (state->unk12 & 0x10) {
        fade = (struct PauseCommon*)(EWRAM_START + (state->unk6 << 2));
    }
    else {
        fade = (struct PauseCommon*)(IWRAM_START + state->unk6);
    }
    fade2 = fade;

    if ((arg0 << 0x18) > 0) {
        fade2->unk3 = 0;
        fade2->unk0 = 0;
    }
    else {
        fade2->unk3 = 1;
        fade2->unk0 = 0x1f0;
    }
    
    if (arg1 != 0) {
        fade2->unk3 |= 0x10;
        gBldRegs.bldCnt = 0;
    }
    else {
        fade2->unk3 |= 0x20;
        gBldRegs.bldCnt = arg1;
    }
    fade2->unk2 = arg0;
    gBldRegs.bldAlpha = 1;
    gBldRegs.bldY = fade2->unk0 >> 4;
}

void PauseFadeMain(void) {
    struct PauseCommon* common;
    if (gCurGameState->unk12 & 0x10) {
        common = (struct PauseCommon*)(EWRAM_START + (gCurGameState->unk6 << 2));
    }
    else {
        common = (struct PauseCommon*)(IWRAM_START + gCurGameState->unk6);
    }
    common->unk0 += common->unk2;
    gBldRegs.bldY = (common->unk0 & 0x1f0) >> 4;
    if (common->unk0 & 0x200) {
        if (common->unk3 & 0x80) {
            if (common->unk3 & 1) {
                gBldRegs.bldY = 1;
            }
            else {
                gBldRegs.bldY = 0x1e;
            }
        }
        else {
            if (common->unk3 & 1) {
                gBldRegs.bldY = common->unk3 & 0x80;
            }
            else {
                gBldRegs.bldY = 0x1f;
            }
        }
        gBldRegs.bldAlpha = 0;
        GameStateDestroy(gCurGameState);
    }
}
