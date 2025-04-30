#include "code_0806F780.h"
#include "task.h"
#include "kirby.h"
#include "main.h"
#include "random.h"
#include "functions.h"
#include "trig.h"
#include "constants/kirby.h"

void sub_08070404(void);
void sub_08070808(void);
void sub_08070B50(struct Task *);
void nullsub_122(struct ObjectBase *);
void sub_08070BA8(struct ObjectBase *);
void sub_08070C24(struct ObjectBase *);
void sub_08070E20(struct ObjectBase *);
void sub_08070FA8(struct ObjectBase *);
void sub_08070CA0(struct ObjectBase *);
void sub_08070D20(struct ObjectBase *);
void sub_08070DA0(struct ObjectBase *);
void sub_08070EA0(struct ObjectBase *);
void sub_08070F24(struct ObjectBase *);
void sub_08070FA8(struct ObjectBase *);
void sub_08071024(struct ObjectBase *);
void sub_080710A4(struct ObjectBase *);
void sub_08071124(struct ObjectBase *);
void sub_080711A0(struct ObjectBase *);
void sub_080714A0(void);
void sub_080717AC(void);
void sub_08071B0C(void);
void sub_08071E34(void);
void sub_080720F8(void);
void sub_080724C4(void);
void sub_080728B0(void);
void sub_08072E40(void);
void sub_080737D8(void);
void sub_08073A74(struct Kirby *);
void sub_08073B64(void);
bool8 sub_08073C98(struct Object14 *);
void sub_080745C4(void);
void sub_08074674(void);
void sub_08074744(void);
void sub_08074950(void);
void sub_08074C1C(void);
void sub_080753CC(void);
void sub_08075EDC(void);
void sub_08076B84(void);
void sub_08077574(void);
void sub_08077D84(void);
void sub_08078314(void);
void sub_080788AC(void);
bool8 sub_08079264(struct Unk_080C4EDC *);
bool8 sub_080794A4(struct Unk_080C4EDC *);
bool8 sub_08079504(struct Unk_080C4EDC *);
void sub_08079714(void);
void sub_08079A9C(void);
void sub_08079D64(void);
void sub_0807A280(void);
void sub_0807A4F4(void);
void sub_0807AAD4(void);
void sub_0807AEF4(void);
void sub_0807B200(struct Object3 *, u16);
void sub_0807B2A8(void);
void sub_0807B5CC(struct Object3 *);
void sub_0807B6D4(void);
void sub_0807BAE0(struct Object3 *);
void sub_0807BBDC(void);
bool8 sub_0807C1A0(struct Unk_080C4EDC *);
void sub_0807C8F0(struct Unk_080C4EDC *);
bool8 sub_0807CB4C(struct Unk_080C4EDC *);
bool8 sub_0807CD3C(struct Unk_080C4EDC *);
bool8 sub_0807CF24(struct Unk_080C4EDC *);
bool8 sub_0807D208(struct Unk_080C4EDC *);
bool8 sub_0807D3F0(struct Unk_080C4EDC *);
bool8 sub_0807D5D0(struct Unk_080C4EDC *);
bool8 sub_0807D978(struct Object14 *);
bool8 sub_0807DE28(struct Unk_080C4EDC *);
bool8 sub_0807E098(struct Unk_080C4EDC *);
void sub_0807E2FC(void);
void sub_0807E518(void);
void sub_0807E820(void);
void sub_0807F46C(void);
void sub_0807F840(void);
void sub_0807FB80(void);
void sub_0807FDC8(void);
void sub_08080130(void);
void sub_0808049C(void);
void sub_08080870(void);
void sub_08080FBC(void);
void sub_08081724(void);
void sub_08081EB0(void);
void sub_080822B4(struct ObjectBase *);
void sub_0808269C(void);
void sub_08082748(void);
void sub_08082950(void);
void sub_08082CCC(void);
void sub_08082EBC(void);
void sub_08083150(void);
void sub_08083494(void);
void sub_0808382C(struct Task *);
void sub_08084AC4(struct Task *);
void sub_08084B1C(void);
bool8 sub_08084B70(struct Unk_080C4EDC *);
bool8 sub_08084B94(struct Unk_080C4EDC *);
bool8 sub_08084BD8(struct Unk_080C4EDC *);
bool8 sub_08084BFC(struct Unk_080C4EDC *);
bool8 sub_08084C20(struct Unk_080C4EDC *);
bool8 sub_08084C34(struct Unk_080C4EDC *);
bool8 sub_08084C8C(struct Unk_080C4EDC *);
bool8 sub_08084CB0(struct Unk_080C4EDC *);
bool8 sub_08084CC4(struct Unk_080C4EDC *);
bool8 sub_08084CF8(struct Unk_080C4EDC *);
void sub_08084D28(struct Task *);
void sub_08084D68(struct Task *);
void sub_08084DAC(struct Unk_080C4EDC *);
void sub_08084E00(struct Task *);
void sub_08084E44(struct Task *);
void sub_08084E88(struct Unk_080C4EDC *);
void sub_08084EDC(struct Unk_080C4EDC *);
void sub_08084F30(struct Unk_080C4EDC *);
void sub_08084FA8(struct Task *);
void sub_08084FEC(struct Task *);
void sub_08085030(struct Unk_080C4EDC *);
void sub_08085084(struct Task *);
void sub_080853C8(struct Kirby *, u16);
void sub_08088AC8(struct Kirby *);
void sub_0808C464(struct ObjectBase *);
void sub_0808C6F4(struct Kirby *);
void sub_08096464(struct ObjectBase *, s8, s8);
void sub_080995AC(struct Object3 *);
void sub_08099828(struct Object3 *);

extern const s8 gUnk_08350CB0[];
extern const s8 gUnk_08350CC8[];
extern const s8 gUnk_08350CD2[];
extern const s8 gUnk_08350CDC[];
extern const s8 gUnk_08350CE6[];
extern const s8 gUnk_08350CEE[];
extern const s8 gUnk_08350CF6[];
extern const s8 gUnk_08350CFE[];
extern const s16 gUnk_08350D1E[];
extern const s16 gUnk_08350D3E[];
extern const s16 gUnk_08350D5E[];
extern const s16 gUnk_08350D7E[];
extern const s16 gUnk_08350D96[];
extern const s16 gUnk_08350DAE[];
extern const u8 gUnk_08350DC6[];
extern const u8 gUnk_08350DD0[];
extern const u8 gUnk_08350DF0[];
extern const struct Unk_08357260 gUnk_08350E04[];

const s8 gUnk_08350BB0[][2] = {
    { 0x0,  0x0 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x0 },
};

const s8 gUnk_08350BCC[][2] = {
    { 0x0,  0x0 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x0 },
};

const s8 gUnk_08350BF0[][2] = {
    {  0x0,  0x0 },
    { -0x2,  0x2 },
    {  0x2, -0x3 },
    {  0x2, -0x3 },
    { -0x3,  0x3 },
    {  0x3, -0x2 },
    {  0x3, -0x2 },
    { -0x2,  0x0 },
    {  0x3,  0x2 },
    {  0x3,  0x2 },
    { -0x3, -0x3 },
    {  0x2,  0x3 },
    {  0x2,  0x3 },
    {  0x2, -0x3 },
    { -0x3,  0x3 },
    { -0x3,  0x3 },
    {  0x3, -0x2 },
    { -0x2,  0x0 },
    { -0x2,  0x0 },
    {  0x3,  0x2 },
    { -0x3, -0x3 },
    { -0x3, -0x3 },
    {  0x2,  0x2 },
    {  0x0,  0x0 },
};

const s8 gUnk_08350C20[][2] = {
    {  0x0,  0x0 },
    {  0x2, -0x3 },
    {  0x2, -0x3 },
    { -0x3,  0x3 },
    {  0x3, -0x2 },
    {  0x3, -0x2 },
    { -0x3,  0x0 },
    {  0x3,  0x2 },
    {  0x3,  0x2 },
    { -0x3, -0x3 },
    {  0x2,  0x3 },
    {  0x2,  0x3 },
};

void (*const gUnk_08350C38[])(struct ObjectBase *) = {
    nullsub_122,
    sub_08070BA8,
    sub_08070C24,
    sub_08070FA8,
    sub_08071024,
    sub_08070CA0,
    sub_08070D20,
    sub_08070EA0,
    sub_08070F24,
    sub_080710A4,
    sub_08071124,
    sub_08070DA0,
    sub_08070E20,
    sub_08070BA8,
    sub_08070C24,
    sub_08070D20,
    sub_08070CA0,
    sub_08070FA8,
    sub_08071024,
    sub_080711A0,
};

const s16 gUnk_08350C88[] = {
    0x480, 0x4A0,
    0x4C0, 0x4E0,
    0x500, 0x520,
    0x540, 0x550,
    0x560, 0x570,
    0x580, 0x5A0,
    0x5B0, 0x5C0,
    0x5E0, 0x600,
    0x620, 0x640,
    0x680, 0x700,
};

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

void sub_08070580(void) {
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    if (var->unk84)
        var->unk84(var);
    if (!sub_0806F780(&var->base)
        && (!var->unk78 || !var->unk78(var))
        && ((!(var->base.flags & 0x40000) && !(var->base.flags & 0x80000)) || !var->unk7C || !var->unk7C(var))) {
        if (!(var->base.flags & 0x800)) {
            var->base.unk48 = var->base.x;
            var->base.unk4C = var->base.y;
            var->base.x += var->base.xspeed;
            var->base.y -= var->base.yspeed;
        }
        if (!(var->base.flags & 0x100)) {
            if (var->base.x <= gCurLevelInfo[var->base.unk56].unk50
                && var->base.x >= gCurLevelInfo[var->base.unk56].unk48
                && var->base.y <= gCurLevelInfo[var->base.unk56].unk54
                && var->base.y >= gCurLevelInfo[var->base.unk56].unk4C)
                sub_0806FC70(&var->base);
        }
        if (!var->unk80 || !var->base.unk62 || !var->unk80(var))
            sub_0806F8BC(&var->base);
    }
}

struct Object14 *sub_080706A0(struct ObjectBase *a1, u32 a2, u16 a3, u8 a4,
    bool8 (*a5)(struct Object14 *), void (*a6)(struct Object14 *)) {
    struct Task *t = TaskCreate(sub_08070808, sizeof(struct Object14), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object14 *tmp = TaskGetStructPtr(t), *obj14 = tmp;

    sub_0803E3B0(&obj14->obj4);
    obj14->obj4.unk0 = 3;
    obj14->obj4.x = a1->x;
    obj14->obj4.y = a1->y;
    obj14->obj4.parent = a1;
    obj14->obj4.roomId = a1->roomId;
    obj14->obj4.flags |= 0x300;
    if (Macro_0810B1F4(a1))
        obj14->obj4.flags |= 0x2000;
    if (a1->flags & 1)
        obj14->obj4.flags |= 1;
    obj14->func48 = a5;
    obj14->func4C = a6;
    obj14->obj4.flags |= 2;
    a5(obj14);
    if (a2) {
        if (a2 > 0x200) {
            if (a2 != a1->unk56 * 0x800 + 0x6010600)
                obj14->obj4.flags |= 0x4000;
            sub_080709F8(&obj14->obj4, &obj14->obj4.sprite, a2, a3, a4, 0xA);
        } else {
            sub_080709F8(&obj14->obj4, &obj14->obj4.sprite, a2, a3, a4, 0xA);
        }
    } else {
        obj14->obj4.flags |= 0x4000;
        sub_080709F8(&obj14->obj4, &obj14->obj4.sprite, 0x6012000, a3, a4, 0xA);
    }
    return obj14;
}

void sub_08070808(void) {
    struct Object14 *tmp = TaskGetStructPtr(gCurTask), *obj14 = tmp;
    struct ObjectBase *parent = obj14->obj4.parent;

    if (obj14->obj4.flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (obj14->func4C)
            obj14->func4C(obj14);
        if (Macro_0810B1F4(parent) && !(obj14->obj4.flags & 0x2000))
            sub_0803DBC8(&obj14->obj4);
        else if (obj14->func48(obj14))
            obj14->obj4.flags |= 0x1000;
        else {
            obj14->obj4.unk3C += obj14->obj4.unk4;
            obj14->obj4.unk3E += obj14->obj4.unk8;
            if (!(obj14->obj4.flags & 0x800)) {
                obj14->obj4.x += obj14->obj4.unk3C;
                obj14->obj4.y -= obj14->obj4.unk3E;
            }
            sub_0806FAC8(&obj14->obj4);
        }
    }
}

void sub_080708DC(struct ObjectBase *a1, struct Sprite *a2, u32 a3, u16 animId, u8 variant, u16 a6) {
    u32 vram = 0;
    u32 flags = 0xC0000;

    if (a3 > 0x400) {
        vram = a3;
        if (vram != 0x6012000)
            flags &= ~0x80000;
    } else {
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == a1->roomId) {
            if (a1->flags & 0x4000)
                vram = sub_0803DE54(a3, animId, variant);
            else {
                vram = VramMalloc(a3);
                flags &= ~0x80000;
            }
        }
    }
    if (a1->flags & 1)
        flags |= 0x400;
    else
        flags &= ~0x400;
    a2->tilesVram = vram;
    a2->unk14 = a6 * 0x40;
    a2->animId = animId;
    a2->variant = variant;
    a2->unk16 = 0;
    a2->unk1B = 0xFF;
    a2->unk1C = 0;
    a2->palId = 0xF;
    a2->x = a1->x >> 8;
    a2->y = a1->y >> 8;
    a2->unk8 = flags | 0x2000;
    a2->unk20[0].unk0 = -1;
    sub_08155128(a2);
    a2->unk1C = 0x10;
    // dead code
    if (a1->flags & 0x4000) {
        u32 vram2 = 0x6012000;

        if (vram == vram2)
            { ++vram2; --vram2; }
        else
            { ++vram2; --vram2; }
    }
}

void sub_080709F8(struct Object4 *a1, struct Sprite *a2, u32 a3, u16 animId, u8 variant, u16 a6) {
    u32 vram = 0;
    u32 flags = 0xC0000;

    if (a3 > 0x400) {
        vram = a3;
        if (vram != 0x6012000)
            flags &= ~0x80000;
    } else {
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == a1->roomId) {
            if (a1->flags & 0x4000)
                vram = sub_0803DE54(a3, animId, variant);
            else {
                vram = VramMalloc(a3);
                flags &= ~0x80000;
            }
        }
    }
    if (a1->flags & 1)
        flags |= 0x400;
    else
        flags &= ~0x400;
    a2->tilesVram = vram;
    a2->unk14 = a6 * 0x40;
    a2->animId = animId;
    a2->variant = variant;
    a2->unk16 = 0;
    a2->unk1B = 0xFF;
    a2->unk1C = 0;
    a2->palId = 0xF;
    a2->x = a1->x >> 8;
    a2->y = a1->y >> 8;
    a2->unk8 = flags | 0x2000;
    a2->unk20[0].unk0 = -1;
    sub_08155128(a2);
    a2->unk1C = 0x10;
    // dead code
    if (a1->flags & 0x4000) {
        u32 vram2 = 0x6012000;

        if (vram == vram2)
            { ++vram2; --vram2; }
        else
            { ++vram2; --vram2; }
    }
}

void sub_08070B14(struct ObjectBase *a1) {
    if (!(a1->flags & 0x800)) {
        a1->unk48 = a1->x;
        a1->unk4C = a1->y;
        a1->x = a1->x + a1->xspeed;
        a1->y = a1->y - a1->yspeed;
    }
    sub_0806F8BC(a1);
}

void sub_08070B50(struct Task *t __attribute__((unused))) {
    gUnk_0203AD18[0] = 0;
    gUnk_0203AD18[1] = 0;
    gUnk_03000518 = NULL;
}

void sub_08070B68(void) {
    struct ObjectBase *objBase = TaskGetStructPtr(gCurTask);

    sub_0806F780(objBase);
    sub_0806F8BC(objBase);
}

void nullsub_122(struct ObjectBase *a1 __attribute__((unused))) {}

