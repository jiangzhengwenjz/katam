#ifndef GUARD_SUBGAME_MENU_H
#define GUARD_SUBGAME_MENU_H

#include "global.h"
#include "task.h"
#include "sprite.h"
#include "data.h"

struct SubGameMenu;

typedef void (*SubGameMenuFunc)(struct SubGameMenu*);

struct SubGameMenu {
    struct Unk_03002400 unk0[2];
    struct Sprite unk80[5];
    u32 unk148;
    u32 unk14C;
    u32 unk150;
    SubGameMenuFunc unk154;
    u16 unk158[3][4];
    u16 unk170;
    u16 unk172;
    u16 unk174;
    u16 unk176;
    u16 unk178;
}; /* size = 0x17C */

void sub_0801E630(s32);
void sub_0801E6C4(s32);
void sub_0801E754(s32);
void sub_0801ED94(struct SubGameMenu*);
void sub_0801F1F4(void);
void sub_0801F2E8(struct SubGameMenu*);
void sub_0801F4BC(struct SubGameMenu*);
void sub_0801F5AC(struct SubGameMenu*);
void sub_0801F608(struct SubGameMenu*);
void sub_0801F6C8(struct SubGameMenu*);
void sub_0801F730(struct SubGameMenu*);
void sub_0801F7F8(void);
void sub_0801F8EC(struct SubGameMenu*);
void sub_0801F9FC(struct SubGameMenu*);
void sub_0801FAD8(struct SubGameMenu*);
void sub_0801FB98(struct SubGameMenu*);
void sub_0801FC00(struct SubGameMenu*);
void sub_0801FD58(void);
void sub_0801FE3C(struct SubGameMenu*);
void sub_0801FE58(struct SubGameMenu*);
void sub_0801FE68(struct SubGameMenu*);
void sub_0801FE78(struct SubGameMenu*);
void sub_0801FE94(struct SubGameMenu*);
void sub_0801FEFC(struct SubGameMenu*);
void sub_0801FF0C(struct SubGameMenu*);
void sub_0801FF28(struct SubGameMenu*);
void sub_08020058(struct SubGameMenu*);
void sub_08020094(struct SubGameMenu*);
void nullsub_29(struct Task*);
void nullsub_110(struct Task*);

#endif // GUARD_SUBGAME_MENU_H
