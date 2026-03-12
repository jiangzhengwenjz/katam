#include "multi_08032E98.h"
#include "bg.h"
#include "data.h"
#include "functions.h"
#include "global.h"
#include "main.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "multi_sio.h"
#include "task.h"

struct Unk_08032E98 {
    /* 0x00 */ struct Background unk0;
    /* 0x40 */ void (*unk40)(struct Unk_08032E98*);
    /* 0x44 */ u16 unk44;
    /* 0x46 */ u16 unk46;
}; /* size = 0x48 */

extern void sub_080331E0(void);
extern void sub_0803329C(struct Unk_08032E98*);

static void sub_08033008(struct Unk_08032E98*);
static void sub_080330A4(struct Unk_08032E98*);

const u16 gUnk_082EC778[] = {0x29f, 0x2a2, 0x2a5, 0x2a8, 0x2ab, 0x2ae};
const u16 gUnk_082EC784[] = {0x2a0, 0x2a3, 0x2a6, 0x2a9, 0x2ac, 0x2af};

void sub_08032E98(void) {
    struct Task* task;
    struct Unk_08032E98* r2;
    u16 idx;

    TasksDestroyInPriorityRange(0, 0xffff);
    gUnk_03003A04 = gUnk_03003790;
    gUnk_030068B0 = 0;
    gUnk_03006078 = gUnk_030039A4;

    VramResetHeapState();
    gVramHeapMaxTileSlots = OBJ_VRAM0_SIZE / TILE_SIZE_4BPP;
    gVramHeapStartAddr = (u32)OBJ_VRAM0;
    EwramInitHeap();

    task = TaskCreate(sub_080331E0, sizeof(struct Unk_08032E98), 1, TASK_USE_IWRAM | TASK_x0008 | TASK_x0004, NULL);
    r2 = TaskGetStructPtr(task);
    r2->unk40 = &sub_08033008;
    r2->unk44 = 0;
    r2->unk46 = gUnk_02038580;
    sub_08031CC8();
    sub_081589E8();

    DmaFill32(3, 0, &gMultiSioSend, sizeof(gMultiSioSend));
    DmaWait(3);
    DmaFill32(3, 0, &gMultiSioRecv, sizeof(gMultiSioRecv));
    DmaWait(3);

    gMultiSioStatusFlags = 0;
    gUnk_03002558 = 0;
    MultiSioInit(0);
    sub_08031BFC();
    m4aMPlayAllStop();

    REG_IME = 0;
    for (idx = 0; idx < 15; idx++) {
        gIntrTable[idx] = gIntrTableTemplate[idx];
    }
    REG_IME = 1;
}

static void sub_08033008(struct Unk_08032E98* arg0) {
    sub_08031CC8();
    sub_081589E8();
    m4aMPlayAllStop();
    gUnk_0203AD10 = 0;
    gMainFlags &= ~0x400;

    gBldRegs.bldCnt = BLDCNT_EFFECT_NONE;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[0] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(31) | BGCNT_TXT256x256;
    DmaFill16(3, 0, VRAM, VRAM_SIZE);
    DmaFill16(3, 0, PLTT, PLTT_SIZE);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    arg0->unk40 = &sub_080330A4;
}

static void sub_080330A4(struct Unk_08032E98* arg0) {
    struct Background* bg = &arg0->unk0;
    u16 idx = gUnk_02038580 == 1 ? gUnk_082EC784[gLanguage] : gUnk_082EC778[gLanguage];

    BgInit(bg, (u32)BG_CHAR_ADDR(0), 0, (u32)BG_SCREEN_ADDR(31), 0, 0, idx, 0, 0, 0, 0, 0x1e, 0x14, 0, 0, 0, 8, 0, 0, 0x7fff, 0x7fff);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[idx]->tileset, BG_CHAR_ADDR(0));
    gDispCnt |= 0x100;
    arg0->unk40 = &sub_0803329C;
}