void sub_08070BA8(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed <= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (a1->xspeed > -a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070C24(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed <= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ({ ((~a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        if (a1->xspeed > -a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070CA0(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed <= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (-a1->xspeed > -a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070D20(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed <= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ({ ((~a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        if (-a1->xspeed > -a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070DA0(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed >= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ((a1->y & 0xF00) >> 8)) >= 0) {
        if (a1->xspeed > a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070E20(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed >= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ({ ((a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        if (a1->xspeed > a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070EA0(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed >= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ((a1->y & 0xF00) >> 8)) > 0) {
        ++r3;
        if (-a1->xspeed > a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070F24(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed >= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ({ ((a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        ++r3;
        if (-a1->xspeed > a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070FA8(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed <= 0))
        && (r3 = ((a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (a1->xspeed > -a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08071024(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed <= 0))
        && (r3 = ((~a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (-a1->xspeed > -a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_080710A4(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed >= 0))
        && (r3 = ((a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) < 2) {
        if (-a1->xspeed > a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08071124(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gUnk_082D88B8[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed >= 0))
        && (r3 = ((~a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) < 0) {
        if (a1->xspeed > a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_080711A0(struct ObjectBase *a1) {
    a1->unk62 = 0xFF;
}

void sub_080711A8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080714A0, sizeof(struct ObjectBase), 0x2FFF, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0x2000000;
    if (kirby->ability == KIRBY_ABILITY_MASTER) {
        objBase->unk64 = 0;
        objBase->unk66 = 0x120;
        objBase->unk63 = 2;
        objBase->unk68 |= 0x30007103;
        objBase->unk68 |= 0x2000000;
    }
    objBase->flags |= 0x80000000;
    objBase->flags |= 0x400;
    objBase->unk68 |= 0x10400042;
    if (kirby->ability == KIRBY_ABILITY_FIGHTER || kirby->ability == KIRBY_ABILITY_MASTER || kirby->ability == KIRBY_ABILITY_SWORD) {
        objBase->unk68 &= ~7;
        objBase->unk68 |= 3;
        if (kirby->ability == KIRBY_ABILITY_FIGHTER)
            objBase->unk63 = 3;
        if (kirby->ability == KIRBY_ABILITY_SWORD) {
            objBase->unk63 = 4;
            objBase->unk68 |= 0x2000;
        }
    }
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    if (kirby->ability == KIRBY_ABILITY_MASTER) {
        sub_0803E2B0(objBase, 1, -0xA, 0x2E, 0xE);
        sub_0803E308(objBase, -1, -4, 0x28, 0xE);
        objBase->unk68 |= 0x2000;
    }
    else if (kirby->ability == KIRBY_ABILITY_SWORD || kirby->base.base.base.unkC & 2) {
        sub_0803E2B0(objBase, 1, -8, 0x20, 0xE);
        sub_0803E308(objBase, -1, -4, 0x20, 0xE);
    } else {
        sub_0803E2B0(objBase, 1, -6, 0x10, 0xE);
        sub_0803E308(objBase, -1, -4, 0x10, 0xE);
    }
    SetPointerSomething(objBase);
    PlaySfx(&kirby->base.base.base, 115);
}

void sub_080714A0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object2 *unk6C;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (kirby->base.base.base.unk62 & 1)
            objBase->flags &= ~0x20000000;
        else
            objBase->flags |= 0x20000000;
        if (kirby->unkD4 != 13) {
            if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                m4aSongNumStop(115);
            objBase->flags |= 0x1000;
        } else {
            if (kirby->ability != KIRBY_ABILITY_MASTER && objBase->flags & 0x40000) {
                unk6C = objBase->unk6C;
                if (unk6C && unk6C->base.unk0 == 1 && unk6C->type == OBJ_GORDO)
                    objBase->flags &= ~0x40000;
                if (objBase->flags & 0x40000) {
                    if (kirby->base.base.base.unkC & 2) {
                        sub_08074240(&kirby->base.base.base, FALSE);
                        kirby->base.base.base.unkC &= ~2;
                        sub_0806EB74(kirby);
                    }
                    sub_0804323C(kirby);
                    return;
                }
            }
            if (objBase->flags & 0x80000 && kirby->base.base.base.unkC & 2) {
                sub_08074240(&kirby->base.base.base, FALSE);
                kirby->base.base.base.unkC &= ~2;
                sub_0806EB74(kirby);
            }
            if (kirby->ability == KIRBY_ABILITY_MASTER && objBase->flags & 0x40000) {
                if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 1) {
                    objBase->flags &= ~0x40000;
                    objBase->counter = 0;
                    ++objBase->unk1;
                }
                if (objBase->unk1 > 4) {
                    sub_0804323C(kirby);
                    return;
                }
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
            if (kirby->base.base.base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_080716BC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080717AC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30400042;
    sub_0803E2B0(objBase, -0xA, 6, 0xC, 0xD);
    sub_0803E308(objBase, -0xA, 6, 0xC, 0xD);
}

void sub_080717AC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object2 *unk6C;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (kirby->unkD4 < 0x12 || kirby->unkD4 > 0x13) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            unk6C = objBase->unk6C;
            if (unk6C && unk6C->base.unk0 == 1 && unk6C->type == OBJ_GORDO)
                objBase->flags &= ~0x40000;
        }
        if (objBase->flags & 0xC0000) {
            unk6C = objBase->unk6C;
            if (unk6C && unk6C->base.unk0 == 1) {
                if (!(({ 0x3FFFF8 & ~(unk6C->base.unk5C & ~7) ;}) & objBase->unk68)
                    || (objBase->unk68 & 7) < (unk6C->base.unk5C & 7)
                    || objBase->flags & 0x8000)
                    PlaySfx(&kirby->base.base.base, 113);
            }
            sub_080459B8(kirby);
        } else {
            SetPointerSomething(objBase);
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
            if (kirby->base.base.base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_08071994(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08071B0C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x10400042;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0xA, -8, 0x10, 8);
    sub_0803E308(objBase, 1, -8, 0x10, 8);
    SetPointerSomething(objBase);
}

void sub_08071B0C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object2 *unk6C;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (kirby->unkD4 < 0x4A || kirby->unkD4 > 0x59) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            unk6C = objBase->unk6C;
            if (unk6C && unk6C->base.unk0 == 1 && unk6C->type == OBJ_GORDO)
                objBase->flags &= ~0x40000;
        }
        if (objBase->flags & 0x40000) {
            if (kirby->base.base.base.unkC & 2) {
                sub_08074240(&kirby->base.base.base, FALSE);
                kirby->base.base.base.unkC &= ~2;
                sub_0806EB74(kirby);
            }
            objBase->flags |= 0x200;
            objBase->flags |= 0x1000;
            sub_0804323C(kirby);
        } else {
            if (objBase->flags & 0x80000 && kirby->base.base.base.unkC & 2) {
                sub_08074240(&kirby->base.base.base, FALSE);
                kirby->base.base.base.unkC &= ~2;
                sub_0806EB74(kirby);
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
            if (kirby->base.base.base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_08071C9C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08071E34, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x10000042;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -6, -8, 6, 4);
    sub_0803E308(objBase, 0xA, -6, 0xC, 4);
    SetPointerSomething(objBase);
    sub_0808AE30(&kirby->base.base.base, 0, 0x2B1, 0);
}

void sub_08071E34(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object4 *obj4;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (kirby->unkD4 != 0xF) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            objBase->flags |= 0x200;
            objBase->flags |= 0x1000;
        } else {
            if ((++objBase->counter & 3) == 3) {
                obj4 = sub_0808AE30(&kirby->base.base.base, 0, 0x2B1, 1);
                obj4->x += (0x10 - (Rand16() & 0x1F)) * 0x100;
                obj4->y += ((Rand16() & 7) + 4) * 0x100;
                obj4->unk3E = -0x40;
                obj4->unk3C = 0x40 - (Rand16() & 0x7F);
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
            if (kirby->base.base.base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_08071FC0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080720F8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084AC4);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0100000;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x20000021;
    objBase->flags |= 0x2000000;
    objBase->unk5C |= 0x80000;
    if (kirby->base.base.base.flags & 1) {
        objBase->flags |= 1;
        objBase->x -= 0x400;
    } else {
        objBase->x += 0x400;
    }
    sub_0803E2B0(objBase, 0, -0x12, 0x2C, 0x10);
    sub_0803E308(objBase, 0, -0x12, 0x2C, 0x10);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 * 0x800) + 0x6010400, 0x13, 0, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56;
}

void sub_080720F8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;
    struct Object2 *unk6C;

    if (kirby->unkD4 != 0x1D) {
        if ((kirby->unkD4 != 0x1A && kirby->unkD4 != 0x1B)
            && kirby->unkD4 != 0x6A && kirby->unkD4 != 0x6B)
            objBase->roomId = 0xFFFF;
        if (!sub_0806F780(objBase)) {
            objBase->flags |= 4;
            if (objBase->flags & 1)
                objBase->x = kirby->base.base.base.x - 0x400;
            else
                objBase->x = kirby->base.base.base.x + 0x400;
            objBase->y = kirby->base.base.base.y;
            if (objBase->counter & 1) {
                objBase->flags |= 0x400;
                if (kirby->unkD4 < 0x6A || kirby->unkD4 > 0x6B)
                    objBase->flags |= 8;
            } else {
                objBase->flags &= ~0x400;
                objBase->flags &= ~8;
            }
            if (objBase->flags & 0xC0000) {
                unk6C = objBase->unk6C;
                objBase->flags |= 0x200;
                if (unk6C && unk6C->base.unk0 == 1 && ObjType5ETo6C(unk6C))
                    objBase->flags &= ~0x200;
                if (kirby->base.base.base.unk56 >= gUnk_0203AD30) {
                    if (unk6C->type == OBJ_ABILITY_STAR_2)
                        objBase->flags &= ~0x200;
                    if (unk6C->type == OBJ_ABILITY_STAR_1 && unk6C->base.unk56 < gUnk_0203AD30)
                        objBase->flags &= ~0x200;
                }
            }
            if (objBase->counter > 5) {
                if (objBase->counter == 6) {
                    sub_08088AC8(kirby);
                    sub_08088AC8(kirby);
                    sub_08088AC8(kirby);
                }
                PlaySfxAlt(&kirby->base.base.base, 101);
                sub_0806F8BC(objBase);
            }
            if (++objBase->counter == 0x30) {
                sub_0803E2B0(objBase, 0, -0x17, 0x37, 0x15);
                sub_0803E308(objBase, 0, -0x17, 0x37, 0x15);
                objBase->unk68 = 0x20000023;
            }
        }
    }
}

void sub_08072314(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080724C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084AC4);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0100000;
    objBase->unk68 |= 0x20200023;
    objBase->unk5C |= 0x80000;
    objBase->flags |= 0x2000000;
    if (kirby->base.base.base.flags & 1) {
        objBase->x -= 0x400;
        objBase->flags |= 1;
    } else {
        objBase->x += 0x400;
        objBase->flags &= ~1;
    }
    sub_0803E2B0(objBase, 0, -0x12, 0x32, 0x10);
    sub_0803E308(objBase, 0, -0x12, 0x32, 0x10);
    sub_0808C6F4(kirby);
    sub_0808C6F4(kirby);
    sub_0808C6F4(kirby);
    PlaySfx(&kirby->base.base.base, 101);
}

void sub_080724C4(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object2 *unk6C;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (kirby->unkD4 != 0x1A && kirby->unkD4 != 0x1B)
            objBase->flags |= 0x1000;
        else {
            if (objBase->flags & 1)
                objBase->x = kirby->base.base.base.x - 0x400;
            else
                objBase->x = kirby->base.base.base.x + 0x400;
            objBase->y = kirby->base.base.base.y;
            if (objBase->flags & 0xC0000) {
                unk6C = objBase->unk6C;
                if (unk6C->base.unk0 != 1
                    || (unk6C->type != OBJ_ABILITY_STAR_1 && unk6C->type != OBJ_ABILITY_STAR_2))
                    objBase->flags |= 0x200;
            }
            SetPointerSomething(objBase);
        }
    }
}

void sub_080725E0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080728B0, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->unk68 |= 0x20000043;
    objBase->unk64 = 0x280;
    objBase->unk66 = 0x280;
    if (objBase->flags & 0x2000)
        objBase->flags |= 0x200;
    if (kirby->unkDD & KIRBY_ABILITY_CHANGE_UNKNOWN) {
        objBase->unk63 = 0x19;
        objBase->unk68 = 0x20000043;
    } else {
        objBase->unk63 = 0xA;
    }
    objBase->xspeed = 0;
    objBase->yspeed = 0;
    sub_0803E2B0(objBase, -0xC, -0xC, 0xC, 0xC);
    sub_0803E308(objBase, -2, -2, 2, 2);
    if (kirby->unkDD & KIRBY_ABILITY_CHANGE_UNKNOWN) {
        objBase->flags |= 0x4000;
        sub_080708DC(objBase, &objBase->sprite, 0x6012000, 0x2A1, 0, 0xA);
        sub_080706A0(objBase, 0, 0x2A1, 1, sub_08072B98, sub_08084AA0);
        PlaySfx(&kirby->base.base.base, 104);
    } else {
        objBase->flags |= 0x4000;
        sub_080708DC(objBase, &objBase->sprite, 0x6012000, 0x295, 0, 0xA);
        sub_080706A0(objBase, 0, 0x295, 2, sub_08072B98, sub_08084AA0);
        PlaySfx(&kirby->base.base.base, 103);
    }
}

void sub_080728B0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (objBase->counter < 2) {
            if (kirby->hp <= 0)
                objBase->flags |= 0x1000;
            objBase->flags |= 0x400;
            objBase->flags |= 0x200;
            ++objBase->counter;
        } else if (objBase->counter == 2) {
            objBase->flags &= ~0x600;
            if (objBase->flags & 0x2000)
                objBase->flags |= 0x200;
            objBase->y = kirby->base.base.base.y;
            if (kirby->base.base.base.flags & 1) {
                objBase->flags |= 1;
                objBase->x = kirby->base.base.base.x - 0x800;
                objBase->xspeed = -0x400;
            } else {
                objBase->x = kirby->base.base.base.x + 0x800;
                objBase->xspeed = 0x400;
            }
            ++objBase->counter;
            SetPointerSomething(objBase);
        } else {
            objBase->flags |= 4;
            if (!(objBase->flags & 0x800)) {
                objBase->unk48 = objBase->x;
                objBase->unk4C = objBase->y;
                objBase->x = objBase->x + objBase->xspeed;
                objBase->y = objBase->y - objBase->yspeed;
            }
            if (objBase->unk63 != 0x19 && objBase->flags & 0xC0000) {
                sub_0808AE30(objBase, 0, 0x28E, 0);
                objBase->flags |= 0x1000;
            } else {
                if (objBase->x <= gCurLevelInfo[objBase->unk56].unk50 && objBase->x >= gCurLevelInfo[objBase->unk56].unk48
                    && objBase->y <= gCurLevelInfo[objBase->unk56].unk54 && objBase->y >= gCurLevelInfo[objBase->unk56].unk4C)
                    sub_0806FC70(objBase);
                if (objBase->unk62 && (!(gUnk_082D88B8[objBase->unk57] & 0x1000)
                    || (gUnk_082D88B8[objBase->unk57] & 0xF00000) > 0x100000)) {
                    objBase->flags |= 0x1000;
                    sub_0808AE30(objBase, 0, 0x28E, 0);
                    PlaySfx(&kirby->base.base.base, 126);
                } else {
                    sub_0806F8BC(objBase);
                }
            }
        }
    }
}

bool8 sub_08072B98(struct Object14 *obj14) {
    struct ObjectBase *objBase = obj14->obj4.parent;
#ifdef NONMATCHING
    s32 x, y;
#else
    register s32 x asm("r3"), y;
#endif

    if (objBase->flags & 0x1000)
        return TRUE;
    else {
        if (objBase->flags & 0x400)
            obj14->obj4.flags |= 0x400;
        else
            obj14->obj4.flags &= ~0x400;
        obj14->obj4.flags |= 4;
        if (obj14->obj4.flags & 2) {
            x = obj14->obj4.x = objBase->x;
            y = obj14->obj4.y = objBase->y;
            obj14->obj4.unk3C = -0x100;
            obj14->obj4.unk3E = 0;
            obj14->obj4.unk4 = 0;
            obj14->obj4.unk8 = 0;
            if (obj14->obj4.flags & 1)
                obj14->obj4.unk3C = -obj14->obj4.unk3C;
            else {
                obj14->obj4.x = x;
                obj14->obj4.y = y;
            }
        }
        return FALSE;
    }
}

bool8 sub_08072C0C(struct Object14 *obj14) {
    struct ObjectBase *objBase = obj14->obj4.parent;
#ifdef NONMATCHING
    s32 x, y;
#else
    register s32 x asm("r4"), y;
#endif

    if (objBase->flags & 0x1000)
        return TRUE;
    else {
        obj14->obj4.flags |= 4;
        if (obj14->obj4.flags & 2) {
            x = obj14->obj4.x = objBase->x;
            y = obj14->obj4.y = objBase->y;
            obj14->obj4.unk3C = 0;
            obj14->obj4.unk3E = -0x100;
            obj14->obj4.unk4 = 0;
            obj14->obj4.unk8 = 0;
            if (obj14->obj4.flags & 1) {
                obj14->obj4.unk3C = obj14->obj4.unk3C;
            } else {
                obj14->obj4.x = x;
                obj14->obj4.y = y;
            }
        }
        return FALSE;
    }
}

void sub_08072C5C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08072E40, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->unk68 |= 0x20000042;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 2;
    if (objBase->flags & 0x2000)
        objBase->flags |= 0x200;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->y = kirby->base.base.base.y;
    objBase->yspeed = 0;
    if (kirby->base.base.base.flags & 1) {
        objBase->flags |= 1;
        objBase->x = kirby->base.base.base.x - 0x800;
        objBase->xspeed = -0x3C0;
    } else {
        objBase->x = kirby->base.base.base.x + 0x800;
        objBase->xspeed = 0x3C0;
    }
    sub_0803E2B0(objBase, -5, -5, 5, 5);
    sub_0803E308(objBase, -2, -2, 2, 2);
    objBase->flags |= 0x4000;
    sub_080708DC(objBase, &objBase->sprite, 0x6012000, 0x28C, 0, 0xA);
    SetPointerSomething(objBase);
}

void sub_08072E40(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!sub_0806F780(objBase)) {
        if (objBase->sprite.variant && objBase->flags & 2) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->counter > 0x10)
            objBase->sprite.variant = 1;
        if (objBase->sprite.variant == 0)
            objBase->flags |= 4;
        if (objBase->counter < 0x10
            && (objBase->counter & 7) == 7)
            sub_0808C464(objBase);
        if (objBase->xspeed < 0) {
            objBase->xspeed += 0x20;
            if (objBase->xspeed > 0)
                objBase->xspeed = 0;
        } else {
            objBase->xspeed -= 0x20;
            if (objBase->xspeed < 0)
                objBase->xspeed = 0;
        }
        if (!(objBase->flags & 0x800)) {
            objBase->unk48 = objBase->x;
            objBase->unk4C = objBase->y;
            objBase->x = objBase->x + objBase->xspeed;
            objBase->y = objBase->y - objBase->yspeed;
        }
        if (objBase->flags & 0xC0000) {
            objBase->flags |= 0x200;
            objBase->sprite.variant = 2;
            gCurTask->main = sub_08084B1C;
        }
        if (objBase->x <= gCurLevelInfo[objBase->unk56].unk50 && objBase->x >= gCurLevelInfo[objBase->unk56].unk48
            && objBase->y <= gCurLevelInfo[objBase->unk56].unk54 && objBase->y >= gCurLevelInfo[objBase->unk56].unk4C)
            sub_0806FC70(objBase);
        if (objBase->unk62
            && (!(gUnk_082D88B8[objBase->unk57] & 0x1000) || (gUnk_082D88B8[objBase->unk57] & 0xF00000) > 0x100000)) {
            objBase->flags |= 0x200;
            objBase->sprite.variant = 2;
            gCurTask->main = sub_08084B1C;
        }
        sub_0806F8BC(objBase);
        ++objBase->counter;
    }
}

void sub_08072FF0(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;
    bool32 var;

    if (kirby->unkD4 != 0x34
        && obj14->obj4.flags & 2)
        obj14->obj4.flags |= 0x1400;
    if (kirby->ability != KIRBY_ABILITY_FIRE)
        obj14->obj4.flags |= 0x1400;
    {
        struct Kirby *kirby;

        var = FALSE;
        kirby = obj14->obj4.parent;
        if (kirby->unkD4 == 0x5A || kirby->ability == KIRBY_ABILITY_NORMAL) {
            obj14->obj4.flags |= 0x1400;
            var = TRUE;
        }
    }
    if (var)
        obj14->obj4.flags |= 0x1400;
}

void sub_08073068(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;
    bool32 var;

    if (kirby->unkD4 != 0x34
        && obj14->obj4.flags & 2)
        obj14->obj4.flags |= 0x1400;
    if (kirby->ability != KIRBY_ABILITY_ICE)
        obj14->obj4.flags |= 0x1400;
    {
        struct Kirby *kirby;

        var = FALSE;
        kirby = obj14->obj4.parent;
        if (kirby->unkD4 == 0x5A || kirby->ability == KIRBY_ABILITY_NORMAL) {
            obj14->obj4.flags |= 0x1400;
            var = TRUE;
        }
    }
    if (var)
        obj14->obj4.flags |= 0x1400;
}

bool8 sub_080730E0(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;

    if (obj14->obj4.flags & 2) {
        obj14->obj4.sprite.variant = ~obj14->obj4.sprite.variant & 1;
        obj14->obj4.flags &= ~1;
        obj14->obj4.flags |= (kirby->base.base.base.flags & 1);
        obj14->obj4.x = kirby->base.base.base.x;
        obj14->obj4.y = kirby->base.base.base.y;
        obj14->obj4.unk3C = kirby->unkD6 + 0x80;
        obj14->obj4.unk3E = kirby->base.base.base.counter;
        obj14->obj4.unk4 = 0x30;
        obj14->obj4.unk8 = 0xB - (Rand16() & 0x1F);
        if (obj14->obj4.flags & 1) {
            obj14->obj4.x = obj14->obj4.x - ((Rand16() & 7) + 0x18) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() & 7) * 0x100;
            obj14->obj4.unk3C = -obj14->obj4.unk3C;
            obj14->obj4.unk4 = -obj14->obj4.unk4;
        } else {
            obj14->obj4.x = obj14->obj4.x + ((Rand16() & 7) + 0x18) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() & 7) * 0x100;
        }
    }
    return FALSE;
}

bool8 sub_080731EC(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;

    if (obj14->obj4.flags & 2) {
        obj14->obj4.flags |= 4;
        obj14->obj4.flags &= ~1;
        obj14->obj4.flags |= (kirby->base.base.base.flags & 1);
        obj14->obj4.x = kirby->base.base.base.x;
        obj14->obj4.y = kirby->base.base.base.y;
        obj14->obj4.unk3C = kirby->unkD6 + 0x120;
        obj14->obj4.unk3E = kirby->base.base.base.counter;
        obj14->obj4.unk4 = -8;
        obj14->obj4.unk8 = -2;
        if (obj14->obj4.flags & 1) {
            obj14->obj4.x = obj14->obj4.x - ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() | ~7) * 0x100;
            obj14->obj4.unk3C = -obj14->obj4.unk3C;
            obj14->obj4.unk4 = -obj14->obj4.unk4;
        } else {
            obj14->obj4.x = obj14->obj4.x + ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() | ~7) * 0x100;
        }
    }
    return FALSE;
}

bool8 sub_080732E4(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;

    if (obj14->obj4.flags & 2) {
        obj14->obj4.flags |= 4;
        obj14->obj4.flags &= ~1;
        obj14->obj4.flags |= (kirby->base.base.base.flags & 1);
        obj14->obj4.x = kirby->base.base.base.x;
        obj14->obj4.y = kirby->base.base.base.y;
        obj14->obj4.unk3C = kirby->unkD6 + 0x10;
        obj14->obj4.unk3E = kirby->base.base.base.counter;
        obj14->obj4.unk4 = 0x30;
        obj14->obj4.unk8 = 0xF;
        if (obj14->obj4.flags & 1) {
            obj14->obj4.x = obj14->obj4.x - ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() | ~7) * 0x100;
            obj14->obj4.unk3C = -obj14->obj4.unk3C;
            obj14->obj4.unk4 = -obj14->obj4.unk4;
        } else {
            obj14->obj4.x = obj14->obj4.x + ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() | ~7) * 0x100;
        }
    }
    return FALSE;
}

bool8 sub_080733D8(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;

    if (obj14->obj4.flags & 2) {
        obj14->obj4.flags |= 4;
        obj14->obj4.flags &= ~1;
        obj14->obj4.flags |= (kirby->base.base.base.flags & 1);
        obj14->obj4.x = kirby->base.base.base.x;
        obj14->obj4.y = kirby->base.base.base.y;
        obj14->obj4.unk3C = kirby->unkD6 + 0x80;
        obj14->obj4.unk3E = kirby->base.base.base.counter + 0x80;
        obj14->obj4.unk4 = 0x20;
        obj14->obj4.unk8 = 0xF - (Rand16() & 0x1F);
        if (obj14->obj4.flags & 1) {
            obj14->obj4.x = obj14->obj4.x - ((Rand16() & 7) + (Rand16() & 3) + 0x14) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() & 7) * 0x100;
            obj14->obj4.unk3C = -obj14->obj4.unk3C;
            obj14->obj4.unk4 = -obj14->obj4.unk4;
        } else {
            obj14->obj4.x = obj14->obj4.x + ((Rand16() & 7) + (Rand16() & 3) + 0x14) * 0x100;
            obj14->obj4.y = obj14->obj4.y - (Rand16() & 7) * 0x100;
        }
    }
    return FALSE;
}

void sub_080734F8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080737D8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D68);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    struct Object14 *obj14;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x120;
    objBase->unk66 = 0;
    objBase->unk63 = 5;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x20000103;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x80000000;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    sub_0803E2B0(objBase, -0xA, -0xC, 0xA, 0x10);
    sub_0803E308(objBase, -3, -3, 3, 3);
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    objBase->xspeed = 0x108;
    objBase->yspeed = 0;
    objBase->unk48 = 0x38 - (Rand16() & 0x1F);
    objBase->unk4C = ~Rand16() & 0x1F;
    if (objBase->flags & 1) {
        objBase->x -= 0x1800;
        objBase->xspeed = -objBase->xspeed;
        objBase->unk48 = -objBase->unk48;
    } else {
        objBase->x += 0x1800;
    }
    obj14 = sub_080706A0(&kirby->base.base.base, kirby->base.base.base.unk56 * 0x800 + 0x6010600, 0x4E, 0, sub_080730E0, sub_08072FF0);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x2C0;
    obj14 = sub_080706A0(&kirby->base.base.base, kirby->base.base.base.unk56 * 0x800 + 0x6010400, 0x4E, 2, sub_080731EC, sub_08072FF0);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base.base.base, kirby->base.base.base.unk56 * 0x800 + 0x6010400, 0x4E, 3, sub_080732E4, sub_08072FF0);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base.base.base, kirby->base.base.base.unk56 * 0x800 + 0x6010400, 0x4E, 4, sub_080733D8, sub_08072FF0);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x280;
    sub_08073A74(kirby);
    obj14 = sub_080706A0(&kirby->base.base.base, 0, 0x293, 2, sub_08073C98, NULL);
    obj14->obj4.sprite.palId = 0xF;
    obj14->obj4.sprite.unk14 = 0x280;
    sub_080708DC(objBase, &objBase->sprite, kirby->base.base.base.unk56 * 0x800 + 0x6010400, 0x4D, 0, 0xB);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_080737D8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->unkD4 != 0x34 && objBase->flags & 2)
        objBase->flags |= 0x1000;
    else {
        bool32 var = FALSE;
        struct Kirby *kirby2 = objBase->parent;

        if (kirby2->unkD4 == 0x5A || kirby2->ability == KIRBY_ABILITY_NORMAL) {
            objBase->flags |= 0x1400;
            var = TRUE;
        }
        if (!var) {
            if (objBase->sprite.animId == 0x4D)
                PlaySfxAlt(&kirby->base.base.base, 142);
            else
                PlaySfxAlt(&kirby->base.base.base, 143);
            if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
                sub_0803D9A8(objBase);
            else {
                if (objBase->flags & 2) {
                    objBase->flags |= 4;
                    objBase->x = kirby->base.base.base.x;
                    objBase->y = kirby->base.base.base.y;
                    objBase->flags &= ~1;
                    objBase->flags |= kirby->base.base.base.flags & 1;
                    objBase->xspeed = kirby->unkD6 + 0x108;
                    objBase->yspeed = kirby->base.base.base.counter;
                    objBase->unk48 = 0x38 - (Rand16() & 0x1F);
                    objBase->unk4C = ~Rand16() & 0x1F;
                    if (objBase->flags & 1) {
                        objBase->x -= 0x1800;
                        objBase->xspeed = -objBase->xspeed;
                        objBase->unk48 = -objBase->unk48;
                    } else {
                        objBase->x += 0x1800;
                    }
                }
                objBase->xspeed += objBase->unk48;
                objBase->yspeed += objBase->unk4C;
                if (!(objBase->flags & 0x800)) {
                    objBase->x += objBase->xspeed;
                    objBase->y -= objBase->yspeed;
                }
                sub_0806F8BC(objBase);
            }
        }
    }
}

void sub_08073A74(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08073B64, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x80000500;
    objBase->unk68 |= 0x20000103;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    sub_0803E308(objBase, 0, -4, 0x10, 4);
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
}

void sub_08073B64(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        sub_0803D9A8(objBase);
    else {
        bool32 var = FALSE;

        if (((struct Kirby *)objBase->parent)->unkD4 == 0x5A || ((struct Kirby *)objBase->parent)->ability == KIRBY_ABILITY_NORMAL) {
            objBase->flags |= 0x1400;
            var = TRUE;
        }
        if (!var) {
            objBase->x = ((struct Kirby *)objBase->parent)->base.base.base.x;
            objBase->y = ((struct Kirby *)objBase->parent)->base.base.base.y;
            if (((struct Kirby *)objBase->parent)->unkD4 != 0x34)
                objBase->flags |= 0x1000;
            else
                SetPointerSomething(objBase);
        }
    }
}

bool8 sub_08073C98(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;

    if (kirby->unkD4 != 0x34) {
        if (obj14->obj4.flags & 2)
            return TRUE;
    } else if (obj14->obj4.flags & 2) {
        obj14->obj4.flags |= 4;
        obj14->obj4.x = kirby->base.base.base.x;
        obj14->obj4.y = kirby->base.base.base.y + 0x400;
        obj14->obj4.unk3C = -0x300;
        obj14->obj4.unk3E = 0x200;
        obj14->obj4.unk4 = 0x60;
        obj14->obj4.unk8 = -0x40;
        if (obj14->obj4.flags & 1) {
            obj14->obj4.x += 0x800;
            obj14->obj4.y -= 0x200;
            obj14->obj4.unk3C = -obj14->obj4.unk3C;
            obj14->obj4.unk4 = -obj14->obj4.unk4;
        } else {
            obj14->obj4.x -= 0x800;
            obj14->obj4.y -= 0x200;
        }
    }
    return FALSE;
}

void sub_08073D2C(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080745C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase2 = TaskGetStructPtr(t);

    sub_0803E380(objBase2);
    objBase2->unk0 = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->unk64 = 0x180;
    objBase2->unk66 = 0x100;
    objBase2->unk63 = 1;
    objBase2->flags |= 0x10000100;
    objBase2->unk68 |= 0x20000043;
    objBase2->counter = 1;
    sub_0806FE64(1, objBase);
    sub_0803E2B0(objBase2, -0x14, -0x14, 0x14, 0x14);
    objBase2->flags |= 0x4000;
    sub_080708DC(objBase2, &objBase2->sprite, 0x6012000, 0x29B, 0, 0xC);
    PlaySfx(objBase, 310);
}

void sub_08073ECC(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080745C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;

    sub_0803E380(objBase2);
    objBase2->unk0 = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->parent = NULL;
    objBase2->unk64 = 0x180;
    objBase2->unk66 = 0x100;
    objBase2->unk63 = 1;
    objBase2->flags |= 0x30000100;
    objBase2->unk68 |= 0x20000043;
    if (objBase->flags & 1)
        objBase2->x += 0x400;
    else
        objBase2->x -= 0x400;
    sub_0806FE64(1, objBase);
    sub_0803E2B0(objBase2, -0x14, -0x14, 0x14, 0x14);
    objBase2->flags |= 0x4000;
    sub_080708DC(objBase2, &objBase2->sprite, 0x6012000, 0x2BF, 0, 0xC);
    PlaySfx(objBase, 310);
}

void sub_08074088(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08074744, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x280;
    objBase->unk66 = 0x200;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0000100;
    objBase->flags |= 0x800;
    objBase->unk68 |= 0x20001003;
    objBase->xspeed = kirby->base.base.base.xspeed;
    objBase->counter = 2;
    sub_0806FE64(1, &kirby->base.base.base);
    sub_0803E2B0(objBase, -0xE, -0xE, 0xE, 0xE);
    sub_0803E308(objBase, -0x18, -0x18, 0x18, 0x18);
    objBase->flags |= 0x4000;
    sub_080708DC(objBase, &objBase->sprite, 0x6012000, 0x29B, 0, 0xC);
    PlaySfx(&kirby->base.base.base, 200);
}

void sub_08074240(struct ObjectBase *objBase, bool8 a2) {
    struct Task *t = TaskCreate(sub_08074674, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;
    struct ObjectBase *objBase3;

    sub_0803E380(objBase2);
    objBase2->unk0 = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    if (objBase->unk0) {
        objBase2->parent = objBase->parent;
        objBase3 = objBase->parent;
    } else {
        objBase3 = objBase;
    }
    if (a2) {
        objBase2->unk64 = 0x260;
        objBase2->unk66 = 0x80;
    } else {
        objBase2->unk64 = 0x180;
        objBase2->unk66 = 0x100;
    }
    objBase2->unk63 = 5;
    objBase2->flags |= 0xA0000100;
    objBase2->flags |= 0x800;
    objBase2->unk68 |= 0x20000103;
    objBase2->xspeed = objBase->xspeed;
    sub_0806FE64(2, objBase);
    sub_0803E2B0(objBase2, -0xE, -0xE, 0xE, 0xE);
    sub_0803E308(objBase2, -0x10, -0x10, 0x10, 0x10);
    objBase2->flags |= 0x4000;
    sub_080708DC(objBase2, &objBase2->sprite, 0x6012000, 0x2BF, 0, 0xC);
    PlaySfx(objBase3, 157);
}

void sub_08074420(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080745C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;

    sub_0803E380(objBase2);
    objBase2->unk0 = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->unk64 = 0x180;
    objBase2->unk66 = 0x100;
    objBase2->unk63 = 1;
    objBase2->flags |= 0x10000100;
    objBase2->unk68 |= 0x20000103;
    objBase2->counter = 1;
    sub_0806FE64(1, objBase);
    sub_0803E2B0(objBase2, -0x40, -0x4E, 0x40, 0x32);
    objBase2->flags |= 0x4000;
    sub_080708DC(objBase2, &objBase2->sprite, 0x6012000, 0x29B, 0, 0xC);
    PlaySfx(objBase, 310);
}

void sub_080745C4(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        if (objBase->counter) {
            if (objBase->counter == 2) {
                if (objBase->unk1 < 5)
                    objBase->flags |= 0x200;
                else
                    objBase->flags &= ~0x200;
            }
            if (objBase->unk1 > 0xA)
                objBase->flags |= 0x200;
        }
        else if (objBase->unk1 < 1 || objBase->unk1 > 4)
            objBase->flags |= 0x200;
        else
            objBase->flags &= ~0x200;
        sub_0806F8BC(objBase);
    }
}

void sub_08074674(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        switch (objBase->counter) {
        case 0:
            break;
        case 4:
            objBase->unk63 = 2;
            sub_0803E2B0(objBase, -0x10, -0x10, 0x10, 0x10);
            objBase->flags &= ~0x40000;
            break;
        case 8:
            objBase->unk63 = 1;
            sub_0803E2B0(objBase, -0x14, -0x14, 0x14, 0x14);
            objBase->flags &= ~0x40000;
            break;
        case 0xC:
            objBase->flags |= 0x200;
            break;
        }
        ++objBase->counter;
        sub_0806F8BC(objBase);
    }
}

void sub_08074744(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        switch (objBase->counter) {
        case 0:
            break;
        case 1:
            objBase->unk63 = 2;
            sub_0803E2B0(objBase, -0x12, -0x12, 0x12, 0x12);
            objBase->flags &= ~0x40000;
            break;
        case 3:
            objBase->unk63 = 1;
            sub_0803E2B0(objBase, -0x18, -0x18, 0x18, 0x18);
            objBase->flags &= ~0x40000;
            break;
        case 4:
            objBase->unk63 = 1;
            sub_0803E2B0(objBase, -0x1E, -0x1E, 0x1E, 0x1E);
            objBase->flags &= ~0x40000;
            break;
        case 8:
            objBase->flags |= 0x200;
            break;
        }
        ++objBase->counter;
        sub_0806F8BC(objBase);
    }
}

void sub_08074860(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08074950, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;

    sub_0803E380(objBase2);
    objBase2->unk0 = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->unk64 = 0x320;
    objBase2->unk66 = 0x200;
    objBase2->unk63 = 0xE;
    objBase2->flags |= 0x20000100;
    objBase2->flags |= 0x800;
    objBase2->unk68 |= 0x20001003;
    objBase2->xspeed = objBase->xspeed;
    sub_0803E2B0(objBase2, -0xF, -0xF, 0xF, 0xF);
}

void sub_08074950(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        if (++objBase->counter > 4)
            objBase->flags |= 0x1000;
        else
            SetPointerSomething(objBase);
    }
}

void sub_08074A18(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);
    struct Kirby *kirby = objBase->parent;
    struct Sprite sprite;

    if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
        m4aSongNumStop(181);
    SpriteSomething(&sprite, 0x6000000, 0x111, 0, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
}

void sub_08074AB0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08074C1C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08074A18);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0xA0;
    objBase->unk66 = 0;
    objBase->unk63 = 3;
    objBase->flags |= 0xA0000100;
    objBase->flags |= 0x4000;
    objBase->unk68 = 0xA0000403;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x17, -0x14, 0x17, 0x1A);
    sub_0803E308(objBase, -0x1A, -0x16, 0x1A, 0x1E);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x116, 0, 0xA);
    objBase->sprite.palId = kirby->base.base.base.sprite.palId + 4;
    objBase->sprite.unk14 = kirby->base.base.base.sprite.unk14;
}

void sub_08074C1C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;
    struct Sprite sprite;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->unkD4 != 0x34) {
        objBase->flags |= 0x1000;
        SpriteSomething(&sprite, 0x6000000, 0x115, 3, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
    } else {
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        PlaySfxAlt(&kirby->base.base.base, 181);
        if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
            u8 unk1C = objBase->sprite.unk1C;

            if (objBase->unk1 == kirby->base.base.base.unk1)
                objBase->sprite.unk1C = 0;
            Macro_080FC150(objBase, &objBase->sprite);
            objBase->sprite.unk1C = unk1C;
            if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
            }
            if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                objBase->sprite.x += gUnk_0203AD18[0];
                objBase->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(objBase, &objBase->sprite);
            }
        } else {
            u8 unk1C;

            objBase->flags |= 4;
            if (!(kirby->base.base.base.unkC & 0x200)) {
                switch (objBase->unk1) {
                case 6:
                case 0xE:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 4, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                case 7:
                case 0xF:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 5, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                case 8:
                case 0x10:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 6, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                case 9:
                case 0x11:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 3, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                }
            }
            SetPointerSomething(objBase);
            unk1C = objBase->sprite.unk1C;
            if (objBase->unk1 == kirby->base.base.base.unk1)
                objBase->sprite.unk1C = 0;
            Macro_080FC150(objBase, &objBase->sprite);
            objBase->sprite.unk1C = unk1C;
            if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
            }
            if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                objBase->sprite.x += gUnk_0203AD18[0];
                objBase->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(objBase, &objBase->sprite);
            }
        }
    }
}

void sub_0807529C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080753CC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 6;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30002003;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 0x200;
    objBase->flags |= 0x4000;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, gUnk_0834FF14[0].animId, gUnk_0834FF14[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
    objBase->sprite.unk14 = kirby->base.base.base.sprite.unk14;
}

void sub_080753CC(void) {
    bool32 r8 = FALSE;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.base.base.flags & 0x2405;
        objBase->roomId = kirby->base.base.base.roomId;
        objBase->flags |= 0x2000000;
        objBase->sprite.unk14 = kirby->base.base.base.sprite.unk14 - 0x40;
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.base.base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_SWORD) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_0834FF14[kirby->unkD4].animId || sprite->variant != gUnk_0834FF14[kirby->unkD4].variant) {
                    r8 = TRUE;
                    sprite->animId = gUnk_0834FF14[kirby->unkD4].animId;
                    sprite->variant = gUnk_0834FF14[kirby->unkD4].variant;
                    if (kirby->unkD4 == 0x5A)
                        sprite->variant = gUnk_0834FF14[kirby->unkD4].variant + kirby->base.base.base.unk56;
                    switch (kirby->unkD4) {
                    case 0x68:
                    case 0x69:
                        objBase->unk64 = 0x1C0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 2;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x80000000;
                        PlaySfx(&kirby->base.base.base, 194);
                        break;
                    case 0x35:
                    case 0x42:
                        objBase->unk64 = 0x100;
                        objBase->unk66 = 0;
                        objBase->unk63 = 6;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6F:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0xC0;
                        objBase->unk63 = 1;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 |= 0x81000000;
                        break;
                    case 0x70:
                        objBase->unk64 = 0x300;
                        objBase->unk66 = 0x240;
                        objBase->unk63 = 6;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6A:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0x280;
                        objBase->unk63 = 2;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    }
                    if (kirby->unkD4 != 0x68 && kirby->unkD4 != 0x69 && kirby->base.base.base.unk56 == gUnk_0203AD3C)
                        m4aSongNumStop(194);
                }
                if (sprite->animId) {
                    if (!objBase->sprite.unk20[0].unk0) {
                        objBase->flags &= ~0x200;
                        if (!objBase->sprite.unk16 || r8) {
                            if (!(kirby->base.base.base.flags & 2))
                                objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (kirby->unkD4 == 0x6C && kirby->base.base.base.unk1 == 0xC) {
                        objBase->unk64 = 0x100;
                        objBase->unk66 = -0x380;
                        objBase->unk63 = 6;
                        objBase->unk68 &= ~0x80000000;
                        if (!(kirby->base.base.base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if ((kirby->unkD4 == 0x68 || kirby->unkD4 == 0x69) && kirby->base.base.base.unk1 == 9 && !(kirby->base.base.base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                        if (kirby->unkD4 == 0x6F && !(kirby->base.base.base.flags & 0x800000)) {
                            switch (kirby->base.base.base.unk1) {
                            case 4:
                            case 7:
                            case 0xA:
                            case 0xD:
                            case 0x10:
                            case 0x13:
                            case 0x16:
                            case 0x19:
                                objBase->flags &= ~0x40000;
                                PlaySfx(&kirby->base.base.base, 195);
                                break;
                            }
                        }
                        if (objBase->flags & 1)
                            sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        sub_0803E308(objBase, 0, 0, 0, 0);
                    }
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08075DB0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08075EDC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 8;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30007103;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 0x200;
    objBase->flags |= 0x4000;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, gUnk_083500D8[0].animId, gUnk_083500D8[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08075EDC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.base.base.flags & 0x2405;
        objBase->roomId = kirby->base.base.base.roomId;
        objBase->sprite.unk14 = kirby->base.base.base.sprite.unk14 - 0x40;
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.base.base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_MASTER) {
            if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                m4aSongNumStop(229);
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_083500D8[kirby->unkD4].animId || sprite->variant != gUnk_083500D8[kirby->unkD4].variant) {
                    sprite->animId = gUnk_083500D8[kirby->unkD4].animId;
                    sprite->variant = gUnk_083500D8[kirby->unkD4].variant;
                    if (kirby->unkD4 == 0x5A)
                        sprite->variant = gUnk_083500D8[kirby->unkD4].variant + kirby->base.base.base.unk56;
                    if (kirby->unkD4 == 0x2E) {
                        sprite->variant = gUnk_08350DC6[kirby->base.base.base.counter];
                        objBase->sprite.unk1C = 0x10;
                    } else if (kirby->unkD4 == 0x2D) {
                        sprite->variant = gUnk_08350DD0[kirby->base.base.base.counter];
                        objBase->sprite.unk1C = 0x10;
                    }
                    switch (kirby->unkD4) {
                    case 0x68:
                    case 0x69:
                        objBase->unk64 = 0x1C0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 4;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x80000000;
                        PlaySfx(&kirby->base.base.base, 194);
                        break;
                    case 0x35:
                    case 0x42:
                        objBase->unk64 = 0x100;
                        objBase->unk66 = 0;
                        objBase->unk63 = 8;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6F:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0xC0;
                        objBase->unk63 = 1;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 |= 0x81000000;
                        break;
                    case 0x70:
                        objBase->unk64 = 0x300;
                        objBase->unk66 = 0x240;
                        objBase->unk63 = 8;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6B:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0x280;
                        objBase->unk63 = 2;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x73:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0x2C0;
                        objBase->unk63 = 8;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x76:
                        objBase->unk64 = 0x180;
                        objBase->unk66 = 0x1C0;
                        objBase->unk63 = 3;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x77:
                        PlaySfx(&kirby->base.base.base, 229);
                        objBase->sprite.tilesVram = (kirby->base.base.base.unk56 << 0xB) + 0x6010200;
                        break;
                    }
                    if (kirby->unkD4 != 0x77) {
                        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                            m4aSongNumStop(229);
                        objBase->sprite.tilesVram = (kirby->base.base.base.unk56 << 0xB) + 0x6010400;
                    }
                    if (kirby->unkD4 != 0x68 && kirby->unkD4 != 0x69 && kirby->base.base.base.unk56 == gUnk_0203AD3C)
                        m4aSongNumStop(194);
                } else if (kirby->unkD4 == 0x6F) {
                    if (kirby->base.base.base.flags & 1)
                        objBase->x -= kirby->base.base.base.unk1 << 7;
                    else
                        objBase->x += kirby->base.base.base.unk1 << 7;
                }
                if (sprite->animId) {
                    if (!objBase->sprite.unk20[0].unk0) {
                        objBase->flags &= ~0x200;
                        if (!objBase->sprite.unk16) {
                            if (!(kirby->base.base.base.flags & 2))
                                objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (kirby->unkD4 == 0x6C && kirby->base.base.base.unk1 == 0xC) {
                        objBase->unk64 = 0x100;
                        objBase->unk66 = -0x380;
                        objBase->unk63 = 6;
                        objBase->unk68 &= ~0x80000000;
                        if (!(kirby->base.base.base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                    }
                    if (kirby->unkD4 == 0x77 && !(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 4) {
                        objBase->flags &= ~0x40000;
                        objBase->counter = 0;
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if ((kirby->unkD4 == 0x68 || kirby->unkD4 == 0x69) && kirby->base.base.base.unk1 == 9 && !(kirby->base.base.base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                        if (kirby->unkD4 == 0x6F && !(kirby->base.base.base.flags & 0x800000)) {
                            switch (kirby->base.base.base.unk1) {
                            case 4:
                            case 7:
                            case 0xA:
                            case 0xD:
                            case 0x10:
                            case 0x13:
                            case 0x16:
                            case 0x19:
                                objBase->flags &= ~0x40000;
                                PlaySfx(&kirby->base.base.base, 195);
                                break;
                            }
                        }
                        if (objBase->flags & 1)
                            sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        sub_0803E308(objBase, 0, 0, 0, 0);
                    }
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08076A60(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08076B84, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = 0x1E0;
    objBase->unk63 = 5;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30005003;
    objBase->unk68 |= 0x4000000;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, gUnk_083502C0[0].animId, gUnk_083502C0[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08076B84(void) {
    bool32 b = FALSE;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.base.base.flags & 0x2405;
        objBase->roomId = kirby->base.base.base.roomId;
        objBase->sprite.unk14 = kirby->base.base.base.sprite.unk14 - 0x40;
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.base.base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_HAMMER) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                ++unk1C; --unk1C; // fix stack
                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_083502C0[kirby->unkD4].animId || sprite->variant != gUnk_083502C0[kirby->unkD4].variant) {
                    b = TRUE;
                    if (sprite->animId != gUnk_083502C0[kirby->unkD4].animId && sprite->animId == gUnk_083502C0[0x6A].animId)
                        kirby->base.base.base.flags &= ~0x8000;
                    sprite->animId = gUnk_083502C0[kirby->unkD4].animId;
                    sprite->variant = gUnk_083502C0[kirby->unkD4].variant;
                    if (kirby->unkD4 == 0x5A)
                        sprite->variant = gUnk_083502C0[kirby->unkD4].variant + kirby->base.base.base.unk56;
                    if (kirby->unkD4 == 0x67) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0x1E0;
                        objBase->unk63 = 2;
                        objBase->unk68 &= ~0x8000008;
                        objBase->unk68 |= 0x100;
                        objBase->flags &= ~0x40000;
                        kirby->base.base.base.flags &= ~0x8000;
                        PlaySfx(&kirby->base.base.base, 189);
                    } else if (kirby->unkD4 == 0x6A) {
                        objBase->unk64 = 0xE0;
                        objBase->unk66 = 0xE0;
                        objBase->unk63 = 2;
                        objBase->unk68 &= ~0x8000108;
                        objBase->flags &= ~0x40000;
                        kirby->base.base.base.flags |= 0x8000;
                    } else if (kirby->unkD4 == 0x68 || kirby->unkD4 == 0x69 || kirby->unkD4 == 0x42 || kirby->unkD4 == 0x35) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0x1E0;
                        objBase->unk63 = 5;
                        objBase->unk68 &= ~0x8000108;
                        kirby->base.base.base.flags &= ~0x8000;
                        objBase->flags &= ~0x40000;
                    } else if (kirby->unkD4 == 0x6C) {
                        kirby->base.base.base.flags &= ~0x8000;
                    }
                }
                if (sprite->animId) {
                    if (!objBase->sprite.unk20[0].unk0) {
                        objBase->flags &= ~0x200;
                        if (!objBase->sprite.unk16 || b) {
                            objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if (kirby->unkD4 == 0x6B && (kirby->base.base.base.flags & 2 && !(kirby->base.base.base.flags & 0x800000))) {
                            objBase->flags &= ~0x40000;
                            PlaySfx(&kirby->base.base.base, 191);
                        }
                        if (kirby->unkD4 == 0x67 && kirby->base.base.base.unk1 == 0x17) {
                            objBase->unk64 = 0x380;
                            objBase->unk66 = 0x380;
                            objBase->unk63 = 0x19;
                            objBase->unk68 |= 0x8000108;
                            if (!(kirby->base.base.base.flags & 0x800000)) {
                                objBase->flags &= ~0x40000;
                                PlaySfx(&kirby->base.base.base, 120);
                            }
                            kirby->base.base.base.flags &= ~0x8000;
                        }
                        if (objBase->flags & 1)
                            sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        sub_0803E308(objBase, 0, 0, 0, 0);
                    }
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08077454(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08077574, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = 0x140;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x20000043;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, gUnk_08350474[0].animId, gUnk_08350474[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08077574(void) {
    bool32 b = FALSE;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.base.base.flags & 0x2605;
        objBase->roomId = kirby->base.base.base.roomId;
        objBase->sprite.unk14 = kirby->base.base.base.sprite.unk14 - 0x40;
        if (kirby->base.base.base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.base.base.sprite.unk1C;
        }
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->ability != KIRBY_ABILITY_PARASOL) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_08350474[kirby->unkD4].animId || sprite->variant != gUnk_08350474[kirby->unkD4].variant) {
                    b = TRUE;
                    sprite->animId = gUnk_08350474[kirby->unkD4].animId;
                    sprite->variant = gUnk_08350474[kirby->unkD4].variant;
                    if (kirby->unkD4 == 0x5A)
                        sprite->variant = gUnk_08350474[kirby->unkD4].variant + kirby->base.base.base.unk56;
                    if (kirby->unkD4 == 0x34 || kirby->unkD4 == 0x43) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 4;
                        objBase->flags &= ~0x40000;
                        PlaySfx(&kirby->base.base.base, 149);
                    } else if (kirby->unkD4 == 0x36 || kirby->unkD4 == 0x44) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 4;
                    } else {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0x140;
                        objBase->unk63 = 4;
                    }
                }
                if (sprite->animId) {
                    s32 unk0 = objBase->sprite.unk20[0].unk0;
                    s16 backup = objBase->sprite.unk16;

                    if (!unk0) {
                        objBase->flags &= ~0x200;
                        ++backup; --backup; // fix sign extension
                        if (!backup && objBase->counter) {
                            objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    objBase->counter = backup;
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (b)
                        objBase->counter = objBase->sprite.unk16;
                    if (objBase->sprite.unk20[0].unk4 == 0 && objBase->sprite.unk20[0].unk5 == 0
                        && objBase->sprite.unk20[0].unk6 == 0 && objBase->sprite.unk20[0].unk7 == 0) {
                        objBase->flags |= 0x200;
                        objBase->sprite.unk20[0].unk0 = -1;
                    } else {
                        objBase->flags &= ~0x200;
                        objBase->sprite.unk20[0].unk0 = 0;
                    }
                    if (kirby->unkD4 == 0x42 || kirby->unkD4 == 0x35) {
                        objBase->flags |= 0x80000000;
                        objBase->unk68 |= 0x10000000;
                    } else {
                        objBase->flags &= ~0x80000000;
                        objBase->unk68 &= ~0x10000000;
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if (objBase->flags & 1)
                            sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        sub_0803E308(objBase, 0, 0, 0, 0);
                    }
                    if (kirby->base.base.base.flags & 0x200)
                        objBase->flags |= 0x200;
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08077CD0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08077D84, sizeof(struct Object4), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = kirby->base.base.base.x;
    obj4->y = kirby->base.base.base.y;
    obj4->parent = kirby;
    obj4->roomId = kirby->base.base.base.roomId;
    if (!(kirby->base.base.base.flags & 1))
        obj4->flags |= 1;
    sub_080709F8(obj4, &obj4->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010300, gUnk_0834FBCC[0].animId, gUnk_0834FBCC[0].variant, 0xC);
    obj4->sprite.palId = kirby->base.base.base.sprite.palId + 4;
    obj4->unk8 = 0;
}

void sub_08077D84(void) {
    // declarations with initialization interfere with stack allocation; same for other similar callback functions
    struct Object4 *tmp, *obj4;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    obj4 = tmp;
    sprite = &obj4->sprite;
    kirby = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->ability != KIRBY_ABILITY_BURNING)
        obj4->flags |= 0x1000;
    else {
        obj4->flags &= ~0x2401;
        obj4->flags |= kirby->base.base.base.flags & 0x2405;
        obj4->roomId = kirby->base.base.base.roomId;
        obj4->x = kirby->base.base.base.x;
        obj4->y = kirby->base.base.base.y;
        obj4->sprite.unk1C = kirby->base.other.unk7C[1].unk1C;
        obj4->sprite.unk14 = kirby->base.base.base.sprite.unk14 - 0x40;
        if (kirby->base.base.base.flags & 1)
            obj4->flags |= 1;
        else
            obj4->flags &= ~1;
        sprite->animId = gUnk_0834FBCC[kirby->unkD4].animId;
        sprite->variant = gUnk_0834FBCC[kirby->unkD4].variant;
        if (kirby->unkD4 == 0x5A)
            sprite->variant = gUnk_0834FBCC[kirby->unkD4].variant + kirby->base.base.base.unk56;
        if (obj4->unk8 & 1 && !(kirby->base.base.base.flags & 0x40)) {
            if (!(kirby->base.base.base.unk58 & 2))
                obj4->unk8 &= ~1;
        } else if (sprite->animId) {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = sprite->unk1C;

                if (obj4->sprite.animId) {
                    sprite->unk1C = 0;
                    Macro_080FC150(obj4, sprite);
                    sprite->unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        sprite->x = (obj4->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        sprite->y = (obj4->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId) {
                        sprite->x += gUnk_0203AD18[0];
                        sprite->y += gUnk_0203AD18[1];
                        Macro_0803DBC8(obj4, sprite);
                    }
                }
            } else {
                Macro_080FC150(obj4, sprite);
                if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                    sprite->x = (obj4->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                    sprite->y = (obj4->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                }
                if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId) {
                    sprite->x += gUnk_0203AD18[0];
                    sprite->y += gUnk_0203AD18[1];
                    Macro_0803DBC8(obj4, sprite);
                }
                if (kirby->base.base.base.unk58 & 2)
                    obj4->unk8 |= 1;
                else
                    obj4->unk8 &= ~1;
            }
        }
    }
}

void sub_08078260(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08078314, sizeof(struct Object4), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = kirby->base.base.base.x;
    obj4->y = kirby->base.base.base.y;
    obj4->parent = kirby;
    obj4->roomId = kirby->base.base.base.roomId;
    if (!(kirby->base.base.base.flags & 1))
        obj4->flags |= 1;
    sub_080709F8(obj4, &obj4->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010380, gUnk_0834FD70[0].animId, gUnk_0834FD70[0].variant, 0xC);
    obj4->sprite.palId = kirby->base.base.base.sprite.palId + 4;
    obj4->sprite.unk14 = kirby->base.base.base.sprite.unk14;
}

void sub_08078314(void) {
    struct Object4 *tmp, *obj4;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    obj4 = tmp;
    sprite = &obj4->sprite;
    kirby = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->ability != KIRBY_ABILITY_BURNING)
        obj4->flags |= 0x1000;
    else {
        obj4->flags &= ~0x2401;
        obj4->flags |= kirby->base.base.base.flags & 0x2405;
        obj4->roomId = kirby->base.base.base.roomId;
        obj4->x = kirby->base.base.base.x;
        obj4->y = kirby->base.base.base.y;
        obj4->sprite.unk1C = kirby->base.other.unk7C[1].unk1C;
        obj4->sprite.unk14 = kirby->base.base.base.sprite.unk14;
        if (kirby->base.base.base.flags & 1)
            obj4->flags |= 1;
        else
            obj4->flags &= ~1;
        sprite->animId = gUnk_0834FD70[kirby->unkD4].animId;
        sprite->variant = gUnk_0834FD70[kirby->unkD4].variant;
        if (kirby->unkD4 == 0x5A)
            sprite->variant = gUnk_0834FD70[kirby->unkD4].variant + kirby->base.base.base.unk56;
        if (obj4->unk8 & 1 && !(kirby->base.base.base.flags & 0x40)) {
            if (!(kirby->base.base.base.unk58 & 2))
                obj4->unk8 &= ~1;
        } else if (sprite->animId) {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = sprite->unk1C;

                if (obj4->sprite.animId) {
                    sprite->unk1C = 0;
                    Macro_080FC150(obj4, sprite);
                    sprite->unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        sprite->x = (obj4->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        sprite->y = (obj4->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId) {
                        sprite->x += gUnk_0203AD18[0];
                        sprite->y += gUnk_0203AD18[1];
                        Macro_0803DBC8(obj4, sprite);
                    }
                }
            } else {
                Macro_080FC150(obj4, sprite);
                if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                    sprite->x = (obj4->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                    sprite->y = (obj4->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                }
                if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId) {
                    sprite->x += gUnk_0203AD18[0];
                    sprite->y += gUnk_0203AD18[1];
                    Macro_0803DBC8(obj4, sprite);
                }
                if (kirby->base.base.base.unk58 & 2)
                    obj4->unk8 |= 1;
                else
                    obj4->unk8 &= ~1;
            }
        }
    }
}

void sub_080787F0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080788AC, sizeof(struct Object4), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = kirby->base.base.base.x;
    obj4->y = kirby->base.base.base.y;
    obj4->parent = kirby;
    obj4->roomId = kirby->base.base.base.roomId;
    if (!(kirby->base.base.base.flags & 1))
        obj4->flags |= 1;
    sub_080709F8(obj4, &obj4->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, gUnk_08350620[0].animId, gUnk_08350620[0].variant, 0xC);
    obj4->sprite.palId = kirby->base.base.base.sprite.palId + 4;
    obj4->unk8 = ((struct Kirby *)obj4->parent)->unkD4;
    obj4->unk3C = 0;
}

void sub_080788AC(void) {
    struct Object4 *tmp, *obj4;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    obj4 = tmp;
    sprite = &obj4->sprite;
    kirby = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        obj4->flags &= ~0x2401;
        obj4->flags |= kirby->base.base.base.flags & 0x2405;
        obj4->roomId = kirby->base.base.base.roomId;
        obj4->x = kirby->base.base.base.x;
        obj4->y = kirby->base.base.base.y;
        obj4->sprite.unk1C = kirby->base.other.unk7C[1].unk1C;
        obj4->sprite.unk14 = kirby->base.base.base.sprite.unk14 - 0x40;
        if (kirby->base.base.base.flags & 1)
            obj4->flags |= 1;
        else
            obj4->flags &= ~1;
        if (kirby->ability != KIRBY_ABILITY_BOMB) {
            obj4->flags |= 0x1000;
        } else {
            if (!(kirby->base.base.base.unkC & 2)
                && !(kirby->unkD4 > 0x6F && kirby->unkD4 < 0x76)
                && kirby->unkD4 != 0x35
                && kirby->unkD4 != 0x34) {
                // TODO: tail merge is not happening
                goto _08078CE2; // obj4->flags |= 0x1000;
            } else {
                if (obj4->unk4 > 0xA0) {
                    if ((obj4->unk4 <= 0x140 && obj4->unk4 & 8)
                        || (obj4->unk4 > 0x140 && obj4->unk4 < 0x169 && obj4->unk4 & 4)
                        || (obj4->unk4 >= 0x169 && obj4->unk4 & 2)) {
                        sprite->animId = gUnk_083507F8[kirby->unkD4].animId;
                        sprite->variant = gUnk_083507F8[kirby->unkD4].variant;
                        if (obj4->unk8 == kirby->unkD4 && !obj4->unk3C)
                            sub_0815521C(&obj4->sprite, obj4->unk1);
                        obj4->unk3C = 1;
                    } else {
                        sprite->animId = gUnk_08350620[kirby->unkD4].animId;
                        sprite->variant = gUnk_08350620[kirby->unkD4].variant;
                        if (obj4->unk8 == kirby->unkD4 && obj4->unk3C)
                            sub_0815521C(&obj4->sprite, obj4->unk1);
                        obj4->unk3C = 0;
                    }
                } else {
                    sprite->animId = gUnk_08350620[kirby->unkD4].animId;
                    sprite->variant = gUnk_08350620[kirby->unkD4].variant;
                }
                if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                    u8 unk1C = sprite->unk1C;

                    if (obj4->sprite.animId) {
                        sprite->unk1C = 0;
                        Macro_080FC150(obj4, sprite);
                        sprite->unk1C = unk1C;
                        if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                            sprite->x = (obj4->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                            sprite->y = (obj4->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                        }
                        if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId) {
                            sprite->x += gUnk_0203AD18[0];
                            sprite->y += gUnk_0203AD18[1];
                            Macro_0803DBC8(obj4, sprite);
                        }
                    }
                } else {
                    obj4->unk8 = kirby->unkD4;
                    if (kirby->unkD4 != 0x73 && kirby->unkD4 != 0x75 && kirby->unkD4 != 0x74) {
                        if (obj4->unk4 > 0x190) {
                            if (kirby->base.base.unk78 == sub_0806A03C || kirby->base.base.unk78 == sub_0806A308)
                                kirby->unkD9 = 1;
                            kirby->base.base.base.unkC &= ~2;
                            sub_0806EB74(kirby);
                            sub_08073ECC(&kirby->base.base.base);
                            obj4->flags |= 0x1000;
                            return;
                        } else {
                            if (!(kirby->base.base.base.flags & 0x40) && kirby->base.base.base.unk58 & 2) {
                                sub_08082380(kirby, 4);
                                kirby->base.base.base.unkC &= ~2;
                                sub_0806EB74(kirby);
                                obj4->flags |= 0x1000;
                                return;
                            }
                        }
                    } else {
                        if (kirby->base.base.base.unk1 <= 3 && kirby->base.base.base.unk58 & 2) {
                            sub_08082380(kirby, 4);
                        _08078CE2:
                            obj4->flags |= 0x1000;
                            return;
                        }
                    }
                    if (sprite->animId) {
                        if (!(++obj4->unk4 & 7) && ((kirby->unkD4 < 0x73 || kirby->unkD4 > 0x75) || kirby->base.base.base.unk1 < 4)) {
                            if (obj4->flags & 1)
                                sub_08096464(&kirby->base.base.base, -obj4->sprite.unk20[0].unk4, obj4->sprite.unk20[0].unk5);
                            else
                                sub_08096464(&kirby->base.base.base, obj4->sprite.unk20[0].unk4, obj4->sprite.unk20[0].unk5);
                        }
                        Macro_080FC150(obj4, sprite);
                        if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                            sprite->x = (obj4->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                            sprite->y = (obj4->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                        }
                        if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId) {
                            sprite->x += gUnk_0203AD18[0];
                            sprite->y += gUnk_0203AD18[1];
                            Macro_0803DBC8(obj4, sprite);
                        }
                    }
                }
            }
        }
    }
}

void sub_08078EFC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;
    struct Object4 *obj4;
    struct ObjectBase *objBase;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08079264;
    var->unk7C = sub_08084B70;
    var->unk80 = sub_080794A4;
    var->unk84 = sub_08084DAC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20002003;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x200;
    var->base.flags |= 0x100;
    var->base.xspeed = 0x600;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x600;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -0xC, -7, 0xC, 8);
    sub_0803E308(&var->base, -2, -2, 2, 2);
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x1A3, 0, 0xA);
    var->base.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj4 = sub_0808AE30(&kirby->base.base.base, 0, 0x293, 1);
    objBase = obj4->parent;
    if (objBase) {
        if (objBase->flags & 1) {
            obj4->x += 0x800;
            obj4->unk3C = 0x140;
            obj4->unk4 = -0x18;
        } else {
            obj4->x -= 0x800;
            obj4->unk3C = -0x140;
            obj4->unk4 = 0x18;
        }
        obj4->y += 0x600;
        obj4->unk8 = 0x20;
        obj4->unk3E = 0x40;
        obj4->flags |= 1;
    } else {
        obj4->unk4 = 0x18;
        obj4->unk8 = 0x20;
        obj4->unk3C = -0x140;
        obj4->unk3E = 0x40;
        obj4->x -= 0x800;
        obj4->y += 0x600;
    }
    PlaySfx(&kirby->base.base.base, 150);
    SetPointerSomething(&var->base);
}

bool8 sub_08079264(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;

    if (a1->base.sprite.variant != 1)
        a1->base.flags |= 4;
    else if (a1->base.flags & 2)
        a1->base.sprite.variant = 2;
    if (kirby->unkD4 != 0x35)
        a1->unk88 = 1;
    if (!a1->unk88) {
        if (a1->base.flags & 1) {
            a1->base.xspeed += 0x30;
            if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
            else if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
        } else {
            a1->base.xspeed -= 0x30;
            if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
            else if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
        }
        if (kirby->unk118 & 0x40) {
            a1->base.yspeed += 0x30;
            if (a1->base.yspeed > 0x160)
                a1->base.yspeed = 0x160;
        } else if (kirby->unk118 & 0x80) {
            a1->base.yspeed -= 0x30;
            if (a1->base.yspeed < -0x160)
                a1->base.yspeed = -0x160;
        }
    } else {
        if (a1->base.flags & 1) {
            a1->base.xspeed += 0x4E;
            if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
            else if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
        } else {
            a1->base.xspeed -= 0x4E;
            if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
            else if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
        }
    }
    if (a1->base.flags & 1) {
        if (a1->base.xspeed > 0) {
            if (a1->base.yspeed < 0) {
                a1->base.yspeed += 0xB;
                if (a1->base.yspeed > 0)
                    a1->base.yspeed = 0;
            } else {
                a1->base.yspeed -= 0xB;
                if (a1->base.yspeed < 0)
                    a1->base.yspeed = 0;
            }
        } else {
            if (a1->base.x <= gCurLevelInfo[a1->base.unk56].unk48 - 0x2800)
                a1->base.x = gCurLevelInfo[a1->base.unk56].unk48 - 0x2800;
        }
    } else {
        if (a1->base.xspeed < 0) {
            if (a1->base.yspeed < 0) {
                a1->base.yspeed += 0xB;
                if (a1->base.yspeed > 0)
                    a1->base.yspeed = 0;
            } else {
                a1->base.yspeed -= 0xB;
                if (a1->base.yspeed < 0)
                    a1->base.yspeed = 0;
            }
        } else {
            if (a1->base.x >= gCurLevelInfo[a1->base.unk56].unk50 + 0x2800)
                a1->base.x = gCurLevelInfo[a1->base.unk56].unk50 + 0x2800;
        }
    }
    if (a1->base.counter > 4) {
        if (!(kirby->base.base.base.flags & 0x200) && sub_0803925C(&a1->base, &kirby->base.base.base)) {
            a1->base.flags |= 0x1000;
            return TRUE;
        }
    } else {
        if (a1->base.counter == 1)
            a1->base.flags &= ~0x100;
        ++a1->base.counter;
    }
    return FALSE;
}

bool8 sub_080794A4(struct Unk_080C4EDC *a1) {
    a1->base.sprite.animId = 0x1A3;
    a1->base.sprite.variant = 1;
    a1->base.flags &= ~2;
    a1->base.flags &= ~4;
    a1->base.yspeed = 0x200;
    if (a1->base.xspeed < 0)
        a1->base.xspeed = 0x155;
    else
        a1->base.xspeed = -0x155;
    a1->unk78 = sub_08079504;
    a1->unk80 = NULL;
    return FALSE;
}

bool8 sub_08079504(struct Unk_080C4EDC *a1) {
    bool32 b = FALSE;
    struct Kirby *kirby = a1->base.parent;

    if (kirby->unkD4 == 0x5A || kirby->ability == KIRBY_ABILITY_NORMAL) {
        a1->base.flags |= 0x1400;
        b = TRUE;
    }
    if (b)
        return TRUE;
    a1->base.flags |= 0x200;
    if (a1->base.flags & 2) {
        sub_0808AE30(&a1->base, 0, 0x28E, 0);
        a1->base.flags |= 0x1000;
        return TRUE;
    } else {
        a1->base.yspeed -= 0x40;
        if (a1->base.yspeed < -0x7777)
            a1->base.yspeed = -0x7777;
        return FALSE;
    }
}

void sub_0807958C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08079714, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084E00);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0;
    objBase->unk66 = 0x80;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30001103;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    kirby->base.base.base.flags |= 0x8000;
    kirby->base.base.base.unk68 = 0x80;
    sub_0803E2B0(objBase, -0xC, -0xA, 0xC, 0xC);
    sub_0803E308(objBase, -0xC, -0xA, 0xC, 7);
    SetPointerSomething(objBase);
}

void sub_08079714(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (!sub_0806F780(objBase)) {
        if (kirby->unkD4 != 0x34 && kirby->unkD4 != 0x35) {
            kirby->base.base.base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
        } else {
            PlaySfxAlt(&kirby->base.base.base, 145);
            SetPointerSomething(objBase);
            if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 2) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
        }
    }
}

void sub_0807988C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08079A9C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x220;
    objBase->unk66 = 0x80;
    objBase->unk63 = 0xA;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->unk68 |= 0x30005003;
    objBase->flags |= 0x2000000;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    kirby->base.base.base.flags |= 0x8000;
    kirby->base.base.base.unk68 = 0x80;
    sub_0803E2B0(objBase, -8, -4, 8, 0xC);
    sub_0803E308(objBase, -6, -6, 6, 0xB);
    SetPointerSomething(objBase);
    PlaySfx(&kirby->base.base.base, 153);
}

void sub_08079A9C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        struct Kirby *kirby = objBase->parent;

        if (kirby->unkD4 != 0x34 && kirby->unkD4 != 0x35 && kirby->unkD4 != 0x67 && kirby->unkD4 != 0x68) {
            kirby->base.base.base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
            return;
        }
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        kirby->base.base.base.flags |= 0x8000;
        sub_0803E2B0(objBase, -8, -4, 8, 0xC);
        if (kirby->base.base.base.unk62 & 4)
            objBase->unk63 = 4;
        else
            objBase->unk63 = 0xA;
        if (kirby->base.base.base.unk62 & 4 && !kirby->base.base.base.xspeed) {
            if (kirby->base.base.base.y != kirby->base.base.base.unk4C) {
                objBase->flags &= ~0x200;
                sub_0803E2B0(objBase, -0x10, -4, 0x10, 0xC);
            } else {
                objBase->flags |= 0x200;
                return;
            }
        } else {
            objBase->flags &= ~0x200;
        }
        SetPointerSomething(objBase);
    }
}

void sub_08079C28(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08079D64, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->counter = 1;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x30000043;
    sub_0803E2B0(objBase, -8, -0xC, 0xC, 0xA);
    sub_0803E308(objBase, -8, -0xC, 0xC, 0xA);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010340, 0x2E, 0, 0xA);
    objBase->sprite.palId = 0xE;
}

#define Macro_08079D64(objBase) ({ \
    bool32 _b; \
    u8 _i; \
 \
    _b = FALSE; \
    for (_i = 0; _i < gUnk_0203AD44; ++_i) { \
        if (gKirbys[_i].base.base.base.roomId == (objBase)->roomId && !(gUnk_02026D50[gCurLevelInfo[_i].unk65E] & 8)) \
            _b = TRUE; \
    } \
    _b; \
})

void sub_08079D64(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (!Macro_08079D64(objBase))
        objBase->flags |= 0x1000;
    else if (objBase->roomId != kirby->base.base.base.roomId)
        objBase->flags |= 0x1000;
    else {
        objBase->flags |= 4;
        if (kirby->unkD4 == 0x42) {
            if (objBase->sprite.variant != 0)
                objBase->counter = 1;
            else if ((kirby->base.base.base.flags & 1) != (objBase->flags & 1))
                objBase->counter = 1;
        } else if (kirby->unkD4 == 0x43) {
            if (objBase->sprite.variant != 1)
                objBase->counter = 1;
        } else if (kirby->unkD4 == 0x44) {
            if (objBase->sprite.variant != 2)
                objBase->counter = 1;
        }
        if (!--objBase->counter) {
            objBase->counter = 8;
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
            switch (kirby->unkD4) {
            case 0x42:
                sub_0803E2B0(objBase, -8, -0xC, 0xC, 0xA);
                sub_0803E308(objBase, -8, -0xC, 0xC, 0xA);
                if (kirby->base.base.base.flags & 1) {
                    objBase->x -= 0x1200;
                    objBase->xspeed = -0x300;
                    objBase->yspeed = 0;
                    objBase->sprite.variant = 0;
                    objBase->flags |= 1;
                } else {
                    objBase->x += 0x1000;
                    objBase->xspeed = 0x300;
                    objBase->yspeed = 0;
                    objBase->sprite.variant = 0;
                    objBase->flags &= ~1;
                }
                break;
            case 0x43:
                sub_0803E2B0(objBase, -0xC, -0x10, 0xE, 0x10);
                sub_0803E308(objBase, -0xC, -0x10, 0xE, 0x10);
                objBase->y -= 0x1000;
                objBase->yspeed = -0x300;
                objBase->xspeed = 0;
                objBase->sprite.variant = 1;
                objBase->flags &= ~1;
                break;
            case 0x44:
                sub_0803E2B0(objBase, -0xC, -8, 0xE, 0x10);
                sub_0803E308(objBase, -0xC, -8, 0xE, 0x10);
                objBase->y += 0x1000;
                objBase->yspeed = 0x300;
                objBase->xspeed = 0;
                objBase->sprite.variant = 2;
                objBase->flags &= ~1;
                break;
            default:
                objBase->flags |= 0x1400;
                break;
            }
        }
        if (kirby->unkD4 != 0x42 && kirby->unkD4 != 0x43 && kirby->unkD4 != 0x44)
            objBase->flags |= 0x1400;
        if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
            sub_0803D9A8(&kirby->base.base.base);
            return;
        }
        switch (kirby->unkD4) {
        case 0x42:
            objBase->y = kirby->base.base.base.y;
            if (kirby->base.base.base.flags & 1)
                objBase->xspeed += 0x80;
            else
                objBase->xspeed -= 0x80;
            objBase->x += objBase->xspeed + (kirby->base.base.base.x - kirby->base.base.base.unk48);
            objBase->y += objBase->yspeed;
            break;
        case 0x43:
            objBase->x = kirby->base.base.base.x;
            objBase->yspeed += 0x80;
            objBase->x += objBase->xspeed;
            objBase->y += objBase->yspeed + (kirby->base.base.base.y - kirby->base.base.base.unk4C);
            break;
        case 0x44:
            objBase->x = kirby->base.base.base.x;
            objBase->yspeed -= 0x80;
            objBase->x += objBase->xspeed;
            objBase->y += objBase->yspeed + (kirby->base.base.base.y - kirby->base.base.base.unk4C);
            break;
        default:
            objBase->flags |= 0x1400;
            break;
        }
        sub_0806F8BC(objBase);
    }
}

void sub_0807A10C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807A280, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = 0x180;
    objBase->unk63 = 2;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30000043;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    kirby->base.base.base.flags |= 0x8040;
    kirby->base.base.base.unk68 = 0x80;
    sub_0803E2B0(objBase, -0xA, -0xA, 8, 0xB);
    SetPointerSomething(objBase);
}

void sub_0807A280(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        struct Kirby *kirby = objBase->parent;

        if (kirby->unkD4 != 0x34 && kirby->unkD4 != 0x35 && kirby->unkD4 != 0x36) {
            kirby->base.base.base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
            return;
        }
        if (kirby->unkD4 == 0x34)
            objBase->flags &= ~0x200;
        else
            objBase->flags |= 0x200;
        if (kirby->unkD4 == 0x35 && kirby->base.base.base.unk1 < 8)
            kirby->base.base.base.flags &= ~0x8000;
        else
            kirby->base.base.base.flags |= 0x8000;
        if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 4) {
            objBase->flags &= ~0x40000;
            objBase->counter = 0;
        }
        SetPointerSomething(objBase);
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
    }
}

void sub_0807A3E4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807A4F4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084E44);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x320;
    objBase->unk66 = 0x280;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30000043;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    kirby->base.base.base.flags |= 0x8000;
    kirby->base.base.base.unk68 = 0x80;
    sub_0803E2B0(objBase, -9, -9, 0xC, 0xC);
    sub_0803E308(objBase, -6, -6, 0xE, 0xC);
}

