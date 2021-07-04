#ifndef GUARD_OBJECT_H
#define GUARD_OBJECT_H

#include "data.h"
#include "task.h"
#include "constants/object_types.h"

#define ObjXSomething(obj) ({ \
    if ((obj)->base.flags & 1) { \
        if (((obj)->base.x + ((obj)->base.unk3E << 8)) >= (((obj)->unkA8 << 8) - 0x800)) { \
            (obj)->base.unk62 |= 2; \
            (obj)->base.x = ((obj)->unkA8 << 8) - ({((obj)->base.unk3E << 8) + 0x800;}); \
        } else if (((obj)->base.x + ((obj)->base.unk3C << 8)) <= (((obj)->unkA4 << 8) + 0x800)) { \
            (obj)->base.unk62 |= 1; \
            (obj)->base.x = ((obj)->unkA4 << 8) - ({((obj)->base.unk3C << 8) - 0x800;}); \
        } \
    } else { \
        if (((obj)->base.x + ((obj)->base.unk3C << 8)) <= (((obj)->unkA4 << 8) + 0x800)) { \
            (obj)->base.unk62 |= 2; \
            (obj)->base.x = ((obj)->unkA4 << 8) - ({((obj)->base.unk3C << 8) - 0x800;}); \
        } else if (((obj)->base.x + ((obj)->base.unk3E << 8)) >= (((obj)->unkA8 << 8) - 0x800)) { \
            (obj)->base.unk62 |= 1; \
            (obj)->base.x = ((obj)->unkA8 << 8) - ({((obj)->base.unk3E << 8) + 0x800;}); \
        } \
    } \
})

#define ObjYSomething(obj) ({ \
    if ((obj)->base.y + ((obj)->base.unk3F << 8) >= (((obj)->unkAA << 8) - 0x800)) { \
        (obj)->base.unk62 |= 4; \
        (obj)->base.y = ((obj)->unkAA << 8) - ({((obj)->base.unk3F << 8) + 0x800;}); \
    } else if ((obj)->base.y + ((obj)->base.unk3D << 8) <= ((obj)->unkA6 << 8) + 0x800) { \
        (obj)->base.unk62 |= 8; \
    } \
})

#define KirbySomething(obj4) ({ \
    struct Object4 *_obj = (obj4); \
    u8 _r3 = 0; \
 \
    if (gKirbys[0].base.base.unk60 != (obj4)->unk42) { \
        _r3 = 1; \
        if (gKirbys[1].base.base.unk60 != (obj4)->unk42) { \
            _r3 = 2; \
            if (gKirbys[2].base.base.unk60 != (obj4)->unk42) { \
                _r3 = 3; \
                if (gKirbys[3].base.base.unk60 != (obj4)->unk42) \
                    _r3 = 4; \
            } \
        } \
    } \
    if (gUnk_03000510.unk4 & ((1 << _r3) | 0x10) && !(_obj->unk6 & 0x2000)) { \
        sub_0803DBC8(_obj); \
        return; \
    } \
})

#ifndef NONMATCHING
#define SetPointerSomething(objBase) ({ \
    if (!((objBase)->flags & 0x1200)) \
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
    if (!((objBase)->flags & 0x1200)) \
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

#define Macro_08100F18(r5) ({ \
    s16 _r3; \
    u8 _r6; \
    struct Object5 *_r1 = sub_08034E14(r5); \
 \
    if (_r1) _r1->unk9 = 0; \
    _r3 = ObjTypeAltIdx(r5); \
    _r6 = gCurLevelInfo[(r5)->base.unk56].unk65E; \
    if (_r3 >= 0 && gUnk_08352D80[_r3] \
        && !((r5)->object->unk22 & 4)) { \
        u8 _i; \
 \
        if (!ObjType43To52(r5)) { \
            for (_i = 1; _i < 2; ++_i) \
                sub_08002A44(_r6, sub_08002A2C(_r6, _i - 1), _i); \
            sub_08002A44(_r6, sub_08002A0C(_r6), 0); \
        } \
        sub_08002A1C(_r6, gUnk_08352D80[_r3]); \
        if (gKirbys[gUnk_0203AD3C].base.base.unk60 == (r5)->base.unk60 && !(gUnk_0203AD20 & 4)) \
            m4aSongNumStartOrChange(sub_08002A0C(_r6)); \
    } \
})

#define Macro_0809E55C(obj4) ({ \
    bool32 _flag = TRUE; \
    u8 _i = gUnk_0203AD44; \
 \
    if (gUnk_0203AD44) { \
        while (1) { \
            if (gCurLevelInfo[_i - 1].currentRoom == (obj4)->unk42 && !(gUnk_02026D50[gCurLevelInfo[_i - 1].unk65E] & 8)) { \
                _flag = FALSE; \
                break; \
            } \
            if (!--_i) { \
                break; \
            } \
        } \
    } \
    if (_flag) { \
        (obj4)->unk6 |= 0x1000; \
    } \
})

void ObjectMain(void);
void ObjectDestroy(struct Task *);
void InitObject(struct Object2 *, struct Object *, u8);
void ObjectInitSprite(struct Object2 *);
void ObjectSetFunc(void *, s16, void *);
void *CreateEmpty(struct Object *, u8);
void sub_0809B1E4(struct Object2 *);
void sub_0809C6D0(struct Object2 *);
void sub_0809CFC4(struct Object2 *);
void sub_0809D8C8(struct Object2 *);
u8 sub_0809D998(struct Object2 *);
void sub_0809DA30(struct Object2 *);
void sub_0809EF88(struct Object2 *);
void sub_0809F840(struct Object2 *);
void sub_0809C380(struct Object2 *);
void sub_0809E79C(struct Object2 *);

#endif
