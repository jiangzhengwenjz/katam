#include "code_0806F780.h"
#include "task.h"
#include "kirby.h"
#include "main.h"
#include "random.h"
#include "functions.h"

void sub_08070404(void);
void sub_08070B50(struct Task *);

extern void (*const gUnk_08350C38[])(struct ObjectBase *);

bool16 sub_0806F780(struct ObjectBase *a1) {
    if (a1->flags & 0x1000) {
        TaskDestroy(gCurTask);
        return TRUE;
    }
    if (sub_0803D80C(a1)) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (gKirbys[a1->unk56].base.base.base.roomId != a1->roomId
        && sub_0803E324(a1)) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (gUnk_02026D50[gCurLevelInfo[a1->unk56].unk65E] & 8) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (Macro_0810B1F4(a1) && !(a1->flags & 0x2000) && !(gMainFlags & 0x400)) {
        // TODO: semantically the same as SetPointerSomething
        if (!(a1->flags & 0x1000) && !(a1->flags & 0x200)) {
            u32 temp = gCurLevelInfo[a1->unk56].unk65E;

            if (a1->unk56 == 0xFF)
                temp = 0xFF;
            if (temp != 0xFF) {
                u8 idx;
                u32 temp2 = temp * 0x40 + (a1->unk0 - 1) * 0x20;

                ++a1; --a1;
                idx = gUnk_02022EB0[temp][a1->unk0 - 1]++ + temp2;
                gUnk_02022F50[idx] = a1;
                gUnk_02022F50[idx + 1] = NULL;
            }
        } 
        sub_0803D9A8(a1);
        return TRUE;
    }
    return FALSE;
}

bool32 sub_0806F8BC(struct ObjectBase *a1) {
    SetPointerSomething(a1);
    Macro_080FC150(a1, &a1->sprite);
    if (!(a1->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == a1->roomId) {
        a1->sprite.x += gUnk_0203AD18[0];
        a1->sprite.y += gUnk_0203AD18[1];
        Macro_0803DBC8(a1, &a1->sprite);
    }
    return FALSE;
}

bool32 sub_0806FAC8(struct Object4 *a1) {
    if (!(a1->flags & 0x400)) {
        Macro_080FC150(a1, &a1->sprite);
        if (!(a1->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == a1->roomId) {
            a1->sprite.x += gUnk_0203AD18[0];
            a1->sprite.y += gUnk_0203AD18[1];
            Macro_0803DBC8(a1, &a1->sprite);
        }
    }
    return FALSE;
}

void sub_0806FC70(struct ObjectBase *a1) {
    a1->unk62 = 0;
    if (!(a1->flags & 0x100)) {
        u8 r4, r7 = a1->unk57;

        a1->unk57 = sub_080023E4(a1->unk56, a1->x >> 0xC, a1->y >> 0xC);
        a1->unk58 = gUnk_082D88B8[a1->unk57];
        if (gUnk_082D88B8[a1->unk57] & 0x200
            || (gUnk_082D88B8[a1->unk57] & 0xC && !(gUnk_082D88B8[a1->unk57] & 0xF0000000))) {
            if ((r4 = gUnk_082D88B8[r7] >> 0x1C)) {
                if (gUnk_082D88B8[a1->unk57] & 0xC) {
                    if (a1->yspeed > 0 && r4 < 7) return;
                    if (a1->xspeed < 0) {
                        if (r4 < 4 || r4 > 9)
                            return;
                    } else if (a1->xspeed > 0) {
                        if (!(r4 < 4 || r4 > 9))
                            return;
                    }
                }
                a1->unk57 = r7;
                if (a1->unk48 >> 0xC != a1->x >> 0xC) {
                    if (a1->xspeed & 0x8000) {
                        a1->x &= 0xFFFFF000;
                        a1->unk48 = a1->x += 0x1000;
                    } else {
                        a1->x &= 0xFFFFF000;
                        a1->unk48 = a1->x -= 1;
                    }
                }
                if (a1->unk4C >> 0xC != a1->y >> 0xC) {
                    if (a1->yspeed & 0x8000) {
                        a1->y &= 0xFFFFF000;
                        a1->unk4C = a1->y -= 1;
                    } else {
                        a1->y &= 0xFFFFF000;
                        a1->unk4C = a1->y += 0x1000;
                    }
                }
                gUnk_08350C38[r4](a1);
            } else if (!(gUnk_082D88B8[a1->unk57] & 0x200)) {
                return;
            }
            a1->unk62 = 0xFF;
        } else if ((r4 = gUnk_082D88B8[a1->unk57] >> 0x1C)) {
            gUnk_08350C38[r4](a1);
        }
    }
}

void sub_0806FDF4(void) {
    struct Unk_0806FDF4 *ptr;

    gUnk_03000518 = TaskCreate(sub_08070404, sizeof(struct Unk_0806FDF4), 0xFFEF, TASK_USE_IWRAM, sub_08070B50);
    ptr = TaskGetStructPtr(gUnk_03000518);
    CpuFill16(0, ptr, sizeof(struct Unk_0806FDF4));
    ptr->unk0[0].roomId = 0xFFFE;
    ptr->unk0[1].roomId = 0xFFFE;
    ptr->unk0[2].roomId = 0xFFFE;
    ptr->unk0[3].roomId = 0xFFFE;
}

#define Macro_0806FE64(ptr, idx) ({ \
    u8 _i; \
    bool32 _ret = FALSE; \
 \
    for (_i = 0; _i < gUnk_0203AD44; ++_i) { \
        if ((ptr)->unk0[idx].roomId == gCurLevelInfo[_i].currentRoom) { \
            _ret = TRUE; \
            /* break; */ \
        } \
    } \
    _ret; \
})

