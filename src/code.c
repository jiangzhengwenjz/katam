#include "global.h"
#include "data.h"
#include "functions.h"
#include "main.h"
#include "task.h"
#include "bg.h"
#include "gba/macro.h"

static void LoadLevelGfx(u8 playerId, const u16 **arg1, const u16 **arg2);

void sub_08000460(void)
{
    struct Unk_08002E48 *var;
    u8 i;

    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG3_ON;
    gUnk_02023350 = TaskCreate(sub_08001FF8, 0, 1, 0, (TaskDestructor)sub_08002E3C);
    gUnk_02023354 = TaskCreate(sub_08002118, 0x28, 0x7FFF, 0, sub_08002E48);
    var = TaskGetStructPtr(gUnk_02023354);
    gBgCntRegs[0] = 0x1F03;
    gBgCntRegs[3] = 0x1E0A;
    gBgCntRegs[2] = 0x1D09;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    var->unk24 = gUnk_03002E60;
    gUnk_03002E60 = (const union Unk_03002E60 *)gUnk_082D8D74;
    CpuFill32(0, gUnk_02028EE0, sizeof(gUnk_02028EE0[0]) * 4);
    CpuFill32(0, gUnk_02024ED0, sizeof(gUnk_02024ED0[0]) * 4);
    CpuFill32(0, gUnk_02026D60, sizeof(gUnk_02026D60[0]) * 4);
    CpuFill16(0, gUnk_02026D50, 8);
    sub_080027A8();
    var->unk0 = gLocalPlayerId;
    CpuFill16(0, gCurLevelInfo, sizeof(gCurLevelInfo));

    for (i = 0; i < 4; i++) {
        struct LevelInfo *levelInfo = &gCurLevelInfo[i];

        levelInfo->currentRoom |= 0xFFFF;
        levelInfo->unk65C |= 0xFFFF;
        BgInit(&levelInfo->unkC0[1], 0x6008000, 0, 0x600F000, 0, 0, i, 0, 0, 0, 0, 0x1F, 0x15, 0, 0, 0,
            0x3B, 0, 0, 0x7FFF, 0x7FFF);
        BgInit(&levelInfo->unkC0[2], 0x6000000, 0, 0x600F800, 0, 0, i + 4, 0, 0, 0, 0, 0x1F, 0x15, 0, 0, 0,
            0x38, 0, 0, 0x7FFF, 0x7FFF);
        BgInit(&levelInfo->unkC0[0], 0x6008000, 0, 0x600E800, 0, 0, i + 8, 0, 0, 0, 0, 0x1F, 0x15, 0, 0, 0,
            0x3A, 0, 0, 0x7FFF, 0x7FFF);
    }

    if (!(gUnk_0203AD10 & 1))
        sub_0800A820();
}

void sub_080006EC(void)
{
    struct Unk_08002E48 *var0 = TaskGetStructPtr(gUnk_02023354), *var1 = var0;
    u16 i;

    var1->unk2 = gDispCnt;

    for (i = 0; i < 4; i++) {
        var1->unk4[i] = gBgCntRegs[i];
        var1->unkC[i][0] = gBgScrollRegs[i][0];
        var1->unkC[i][1] = gBgScrollRegs[i][1];
    }

    CpuCopy16(&gBldRegs, var1->unk1C, 4);
    gUnk_03002E60 = var1->unk24;
}