void sub_0807A4F4(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        struct Kirby *kirby = objBase->parent;

        objBase->flags &= ~1;
        objBase->flags |= kirby->base.base.base.flags & 1;
        if ((kirby->unkD4 == 0x35 || kirby->unkD4 == 0x36)
            || (kirby->unkD4 == 0x68 && kirby->base.base.base.unk1 > 4 && kirby->base.base.base.unk1 < 0xC)) {
            objBase->flags |= 0x200;
            kirby->base.base.base.flags &= ~0x8000;
        } else {
            if (kirby->unkD4 != 0x34 && kirby->unkD4 != 0x68) {
                kirby->base.base.base.flags &= ~0x8000;
                objBase->flags |= 0x1000;
                return;
            }
            objBase->flags &= ~0x200;
            kirby->base.base.base.flags |= 0x8000;
            if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 2) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
        }
        if (kirby->unkD4 == 0x68) {
            if (kirby->base.base.base.unk1 == 1) {
                if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                    m4aSongNumStop(147);
                PlaySfx(&kirby->base.base.base, 148);
            } else if (kirby->base.base.base.unk1 == 0xC) {
                PlaySfxAlt(&kirby->base.base.base, 147);
            }
        } else {
            PlaySfxAlt(&kirby->base.base.base, 147);
        }
        SetPointerSomething(objBase);
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
    }
}

