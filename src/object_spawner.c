#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "main.h"
#include "object.h"
#include "kirby.h"
#include "malloc_ewram.h"
#include "code_0806F780.h"
#include "constants/songs.h"

struct ObjectSpawner {
    /* 0x00 */ struct Object2 obj2;
    /* 0xB4 */ s16 unkB4;
    /* 0xB6 */ u16 unkB6;
    /* 0xB8 */ u8 fillerB8[0x24];
    /* 0xDC */ u16 unkDC;
    /* 0xDE */ u8 unkDE;
    /* 0xDF */ u8 unkDF;
}; /* size = 0xE0 */

void sub_0811BA30(struct Object2 *);
static void sub_0811BAAC(struct ObjectSpawner *);
void sub_0811BE64(struct ObjectSpawner *);
static void sub_0811BEBC(struct Task *);
static void sub_0811C07C(struct ObjectSpawner *);

// sub_0811BA30: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
NAKED void sub_0811BA30(struct Object2 *obj2) {
    asm(".include \"asm/nonmatching/sub_0811BA30.inc\"");
}
#else
void sub_0811BA30(struct Object2 *obj2) {
    struct ObjectSpawner *x = (struct ObjectSpawner *)obj2;
    void *buf;

    obj2->base.counter = 0x46;
    if ((u16)((u8)obj2->object->unk14 - 0x38) <= 0x1A) {
        obj2->base.counter = 0;
    }
    buf = EwramMalloc((obj2->object->unk14 >> 8) * 8);
    obj2->unk8C = buf;
    CpuFill32(0, buf, (obj2->object->unk14 >> 8) * 4);
    x->obj2.unk78 = sub_0811BAAC;
    x->unkDE = 0;
    x->unkDF = 0;
    x->unkDC = 0;
}
#endif

// sub_0811BAAC: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
static NAKED void sub_0811BAAC(struct ObjectSpawner *x) {
    asm(".include \"asm/nonmatching/sub_0811BAAC.inc\"");
}
#else
static void sub_0811BAAC(struct ObjectSpawner *x) {
    struct ObjectSpawner *x2 = x;
    u32 spawnFlag;
    void *created;

    if (x->obj2.object->unk22 & 2) {
        x->unkDC = sub_080029E4(gCurLevelInfo[x->obj2.kirby3->base.base.base.unk56].unk65E);
    } else {
        x->unkDC = sub_080029BC(gCurLevelInfo[x->obj2.kirby3->base.base.base.unk56].unk65E);
    }

    if (x2->unkDC >= x->obj2.object->unk18 >> 8
     && x2->unkDE < (x->obj2.object->unk14 & 0xFF00) >> 8) {
        x2->unkDF++;
        if (x2->unkDF >= x->obj2.object->unk12) {
            x2->unkDF = x->obj2.object->unk12;
            if ((u16)((u8)x->obj2.object->unk14 - 0x38) <= 0x1A) {
                if (x->obj2.base.counter == 0) {
                    sub_0808AE30(&x->obj2.base, 0, 0x2C4, 0);
                    PlaySfx(&x->obj2.base, SE_08D5EA08);
                }
                spawnFlag = 5;
            } else {
                sub_0808AE30(&x->obj2.base, 0, 0x2B4, 0);
                PlaySfx(&x->obj2.base, SE_SPAWN_OBJECT);
                spawnFlag = 0;
            }
            if ((s16)x->obj2.base.counter++ > 0x40) {
                u32 i;
                void **arr;
                u8 n;

                created = CreateObjTemplateAndObj(x->obj2.kirby3->base.base.base.unk56, 1, 0x24,
                    x->obj2.object->x, x->obj2.object->y, 0, 0x1F, 0, 0,
                    (u8)x->obj2.object->unk14, x->obj2.object->subtype1, 0,
                    x->obj2.object->subtype2, spawnFlag,
                    x->obj2.object->unk1A, x->obj2.object->unk1C,
                    x->obj2.object->unk1E, x->obj2.object->unk20, 0, 0, 0, 0, 0);
                arr = x->obj2.unk8C;
                n = x->obj2.object->unk14 >> 8;
                for (i = 0; i < n; i++) {
                    if (arr[i] == NULL) {
                        arr[i] = created;
                        x2->unkDE++;
                        break;
                    }
                }
                x2->unkDF = 0;
            }
        }
    }

    if (!(x->obj2.object->unk22 & 1) && x2->unkDE != 0) {
        sub_0811BE64(x);
    }
}
#endif