void sub_0806FE64(u16 a1, struct ObjectBase *a2) {
    struct Unk_0806FDF4 *tmp, *v3;
    s8 v4;
    s8 v10;
    struct Unk_0806FDF4_0 *v6;

    if (gUnk_03000518) {
        tmp = TaskGetStructPtr(gUnk_03000518);
        v3 = tmp;
        v4 = -1;
        if (v3->unk0[0].roomId == a2->roomId)
            v4 = 0;
        else if (v3->unk0[1].roomId == a2->roomId)
            v4 = 1;
        else if (v3->unk0[2].roomId == a2->roomId)
            v4 = 2;
        else if (v3->unk0[3].roomId == a2->roomId)
            v4 = 3;
        if (v4 >= 0) {
            v6 = &v3->unk0[v4];
            if (!(v6->flags & 0x400))
                v6->unk4 = 0;
            v6->flags |= 0x100;
            if (a1 & 0x200)
                v6->flags |= 0x200;
            if (v6->unk6 <= (a1 & 0xFF))
                v6->unk6 = a1;
            if ((a1 & 0xFF) > 3)
                v6->flags |= 0x400;
        } else {
            v10 = -1;
            if (!(v3->unk0[0].flags & 0x100))
                v10 = 0;
            else if (!(v3->unk0[1].flags & 0x100))
                v10 = 1;
            else if (!(v3->unk0[2].flags & 0x100))
                v10 = 2;
            else if (!(v3->unk0[3].flags & 0x100))
                v10 = 3;
            if (v10 == -1) {
                if (!Macro_0806FE64(v3, 0))
                    v10 = 0;
                else if (!Macro_0806FE64(v3, 1))
                    v10 = 1;
                else if (!Macro_0806FE64(v3, 2))
                    v10 = 2;
                else if (!Macro_0806FE64(v3, 3))
                    v10 = 3;
            }
            v6 = &v3->unk0[v10];
            v6->unk6 = a1;
            v6->flags = 0x100;
            v6->roomId = a2->roomId;
            v6->unk4 = 0;
            if (a1 & 0x200)
                v6->flags |= 0x200;
            if ((a1 & 0xFF) > 3)
                v6->flags |= 0x400;
        }
    }
}

void sub_080700D8(struct ObjectBase *a1) {
    struct Unk_0806FDF4 *tmp, *v3;
    s8 v4;
    struct Unk_0806FDF4_0 *v6;

    if (gUnk_03000518) {
        tmp = TaskGetStructPtr(gUnk_03000518);
        v3 = tmp;
        v4 = -1;
        if (v3->unk0[0].roomId == a1->roomId)
            v4 = 0;
        else if (v3->unk0[1].roomId == a1->roomId)
            v4 = 1;
        else if (v3->unk0[2].roomId == a1->roomId)
            v4 = 2;
        else if (v3->unk0[3].roomId == a1->roomId)
            v4 = 3;
        if (v4 >= 0) {
            v6 = &v3->unk0[v4];
            v6->flags = 0;
            v6->unk6 = 0;
            v6->roomId = 0xFFFE;
            gUnk_0203AD18[0] = 0;
            gUnk_0203AD18[1] = 0;
        }
    }
}