void sub_08000798(void)
{
    u8 playerId = sub_08002374();
    struct Unk_08002E48 *var0 = TaskGetStructPtr(gUnk_02023354), *var1 = var0;
    u16 i;

    gUnk_03002E60 = (const union Unk_03002E60 *)gUnk_082D8D74;
    gDispCnt = var1->unk2;

    for (i = 0; i < 4; i++) {
        gBgCntRegs[i] = var1->unk4[i];
        gBgScrollRegs[i][0] = var1->unkC[i][0];
        gBgScrollRegs[i][1] = var1->unkC[i][1];
    }

    CpuCopy16(var1->unk1C, &gBldRegs, 4);
    LoadLevelGfx(playerId, 0, 0);
    sub_08003438();
    gCurLevelInfo[playerId].unkC0[1].prevScrollX = 0x7FFF;
    gCurLevelInfo[playerId].unkC0[1].prevScrollY = 0x7FFF;
    gCurLevelInfo[playerId].unkC0[2].prevScrollX = 0x7FFF;
    gCurLevelInfo[playerId].unkC0[2].prevScrollY = 0x7FFF;
    gCurLevelInfo[playerId].unkC0[0].prevScrollX = 0x7FFF;
    gCurLevelInfo[playerId].unkC0[0].prevScrollY = 0x7FFF;
    sub_080019F8(gCurLevelInfo + playerId);
}

static void LoadLevelGfx(u8 playerId, const u16 **arg1, const u16 **arg2)
{
    struct Unk_08002E48 *var = TaskGetStructPtr(gUnk_02023354);
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

    var->unk0 = playerId;
    gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG3_ON;
    LZ77UnCompVram(gForegroundInfo[gRoomProps[levelInfo->currentRoom].pixelDataIdx]->tileset, (void *)0x6008000);

    if (arg1)
        *arg1 = gForegroundPalettes[gRoomProps[levelInfo->currentRoom].paletteDataIdx]->palette;

    levelInfo->unkC0[1].prevScrollX = 0x7FFF;
    levelInfo->unkC0[1].prevScrollY = 0x7FFF;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    LZ77UnCompVram(levelInfo->unk180[1].tileset, (void *)0x6000000);

    if (arg2)
        *arg2 = levelInfo->unk180[1].palette;

    levelInfo->unkC0[2].prevScrollX = 0x7FFF;
    levelInfo->unkC0[2].prevScrollY = 0x7FFF;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    levelInfo->unkC0[0].prevScrollX = 0x7FFF;
    levelInfo->unkC0[0].prevScrollY = 0x7FFF;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;

    if (gRoomProps[levelInfo->currentRoom].objectList2Idx != 0xFFFF)
        gDispCnt |= DISPCNT_BG2_ON;
    else
        gDispCnt &= ~DISPCNT_BG2_ON;

    gBgCntRegs[3] &= ~3;
    gBgCntRegs[2] &= ~3;

    if (gRoomProps[levelInfo->currentRoom].priorityFlags & 1) {
        gBgCntRegs[3] |= 2;
        gBgCntRegs[2] |= 1;
    }
    else {
        gBgCntRegs[3] |= 1;
        gBgCntRegs[2] |= 2;
    }
}

