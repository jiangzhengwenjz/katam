#ifndef GUARD_TITLE_H
#define GUARD_TITLE_H

#include "data.h"
#include "global.h"

struct TitleStruct;

typedef void (*TitleFunc)(struct TitleStruct*);

struct TitleStruct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 fillerC[4];
    struct Sprite unk10[7];
    u8 unk128;
    u8 filler129[3];
    TitleFunc unk12C;
    TitleFunc unk130;
    s16 unk134;
    u8 filler136[2];
    u16 unk138;
    u8 filler13A[4];
    u16 unk13E;
    u8 filler140[4];
    TitleFunc unk144;
};

extern struct MusicPlayerInfo gUnk_030016A0;

extern const u16 gUnk_08387D58[][4];
extern const u16 gUnk_08D60A80;
extern const u32* gUnk_08D626F0[][2];
extern const u16 gUnk_08D62720[7][3];
extern const u8 gUnk_08D6274A[];

extern void CreateTitleScreen(void);
extern void TitleScreenMain(void);
extern void sub_08149F08(struct TitleStruct*);
extern void TitleScreenGraphicsInit(struct TitleStruct*);
extern void TitleScreenFadeIn(struct TitleStruct*);
extern void sub_0814A1C8(struct GameState*);
extern void TitleScreenClearTiles(u8);
extern void TitleScreenClearMap(u8);
extern void sub_0814A274(struct TitleStruct*);
extern void sub_0814A2B0(struct TitleStruct*);
extern void sub_0814A2CC(struct TitleStruct*);
extern void sub_0814A310(struct TitleStruct*);
extern void sub_0814A358(struct TitleStruct*);
extern void sub_0814A39C(struct TitleStruct*);
extern void sub_0814A404(struct TitleStruct*);
extern void sub_0814A410(struct TitleStruct*);
extern void sub_0814A420(struct TitleStruct*);
extern void sub_0814A46C(struct TitleStruct*);
extern void sub_0814A49C(struct TitleStruct*);
extern void sub_0814A4C4(struct TitleStruct*);
extern void sub_0814A504(struct TitleStruct*);
extern void sub_0814A518(struct TitleStruct*);
extern void sub_0814A558(struct TitleStruct*);
extern void TitleScreenFadeSetup(struct TitleStruct*);
extern void TitleScreenFadeOut(struct TitleStruct*);
extern void TitleScreenShowDemo(struct TitleStruct*);
extern void sub_0814A6BC(struct TitleStruct*);
extern void sub_0814A70C(struct TitleStruct*);
extern void sub_0814A75C(struct TitleStruct*);
extern void sub_0814A794(struct TitleStruct*);
extern void sub_0814A7CC(struct TitleStruct*);


#endif
