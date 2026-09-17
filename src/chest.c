#include "chest.h"
#include "object.h"
#include "kirby.h"
#include "malloc_vram.h"
#include "code_0806F780.h"
#include "functions.h"
#include "treasures.h"
#include "bonus.h"
#include "save.h"
#include "multi_08030C94.h"
#include "constants/object_types.h"

static void sub_0800AEB0(struct Chest *);
static void sub_0800AFC8(struct Chest *);
static void sub_0800B414(struct Chest *, s16, s16, u16);
static void sub_0800B7A4(void);
static void sub_0800B97C(struct ChestItemPopup *);
static void sub_0800BD9C(struct Chest *);
static void sub_0800BDB4(struct ChestItemPopup *);
static void sub_0800BDE0(struct ChestItemPopup *);

void *CreateChest(struct ObjectTemplate *arg0, u8 arg1) {
    struct Chest *chest2, *chest;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Chest), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    void *ptr = TaskGetStructPtr(task);
    chest2 = ptr;
    chest = chest2;
    InitObject(&chest2->obj, arg0, arg1);
    chest2->unkDC = 0;
    chest2->unkE0 = arg0->subtype1;
    chest2->unkE2 = arg0->unk11;
    chest2->obj.base.flags |= 0x2018200;
    if (arg0->unk22 & 1) {
        chest2->obj.base.flags &= ~1;
    }
    else {
        chest2->obj.base.flags |= 1;
    }
    chest2->obj.base.unk68 &= ~7;
    if (chest2->obj.type == OBJ_SMALL_CHEST) {
        ObjectSetBounds(&chest2->obj.base, -8, -8, 8, 8);
    }
    else {
        ObjectSetBounds(&chest2->obj.base, -0x10, -0x10, 0x10, 0x10);
    }
    chest2->obj.base.unk4C = chest2->obj.base.y = ((chest2->obj.base.y + (chest2->obj.base.unk3F << 8) + 0xFFF) & ~0xFFF) - (chest2->obj.base.unk3F << 8) - 1;
    if (HasChest(chest->unkE2)) {
        if (chest->unkE0 != 0x63) {
            chest2->obj.unk83 = 1;
        }
        else {
            chest2->obj.unk83 = 3;
        }
    }
    else {
        if (chest->unkE0 != 0x63) {
            chest2->obj.unk83 = 0;
        }
        else {
            chest2->obj.unk83 = 2;
        }
    }
    ObjectInitSprite(&chest2->obj);
    chest2->obj.base.sprite.unk14 = 0x780;
    gUnk_08351648[chest2->obj.type].unk10(&chest2->obj);
    return chest2;
}

static void sub_0800AEB0(struct Chest *chest) {
    struct Kirby *kirby;
    u16 i;
    struct Object *obj = &chest->obj;
    const struct LevelInfo *level = &gCurLevelInfo[obj->base.unk56];

    if ((level->roomHeight << 8) + 0x4000 < obj->base.y) {
        obj->base.y = (level->roomHeight << 8) + 0x4000;
    }

    kirby = gKirbys;

    {
        struct S32Vec2 pos = {
            .x = obj->base.x + (obj->base.unk3C * 0x100),
            .y = obj->base.y + (obj->base.unk3D * 0x100),
        };
        struct S32Vec2 measure = {
            .x = (obj->base.unk3E - obj->base.unk3C) * 0x100,
            .y = (obj->base.unk3F - obj->base.unk3D) * 0x100,
        }; // width and height

        for (i = 0; i < gNumHumanPlayers; i++, kirby++) {
            if (level->currentRoom == gCurLevelInfo[i].currentRoom
             && pos.x <= kirby->base.x && pos.x + measure.x >= kirby->base.x
             && pos.y <= kirby->base.y && pos.y + measure.y >= kirby->base.y
             && sub_0804B6FC(kirby)) {
                chest->unkE4 = i;
                obj->unk78 = sub_0800AFC8;
                break;
            }
        }
    }
}

