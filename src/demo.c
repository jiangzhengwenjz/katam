#include "functions.h"
#include "code_080332BC.h"
#include "demo.h"
#include "logo.h"
#include "task.h"
#include "main.h"
#include "save.h"
#include "random.h"
#include "title_screen.h"

struct Unk_082EAB98 {
    /* 0x00 */ void *unk0[4];
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u16 unk14[4];
    /* 0x1C */ s32 unk1C[4][2];
    /* 0x3C */ bool32 unk3C[4];
}; /* size = 0x4C */

extern const struct Unk_082EAB98 gUnk_082EAB98[6];

static void sub_08025F50(void);
static void sub_08025F84(struct DemoStruct*);

static void sub_08025E00(UNUSED struct DemoStruct* arg0) {
    u16 r3 = 0, i;
    for (i = 0; i < gNumPlayers; i++) {
        r3 |= gUnk_02038990[i*513][gUnk_02038990[513*i][1] + 2] & 0x3ff;
    }
    if ((gPressedKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) || (r3 & 8)) {
        TaskDestroy(gCurTask);
        gMainFlags |= 0x400;
        if (++gUnk_03000554 > 2) {
            gUnk_03000554 = 0;
            if (++gUnk_03000558 > 2) {
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
    struct Task* task = TaskCreate(sub_08025F50, sizeof(struct DemoStruct), 1, TASK_USE_IWRAM | TASK_x0004, NULL);
    struct DemoStruct* demo;
    demo = TaskGetStructPtr(task);
    CpuFill16(0, demo, sizeof(*demo));
    demo->unk0 = sub_08025F84;
    demo->unk4 = arg0;
}

u16 sub_08025F2C(void) {
    return (gUnk_03000558 << 1) + 0xffff + gUnk_03000554;
}

static void sub_08025F50(void) {
    struct DemoStruct* demo = TaskGetStructPtr(gCurTask);
    demo->unk0(demo);
}

static void sub_08025F84(struct DemoStruct* arg0) {
    u16 i;
    const struct Unk_082EAB98* r5 = &gUnk_082EAB98[arg0->unk4];
    ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
    sub_08020490();
    for (i = 0; i < 4; i++) {
        sub_080204B0(i, r5->unk0[i], 0x400);
    }
    for (i = 0; i < 4; i++) {
        gUnk_0203AD1C[i] |= 0xff;
    }
    gUnk_0203AD10 = 0x10;
    gAIKirbyState = AI_KIRBY_STATE_NORMAL;
    gRngVal = r5->unk10;
    sub_080332BC(4, 0, r5->unk14, r5->unk1C[0], r5->unk3C);
    r5 = &gUnk_082EAB98[arg0->unk4]; // dummy
    arg0->unk0 = sub_08025E00;
}
