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

void ObjectMain(void);
void ObjectDestroy(struct Task *);
void InitObject(struct Object2 *, struct Object *, u8);
void ObjectInitSprite(struct Object2 *);
void ObjectSetFunc(struct Object2 *, u16, void (*func)(struct Object2 *));
struct Object2 *CreateEmpty(struct Object *, u8);
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