struct Object3 *sub_0807A7E8(void *a1) {
    struct Object2 *obj2 = a1;
    struct Object4 *obj4 = a1;
    struct Task *t = TaskCreate(sub_0807AAD4, sizeof(struct Object3), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Object3 *tmp = TaskGetStructPtr(t), *obj3 = tmp;
    struct Kirby *kirby;

    if (obj2->base.unk0 != 1)
        kirby = obj4->parent;
    else
        kirby = obj2->base.unk6C;
    sub_0803E380(&obj3->base);
    obj3->base.unk0 = 2;
    obj3->base.x = kirby->base.base.base.x;
    obj3->base.y = kirby->base.base.base.y;
    obj3->base.parent = kirby;
    obj3->base.counter = 0;
    obj3->base.roomId = kirby->base.base.base.roomId;
    obj3->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&obj3->base))
        obj3->base.flags |= 0x2000;
    obj3->base.parent = kirby; // redundant
    obj3->base.x = kirby->base.base.base.x; // redundant
    obj3->base.y = kirby->base.base.base.y; // redundant
    obj3->base.unk64 = 0x380;
    obj3->base.unk66 = 0x380;
    obj3->base.unk63 = 0xC;
    obj3->base.flags |= 0x2000000;
    obj3->base.flags |= 0x20000100;
    obj3->base.flags |= 0x40;
    obj3->base.unk68 |= 0x20001003;
    if (obj2->base.unk0 != 1)
        obj3->base.flags |= obj4->flags & 0x4000;
    else
        obj3->base.flags |= obj2->base.flags & 0x4000;
    if (kirby->base.base.base.flags & 1)
        obj3->base.flags |= 1;
    else
        obj3->base.flags &= ~1;
    if (obj2->base.unk0 != 1) {
        u32 v10;

        sub_0803E2B0(&obj3->base, -0xB, -0xB, 0xB, 0xB);
        sub_0803E308(&obj3->base, -3, -3, 3, 3);
        v10 = obj4->flags & 0x4000 ? 0x80000 : 0;
        obj3->base.sprite.tilesVram = obj4->sprite.tilesVram;
        obj3->base.sprite.unk14 = 0x280;
        obj3->base.sprite.animId = obj4->sprite.animId;
        obj3->base.sprite.variant = obj4->sprite.variant;
        obj3->base.sprite.unk16 = 0;
        obj3->base.sprite.unk1B = 0xFF;
        obj3->base.sprite.unk1C = 0x10;
        obj3->base.sprite.palId = obj4->sprite.palId;
        obj3->base.sprite.x = 0;
        obj3->base.sprite.y = 0;
        obj3->base.sprite.unk8 = v10 | 0x42000;
        obj3->base.sprite.unk20[0].unk0 = -1;
        sub_08155128(&obj3->base.sprite);
        obj3->unk78 = 0xFF;
        obj4->flags |= 0x400;
    } else {
        u32 v12;

        if (ObjType38To52(obj2)) {
            sub_0803E2B0(&obj3->base, -0x10, -0x10, 0x10, 0x10);
            sub_0803E308(&obj3->base, -0xC, -0xC, 0xC, 0xC);
        } else {
            sub_0803E2B0(&obj3->base, -0xB, -0xB, 0xB, 0xB);
            sub_0803E308(&obj3->base, -3, -3, 3, 3);
        }
        v12 = obj2->base.flags & 0x4000 ? 0x80000 : 0;
        obj3->base.sprite.tilesVram = obj2->base.sprite.tilesVram;
        obj3->base.sprite.unk14 = 0x340;
        obj3->base.sprite.animId = obj2->base.sprite.animId;
        obj3->base.sprite.variant = obj2->base.sprite.variant;
        obj3->base.sprite.unk16 = 0;
        obj3->base.sprite.unk1B = 0xFF;
        obj3->base.sprite.unk1C = 0x10;
        obj3->base.sprite.palId = obj2->base.sprite.palId;
        obj3->base.sprite.x = 0;
        obj3->base.sprite.y = 0;
        obj3->base.sprite.unk8 = v12 | 0x42000;
        if (obj2->base.sprite.palId == 0xF) {
            if (obj2->base.unkC & 0x10)
                obj3->base.sprite.palId = sub_0803DF24(gUnk_08351648[OBJ_DROPPY].unk8);
            else
                obj3->base.sprite.palId = sub_0803DF24(gUnk_08351648[obj2->type].unk8);
        }
        obj3->base.sprite.unk20[0].unk0 = -1;
        sub_08155128(&obj3->base.sprite);
        obj3->base.sprite.unk1C = 0;
        obj2->base.sprite.tilesVram = 0;
        obj2->base.flags |= 0x400;
        obj3->base.counter = 0;
        obj3->unk78 = obj2->type;
    }
    return obj3;
}