void *CreateObjectSpawner(struct Object *arg0, u8 arg1) {
    struct ObjectSpawner *x;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct ObjectSpawner), 0x1000, TASK_USE_IWRAM, sub_0811BEBC);

    x = TaskGetStructPtr(task);
    InitObject(&x->obj2, arg0, arg1);
    x->obj2.base.flags |= 0x02018F40;
    x->obj2.base.unk5C |= 0x20;
    x->obj2.base.unkC |= 1;
    gUnk_08351648[x->obj2.type].unk10(&x->obj2);
    return x;
}

void sub_0811BE64(struct ObjectSpawner *x) {
    struct ObjectBase **arr = x->obj2.unk8C;
    u32 i;

    for (i = 0; i < (x->obj2.object->unk14 & 0xFF00) >> 8; i++) {
        if (arr[i] != NULL && (arr[i]->flags & 0x1000)) {
            arr[i] = NULL;
            x->unkDE--;
        }
    }
}

// sub_0811BEBC: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
static NAKED void sub_0811BEBC(struct Task *task) {
    asm(".include \"asm/nonmatching/sub_0811BEBC.inc\"");
}
#else
static void sub_0811BEBC(struct Task *task) {
    struct ObjectSpawner *x = TaskGetStructPtr(task);
    u8 playerId = x->obj2.base.unk56;
    u8 a = x->obj2.object->unk2;
    u8 b = x->obj2.object->unk3;
    u8 c = gCurLevelInfo[playerId].unk65E;

    ObjectDestroy(task);
    if (a != 0 || playerId != 0xFF) {
        sub_08001678(a, b, c, 1);
    }
}
#endif

// sub_0811BF24: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
NAKED void sub_0811BF24(struct Object2 *arg) {
    asm(".include \"asm/nonmatching/sub_0811BF24.inc\"");
}
#else
void sub_0811BF24(struct Object2 *arg) {
    struct ObjectSpawner *x = (struct ObjectSpawner *)arg;
    u16 room = gCurLevelInfo[x->obj2.base.unk56].currentRoom;
    u8 i;
    s16 rect[4];

    for (i = 0; i < gUnk_0203AD44; i++) {
        if (gKirbys[i].base.base.base.roomId != room) {
            continue;
        }
        if (x->obj2.object->unk22 & 1) {
            rect[0] = (x->obj2.base.x >> 8) + x->obj2.object->unk1A;
            rect[1] = (x->obj2.base.y >> 8) + x->obj2.object->unk1C;
            rect[2] = rect[0] + x->obj2.object->unk1E;
            rect[3] = rect[1] + x->obj2.object->unk20;
        } else {
            rect[0] = (x->obj2.base.x >> 8) - 8;
            rect[1] = (x->obj2.base.y >> 8) - 0x18;
            rect[2] = (x->obj2.base.x >> 8) + 8;
            rect[3] = (x->obj2.base.y >> 8) - 8;
        }
        if (rect[0] > (s16)((gKirbys[i].base.base.base.x << 8) >> 16)
         || rect[2] < (s16)((gKirbys[i].base.base.base.x << 8) >> 16)
         || rect[1] > (s16)((gKirbys[i].base.base.base.y << 8) >> 16)
         || rect[3] < (s16)((gKirbys[i].base.base.base.y << 8) >> 16)) {
            continue;
        }
        if (gKirbys[i].base.base.base.unkC & 0x8000) {
            continue;
        }
        if (gKirbys[i].base.base.base.flags & 0x20) {
            continue;
        }
        if (gKirbys[i].base.base.base.flags & 0x40) {
            continue;
        }
        x->unkB6 |= 1;
        x->obj2.unk78 = sub_0811C07C;
    }
    x->obj2.base.counter++;
}
#endif

// sub_0811C07C: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
static NAKED void sub_0811C07C(struct ObjectSpawner *x) {
    asm(".include \"asm/nonmatching/sub_0811C07C.inc\"");
}
#else
static void sub_0811C07C(struct ObjectSpawner *x) {
    u8 playerId = x->obj2.base.unk56;
    u16 tileX = (u32)(x->obj2.base.x << 4) >> 16;
    u16 tileY = (u32)(x->obj2.base.y << 4) >> 16;

    if (x->unkB4 == 0) {
        sub_0808AE30(&x->obj2.base, 0, 0x28D, 0);
        PlaySfx(&x->obj2.base, SE_BLOCK_BREAK);
        sub_080023E4(playerId, tileX, tileY);
        sub_08001408(playerId, sub_080025AC(playerId, tileX, tileY), 0, 0);
        x->obj2.base.flags |= 0x1000;
    } else {
        x->unkB4--;
    }
}
#endif
