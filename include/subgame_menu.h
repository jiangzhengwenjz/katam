#ifndef GUARD_SUBGAME_MENU_H
#define GUARD_SUBGAME_MENU_H

#include "global.h"
#include "task.h"
#include "sprite.h"
#include "data.h"

struct SubGameMenu;

typedef void (*SubGameMenuFunc)(struct SubGameMenu*);

struct SubGameMenu {
    struct Background unk0[2];
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

void CreateSubGameMenu(s32);
void CreateSubGameMenuLink(s32);
void SubGameMenuLoadLinkWaitBg(s32);
void CreateSubGameMenuConnect(s32);

extern const u16 gSubGameMenuObjPalettes[];

#endif // GUARD_SUBGAME_MENU_H
