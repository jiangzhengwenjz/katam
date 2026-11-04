#include "global.h"
#include "object.h"
#include "object_spawner.h"
#include "data.h"
#include "kirby.h"
#include "malloc_ewram.h"
#include "functions.h"
#include "constants/object_types.h"
#include "gba/m4a.h"
#include "code_0806F780.h"

static void sub_0811BE64(struct ObjectSpawner *);
static void sub_0811BEBC(struct Task *);

void sub_0811BA30(struct ObjectSpawner *spawner) {
    struct ObjectSpawner *spawner2 = spawner;

    spawner->obj.base.counter = 70;
    if ((spawner->obj.objTemplate->unk14 & 0xFF) >= OBJ_MR_FROSTY
        && (spawner->obj.objTemplate->unk14 & 0xFF) <= OBJ_DARK_META_KNIGHT_W8) {
        spawner->obj.base.counter = 0;
    }
    spawner->obj.unk8C = EwramMalloc((spawner->obj.objTemplate->unk14 >> 8) << 3);
    CpuFill32(0, spawner->obj.unk8C, (spawner->obj.objTemplate->unk14 >> 8) << 2);
    spawner2->obj.unk78 = sub_0811BAAC;
    spawner2->unkDE = 0;
    spawner2->unkDF = 0;
    spawner2->unkDC = 0;
}

void sub_0811BAAC(struct ObjectSpawner *spawner) {
    struct ObjectSpawner *spawner2 = spawner;

    if (spawner->obj.objTemplate->unk22 & 2) {
        spawner->unkDC = sub_080029E4(gCurLevelInfo[spawner->obj.kirby3->base.unk56].unk65E);
    } else {
        spawner->unkDC = sub_080029BC(gCurLevelInfo[spawner->obj.kirby3->base.unk56].unk65E);
    }

    if (spawner2->unkDC >= ((spawner->obj.objTemplate->unk18 & 0xFF00) >> 8)
        && spawner2->unkDE < ((spawner->obj.objTemplate->unk14 & 0xFF00) >> 8)) {
        ++spawner2->unkDF;
        if (spawner2->unkDF >= spawner->obj.objTemplate->unk12) {
            u16 unk22Val;

            spawner2->unkDF = spawner->obj.objTemplate->unk12;
            if ((spawner->obj.objTemplate->unk14 & 0xFF) >= OBJ_MR_FROSTY
                && (spawner->obj.objTemplate->unk14 & 0xFF) <= OBJ_DARK_META_KNIGHT_W8) {
                if (spawner->obj.base.counter == 0) {
                    CreateEffectObject(&spawner->obj.base, 0, 0x2C4, 0);
                    PlaySfx(&spawner->obj.base, SE_08D5EA08);
                }
                unk22Val = 5;
            } else {
                CreateEffectObject(&spawner->obj.base, 0, 0x2B4, 0);
                PlaySfx(&spawner->obj.base, SE_SPAWN_OBJECT);
                unk22Val = 0;
            }

            if (spawner->obj.base.counter++ > 64) {
                struct ObjectBase *spawned;
                struct ObjectBase **entities;
                u32 i;
                struct ObjectTemplate sp0;

                spawned = CreateObjTemplateAndObj(spawner->obj.kirby3->base.unk56, 1, 0x24,
                    spawner->obj.objTemplate->x, spawner->obj.objTemplate->y,
                    0, 0x1F, 0, 0,
                    spawner->obj.objTemplate->unk14, spawner->obj.objTemplate->subtype1,
                    0, spawner->obj.objTemplate->subtype2, unk22Val,
                    spawner->obj.objTemplate->unk1A, spawner->obj.objTemplate->unk1C,
                    spawner->obj.objTemplate->unk1E, spawner->obj.objTemplate->unk20,
                    0, 0, 0, 0, 0);
                entities = spawner->obj.unk8C;
                for (i = 0; i < (spawner->obj.objTemplate->unk14 >> 8); ++entities, ++i) {
                    if (!*entities) {
                        *entities = spawned;
                        ++spawner2->unkDE;
                        break;
                    }
                }
                spawner2->unkDF = 0;
            }
        }
    }

    if (!(spawner->obj.objTemplate->unk22 & 1) && spawner2->unkDE != 0) {
        sub_0811BE64(spawner);
    }
}

void *CreateObjectSpawner(struct ObjectTemplate *template, u8 playerId) {
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct ObjectSpawner), 0x1000, TASK_USE_IWRAM, sub_0811BEBC);
    struct ObjectSpawner *spawner = TaskGetStructPtr(t);

    InitObject(&spawner->obj, template, playerId);
    spawner->obj.base.flags |= 0x2018F40;
    spawner->obj.base.unk5C |= 0x20;
    spawner->obj.base.unkC |= 1;
    gUnk_08351648[spawner->obj.type].unk10(&spawner->obj);
    return spawner;
}

static void sub_0811BE64(struct ObjectSpawner *spawner) {
    struct ObjectBase **entities = spawner->obj.unk8C;
    u32 i;

    for (i = 0; i < (spawner->obj.objTemplate->unk14 & 0xFF00) >> 8; ++entities, ++i) {
        if (*entities && ((*entities)->flags & 0x1000)) {
            *entities = NULL;
            --spawner->unkDE;
        }
    }
}

static void sub_0811BEBC(struct Task *t) {
    struct ObjectSpawner *spawner = TaskGetStructPtr(t);
    u8 unk56 = spawner->obj.base.unk56;
    u32 unk2 = spawner->obj.objTemplate->unk2;
    u8 unk3 = spawner->obj.objTemplate->unk3;
    u8 unk65E = gCurLevelInfo[unk56].unk65E;

    ObjectDestroy(t);
    if (unk2 != 0 || unk56 != 0xFF) {
        sub_08001678(unk2, unk3, unk65E, 1);
    }
}
