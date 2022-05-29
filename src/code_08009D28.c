#include "data.h"
#include "functions.h"
#include "kirby.h"
#include "code_080023A4.h"
#include "code_08002848.h"
#include "code_08009D28.h"
#include "code_080027E8.h"

// TODO: define file boundaries

u32 sub_0800385C(void *, u16);
u32 sub_080042BC(void *, void *, u16, u16);
u32 sub_080047E0(void *, void *, u16, u16);
u32 sub_08004888(void *, void *, u16, u16);
u32 sub_08004998(void *, void *, u16, u16);
u32 sub_08004A44(void *, void *, u16, u16);
u32 sub_08004B58(void *, void *, u16, u16);
u32 sub_08004DBC(void *, void *, u16, u16);
u32 sub_08004FA8(void *, void *, u16, u16);
u32 sub_0800520C(void *, void *, u16, u16);
u32 sub_080053F8(void *, void *, u16, u16);
u32 sub_0800549C(void *, void *, u16, u16);
u32 sub_08005544(void *, void *, u16, u16);
u32 sub_080057A4(void *, void *, u16, u16);
u32 sub_08005A04(void *, void *, u16, u16);
u32 sub_08005BF8(void *, void *, u16, u16);
u32 sub_08005DE0(void *, void *, u16, u16);
u32 sub_08005FD8(void *, void *, u16, u16);
u32 sub_080061C4(void *, void *, u16, u16);
u32 sub_080063B0(void *, void *, u16, u16);
u32 sub_08006598(void *, void *, u16, u16);

bool32 sub_08009D28(struct ObjectBase *arg0)
{
    if (
        (arg0->flags & 0xC0) != 0 ||
        (gUnk_082D88B8[sub_080023E4(
            arg0->unk56, 
            arg0->x >> 0xC,
            arg0->y >> 0xC
        )] & 0x100) == 0
    ) 
        return FALSE;
    
    return TRUE;
}

bool32 sub_08009D70(struct ObjectBase *arg0)
{
    if (
        (arg0->flags & 0xE0) != 0 ||
        gUnk_082D88B8[32] != gUnk_082D88B8[sub_080023E4(
            arg0->unk56, 
            arg0->x >> 0xC,
            (arg0->y + (arg0->unk3F * 0x100) + 1) >> 0xC
        )]
    ) 
        return FALSE;
    
    return TRUE;
}

u8 sub_08009DC8(struct Object2 *arg0) { return sub_0800385C(arg0, 0x4); }
u8 sub_08009DD8(struct Kirby   *arg0) { return sub_0800385C(arg0, 0x0); }
u8 sub_08009DE8(struct Object2 *arg0) { return sub_0800385C(arg0, 0x1); }
u8 sub_08009DF8(struct Object2 *arg0) { return sub_0800385C(arg0, 0x2); }
u8 sub_08009E08(struct Object2 *arg0) { return 0xF; }

u16 sub_08009E0C(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080042BC(arg0, arg1, arg2, 0xD); }
u16 sub_08009E20(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080047E0(arg0, arg1, arg2, 0x1); }
u16 sub_08009E34(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004888(arg0, arg1, arg2, 0x2); }
u16 sub_08009E48(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004998(arg0, arg1, arg2, 0x4); }
u16 sub_08009E5C(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004A44(arg0, arg1, arg2, 0x3); }
u16 sub_08009E70(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004B58(arg0, arg1, arg2, 0x5); }
u16 sub_08009E84(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004DBC(arg0, arg1, arg2, 0x6); }
u16 sub_08009E98(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004FA8(arg0, arg1, arg2, 0x8); }
u16 sub_08009EAC(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_0800520C(arg0, arg1, arg2, 0x7); }
u16 sub_08009EC0(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_0800549C(arg0, arg1, arg2, 0xA); }
u16 sub_08009ED4(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080053F8(arg0, arg1, arg2, 0x9); }
u16 sub_08009EE8(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08005544(arg0, arg1, arg2, 0xB); }
u16 sub_08009EFC(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080057A4(arg0, arg1, arg2, 0xC); }
u16 sub_08009F10(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08005A04(arg0, arg1, arg2, 0x5); }
u16 sub_08009F24(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08005BF8(arg0, arg1, arg2, 0x6); }
u16 sub_08009F38(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08005DE0(arg0, arg1, arg2, 0x8); }
u16 sub_08009F4C(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08005FD8(arg0, arg1, arg2, 0x7); }
u16 sub_08009F60(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080061C4(arg0, arg1, arg2, 0xB); }
u16 sub_08009F74(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080063B0(arg0, arg1, arg2, 0xC); }
u16 sub_08009F88(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004B58(arg0, arg1, arg2, 0x4A); }
u16 sub_08009F9C(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004DBC(arg0, arg1, arg2, 0x4B); }
u16 sub_08009FB0(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08004FA8(arg0, arg1, arg2, 0x4D); }
u16 sub_08009FC4(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_0800520C(arg0, arg1, arg2, 0x4C); }
u16 sub_08009FD8(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08005544(arg0, arg1, arg2, 0x4E); }
u16 sub_08009FEC(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080057A4(arg0, arg1, arg2, 0x4F); }
u16 sub_0800A000(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_080042BC(arg0, arg1, arg2, 0x50); }
u16 sub_0800A014(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x67); }
u16 sub_0800A028(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x68); }
u16 sub_0800A03C(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x69); }
u16 sub_0800A050(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x6A); }
u16 sub_0800A064(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x6B); }
u16 sub_0800A078(struct Object2 *arg0, void *arg1, u16 arg2) { return sub_08006598(arg0, arg1, arg2, 0x6C); }

