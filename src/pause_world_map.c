#include "pause_world_map.h"
#include "functions.h"
#include "pause_fade.h"
#include "save.h"
#include "code_0801DA58.h"

static void sub_08125B3C(void);
static void sub_08125C80(void);
static void sub_08125D60(void);
static void sub_08125E74(void);
static void sub_08125F1C(void);
static void sub_0812618C(void);

void sub_08126558(void);
void sub_08126A78(s32);
void sub_08126AAC(u32);
void sub_08126AE0(void);
void sub_08127214(void);

// In code_08124BE0.s
extern void sub_08124EA0(void);
extern void sub_08124EC8(void);
extern void sub_08125088(void*, u8); // arg1 is probably playerID
extern struct Task* sub_081252FC(s8);
extern void sub_08125690(void);
extern void sub_08125828(void);
extern void sub_0812595C(void*);

// TODO: Check VRAM Addresses for fitting define-constants instead of raw hex-addresses

void sub_08125A4C(u32 arg0) {
    struct Task* task;
    struct PauseWorldMapStruct *tmp, *worldmap;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(22) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT256x256;
    gBgScrollRegs[0][0] = 0x8;
    gBgScrollRegs[0][1] = 0x8;
    gBgScrollRegs[1][0] =   0;
    gBgScrollRegs[1][1] =   0;
    gBgScrollRegs[2][0] = 0x8;
    gBgScrollRegs[2][1] = 0x8;

    task = TaskCreate(sub_08125B3C, sizeof(struct PauseWorldMapStruct), 0x1000, TASK_x0004, NULL);
    worldmap = tmp = TaskGetStructPtr(task);
    worldmap->unk20C = 0;

    if (arg0) {
        worldmap->unk208 = 1;
        worldmap->unk20C = (u8) arg0; // strb is called, but declaring arg0 to be u8 invokes bitshifts at the beginning of the function
        CpuFill32(0, (void *)BG_VRAM, BG_VRAM_SIZE);
        task->main = sub_08125D60;
    }
    else {
        sub_08127214();
    }

    worldmap->unk20A = 0;
    worldmap->unk20E = 0;
    worldmap->unk210 = 0;
    worldmap->unk214 = NULL;
    worldmap->unk211 = 0;
}

static void sub_08125B3C(void) {
    s32 r4;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    sub_08125690();
    gCurTask->main = sub_08125C80;
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    CpuFill32(0, (void *)0x06004000, 0x2000);

    // Almost looks like BgInit, but unfortunately not quite
    // - The order is off and scrollX/Y is missing
    // TODO: Macro if this appears thrice
    worldmap->unk0.unkA          = 0;
    worldmap->unk0.unk18         = 0;
    worldmap->unk0.unk1A         = 0;
    worldmap->unk0.unk1C         = 0xb6;
    worldmap->unk0.unk1E         = 0;
    worldmap->unk0.unk20         = 0;
    worldmap->unk0.unk22         = 0;
    worldmap->unk0.unk24         = 0;
    worldmap->unk0.unk26         = 0x20;
    worldmap->unk0.unk28         = 0x16;
    worldmap->unk0.prevScrollX   = 0x7fff;
    worldmap->unk0.prevScrollY   = 0x7fff;
    worldmap->unk0.paletteOffset = 0;
    worldmap->unk0.unk4          = 0x06004000;
    worldmap->unk0.unk2E         = 0x19;
    worldmap->unk0.tilemapVram   = 0x0600b000;
    LZ77UnCompVram(&gUnk_081E08FC, (void *)worldmap->unk0.unk4);
    sub_08153060(&worldmap->unk0);
    CpuFill16(0, (void *)0x0600c000, 0x600);
    CpuCopy32(&gUnk_0835A3CC, (void *)0x0600c000, 0x500);

    sub_08125088((void *)(worldmap->unk40 + 0), 0);
    sub_08125088((void *)(worldmap->unk40 + 1), 1);
    sub_08125088((void *)(worldmap->unk40 + 2), 2);
    sub_08125088((void *)(worldmap->unk40 + 3), 3);

    sub_08125828();

    for (r4 = 1; r4 <= 0xf; r4++) {
        sub_08126A78(r4);
        if (!(sub_08002A5C(gUnk_08359C08[r4]))) {
            sub_08126AAC(r4);
        }
    }

    sub_0812595C(&worldmap->unk0);
}

static void sub_08125C80(void) {
    u8 r3;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (gUnk_0203ACC0[0].unkE & 0x1000 ||
        gUnk_0203ACC0[1].unkE & 0x1000 ||
        gUnk_0203ACC0[2].unkE & 0x1000 ||
        gUnk_0203ACC0[3].unkE & 0x1000) {
        m4aSongNumStart(506);
        sub_08124EC8();
        gCurTask->main = sub_08126AE0;
        sub_0812595C(worldmap);
    }
    else {
        sub_0812595C(worldmap);

        for(r3 = 0; r3 <= 3; r3++) {
            if (gUnk_0203ACC0[r3].unkE & 0x02 &&
            (gUnk_0203ACC0[r3].unkD == 0x01 || gUnk_0203ACC0[r3].unkD == 0x04)) {
                worldmap->unk210 = gUnk_0203ACC0[r3].unkD;
                CreatePauseFade(0x20, 1);
                gCurTask->main = sub_08126558;
                return;
            }
        }
    }
}

