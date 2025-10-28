#include "code_0800ECAC.h"
#include "functions.h"
#include "kirby.h"
#include "constants/kirby.h"

void sub_0800EF60(void);
void sub_08013804(struct Unk_02038590 *);
void sub_0801519C(struct Unk_02038590 *);
void nullsub_103(struct Task *);
void nullsub_104(struct Unk_02038590 *);
void nullsub_105(struct Unk_02038590 *);

void sub_0800ECAC(u8 a1, u16 a2, u16 a3) {
    struct Unk_02038590 *r5 = &gUnk_02038590[a1];
    struct Task *t = TaskCreate(sub_0800EF60, sizeof(struct Unk_0800ECAC), a1 | 0x2100, TASK_USE_IWRAM, nullsub_103);
    struct Unk_0800ECAC *var = TaskGetStructPtr(t);
    const struct RoomProps *rp;

    CpuFill16(0, var, sizeof(struct Unk_0800ECAC));
    CpuFill16(0, r5, sizeof(struct Unk_02038590));
    var->unk0 = a1;
    r5->unk14 = &gCurLevelInfo[a1];
    r5->unk18 = a3;
    r5->unk40 = &gKirbys[a1];
    r5->unkA8 = 0;
    r5->unkAE = a2;
    rp = &gRoomProps[a2];
    r5->unk0[0] = sub_08013804;
    r5->unk0[1] = nullsub_104;
    r5->unk0[2] = nullsub_105;
    r5->unk0[3] = sub_0801519C;
    r5->flags = 0;
    r5->unk1A = 0xFF;
    r5->unk1B = 0xFF;
    r5->unk3F = 0xFF;
    r5->unk3C = 0;
    r5->unkA0 = 0;
    r5->unk44 = 0;
    r5->unkB4 = gUnk_08D63C28[rp->unk22]->unk0[a1];
    r5->unkA2 = 0;
    r5->unkAC = 0;
    r5->unkA4 = 0;
    r5->unkB8 = 0;
    r5->unkBA = 0;
    r5->unkDC = 0xFF;
    r5->unkDD = 0xFF;
}

void sub_0800EE04(u8 a1, u32 a2 __attribute__((unused))) {
    struct Unk_02038590 *s = &gUnk_02038590[a1];
    const struct RoomProps *rp;

    rp = &gRoomProps[s->unk14->currentRoom];
    s->unk0[0] = sub_08013804;
    s->unk0[1] = nullsub_104;
    s->unk0[2] = nullsub_105;
    s->unk0[3] = sub_0801519C;
    s->flags = 0;
    s->unk1A = 0xFF;
    s->unk1B = 0xFF;
    s->unk3F = 0xFF;
    s->unk3C = 0;
    s->unkA0 = 0;
    s->unk44 = 0;
    s->unkB4 = gUnk_08D63C28[rp->unk22]->unk0[a1];
    s->unkA2 = 0;
    s->unkAC = 0;
    s->unkA4 = 0;
    s->unkB8 = 0;
    s->unkBA = 0;
    s->unk3E = 0;
    s->unkDC = 0xFF;
    s->unkDD = 0xFF;
}

u8 sub_0800EEBC(struct ObjectBase *a1) {
    struct LevelInfo *li = &gCurLevelInfo[a1->unk56];
    s16 vars[] = { a1->x >> 12, a1->y >> 12 };

    if (vars[0] < 0)
        vars[0] = 0;
    else if (vars[0] >= li->roomWidth >> 4)
        vars[0] = (li->roomWidth >> 4) - 1;
    if (vars[1] < 0)
        vars[1] = 0;
    else if (vars[1] >= li->roomHeight >> 4)
        vars[1] = (li->roomHeight >> 4) - 1;
    return sub_080026A8(a1->unk56, vars[0], vars[1]);
}

void sub_0800EF60(void) {
    struct Unk_0800ECAC *var = TaskGetStructPtr(gCurTask);
    struct Unk_02038590 *s = &gUnk_02038590[var->unk0];
    struct Kirby *kirby = s->unk40;

    if (!Macro_0810B1F4(&s->unk40->base.base.base)
        || kirby->base.base.base.flags & 0x2000) {
        s->unk9C = s->unk9E;
        s->unk9E = 0;
        if (kirby->hp > 0
            && !(kirby->base.base.base.unkC & 0x8000)
            && s->unk14->currentRoom != 0xFFFF
            && !(kirby->base.base.base.flags & 0x1000000)
            && kirby->unkD4 != 0x5A) {
            s->unk0[0](s);
            s->unk0[1](s);
            s->unk0[2](s);
            s->unk0[3](s);
        }
    }
}