void CreateLevelObjects(u8 playerId)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

    if (levelInfo->currentRoom != 0xFFFF) {
        const struct Object *obj = levelInfo->objlistPtr->unk0;

        s16 stack0[4][2] = {
            {((gCurLevelInfo[0].unkC  + gCurLevelInfo[0].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[0].unk10 + gCurLevelInfo[0].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[1].unkC  + gCurLevelInfo[1].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[1].unk10 + gCurLevelInfo[1].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[2].unkC  + gCurLevelInfo[2].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[2].unk10 + gCurLevelInfo[2].unk20) >> 0xC) - 2},
            {((gCurLevelInfo[3].unkC  + gCurLevelInfo[3].unk1C) >> 0xC) - 2,
             ((gCurLevelInfo[3].unk10 + gCurLevelInfo[3].unk20) >> 0xC) - 2}
        };

        for (; obj->unk1 != 0; obj = (void *) obj + obj->unk1) {
            if (sub_080027E8(obj->unk2, obj->unk3, levelInfo->unk65E) != 0)
                continue;

            if ((obj->unk5 & 1) == 0) {
                s32 unkX, unkY, unkXX, unkYY;
                u8 p;

                unkX = stack0[playerId][0] - 1;

                if (unkX > (obj->x >> 4) || (obj->x >> 4) >= unkX + 0x16)
                    continue;

                unkY = stack0[playerId][1] - 1;

                if (unkY > (obj->y >> 4) || (obj->y >> 4) >= unkY + 0x11)
                    continue;

                for (p = 0; p < gUnk_0203AD30; p++) {
                    if (
                        p == playerId ||
                        gCurLevelInfo[p].currentRoom != levelInfo->currentRoom ||
                        ((gKirbys + p)->base.base.base.unkC & 0x200000) != 0
                    )
                        continue;

                    unkXX = stack0[p][0] + 1;

                    if (unkXX > (obj->x >> 4) || (obj->x >> 4) >= unkXX + 0x11)
                        continue;

                    unkYY = stack0[p][1] + 1;

                    if (unkYY > (obj->y >> 4) || (obj->y >> 4) >= unkYY + 0xC)
                        continue;

                    goto _0800A286;
                }
            }

            CreateObject(playerId, obj);
        _0800A286:;
        }
    }
}