void sub_0807AAD4(void) {
    struct Object3 *tmp = TaskGetStructPtr(gCurTask), *obj3 = tmp;
    struct Kirby *kirby = obj3->base.parent;
    struct Sprite sprite;

    if (obj3->unk78 != 0xFF) {
        Macro_08107BA8_4(&obj3->base, &obj3->base.sprite, &sprite, gUnk_08351648[obj3->unk78].numTiles, &obj3->base.sprite);
        Macro_081050E8(&obj3->base, &obj3->base.sprite, gUnk_08351648[obj3->unk78].unk8, !obj3->base.sprite.palId);
    }
    if (!sub_0806F780(&obj3->base)) {
        obj3->base.x = kirby->base.base.base.x;
        obj3->base.y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 1)
            obj3->base.flags |= 1;
        else
            obj3->base.flags &= ~1;
        switch (kirby->unkD4) {
        case 0x1E:
            break;
        case 0x73:
        case 0x74:
        case 0x75:
            obj3->base.counter = 0;
            sub_0807AEF4();
            gCurTask->main = sub_0807AEF4;
            return;
        case 0x6F:
            if (kirby->base.base.base.unk1 == 1 && kirby->base.base.base.unk62 & 4) {
                struct Object4 *obj4 = sub_0808AE30(&kirby->base.base.base, 0, 0x293, 1);

                obj4->unk3C = -0x240;
                obj4->unk3E = 0x40;
                obj4->unk4 = 0x18;
                obj4->unk8 = 0x20;
                if (kirby->base.base.base.flags & 1) {
                    obj4->unk3C = -obj4->unk3C;
                    obj4->unk4 = -obj4->unk4;
                }
            }
            if (obj3->base.flags & 1) {
                obj3->base.x -= gUnk_08350CB0[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CB0[kirby->base.base.base.unk1*2 + 1] * 0x100;
            } else {
                obj3->base.x += gUnk_08350CB0[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CB0[kirby->base.base.base.unk1*2 + 1] * 0x100;
            }
            break;
        case 0x70:
            if (obj3->base.flags & 1) {
                obj3->base.x -= gUnk_08350CC8[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CC8[kirby->base.base.base.unk1*2 + 1] * 0x100;
            } else {
                obj3->base.x += gUnk_08350CC8[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CC8[kirby->base.base.base.unk1*2 + 1] * 0x100;
            }
            obj3->base.sprite.unk8 |= 0x800;
            break;
        case 0x72:
            obj3->base.sprite.unk8 |= 0x800;
            if (obj3->base.flags & 1) {
                obj3->base.x -= gUnk_08350CDC[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CDC[kirby->base.base.base.unk1*2 + 1] * 0x100;
            } else {
                obj3->base.x += gUnk_08350CDC[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CDC[kirby->base.base.base.unk1*2 + 1] * 0x100;
            }
            break;
        case 0x71:
            obj3->base.sprite.unk8 &= ~0x800;
            if (obj3->base.flags & 1) {
                obj3->base.x -= gUnk_08350CD2[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CD2[kirby->base.base.base.unk1*2 + 1] * 0x100;
            } else {
                obj3->base.x += gUnk_08350CD2[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CD2[kirby->base.base.base.unk1*2 + 1] * 0x100;
            }
            break;
        default:
            sub_0808AE30(&obj3->base, 0, 0x292, 0);
            obj3->base.flags |= 0x1000;
            break;
        }
        ++obj3->base.counter;
        if ((kirby->unkD4 == 0x70 || kirby->unkD4 == 0x71 || kirby->unkD4 == 0x72)
            && !(obj3->base.counter & 7) && kirby->base.base.base.unk62 & 4) {
            struct Object4 *obj4 = sub_0808AE30(&kirby->base.base.base, 0, 0x293, 2);

            obj4->unk3C = -0x300;
            obj4->unk3E = 0x200;
            obj4->unk4 = 0x60;
            obj4->unk8 = -0x40;
            obj4->y += 0x400;
            if (kirby->base.base.base.flags & 1) {
                obj4->unk3C = -obj4->unk3C;
                obj4->unk4 = -obj4->unk4;
                obj4->x += 0x800;
            } else {
                obj4->x -= 0x800;
            }
        }
        sub_0806F8BC(&obj3->base);
    }
}

void sub_0807AEF4(void) {
    struct Object3 *tmp = TaskGetStructPtr(gCurTask), *obj3 = tmp;
    struct Kirby *kirby = obj3->base.parent;
    struct Sprite sprite;

    if (obj3->unk78 != 0xFF) {
        Macro_08107BA8_4(&obj3->base, &obj3->base.sprite, &sprite, gUnk_08351648[obj3->unk78].numTiles, &obj3->base.sprite);
        Macro_081050E8(&obj3->base, &obj3->base.sprite, gUnk_08351648[obj3->unk78].unk8, !obj3->base.sprite.palId);
    }
    if (!sub_0806F780(&obj3->base)) {
        if (obj3->base.flags & 2)
            obj3->base.flags |= 4;
        obj3->base.x = kirby->base.base.base.x;
        obj3->base.y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 1)
            obj3->base.flags |= 1;
        else
            obj3->base.flags &= ~1;
        switch (kirby->unkD4) {
        case 0x73:
            if (obj3->base.flags & 1) {
                obj3->base.x -= gUnk_08350CE6[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CE6[kirby->base.base.base.unk1*2 + 1] * 0x100;
            } else {
                obj3->base.x += gUnk_08350CE6[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CE6[kirby->base.base.base.unk1*2 + 1] * 0x100;
            }
            if (kirby->base.base.base.unk1 == 3)
                sub_0807B200(obj3, kirby->unkD4);
            break;
        case 0x74:
            if (obj3->base.flags & 1) {
                obj3->base.x -= gUnk_08350CEE[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CEE[kirby->base.base.base.unk1*2 + 1] * 0x100;
            } else {
                obj3->base.x += gUnk_08350CEE[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CEE[kirby->base.base.base.unk1*2 + 1] * 0x100;
            }
            if (kirby->base.base.base.unk1 == 3)
                sub_0807B200(obj3, kirby->unkD4);
            break;
        case 0x75:
            if (obj3->base.flags & 1) {
                obj3->base.x -= gUnk_08350CF6[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CF6[kirby->base.base.base.unk1*2 + 1] * 0x100;
            } else {
                obj3->base.x += gUnk_08350CF6[kirby->base.base.base.unk1*2] * 0x100;
                obj3->base.y += gUnk_08350CF6[kirby->base.base.base.unk1*2 + 1] * 0x100;
            }
            if (kirby->base.base.base.unk1 == 3)
                sub_0807B200(obj3, kirby->unkD4);
            break;
        default:
            sub_0808AE30(&obj3->base, 0, 0x292, 0);
            obj3->base.flags |= 0x1000;
            break;
        }
        if (kirby->base.base.base.unk1 == 2)
            sub_0807BAE0(obj3);
        if (!(obj3->base.flags & 0x800)) {
            obj3->base.unk48 = obj3->base.x;
            obj3->base.unk4C = obj3->base.y;
            obj3->base.x += obj3->base.xspeed;
            obj3->base.y -= obj3->base.yspeed;
        }
        sub_0806F8BC(&obj3->base);
    }
}

void sub_0807B200(struct Object3 *obj3, u16 a2) {
    obj3->base.flags &= ~0x100;
    obj3->base.flags &= ~0x2000000;
    obj3->base.flags |= 0x40;
    obj3->base.counter = 0;
    sub_0809D8C8(&obj3->base);
    switch (a2) {
    case 0x73:
        obj3->base.xspeed = 0x394;
        obj3->base.yspeed = 0x1CA;
        break;
    case 0x74:
        obj3->base.xspeed = 0x400;
        obj3->base.yspeed = 0;
        break;
    case 0x75:
        obj3->base.xspeed = 0x394;
        obj3->base.yspeed = -0x1CA;
        break;
    }
    if (obj3->base.flags & 1)
        obj3->base.xspeed = -obj3->base.xspeed;
    gCurTask->main = sub_0807B2A8;
}

void sub_0807B2A8(void) {
    struct Object3 *tmp = TaskGetStructPtr(gCurTask), *obj3 = tmp;
    struct Sprite sprite;
    s16 yspeed;
    s8 objBase54, objBase55;

    if (obj3->unk78 != 0xFF) {
        Macro_08107BA8_4(&obj3->base, &obj3->base.sprite, &sprite, gUnk_08351648[obj3->unk78].numTiles, &obj3->base.sprite);
        Macro_081050E8(&obj3->base, &obj3->base.sprite, gUnk_08351648[obj3->unk78].unk8, !obj3->base.sprite.palId);
    }
    if (!sub_0806F780(&obj3->base)) {
        if (obj3->base.flags & 2)
            obj3->base.flags |= 4;
        if (obj3->base.unk58 & 2) {
            if (!(obj3->base.unkC & 1)) {
                sub_0808AE30(&obj3->base, 0, 0x296, 0);
                obj3->base.unkC |= 1;
            }
        } else {
            if (obj3->base.unkC & 1) {
                sub_0808AE30(&obj3->base, 0, 0x296, 0);
                obj3->base.unkC &= ~1;
            }
        }
        obj3->base.counter &= 0xF;
        objBase54 = obj3->base.objBase54 = gUnk_08350CFE[2*obj3->base.counter];
        objBase55 = obj3->base.objBase55 = gUnk_08350CFE[2*obj3->base.counter + 1];
        ++obj3->base.counter;
        if (!(obj3->base.counter & 3)) {
            if (obj3->base.counter & 4) {
                obj3->base.sprite.unk8 ^= 0x800;
                sub_080995AC(obj3);
            } else {
                obj3->base.flags ^= 1;
                sub_08099828(obj3);
            }
        }
        if (!(obj3->base.flags & 0x800)) {
            obj3->base.unk48 = obj3->base.x;
            obj3->base.unk4C = obj3->base.y;
            obj3->base.x += obj3->base.xspeed;
            obj3->base.y -= obj3->base.yspeed;
        }
        yspeed = obj3->base.yspeed;
        sub_0809D8C8(&obj3->base);
        obj3->base.yspeed = yspeed;
        sub_0806F8BC(&obj3->base);
        obj3->base.objBase54 = objBase54;
        obj3->base.objBase55 = objBase55;
        if (obj3->base.yspeed < 0)
            obj3->base.unk62 &= ~8;
        else if (obj3->base.yspeed > 0)
            obj3->base.unk62 &= ~4;
        else if (obj3->base.unk4C == obj3->base.y)
            obj3->base.unk62 &= ~0xC;
        if (obj3->base.unk62) {
            sub_0806FE64(2, &obj3->base);
            sub_0807B5CC(obj3);
        }
    }
}

void sub_0807B5CC(struct Object3 *obj3) {
    obj3->base.flags |= 0x300;
    obj3->base.counter = 0;
    if (obj3->base.unk62 & 4) {
        obj3->base.xspeed >>= 1;
        obj3->base.yspeed = 0x1CA;
    } else if (obj3->base.unk62 & 8) {
        obj3->base.xspeed >>= 1;
        obj3->base.yspeed = -0x1CA;
    } else {
        obj3->base.xspeed = -(obj3->base.xspeed >> 1);
        obj3->base.yspeed = 0x200;
    }
    gCurTask->main = sub_0807B6D4;
    PlaySfx(&obj3->base, 160);
}

void sub_0807B6D4(void) {
    struct Object3 *tmp = TaskGetStructPtr(gCurTask), *obj3 = tmp;
    struct Sprite sprite;

    if (obj3->unk78 != 0xFF) {
        Macro_08107BA8_4(&obj3->base, &obj3->base.sprite, &sprite, gUnk_08351648[obj3->unk78].numTiles, &obj3->base.sprite);
        Macro_081050E8(&obj3->base, &obj3->base.sprite, gUnk_08351648[obj3->unk78].unk8, !obj3->base.sprite.palId);
    }
    if (!sub_0806F780(&obj3->base)) {
        if (++obj3->base.counter > 0xC) {
            switch (RandLessThan3()) {
            case 1:
                PlaySfx(&obj3->base, 300);
                break;
            case 2:
                PlaySfx(&obj3->base, 301);
                break;
            default:
                PlaySfx(&obj3->base, 302);
                break;
            }
            sub_0808AE30(&obj3->base, 0, 0x292, 0);
            obj3->base.flags |= 0x1000;
        }
        obj3->base.yspeed -= 0x40;
        if (obj3->base.yspeed < -0x200)
            obj3->base.yspeed = -0x200;
        if (!(obj3->base.flags & 0x800)) {
            obj3->base.unk48 = obj3->base.x;
            obj3->base.unk4C = obj3->base.y;
            obj3->base.x += obj3->base.xspeed;
            obj3->base.y -= obj3->base.yspeed;
        }
        sub_0806F8BC(&obj3->base);
    }
}

void sub_0807BAE0(struct Object3 *obj3) {
    struct Task *t = TaskCreate(sub_0807BBDC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = obj3->base.x;
    objBase->y = obj3->base.y;
    objBase->parent = obj3;
    objBase->counter = 0;
    objBase->roomId = obj3->base.roomId;
    objBase->unk56 = obj3->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x80000500;
    objBase->unk68 |= 0x20001003;
    if (obj3->base.unk3C != -3)
        sub_0803E308(objBase, -0x14, -0x14, 0x14, 0x14);
    else
        sub_0803E308(objBase, -0xA, -0xA, 0xA, 0xA);
    if (obj3->base.flags & 1)
        objBase->flags |= 1;
}

void sub_0807BBDC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object3 *obj3;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        obj3 = objBase->parent;
        if (obj3->base.flags & 0x1000 || obj3->base.flags & 0x200)
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            objBase->x = obj3->base.x;
            objBase->y = obj3->base.y;
            SetPointerSomething(objBase);
        }
    }
}

void sub_0807BCE0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084B94;
    var->unk7C = sub_08084BD8;
    var->unk80 = sub_0807C1A0;
    var->unk84 = sub_08084E88;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 2;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20000103;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x200;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x800;
        var->base.flags |= 1;
        var->base.x += 0x200;
    } else {
        var->base.xspeed = 0x800;
        var->base.x -= 0x200;
    }
    sub_0803E2B0(&var->base, -6, -3, 6, 3);
    sub_0803E308(&var->base, -1, -1, 1, 1);
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010600, 0xED, 0, 0xD);
    var->base.sprite.palId = kirby->base.base.base.unk56;
    PlaySfx(&kirby->base.base.base, 167);
}

void sub_0807BF2C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084B94;
    var->unk7C = sub_08084BD8;
    var->unk80 = sub_0807C1A0;
    var->unk84 = sub_08084EDC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.flags |= 0xA0000000;
    var->base.unk68 |= 0x20000103;
    var->base.flags |= 0x4000;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x800;
        var->base.flags |= 1;
        var->base.x -= 0x400;
    } else {
        var->base.xspeed = 0x800;
        var->base.x += 0x400;
    }
    var->base.y += 0x200;
    sub_0803E2B0(&var->base, -6, -3, 6, 3);
    sub_0803E308(&var->base, -1, -1, 1, 1);
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010600, 0x199, 0, 0x17);
    PlaySfx(&kirby->base.base.base, 175);
    if (var->base.x <= gCurLevelInfo[var->base.unk56].unk50
        && var->base.x >= gCurLevelInfo[var->base.unk56].unk48
        && var->base.y <= gCurLevelInfo[var->base.unk56].unk54
        && var->base.y >= gCurLevelInfo[var->base.unk56].unk4C)
        sub_0806FC70(&var->base);
}

static inline struct Object4 *sub_0808AE30_inline(struct ObjectBase *objBase, u32 a2, u16 a3, u8 a4) {
    sub_0808AE30(objBase, a2, a3, a4);
}

bool8 sub_0807C1A0(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;

    if (!(a1->base.flags & 0x800)) {
        switch (gUnk_082D88B8[a1->base.unk57] & 0xF0000000) {
        case 0x10000000:
        case 0x20000000:
        case 0x30000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed > 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = 0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed < 0) {
                    a1->base.xspeed = -0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags |= 1;
                } else {
                    return FALSE;
                }
            }
            break;
        case 0x40000000:
        case 0x50000000:
        case 0x60000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed < 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = 0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed < 0) {
                    a1->base.xspeed = 0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            }
            break;
        case 0x70000000:
        case 0x80000000:
        case 0x90000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed < 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = -0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed > 0) {
                    a1->base.xspeed = 0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            }
            break;
        case 0xA0000000:
        case 0xB0000000:
        case 0xC0000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed > 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = -0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed > 0) {
                    a1->base.xspeed = -0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags |= 1;
                } else {
                    return FALSE;
                }
            }
            break;
        default:
            a1->base.flags |= 0x40000;
            a1->base.flags |= 0x800;
            return FALSE;
        }
        a1->base.sprite.variant = 1;
        a1->base.flags |= 0x800;
        if (a1->base.sprite.animId == 0x199)
            PlaySfx(&kirby->base.base.base, 178);
        else
            PlaySfx(&kirby->base.base.base, 168);
        if (++a1->unk88 > 3) {
            sub_0808AE30_inline(&a1->base, 0, 0x28C, 2);
            a1->base.flags |= 0x1000;
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0807C48C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = NULL;
    var->unk7C = sub_08084BFC;
    var->unk80 = sub_08084C20;
    var->unk84 = sub_08084EDC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 0xA;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20000103;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x600;
        var->base.flags |= 1;
        var->base.x -= 0xA00;
    } else {
        var->base.xspeed = 0x600;
        var->base.x += 0xA00;
    }
    var->base.y += 0x200;
    sub_0803E2B0(&var->base, -0xC, -8, 0xC, 8);
    sub_0803E308(&var->base, -6, -4, 6, 4);
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x19A, 0, 0xD);
    sub_08092944(&var->base, 0, 0x2AF, 1);
    PlaySfx(&kirby->base.base.base, 176);
}

