#ifndef GUARD_OBJECT_H
#define GUARD_OBJECT_H

#include "data.h"
#include "task.h"
#include "malloc_vram.h"
#include "constants/object_types.h"

#define ObjXSomething(obj) ({ \
    if ((obj)->base.flags & 1) { \
        if (((obj)->base.x + ((obj)->base.unk3E * 0x100)) >= (((obj)->unkA8 * 0x100) - 0x800)) { \
            (obj)->base.unk62 |= 2; \
            (obj)->base.x = ((obj)->unkA8 * 0x100) - ({((obj)->base.unk3E * 0x100) + 0x800;}); \
        } else if (((obj)->base.x + ((obj)->base.unk3C * 0x100)) <= (((obj)->unkA4 * 0x100) + 0x800)) { \
            (obj)->base.unk62 |= 1; \
            (obj)->base.x = ((obj)->unkA4 * 0x100) - ({((obj)->base.unk3C * 0x100) - 0x800;}); \
        } \
    } else { \
        if (((obj)->base.x + ((obj)->base.unk3C * 0x100)) <= (((obj)->unkA4 * 0x100) + 0x800)) { \
            (obj)->base.unk62 |= 2; \
            (obj)->base.x = ((obj)->unkA4 * 0x100) - ({((obj)->base.unk3C * 0x100) - 0x800;}); \
        } else if (((obj)->base.x + ((obj)->base.unk3E * 0x100)) >= (((obj)->unkA8 * 0x100) - 0x800)) { \
            (obj)->base.unk62 |= 1; \
            (obj)->base.x = ((obj)->unkA8 * 0x100) - ({((obj)->base.unk3E * 0x100) + 0x800;}); \
        } \
    } \
})

#define ObjYSomething(obj) ({ \
    if ((obj)->base.y + ((obj)->base.unk3F * 0x100) >= (((obj)->unkAA * 0x100) - 0x800)) { \
        (obj)->base.unk62 |= 4; \
        (obj)->base.y = ((obj)->unkAA * 0x100) - ({((obj)->base.unk3F * 0x100) + 0x800;}); \
    } else if ((obj)->base.y + ((obj)->base.unk3D * 0x100) <= ((obj)->unkA6 * 0x100) + 0x800) { \
        (obj)->base.unk62 |= 8; \
    } \
})

#define KirbySomething(obj4) ({ \
    struct Object4 *_obj = (obj4); \
    u8 _r3 = 0; \
 \
    if (gKirbys[0].base.base.base.roomId != (obj4)->roomId) { \
        _r3 = 1; \
        if (gKirbys[1].base.base.base.roomId != (obj4)->roomId) { \
            _r3 = 2; \
            if (gKirbys[2].base.base.base.roomId != (obj4)->roomId) { \
                _r3 = 3; \
                if (gKirbys[3].base.base.base.roomId != (obj4)->roomId) \
                    _r3 = 4; \
            } \
        } \
    } \
    if (gUnk_03000510.unk4 & ((1 << _r3) | 0x10) && !(_obj->flags & 0x2000)) { \
        sub_0803DBC8(_obj); \
        return; \
    } \
})

#define Macro_080A4728(obj2) ({ \
    u8 _idx, _idx2; \
 \
    if ((obj2)->base.unk56 != 0xff) \
        _idx = gCurLevelInfo[(obj2)->base.unk56].unk65E; \
    else \
        _idx = 0xff; \
    if (_idx != 0xff) { \
        _idx2 = _idx * 8 + gUnk_02022F40[_idx]++; \
        gUnk_02022EC0[0][_idx2] = (obj2); \
        gUnk_02022EC0[0][_idx2 + 1] = NULL; \
    } \
})

#ifndef NONMATCHING
#define SetPointerSomething(objBase) ({ \
    if (!((objBase)->flags & 0x1000) && !((objBase)->flags & 0x200)) \
    { \
        u32 _temp; \
 \
        _temp = (objBase)->unk56 != 0xFF ? gCurLevelInfo[(objBase)->unk56].unk65E : 0xFF; \
        if (_temp != 0xFF) \
        { \
            u8 _idx; \
            u32 _temp2 = _temp * 64 + ((objBase)->unk0 - 1) * 32; \
 \
            asm("":::"memory"); \
            _idx = gUnk_02022EB0[_temp][(objBase)->unk0 - 1]++ + _temp2; \
            gUnk_02022F50[_idx] = (objBase); \
            gUnk_02022F50[_idx + 1] = NULL; \
        } \
    } \
})
#else
#define SetPointerSomething(objBase) ({ \
    if (!((objBase)->flags & 0x1000) && !((objBase)->flags & 0x200)) \
    { \
        u32 _temp; \
 \
        _temp = (objBase)->unk56 != 0xFF ? gCurLevelInfo[(objBase)->unk56].unk65E : 0xFF; \
        if (_temp != 0xFF) \
        { \
            u8 _idx; \
            u32 _temp2 = _temp * 64 + ((objBase)->unk0 - 1) * 32; \
 \
            _idx = gUnk_02022EB0[_temp][(objBase)->unk0 - 1]++ + _temp2; \
            gUnk_02022F50[_idx] = (objBase); \
            gUnk_02022F50[_idx + 1] = NULL; \
        } \
    } \
})
#endif

