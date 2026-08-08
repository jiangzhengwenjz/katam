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
    InitObject(&chest2->obj2, arg0, arg1);
    chest2->unkDC = 0;
    chest2->unkE0 = arg0->subtype1;
    chest2->unkE2 = arg0->unk11;
    chest2->obj2.base.flags |= 0x2018200;
    if (arg0->unk22 & 1) {
        chest2->obj2.base.flags &= ~1;
    }
    else {
        chest2->obj2.base.flags |= 1;
    }
    chest2->obj2.base.unk68 &= ~7;
    if (chest2->obj2.type == OBJ_SMALL_CHEST) {
        ObjectSetBounds(&chest2->obj2.base, -8, -8, 8, 8);
    }
    else {
        ObjectSetBounds(&chest2->obj2.base, -0x10, -0x10, 0x10, 0x10);
    }
    chest2->obj2.base.unk4C = chest2->obj2.base.y = ((chest2->obj2.base.y + (chest2->obj2.base.unk3F << 8) + 0xFFF) & ~0xFFF) - (chest2->obj2.base.unk3F << 8) - 1;
    if (HasChest(chest->unkE2)) {
        if (chest->unkE0 != 0x63) {
            chest2->obj2.unk83 = 1;
        }
        else {
            chest2->obj2.unk83 = 3;
        }
    }
    else {
        if (chest->unkE0 != 0x63) {
            chest2->obj2.unk83 = 0;
        }
        else {
            chest2->obj2.unk83 = 2;
        }
    }
    ObjectInitSprite(&chest2->obj2);
    chest2->obj2.base.sprite.unk14 = 0x780;
    gUnk_08351648[chest2->obj2.type].unk10(&chest2->obj2);
    return chest2;
}

static void sub_0800AEB0(struct Chest *chest) {
    struct Kirby *kirby;
    u16 i;
    struct Object *obj2 = &chest->obj2;
    const struct LevelInfo *level = &gCurLevelInfo[obj2->base.unk56];

    if ((level->roomHeight << 8) + 0x4000 < obj2->base.y) {
        obj2->base.y = (level->roomHeight << 8) + 0x4000;
    }

    kirby = gKirbys;

    {
        struct S32Vec2 pos = {
            .x = obj2->base.x + (obj2->base.unk3C * 0x100),
            .y = obj2->base.y + (obj2->base.unk3D * 0x100),
        };
        struct S32Vec2 measure = {
            .x = (obj2->base.unk3E - obj2->base.unk3C) * 0x100,
            .y = (obj2->base.unk3F - obj2->base.unk3D) * 0x100,
        }; // width and height

        for (i = 0; i < gNumHumanPlayers; i++, kirby++) {
            if (level->currentRoom == gCurLevelInfo[i].currentRoom
             && pos.x <= kirby->base.base.base.x && pos.x + measure.x >= kirby->base.base.base.x
             && pos.y <= kirby->base.base.base.y && pos.y + measure.y >= kirby->base.base.base.y
             && sub_0804B6FC(kirby)) {
                chest->unkE4 = i;
                obj2->unk78 = sub_0800AFC8;
                break;
            }
        }
    }
}