void sub_08070164(struct Unk_0806FDF4_0 *a1) {
    u16 v2 = 0, v3 = 0;
    bool32 v4 = FALSE;
    bool32 flag = TRUE;
    u8 i = gUnk_0203AD44;

    if (gUnk_0203AD44) {
        while (1) {
            if (gCurLevelInfo[i - 1].currentRoom == a1->roomId) {
                if (gUnk_03000510.unk4 & ((1 << (i - 1)) | 0x10))
                    v4 = TRUE;
                if (!(gUnk_02026D50[gCurLevelInfo[i - 1].unk65E] & 8)) {
                    flag = FALSE;
                    break;
                }
            }
            if (!--i)
                break;
        }
    }
    if (flag) {
        a1->flags = 0;
        a1->unk6 = 0;
        a1->roomId = 0xFFFE;
        gUnk_0203AD18[0] = 0;
        gUnk_0203AD18[1] = 0;
        return;
    }
    if (a1->flags & 0x100) {
        switch (a1->unk6) {
        case 1:
            v2 = gUnk_08350BB0[a1->unk4][0];
            v3 = gUnk_08350BB0[a1->unk4][1];
            if (a1->unk4 > 0xD) {
                a1->flags = 0;
                a1->unk6 = 0;
                a1->roomId = 0xFFFE;
            }
            break;
        case 2:
            v2 = gUnk_08350BCC[a1->unk4][0];
            v3 = gUnk_08350BCC[a1->unk4][1];
            if (a1->unk4 > 0x11) {
                a1->flags = 0;
                a1->unk6 = 0;
                a1->roomId = 0xFFFE;
            }
            break;
        case 3:
            v2 = gUnk_08350BF0[a1->unk4][0];
            v3 = gUnk_08350BF0[a1->unk4][1];
            if (a1->unk4 > 0x17) {
                a1->flags = 0;
                a1->unk6 = 0;
                a1->roomId = 0xFFFE;
            }
            break;
        case 4:
            if (a1->unk4 > 0x11)
                a1->unk4 = 0;
            v2 = gUnk_08350BCC[a1->unk4][0];
            v3 = gUnk_08350BCC[a1->unk4][1];
            break;
        case 5:
            if (a1->unk4 > 0xB)
                a1->unk4 = 0;
            v2 = gUnk_08350C20[a1->unk4][0];
            v3 = gUnk_08350C20[a1->unk4][1];
            break;
        case 6:
            if (a1->unk4 > 0x17)
                a1->unk4 = 0;
            v2 = gUnk_08350BF0[a1->unk4][0];
            v3 = gUnk_08350BF0[a1->unk4][1];
            break;
        }
        if (a1->roomId == gCurLevelInfo[gUnk_0203AD3C].currentRoom) {
            gUnk_0203AD18[0] = v2;
            gUnk_0203AD18[1] = v3;
            if (gUnk_0203AD20 & 8) {
                gCurLevelInfo[sub_08002374()].unk44 = gUnk_0203AD18[0];
                gCurLevelInfo[sub_08002374()].unk46 = gUnk_0203AD18[1];
            } else {
                gCurLevelInfo[sub_08002374()].unk44 = -gUnk_0203AD18[0];
                gCurLevelInfo[sub_08002374()].unk46 = -gUnk_0203AD18[1];
            }
        }
        if (!v4)
            ++a1->unk4;
    }
}

void sub_08070404(void) {
    struct Unk_0806FDF4 *var = TaskGetStructPtr(gCurTask);

    gUnk_0203AD18[0] = 0;
    gUnk_0203AD18[1] = 0;
    if (var->unk0[0].flags & 0x100)
        sub_08070164(&var->unk0[0]);
    if (var->unk0[1].flags & 0x100)
        sub_08070164(&var->unk0[1]);
    if (var->unk0[2].flags & 0x100)
        sub_08070164(&var->unk0[2]);
    if (var->unk0[3].flags & 0x100)
        sub_08070164(&var->unk0[3]);
}

bool8 sub_08070488(struct ObjectBase *a1) {
    bool8 ret = FALSE;
    struct Unk_0806FDF4 *tmp, *var;
    struct Unk_0806FDF4_0 *v6;
    u8 i;

    if (!gUnk_03000518)
        return FALSE;
    tmp = TaskGetStructPtr(gUnk_03000518);
    var = tmp;
    for (i = 0; i < gUnk_0203AD44; ++i) {
        v6 = &var->unk0[i];
        if (v6->roomId == a1->roomId && v6->flags & 0x100)
            ret = TRUE;
            // break;
    }
    return ret;
}

bool8 sub_08070504(struct ObjectBase *a1) {
    bool8 ret = FALSE;
    struct Unk_0806FDF4 *tmp, *var;
    struct Unk_0806FDF4_0 *v6;
    u8 i;

    if (!gUnk_03000518)
        return FALSE;
    tmp = TaskGetStructPtr(gUnk_03000518);
    var = tmp;
    for (i = 0; i < gUnk_0203AD44; ++i) {
        v6 = &var->unk0[i];
        if (v6->roomId == a1->roomId && v6->flags & 0x200) {
            ret = TRUE;
            // break;
        }
    }
    return ret;
}
