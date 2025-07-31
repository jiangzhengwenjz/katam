#include "pause_world_map.h"
#include "code_0801DA58.h"
#include "code_08124BE0.h"
#include "functions.h"
#include "kirby.h"
#include "pause_area_map.h"
#include "pause_fade.h"
#include "save.h"
#include "subgames.h"

static void PauseWorldMapPauseInit(void);
static void PauseWorldMapPauseMain(void);
static void PauseWorldMapBigSwitchInit(void);
static void sub_08125E74(void);
static void sub_08125F1C(void);
static void PauseWorldMapBigSwitchMain(void);
static void sub_08126558(void);
static void PauseWorldMapSetTileDoorVisited(u32);
static void PauseWorldMapSetTileDoorUnvisited(u32);
static void sub_08126AE0(void);

extern const u16 gUnk_08359C08[];  // Holds roomID of visited doors from 0x1 to 0xf
extern const u16 gUnk_08359C28[];

// Perhaps holds size of the following incbins
extern const u8 gUnk_08359DD8[];
// Something with Tilemap Data
// - encode offsets and ranges for CpuFill16
// TODO: Perhaps multidimensionally better fitting
extern const u16 gUnk_08359DE8[];
extern const u16 gUnk_08359DEC[];
extern const u16 gUnk_08359DF4[];
extern const u16 gUnk_08359DFC[];
extern const u16 gUnk_08359E04[];
extern const u16 gUnk_08359E08[];
extern const u16 gUnk_08359E10[];
extern const u16 gUnk_08359E1C[];
extern const u16 gUnk_08359E24[];
extern const u16 gUnk_08359E30[];
extern const u16 gUnk_08359E38[];
extern const u16 gUnk_08359E40[];
extern const u16 gUnk_08359E50[];
extern const u16 gUnk_08359E60[];
extern const u16 gUnk_08359E6C[];

extern const u32 gUnk_0835A3CC[0x140];

// TODO: Check VRAM Addresses for fitting preprocessor-constants instead of raw hex-addresses

// arg0: 0x1 - 0xf when door is unlocked, 0x0 when called through normal pause menu
void CreatePauseWorldMap(u32 arg0) {
    struct Task* task;
    struct PauseWorldMap *tmp, *worldmap;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(22) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT256x256;
    gBgScrollRegs[0][0] = 0x8;
    gBgScrollRegs[0][1] = 0x8;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0x8;
    gBgScrollRegs[2][1] = 0x8;

    task = TaskCreate(PauseWorldMapPauseInit, sizeof(struct PauseWorldMap), 0x1000, TASK_x0004, NULL);
    worldmap = tmp = TaskGetStructPtr(task);
    worldmap->unk20C = 0;

    if (arg0) {
        worldmap->unk208 = 1;
        worldmap->unk20C = arg0;
        CpuFill32(0, (void*)BG_VRAM, BG_VRAM_SIZE);
        task->main = PauseWorldMapBigSwitchInit;
    }
    else {
        sub_08127214();
    }

    worldmap->unk20A = 0;
    worldmap->counter = 0;
    worldmap->unk210 = 0;
    worldmap->unk214 = NULL;
    worldmap->unk211 = 0;
}