void sub_0807C6C0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = NULL;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084EDC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 0x12;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x100;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20001103;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x600;
        var->base.flags |= 1;
        var->base.x -= 0xA00;
    } else {
        var->base.xspeed = 0x600;
        var->base.x += 0xA00;
    }
    var->base.y += 0x200;
    sub_0803E2B0(&var->base, -0x10, -0xE, 0xA, 0xE);
    sub_0803E308(&var->base, -6, -4, 6, 4);
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x198, 0, 0xD);
    sub_08092944(&var->base, 0, 0x2AF, 0);
    PlaySfx(&kirby->base.base.base, 177);
}

void sub_0807C8F0(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;
    u32 helper = kirby->unkD4;

    if ((kirby->unkD4 == 0x18 || kirby->unkD4 == 0x19 || kirby->unkD4 == 0x1A)
        && kirby->ability == KIRBY_ABILITY_UFO) {
        bool32 b = FALSE;

        ++helper; --helper;
        if ((u16)helper == 0x5A) {
            a1->base.flags |= 0x1400;
            b = TRUE;
        }
        if (!b) return;
    }
    sub_0808AE30(&a1->base, 0, 0x28E, 0);
    a1->base.roomId = 0xFFFF;
}

void sub_0807C954(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807CB4C;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_0807C8F0;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.flags |= 0xA0000100;
    var->base.unk68 |= 0x20000403;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.unk1 = 5;
    var->base.flags &= ~0x2000;
    if (kirby->base.base.base.flags & 1)
        var->base.flags |= 1;
    sub_0803E2B0(&var->base, -6, -6, 6, 6);
    sub_0803E308(&var->base, -2, -2, 2, 2);
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x195, 0, 0xA);
    PlaySfx(&kirby->base.base.base, 174);
}

bool8 sub_0807CB4C(struct Unk_080C4EDC *a1) {
    if (a1->base.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.unk1 = 0;
        a1->base.unk2 = 0;
        a1->base.flags &= ~0x40000;
        if (a1->base.counter > 7) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D1E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D1E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x - 0xA00;
        } else {
            a1->base.xspeed = gUnk_08350D1E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D1E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x + 0xA00;
        }
        a1->base.y = kirby->base.base.base.y + 0x400;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807CC14(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807CD3C;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_0807C8F0;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.unk1 = 5;
    var->base.flags &= ~0x2000;
    if (kirby->base.base.base.flags & 1)
        var->base.flags |= 1;
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x196, 0, 0xA);
}

bool8 sub_0807CD3C(struct Unk_080C4EDC *a1) {
    if (a1->base.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.unk1 = 0;
        a1->base.unk2 = 0;
        if (a1->base.counter > 7) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D3E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D3E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x - 0xA00;
        } else {
            a1->base.xspeed = gUnk_08350D3E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D3E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x + 0xA00;
        }
        a1->base.y = kirby->base.base.base.y + 0x400;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807CDFC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807CF24;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_0807C8F0;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.unk1 = 5;
    var->base.flags &= ~0x2000;
    if (kirby->base.base.base.flags & 1)
        var->base.flags |= 1;
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x197, 0, 0xA);
}

bool8 sub_0807CF24(struct Unk_080C4EDC *a1) {
    if (a1->base.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.unk1 = 0;
        a1->base.unk2 = 0;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D5E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D5E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x - 0xA00;
        } else {
            a1->base.xspeed = gUnk_08350D5E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D5E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x + 0xA00;
        }
        a1->base.y = kirby->base.base.base.y + 0x400;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807CFE4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807D208;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084F30;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 3;
    var->base.flags |= 0xA0000100;
    var->base.unk68 |= 0x20000403;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x200;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.unk1 = 5;
    if (kirby->base.base.base.flags & 1)
        var->base.flags |= 1;
    sub_0803E2B0(&var->base, -6, -6, 6, 6);
    sub_0803E308(&var->base, -2, -2, 2, 2);
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x103, 0, 0xA);
    PlaySfx(&kirby->base.base.base, 151);
}

bool8 sub_0807D208(struct Unk_080C4EDC *a1) {
    if (a1->base.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.unk1 = 0;
        a1->base.unk2 = 0;
        a1->base.flags &= ~0x40000;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D7E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D7E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x - 0xD00;
        } else {
            a1->base.xspeed = gUnk_08350D7E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D7E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x + 0xD00;
        }
        a1->base.y = kirby->base.base.base.y + 0x200;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807D2D0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807D3F0;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084F30;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.unk1 = 5;
    if (kirby->base.base.base.flags & 1)
        var->base.flags |= 1;
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x102, 0, 0xA);
}

bool8 sub_0807D3F0(struct Unk_080C4EDC *a1) {
    if (a1->base.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.unk1 = 0;
        a1->base.unk2 = 0;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D96[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D96[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x - 0xD00;
        } else {
            a1->base.xspeed = gUnk_08350D96[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D96[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x + 0xD00;
        }
        a1->base.y = kirby->base.base.base.y + 0x200;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807D4B0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807D5D0;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084F30;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.unk1 = 5;
    if (kirby->base.base.base.flags & 1)
        var->base.flags |= 1;
    sub_080708DC(&var->base, &var->base.sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x102, 1, 0xA);
}

bool8 sub_0807D5D0(struct Unk_080C4EDC *a1) {
    if (a1->base.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.unk1 = 0;
        a1->base.unk2 = 0;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350DAE[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350DAE[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x - 0xD00;
        } else {
            a1->base.xspeed = gUnk_08350DAE[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350DAE[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.base.base.x + 0xD00;
        }
        a1->base.y = kirby->base.base.base.y + 0x200;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807D690(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080737D8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084FA8);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    struct Object14 *obj14;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x80;
    objBase->unk66 = 0;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0100100;
    objBase->unk68 |= 0x20000203;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x80000000;
    objBase->unk5C |= 0x80000;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    sub_0803E2B0(objBase, -0xA, -0xC, 0xA, 0x10);
    sub_0803E308(objBase, -3, -3, 3, 3);
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    objBase->xspeed = 0x108;
    objBase->yspeed = 0;
    objBase->unk48 = 0x38 - (Rand16() & 0x1F);
    objBase->unk4C = ~Rand16() & 0x1F;
    if (objBase->flags & 1) {
        objBase->x -= 0x1800;
        objBase->xspeed = -objBase->xspeed;
        objBase->unk48 = -objBase->unk48;
    } else {
        objBase->x += 0x1800;
    }
    obj14 = sub_080706A0(&kirby->base.base.base, (kirby->base.base.base.unk56 << 0xB) + 0x6010600, 0xD8, 0, sub_080730E0, sub_08073068);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x2C0;
    obj14 = sub_080706A0(&kirby->base.base.base, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0xD8, 2, sub_0807D978, sub_08073068);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base.base.base, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0xD8, 3, sub_080732E4, sub_08073068);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base.base.base, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0xD8, 4, sub_080733D8, sub_08073068);
    obj14->obj4.sprite.palId = kirby->base.base.base.unk56 + 4;
    obj14->obj4.sprite.unk14 = 0x280;
    sub_08073A74(kirby);
    obj14 = sub_080706A0(&kirby->base.base.base, 0, 0x293, 2, sub_08073C98, NULL);
    obj14->obj4.sprite.palId = 0xF;
    obj14->obj4.sprite.unk14 = 0x280;
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0xD7, 0, 0xB);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

bool8 sub_0807D978(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->obj4.parent;
    bool32 b;
    s16 v9;
    s8 dx, dy;

    if (kirby->unkD4 != 0x34 && (obj14->obj4.flags & 2 || !(obj14->obj4.unk1 & 0xF))) {
        return TRUE;
    } else {
        b = FALSE;
        if (((struct Kirby *)obj14->obj4.parent)->unkD4 == 0x5A || ((struct Kirby *)obj14->obj4.parent)->ability == KIRBY_ABILITY_NORMAL) {
            obj14->obj4.flags |= 0x1400;
            b = TRUE;
        }
    }
    if (b) return TRUE;
    if (obj14->obj4.flags & 2 || !(obj14->obj4.unk1 & 0xF)) {
        obj14->obj4.flags |= 4;
        obj14->obj4.flags &= ~1;
        obj14->obj4.flags |= kirby->base.base.base.flags & 1;
        obj14->obj4.x = kirby->base.base.base.x;
        obj14->obj4.y = kirby->base.base.base.y;
        switch ((obj14->obj4.unk1 >> 4) & 3) {
        case 0:
        default:
            v9 = 8;
            break;
        case 1:
            v9 = 4;
            break;
        case 2:
            v9 = -4;
            break;
        case 3:
            v9 = -8;
            break;
        }
        switch (gUnk_08350DF0[obj14->obj4.unk1 >> 4]) {
        case 0:
        default:
            dx = (Rand16() & 0x1F) + 0x10;
            dy = (Rand16() & 7) - 0xC;
            break;
        case 1:
            dx = (Rand16() & 0x1F) + 0xC;
            dy = (Rand16() & 7) - 4;
            break;
        case 2:
            dx = (Rand16() & 0x1F) + 0xC;
            dy = (Rand16() & 7) + 4;
            break;
        case 3:
            dx = (Rand16() & 0x1F) + 0x10;
            dy = (Rand16() & 0xF) + 4;
            break;
        case 4:
            dx = (Rand16() & 0x1F) + 0x10;
            dy = (Rand16() & 0xF) - 0xC;
            break;
        }
        obj14->obj4.unk3C = 0;
        obj14->obj4.unk3E = 0;
        obj14->obj4.unk4 = 0x20;
        obj14->obj4.unk8 = v9;
        if (obj14->obj4.flags & 1) {
            // duplicate but required for matching
            obj14->obj4.unk3C = 0;
            obj14->obj4.unk3E = 0;
            obj14->obj4.x -= dx * 0x100;
            obj14->obj4.y -= dy * 0x100;
            obj14->obj4.unk4 = -obj14->obj4.unk4;
        } else {
            obj14->obj4.x += dx * 0x100;
            obj14->obj4.y -= dy * 0x100;
        }
    }
    return FALSE;
}

void sub_0807DBCC(struct Object2 *obj2) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;
    u32 ff = 0xFF;
#ifdef NONMATCHING
    u32 r0;
#else
    register u32 r0 asm("r0");
#endif

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = obj2->base.x;
    var->base.y = obj2->base.y;
    var->base.parent = obj2;
    var->base.counter = 0;
    var->base.roomId = obj2->base.roomId;
    var->base.unk56 = obj2->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807DE28;
    var->unk7C = sub_0807E098;
    var->unk80 = NULL;
    var->unk84 = NULL;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0;
    var->base.x = obj2->base.x;
    var->base.y = obj2->base.y;
    var->base.unk63 = (gUnk_08351648[obj2->type].unk4 >> 1) + 9;
    var->base.unk64 = var->base.unk63;
    var->base.unk66 = var->base.unk63;
    var->base.flags |= 0x300100;
    var->base.unk5C = 0x80220;
    var->base.flags |= 0x200;
    var->base.unk68 = 0x10880007;
    if (obj2->base.flags & 0x4000
        || gUnk_08351648[obj2->type].numTiles - 9 < 0x10
        || obj2->type == OBJ_SWORD_KNIGHT || obj2->type == OBJ_PRANK || obj2->type == OBJ_EMPTY_31) {
        var->base.flags |= 0x4000;
        sub_080708DC(&var->base, &var->base.sprite, 9, 0x28B, 1, 0x340);
    } else {
        var->base.sprite.tilesVram = obj2->base.sprite.tilesVram;
        var->base.sprite.unk14 = 0x340;
        var->base.sprite.animId = 0x28B;
        var->base.sprite.variant = 2;
        var->base.sprite.unk16 = 0;
        r0 = var->base.sprite.unk1B;
        var->base.sprite.unk1B |= ff;
        var->base.sprite.unk1C = 0x10;
        var->base.sprite.palId = 0xF;
        var->base.sprite.x = 0;
        var->base.sprite.y = 0;
        var->base.sprite.unk8 = 0x42000;
        var->base.sprite.unk20[0].unk0 = -1;
        obj2->base.sprite.tilesVram = 0;
    }
    if (gUnk_08351648[obj2->type].numTiles < 9) {
        sub_0803E2B0(&var->base, -5, -5, 5, 5);
        var->base.unkC |= 1;
    } else if (gUnk_08351648[obj2->type].numTiles < 0x19
        || obj2->base.flags & 0x4000
        || obj2->type == OBJ_SWORD_KNIGHT || obj2->type == OBJ_PRANK || obj2->type == OBJ_EMPTY_31) {
        sub_0803E2B0(&var->base, -0xB, -0xB, 0xB, 0xB);
    } else {
        var->base.sprite.variant = 0;
        sub_0803E2B0(&var->base, -0x10, -0x10, 0x10, 0x10);
    }
}

bool8 sub_0807DE28(struct Unk_080C4EDC *a1) {
    struct Sprite sprite;

    if (!a1->unk88) {
        struct Object2 *obj2 = a1->base.parent;

        a1->base.x = obj2->base.x;
        a1->base.y = obj2->base.y;
        if (obj2->base.flags & 0x400)
            a1->base.flags &= ~0x400;
        else
            a1->base.flags |= 0x400;
        if (obj2->base.flags & 0x1000) {
            a1->unk88 = 1;
            a1->base.parent = NULL;
            a1->base.flags &= ~0x400;
            a1->base.flags |= 0x50000000;
            a1->base.flags &= ~0x200;
        }
    }
    if (a1->base.flags & 0x4000) {
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == a1->base.roomId) {
            if (!a1->base.sprite.tilesVram)
                Macro_08107BA8_1(&a1->base, &a1->base.sprite, &sprite, 9, &a1->base.sprite);
        } else {
            a1->base.sprite.unk8 |= 0x80000;
        }
    } else {
        if (a1->base.unkC & 1) {
            if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == a1->base.roomId) {
                if (!a1->base.sprite.tilesVram)
                    Macro_08107BA8_2(&a1->base, &a1->base.sprite, &sprite, 4, &a1->base.sprite);
            } else {
                if (a1->base.sprite.tilesVram) {
                    VramFree(a1->base.sprite.tilesVram);
                    a1->base.sprite.tilesVram = 0;
                }
                a1->base.sprite.unk8 |= 0x80000;
            }
        } else {
            if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == a1->base.roomId) {
                if (!a1->base.sprite.tilesVram)
                    Macro_08107BA8_2(&a1->base, &a1->base.sprite, &sprite, 0x19, &a1->base.sprite);
            } else {
                if (a1->base.sprite.tilesVram) {
                    VramFree(a1->base.sprite.tilesVram);
                    a1->base.sprite.tilesVram = 0;
                }
                a1->base.sprite.unk8 |= 0x80000;
            }
        }
    }
    if (a1->base.flags & 0x10000000 && ++a1->base.counter > 0x78) {
        PlaySfx(&a1->base, 311);
        sub_0808AE30(&a1->base, 0, 0x292, 0);
        a1->base.flags |= 0x1000;
        return TRUE;
    } else {
        return FALSE;
    }
}

bool8 sub_0807E098(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.unk6C; // TODO: may be a union?

    a1->base.xspeed = 0x400;
    if (kirby->base.base.base.x > a1->base.x)
        a1->base.xspeed = -a1->base.xspeed;
    a1->base.flags |= 0x20000000;
    a1->base.flags &= ~0x50040000;
    a1->base.unk68 = 0x20000043;
    if (!kirby->base.base.base.unk0) {
        sub_080853C8(kirby, 4);
        a1->base.parent = kirby;
    } else if (kirby->base.base.base.unk68 & 0x10000000 && kirby->base.base.base.parent) {
        sub_080853C8(kirby->base.base.base.parent, 4);
        a1->base.parent = kirby->base.base.base.parent;
    }
    PlaySfx(&kirby->base.base.base, 144);
    a1->unk7C = sub_08084C34;
    return FALSE;
}

void sub_0807E190(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E2FC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30400043;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, 0, 0, 0x10, 0x10);
    sub_0803E308(objBase, 0, 0, 0x10, 0x10);
    SetPointerSomething(objBase);
}

void sub_0807E2FC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (kirby->unkD4 != 0x68) {
            objBase->flags |= 0x1000;
        } else {
            if (objBase->flags & 0x40000) {
                if (objBase->unk6C && ((struct Object2 *)objBase->unk6C)->base.unk0 == 1
                    && ((struct Object2 *)objBase->unk6C)->type == OBJ_GORDO)
                    objBase->flags &= ~0x40000;
                if (objBase->flags & 0x40000) {
                    objBase->flags |= 0x1000;
                    sub_080666C0(kirby);
                    return;
                }
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
            if (kirby->base.base.base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_0807E430(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E518, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20008003;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x78, -0x50, 0x78, 0x50);
}

void sub_0807E518(void) {
    struct ObjectBase *objBase = TaskGetStructPtr(gCurTask), *objBase2 = objBase;
    struct Kirby *kirby = objBase->parent;

    if (!sub_0806F780(objBase)) {
        if (kirby->ability != 0xC || objBase->roomId != kirby->base.base.base.roomId || sub_0805BEC4(kirby))
            objBase2->flags |= 0x1000;
        else if (kirby->unkD4 == 0x36 || !(kirby->base.base.base.flags & 0x200))
            objBase->flags |= 0x1000;
        else if (!objBase->counter) {
            SetPointerSomething(objBase2);
            objBase2->x = gCurLevelInfo[kirby->base.base.base.unk56].unkC + 0x7800;
            objBase2->y = gCurLevelInfo[kirby->base.base.base.unk56].unk10 + 0x5000;
            objBase2->counter = 1;
        } else {
            objBase->x = kirby->base.base.base.x;
            objBase->y = kirby->base.base.base.y;
        }
    }
}

void sub_0807E66C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E820, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x180;
    objBase->unk66 = 0;
    objBase->unk63 = 1;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->unk68 |= 0x1000000;
    objBase->flags |= kirby->base.base.base.flags & 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x1FA, 0, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
#ifdef NONMATCHING
    PlaySfx(&kirby->base.base.base, 201);
#else
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == kirby->base.base.base.roomId) {
        if (((kirby->base.base.base.unk0 != 0) || (kirby->base.base.base.unk56 == gUnk_0203AD3C))
            && (gUnk_08D60FA4[gSongTable[201].ms]->unk4 & 0x80000000 || gUnk_08D60FA4[gSongTable[201].ms]->unk9 <= gSongTable[201].header->priority) // TODO: for some reason 0x80000000 is reused
            && (gSongTable[201].ms == 0 || !(gUnk_0203AD10 & 0x100)))
            m4aSongNumStart(201);
    }
#endif
}

void sub_0807E820(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || (objBase->flags & 2)
            || (kirby->unkD4 != 0x34 && kirby->unkD4 != 0x35 && kirby->unkD4 != 0x36))
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            if (objBase->counter) {
                if (!(kirby->base.base.base.flags & 0x800000)
                    && ++objBase->counter & 1)
                    objBase->flags &= ~0x40000;
            }
            if (objBase->sprite.animId == 0x1FA && !objBase->sprite.variant
                && !(kirby->base.base.base.flags & 0x800000)
                && (objBase->unk1 == 6 || objBase->unk1 == 0xA)) {
                objBase->flags &= ~0x40000;
                PlaySfx(&kirby->base.base.base, 201);
            }
            objBase->flags &= ~0x200;
            if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                objBase->sprite.unk20[0].unk0 = -1;
            sub_0806F8BC(objBase);
            if (objBase->sprite.unk20[0].unk0 != -1) {
                objBase->flags &= ~0x200;
                if (objBase->flags & 1)
                    sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                else
                    sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
            } else {
                sub_0803E308(objBase, 0, 0, 0, 0);
            }
        }
    }
}

