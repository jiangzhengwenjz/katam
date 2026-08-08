#include "code_08020220.h"

#include "global.h"
#include "main.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "multi_08030C94.h"
#include "demo.h"
#include "gba/m4a.h"

#include <limits.h>

struct Unk_08020428 {
    /* 0x00 */ void (*func)(struct Unk_08020428 *);
    /* 0x04 */ void (*callback)(void);
    /* 0x08 */ u16 counter;
}; /* size = 0xC */

static void sub_08020298(struct Unk_08020428 *);
static void sub_080205BC(void);
static void sub_080205F0(struct Unk_08020428 *);
static void sub_08020624(struct Unk_08020428 *);
static void sub_08020640(struct Unk_08020428 *);
static void sub_08020674(struct Unk_08020428 *);

extern u8 gUnk_0203A9A0;
extern u16 gUnk_0203A9B0[];

// Copies attr0-2 of OAM slots gUnk_03003A00..0x7F into gUnk_0203A9B0 and blanks
// them; sub_08020370 copies them back. That is why oamIdx steps by 4 halfwords
// and backupIdx by 3: gUnk_0203A9B0 is 0x300 bytes, 128 slots of three
// halfwords. No other word reference to either symbol exists in the ROM.
//
// gUnk_03003A00 is the first slot of the frozen frame: DrawToOamBuffer sets it
// to 0x80 - gUnk_030024F0 in the gMainFlags & 0x400 branch, after relocating
// that frame's sprites to the top of the buffer (sprite_2.c:491-505), and
// sub_08020428 is what turns that flag on.
void sub_08020220(void) {
    u8 firstOamSlot = gUnk_03003A00;
    u16 oamIdx = firstOamSlot * 4;
    u16 backupIdx = firstOamSlot * 3;
    u16 i;

    gUnk_0203A9A0 = firstOamSlot;
    gUnk_03003A00 = 0;
    for (i = gUnk_0203A9A0; i < 0x80; i++) {
        u16 *oam = gOamBuffer + oamIdx;
        CpuCopy16(oam, &gUnk_0203A9B0[backupIdx], 6);
        CpuFill16(0x200, oam, 6);
        oamIdx += 4;
        backupIdx += 3;
    }
}

static void sub_08020298(struct Unk_08020428 *fade) {
    void (*callback)(void) = fade->callback;

    TasksDestroyInPriorityRange(0, USHRT_MAX);
    gUnk_03003A04 = gUnk_03003790;
    gUnk_030068B0 = 0;
    gUnk_03006078 = gUnk_030039A4;
    VramResetHeapState();
    gVramHeapMaxTileSlots = OBJ_VRAM0_SIZE / TILE_SIZE_4BPP;
    gVramHeapStartAddr = (uintptr_t)OBJ_VRAM0;
    EwramInitHeap();
    gMainFlags &= ~0x400;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    CpuFill16(RGB_WHITE, gBgPalette, BG_PLTT_SIZE);
    CpuFill16(RGB_WHITE, gObjPalette, OBJ_PLTT_SIZE);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gBldRegs.bldCnt = BLDCNT_EFFECT_NONE;
    gBldRegs.bldY = 0;
    callback();
}

// Restores what sub_08020220 saved.
void sub_08020370(void) {
    u8 firstOamSlot = gUnk_0203A9A0;
    u16 oamIdx = firstOamSlot * 4;
    u16 backupIdx = firstOamSlot * 3;
    u16 i;

    gUnk_03003A00 = firstOamSlot;
    gUnk_0203A9A0 = 0;
    for (i = gUnk_03003A00; i < 0x80; i++) {
        CpuCopy16(&gUnk_0203A9B0[backupIdx], gOamBuffer + oamIdx, 6);
        oamIdx += 4;
        backupIdx += 3;
    }
}

void sub_080203C8(void) {
    CpuFill16(0x200, gOamBuffer, 0x100);
    CpuFill16(0x200, gOamBuffer + 0x80, 0x100);
    CpuFill16(0x200, gOamBuffer + 0x100, 0x100);
    CpuFill16(0x200, gOamBuffer + 0x180, 0x100);
}

void sub_08020428(void (*callback)(void)) {
    struct Task *task = TaskCreate(sub_080205BC, sizeof(struct Unk_08020428), 1, TASK_x0004 | TASK_USE_IWRAM, NULL);
    struct Unk_08020428 *fade = TaskGetStructPtr(task);

    fade->func = sub_080205F0;
    fade->callback = callback;
    fade->counter = 0;
    m4aMPlayAllStop();
    gMainFlags |= 0x400;
}

void sub_08020490(void) {
    CpuFill32(0, gUnk_02038990, sizeof(gUnk_02038990));
}

void sub_080204B0(u16 idx, void *src, u32 count) {
    gUnk_02038990[idx][0] = 0;
    gUnk_02038990[idx][1] = 0;
    CpuSet(src, &gUnk_02038990[idx][2], count & 0x1FFFFF);
}

// The writing half of gUnk_02038990, which the retail build only ever replays.
static void UNUSED sub_080204EC(u16 idx, u16 arg1) {
    u16 *block = gUnk_02038990[idx];
    u16 pos = block[1];

    block[0] = 0;
    arg1 &= 0x3FF;
    if (block[pos + 2] != 0) {
        if ((block[pos + 2] & 0x3FF) == arg1 && (block[pos + 2] & ~0x3FF) != 0xFC00) {
            block[pos + 2] += 0x400;
            return;
        }
        pos++;
    }
    block[pos + 2] = arg1 | 0x400;
    block[1] = pos;
}

u16 sub_0802055C(u16 idx) {
    u16 *block = gUnk_02038990[idx];
    u16 pos = block[1];
    u16 ret;

    if ((block[pos + 2] & ~0x3FF) == 0)
        return 0;

    ret = block[pos + 2] & 0x3FF;
    block[0]++;
    if ((block[0] << 10) == (block[pos + 2] & ~0x3FF)) {
        block[1]++;
        block[0] = 0;
    }
    return ret;
}

static void UNUSED nullsub_112(void) {}

static void sub_080205BC(void) {
    struct Unk_08020428 *fade = TaskGetStructPtr(gCurTask);
    fade->func(fade);
}

static void sub_080205F0(struct Unk_08020428 *fade) {
    if (gUnk_0203AD10 & 2) {
        gUnk_020382D0.unk4 &= ~2;
    }
    fade->func = sub_08020624;
}

static void sub_08020624(struct Unk_08020428 *fade) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    fade->counter = 0;
    fade->func = sub_08020640;
}

static void sub_08020640(struct Unk_08020428 *fade) {
    fade->counter++;
    if (fade->counter > 0xF) {
        gBldRegs.bldY = 0x10;
        fade->func = sub_08020674;
    } else {
        gBldRegs.bldY = fade->counter;
    }
}

static void sub_08020674(struct Unk_08020428 *fade) {
    if (gUnk_0203AD10 & 2) {
        sub_08031CC8();
        sub_081589E8();
    }
    fade->func = sub_08020298;
}