static void PauseWorldMapPauseInit(void) {
    s32 r4;
    struct PauseWorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    sub_08125690();
    gCurTask->main = PauseWorldMapPauseMain;
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    CpuFill32(0, (void*)0x06004000, 0x2000);

    worldmap->unk0.unkA = 0;
    worldmap->unk0.unk18 = 0;
    worldmap->unk0.unk1A = 0;
    worldmap->unk0.unk1C = 0xb6;
    worldmap->unk0.unk1E = 0;
    worldmap->unk0.unk20 = 0;
    worldmap->unk0.unk22 = 0;
    worldmap->unk0.unk24 = 0;
    worldmap->unk0.unk26 = 0x20;
    worldmap->unk0.unk28 = 0x16;
    worldmap->unk0.prevScrollX = 0x7fff;
    worldmap->unk0.prevScrollY = 0x7fff;
    worldmap->unk0.paletteOffset = 0;
    worldmap->unk0.unk4 = 0x06004000;
    worldmap->unk0.unk2E = 0x19;
    worldmap->unk0.tilemapVram = 0x0600b000;
    LZ77UnCompVram(gUnk_081E08FC, (void*)worldmap->unk0.unk4);
    sub_08153060(&worldmap->unk0);
    CpuFill16(0, (void*)0x0600c000, 0x600);
    CpuCopy32(gUnk_0835A3CC, (void*)0x0600c000, sizeof(gUnk_0835A3CC));

    sub_08125088(worldmap->unk40 + 0, 0);
    sub_08125088(worldmap->unk40 + 1, 1);
    sub_08125088(worldmap->unk40 + 2, 2);
    sub_08125088(worldmap->unk40 + 3, 3);

    sub_08125828();

    for (r4 = 1; r4 <= 0xf; r4++) {
        PauseWorldMapSetTileDoorVisited(r4);
        if (!sub_08002A5C(gUnk_08359C08[r4])) {
            PauseWorldMapSetTileDoorUnvisited(r4);
        }
    }

    sub_0812595C(worldmap);
}

static void PauseWorldMapPauseMain(void) {
    u8 r3;
    struct PauseWorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (gUnk_0203ACC0[0].unkE & 0x1000 || gUnk_0203ACC0[1].unkE & 0x1000 || gUnk_0203ACC0[2].unkE & 0x1000 ||
        gUnk_0203ACC0[3].unkE & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = sub_08126AE0;
        sub_0812595C(worldmap);
    }
    else {
        sub_0812595C(worldmap);

        for (r3 = 0; r3 <= 3; r3++) {
            if (gUnk_0203ACC0[r3].unkE & 0x02 && (gUnk_0203ACC0[r3].unkD == 0x01 || gUnk_0203ACC0[r3].unkD == 0x04)) {
                worldmap->unk210 = gUnk_0203ACC0[r3].unkD;
                CreatePauseFade(0x20, 1);
                gCurTask->main = sub_08126558;
                return;
            }
        }
    }
}

static void PauseWorldMapBigSwitchInit(void) {
    u16 color;
    struct PauseWorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (worldmap->counter++ <= 0xa) return;
    worldmap->counter = 0;

    gCurTask->main = sub_08125E74;
    sub_08125690();
    CpuFill32(0, (void*)0x06004000, 0x2000);

    worldmap->unk0.unkA = 0;
    worldmap->unk0.unk18 = 0;
    worldmap->unk0.unk1A = 0;
    worldmap->unk0.unk1C = 0xb6;
    worldmap->unk0.unk1E = 0;
    worldmap->unk0.unk20 = 0;
    worldmap->unk0.unk22 = 0;
    worldmap->unk0.unk24 = 0;
    worldmap->unk0.unk26 = 0x20;
    worldmap->unk0.unk28 = 0x16;
    worldmap->unk0.prevScrollX = 0x7fff;
    worldmap->unk0.prevScrollY = 0x7fff;
    worldmap->unk0.paletteOffset = 0;
    worldmap->unk0.unk4 = 0x06004000;
    worldmap->unk0.unk2E = 0x19;
    worldmap->unk0.tilemapVram = 0x0600b000;
    LZ77UnCompVram(gUnk_081E08FC, (void*)worldmap->unk0.unk4);
    sub_08153060(&worldmap->unk0);
    CpuFill16(0, (void*)0x0600c000, 0x600);
    CpuCopy32(gUnk_0835A3CC, (void*)0x0600c000, sizeof(gUnk_0835A3CC));

    sub_08124EA0();
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    color = RGB_WHITE;
    sub_0803D21C(&color, 0, 1);
}