void sub_0807EA78(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E820, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x240;
    objBase->unk66 = 0x200;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->unk68 |= 0x1000000;
    objBase->flags |= kirby->base.base.base.flags & 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x1FA, 1, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_0807EBAC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E820, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084FEC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = -0x240;
    objBase->unk63 = 1;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->flags |= kirby->base.base.base.flags & 1;
    objBase->counter = 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x1FA, 2, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_0807ECE0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084CF8;
    var->unk7C = sub_08084C8C;
    var->unk80 = sub_08084CB0;
    var->unk84 = sub_08085030;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk64 = 0x200;
    var->base.unk66 = 0;
    var->base.unk63 = 2;
    var->base.unk68 = 0x30000043;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x320;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.xspeed = 0x320;
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -6, -3, 6, 3);
    sub_0803E308(&var->base, -3, -6, 3, 6);
    var->base.flags |= 0x4000;
    sub_080708DC(&var->base, &var->base.sprite, 0x6012000, 0x2B7, 3, 0xA);
    PlaySfx(&kirby->base.base.base, 208);
}

void sub_0807EF0C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084CF8;
    var->unk7C = NULL;
    var->unk80 = sub_08084CC4;
    var->unk84 = sub_08085030;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk64 = 0x200;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.unk68 = 0x30000043;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x3C0;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.xspeed = 0x3C0;
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -0xC, -8, 8, 8);
    sub_0803E308(&var->base, -6, -6, 6, 6);
    var->base.flags |= 0x4000;
    sub_080708DC(&var->base, &var->base.sprite, 0x6012000, 0x2B7, 4, 0xA);
    PlaySfx(&kirby->base.base.base, 209);
}

void sub_0807F128(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = kirby->base.base.base.x;
    var->base.y = kirby->base.base.base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.base.base.roomId;
    var->base.unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084CF8;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08085030;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0xA0000100;
    var->base.flags |= 0x4000;
    var->base.unk64 = 0x180;
    var->base.unk66 = 0;
    var->base.unk63 = 6;
    var->base.unk68 = 0x30000043;
    if (kirby->base.base.base.flags & 1) {
        var->base.xspeed = -0x420;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.xspeed = 0x420;
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -0xC, -0xE, 0xA, 0xE);
    sub_0803E308(&var->base, -0xA, -0xA, 0xA, 0xA);
    var->base.flags |= 0x4000;
    sub_080708DC(&var->base, &var->base.sprite, 0x6012000, 0x2B7, 5, 0xA);
    PlaySfx(&kirby->base.base.base, 210);
}

void sub_0807F344(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807F46C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x380;
    objBase->unk66 = 0x480;
    objBase->unk63 = 0;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0xC0000000;
    objBase->flags |= kirby->base.base.base.flags & 1;
    sub_0803E2B0(objBase, 1, -5, 0x10, 0xE);
    sub_0803E308(objBase, 5, 5, 0x10, 0xE);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x1FD, 0, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_0807F46C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || kirby->unkD4 < 0x6B)
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            objBase->flags |= 4;
            if (kirby->unkD4 > 0x6B) {
                if (objBase->unk1 == 1)
                    sub_08099AC4(objBase);
                if (objBase->flags & 0x400) {
                    sub_0803E2B0(objBase, 0, 0, 0, 0);
                    sub_0803E308(objBase, 0, 0, 0, 0);
                    objBase->unk63 = 2;
                    objBase->unk64 = 0x240;
                    objBase->unk66 = 0x300;
                    objBase->flags &= ~0x200;
                    objBase->flags &= ~0x400;
                    PlaySfx(&kirby->base.base.base, 211);
                }
                if (kirby->unkD4 == 0x6D) {
                    objBase->sprite.variant = 1;
                    if (kirby->base.base.base.unk1 > 4) {
                        objBase->flags |= 0x1000;
                        return;
                    }
                } else {
                    kirby->base.base.base.flags |= 0x8000;
                    kirby->base.base.base.unk68 = 0x80;
                }
                if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter & 1)
                    objBase->flags &= ~0x40000;
                if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                    objBase->sprite.unk20[0].unk0 = -1;
                sub_0806F8BC(objBase);
                if (objBase->sprite.unk20[0].unk0 != -1) {
                    objBase->flags &= ~0x200;
                    if (objBase->flags & 1)
                        sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                    else
                        sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                } else {
                    sub_0803E308(objBase, 0, 0, 0, 0);
                }
            } else {
                kirby->base.base.base.flags |= 0x8000;
                objBase->flags |= 0x400;
                sub_0806F8BC(objBase);
                objBase->sprite.unk20[0].unk0 = -1;
            }
        }
    }
}

void sub_0807F720(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807F840, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = -0x100;
    objBase->unk66 = 0x2C0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->flags |= 0x400;
    objBase->unk68 |= 0x30000043;
    objBase->flags |= kirby->base.base.base.flags & 1;
    if (kirby->base.base.base.flags & 0x20) {
        objBase->unk64 = 0x200;
        objBase->unk68 |= 0x80000000;
    }
    sub_0803E2B0(objBase, -0x13, -0xA, 0x13, 0xE);
    sub_0803E308(objBase, -0xC, -6, 0xC, 6);
}

void sub_0807F840(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        sub_0803D9A8(objBase);
    else {
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || kirby->unkD4 < 0x6F)
            objBase->flags |= 0x1000;
        else {
            kirby->base.base.base.flags |= 0x8000;
            if (kirby->unkD4 == 0x70) {
                if (objBase->unk64 == 0x200) {
                    objBase->unk64 = 0x100 - (Rand16() & 0x1FF);
                }
                if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 2) {
                    objBase->flags &= ~0x40000;
                    objBase->counter = 0;
                }
            } else if (kirby->unkD4 == 0x71) {
                if (kirby->base.base.base.unk1 > 4)
                    kirby->base.base.base.flags &= ~0x8000;
                return;
            }
            SetPointerSomething(objBase);
        }
    }
}

void sub_0807F9EC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807FB80, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x300;
    objBase->unk66 = 0x200;
    objBase->unk63 = 3;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->flags |= kirby->base.base.base.flags & 1;
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x1FF, 0, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
#ifdef NONMATCHING
    PlaySfx(&kirby->base.base.base, 213);
#else
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == kirby->base.base.base.roomId) {
        if (((kirby->base.base.base.unk0 != 0) || (kirby->base.base.base.unk56 == gUnk_0203AD3C))
            && (gUnk_08D60FA4[gSongTable[213].ms]->unk4 & 0x80000000 || gUnk_08D60FA4[gSongTable[213].ms]->unk9 <= gSongTable[213].header->priority) // TODO: for some reason 0x80000000 is reused
            && (gSongTable[213].ms == 0 || !(gUnk_0203AD10 & 0x100)))
            m4aSongNumStart(213);
    }
#endif
}

void sub_0807FB80(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || kirby->unkD4 != 0x6E)
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                objBase->sprite.unk20[0].unk0 = -1;
            sub_0806F8BC(objBase);
            if (objBase->sprite.unk20[0].unk0 != -1) {
                objBase->flags &= ~0x200;
                if (objBase->flags & 1)
                    sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                else
                    sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
            } else {
                sub_0803E308(objBase, 0, 0, 0, 0);
            }
        }
    }
}

void sub_0807FCD4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807FDC8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08085084);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x10400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30001043;
    objBase->unk68 &= ~7;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, 2, -7, 0xE, 7);
    sub_0803E308(objBase, -0xD, -0xD, 0xD, 0xD);
}

void sub_0807FDC8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (!sub_0806F780(objBase)) {
        PlaySfxAlt(&kirby->base.base.base, 199);
        if ((kirby->unkD4 < 0x67 || kirby->unkD4 > 0x6E)
            && (kirby->unkD4 != 0x35 || kirby->base.base.base.flags & 0x200)) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            sub_08067458(kirby);
            objBase->flags |= 0x1000;
            return;
        }
        SetPointerSomething(objBase);
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        switch (kirby->unkD4) {
        case 0x67:
            sub_0803E2B0(objBase, 2, -7, 0xE, 7);
            break;
        case 0x6E:
            sub_0803E2B0(objBase, 0, 0, 0xC, 0xC);
            break;
        case 0x6D:
            sub_0803E2B0(objBase, -7, 2, 7, 0xE);
            break;
        case 0x6C:
            sub_0803E2B0(objBase, -0xC, 0, 0, 0xC);
            break;
        case 0x6B:
            sub_0803E2B0(objBase, -0xE, -7, -2, 7);
            break;
        case 0x6A:
            sub_0803E2B0(objBase, -0xC, -0xC, 0, 0);
            break;
        case 0x69:
            sub_0803E2B0(objBase, -7, -0xE, 7, -2);
            break;
        case 0x68:
            sub_0803E2B0(objBase, 0, -0xC, 0xC, 0);
            break;
        }
    }
}

void sub_08080004(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08080130, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x220;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30002003;
    objBase->unk68 &= ~0x10002000;
    objBase->unk68 |= 0x40;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 4;
    objBase->flags |= kirby->base.base.base.flags & 1;
    objBase->xspeed = 0x620;
    if (objBase->flags & 1)
        objBase->xspeed = -objBase->xspeed;
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010600, 0x9C, 0, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_08080130(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if ((kirby->ability != KIRBY_ABILITY_SWORD && kirby->ability != KIRBY_ABILITY_MASTER && kirby->ability != KIRBY_ABILITY_SMASH)
        || ++objBase->counter > 9)
        objBase->flags |= 0x1000;
    else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        sub_0803D9A8(objBase);
    else {
        objBase->flags |= 4;
        if (objBase->counter == 8) {
            objBase->sprite.variant = 1;
            objBase->xspeed = 0x380;
            if (objBase->flags & 1)
                objBase->xspeed = -objBase->xspeed;
        }
        objBase->flags &= ~0x200;
        if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
            objBase->sprite.unk20[0].unk0 = -1;
        if (!(objBase->flags & 0x800)) {
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        sub_0806F8BC(objBase);
        if (objBase->sprite.unk20[0].unk0 != -1) {
            objBase->flags &= ~0x200;
            if (objBase->flags & 1)
                sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
            else
                sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
        } else {
            sub_0803E308(objBase, 0, 0, 0, 0);
        }
    }
}

void sub_080802CC(struct Kirby *kirby, u8 a2) {
    u16 animId = 0x283;
    bool8 v4 = FALSE;
    struct Task *t = TaskCreate(sub_0808049C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x180;
    objBase->unk66 = 0;
    objBase->unk63 = 1;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->flags |= kirby->base.base.base.flags & 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    if (a2) {
        v4 = TRUE;
        objBase->counter = 1;
    }
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, animId, v4, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
#ifdef NONMATCHING
    PlaySfx(&kirby->base.base.base, 201);
#else
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == kirby->base.base.base.roomId) {
        if (((kirby->base.base.base.unk0 != 0) || (kirby->base.base.base.unk56 == gUnk_0203AD3C))
            && (gUnk_08D60FA4[gSongTable[201].ms]->unk4 & 0x80000000 || gUnk_08D60FA4[gSongTable[201].ms]->unk9 <= gSongTable[201].header->priority) // TODO: for some reason 0x80000000 is reused
            && (gSongTable[201].ms == 0 || !(gUnk_0203AD10 & 0x100)))
            m4aSongNumStart(201);
    }
#endif
}

void sub_0808049C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (objBase->counter) {
            if (((kirby->base.base.base.unk1 == 6 && objBase->unk1)
                || (!kirby->base.base.base.unk1 && objBase->unk1 && objBase->sprite.unk1C))) {
                objBase->flags |= 0x1000;
                return;
            }
        } else {
            if (kirby->base.base.base.unk1 == 0x14
                || (!kirby->base.base.base.unk1 && objBase->unk1 && objBase->sprite.unk1C)) {
                objBase->flags |= 0x1000;
                return;
            }
        }
        if (kirby->base.base.base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_SMASH || (kirby->unkD4 != 0x6F && kirby->unkD4 != 0x70)) {
            objBase->flags |= 0x1000;
            return;
        }
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            if (!(kirby->base.base.base.flags & 0x800000)) {
                if (objBase->counter) {
                    if (objBase->unk1 == 2 || objBase->unk1 == 4) {
                        PlaySfx(&kirby->base.base.base, 201);
                        objBase->flags &= ~0x40000;
                    }
                } else {
                    if (objBase->unk1 == 6 || objBase->unk1 == 0xB) {
                        PlaySfx(&kirby->base.base.base, 201);
                        objBase->flags &= ~0x40000;
                    }
                }
            }
            objBase->flags &= ~0x200;
            if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                objBase->sprite.unk20[0].unk0 = -1;
            sub_0806F8BC(objBase);
            if (objBase->sprite.unk20[0].unk0 != -1) {
                objBase->flags &= ~0x200;
                if (objBase->flags & 1)
                    sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                else
                    sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
            } else {
                sub_0803E308(objBase, 0, 0, 0, 0);
            }
        }
    }
}

void sub_080806FC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08080870, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30005003;
    objBase->unk68 |= 0x4000008;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    if (kirby->unkD4 == 0x71) {
        objBase->unk64 = 0x280;
        objBase->unk66 = 0x100;
        objBase->unk63 = 9;
        sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x1DC, 1, 0xC);
    } else {
        objBase->unk64 = 0x280;
        objBase->unk66 = 0x280;
        objBase->unk63 = 0xA;
        sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x287, 0, 0xC);
    }
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08080870(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.base.base.flags & 0x2405;
        objBase->roomId = kirby->base.base.base.roomId;
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.base.base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_SMASH || (kirby->unkD4 != 0x67 && kirby->unkD4 != 0x71)) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;
                
                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (!objBase->sprite.unk20[0].unk0) {
                    objBase->flags &= ~0x200;
                    if (!objBase->sprite.unk16) {
                        objBase->sprite.unk20[0].unk0 = -1;
                        objBase->flags |= 0x200;
                    }
                }
                Macro_080FC150(objBase, &objBase->sprite);
                if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                    objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                    objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                }
                if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                    objBase->sprite.x += gUnk_0203AD18[0];
                    objBase->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(objBase, &objBase->sprite);
                }
                if (objBase->sprite.unk20[0].unk0 != -1) {
                    if (kirby->unkD4 == 0x71 && kirby->base.base.base.unk1 == 9
                        && !(kirby->base.base.base.flags & 0x800000)) {
                        objBase->flags &= ~0x40000;
                        PlaySfx(&kirby->base.base.base, 185);
                    }
                    objBase->flags &= ~0x200;
                    if (objBase->flags & 1)
                        sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                    else
                        sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                } else {
                    sub_0803E308(objBase, 0, 0, 0, 0);
                }
                SetPointerSomething(objBase);
            }
        }
    }
}

void sub_08080E9C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08080FBC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x80;
    objBase->unk66 = 0x280;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30002003;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010400, 0x285, 0, 0xC);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08080FBC(void) {
    // declarations with initialization interfere with stack allocation; same for other similar callback functions
    struct ObjectBase *tmp, *objBase;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    objBase = tmp;
    sprite = &objBase->sprite;
    kirby = objBase->parent;
    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.base.base.flags & 0x2405;
        objBase->roomId = kirby->base.base.base.roomId;
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        if (kirby->base.base.base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.base.base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_SMASH || kirby->unkD4 < 0x6A || kirby->unkD4 > 0x6E) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->variant != kirby->unkD4 - 0x6A)
                    sprite->variant = kirby->unkD4 - 0x6A;
                if (!objBase->sprite.unk20[0].unk0) {
                    objBase->flags &= ~0x200;
                    if (!objBase->sprite.unk16) {
                        if (!(kirby->base.base.base.flags & 2))
                            objBase->sprite.unk20[0].unk0 = -1;
                        objBase->flags |= 0x200;
                    }
                }
                Macro_080FC150(objBase, &objBase->sprite);
                if (gUnk_0203AD3C == kirby->base.base.base.unk56) {
                    objBase->sprite.x = (objBase->x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8;
                    objBase->sprite.y = (objBase->y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8;
                }
                if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
                    objBase->sprite.x += gUnk_0203AD18[0];
                    objBase->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(objBase, &objBase->sprite);
                }
                if (kirby->unkD4 == 0x6C && kirby->base.base.base.unk1 == 0xC) {
                    objBase->unk64 = 0x100;
                    objBase->unk66 = -0x380;
                    objBase->unk63 = 6;
                    objBase->unk68 &= ~0x80000000;
                    if (!(kirby->base.base.base.flags & 0x800000))
                        objBase->flags &= ~0x40000;
                }
                if (objBase->sprite.unk20[0].unk0 != -1) {
                    objBase->flags &= ~0x200;
                    if (objBase->flags & 1)
                        sub_0803E308(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                    else
                        sub_0803E308(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                } else {
                    sub_0803E308(objBase, 0, 0, 0, 0);
                }
                SetPointerSomething(objBase);
            }
        }
    }
}

void sub_080815B0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08081724, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0x100;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30000043;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x16, -0x16, 0x16, 0x16);
    sub_0803E308(objBase, -0x12, -0x12, 0x12, 0x12);
    SetPointerSomething(objBase);
}

void sub_08081724(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!sub_0806F780(objBase)) {
        kirby = objBase->parent;
        if (kirby->unkD4 != 0x68 && kirby->unkD4 != 0x69) {
            kirby->base.base.base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
            return;
        }
        SetPointerSomething(objBase);
        if (kirby->unkD4 == 0x68) {
            if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 8) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
        } else {
            if (!(kirby->base.base.base.flags & 0x800000) && ++objBase->counter > 4) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
        }
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
    }
}

void sub_08081864(struct Kirby *kirby, s16 a2, u8 a3) {
    struct Task *t = TaskCreate(sub_08081EB0, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    s16 unk;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 3;
    if (a2 > 0x30) {
        objBase->unk63 = 5;
        objBase->unk64 = 0x200;
    }
    objBase->flags |= 0xA0000040;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x2003;
    objBase->flags |= kirby->base.base.base.flags & 1;
    if (objBase->flags & 1)
        objBase->x -= 0x600;
    else
        objBase->x += 0x600;
    if (a2 > 0x4F) a2 = 0x4F;
    unk = gUnk_08350C88[a2 >> 2];
    if (a3 == 0) {
        objBase->xspeed = unk * (gSineTable[0x1A0] >> 6) >> 8;
        objBase->yspeed = (unk - 0x120) * (gSineTable[0xA0] >> 6) >> 8;
    } else if (a3 != 2) {
        objBase->xspeed = unk * (gSineTable[0x11E] >> 6) >> 8;
        objBase->yspeed = unk * (gSineTable[0x1E] >> 6) >> 8;
    } else {
        objBase->xspeed = unk * (gSineTable[0x480] >> 6) >> 8;
        objBase->yspeed = unk * (gSineTable[0x380] >> 6) >> 8;
    }
    if (objBase->flags & 1)
        objBase->xspeed = -objBase->xspeed;
    sub_0803E2B0(objBase, -6, -3, 0, 3);
    sub_0803E308(objBase, -1, -1, 1, 1);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010600, 0x21D, 0, 8);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_08081ABC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *obj2 = objBase->unk6C;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_CUPID || kirby->unkD4 == 0x5A) {
        sub_0808AE30(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (obj2 && obj2->base.unk0 == 1 && (obj2->base.flags & 0x1000 || obj2->base.flags & 0x400))
        objBase->roomId = 0xFFFF;
    if (!sub_0806F780(objBase)) {
        if (obj2) {
            if (obj2->base.unk0 == 1) {
                struct Object2 *r6 = obj2;

                if (obj2->type == OBJ_VERTICAL_SLIDING_DOOR) {
                    objBase->yspeed -= (obj2->base.unk3B - objBase->unk4C) * 0x100;
                    if (objBase->yspeed > 0x2100) {
                        sub_0808AE30(objBase, 0, 0x28E, 0);
                        objBase->flags |= 0x1000;
                        return;
                    }
                    objBase->unk4C = obj2->base.unk3B;
                }
                if (r6->type == OBJ_STAR_PLATFORM || r6->type == OBJ_DARK_MIND_FORM_2) {
                    sub_0808AE30(objBase, 0, 0x28E, 0);
                    objBase->flags |= 0x1000;
                    return;
                }
                objBase->x = obj2->base.x - objBase->xspeed;
                objBase->y = obj2->base.y - objBase->yspeed;
                if (r6->type != OBJ_KRACKO && objBase->unk48 != (obj2->base.flags & 1)) {
                    objBase->xspeed = -objBase->xspeed;
                    objBase->flags ^= 1;
                    objBase->unk48 = obj2->base.flags & 1;
                }
            }
        } else if (objBase->unk58 & 0x1000 || objBase->unk58 & 0x40) {
            u8 unk = 0;

            if ((objBase->x + objBase->xspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].unk50 >> 0xC
                && (objBase->x + objBase->xspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].unk48 >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].unk54 >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].unk4C >> 0xC)
                unk = sub_080023E4(objBase->unk56, (objBase->x + objBase->xspeed) >> 0xC, (objBase->y - objBase->yspeed) >> 0xC);
            objBase->unk57 = unk;
            objBase->unk58 = gUnk_082D88B8[objBase->unk57];
            if (!(objBase->unk58 & 0x1000) && !(objBase->unk58 & 0x40)) {
                sub_0808AE30(objBase, 0, 0x28E, 0);
                objBase->flags |= 0x1000;
                return;
            }
        }
        if (objBase->counter > 180) {
            if (objBase->counter & 1)
                objBase->flags |= 0x400;
            else
                objBase->flags &= ~0x400;
            if (objBase->counter > 200) {
                sub_0808AE30(objBase, 0, 0x2B4, 0);
                objBase->flags |= 0x1000;
            }
        }
        if (objBase->counter < 8 && objBase->counter & 1) {
            if (objBase->sprite.variant > 0x12 && objBase->sprite.variant < 0x18)
                objBase->objBase55 = 1;
            else
                objBase->objBase54 = 1;
        }
        ++objBase->counter;
        Macro_080FC150(objBase, &objBase->sprite);
        if (!(objBase->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId) {
            objBase->sprite.x += gUnk_0203AD18[0];
            objBase->sprite.y += gUnk_0203AD18[1];
            Macro_0803DBC8(objBase, &objBase->sprite);
        }
    }
}