// TODO: decompile sub_0800F044.s
// unk1C has to be a few separate arrays as confirmed in sub_080157B0 so why we have out-of-bounds r/w here?
// https://decomp.me/scratch/Au4Qp
/*
void sub_0800F044(struct Unk_02038590 *a1) {
    u16 r0, r0_2;
    struct Kirby *kirby = a1->unk40;
    struct LevelInfo *li = a1->unk14;
    s16 array[] = {
        li->unk6C >> 12, li->unk70 >> 12,
        li->unk74 >> 12, li->unk78 >> 12,
    };
    u16 sp10 = kirby->base.base.base.x >> 12;
    u16 sl = kirby->base.base.base.y >> 12;
    u8 *r5;
    bool32 r6 = FALSE;
    struct Object2 **r7;
    s16 sp14;
    s16 sp18;

    a1->unk26[2] = 0;
    switch (gUnk_082D88B8[sub_080024F0(a1->unk14, sp10, sl)] & 0xF0000000) {
    case 0x20000000:
    case 0x30000000:
    case 0x40000000:
    case 0x60000000:
        r6 = TRUE;
        break;
    }
    r0 = array[0];
    r5 = a1->unk26;
    if (r0 >= sp10 - 1 || sp10 - 1 >= (u16)array[2])
        r5[1] = 0xFF;
    else if (a1->unk26[2])
        r5[1] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + -1, sl)];

        if (r1 & 0x2000)
            r5[1] = 1;
        else if (r1 & 0x200) {
            if (r6)
                r5[1] = 0;
            else if (r1 & 0x1000)
                r5[1] = 3;
            else
                r5[1] = 2;
        } else if (r1 & 0x400) {
            r5[1] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[1] = 0;
        }
    }
    if ((u16)array[0] >= sp10 - 2 || sp10 - 2 >= (u16)array[2])
        r5[0] = 0xFF;
    else if (a1->unk26[1])
        r5[0] = a1->unk26[1];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + -2, sl)];

        if (r1 & 0x2000)
            r5[0] = 1;
        else if (r1 & 0x200) {
            if (r1 & 0x1000)
                r5[0] = 3;
            else
                r5[0] = 2;
        } else if (r1 & 0x400) {
            r5[0] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[0] = 0;
        }
    }
    if ((u16)array[0] >= sp10 + 1 || sp10 + 1 >= (u16)array[2])
        r5[3] = 0xFF;
    else if (a1->unk26[2])
        r5[3] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + 1, sl)];

        if (r1 & 0x2000)
            r5[3] = 1;
        else if (r1 & 0x200) {
            if (r6)
                r5[3] = 0;
            else if (r1 & 0x1000)
                r5[3] = 3;
            else
                r5[3] = 2;
        } else if (r1 & 0x400) {
            r5[3] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[3] = 0;
        }
    }
    if ((u16)array[0] >= sp10 + 2 || sp10 + 2 >= (u16)array[2])
        r5[4] = 0xFF;
    else if (a1->unk26[3])
        r5[4] = a1->unk26[3];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + 2, sl)];

        if (r1 & 0x2000)
            r5[4] = 1;
        else if (r1 & 0x200) {
            if (r1 & 0x1000)
                r5[4] = 3;
            else
                r5[4] = 2;
        } else if (r1 & 0x400) {
            r5[4] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[4] = 0;
        }
    }
    r0_2 = array[1];
    r5 = a1->unk1C;
    if (r0_2 >= sl - 1 || sl - 1 >= (u16)array[3])
        r5[7] = 0xFF;
    else if (a1->unk26[2])
        r5[7] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10, sl + -1)];

        if (r1 & 0x2000)
            r5[7] = 1;
        else if (r1 & 0x200) {
            if (r1 & 0x1000)
                r5[7] = 3;
            else
                r5[7] = 2;
        } else if (r1 & 0x400) {
            r5[7] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[7] = 0;
        }
    }
    if ((u16)array[1] >= sl - 2 || sl - 2 >= (u16)array[3])
        r5[2] = 0xFF;
    else if (a1->unk1C[7])
        r5[2] = a1->unk1C[7];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10, sl + -2)];

        if (r1 & 0x2000)
            r5[2] = 1;
        else if (r1 & 0x200) {
            if (r1 & 0x1000)
                r5[2] = 3;
            else
                r5[2] = 2;
        } else if (r1 & 0x400) {
            r5[2] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[2] = 0;
        }
    }
    if ((u16)array[1] >= sl + 1 || sl + 1 >= (u16)array[3])
        r5[0x11] = 0xFF;
    else if (a1->unk26[2])
        r5[0x11] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10, sl + 1)];

        if (r1 & 0x2000)
            r5[0x11] = 1;
        else if (r1 & 0x20C) {
            if (r1 & 0x1000)
                r5[0x11] = 3;
            else
                r5[0x11] = 2;
        } else if (r1 & 0x400) {
            r5[0x11] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[0x11] = 0;
        }
    }
    if ((u16)array[1] >= sl + 2 || sl + 2 >= (u16)array[3])
        r5[0x16] = 0xFF;
    else if (a1->unk2B[2])
        r5[0x16] = a1->unk2B[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10, sl + 2)];

        if (r1 & 0x2000)
            r5[0x16] = 1;
        else if (r1 & 0x20C) {
            if (r1 & 0x1000)
                r5[0x16] = 3;
            else
                r5[0x16] = 2;
        } else if (r1 & 0x400) {
            r5[0x16] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[0x16] = 0;
        }
    }
    if ((u16)array[0] >= sp10 - 1 || sp10 - 1 >= (u16)array[2]
        || (u16)array[1] >= sl - 1 || sl - 1 >= (u16)array[3])
        r5[0x6] = 0xFF;
    else if (a1->unk26[2])
        r5[0x6] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + -1, sl + -1)];

        if (r1 & 0x2000)
            r5[0x6] = 1;
        else if (r1 & 0x200) {
            if (r1 & 0x1000)
                r5[0x6] = 3;
            else
                r5[0x6] = 2;
        } else if (r1 & 0x400) {
            r5[0x6] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[0x6] = 0;
        }
    }
    if ((u16)array[0] >= sp10 + 1 || sp10 + 1 >= (u16)array[2]
        || (u16)array[1] >= sl - 1 || sl - 1 >= (u16)array[3])
        r5[8] = 0xFF;
    else if (a1->unk26[2])
        r5[8] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + 1, sl + -1)];

        if (r1 & 0x2000)
            r5[8] = 1;
        else if (r1 & 0x200) {
            if (r1 & 0x1000)
                r5[8] = 3;
            else
                r5[8] = 2;
        } else if (r1 & 0x400) {
            r5[8] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[8] = 0;
        }
    }
    if ((u16)array[0] >= sp10 + 1 || sp10 + 1 >= (u16)array[2]
        || (u16)array[1] >= sl + 1 || sl + 1 >= (u16)array[3])
        r5[0x12] = 0xFF;
    else if (a1->unk26[2])
        r5[0x12] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + 1, sl + 1)];

        if (r1 & 0x2000)
            r5[0x12] = 1;
        else if (r1 & 0x20C) {
            if (r1 & 0x1000)
                r5[0x12] = 3;
            else
                r5[0x12] = 2;
        } else if (r1 & 0x400) {
            r5[0x12] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[0x12] = 0;
        }
    }
    if ((u16)array[0] >= sp10 - 1 || sp10 - 1 >= (u16)array[2]
        || (u16)array[1] >= sl + 1 || sl + 1 >= (u16)array[3])
        r5[0x10] = 0xFF;
    else if (a1->unk26[2])
        r5[0x10] = a1->unk26[2];
    else {
        u32 r1 = gUnk_082D88B8[sub_080024F0(li, sp10 + -1, sl + 1)];

        if (r1 & 0x2000)
            r5[0x10] = 1;
        else if (r1 & 0x20C) {
            if (r1 & 0x1000)
                r5[0x10] = 3;
            else
                r5[0x10] = 2;
        } else if (r1 & 0x400) {
            r5[0x10] = kirby->ability != KIRBY_ABILITY_MINI ? 2 : 0;
        } else {
            r5[0x10] = 0;
        }
    }
    r7 = sub_080394C8(&kirby->base.base.base);
    sp14 = kirby->base.base.base.x >> 8;
    sp18 = kirby->base.base.base.y >> 8;
    if (kirby->base.base.base.yspeed > 0) {
        if (kirby->base.base.base.flags & 1) {
            for (; *r7; ++r7) {
                s16 r1 = (*r7)->base.x >> 8;
                s16 r2 = (*r7)->base.y >> 8;

                array[0] = (*r7)->base.unk3C + r1;
                array[1] = (*r7)->base.unk3D + r2;
                array[2] = (*r7)->base.unk3E + r1;
                array[3] = (*r7)->base.unk3F + r2;
                if (array[0] <= sp14 && array[2] >= sp14) {
                    if (!r5[7]) {
                        s16 zz = sp18 - 0x10;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[7] = 2;
                    } else if (!r5[2]) {
                        s16 zz = sp18 - 0x20;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[2] = 2;
                    }
                }
                if (array[1] <= sp18 && array[3] >= sp18) {
                    if (!r5[0xB]) {
                        s16 zz = sp14 - 0x10;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xB] = 2;
                    } else if (!r5[0xA]) {
                        s16 zz = sp14 - 0x20;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xA] = 2;
                    }
                }
                if (!r5[0x6]) {
                    s16 zz2 = sp14 - 0x10;
                    s16 zz = sp18 - 0x10;

                    if (array[0] <= zz2 && array[2] >= zz2
                        && array[1] <= zz && array[3] >= zz)
                        r5[0x6] = 2;
                }
            }
        } else {
            for (; *r7; ++r7) {
                s16 r1 = (*r7)->base.x >> 8;
                s16 r2 = (*r7)->base.y >> 8;

                array[0] = (*r7)->base.unk3C + r1;
                array[1] = (*r7)->base.unk3D + r2;
                array[2] = (*r7)->base.unk3E + r1;
                array[3] = (*r7)->base.unk3F + r2;
                if (array[0] <= sp14 && array[2] >= sp14) {
                    if (!r5[7]) {
                        s16 zz = sp18 - 0x10;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[7] = 2;
                    } else if (!r5[2]) {
                        s16 zz = sp18 - 0x20;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[2] = 2;
                    }
                }
                if (array[1] <= sp18 && array[3] >= sp18) {
                    if (!r5[0xD]) {
                        s16 zz = sp14 + 0x10;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xD] = 2;
                    } else if (!r5[0xE]) {
                        s16 zz = sp14 + 0x20;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xE] = 2;
                    }
                }
                if (!r5[8]) {
                    s16 zz2 = sp14 + 0x10;
                    s16 zz = sp18 - 0x10;

                    if (array[0] <= zz2 && array[2] >= zz2
                        && array[1] <= zz && array[3] >= zz)
                        r5[8] = 2;
                }
            }
        }
    } else {
        if (kirby->base.base.base.flags & 1) {
            for (; *r7; ++r7) {
                s16 r1 = (*r7)->base.x >> 8;
                s16 r2 = (*r7)->base.y >> 8;

                array[0] = (*r7)->base.unk3C + r1;
                array[1] = (*r7)->base.unk3D + r2;
                array[2] = (*r7)->base.unk3E + r1;
                array[3] = (*r7)->base.unk3F + r2;
                if (array[0] <= sp14 && array[2] >= sp14) {
                    if (!r5[7]) {
                        s16 zz = sp18 - 0x10;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[7] = 2;
                    } else if (!r5[2]) {
                        s16 zz = sp18 - 0x20;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[2] = 2;
                    }
                }
                if (array[1] <= sp18 && array[3] >= sp18) {
                    if (!r5[0xB]) {
                        s16 zz = sp14 - 0x10;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xB] = 2;
                    } else if (!r5[0xA]) {
                        s16 zz = sp14 - 0x20;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xA] = 2;
                    }
                }
                if (!r5[0x10]) {
                    s16 zz2 = sp14 - 0x10;
                    s16 zz = sp18 + 0x10;

                    if (array[0] <= zz2 && array[2] >= zz2
                        && array[1] <= zz && array[3] >= zz)
                        r5[0x10] = 2;
                }
            }
        } else {
            for (; *r7; ++r7) {
                s16 r1 = (*r7)->base.x >> 8;
                s16 r2 = (*r7)->base.y >> 8;

                array[0] = (*r7)->base.unk3C + r1;
                array[1] = (*r7)->base.unk3D + r2;
                array[2] = (*r7)->base.unk3E + r1;
                array[3] = (*r7)->base.unk3F + r2;
                if (array[0] <= sp14 && array[2] >= sp14) {
                    if (!r5[7]) {
                        s16 zz = sp18 - 0x10;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[7] = 2;
                    } else if (!r5[2]) {
                        s16 zz = sp18 - 0x20;
                        if (array[1] <= zz && array[3] >= zz)
                            r5[2] = 2;
                    }
                }
                if (array[1] <= sp18 && array[3] >= sp18) {
                    if (!r5[0xD]) {
                        s16 zz = sp14 + 0x10;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xD] = 2;
                    } else if (!r5[0xE]) {
                        s16 zz = sp14 + 0x20;
                        if (array[0] <= zz && array[2] >= zz)
                            r5[0xE] = 2;
                    }
                }
                if (!r5[0x12]) {
                    s16 zz2 = sp14 + 0x10;
                    s16 zz = sp18 + 0x10;

                    if (array[0] <= zz2 && array[2] >= zz2
                        && array[1] <= zz && array[3] >= zz)
                        r5[0x12] = 2;
                }
            }
        }
    }
}
*/
