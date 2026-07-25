#ifndef GUARD_CODE_08138D64_H
#define GUARD_CODE_08138D64_H

#include "global.h"
#include "sprite.h"
#include "code_0802E57C.h"
#include "multi_08030C94.h"

struct MainMenu {
    u8 prevScreen;
    u8 screen;
    u8 nextScreen;
    u8 ambienceStep;
    u8 fileCompleted[3];
    s8 fileCompletion[3];
    u8 fileId;
    u8 prevFileId;
    struct Sprite header;
    struct Sprite fileLabels[3];
    struct Sprite completionBars[3];
    struct Sprite completionDigits[3][3];
    struct Sprite cursor;
    struct Sprite palLoadSprite;
    struct Sprite items[4];
    struct Sprite subMenuPointer;
    u8 mainMenuCursor;
    u8 prevMainMenuCursor;
    u8 subMenuCursor;
    u8 eraseChoice;
    struct Sprite erasePrompt;
    struct Sprite eraseYesNo;
    struct Sprite shredEffects[3];
    u8 erasePromptId;
    u8 shredFlash;
    u8 eraseCompletion;
    u8 shredFlashTimer;
    u8 shredFlashDelay;
    struct Sprite unk478;
    struct Sprite unk4A0;
    struct Sprite unk4C8;
    struct Sprite unk4F0;
    struct Sprite unk518;
    struct Sprite unk540;
    struct Sprite unk568;
    struct Sprite unk590;
    struct Sprite unk5B8;
    struct Sprite unk5E0;
    struct Sprite unk608;
    struct Sprite unk630[4];
    struct Sprite unk6D0[3][2];
    s16 linkIconPos[4][2];
    u8 numPlayers;
    u8 playerId;
    u8 palCycleTimer;
    u8 bounceStep;
    u8 pendingNumPlayers;
    u8 pendingChange;
    u8 pendingTimer;
    u8 unk7D7;
    u8 joinPopupTimer[3];
    u8 joinPopupState[3];
    u8 startPressed;
    u16 startTimer;
    struct Sprite playerCompletionDigits[4][3];
    s8 playerCompletion[4];
    u8 linkCursor[2];
    u8 subGameCursor;
    u8 prevSubGameCursor;
    void (*state)(struct MainMenu *);
    void (*nextState)(struct MainMenu *);
    u32 frameCount;
    s16 timer;
    u16 bgPalette[0x100];
    void (*ambience)(struct MainMenu *);
    s16 ambienceTimer;
    u8 ambienceStepDone;
    u8 fadeInDuration;
    u8 fadeInTimer;
    u8 subMenuOpen;
    s16 ambienceSfxTimer;
    union {
        struct Multi_08019F28 *pat1;
        struct Multi_08032B0C *pat2;
    } link;
    struct Unk_0802E57C *anim;
    u16 idleTimer;
}; /* size = 0xBF4 */

void CreateMainMenu(void);
void CreateMainMenuFromSubGame(u8);
void CreateMainMenuFromCollectionRoom(void);
void UpdateCurSaveFileCompletion(void);

#endif