static void sub_08125E74(void) {
    s32 r4;
    struct PauseWorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    gCurTask->main = sub_08125F1C;
    worldmap->unk214 = sub_081252FC(worldmap->unk20C);

    sub_08125088(worldmap->unk40 + 0, 0);
    sub_08125088(worldmap->unk40 + 1, 1);
    sub_08125088(worldmap->unk40 + 2, 2);
    sub_08125088(worldmap->unk40 + 3, 3);

    sub_08125828();

    for (r4 = 1; r4 <= 0xf; r4++) {
        PauseWorldMapSetTileDoorVisited(r4);
        if (!(sub_08002A5C(gUnk_08359C08[r4]))) {
            PauseWorldMapSetTileDoorUnvisited(r4);
        }
    }
}

static void sub_08125F1C(void) {
    struct Unk_08125F1C* unk214struct;
    struct PauseWorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    UnkKirbyMapSpriteCalls(worldmap, 0);
    UnkKirbyMapSpriteCalls(worldmap, 1);
    UnkKirbyMapSpriteCalls(worldmap, 2);
    UnkKirbyMapSpriteCalls(worldmap, 3);

    unk214struct = TaskGetStructPtr(worldmap->unk214);
    if (unk214struct->unk7F & 0x02) {
        worldmap->counter = 0;
        gCurTask->main = PauseWorldMapBigSwitchMain;
    }
}