static void sub_0800AFC8(struct Chest *chest) {
    struct Chest *chest2 = chest;
    if (chest2->unkE0 != 0x63) {
        chest2->obj.unk83 = 1;
    }
    else {
        chest2->obj.unk83 = 3;
    }
    CollectChest(chest2->unkE2);
    sub_08002B30(chest->obj.base.roomId, chest->obj.objTemplate->x, chest->obj.objTemplate->y);
    switch (chest2->unkE0) {
    case 6:
        PlaySfx(&chest->obj.base, SE_CHEST_OPEN);
        CollectVitality();
        break;
    case 0xA ... 0x13:
        PlaySfx(&chest->obj.base, SE_CHEST_OPEN);
        CollectBigChest(chest2->unkE0 - 0xA);
        break;
    case 0x14 ... 0x21:
        PlaySfx(&chest->obj.base, SE_CHEST_OPEN);
        CollectSprayPaint(chest2->unkE0 - 0x14);
        break;
    case 0x28 ... 0x32:
        PlaySfx(&chest->obj.base, SE_CHEST_OPEN);
        CollectMusicPlayerOrSheet(chest2->unkE0 - 0x28);
        break;
    case 0x63:
        PlaySfx(&chest->obj.base, SE_CHEST_OPEN);
        break;
    default:
        PlaySfx(&chest->obj.base, SE_CHEST_COLLECT_ITEM);
        break;
    }
    if (!(gUnk_0203AD10 & 0x10)) {
        if (gUnk_0203AD10 & 2) {
            if (gLocalPlayerId == gUnk_0203AD24) {
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
            }
            else {
                sub_08031CE4(8);
            }
        }
        else {
            UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
        }
    }
    sub_0800B414(chest2, chest2->obj.base.x >> 8, chest2->obj.base.y >> 8, chest2->unkE0);
    chest->obj.unk78 = sub_0800BD9C;
}

