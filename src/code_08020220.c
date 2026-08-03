#include "global.h"
#include "main.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "multi_08030C94.h"
#include "gba/m4a.h"

struct Unk_08020428 {
    void (*func)(struct Unk_08020428 *);
    void (*callback)(void);
    u16 counter;
}; /* size = 0xC */

static void sub_08020298(struct Unk_08020428 *);
static void sub_080205BC(void);
static void sub_080205F0(struct Unk_08020428 *);
static void sub_08020624(struct Unk_08020428 *);
static void sub_08020640(struct Unk_08020428 *);
static void sub_08020674(struct Unk_08020428 *);

extern u8 gUnk_0203A9A0;
extern u16 gUnk_0203A9B0[];

void sub_08020220(void) {
    u8 n = gUnk_03003A00;
    u16 j = n * 4;
    u16 k = n * 3;
    u16 i;

    gUnk_0203A9A0 = n;
    gUnk_03003A00 = 0;
    for (i = gUnk_0203A9A0; i < 0x80; i++) {
        u16 *oam = (u16 *)gOamBuffer + j;
        CpuCopy16(oam, &gUnk_0203A9B0[k], 6);
        CpuFill16(0x200, oam, 6);
        j += 4;
        k += 3;
    }
}

static void sub_08020298(struct Unk_08020428 *x) {
    void (*callback)(void) = x->callback;

    TasksDestroyInPriorityRange(0, 0xFFFF);
    gUnk_03003A04 = gUnk_03003790;
    gUnk_030068B0 = 0;
    gUnk_03006078 = gUnk_030039A4;
    VramResetHeapState();
    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = (u32)OBJ_VRAM0;
    EwramInitHeap();
    gMainFlags &= ~0x400;
    gDispCnt = DISPCNT_OBJ_1D_MAP;
    CpuFill16(0x7FFF, gBgPalette, BG_PLTT_SIZE);
    CpuFill16(0x7FFF, gObjPalette, OBJ_PLTT_SIZE);
    gMainFlags |= 3;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    callback();
}

void sub_08020370(void) {
    u8 n = gUnk_0203A9A0;
    u16 j = n * 4;
    u16 k = n * 3;
    u16 i;

    gUnk_03003A00 = n;
    gUnk_0203A9A0 = 0;
    for (i = gUnk_03003A00; i < 0x80; i++) {
        CpuCopy16(&gUnk_0203A9B0[k], (u16 *)gOamBuffer + j, 6);
        j += 4;
        k += 3;
    }
}

void sub_080203C8(void) {
    CpuFill16(0x200, gOamBuffer, 0x100);
    CpuFill16(0x200, gOamBuffer + 0x20, 0x100);
    CpuFill16(0x200, gOamBuffer + 0x40, 0x100);
    CpuFill16(0x200, gOamBuffer + 0x60, 0x100);
}

void sub_08020428(void (*callback)(void)) {
    struct Task *task = TaskCreate(sub_080205BC, sizeof(struct Unk_08020428), 1, TASK_x0004, NULL);
    struct Unk_08020428 *x = TaskGetStructPtr(task);

    x->func = sub_080205F0;
    x->callback = callback;
    x->counter = 0;
    m4aMPlayAllStop();
    gMainFlags |= 0x400;
}

void sub_08020490(void) {
    CpuFill32(0, gUnk_02038990, 0x2010);
}

void sub_080204B0(u16 idx, void *src, u32 size) {
    gUnk_02038990[idx * 513][0] = 0;
    gUnk_02038990[idx * 513][1] = 0;
    CpuSet(src, &gUnk_02038990[idx * 513 + 1], size & 0x1FFFFF);
}

#define QUEUE_ENTRY(block, pos) (*((u16 *)((pos) * 2 + (u32)(block)) + 2))

void sub_080204EC(u16 idx, u16 val) {
    u16 *block = (u16 *)&gUnk_02038990[idx * 513];
    u16 pos = block[1];

    block[0] = 0;
    val &= 0x3FF;
    if (QUEUE_ENTRY(block, pos) != 0) {
        if ((QUEUE_ENTRY(block, pos) & 0x3FF) == val && (QUEUE_ENTRY(block, pos) & ~0x3FF) != 0xFC00) {
            QUEUE_ENTRY(block, pos) += 0x400;
            return;
        }
        pos++;
    }
    QUEUE_ENTRY(block, pos) = val | 0x400;
    block[1] = pos;
}

u16 sub_0802055C(u16 idx) {
    u16 *block = (u16 *)&gUnk_02038990[idx * 513];
    u16 pos = block[1];
    u16 ret;

    if ((QUEUE_ENTRY(block, pos) & ~0x3FF) == 0)
        return 0;

    ret = QUEUE_ENTRY(block, pos) & 0x3FF;
    block[0]++;
    if ((block[0] << 10) == (QUEUE_ENTRY(block, pos) & ~0x3FF)) {
        block[1]++;
        block[0] = 0;
    }
    return ret;
}

void nullsub_112(void) {}

static void sub_080205BC(void) {
    struct Unk_08020428 *x = TaskGetStructPtr(gCurTask);
    x->func(x);
}

static void sub_080205F0(struct Unk_08020428 *x) {
    if (gUnk_0203AD10 & 2) {
        gUnk_020382D0.unk4 &= ~2;
    }
    x->func = sub_08020624;
}

static void sub_08020624(struct Unk_08020428 *x) {
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0;
    x->counter = 0;
    x->func = sub_08020640;
}

static void sub_08020640(struct Unk_08020428 *x) {
    x->counter++;
    if (x->counter > 0xF) {
        gBldRegs.bldY = 0x10;
        x->func = sub_08020674;
    } else {
        gBldRegs.bldY = x->counter;
    }
}

static void sub_08020674(struct Unk_08020428 *x) {
    if (gUnk_0203AD10 & 2) {
        sub_08031CC8();
        sub_081589E8();
    }
    x->func = sub_08020298;
}