static void sub_08126080(s8 arg0) {
    u8 index = 0;
    switch (arg0) {
    case 0x1: index = 0x2; break;
    case 0x2: index = 0x1; break;
    case 0x3: index = 0x6; break;
    case 0x4: index = 0x5; break;
    case 0x5: index = 0x9; break;
    case 0x6: index = 0xa; break;
    case 0x7: index = 0xd; break;
    case 0x8: index = 0xf; break;
    case 0x9: index = 0x7; break;
    case 0xa: index = 0x8; break;
    case 0xb: index = 0xb; break;
    case 0xc: index = 0xc; break;
    case 0xd: index = 0x3; break;
    case 0xe: index = 0x4; break;
    case 0xf: index = 0xe; break;
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

static void PauseWorldMapBigSwitchMain(void) {
    u8 r4, r5;
    struct PauseWorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    UnkKirbyMapSpriteCalls(worldmap, 0);
    UnkKirbyMapSpriteCalls(worldmap, 1);
    UnkKirbyMapSpriteCalls(worldmap, 2);
    UnkKirbyMapSpriteCalls(worldmap, 3);

    if (worldmap->counter == 120) {
        sub_08124EC8();
    }

    if (worldmap->counter > 150) {
        TaskDestroy(worldmap->unk214);
        CpuFill32(0, (void*)BG_VRAM, BG_VRAM_SIZE);
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
        worldmap->counter++;
    }
}

// Is this called somewhere?
void sub_081263BC(u16 unkSpriteUnk14, u8 unkSpriteAnimId, u8 unkSpriteUnk1C) {
    struct Sprite unkSprite;
    SpriteInitNoPointer(&unkSprite, 0x06012000, 0x0280, unkSpriteUnk14, unkSpriteAnimId, 0, 0xff, 0x10, unkSpriteUnk1C,
                        0, 0, 0x81000);
}

// TODO: Constants for doors 0x1 to 0xf

void sub_08126404() {
    CreatePauseWorldMap(0x1);
}
void sub_08126410() {
    CreatePauseWorldMap(0x2);
}
void sub_0812641C() {
    CreatePauseWorldMap(0x3);
}
void sub_08126428() {
    CreatePauseWorldMap(0x4);
}
void sub_08126434() {
    CreatePauseWorldMap(0x5);
}
void sub_08126440() {
    CreatePauseWorldMap(0x6);
}
void sub_0812644C() {
    CreatePauseWorldMap(0x7);
}
void sub_08126458() {
    CreatePauseWorldMap(0x8);
}
void sub_08126464() {
    CreatePauseWorldMap(0x9);
}
void sub_08126470() {
    CreatePauseWorldMap(0xa);
}
void sub_0812647C() {
    CreatePauseWorldMap(0xb);
}
void sub_08126488() {
    CreatePauseWorldMap(0xc);
}
void sub_08126494() {
    CreatePauseWorldMap(0xd);
}
void sub_081264A0() {
    CreatePauseWorldMap(0xe);
}
void sub_081264AC() {
    CreatePauseWorldMap(0xf);
}

void sub_081264B8(void) {
    struct Sprite* unkSprite = TaskGetStructPtr(gCurTask);
    if (!sub_08155128(unkSprite)) {
        TaskDestroy(gCurTask);
    }
    else {
        sub_081564D8(unkSprite);
    }
}

void sub_08126504(void) {
    struct UnkKirbyMapSprite* unkKirbyMapSprite = TaskGetStructPtr(gCurTask);

    gCurTask->main = sub_081254A8;
    sub_08155128(&unkKirbyMapSprite->unk0);
    sub_08155128(&unkKirbyMapSprite->unk28);
    sub_081564D8(&unkKirbyMapSprite->unk0);
    sub_081564D8(&unkKirbyMapSprite->unk28);
}

static void sub_08126558(void) {
    struct PauseWorldMap* worldmap = TaskGetStructPtr(gCurTask);
    if (!sub_0812A304()) {
        if (worldmap->unk210 == 0x01) {
            sub_08124430();
        }
        else if (worldmap->unk210 == 0x04) {
            sub_081278D4();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }
    else {
        sub_0812595C(worldmap);
    }
}

// TODO: Check whether these initialisations and the particular CpuFill16 call can be rewritten nicelier with an inline

void sub_081265C8(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359DE8;
    const u8 r5 = r0[0x1];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126618(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359DEC;
    const u8 r5 = r0[0x2];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126668(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359DF4;
    const u8 r5 = r0[0x3];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_081266B8(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359DFC;
    const u8 r5 = r0[0x4];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126708(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E04;
    const u8 r5 = r0[0x5];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126758(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E08;
    const u8 r5 = r0[0x6];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_081267A8(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E10;
    const u8 r5 = r0[0x7];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_081267F8(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E1C;
    const u8 r5 = r0[0x8];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126848(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E24;
    const u8 r5 = r0[0x9];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126898(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E30;
    const u8 r5 = r0[0xa];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_081268E8(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E38;
    const u8 r5 = r0[0xb];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126938(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E40;
    const u8 r5 = r0[0xc];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126988(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E50;
    const u8 r5 = r0[0xd];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_081269D8(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E60;
    const u8 r5 = r0[0xe];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

void sub_08126A28(void) {
    u8 r4;
    const u8* r0 = gUnk_08359DD8;
    const u16* r6 = gUnk_08359E6C;
    const u8 r5 = r0[0xf];

    for (r4 = 0; r4 < r5; r4++) {
        CpuFill16(0, (u16*)0x0600c000 + r6[2 * r4], (r6[2 * r4 + 1]) << 1);
    }
}

static void PauseWorldMapSetTileDoorVisited(u32 arg0) {
    u16 unkAddressOffset = gUnk_08359C28[arg0];
    CpuFill16_2(0x5, (u16*)0x0600c000 + unkAddressOffset, 0x2);
}

static void PauseWorldMapSetTileDoorUnvisited(u32 arg0) {
    u16 unkAddressOffset = gUnk_08359C28[arg0];
    CpuFill16_2(0x6, (u16*)0x0600c000 + unkAddressOffset, 0x2);
}

static void sub_08126AE0(void) {
    struct PauseWorldMap* worldmap = TaskGetStructPtr(gCurTask);

    if (worldmap->unk211++ > 0x12) {
        TaskDestroy(gUnk_0203ACC0[gUnk_0203AD3C].unk0);
        TaskDestroy(gCurTask);
        sub_08039670();
    }
    sub_0812595C(worldmap);
}