static void sub_0800B414(struct Chest *chest, s16 x, s16 y, u16 item) {
    struct ChestItemPopup *popup, *popup2;
    u32 numTiles;
    u16 spriteId;
    u16 variant;
    struct Task *task = TaskCreate(sub_0800B7A4, sizeof(struct ChestItemPopup), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    void *ptr = TaskGetStructPtr(task);
    popup = ptr;
    popup2 = popup;
    ClearEffectObject(&popup->effect);
    popup->effect.header.kind = 3;
    popup->effect.x = chest->obj.base.x;
    popup->effect.y = chest->obj.base.y;
    popup->effect.parent = chest;
    popup->effect.roomId = chest->obj.base.roomId;
    popup->effect.x = x * 0x100;
    popup->effect.y = y * 0x100;
    popup->effect.unk4 = 0;
    popup->unk48 = sub_0800BDB4;
    popup->unk4C = chest;
    popup->unk50 = item;
    if (Macro_0810B1F4(&chest->obj.base)) {
        popup->effect.flags |= 0x2000;
    }
    switch (item) {
    case 0:
        spriteId = 0x2D1;
        variant = 0;
        numTiles = 4;
        break;
    case 1:
        spriteId = 0x2D1;
        variant = 1;
        numTiles = 4;
        break;
    case 2:
        spriteId = 0x2D1;
        variant = 3;
        numTiles = 4;
        break;
    case 3:
        spriteId = 0x2D1;
        variant = 5;
        numTiles = 4;
        break;
    case 4:
        spriteId = 0x2D1;
        variant = 2;
        numTiles = 4;
        break;
    case 5:
        spriteId = 0x2D1;
        variant = 4;
        numTiles = 4;
        break;
    case 6:
        spriteId = 0x2D1;
        variant = 0xC;
        numTiles = 4;
        break;
    case 0xA ... 0x13:
        spriteId = 0x2D2;
        variant = item + 0x12;
        numTiles = 4;
        break;
    case 0x14 ... 0x21:
        spriteId = 0x2D2;
        variant = item - 0x10;
        numTiles = 4;
        break;
    case 0x28:
        spriteId = 0x2D1;
        variant = 0xD;
        numTiles = 4;
        break;
    case 0x29 ... 0x32:
        spriteId = 0x2D2;
        variant = item - 0x17;
        numTiles = 4;
        break;
    case 0x63:
        spriteId = 0;
        variant = 0;
        numTiles = 0;
        break;
    }
    if (numTiles != 0) {
        EffectObjectInitSprite(&popup2->effect, &popup2->effect.sprite, VramMalloc(numTiles), spriteId, variant, 0xB);
    }
    else {
        popup2->effect.flags |= 0x400;
    }
    if ((item >= 0xA && item <= 0x21) || (item >= 0x29 && item <= 0x32)) {
        popup->effect.sprite.palId = chest->obj.base.sprite.palId;
    }
    else {
        popup->effect.sprite.palId = 0xF;
    }
}

static void sub_0800B7A4(void) {
    void *ptr = TaskGetStructPtr(gCurTask);
    struct ChestItemPopup *popup = ptr, *tmp = popup;
    struct Chest *parent;
    u16 item = popup->unk50;
    if ((item >= 0xA && item <= 0x21) || (item >= 0x29 && item <= 0x32)) {
        popup->effect.sprite.palId = popup->unk4C->obj.base.sprite.palId;
    }
    else {
        popup->effect.sprite.palId = 0xF;
    }
    if (popup->effect.flags & 0x1000) {
        TaskDestroy(gCurTask);
        return;
    }
    parent = popup->effect.parent;
    if (parent) {
        if (parent->obj.base.header.kind && parent->obj.base.flags & 0x1000) {
            popup->effect.parent = NULL;
            parent = NULL;
        }
        if (!parent) {
            goto _0800B870;
        }
        if (Macro_0810B1F4(&parent->obj.base) && !(popup->effect.flags & 0x2000)) {
            EffectObjectDisplaySprite(&popup->effect);
            return;
        }
    }
    else {
    _0800B870:
        KirbySomething(&popup->effect);
    }
    Macro_0809E55C(&popup->effect);
    tmp->unk48(tmp);
    if (!(popup->effect.flags & 0x800)) {
        popup->effect.x += popup->effect.unk3C;
        popup->effect.y -= popup->effect.unk3E;
    }
    EffectObjectPostUpdate(&popup->effect);
}

static void sub_0800B97C(struct ChestItemPopup *popup) {
    popup->effect.unk3C = 0;
    popup->effect.unk3E -= 8;
    if (popup->effect.unk4++ > 0x1E) {
        if (popup->unk4C->unkE0 <= 5) {
            u16 type;
            struct Object *obj;
            switch (popup->unk4C->unkE0) {
            case 0:
                type = OBJ_1UP;
                break;
            case 1:
                type = OBJ_INVINCIBLE_CANDY;
                break;
            case 2:
                type = OBJ_TOMATO;
                break;
            case 3:
                type = OBJ_MEAT;
                break;
            case 4:
                type = OBJ_POP_SODA;
                break;
            case 5:
                type = OBJ_SMALL_FOOD;
                break;
            }
            obj = CreateObjTemplateAndObj(popup->unk4C->obj.base.unk56, 1, 0x24,
                gKirbys[popup->unk4C->unkE4].base.x >> 8,
                gKirbys[popup->unk4C->unkE4].base.y >> 8,
                0, 0x1F, 0, 0, type, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            obj->base.unk6C = &gKirbys[popup->unk4C->unkE4];
            obj->base.flags = (obj->base.flags & ~0xC00) | 0x40000;
        }
        else if (popup->unk4C->unkE0 == 6) {
            if (gUnk_0203AD10 & 2) {
                gKirbys[gUnk_0203AD24].maxHp = NumVitalitiesCollected() + 6;
                BonusCreateTomato(&gKirbys[gUnk_0203AD24]);
                PlaySfx(&gKirbys[gUnk_0203AD24].base, SE_ITEM_COLLECT);
            }
            else {
                gKirbys[0].maxHp = NumVitalitiesCollected() + 6;
                BonusCreateTomato(gKirbys);
                PlaySfx(&gKirbys[0].base, SE_ITEM_COLLECT);
            }
            sub_080029F4(gCurLevelInfo[popup->unk4C->obj.base.unk56].unk65E, 1);
        }
        else if (popup->unk4C->unkE0 == 0x63) {
            sub_080029F4(gCurLevelInfo[popup->unk4C->obj.base.unk56].unk65E, 1);
        }
        else {
            PlaySfx(&gKirbys[popup->unk4C->unkE4].base, SE_ITEM_COLLECT);
            sub_080029F4(gCurLevelInfo[popup->unk4C->obj.base.unk56].unk65E, 1);
        }
        popup->effect.flags |= 0x1000;
    }
}

void sub_0800BD4C(struct Chest *arg0) {
    struct Chest *chest = arg0;
    if (HasChest(chest->unkE2)) {
        chest->obj.unk78 = sub_0800BD9C;
        sub_080029F4(gCurLevelInfo[chest->obj.base.unk56].unk65E, 1);
    }
    else {
        chest->obj.unk78 = sub_0800AEB0;
    }
}

static void sub_0800BD9C(struct Chest *chest) {
    if (chest->unkE0 != 0) {
        chest->obj.base.flags |= 4;
    }
}

static void sub_0800BDB4(struct ChestItemPopup *popup) {
    popup->effect.unk3C = 0;
    popup->effect.unk3E = 0x200;
    if (popup->effect.unk4++ > 0xA) {
        popup->effect.unk4 = 0;
        popup->unk48 = sub_0800BDE0;
    }
}

static void sub_0800BDE0(struct ChestItemPopup *popup) {
    popup->effect.unk3C = 0;
    popup->effect.unk3E = 0;
    if (popup->effect.unk4++ > 0xA) {
        popup->effect.unk4 = 0;
        popup->effect.unk3E = -0x20;
        popup->unk48 = sub_0800B97C;
    }
}