#define CreateObjTemplateAndObj(playerIdVal, spawnTableVal, unk1Val, xVal, yVal, unk2Val, unk3Val, \
    unk4Val, unk5Val, typeVal, subtype1Val, unkFVal, subtype2Val, unk22Val, unk1AVal, unk1CVal, unk1EVal, \
    unk20Val, unk11Val, unk12Val, unk14Val, unk16Val, unk18Val) ({ \
    u8 _i; \
 \
    for (_i = 0; _i < 0x20; ++_i) \
    { \
        if (!(gUnk_020229D4 & (1 << _i))) \
        { \
            gUnk_020229D4 |= 1 << _i; \
            break; \
        } \
    } \
    gUnk_020229E0[_i].spawnTable = (spawnTableVal); \
    gUnk_020229E0[_i].unk1 = (unk1Val); \
    gUnk_020229E0[_i].x = (xVal); \
    gUnk_020229E0[_i].y = (yVal); \
    gUnk_020229E0[_i].unk2 = (unk2Val); \
    gUnk_020229E0[_i].unk3 = (unk3Val); \
    gUnk_020229E0[_i].unk4 = (unk4Val); \
    gUnk_020229E0[_i].unk5 = (unk5Val); \
    gUnk_020229E0[_i].type = (typeVal); \
    gUnk_020229E0[_i].subtype1 = (subtype1Val); \
    gUnk_020229E0[_i].unkF = (unkFVal); \
    gUnk_020229E0[_i].subtype2 = (subtype2Val); \
    gUnk_020229E0[_i].unk22 = (unk22Val); \
    gUnk_020229E0[_i].unk1A = (unk1AVal); \
    gUnk_020229E0[_i].unk1C = (unk1CVal); \
    gUnk_020229E0[_i].unk1E = (unk1EVal); \
    gUnk_020229E0[_i].unk20 = (unk20Val); \
    gUnk_020229E0[_i].unk11 = (unk11Val); \
    gUnk_020229E0[_i].unk12 = (unk12Val); \
    gUnk_020229E0[_i].unk14 = (unk14Val); \
    gUnk_020229E0[_i].unk16 = (unk16Val); \
    gUnk_020229E0[_i].unk18 = (unk18Val); \
    CreateObject((playerIdVal), &gUnk_020229E0[_i]); \
})

#define CreateObjTemplateAndObjWithSettingParent(obj2, spawnTableVal, unk1Val, xVal, yVal, \
    unk2Val, unk3Val, unk4Val, unk5Val, typeVal, subtype1Val, unkFVal, subtype2Val, unk22Val, unk1AVal, \
    unk1CVal, unk1EVal, unk20Val, unk11Val, unk12Val, unk14Val, unk16Val, unk18Val) ({ \
    void *_obj = CreateObjTemplateAndObj((obj2)->base.unk56, spawnTableVal, unk1Val, xVal, yVal, unk2Val, unk3Val, \
        unk4Val, unk5Val, typeVal, subtype1Val, unkFVal, subtype2Val, unk22Val, unk1AVal, unk1CVal, unk1EVal, \
        unk20Val, unk11Val, unk12Val, unk14Val, unk16Val, unk18Val); \
 \
    ((struct Object2 *)_obj)->base.parent = (obj2); \
    _obj; \
})

#define Macro_080E7D74(obj2) ({ \
    u8 _unk65E = gCurLevelInfo[(obj2)->base.unk56].unk65E; \
 \
    sub_08002A44(_unk65E, sub_08002A0C(_unk65E), 0); \
    sub_08002A1C(_unk65E, 0); \
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == (obj2)->base.roomId \
        && !(gUnk_0203AD20 & 4)) \
        m4aSongNumStartOrChange(sub_08002A0C(_unk65E)); \
})