static void sub_0800AFC8(struct Chest *chest) {
    struct Chest *chest2 = chest;
    if (chest2->unkE0 != 0x63) {
        chest2->obj2.unk83 = 1;
    }
    else {
        chest2->obj2.unk83 = 3;
    }
    CollectChest(chest2->unkE2);
    sub_08002B30(chest->obj2.base.roomId, chest->obj2.object->x, chest->obj2.object->y);
    switch (chest2->unkE0) {
    case 6:
        PlaySfx(&chest->obj2.base, SE_CHEST_OPEN);
        CollectVitality();
        break;
    case 0xA ... 0x13:
        PlaySfx(&chest->obj2.base, SE_CHEST_OPEN);
        CollectBigChest(chest2->unkE0 - 0xA);
        break;
    case 0x14 ... 0x21:
        PlaySfx(&chest->obj2.base, SE_CHEST_OPEN);
        CollectSprayPaint(chest2->unkE0 - 0x14);
        break;
    case 0x28 ... 0x32:
        PlaySfx(&chest->obj2.base, SE_CHEST_OPEN);
        CollectMusicPlayerOrSheet(chest2->unkE0 - 0x28);
        break;
    case 0x63:
        PlaySfx(&chest->obj2.base, SE_CHEST_OPEN);
        break;
    default:
        PlaySfx(&chest->obj2.base, SE_CHEST_COLLECT_ITEM);
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
    sub_0800B414(chest2, chest2->obj2.base.x >> 8, chest2->obj2.base.y >> 8, chest2->unkE0);
    chest->obj2.unk78 = sub_0800BD9C;
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
    ClearObject4(&popup->obj4);
    popup->obj4.unk0 = 3;
    popup->obj4.x = chest->obj2.base.x;
    popup->obj4.y = chest->obj2.base.y;
    popup->obj4.parent = chest;
    popup->obj4.roomId = chest->obj2.base.roomId;
    popup->obj4.x = x * 0x100;
    popup->obj4.y = y * 0x100;
    popup->obj4.unk4 = 0;
    popup->unk48 = sub_0800BDB4;
    popup->unk4C = chest;
    popup->unk50 = item;
    if (Macro_0810B1F4(&chest->obj2.base)) {
        popup->obj4.flags |= 0x2000;
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
        Object4InitSprite(&popup2->obj4, &popup2->obj4.sprite, VramMalloc(numTiles), spriteId, variant, 0xB);
    }
    else {
        popup2->obj4.flags |= 0x400;
    }
    if ((item >= 0xA && item <= 0x21) || (item >= 0x29 && item <= 0x32)) {
        popup->obj4.sprite.palId = chest->obj2.base.sprite.palId;
    }
    else {
        popup->obj4.sprite.palId = 0xF;
    }
}

static void sub_0800B7A4(void) {
    void *ptr = TaskGetStructPtr(gCurTask);
    struct ChestItemPopup *popup = ptr, *tmp = popup;
    struct Chest *parent;
    u16 item = popup->unk50;
    if ((item >= 0xA && item <= 0x21) || (item >= 0x29 && item <= 0x32)) {
        popup->obj4.sprite.palId = popup->unk4C->obj2.base.sprite.palId;
    }
    else {
        popup->obj4.sprite.palId = 0xF;
    }
    if (popup->obj4.flags & 0x1000) {
        TaskDestroy(gCurTask);
        return;
    }
    parent = popup->obj4.parent;
    if (parent) {
        if (parent->obj2.base.unk0 && parent->obj2.base.flags & 0x1000) {
            popup->obj4.parent = NULL;
            parent = NULL;
        }
        if (!parent) {
            goto _0800B870;
        }
        if (Macro_0810B1F4(&parent->obj2.base) && !(popup->obj4.flags & 0x2000)) {
            Object4DisplaySprite(&popup->obj4);
            return;
        }
    }
    else {
    _0800B870:
        KirbySomething(&popup->obj4);
    }
    Macro_0809E55C(&popup->obj4);
    tmp->unk48(tmp);
    if (!(popup->obj4.flags & 0x800)) {
        popup->obj4.x += popup->obj4.unk3C;
        popup->obj4.y -= popup->obj4.unk3E;
    }
    Object4PostUpdate(&popup->obj4);
}

static void sub_0800B97C(struct ChestItemPopup *popup) {
    popup->obj4.unk3C = 0;
    popup->obj4.unk3E -= 8;
    if (popup->obj4.unk4++ > 0x1E) {
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
            obj = CreateObjTemplateAndObj(popup->unk4C->obj2.base.unk56, 1, 0x24,
                gKirbys[popup->unk4C->unkE4].base.base.base.x >> 8,
                gKirbys[popup->unk4C->unkE4].base.base.base.y >> 8,
                0, 0x1F, 0, 0, type, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            obj->base.unk6C = &gKirbys[popup->unk4C->unkE4];
            obj->base.flags = (obj->base.flags & ~0xC00) | 0x40000;
        }
        else if (popup->unk4C->unkE0 == 6) {
            if (gUnk_0203AD10 & 2) {
                gKirbys[gUnk_0203AD24].maxHp = NumVitalitiesCollected() + 6;
                BonusCreateTomato(&gKirbys[gUnk_0203AD24]);
                PlaySfx(&gKirbys[gUnk_0203AD24].base.base.base, SE_ITEM_COLLECT);
            }
            else {
                gKirbys[0].maxHp = NumVitalitiesCollected() + 6;
                BonusCreateTomato(gKirbys);
                PlaySfx(&gKirbys[0].base.base.base, SE_ITEM_COLLECT);
            }
            sub_080029F4(gCurLevelInfo[popup->unk4C->obj2.base.unk56].unk65E, 1);
        }
        else if (popup->unk4C->unkE0 == 0x63) {
            sub_080029F4(gCurLevelInfo[popup->unk4C->obj2.base.unk56].unk65E, 1);
        }
        else {
            PlaySfx(&gKirbys[popup->unk4C->unkE4].base.base.base, SE_ITEM_COLLECT);
            sub_080029F4(gCurLevelInfo[popup->unk4C->obj2.base.unk56].unk65E, 1);
        }
        popup->obj4.flags |= 0x1000;
    }
}

void sub_0800BD4C(struct Chest *arg0) {
    struct Chest *chest = arg0;
    if (HasChest(chest->unkE2)) {
        chest->obj2.unk78 = sub_0800BD9C;
        sub_080029F4(gCurLevelInfo[chest->obj2.base.unk56].unk65E, 1);
    }
    else {
        chest->obj2.unk78 = sub_0800AEB0;
    }
}

static void sub_0800BD9C(struct Chest *chest) {
    if (chest->unkE0 != 0) {
        chest->obj2.base.flags |= 4;
    }
}

static void sub_0800BDB4(struct ChestItemPopup *popup) {
    popup->obj4.unk3C = 0;
    popup->obj4.unk3E = 0x200;
    if (popup->obj4.unk4++ > 0xA) {
        popup->obj4.unk4 = 0;
        popup->unk48 = sub_0800BDE0;
    }
}

static void sub_0800BDE0(struct ChestItemPopup *popup) {
    popup->obj4.unk3C = 0;
    popup->obj4.unk3E = 0;
    if (popup->obj4.unk4++ > 0xA) {
        popup->obj4.unk4 = 0;
        popup->obj4.unk3E = -0x20;
        popup->unk48 = sub_0800B97C;
    }
}