static void sub_08125D60(void) {
    u16 color;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (worldmap->unk20E++ <= 0xa) return;
    worldmap->unk20E = 0;

    gCurTask->main = sub_08125E74;
    sub_08125690();
    CpuFill32(0, (void *)0x06004000, 0x2000);

    worldmap->unk0.unkA          = 0;
    worldmap->unk0.unk18         = 0;
    worldmap->unk0.unk1A         = 0;
    worldmap->unk0.unk1C         = 0xb6;
    worldmap->unk0.unk1E         = 0;
    worldmap->unk0.unk20         = 0;
    worldmap->unk0.unk22         = 0;
    worldmap->unk0.unk24         = 0;
    worldmap->unk0.unk26         = 0x20;
    worldmap->unk0.unk28         = 0x16;
    worldmap->unk0.prevScrollX   = 0x7fff;
    worldmap->unk0.prevScrollY   = 0x7fff;
    worldmap->unk0.paletteOffset = 0;
    worldmap->unk0.unk4          = 0x06004000;
    worldmap->unk0.unk2E         = 0x19;
    worldmap->unk0.tilemapVram   = 0x0600b000;
    LZ77UnCompVram(&gUnk_081E08FC, (void *)worldmap->unk0.unk4);
    sub_08153060(&worldmap->unk0);
    CpuFill16(0, (void *)0x0600c000, 0x600);
    CpuCopy32(&gUnk_0835A3CC, (void *)0x0600c000, 0x500);

    sub_08124EA0();
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    color = RGB_WHITE;
    sub_0803D21C(&color, 0, 1);
}

static void sub_08125E74(void) {
    s32 r4;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;
    
    gCurTask->main = sub_08125F1C;
    worldmap->unk214 = sub_081252FC(worldmap->unk20C);

    sub_08125088((void *)(worldmap->unk40 + 0), 0);
    sub_08125088((void *)(worldmap->unk40 + 1), 1);
    sub_08125088((void *)(worldmap->unk40 + 2), 2);
    sub_08125088((void *)(worldmap->unk40 + 3), 3);

    sub_08125828();

    for (r4 = 1; r4 <= 0xf; r4++) {
        sub_08126A78(r4);
        if (!(sub_08002A5C(gUnk_08359C08[r4]))) {
            sub_08126AAC(r4);
        }
    }
}

static void sub_08125F1C(void) {
    u8* unk214struct;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    KirbyMapSpriteUnkCalls(worldmap, 0);
    KirbyMapSpriteUnkCalls(worldmap, 1);
    KirbyMapSpriteUnkCalls(worldmap, 2);
    KirbyMapSpriteUnkCalls(worldmap, 3);

    // TODO: Find out datatype struct of unk214struct
    // unk214struct->0x7f is a byte
    unk214struct = TaskGetStructPtr(worldmap->unk214);
    if (*(unk214struct + 0x7f) & 0x02) {
        worldmap->unk20E = 0;
        gCurTask->main = sub_0812618C;
    }
}

static void sub_08126080(s8 arg0) {
    u8 index = 0;
    switch ((s8)(arg0-1)) {
    case 0x0: index = 0x2; break;
    case 0x1: index = 0x1; break;
    case 0x2: index = 0x6; break;
    case 0x3: index = 0x5; break;
    case 0x4: index = 0x9; break;
    case 0x5: index = 0xa; break;
    case 0x6: index = 0xd; break;
    case 0x7: index = 0xf; break;
    case 0x8: index = 0x7; break;
    case 0x9: index = 0x8; break;
    case 0xa: index = 0xb; break;
    case 0xb: index = 0xc; break;
    case 0xc: index = 0x3; break;
    case 0xd: index = 0x4; break;
    case 0xe: index = 0xe; break;
    }
    *sub_08002888(SUB_08002888_ENUM_UNK_3, index, 0) = 1;

    // TODO: Appears twice in this file, and in other files a lot as well - Macro?
    if (!(gUnk_0203AD10 & 0x10)) {
        if (gUnk_0203AD10 & 0x2) {
            if (gUnk_0203AD3C == gUnk_0203AD24) {
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
            }
            else {
                sub_08031CE4(0x8);
            }
        }
        else {
            UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
        }
    }
}

static void sub_0812618C(void) {
    u8 r4, r5;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    KirbyMapSpriteUnkCalls(worldmap, 0);
    KirbyMapSpriteUnkCalls(worldmap, 1);
    KirbyMapSpriteUnkCalls(worldmap, 2);
    KirbyMapSpriteUnkCalls(worldmap, 3);

    if (worldmap->unk20E == 0x0078) {
        sub_08124EC8();
    }

    if (worldmap->unk20E > 0x0096) {
        TaskDestroy(worldmap->unk214);
        CpuFill32(0, (void *)BG_VRAM, BG_VRAM_SIZE);
        sub_08126080(worldmap->unk20C);

        for (r5 = 0, r4 = 1; r4 <= 0xf; r4++) {
            if (*sub_08002888(SUB_08002888_ENUM_UNK_3, r4, 0)) {
                r5++;
            }
        }

        if (r5 == 0xf) {
            *sub_08002888(SUB_08002888_ENUM_UNK_3, 0x12, 0) = 1;

            if (!(gUnk_0203AD10 & 0x10)) {
                if (gUnk_0203AD10 & 0x2) {
                    if (gUnk_0203AD3C == gUnk_0203AD24) {
                        UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
                    }
                    else {
                        sub_08031CE4(0x8);
                    }
                }
                else {
                    UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
                }
            }
            
            TaskDestroy(gCurTask);
            sub_0801DA58(0);
        }
        else {
            TaskDestroy(gCurTask);
            sub_08039670();
        }
    }
    else {
        worldmap->unk20E++;
    }
}