#define Macro_08100F18(obj2) ({ \
    s16 _r3; \
    u8 _r6; \
    struct Object5 *_r1 = sub_08034E14(obj2); \
 \
    if (_r1) _r1->unk9 = 0; \
    _r3 = ObjTypeAltIdx(obj2); \
    _r6 = gCurLevelInfo[(obj2)->base.unk56].unk65E; \
    if (_r3 >= 0 && gUnk_08352D80[_r3] \
        && !((obj2)->object->unk22 & 4)) { \
        u8 _i; \
 \
        if (!ObjType43To52(obj2)) { \
            for (_i = 1; _i < 2; ++_i) \
                sub_08002A44(_r6, sub_08002A2C(_r6, _i - 1), _i); \
            sub_08002A44(_r6, sub_08002A0C(_r6), 0); \
        } \
        sub_08002A1C(_r6, gUnk_08352D80[_r3]); \
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == (obj2)->base.roomId && !(gUnk_0203AD20 & 4)) \
            m4aSongNumStartOrChange(sub_08002A0C(_r6)); \
    } \
})

#define Macro_0809E55C(obj4 /* objBase */) ({ \
    bool32 _flag = TRUE; \
    u8 _i = gUnk_0203AD44; \
 \
    if (gUnk_0203AD44) { \
        while (1) { \
            if (gCurLevelInfo[_i - 1].currentRoom == (obj4)->roomId && !(gUnk_02026D50[gCurLevelInfo[_i - 1].unk65E] & 8)) { \
                _flag = FALSE; \
                break; \
            } \
            if (!--_i) { \
                break; \
            } \
        } \
    } \
    if (_flag) { \
        (obj4)->flags |= 0x1000; \
    } \
})

#define Macro_0810B1F4(objBase) (gUnk_03000510.unk4 & ((1 << (objBase)->unk56) | 0x10))

#define Macro_081003EC(obj2, objBase) ({ \
    (obj2)->unkA4 = gCurLevelInfo[(objBase)->unk56].unkA0 >> 8; \
    (obj2)->unkA6 = gCurLevelInfo[(objBase)->unk56].unkA4 >> 8; \
    (obj2)->unkA8 = gCurLevelInfo[(objBase)->unk56].unkA8 >> 8; \
    (obj2)->unkAA = gCurLevelInfo[(objBase)->unk56].unkAC >> 8; \
})

#define Macro_08107BA8_1(objBase /* obj4 */, src, dst, numTiles, sprite) \
({ \
    struct Sprite *_spr; \
 \
    (_spr = (sprite))->tilesVram = sub_0803DE54(numTiles, (sprite)->animId, (sprite)->variant); \
    _spr->unk8 = (sprite)->unk8 & ~0x80000; \
    CpuCopy32(src, dst, sizeof(struct Sprite)); \
    sub_0815521C(dst, (objBase)->unk1); \
    _spr->unk8 = (sprite)->unk8 | 0x80000; \
})

#define Macro_08107BA8_2(objBase /* obj4 */, src, dst, numTiles, sprite) \
({ \
    struct Sprite *_spr; \
 \
    (_spr = (sprite))->tilesVram = VramMalloc(numTiles); \
    _spr->unk8 = (sprite)->unk8 & ~0x80000; \
    CpuCopy32(src, dst, sizeof(struct Sprite)); \
    sub_0815521C(dst, (objBase)->unk1); \
})

#define Macro_08107BA8_3(objBase /* obj4 */, sprite) \
({ \
    if ((sprite)->tilesVram && !((objBase)->flags & 0x4000)) \
    { \
        VramFree((sprite)->tilesVram); \
        (sprite)->tilesVram = 0; \
    } \
    (sprite)->unk8 |= 0x80000; \
})

#define Macro_08107BA8_4(objBase /* obj4 */, src, dst, numTiles, sprite) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == (objBase)->roomId) \
    { \
        if ((objBase)->flags & 0x4000) \
        { \
            if (!(sprite)->tilesVram) \
                Macro_08107BA8_1(objBase, src, dst, numTiles, sprite); \
        } \
        else if (!(sprite)->tilesVram) \
            Macro_08107BA8_2(objBase, src, dst, numTiles, sprite); \
    } \
    else \
        Macro_08107BA8_3(objBase, sprite); \
})

#define Macro_081050E8(obj4 /* objBase */, sprite, param, cond) \
({ \
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == (obj4)->roomId) \
    { \
        if (cond) \
        { \
            (sprite)->palId = sub_0803DF24(param); \
            if ((sprite)->palId == 0xFF) \
                (sprite)->palId = sub_0803DFAC((param), 0); \
        } \
    } \
    else \
        (sprite)->palId = 0; \
})

#define Macro_0803DBC8(obj4 /* objBase */, sprite) \
({ \
    if ((obj4)->flags & 0x4000) \
        sub_081564D8(sprite); \
    else \
        sub_0815604C(sprite); \
})

