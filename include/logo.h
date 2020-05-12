#ifndef GUARD_LOGO_H
#define GUARD_LOGO_H

#include "global.h"
#include "game_state.h"

struct LogoStruct;

typedef void (*LogoFunc) (struct LogoStruct*);

struct LogoStruct {
    u32 unk0;
    u16 unk4;
    u8 filler6[2];
    LogoFunc unk8;
    s16 unkC;
    u16 unkE;
};

struct Unk_082D7850 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[4];
    void* unk8;
    u8 fillerC[4];
    u16* unk10;
    u8 filler14[4];
    void* unk18;
};

struct Unk_083877EE {
    u8 filler0[0x1e];
    s16 unk1E;
};

extern struct Unk_082D7850* gUnk_082D7850[];
extern struct Unk_083877EE gUnk_083877EE;

extern void LogoMain(void);
extern void LogoDestroy(struct GameState*);
extern void sub_081388C4(struct LogoStruct*);
extern void LogoInitGraphics(struct LogoStruct*);
extern void LogoFadeIn(struct LogoStruct*);
extern void LogoWait(struct LogoStruct*);
extern void LogoEnd(struct LogoStruct*);
extern void LogoClearGraphics(void);
extern void LogoClearTiles(u8);
extern void LogoClearTilemap(u8);
extern void LogoCopyGraphics(u8, u16, u16);
extern void LogoCopyPalette(u16, u8, u8, u16);
extern void CreateLogo(void);

#endif