void sub_0800A2B4(u8 playerId, s16 arg1, s16 (*arg2)[2], s16 arg3)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;
    const struct Object *obj = levelInfo->objlistPtr->unk0;

    struct Unk_02023720 *var2;

    u8 p;

    for (; obj->unk1 != 0; obj = (void *) obj + obj->unk1) {
        if (
            sub_080027E8(obj->unk2, obj->unk3, levelInfo->unk65E) != 0 ||
            arg2[playerId][1] > (obj->y >> 4) || (obj->y >> 4) >= arg2[playerId][1] + 0xE
        )
            continue;

        if (arg3 > 0) {
            if (arg1 - arg3 > (obj->x >> 4) || (obj->x >> 4) > arg1)
                continue;
        }
        else if (arg3 < 0) {
            if (arg1 > (obj->x >> 4) || (obj->x >> 4) > arg1 - arg3)
                continue;
        }
        else {
            if (arg1 != (obj->x >> 4)) 
                continue;
        }

        for (p = 0; p < gUnk_0203AD30; p++)
            if (
                p != playerId &&
                gCurLevelInfo[p].currentRoom == levelInfo->currentRoom &&
                arg2[p][0] + 1 <= (obj->x >> 4) && (obj->x >> 4) < arg2[p][0] + 0x12 &&
                arg2[p][1] + 1 <= (obj->y >> 4) && (obj->y >> 4) < arg2[p][1] + 0xD
            )
                goto _0800A5EA;

        var2 = sub_08002958(playerId);

        switch (obj->spawnTable) {
            struct ObjectBase *ughhh;

            case 1:
                ughhh = gSpawnFuncTable1[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;

            case 2:
                ughhh = gSpawnFuncTable2[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;
        }

        sub_08002918(playerId, var2);

    _0800A5EA:;
    }
}

void sub_0800A460(u8 playerId, s16 arg1, s16 (*arg2)[2], s16 arg3)
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;
    const struct Object *obj = levelInfo->objlistPtr->unk0;

    struct Unk_02023720 *var2;

    u8 p;

    for (; obj->unk1 != 0; obj = (void *) obj + obj->unk1) {
        if (
            sub_080027E8(obj->unk2, obj->unk3, levelInfo->unk65E) != 0 ||
            arg2[playerId][0] > (obj->x >> 4) || (obj->x >> 4) >= arg2[playerId][0] + 0x13
        )
            continue;

        if (arg3 > 0) {
            if (arg1 - arg3 > (obj->y >> 4) || (obj->y >> 4) > arg1)
                continue;
        }
        else if (arg3 < 0) {
            if (arg1 > (obj->y >> 4) || (obj->y >> 4) > arg1 - arg3)
                continue;
        }
        else {
            if (arg1 != (obj->y >> 4)) 
                continue;
        }

        for (p = 0; p < gUnk_0203AD30; p++)
            if (
                p != playerId &&
                gCurLevelInfo[p].currentRoom == levelInfo->currentRoom &&
                arg2[p][0] + 1 <= (obj->x >> 4) && (obj->x >> 4) < arg2[p][0] + 0x12 &&
                arg2[p][1] + 1 <= (obj->y >> 4) && (obj->y >> 4) < arg2[p][1] + 0xD
            )
                goto _0800A5EA;

        var2 = sub_08002958(playerId);

        switch (obj->spawnTable) {
            struct ObjectBase *ughhh;

            case 1:
                ughhh = gSpawnFuncTable1[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;

            case 2:
                ughhh = gSpawnFuncTable2[obj->type](obj, playerId);
                var2->unk08 = &ughhh->unk56;
                break;
        }

        sub_08002918(playerId, var2);

    _0800A5EA:;
    }
}

void sub_0800A60C(u8 playerId, s16 (*arg1)[2])
{
    struct LevelInfo *levelInfo = gCurLevelInfo + playerId;

    s16 stack0[] = {levelInfo->unkC  >> 0xC, levelInfo->unk10 >> 0xC};
    s16 stack4[] = {levelInfo->unk14 >> 0xC, levelInfo->unk18 >> 0xC};

    if (stack4[0] < stack0[0])
        sub_0800A2B4(playerId, arg1[playerId][0] + 0x13, arg1, 1);
    else if (stack4[0] > stack0[0])
        sub_0800A2B4(playerId, arg1[playerId][0], arg1, -1);

    if (stack4[1] < stack0[1])
        sub_0800A460(playerId, arg1[playerId][1] + 0xE, arg1, 1);
    else if (stack4[1] > stack0[1])
        sub_0800A460(playerId, arg1[playerId][1], arg1, -1);
}

void sub_0800A6E8(void)
{
    s16 stack0[][2] = {
        {(gCurLevelInfo[0].unkC >> 0xc) - 2, (gCurLevelInfo[0].unk10 >> 0xc) - 2},
        {(gCurLevelInfo[1].unkC >> 0xc) - 2, (gCurLevelInfo[1].unk10 >> 0xc) - 2},
        {(gCurLevelInfo[2].unkC >> 0xc) - 2, (gCurLevelInfo[2].unk10 >> 0xc) - 2},
        {(gCurLevelInfo[3].unkC >> 0xc) - 2, (gCurLevelInfo[3].unk10 >> 0xc) - 2}
    };

    u8 p;

    for (p = 0; p < gUnk_0203AD30; p++) {
        if (gCurLevelInfo[p].currentRoom == 0xFFFF)
            continue;

        if (
            abs(gCurLevelInfo[p].unkC  - gCurLevelInfo[p].unk14) > 0x1000 ||
            abs(gCurLevelInfo[p].unk10 - gCurLevelInfo[p].unk18) > 0x1000
        )
            CreateLevelObjects(p);
        else
            sub_0800A60C(p, stack0);
    }
}

void sub_0800A820(void)
{
    gUnk_03000004 = TaskCreate(sub_0800A6E8, 4, 0xF10, 0, sub_0800A8BC);
}

void sub_0800A84C(void)
{
    if (gUnk_03000004) {
        TaskDestroy(gUnk_03000004);
        gUnk_03000004 = NULL;
    }
}

void *CreateObject(u8 playerId, const struct Object *obj)
{
    struct Unk_02023720 *var0;
    struct Object2 *var1;

    var0 = sub_08002958(playerId);

    switch (obj->spawnTable) {
    case 1:
        var1 = gSpawnFuncTable1[obj->type](obj, playerId);
        var0->unk08 = &var1->base.unk56;
        break;
    case 2:
        var1 = gSpawnFuncTable2[obj->type](obj, playerId);
        var0->unk08 = &var1->base.unk56;
        break;
    default:
        var1 = NULL;
        break;
    }

    sub_08002918(playerId, var0);
    return var1;
}

void sub_0800A8BC(struct Task *arg0)
{
    gUnk_03000004 = NULL;
}

void sub_0800A8C8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}

void sub_0800A8F8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}