#define Macro_080FC150(objBase /* obj4 */, sprite) ({ \
    if ((objBase)->flags & 1) \
    { \
        struct Sprite *_r0 = (sprite); \
 \
        _r0->unk8 = (sprite)->unk8 | 0x400; \
    } \
    else \
    { \
        struct Sprite *_r0 = (sprite); \
 \
        _r0->unk8 = (sprite)->unk8 & ~0x400; \
    } \
    if (!((objBase)->flags & 8)) \
    { \
        if (((sprite)->unk1B != (sprite)->variant || (sprite)->unk18 != (sprite)->animId) \
            && (sprite)->unk1C) \
        { \
            (objBase)->unk1 = 0; \
            (objBase)->unk2 = 0; \
            (objBase)->flags &= ~4; \
        } \
        if (!sub_08155128(sprite)) \
        { \
            (objBase)->flags |= 2; \
            if ((objBase)->flags & 4 && (sprite)->unk1C) \
            { \
                (sprite)->unk1B = 0xFF; \
                (objBase)->flags &= ~4; \
                (objBase)->unk1 = 0; \
                (objBase)->unk2 = 0; \
                sub_08155128(sprite); \
            } \
        } \
        else \
        { \
            (objBase)->unk2 += (sprite)->unk1C; \
            (objBase)->unk1 = (objBase)->unk2 >> 4; \
            (objBase)->flags &= ~2; \
        } \
    } \
    (sprite)->x = ((objBase)->x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].cameraOffsetX >> 8) + (objBase)->objBase54; \
    (sprite)->y = ((objBase)->y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].cameraOffsetY >> 8) + (objBase)->objBase55; \
    if ((sprite)->unk1C) \
    { \
        (objBase)->objBase54 = 0; \
        (objBase)->objBase55 = 0; \
    } \
})

#define Macro_080B75D0(obj2, xOffset, yOffset) \
({ \
    const u32 *_table = gUnk_082D88B8; \
    u8 _var = 0; \
 \
    if (((obj2)->base.x + (xOffset)) >> 12 <= gCurLevelInfo[(obj2)->base.unk56].levelMaxX >> 12 \
        && ((obj2)->base.x + (xOffset)) >> 12 >= gCurLevelInfo[(obj2)->base.unk56].levelMinX >> 12 \
        && ((obj2)->base.y + (yOffset)) >> 12 <= gCurLevelInfo[(obj2)->base.unk56].levelMaxY >> 12 \
        && ((obj2)->base.y + (yOffset)) >> 12 >= gCurLevelInfo[(obj2)->base.unk56].levelMinY >> 12) \
        _var = sub_080023E4( \
            (obj2)->base.unk56, \
            ((obj2)->base.x + (xOffset)) >> 12, \
            ((obj2)->base.y + (yOffset)) >> 12 \
        ); \
    &_table[_var]; \
})

// need the ({}) to match
#define Macro_080A561C(table, obj2) \
({ \
    --(obj2)->unk9E; \
    if (!(table)[(u8)((obj2)->unk9F + 1)].unk8 && !(obj2)->unk9E) \
        (obj2)->unk9F = 0xFF; \
})

#define Macro_08039430_1(objBase, obj2) sub_08039430(objBase, \
    (obj2)->base.x, (obj2)->base.y, \
    (obj2)->object->unk1A, (obj2)->object->unk1C, \
    (obj2)->object->unk1E, (obj2)->object->unk20)

#define Macro_08039430_2(objBase, obj2) sub_08039430(objBase, \
    (obj2)->object->x * 0x100, (obj2)->object->y * 0x100, \
    (obj2)->object->unk1A, (obj2)->object->unk1C, \
    (obj2)->object->unk1E, (obj2)->object->unk20)

void ObjectMain(void);
void ObjectDestroy(struct Task *);
void InitObject(struct Object2 *, struct Object *, u8);
void ObjectInitSprite(struct Object2 *);
void ObjectSetFunc(void *, s16, void *);
void *CreateEmpty(struct Object *, u8);
void sub_0809B1E4(struct Object2 *);
void sub_0809C6D0(struct Object2 *);
void sub_0809CFC4(struct Object2 *);
void sub_0809D8C8(struct ObjectBase *);
bool8 sub_0809D998(struct Object2 *);
void sub_0809DA30(struct Object2 *);
void sub_0809EF88(struct Object2 *);
void sub_0809F840(struct Object2 *);
void sub_0809C380(struct Object2 *);
void sub_0809E79C(struct Object2 *);

extern const u16 gUnk_08352D80[];
extern const s8 gUnk_08352DBE[][2];
extern const s8 gUnk_08352DD0[];

#endif