void FillLevelInfo(u8 playerId, u16 roomId, const u16 **arg2, const u16 **arg3)
{
    struct Unk_08002E48 *var0 = TaskGetStructPtr(gUnk_02023354), *var1 = var0;
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;
    struct Background *bg2 = &levelInfo->unkC0[2];
    struct Background *bg0 = &levelInfo->unkC0[0];
    u16 prevRoom = levelInfo->currentRoom;
    u8 i = 0;

    if (prevRoom != 0xFFFF)
        sub_08003028(playerId, playerId == var1->unk0);

    levelInfo->unk5FA = levelInfo->currentRoom;
    levelInfo->currentRoom = roomId;

    if (roomId != 0xFFFF) {
        s32 x, y;

        CpuCopy16(gForegroundTilemaps[gRoomProps[roomId].mapDataIdx], levelInfo->unk180, sizeof(struct RoomTiledBG));
        CpuCopy16(gRoomTiledBGs[gRoomProps[roomId].backgroundIdx], levelInfo->unk180 + 1, sizeof(struct RoomTiledBG));

        if (gRoomProps[roomId].objectList2Idx != 0xFFFF)
            CpuCopy16(gLevelObjLists[gRoomProps[roomId].objectList2Idx].unk, levelInfo->unk180 + 2, sizeof(struct RoomTiledBG));
        else
            CpuFill16(0xFFFF, levelInfo->unk180 + 2, sizeof(struct RoomTiledBG));

        levelInfo->roomWidth = levelInfo->unk180[0].width * 8;
        levelInfo->roomHeight = levelInfo->unk180[0].height * 8;
        levelInfo->levelMinPosition.x = 0x800;
        levelInfo->levelMinPosition.y = 0x800;
        levelInfo->levelMaxPosition.x = x = (levelInfo->roomWidth - 8) * 0x100;
        levelInfo->levelMaxPosition.y = y = (levelInfo->roomHeight - 2) * 0x100;
        levelInfo->unk58 = 0x800;
        levelInfo->unk5C = 0x800;
        levelInfo->unk60 = x;
        levelInfo->unk64 = y;
        levelInfo->unk68 = 0x200;
        levelInfo->unk_S32Vec2_6C.x = 0x800;
        levelInfo->unk_S32Vec2_6C.y = 0x800;
        levelInfo->unk_S32Vec2_74.x = x;
        levelInfo->unk_S32Vec2_74.y = (levelInfo->roomHeight - 0x28) * 0x100;
        levelInfo->unk_S32Vec2_7C.x = 0x800;
        levelInfo->unk_S32Vec2_7C.y = 0x800;
        levelInfo->unk_S32Vec2_84.x = levelInfo->unk_S32Vec2_74.x;
        levelInfo->unk_S32Vec2_84.y = levelInfo->unk_S32Vec2_74.y;
        levelInfo->unk8C = 0x200;
        levelInfo->unk90 = levelInfo->levelMinPosition.x;
        levelInfo->unk94 = levelInfo->levelMinPosition.y;
        levelInfo->unk98 = levelInfo->levelMaxPosition.x;
        levelInfo->unk9C = (levelInfo->roomHeight - 1) * 0x100;
        levelInfo->unkA0 = levelInfo->unk90;
        levelInfo->unkA4 = levelInfo->unk94;
        levelInfo->unkA8 = levelInfo->unk98;
        levelInfo->unkAC = levelInfo->unk9C;
        levelInfo->unkB0 = 0x200;
        levelInfo->unk8 = 0;
        levelInfo->viewportPosition.x = 0;
        levelInfo->viewportPosition.y = 0;
        levelInfo->viewportPositionUnmodified.x = 0;
        levelInfo->viewportPositionUnmodified.y = 0;
        levelInfo->unk1C = 0;
        levelInfo->unk20 = 0;
        levelInfo->altViewport_24.x = 0;
        levelInfo->altViewport_24.y = (levelInfo->unk180[2].height * 8 - 0xA0) * 0x100;
        levelInfo->unk2C = 0;
        levelInfo->unk30 = 0;
        levelInfo->altViewport_34.x = gRoomProps[roomId].unk0A;
        // y is not read again; the assignment keeps unk0C + 0xA0 from being
        // reassociated into (height * 8 - 0xA0) - unk0C.
        levelInfo->altViewport_34.y = (levelInfo->unk180[1].height * 8 - (y = gRoomProps[roomId].unk0C + 0xA0)) * 0x100;
        levelInfo->unk3C = 0;
        levelInfo->unk40 = 0;
        levelInfo->viewportModX_44 = 0;
        levelInfo->viewportModY_46 = 0;
        levelInfo->unk1E0 = gSolidityMaps[gRoomProps[roomId].solidityMapIdx]->unk4;
        levelInfo->objlistPtr = gLevelObjLists[gRoomProps[levelInfo->currentRoom].objectListIdx].obj;
        levelInfo->unk1E8 = gUnk_08D63C28[gRoomProps[levelInfo->currentRoom].unk22];
        // The extra scope releases the CpuFill temporaries' stack slots for reuse
        // by the fills further down; without it the frame grows from 0x30 to 0x38.
        {
            CpuFill32(0, levelInfo->unk5FC, sizeof(levelInfo->unk5FC));
            CpuFill32(0, levelInfo->unk63C, sizeof(levelInfo->unk63C));
        }

        if (levelInfo->unk180[1].width <= 0x20 && levelInfo->unk180[1].height <= 0x20) {
            bg2->unk26 = levelInfo->unk180[1].width;
            bg2->unk28 = levelInfo->unk180[1].height;
            bg2->unk2E &= ~0x20;
        }
        else {
            bg2->unk26 = 0x1F;
            bg2->unk28 = 0x15;
            bg2->unk2E |= 0x20;
        }

        bg2->scrollX = 0;
        bg2->scrollY = levelInfo->unk180[1].height * 8 - 0xA0;
        bg2->unk18 = 0;
        bg2->unk1A = 0;
        bg2->prevScrollX = 0x7FFF;
        bg2->prevScrollY = 0x7FFF;

        if (gRoomProps[roomId].priorityFlags & 4) {
            levelInfo->unkB8 = gRoomProps[roomId].unk0E;
            levelInfo->unkBA = gRoomProps[roomId].unk10;
        }
        else {
            s32 x2 = (levelInfo->unk180[1].width * 8 - 0xF0) * 0x100;
            s32 y2 = (levelInfo->unk180[1].height * 8 - 0xA0) * 0x100;

            if (x2 > 0) {
                if (gRoomProps[roomId].unk0E == -1)
                    levelInfo->unkB8 = x2 / 0x870;
                else
                    levelInfo->unkB8 = gRoomProps[roomId].unk0E;
            }
            else {
                levelInfo->unkB8 = 0;
            }

            if (y2 > 0) {
                if (gRoomProps[roomId].unk10 == -1)
                    levelInfo->unkBA = y2 / 0x5A0;
                else
                    levelInfo->unkBA = gRoomProps[roomId].unk10;
            }
            else {
                levelInfo->unkBA = 0;
            }
        }

        // width == 0x20 && height == 0x20, compared as one word
        if (*(u32 *)&levelInfo->unk180[2] == 0x00200020) {
            bg0->unk26 = 0x20;
            bg0->unk28 = 0x20;
            bg0->unk2E &= ~0x20;
        }
        else {
            bg0->unk26 = 0x1F;
            bg0->unk28 = 0x15;
            bg0->unk2E |= 0x20;
        }

        bg0->scrollX = 0;
        bg0->scrollY = levelInfo->unk180[2].height * 8 - 0xA0;
        bg0->unk18 = 0;
        bg0->unk1A = 0;
        bg0->prevScrollX = 0x7FFF;
        bg0->prevScrollY = 0x7FFF;
        levelInfo->unk_S16Vec2_B4.x = gRoomProps[roomId].unkXmod_06;
        levelInfo->unk_S16Vec2_B4.y = gRoomProps[roomId].unkXmod_08;
    }

    if (prevRoom != 0xFFFF) {
        for (i = 0; i < gNumKirbys; i++) {
            if (i == playerId)
                continue;
            if (gCurLevelInfo[i].currentRoom == prevRoom)
                break;
        }

        if (i < gNumKirbys) {
            while (levelInfo->unk1F0.first) {
                struct Unk_02023720 *node = sub_08002958(i);

                node->unk08 = levelInfo->unk1F0.first->unk08;
                sub_080028CC(playerId, levelInfo->unk1F0.first);
                sub_08002918(i, node);
            }
        }
        else {
            while (levelInfo->unk1F0.first)
                sub_080028CC(playerId, levelInfo->unk1F0.first);
        }
    }

    if (roomId != 0xFFFF) {
        for (i = 0; i < gNumKirbys; i++) {
            if (i == playerId)
                continue;
            if (gCurLevelInfo[i].currentRoom == roomId)
                break;
        }

        if (i < gNumKirbys) {
            levelInfo->unk65E = gCurLevelInfo[i].unk65E;
            levelInfo->unk180[0].tilemap = (const u16 *)gUnk_02028EE0[levelInfo->unk65E];
        }
        else {
            u8 mask = 0;

            for (i = 0; i < gNumKirbys; i++) {
                if (i == playerId)
                    continue;
                if (gCurLevelInfo[i].currentRoom == 0xFFFF)
                    continue;
                mask |= 1 << gCurLevelInfo[i].unk65E;
            }

            for (i = 0; i < 4; i++) {
                if (!((mask >> i) & 1)) {
                    levelInfo->unk65E = i;
                    break;
                }
            }

            RLUnCompWram(gSolidityMaps[gRoomProps[roomId].solidityMapIdx]->unk0, gUnk_02024ED0[levelInfo->unk65E]);
            RLUnCompWram(gUnk_08D63C28[gRoomProps[roomId].unk22]->unk10, gUnk_02026D60[levelInfo->unk65E]);
            LZ77UnCompWram((const u32 *)levelInfo->unk180[0].tilemap, gUnk_02028EE0[levelInfo->unk65E]);
            levelInfo->unk180[0].tilemap = (const u16 *)gUnk_02028EE0[levelInfo->unk65E];
            CpuFill32(0, gUnk_02023358[levelInfo->unk65E], sizeof(gUnk_02023358[0]));
            CpuFill32(0, gUnk_02023388[levelInfo->unk65E], sizeof(gUnk_02023388[0]));
            gUnk_02023508[levelInfo->unk65E] = 0;
            gUnk_02023510[levelInfo->unk65E] = 0;
            gUnk_02026D50[levelInfo->unk65E] = 1;

            if (prevRoom == roomId)
                gUnk_02026D50[levelInfo->unk65E] |= 4;

            gUnk_02023518[levelInfo->unk65E] = gRoomProps[roomId].songIdx;

            {
                u8 j;

                for (j = 0; j < 2; j++)
                    gUnk_02023520[levelInfo->unk65E][j] |= 0xFFFF;
            }
        }
    }

    if (roomId != 0xFFFF) {
        levelInfo->unkC0[1].prevScrollX = 0x7FFF;
        levelInfo->unkC0[1].prevScrollY = 0x7FFF;
        levelInfo->unkC0[1].unk1A = 0;
        levelInfo->unkC0[1].unk18 = 0;
        levelInfo->unkC0[1].scrollX = 0;
        levelInfo->unkC0[1].scrollY = 0;
        levelInfo->unkC0[2].prevScrollX = 0x7FFF;
        levelInfo->unkC0[2].prevScrollY = 0x7FFF;
        levelInfo->unkC0[2].unk18 = 0;
        levelInfo->unkC0[2].unk1A = 0;
        levelInfo->unkC0[2].scrollX = 0;
        levelInfo->unkC0[2].scrollY = 0;
        levelInfo->unkC0[0].prevScrollX = 0x7FFF;
        levelInfo->unkC0[0].prevScrollY = 0x7FFF;
        levelInfo->unkC0[0].unk18 = 0;
        levelInfo->unkC0[0].unk1A = 0;
        levelInfo->unkC0[0].scrollX = 0;
        levelInfo->unkC0[0].scrollY = 0;
        levelInfo->unk1EC = 1;
        levelInfo->unk662 = 0x180;
        levelInfo->unk664 = 0x180;

        if (playerId == var1->unk0)
            LoadLevelGfx(playerId, arg2, arg3);

        sub_08001D18(playerId);
        levelInfo->viewportPositionUnmodified.x = levelInfo->viewportPosition.x;
        levelInfo->viewportPositionUnmodified.y = levelInfo->viewportPosition.y;
        sub_08002EC4(playerId, playerId == var1->unk0);
    }

    if ((gUnk_0203AD10 & 2) && playerId < gNumHumanPlayers && gLocalPlayerId != i)
        sub_08031CE4(8);
}