void sub_08081EB0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;
    struct Object2 *obj2 = objBase->unk6C;
    u32 unk62;

    if (obj2 && obj2->base.unk0 == 1 && obj2->base.flags & 0x1000)
        objBase->unk6C = NULL;
    if (!sub_0806F780(objBase)) {
        if (kirby->ability == KIRBY_ABILITY_CUPID && kirby->unkD4 != 0x5A) {
            sub_080822B4(objBase);
            if (objBase->unk58 & 2) {
                if (!(objBase->unkC & 1)) {
                    sub_0808AE30(objBase, 0, 0x296, 0);
                    objBase->unkC |= 1;
                }
            } else {
                if (objBase->unkC & 1) {
                    sub_0808AE30(objBase, 0, 0x296, 0);
                    objBase->unkC &= ~1;
                }
            }
            if (!(objBase->flags & 0x80000)) {
                if (objBase->flags & 0x40000) {
                    struct Object2 *v6 = objBase->unk6C;

                    objBase->flags &= ~0x40000;
                    objBase->flags |= 0x200;
                    objBase->flags |= 0x100;
                    objBase->counter = 0;
                    objBase->xspeed = 0;
                    objBase->yspeed = 0;
                    if (v6 && v6->base.unk0 == 1) {
                        if (v6->base.flags & 0x1000 || v6->base.flags & 0x400)
                            objBase->flags |= 0x1000;
                        objBase->xspeed = v6->base.x - objBase->x;
                        objBase->yspeed = v6->base.y - objBase->y;
                        if (v6->type != OBJ_KRACKO)
                            objBase->sprite.unk14 = v6->base.sprite.unk14 - 0x40;
                        if (v6->type == OBJ_KING_GOLEM)
                            objBase->xspeed -= 0xA00;
                        objBase->unk48 = v6->base.flags & 1;
                        objBase->unk4C = v6->base.unk3B;
                        objBase->sprite.variant += 0x10;
                        gCurTask->main = sub_08081ABC;
                        sub_08081ABC();
                        return;
                    } else {
                        sub_0808AE30(objBase, 0, 0x2B4, 0);
                        objBase->flags |= 0x1000;
                        return;
                    }
                }
            } else {
                sub_0808AE30(objBase, 0, 0x2B4, 0);
                objBase->flags |= 0x1000;
                return;
            }
        } else {
            sub_0808AE30(objBase, 0, 0x2B4, 0);
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->x <= gCurLevelInfo[objBase->unk56].unk50
            && objBase->x >= gCurLevelInfo[objBase->unk56].unk48
            && objBase->y <= gCurLevelInfo[objBase->unk56].unk54
            && objBase->y >= gCurLevelInfo[objBase->unk56].unk4C)
            sub_0806FC70(objBase);
        else {
            objBase->unk58 &= ~2;
            objBase->unkC &= ~1;
        }
        if (objBase->unk58 & 0xC && objBase->unk4C < objBase->y)
            objBase->unk62 |= 4;
        unk62 = objBase->unk62;
        if (unk62) {
            u8 unk;

            objBase->flags |= 0x200;
            objBase->flags |= 0x100;
            objBase->flags |= 0x800;
            unk = 0;
            if ((objBase->x + objBase->xspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].unk50 >> 0xC
                && (objBase->x + objBase->xspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].unk48 >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].unk54 >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].unk4C >> 0xC)
                unk = sub_080023E4(objBase->unk56, (objBase->x + objBase->xspeed) >> 0xC, (objBase->y - objBase->yspeed) >> 0xC);
            objBase->unk57 = unk;
            objBase->unk58 = gUnk_082D88B8[objBase->unk57];
            objBase->counter = 0;
            objBase->sprite.variant += 0x10;
            gCurTask->main = sub_08081ABC;
            sub_08081ABC();
            return;
        } else {
            if (objBase->xspeed) {
                if (!(++objBase->counter & 7))
                    sub_0808AE30(objBase, 0, 0x2BC, 0);
                if (objBase->xspeed < 0) {
                    objBase->xspeed += 6;
                    if (objBase->xspeed > 0)
                        objBase->xspeed = unk62;
                } else {
                    objBase->xspeed -= 6;
                    if (objBase->xspeed < 0)
                        objBase->xspeed = unk62;
                }
                if (objBase->unkC & 1) {
                    objBase->yspeed -= 0xC;
                    if (objBase->yspeed < -0x240)
                        objBase->yspeed = -0x240;
                    if (objBase->flags & 1) {
                        if (objBase->xspeed > -0x40)
                            objBase->xspeed = -0x40;
                    } else {
                        if (objBase->xspeed < 0x40)
                            objBase->xspeed = 0x40;
                    }
                } else {
                    objBase->yspeed -= 0x18;
                    if (objBase->yspeed < -0x480)
                        objBase->yspeed = -0x480;
                    if (objBase->flags & 1) {
                        if (objBase->xspeed > -0x80)
                            objBase->xspeed = -0x80;
                    } else {
                        if (objBase->xspeed < 0x80)
                            objBase->xspeed = 0x80;
                    }
                }
                if (!(objBase->flags & 0x800)) {
                    objBase->unk48 = objBase->x;
                    objBase->unk4C = objBase->y;
                    objBase->x += objBase->xspeed;
                    objBase->y -= objBase->yspeed;
                }
            }
            sub_0806F8BC(objBase);
            if (objBase->y <= gCurLevelInfo[objBase->unk56].unk4C - 0x2F00)
                objBase->y = gCurLevelInfo[objBase->unk56].unk4C - 0x2F00;
        }
    }
}

void sub_080822B4(struct ObjectBase *objBase) {
    if (abs(objBase->xspeed) < 0x180) {
        objBase->sprite.variant = 4;
        if (objBase->yspeed > 0x80) {
            objBase->sprite.variant = 2;
            if (objBase->yspeed > 0x180) {
                if (objBase->yspeed > 0x240)
                    objBase->sprite.variant = 0;
                else
                    objBase->sprite.variant = 1;
            }
        }
        if (objBase->yspeed < -0x80) {
            objBase->sprite.variant = 6;
            if (objBase->yspeed < -0x180) {
                if (objBase->yspeed < -0x240)
                    objBase->sprite.variant = 8;
                else
                    objBase->sprite.variant = 7;
            }
        }
    } else {
        objBase->sprite.variant = 4;
        if (objBase->yspeed > 0x80) {
            if (objBase->yspeed > 0x180)
                objBase->sprite.variant = 2;
            else
                objBase->sprite.variant = 3;
        }
        if (objBase->yspeed < -0x80) {
            if (objBase->yspeed < -0x180)
                objBase->sprite.variant = 6;
            else
                objBase->sprite.variant = 5;
        }
    }
}

void sub_08082380(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08082748, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    u32 value;
    s32 param;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0;
    objBase->unk66 = 0;
    objBase->unk63 = 0;
    objBase->flags |= 0x60000040;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x800000;
    objBase->flags |= 0x1000000;
    value = 0x880000;
    param = -8; // TODO
    objBase->unk68 = value;
    objBase->flags |= kirby->base.base.base.flags & 1;
    sub_0803E2B0(objBase, param, param, 8, 0xA);
    sub_0803E308(objBase, -3, -3, 3, 6);
    switch (a2) {
    case 0:
        objBase->xspeed = 0x13B;
        objBase->yspeed = 0x366;
        objBase->y -= 0xF00;
        if (objBase->flags & 1)
            objBase->x -= 0xA00;
        else
            objBase->x += 0xA00;
        break;
    default:
    case 1:
        objBase->xspeed = 0x321;
        objBase->yspeed = 0x1D0;
        objBase->y -= 0x300;
        if (objBase->flags & 1)
            objBase->x -= 0xC00;
        else
            objBase->x += 0xC00;
        break;
    case 2:
        objBase->xspeed = 0x37F;
        objBase->yspeed = -0xEF;
        objBase->y += 0x500;
        if (objBase->flags & 1)
            objBase->x -= 0xC00;
        else
            objBase->x += 0xC00;
        break;
    case 3:
        objBase->xspeed = 0x480;
        objBase->yspeed = 0;
        objBase->y -= 0x400;
        objBase->unkC |= 2;
        if (objBase->flags & 1)
            objBase->x -= 0xC00;
        else
            objBase->x += 0xC00;
        break;
    case 4:
        t->main = sub_08082950;
        objBase->counter = 0;
        objBase->yspeed = -0x180;
        objBase->xspeed = 8;
        if (objBase->flags & 1)
            objBase->x -= 0x800;
        else
            objBase->x += 0x800;
        objBase->flags &= ~0x40000000;
        break;
    case 5:
        t->main = sub_08082950;
        objBase->counter = 0;
        objBase->yspeed = -0x180;
        objBase->xspeed = 8;
        objBase->y -= 6;
        if (objBase->flags & 1)
            objBase->x -= 0x800;
        else
            objBase->x += 0x800;
        objBase->flags &= ~0x40000000;
        break;
    }
    if (objBase->flags & 1)
        objBase->xspeed = -objBase->xspeed;
    if (a2 == 4 || a2 == 5)
        sub_0809D8C8(objBase);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010600, 0x25A, 0, 0xD);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_0808269C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_BOMB || kirby->unkD4 == 0x5A) {
        sub_0808AE30(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (!sub_0806F780(objBase)) {
        sub_0806F8BC(objBase);
        if (++objBase->counter > 4) {
            if (objBase->unkC & 2)
                sub_08074240(objBase, TRUE);
            else
                sub_08074240(objBase, FALSE);
            objBase->flags |= 0x1000;
        }
    }
}

void sub_08082748(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_BOMB || kirby->unkD4 == 0x5A) {
        sub_0808AE30(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (!sub_0806F780(objBase)) {
        sub_0809D8C8(objBase);
        if (objBase->unk62 || (objBase->flags & 0x40000 || objBase->flags & 0x80000)) {
            objBase->counter = 0;
            goto _08082830;
        }
        if (objBase->unk58 & 2) {
            if (!(objBase->unkC & 1)) {
                objBase->counter = 0;
                objBase->yspeed = 0;
                objBase->xspeed = 0;
                sub_0808AE30(objBase, 0, 0x296, 0);
                objBase->unkC |= 1;
            }
            if (!(++objBase->counter & 7))
                sub_08096464(objBase, -8, -6);
            if (objBase->counter > 120) {
                objBase->counter = 0;
            _08082830:
                objBase->flags |= 0x200;
                objBase->flags |= 0x100;
                objBase->flags |= 0x800;
                gCurTask->main = sub_0808269C;
                sub_0806F8BC(objBase);
                return;
            }
            objBase->yspeed -= 4;
            if (objBase->yspeed < -0x100)
                objBase->yspeed = -0x100;
        } else {
            if (objBase->unkC & 1) {
                sub_0808AE30(objBase, 0, 0x296, 1);
                objBase->counter = 0;
                objBase->unkC &= ~1;
            }
            if (!(++objBase->counter & 7))
                sub_08096464(objBase, -8, -6);
            if (!(objBase->unkC & 2)) {
                objBase->yspeed -= 0x1B;
            if (objBase->yspeed < -0x500)
                objBase->yspeed = -0x500;
            } else if (!(objBase->counter & 0xF)) {
                struct Object4 *obj4 = sub_0808AE30(objBase, 0, 0x2C0, 0);

                obj4->unk3C = -0x200;
                if (objBase->flags & 1) {
                    obj4->flags |= 1;
                    obj4->unk3C = -obj4->unk3C;
                }
            }
        }
        if (!(objBase->flags & 0x800)) {
            objBase->unk48 = objBase->x;
            objBase->unk4C=  objBase->y;
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        sub_0806F8BC(objBase);
    }
}

void sub_08082950(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (!sub_0806F780(objBase)) {
        if (kirby->ability != KIRBY_ABILITY_BOMB || kirby->unkD4 == 0x5A) {
            sub_0808AE30(objBase, 0, 0x28E, 0);
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->xspeed < 0) {
            objBase->xspeed += 0x10;
            if (objBase->xspeed > 0)
                objBase->xspeed = 0;
        } else {
            objBase->xspeed -= 0x10;
            if (objBase->xspeed < 0)
                objBase->xspeed = 0;
        }
        if (++objBase->counter > 0x5A) {
            objBase->counter = 0;
            objBase->flags |= 0x200;
            objBase->flags |= 0x100;
            objBase->flags |= 0x800;
            gCurTask->main = sub_0808269C;
            sub_0806F8BC(objBase);
        } else {
            if (objBase->flags & 0x40000)
                objBase->counter = 0x5A;
            if (!(objBase->counter & 7))
                sub_08096464(objBase, -8, -6);
            if (objBase->unk58 & 2) {
                if (!(objBase->unkC & 1)) {
                    objBase->xspeed = objBase->yspeed = 0;
                    sub_0808AE30(objBase, 0, 0x296, 0);
                    objBase->unkC |= 1;
                }
                objBase->yspeed -= 4;
                if (objBase->yspeed < -0x100)
                    objBase->yspeed = -0x100;
            } else {
                if (objBase->unkC & 1) {
                    sub_0808AE30(objBase, 0, 0x296, 1);
                    objBase->unkC &= ~1;
                }
                objBase->yspeed -= 0x1B;
                if (objBase->yspeed < -0x500)
                    objBase->yspeed = -0x500;
            }
            if (!(objBase->flags & 0x800)) {
                objBase->unk48 = objBase->x;
                objBase->unk4C=  objBase->y;
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            if (objBase->x <= gCurLevelInfo[objBase->unk56].unk50 && objBase->x >= gCurLevelInfo[objBase->unk56].unk48
                && objBase->y <= gCurLevelInfo[objBase->unk56].unk54 && objBase->y >= gCurLevelInfo[objBase->unk56].unk4C)
                sub_0809D8C8(objBase);
            sub_0806F8BC(objBase);
        }
    }
}

void sub_08082B5C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08082CCC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x300;
    objBase->unk66 = 0x120;
    objBase->unk63 = 8;
    objBase->flags |= 0x60000040;
    objBase->flags |= 0x80000000;
    objBase->flags |= 0x4000;
    objBase->unk68 = 0x30007103;
    objBase->flags |= kirby->base.base.base.flags & 1;
    objBase->xspeed = 0x680;
    objBase->y -= 0x800;
    if (objBase->flags & 1) {
        objBase->xspeed = -objBase->xspeed;
        objBase->x -= 0x1000;
    } else {
        objBase->x += 0x1000;
    }
    sub_0803E2B0(objBase, -0xA, -0x14, 8, 0x14);
    sub_0803E308(objBase, -8, -0xC, 8, 0xC);
    sub_080708DC(objBase, &objBase->sprite, (kirby->base.base.base.unk56 << 0xB) + 0x6010600, 0x248, 0, 0xA);
    objBase->sprite.palId = kirby->base.base.base.unk56 + 4;
}

void sub_08082CCC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_MASTER || kirby->unkD4 == 0x5A) {
        sub_0808AE30(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (objBase->counter == 0x10)
        objBase->roomId = 0xFFFF;
    if (!sub_0806F780(objBase)) {
        objBase->flags |= 4;
        if (objBase->counter == 0xC) {
            objBase->sprite.variant = 1;
            objBase->xspeed = 0x400;
            if (objBase->flags & 1)
                objBase->xspeed = -objBase->xspeed;
        }
        ++objBase->counter;
        if (!(objBase->flags & 0x800)) {
            objBase->unk48 = objBase->x;
            objBase->unk4C=  objBase->y;
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        sub_0806F8BC(objBase);
    }
}

void sub_08082DB4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08082EBC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 0x1D;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->flags |= 0x2000;
    objBase->flags |= 0x200000;
    objBase->unk68 |= 0x10003;
    objBase->unk5C |= 0xFFFF;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x78, -0x50, 0x78, 0x50);
    objBase->counter = 4;
}

void sub_08082EBC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct ObjectBase *v6; // TODO: type

    if (!sub_0806F780(objBase)) {
        struct Kirby *kirby = objBase->parent;

        if (kirby->ability != KIRBY_ABILITY_CRASH
            || objBase->roomId != kirby->base.base.base.roomId
            || sub_0805BEC4(kirby)) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            v6 = objBase->unk6C;
            if (objBase->counter == 4) {
                objBase->counter = 0;
                v6->flags |= 0x2000;
            }
            if (objBase->counter == 1)
                v6->flags &= ~0x2000;
            if (++objBase->counter != 4)
                return;
            objBase->flags &= ~0x40000;
        } else {
            if (objBase->unk1 > 1) {
                kirby->unkD8 = 1;
                objBase->flags |= 0x1000;
                return;
            }
            ++objBase->unk1;
        }
        if (objBase->counter == 4) {
            SetPointerSomething(objBase);
            objBase->x = gCurLevelInfo[kirby->base.base.base.unk56].unkC + 0x7800;
            objBase->y = gCurLevelInfo[kirby->base.base.base.unk56].unk10 + 0x5000;
        }
    }
}

void sub_08083040(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08083150, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = kirby->base.base.base.x;
    objBase->y = kirby->base.base.base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.base.base.roomId;
    objBase->unk56 = kirby->base.base.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 0x1D;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20008003;
    objBase->unk68 |= 0x40000000;
    if (a2 == 1)
        objBase->unk68 |= 0x100000;
    if (kirby->base.base.base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x78, -0x50, 0x78, 0x50);
    sub_0806FE64(1, objBase);
    sub_080860A8(objBase, gUnk_08350E04);
}

void sub_08083150(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!sub_0806F780(objBase)) {
        if (objBase->counter > 4)
            objBase->flags |= 0x1000;
        else {
            ++objBase->counter;
            SetPointerSomething(objBase);
            objBase->x = gCurLevelInfo[objBase->unk56].unkC + 0x7800;
            objBase->y = gCurLevelInfo[objBase->unk56].unk10 + 0x5000;
        }
    }
}

void sub_0808324C(struct Kirby *kirby, u16 a2) {
    if (kirby->base.base.base.roomId > 0x383
        || kirby->base.base.base.roomId == 0x321
        || kirby->base.base.base.roomId == gUnk_0835105C[1]
        || kirby->base.base.base.roomId == gUnk_0835105C[2]
        || kirby->base.base.base.roomId == gUnk_0835105C[3]
        || kirby->base.base.base.roomId == gUnk_0835105C[4]
        || kirby->base.base.base.roomId == gUnk_0835105C[5]
        || kirby->base.base.base.roomId == gUnk_0835105C[6]
        || kirby->base.base.base.roomId == gUnk_0835105C[7]
        || kirby->base.base.base.roomId == gUnk_0835105C[8]) {
        if (kirby->unkE4 == 0x64)
            kirby->unkE5 = 0;
    } else if (!(kirby->base.base.base.unkC & 0x40)) {
        struct Task *t;
        struct ObjectBase *tmp, *objBase;

        kirby->base.base.base.unkC |= 0x40;
        t = TaskCreate(sub_08083494, sizeof(struct ObjectBase), 0x38E8, TASK_USE_IWRAM | TASK_x0004 | TASK_x0008, sub_0808382C);
        tmp = TaskGetStructPtr(t);
        objBase = tmp;
        sub_0803E380(objBase);
        objBase->unk0 = 2;
        objBase->x = kirby->base.base.base.x;
        objBase->y = kirby->base.base.base.y;
        objBase->parent = kirby;
        objBase->counter = 0;
        objBase->roomId = kirby->base.base.base.roomId;
        objBase->unk56 = kirby->base.base.base.unk56;
        if (Macro_0810B1F4(objBase))
            objBase->flags |= 0x2000;
        objBase->unk64 = 0x200;
        objBase->unk66 = 0x100;
        objBase->unk63 = 7;
        objBase->flags |= 0x20100000;
        objBase->flags |= 0x400;
        objBase->flags |= 0x2000000;
        objBase->unk68 |= 0x20000043;
        if (kirby->base.base.base.flags & 1)
            objBase->flags |= 1;
        kirby->base.base.base.unk5C &= ~7;
        kirby->base.base.base.unk5C |= 6;
        objBase->unk5C |= 0x80000;
        objBase->counter = a2;
        sub_0803E2B0(objBase, -7, -9, 7, 7);
        if (!(kirby->base.base.base.flags & 0x200))
            SetPointerSomething(objBase);
        if (kirby->base.base.base.unk56 == gUnk_0203AD3C) {
            m4aSongNumStart(38);
            gUnk_0203AD20 |= 4;
        }
    }
}
