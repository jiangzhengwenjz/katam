#include "code_08002848.h"
#include "code_0800A868.h"
#include "functions.h"
#include "malloc_ewram.h"
#include "object.h"
#include "task.h"

static void sub_0809A630(struct Object2 *);
static void sub_0809A7A4(void);
static void sub_0809A990(void);
static void sub_0809B6A8(struct Object2 *);
static void sub_0809B93C(struct Object2 *);
static void sub_0809BBB0(struct Object2 *);
static void sub_0809BEF8(struct Object2 *);
static void sub_0809C180(struct Object2 *);
static void sub_0809C48C(struct Object2 *);
static void sub_0809C994(struct Object2 *);
static void sub_0809CDBC(struct Object2 *);
static void sub_0809CE80(struct Object2 *);
static void sub_0809D060(struct Object2 *);
static void sub_0809D1E0(struct Object2 *);
static void sub_0809D5D0(struct Object2 *);
static void sub_0809D654(struct Object2 *);
static void sub_0809D710(struct Object2 *);
static void sub_0809D7C8(struct Object2 *);
static void sub_0809E424(struct Object2 *);
static void sub_0809E55C(void);
static void sub_0809E8D4(void);
static void sub_0809EB90(struct Object2 *);
static void sub_0809ECD0(void);
static void sub_0809F6BC(struct Object2 *);
static void sub_0809F88C(struct Object2 *);
static void sub_0809F8BC(struct Object2 *);
static void sub_0809F964(struct Object2 *);
static void sub_0809F974(struct Object2 *);
static void sub_0809F988(struct Object2 *);
static void nullsub_123(struct Object2 *);
static void nullsub_124(struct Object2 *);

void ObjectMain(void) {
    u8 r1; 
    u16 rand;
    struct Object2* obj2;
    struct Object2* obj = TaskGetStructPtr(gCurTask, obj2);
    if (obj->base.flags & 0x1000) {
        if (obj->unk80 <= 0) {
            gKirbys[obj->unk86].unkEC += gUnk_08351648[obj->type].unk2;
        }
        TaskDestroy(gCurTask);
    } else {
        if (obj->base.unkC & 0x2000) {
            sub_0809DA30(obj);
            obj->base.flags |= 0x1000;
        } else {
            if (sub_0803D6B4(obj) != 0) {
                if (ObjType0To37(obj)
                    && obj->unk80 <= 0) {
                    rand = Rand16();
                    if (rand < 0x5555) {
                        r1 = 0;
                    } else {
                        if (rand < 0xaaaa) {
                            r1 = 1;
                        } else {
                            r1 = 2;
                        }
                    }
                    switch (r1) {
                    case 1:
                        PlaySfx(&obj->base, 0x12c);
                        break;
                    case 2:
                        PlaySfx(&obj->base, 0x12d);
                        break;
                    default:
                        PlaySfx(&obj->base, 0x12e);
                        break;
                    }
                } else {
                    obj->unk80 = 1;
                }
                obj->base.flags |= 0x1000;
            } else {
                sub_0809A630(obj);
                if (obj->unk7C != NULL) {
                    obj->unk7C(obj);
                }
                if (gUnk_03000510.unk4 & ((1 << obj->base.unk56) | 0x10)) {
                    if (!(obj->base.flags & 0x2000)) {
                        if (!(obj->base.flags & 0x1200)) {
                            u32 r1;

                            if (obj->base.unk56 != 0xff) {
                                r1 = gCurLevelInfo[obj->base.unk56].unk65E;
                            } else {
                                r1 = 0xff;
                            }

                            if (r1 != 0xff) {
                                u8 idx;
                                u32 r3 = r1 * 64 + (obj->base.unk0 - 1) * 32;

#ifndef NONMATCHING
                                asm("":::"memory");
#endif
                                idx = gUnk_02022EB0[r1][obj->base.unk0 - 1]++ + r3;
                                gUnk_02022F50[idx] = &obj->base;
                                gUnk_02022F50[idx + 1] = NULL;
                            }
                        }
                        sub_0809D7C8(obj);
                        return;
                    }
                }
                if (!(obj->base.flags & 0x40)) {
                    sub_0809A990();
                } else {
                    if (obj->base.flags & 0x20) {
                        sub_0809A990();
                    }
                }
                obj->unk78(obj);
                if (!(obj->base.flags & 0x1200)) {
                    u32 r1;

                    if (obj->base.unk56 != 0xff) {
                        r1 = gCurLevelInfo[obj->base.unk56].unk65E;
                    } else {
                        r1 = 0xff;
                    }

                    if (r1 != 0xff) {
                        u8 idx;
                        u32 r3 = r1 * 64 + (obj->base.unk0 - 1) * 32;

#ifndef NONMATCHING
                        asm("":::"memory");
#endif
                        idx = gUnk_02022EB0[r1][obj->base.unk0 - 1]++ + r3;
                        gUnk_02022F50[idx] = &obj->base;
                        gUnk_02022F50[idx + 1] = NULL;
                    }
                }
                if (!(obj->base.flags & 0x04000800)) {
                    obj->base.xspeed += obj->unk98;
                    obj->base.yspeed += obj->unk9A;
                }
                if (!(obj->base.flags & 0x800)) {
                    obj->base.unk48 = obj->base.x;
                    obj->base.unk4C = obj->base.y;
                    obj->base.x += obj->base.xspeed;
                    obj->base.y -= obj->base.yspeed;
                }
                if (!(obj->base.flags & 0x100)) {
                    sub_0809D8C8(obj);
                } else {
                    obj->base.unk62 = 0;
                    if (obj->base.x <= gCurLevelInfo[obj->base.unk56].unk50 && obj->base.x >= gCurLevelInfo[obj->base.unk56].unk48) {
                        if (obj->base.y <= gCurLevelInfo[obj->base.unk56].unk54 && obj->base.y >= gCurLevelInfo[obj->base.unk56].unk4C) {
                            obj->base.unk57 = sub_080023E4(obj->base.unk56, obj->base.x >> 12, obj->base.y >> 12);
                            obj->base.unk58 = gUnk_082D88B8[obj->base.unk57];
                        }
                    }
                }
                if (!(obj->base.flags & 0x800)) {
                    if (obj->unk98 != 0) {
                        if (!(obj->base.flags & 0x4000000)) {
                            obj->base.xspeed -= obj->unk98;
                        }
                        if (obj->unk98 < 0) {
                            obj->unk98 += 0x10;
                            if (obj->unk98 > 0) {
                                obj->unk98 = 0;
                            }
                        } else {
                            obj->unk98 -= 0x10;
                            if (obj->unk98 < 0) {
                                obj->unk98 = 0;
                            }
                        }
                    }

                    if (obj->unk9A != 0) {
                        if (!(obj->base.flags & 0x4000000)) {
                            obj->base.yspeed -= obj->unk9A;
                        }
                        if (obj->unk9A < 0) {
                            obj->unk9A += 0x10;
                            if (obj->unk9A > 0) {
                                obj->unk9A = 0;
                            }
                        } else {
                            obj->unk9A -= 0x10;
                            if (obj->unk9A < 0) {
                                obj->unk9A = 0;
                            }
                        }
                    }
                }
                if (obj->base.unk58 & 2) {
                    if (!(obj->base.unkC & 8)) {
                        if (!(obj->base.unkC & 4)) {
                            sub_0808AE30(obj, 0, 0x296, 0);
                        }
                        obj->base.unkC |= 8;
                    }
                    if (!(obj->base.unkC & 1)) {
                        sub_0809D710(obj);
                    }
                } else {
                    if (obj->base.unkC & 8) {
                        if (!(obj->base.unkC & 4)) {
                            sub_0808AE30(obj, 0, 0x296, 1);
                        }
                        obj->base.unkC &= ~8;
                    }
                }
                if (obj->base.unk10.unk20 == 0) {
                    if (obj->base.unk10.unk16 == 0) {
                        obj->base.unk10.unk20 = -1;
                    }
                }
                sub_0809A7A4();
                obj->base.unkC &= ~0x20;
                obj->base.flags &= ~0x40000;
                obj->unk90 = 0;
                if (obj->type == OBJ_UNKNOWN_D0) {
                    sub_081111C4(obj);
                }
            }
        }
    }
}

void ObjectDestroy(struct Task* arg0) {
    u8 sb = 0;
    struct Object2 *obj2, *obj = TaskGetStructPtr(arg0, obj2);
    if (obj->unk84 == 0x1a) {
        if (obj->type != OBJ_MASTER_SWORD_STAND) {
            gUnk_0203AD34 = 0;
        }
    }
    if (gUnk_0203AD10 & 4) {
        if (ObjType38To52(obj)) {
            if (obj->base.unk60 >= 0x3bb && obj->base.unk60 <= 0x3bd) {
                if (sub_080029BC(gCurLevelInfo[obj->base.unk56].unk65E) > 1) {
                    *sub_08002888(1, 9, 0xff) |= 0x80000000;
                    sub_0808859C(obj, 0x3b7, 0x5a);
                }
            }
        }
    }
    if (gUnk_08351648[obj->type].unk8 & 0x1000) {
        if (obj->base.unk10.unk1F != 0) {
            sub_0803E4D4(obj->base.unk10.unk1F);
        }
    }
    if (obj->base.unk10.unk0 != 0) {
        if (!(obj->base.flags & 0x4000)) {
            sub_08157190(obj->base.unk10.unk0);
        }
    }
    if (obj->unk8C != NULL) {
        EwramFree(obj->unk8C);
    }
    if (obj->object != 0) {
        if (obj->object->unk2 != 0 || obj->object->unk3 != 31) {
            if (obj->object->unk2 != 0 || obj->base.unk56 != 0xff) {
                if (ObjType38To52(obj)
                    && obj->unk80 <= 0) {
                    sb = 1;
                }
                switch (obj->type) {
                case OBJ_UFO: case OBJ_DROPPY: case OBJ_PRANK: case OBJ_SHADOW_KIRBY:
                    sb = 1;
                    break;
                case OBJ_JACK: case OBJ_COOKIN: case OBJ_EMPTY_31: case OBJ_MIRRA:
                case OBJ_SMALL_FOOD: case OBJ_POP_SODA: case OBJ_MEAT: case OBJ_TOMATO:
                case OBJ_BATTERY: case OBJ_1UP: case OBJ_INVINCIBLE_CANDY:
                    if (obj->unk80 <= 0) {
                        sb = 1;
                    }
                    break;
                }
                sub_08001678(obj->object->unk2, obj->object->unk3, gCurLevelInfo[obj->base.unk56].unk65E, sb);
            } else { 
                return;
            }
        } else {
            struct Object *r1 = gUnk_020229E0;
            u8 r3;
            for (r3 = 0; r3 < 0x20; r3++, r1++) {
                if (r1 == obj->object) {
                    gUnk_020229D4 &= ~(1 << r3);
                    break;
                }
            }
        }
    }
    if (obj->base.unk56 != 0xff) {
        if (ObjType0To37(obj)
            || ObjType38To52(obj)
            || ObjType53To64(obj)) {
            if (obj->object->unk22 & 1) {
                if (obj->unk80 <= 0) {
                    sub_080029CC(gCurLevelInfo[obj->base.unk56].unk65E, 1);
                }
            }
        }
        sub_080028CC(obj->base.unk56, sub_08002984(obj->base.unk56, &obj->base.unk56));
    }
}

static void sub_0809A580(struct Task *task) {
    u8 i;
    struct Object *p;
    struct Object2 *objTemp, *obj = TaskGetStructPtr(task, objTemp);

    p = gUnk_020229E0 + 0;
    for (i = 0; i < 0x20; ++i, ++p) {
        if (p == obj->object) {
            gUnk_020229D4 &= ~(1 << i);
            break;
        }
    }
    if (obj->base.unk10.unk0 && !(obj->base.flags & 0x4000))
    sub_08157190(obj->base.unk10.unk0);
    if (obj->unk8C)
        EwramFree(obj->unk8C);
    if (obj->base.unk56 != 0xFF)
        sub_080028CC(obj->base.unk56, sub_08002984(obj->base.unk56, &obj->base.unk56));
}

static void sub_0809A630(struct Object2 *obj) {
    struct Sprite sprite;
    struct Sprite *r6;
    u16 v3;
    s32 v4;

    if (!gUnk_08351648[obj->type].unkC) return;
    r6 = &obj->base.unk10;
    if (!(obj->base.unkC & 0x200)) {
        if (gKirbys[gUnk_0203AD3C].base.base.unk60 == obj->base.unk60) {
            if (!obj->base.unk10.unk0) {
                if (obj->base.flags & 0x4000) {
                    r6->unk0 = sub_0803DD58(obj->type);
                    r6->unk8 &= ~0x80000;
                    CpuCopy32(r6, &sprite, sizeof(struct Sprite));
                    sub_0815521C(&sprite, obj->base.unk1);
                } else {
                    obj->base.unk10.unk0 = sub_081570B0(gUnk_08351648[obj->type].unkC);
                    r6->unk8 &= ~0x80000;
                    CpuCopy32(r6, &sprite, sizeof(struct Sprite));
                    sub_0815521C(&sprite, obj->base.unk1);
                }
            }
            if (!r6->unk1F) {
                v3 = gUnk_08351648[obj->type].unk8;
                if (obj->base.unkC & 0x10)
                    v3 = gUnk_08351648[OBJ_DROPPY].unk8;
                v4 = sub_0803DF24(v3);
                if (v4 == 0xFF) {
                    if (gKirbys[gUnk_0203AD3C].base.base.unk60 == obj->base.unk60) {
                        sub_0803DFAC(v3, obj->object->unkF);
                        v4 = sub_0803DF24(v3);
                    } else {
                        v4 = 0;
                    }
                }
                r6->unk1F = v4;
            }
        } else {
            if (obj->base.unk10.unk0) {
                if (!(obj->base.flags & 0x4000))
                    sub_08157190(obj->base.unk10.unk0);
                obj->base.unk10.unk0 = 0;
            }
            r6->unk8 |= 0x80000;
            r6->unk1F = 0;
        }
    }
}

static void sub_0809A7A4(void) {
    s32 r2;
    struct Object2 *objTemp, *r7 = TaskGetStructPtr(gCurTask, objTemp);
    struct Sprite *r6;

    if (gUnk_08351648[r7->type].unkC) {
        r6 = &r7->base.unk10;
        if (r7->base.flags & 1)
            r6->unk8 &= ~0x400;
        else
            r6->unk8 |= 0x400;
        if (!(r7->base.flags & 8)) {
            r6->unkC = gUnk_08351648[r7->type].unk14[r7->unk83].unk0;
            r6->unk1A = gUnk_08351648[r7->type].unk14[r7->unk83].unk2;
            if (r6->unk1B != r6->unk1A || r6->unk18 != r6->unkC) {
                r7->base.unk1 = 0;
                r7->base.unk2 = 0;
                r7->base.flags &= ~4;
            }
            r2 = sub_08155128(r6);
            if (!r2) {
                r7->base.flags |= 2;
                if (r7->base.flags & 4) {
                    r6->unk1B = 0xFF;
                    r7->base.unk1 = r2;
                    r7->base.unk2 = r2;
                    r7->base.flags &= ~4;
                    sub_08155128(r6);
                }
            } else {
                r7->base.flags &= ~2;
                r7->base.unk2 += r6->unk1C;
                r7->base.unk1 = r7->base.unk2 >> 4;
            }
        }
        if (!(r7->base.flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.unk60 == r7->base.unk60)
        {
            r6->unk10 = (r7->base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r7->base.unk54;
            r6->unk12 = (r7->base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r7->base.unk55;
            r6->unk10 += gUnk_0203AD18[0];
            r6->unk12 += gUnk_0203AD18[1];
            r7->base.unk55 = 0;
            r7->base.unk54 = 0;
            if (r7->base.flags & 0x4000)
                sub_081564D8(r6);
            else
                sub_0815604C(r6);
        }
    }
}

static void sub_0809A990(void) {
    struct Object2 *obj;

    TaskGetStructPtr(gCurTask, obj);
    if (!(obj->base.unk62 & 4) && !(obj->base.flags & 0x800)) {
        obj->base.flags |= 0x20;
        if (obj->base.unkC & 8) {
            obj->base.yspeed = -0x40;
        } else {
            obj->base.yspeed -= 0x15;
            if (obj->base.yspeed < -0x300)
                obj->base.yspeed = -0x300;
        }
    }
}

static void sub_0809AA10(struct Object2 *r10, struct Kirby *sp00) {
    s8 r7;
    s8 sp04;
    s16 sp08 = 304;

    r7 = sp00->base.base.unk63;
    sp04 = 0;
    if (sp00->base.base.unk68 & 0x100) {
        if ((r7 += r10->unk91) <= 0)
            r7 = 1;
        if (r10->type != OBJ_DARK_MIND_FORM_2)
            sub_0809E424(r10);
        if (sp04 < r7)
            sp04 = r7;
    }
    if (sp00->base.base.unk68 & 0x200) {
        if ((r7 += r10->unk92) <= 0)
            r7 = 1;
        sub_0809EB90(r10);
        if (sp04 < r7) {
            sp04 = r7;
            sp08 = 305;
        }
    }
    if (sp00->base.base.unk68 & 0x400) {
        if ((r7 += r10->unk93) <= 0)
            r7 = 1;
        sub_0809E79C(r10);
        if (sp04 < r7) {
            sp04 = r7;
            sp08 = 304;
        }
    }
    if (sp00->base.base.unk68 & 0x5000) {
        if (sp00->base.base.unk68 & 0x1000)
            r7 += r10->unk94;
        else
            r7 += r10->unk96;
        if (r7 <= 0)
            r7 = 1;
        if (r10->type != OBJ_DARK_MIND_FORM_2) {
            struct Object4 *r0 = sub_0808AE30(r10, 0, 0x2A3, 0);

            r0->unkC.unk14 = 0x240;
            Rand32();
            r0->unk34 += 0x800;
            r0->unk34 -= ((gRngVal >> 16) & 0xFFF);
            Rand32();
            r0->unk38 += 0x800;
            r0->unk38 -= ((gRngVal >> 16) & 0xFFF);
        }
        if (sp04 < r7) {
            sp04 = r7;
            if (sp00->base.base.unk68 & 0x4000000)
                sp08 = 186;
            else {
                switch (Rand16() & 3) {
                default:
                case 0:
                    sp08 = 308;
                    break;
                case 1:
                    sp08 = 309;
                    break;
                case 2:
                    sp08 = 351;
                    break;
                case 3:
                    sp08 = 352;
                    break;
                }
            }
        }
    }
    if (sp00->base.base.unk68 & 0x2000) {
        if ((r7 += r10->unk95) <= 0)
            r7 = 1;
        if (r10->type != OBJ_DARK_MIND_FORM_2) {
            struct Object4 *r0 = sub_0808AE30(r10, 0, 0x2A3, 2);

            r0->unkC.unk14 = 0x240;
            Rand32();
            r0->unk34 += 0x800;
            r0->unk34 -= ((gRngVal >> 16) & 0xFFF);
            Rand32();
            r0->unk38 += 0x800;
            r0->unk38 -= ((gRngVal >> 16) & 0xFFF);
        }
        if (sp04 < r7) {
            sp04 = r7;
            if (sp00->base.base.unk68 & 0x2000000)
                sp08 = 307;
            else
                sp08 = 306;
        }
    }
    if (sp00->base.base.unk68 & 0x40) {
        if ((r7 += r10->unk94) <= 0)
            r7 = 1;
        if (sp00->base.base.unk68 & 0x40000000) {
            if (r10->type != OBJ_DARK_MIND_FORM_2) {
                struct Object4 *r0 = sub_0808AE30(r10, 0, 0x2A3, 0);

                r0->unkC.unk14 = 0x240;
                Rand32();
                r0->unk34 += 0x800;
                r0->unk34 -= ((gRngVal >> 16) & 0xFFF);
                Rand32();
                r0->unk38 += 0x800;
                r0->unk38 -= ((gRngVal >> 16) & 0xFFF);
            }
            if (sp04 < r7) {
                sp04 = r7;
                switch (Rand16() & 3) {
                default:
                case 0:
                    sp08 = 308;
                    break;
                case 1:
                    sp08 = 309;
                    break;
                case 2:
                    sp08 = 351;
                    break;
                case 3:
                    sp08 = 352;
                    break;
                }
            }
        } else {
            sub_0808925C(r10);
            if (sp04 < r7) {
                sp04 = r7;
                sp08 = 304;
            }
        }
    }
    if (sp00->base.base.unk68 & 0x10000) {
        if ((r7 += r10->unk97) <= 0)
            r7 = 1;
    }
    if (sp00->base.base.unk68 & 0x8000000) {
        sub_080860A8(r10, gUnk_08352DF0);
        sp08 = 146;
    }
    if (ObjType38To52(r10))
        sp08 = 361;
    if (r10->type == OBJ_MEGA_TITAN
        || ObjIsTitanArm(r10)) {
        r10->base.xspeed = 0;
        if (!(sp00->base.base.unk68 & 0x400) || r10->type != OBJ_MEGA_TITAN) {
            sp04 = 0;
            r7 = 0;
            if (!(sp00->base.base.unk68 & 0x400))
                sp08 = 416;
        } else {
            r10->unk83 = gUnk_08351648[r10->type].unk0;
            sp08 = 399;
        }
    }
    if (sp04 < r7)
        sp04 = r7;
    PlaySfx(&sp00->base.base, sp08);
    r10->unk80 -= sp04;
    if (sp00->base.base.unk68 & 0x10000)
        sub_080884C4(r10);
}

static void sub_0809AF38(struct Object2 *r4, struct Kirby *r5) {
    s32 r7 = 0;

    sub_0809AA10(r4, r5);
    if (r4->type == OBJ_MEGA_TITAN
        || ObjIsTitanArm(r4)
        || r4->type == OBJ_UNKNOWN_D0
        || (r4->base.unkC & 0x800))
        r7 = 1;
    if (r4->unk80 <= 0 && r4->unk78 != sub_0809D1E0) {
        r4->base.unk68 &= 7;
        r4->base.unk5C |= 0x80;
        if (!r7 && !(r4->object->unk22 & 4)) {
            if (!r4->base.parent)
                sub_08086C48(r4);
            else if (((struct Kirby *)r4->base.parent)->base.unk80 <= 0)
                sub_08086C48(r4);
        }
    }
    if (r4->type != OBJ_KING_GOLEM && r4->type != OBJ_DARK_META_KNIGHT && r4->type != OBJ_DARK_MIND_FORM_2
        && (!r7 || r4->base.unkC & 0x800)) {
        sub_0808BA6C(r4, 0, 0x2A3, 1);
        if (!(r4->base.unkC & 0x800) && gUnk_08D61048[ObjTypeAltIdx(r4)])
            sub_08088398(r4, gUnk_08D61048[ObjTypeAltIdx(r4)]);
    }
    if (r4->unk80 <= 0) {
        if (ObjType43To52(r4)) {
            if (!r7)
                PlaySfx(&r4->base, 380);
            if (r4->type == OBJ_KING_GOLEM || r4->type == OBJ_MEGA_TITAN || r4->type == OBJ_TITAN_HEAD
                || r4->type == OBJ_MOLEY || r4->type == OBJ_GOBBLER || r4->type > OBJ_CRAZY_HAND_2
                || r4->type > OBJ_DARK_MIND_FORM_1 || r4->type == OBJ_WIZ) { // ... some weird macro expansion
                gUnk_08351648[r4->type].unk10(r4);
            } else {
                r4->base.flags |= 0x200;
                r4->unk78 = sub_0809F974;
            }
            if (!r7)
                sub_08088528(r4);
        } else {
            if (r4->unk78 != sub_0809D1E0) {
                sub_0806FE64(3, r4);
                if (r4->base.unkC & 0x800) {
                    sub_0809DA30(r4);
                    r4->base.flags |= 0x1000;
                } else { 
                    if (r5->base.base.x > r4->base.x)
                        r4->base.xspeed = -0x100;
                    else
                        r4->base.xspeed = 0x100;
                    sub_0809D060(r4);
                }
            } else {
                sub_0808520C(r4, 10);
                sub_0808845C(r4, 16);
            }
        }
    } else {
        r4->base.unkC |= 0x20;
        r4->base.unkC |= 0x40;
        if (!(r5->base.base.unk68 & 0x800000)) {
            sub_0808520C(r4, 10);
            sub_0808845C(r4, 16);
            if (!r7) {
                if (ObjType43To52(r4))
                    sub_0806FE64(3, r4);
                else
                    sub_0806FE64(1, r4);
            }
        }
    }
}

void sub_0809B1E4(struct Object2 *r4) {
    struct Kirby *r7 = NULL;
    struct Kirby *r6, *r3;
    s16 r2, r5;

    if (ObjType5ETo6C(r4)) return;
    r6 = r4->base.kirby1;
    if (r6->base.base.parent && !((struct Object2 *)r6->base.base.parent)->base.unk0)
        r7 = r6->base.base.parent;
    if (r7)
        r4->unk86 = r7->base.base.unk56;
    if (!(r4->base.unkC & 2)) {
        r2 = r6->base.base.unk64;
        r5 = r6->base.base.unk66;
        r3 = r6->base.base.parent;
        if (r4->type == OBJ_MEGA_TITAN || ObjIsTitanArm(r4)) {
            if (r2 & 0x8000) {
                r2 -= r6->base.base.unk63 * 8;
                if (r2 > -416)
                    r2 = -416;
                else if (r2 < -800)
                    r2 = -800;
            } else {
                r2 += r6->base.base.unk63 * 8;
                if (r2 < 416)
                    r2 = 416;
                else if (r2 > 800)
                    r2 = 800;
            }
            if (r5 > 192)
                r5 = 192;
            if (r5 < 0)
                r5 = 0;
        }
        if (r3) {
            if (r3->base.base.x > r4->base.x)
                r4->unk98 = -r2;
            else {
                if (r3->base.base.x < r4->base.x)
                    r4->unk98 = r2;
                else if (r3->base.base.flags & 1)
                    r4->unk98 = -r2;
                else
                    r4->unk98 = r2;
            }
        } else if (r6->base.base.x > r4->base.x) {
            r4->unk98 = -r2;
        } else {
            r4->unk98 = r2;
        }
        r4->unk9A = r5;
        if (r7 && r6->base.base.unk68 < 0) {
            r7->unkE6 = r4->unk98;
            r7->unkE8 = r4;
        }
    }
    if (ObjType38To52(r4) || ObjIsTitanArm(r4) || r4->type == OBJ_UNKNOWN_D0
        || r4->base.unkC & 0x800) {
        sub_0809AF38(r4, r6);
        return;
    }
    sub_0809AA10(r4, r6);
    if (r4->type == OBJ_SHADOW_KIRBY)
        sub_08024E20(r4);
    if (r4->unk80 <= 0 || r4->type == OBJ_MIRRA) {
        if (r4->type == OBJ_MIRRA)
            sub_080B11C0(r4);
        if (!(r6->base.base.unk68 & 0x1000000)) {
            s16 r1;

            r4->base.unkC |= 1;
            r4->unk98 <<= 1;
            r4->unk9A <<= 1;
            if (!(r4->base.flags & 0x4000000)) {
                r4->base.flags |= 0x100;
                r4->base.flags |= 0x20;
            }
            r4->base.unkC |= 4;
            r4->base.unk62 = 0;
            r1 = abs(r4->unk9A) + abs(r4->unk98);
            if (r1 < 896) {
                r1 = 896 - r1;
                if (r4->unk98 > 0) {
                    r4->unk98 += r1 >> 1;
                } else {
                    r4->unk98 -= r1 >> 1;
                }
                r4->unk9A += r1 >> 1;
            }
            if (r4->unk9A < 0x200u)
                r4->unk9A = 0x200;
            if (r7 && r6->base.base.unk68 < 0) {
                r7->unkE6 = 0;
                r7->unkE8 = r4;
            }
        }
        if ((r6->base.base.unk68 & 0x300) == 0x200)
        {
            r4->unk98 = 0;
            r4->unk9A = 0;
            if (!r7 || r6->base.base.unk68 >= 0) {
                sub_0809D5D0(r4);
                return;
            }
            r7->unkE6 = 0;
            r7->unkE8 = r4;
            sub_0809D5D0(r4);
            return;
        }
    }
    if (r4->unk98 || r4->unk9A) {
        if (r4->unk98 > 0x800)
            r4->unk98 = 0x800;
        else if (r4->unk98 < -0x800)
            r4->unk98 = -0x800;
        if (r4->unk9A > 0x800)
            r4->unk9A = 0x800;
        else if (r4->unk9A < -0x800)
            r4->unk9A = -0x800;
    }
    if (Rand16() & 1)
        r4->unk83 = gUnk_08351648[r4->type].unk0;
    else
        r4->unk83 = gUnk_08351648[r4->type].unk1;
    if (!(r4->base.flags & 0x1000000))
        r4->base.counter = 0;
    else if (r4->base.counter > 8)
        r4->base.counter = 8;
    r4->unk9E = 0;
    if (r4->base.unkC & 2) {
        r4->unk80 = 0;
        if ((r6->base.base.unk68 & 0x300) == 0x200)
        {
            r4->unk98 = 0;
            r4->unk9A = 0;
            if (!r7 || r6->base.base.unk68 >= 0) {
                sub_0809D5D0(r4);
                return;
            }
            r7->unkE6 = 0;
            r7->unkE8 = r4;
            sub_0809D5D0(r4);
            return;
        }
        r4->base.flags |= 0xB00;
        r4->base.counter = 0;
        r4->base.unk10.unk1C = 0;
        r4->unk78 = sub_0809F88C;
    } else {
        if (!(r4->base.flags & 0x4000000)) {
            r4->base.flags |= 0x820;
            r4->base.flags &= ~8;
            r4->base.xspeed = 0;
            r4->base.yspeed = 0;
            r4->unk88 = r6->base.base.unk68;

        } else {
            r4->unk88 = 0;
        }
        r4->base.flags |= 0x1000000;
        r4->base.unkC |= 0x20;
        r4->base.unkC |= 0x40;
        switch (r4->type) {
        case OBJ_MIRRA:
            r4->base.flags |= 0x8200;
            r4->unk80 = 0;
            break;
        case OBJ_PRANK:
            if (r4->object->subtype1 == 1 || r4->object->subtype1 == 2)
                r4->unk80 = 0;
            break;
        case OBJ_COOKIN: case OBJ_EMPTY_31:
            r4->unk80 = 0;
            break;
        case OBJ_JACK:
            r4->unk80 = 0;
            break;
        case OBJ_GOBBLER_BABY:
            if (r4->base.unkC & 2)
                r4->unk80 = 0;
            break;
        }
        if (gKirbys[gUnk_0203AD3C].base.base.unk60 == r4->base.unk60)
            sub_080857A0(r4);
        r4->unk78 = sub_0809B6A8;
    }
}


static void sub_0809B6A8(struct Object2 *r3) {
    if (r3->type == OBJ_WADDLE_DEE_2) {
        ObjXSomething(r3);
        ObjYSomething(r3);
        if (r3->base.unk62 & (1 | 2))
            r3->base.xspeed = 0;
        if (r3->base.unk62 & (4 | 8))
            r3->base.yspeed = 0;
    }
    if (r3->unk80 <= 0) {
        r3->base.unk68 = 0;
        r3->base.unk5C |= 0x80;
    }
    r3->base.unk68 &= ~0x80;
    if (r3->base.unk5C & 0x80)
        r3->base.unkC |= 0x4000;
    else
        r3->base.unkC &= ~0x4000;
    r3->base.unk5C |= 0x80;
    if (r3->unk9E < 8) {
        r3->base.unk55 = gUnk_08352DD0[r3->unk9E];
        ++r3->unk9E;
    }
    if (r3->base.counter > 10) {
        if (!(r3->base.flags & 0x4000000))
            r3->base.flags &= ~0x800;
        r3->base.unk55 = 0;
        r3->base.counter = 0;
        if (r3->base.yspeed)
            r3->base.flags |= 0x20;
        if (r3->unk88 & 8) {
            r3->base.flags &= ~0x100;
            r3->unk78 = sub_0809BBB0;
        } else {
            r3->unk78 = sub_0809B93C;
        }
    }
    ++r3->base.counter;
}

static void sub_0809B93C(struct Object2 *r4) {
    if (r4->type == OBJ_WADDLE_DEE_2) {
        ObjXSomething(r4);
        ObjYSomething(r4);
        if (r4->base.unk62 & (1 | 2))
            r4->base.xspeed = 0;
        if (r4->base.unk62 & (4 | 8))
            r4->base.yspeed = 0;
    }
    if (r4->base.counter == 10)
        r4->base.flags &= ~0x1000000;
    if (r4->base.counter > 18) {
        if (r4->unk80 <= 0) {
            sub_0809DA30(r4);
            r4->base.flags |= 0x1000;
            gUnk_08351648[r4->type].unk10(r4);
            sub_0809F6BC(r4);
        } else {
            r4->base.unk68 |= 0x80;
            if (r4->base.unkC & 0x4000)
                r4->base.unk5C &= ~0x80;
            r4->base.unkC &= ~0x4000;
            r4->base.flags &= ~0x1000000;
            gUnk_08351648[r4->type].unk10(r4);
        }
    } else {
        ++r4->base.counter;
    }
}

static void sub_0809BBB0(struct Object2 *r4) {
    if (r4->type == OBJ_SHADOW_KIRBY || r4->type == OBJ_WADDLE_DEE_2) {
        ObjXSomething(r4);
        ObjYSomething(r4);
        if (r4->base.unk62 & (1 | 2))
            r4->base.xspeed = 0;
        if (r4->base.unk62 & (4 | 8))
            r4->base.yspeed = 0;
    }
    if (r4->base.xspeed < 0) {
        r4->base.xspeed += 6;
        if (r4->base.xspeed > 0)
            r4->base.xspeed = 0;
    } else {
        r4->base.xspeed -= 6;
        if (r4->base.xspeed < 0)
            r4->base.xspeed = 0;
    }
    r4->base.flags &= ~0x40;
    if (r4->base.counter == 10)
        r4->base.flags &= ~0x1000000;
    if (r4->base.unk62 & (8 | 2 | 1)) {
        sub_0806FE64(2, r4);
        r4->base.flags &= ~0x1000000;
        r4->base.xspeed = 0;
        r4->base.yspeed = 0;
        r4->base.counter = 0;
        r4->unk78 = sub_0809C180;
        r4->base.flags &= ~0x8000;
        if (r4->type != OBJ_SHADOW_KIRBY && r4->type != OBJ_WADDLE_DEE_2)
            return;
        if (r4->unk80 <= 0) {
            sub_0809DA30(r4);
            r4->base.flags |= 0x1000;
            sub_0809F6BC(r4);
            return;
        }
        r4->base.unk68 |= 0x80;
        if (r4->base.unkC & 0x4000)
            r4->base.unk5C &= ~0x80;
        r4->base.unkC &= ~0x4000;
        r4->base.flags &= ~0x200;
        gUnk_08351648[r4->type].unk10(r4);
    } else if (r4->base.unk62 & 4) {
        r4->base.flags |= 0x20;
        if (r4->unk88 & 8)
            r4->base.yspeed = 0x200;
        r4->unk78 = sub_0809BEF8;
        sub_0806FE64(2, r4);
        r4->base.flags &= ~0x1000000;
        r4->base.flags &= ~0x8000;
        if (r4->type != OBJ_SHADOW_KIRBY && r4->type != OBJ_WADDLE_DEE_2)
            return;
        if (r4->unk80 <= 0) {
            sub_0809DA30(r4);
            r4->base.flags |= 0x1000;
            sub_0809F6BC(r4);
            return;
        }
        r4->base.unk68 |= 0x80;
        if (r4->base.unkC & 0x4000)
            r4->base.unk5C &= ~0x80;
        r4->base.unkC &= ~0x4000;
        r4->base.flags &= ~0x200;
        gUnk_08351648[r4->type].unk10(r4);
    } else {
        ++r4->base.counter;
    }
}

static void sub_0809BEF8(struct Object2 *r4) {
    if (r4->type == OBJ_SHADOW_KIRBY || r4->type == OBJ_WADDLE_DEE_2) {
        ObjXSomething(r4);
        ObjYSomething(r4);
        if (r4->base.unk62 & (1 | 2))
            r4->base.xspeed = 0;
        if (r4->base.unk62 & (4 | 8))
            r4->base.yspeed = 0;
    }
    if (r4->base.xspeed < 0) {
        r4->base.xspeed += 6;
        if (r4->base.xspeed > 0)
            r4->base.xspeed = 0;
    } else {
        r4->base.xspeed -= 6;
        if (r4->base.xspeed < 0)
            r4->base.xspeed = 0;
    }
    r4->base.flags &= ~0x40;
    if (r4->base.unk62 & 4) {
        if (r4->unk80 <= 0) {
            sub_0809DA30(r4);
            r4->base.flags |= 0x1000;
            sub_0809F6BC(r4);
            return;
        }
        r4->base.unk68 |= 0x80;
        if (r4->base.unkC & 0x4000)
            r4->base.unk5C &= ~0x80;
        r4->base.unkC &= ~0x4000;
        r4->base.flags &= ~0x200;
        gUnk_08351648[r4->type].unk10(r4);
    } else {
        ++r4->base.counter;
    }
}

static void sub_0809C180(struct Object2 *r4) {
    if (r4->type == OBJ_SHADOW_KIRBY || r4->type == OBJ_WADDLE_DEE_2) {
        ObjXSomething(r4);
        ObjYSomething(r4);
        if (r4->base.unk62 & (1 | 2))
            r4->base.xspeed = 0;
        if (r4->base.unk62 & (4 | 8))
            r4->base.yspeed = 0;
    }
    r4->base.yspeed = 0;
    if (r4->base.counter < 8)
        r4->base.unk55 = gUnk_08352DD0[r4->base.counter];
    if (r4->base.counter > 10)
        r4->unk78 = sub_0809BEF8;
    ++r4->base.counter;
}

void sub_0809C380(struct Object2 *r3) {
    struct Kirby *r4 = r3->base.kirby1;

    if (!r4->base.base.unk0) {
        if (r4->unk103 == 10) {
            if (ObjType5ETo6C(r3)
                || r3->type == OBJ_ABILITY_STAR_1 || r3->type == OBJ_ABILITY_STAR_2)
                return;
        }
        ++r4->unkDE;
    }
    if (!ObjType5ETo6C(r3)) {
        r3->unk80 = 0;
        if (Rand16() & 1)
            r3->unk83 = gUnk_08351648[r3->type].unk0;
        else
            r3->unk83 = gUnk_08351648[r3->type].unk1;
    }
    r3->base.counter = 0;
    r3->unk9F = 1;
    r3->base.xspeed = r3->base.x - r4->base.base.x;
    r3->base.yspeed = r3->base.y - r4->base.base.y;
    r3->base.flags |= (0x800 | 0x200 | 0x100 | 0x40);
    r3->base.unkC |= 1;
    r3->base.flags &= ~0x20;
    r3->unk86 = r4->base.base.unk56;
    r3->unk78 = sub_0809C48C;
    r3->base.unkC |= 0x400;
}

static void sub_0809C48C(struct Object2 *r5) {
    struct Kirby *r6 = r5->base.kirby1;
    struct Object3 *r1;

    if (r6->unkD4 != 0x1A && r6->unkD4 != 0x1B
        && r6->unkD4 != 0x6A && r6->unkD4 != 0x6B && r6->unkD4 != 0x1C) {
        if (r6->unkDE) --r6->unkDE;
        sub_0808AE30(r5, 0, 0x292, 0);
        r5->base.flags |= 0x1000;
        PlaySfx(&r5->base, 300);
    } else {
        r5->base.counter += 42;
        if (r5->base.xspeed > 0)
            r5->base.xspeed -= r5->base.counter;
        else
            r5->base.xspeed += r5->base.counter;
        if (r5->base.yspeed > 0)
            r5->base.yspeed -= r5->base.yspeed >> 3;
        else if (r5->base.yspeed < 0)
            r5->base.yspeed += (-r5->base.yspeed) >> 3;
        r5->base.x = r6->base.base.x + r5->base.xspeed;
        r5->base.y = r6->base.base.y + r5->base.yspeed;
        if (r5->unk9F) {
            r5->unk9F = 0;
        } else {
            if (abs(r5->base.xspeed) < 0x1200) {
                if (!r6->base.base.unk0) {
                    if (r6->unk103 == 10) {
                        if (r6->unkD4 == 111) return;
                        sub_08063D98(r6, 0);
                        r1 = sub_0807A7E8(r5);
                        if ((r5->type == OBJ_WADDLE_DEE_1 || r5->type == OBJ_WADDLE_DOO) && r5->unk84 == 5) {
                            r5->base.parent = r1;
                            r5->unk78 = sub_0809F8BC;
                            return;
                        }
                    } else {
                        if (ObjType5ETo6C(r5)) {
                            r5->base.xspeed = 0;
                            r5->base.yspeed = 0;
                            r5->base.flags &= ~(0x100 | 0x200);
                            gUnk_08351648[r5->type].unk10(r5);
                            sub_080547C4(r6, 28);
                            return;
                        }
                        if (r5->type == OBJ_ABILITY_STAR_1 || r5->type == OBJ_ABILITY_STAR_2)
                            sub_080547C4(r6, r5->unk84 | 0x80);
                        else
                            sub_080547C4(r6, r5->unk84);
                        r5->unk84 = 0;
                    }
                } else if (r6->base.base.unk0 != 1) {
                    return;
                } else {
#ifndef NONMATCHING
                    asm(""::"r"(r6->base.type));
#endif
                }
                r5->base.flags |= 0x1000;
            }
        }
    }
}

void sub_0809C6D0(struct Object2 *r4) {
    struct Kirby *r7 = r4->base.kirby1, *r6 = r7->base.base.parent;

    r4->base.flags |= 0x2000000;
    if (ObjType38To52(r4)) {
        r4->base.counter = 0;
        r4->unk9E = 0;
        r4->unk9F = 0;
        r4->unk85 = 0;
        r4->unk83 = gUnk_08351648[r4->type].unk0;
        r4->base.flags &= ~8;
        r4->base.flags &= ~0x40;
        r4->base.flags &= ~0x800;
        r4->base.flags &= ~0x200000;
        r4->base.flags &= ~(0x40000 | 0x100);
        r4->base.unkC |= 1;
        r4->base.unk5C = -40;
        PlaySfx(&r4->base, 362);
        if (r4->object && !ObjType43To52(r4)
            && (r4->object->unk2 || r4->object->unk3 != 31))
            ++*sub_08002888(0, r4->object->unk4, gCurLevelInfo[r4->base.unk56].unk65E);
    }
    if (r4->type == OBJ_MIRRA)
        sub_080B11C0(r4);
    if (r7->base.base.unk68 & 0x40000000)
        sub_0809CDBC(r4);
    else {
        if (!r6->base.base.unk0)
            ++r6->unkDE;
        if (Rand16() & 1)
            r4->unk83 = gUnk_08351648[r4->type].unk0;
        else
            r4->unk83 = gUnk_08351648[r4->type].unk1;
        r4->base.counter = 20 * r6->unkDE;
        r4->unk9F = 0;
        r4->unk9E = 0;
        if (r6->base.base.flags & 1)
            r4->base.unk48 = ({r4->base.x + 0x1300;}) - r6->base.base.x;
        else
            r4->base.unk48 = ({r4->base.x - 0x1300;}) - r6->base.base.x;
        r4->base.unk4C = ({r4->base.y + 0x1000;}) - r6->base.base.y;
        if (r4->base.unk48) {
            if (r4->base.unk4C > 0)
                r4->base.unk64 = abs(r4->base.unk48 << 8) / (((r4->base.unk4C / 3 >> 8) + 0x1E) << 8);
            else
                r4->base.unk64 = abs(r4->base.unk48 << 8) / 0x1E00;
        } else {
            r4->base.unk64 = 0;
        }
        r4->base.yspeed = 0x380;
        r4->base.xspeed = 0;
        r4->base.flags |= (0x800 | 0x200 | 0x100 | 0x40);
        r4->base.unkC |= 1;
        r4->base.flags &= ~0x20;
        r4->unk80 = 0;
        r4->unk86 = r7->base.base.unk56;
        r4->unk78 = sub_0809C994;
        r4->base.unkC |= 0x400;
        r4->base.kirby1 = r7->base.base.parent;
    }
}

static void sub_0809C994(struct Object2 *r5) {
    u8 r8, r9, r3_;
    s16 r3;
    u16 r1, r2;
    struct Kirby *r7 = r5->base.kirby1;

    if (r7->unkD4 == 39 || r7->hp <= 0 || r7->unk103 != 12) {
        if (r7->unkDE) --r7->unkDE;
        sub_0808AE30(r5, 0, 0x292, 0);
        r5->base.flags |= 0x1000;
    } else {
        if (r7->unkD4 == 52) {
            if (r5->base.counter) {
                if (!--r5->base.counter)
                    PlaySfx(&r5->base, 325);
            } else {
                if (r5->base.yspeed != 0x380 || r5->base.unk4C <= 0)
                    r5->base.yspeed -= 42;
                if (r5->base.yspeed < -0x300)
                    r5->base.yspeed = -0x300;
                r5->base.unk4C -= r5->base.yspeed;
                if (r5->base.unk48 > 0) {
                    r3 = r5->base.unk48 >> 3;
                    if (r3 > r5->base.unk64)
                        r3 = r5->base.unk64;
                    if (r3 - r5->base.xspeed > 0xC0) {
                        r5->base.xspeed += 0xC0;
                    } else {
                        if (r3 - r5->base.xspeed < -0xC0)
                            r5->base.xspeed -= 0xC0;
                        else
                            r5->base.xspeed = r3;
                    }
                    r5->base.unk48 -= r5->base.xspeed;
                } else if (r5->base.unk48 < 0) {
                    r3 = (-r5->base.unk48) >> 3;
                    if (r3 > r5->base.unk64)
                        r3 = r5->base.unk64;
                    if (r3 - r5->base.xspeed > 0xC0) {
                        r5->base.xspeed += 0xC0;
                    } else {
                        if (r3 - r5->base.xspeed < -0xC0)
                            r5->base.xspeed -= 0xC0;
                        else
                            r5->base.xspeed = r3;
                    }
                    r5->base.unk48 += r5->base.xspeed;
                }
            }
        }
        if (r7->base.base.flags & 1)
            r5->base.x = r7->base.base.x + ({r5->base.unk48 - 0x1300;});
        else
            r5->base.x = r7->base.base.x + ({r5->base.unk48 + 0x1300;});
        r5->base.y = r7->base.base.y + ({r5->base.unk4C - 0x1000;});
        if (abs(r5->base.unk48) < 0x1000 && abs(r5->base.unk4C) < 0x400 && r5->base.yspeed < 0) {
            r8 = 0x5e;
            r5->base.x -= r5->base.unk48;
            r5->base.y -= r5->base.unk4C;
            r2 = Rand16();
            for (r1 = 0; r1 < 5; ++r1) {
                if (r2 < 0x2AAA * (r1 + 1))
                    break;
            }
            r9 = r1;
            if ((r5->base.unk5C & 7) > 2)
                r8 = 0x60;
            if (ObjType38To52(r5))
                r8 = 0x61;

            for (r3_ = 0; r3_ < 0x20; ++r3_) {
                if (!(gUnk_020229D4 & (1 << r3_))) {
                    gUnk_020229D4 |= 1 << r3_;
                    break;
                }
            }
            gUnk_020229E0[r3_].spawnTable = 1;
            gUnk_020229E0[r3_].unk1 = 36;
            gUnk_020229E0[r3_].x = r5->base.x >> 8;
            gUnk_020229E0[r3_].y = r5->base.y >> 8;
            gUnk_020229E0[r3_].unk2 = 0;
            gUnk_020229E0[r3_].unk3 = 31;
            gUnk_020229E0[r3_].unk4 = 0;
            gUnk_020229E0[r3_].unk5 = 0;
            gUnk_020229E0[r3_].type = r8;
            gUnk_020229E0[r3_].subtype1 = r9;
            gUnk_020229E0[r3_].unkF = 0;
            gUnk_020229E0[r3_].subtype2 = 1;
            gUnk_020229E0[r3_].unk22 = 0;
            gUnk_020229E0[r3_].unk1A = 0;
            gUnk_020229E0[r3_].unk1C = 0;
            gUnk_020229E0[r3_].unk1E = 0;
            gUnk_020229E0[r3_].unk20 = 0;
            gUnk_020229E0[r3_].unk11 = 0;
            gUnk_020229E0[r3_].unk12 = 0;
            gUnk_020229E0[r3_].unk14 = 0;
            gUnk_020229E0[r3_].unk16 = 0;
            gUnk_020229E0[r3_].unk18 = 0;
            CreateObject(r7->base.base.unk56, &gUnk_020229E0[r3_])->base.parent = r7;
            if (!r7->base.base.unk0) --r7->unkDE;
            r5->base.flags |= 0x1000;
            r5->base.y -= 0x800;
            sub_0808AE30(r5, 0, 0x2B4, 0);
            PlaySfx(&r5->base, 500);
        }
    }
}

static void sub_0809CDBC(struct Object2 *r12) {
    struct Kirby *r4 = r12->base.kirby1;

    if (Rand16() & 1)
        r12->unk83 = gUnk_08351648[r12->type].unk0;
    else
        r12->unk83 = gUnk_08351648[r12->type].unk1;
    r12->base.counter = 0;
    r12->unk9F = 0;
    r12->unk9E = 0;
    r12->base.flags |= (0x800 | 0x200 | 0x100 | 0x40);
    r12->base.unkC |= 1;
    r12->base.flags &= ~0x20;
    r12->unk80 = 0;
    r12->unk86 = r4->base.base.unk56;
    r12->unk88 = r4->base.base.unk68;
    r12->unk78 = sub_0809CE80;
    r12->base.unkC |= 0x400;
    r12->base.kirby1 = r4->base.base.parent;
}

static void sub_0809CE80(struct Object2 *r4) {
    u8 r6, r3, r12;
    u16 r2, r1;
    struct Kirby *r9 = r4->base.kirby1;

    if (r4->base.counter < 8)
        r4->base.unk54 = gUnk_08352DD0[r4->base.counter];
    if (++r4->base.counter > 30) {
        r6 = 0x5e;
        r12 = 0;
        if (r4->unk88 & 0x100000)
            r6 = 0x63;
        if (r6 == 0x5E) {
            r2 = Rand16();
            for (r1 = 0; r1 < 5; ++r1) {
                if (r2 < 0x2AAA * (r1 + 1))
                    break;
            }
            r12 = r1;
        }
        for (r3 = 0; r3 < 0x20; ++r3) {
            if (!(gUnk_020229D4 & (1 << r3))) {
                gUnk_020229D4 |= 1 << r3;
                break;
            }
        }
        gUnk_020229E0[r3].spawnTable = 1;
        gUnk_020229E0[r3].unk1 = 36;
        gUnk_020229E0[r3].x = r4->base.x >> 8;
        gUnk_020229E0[r3].y = r4->base.y >> 8;
        gUnk_020229E0[r3].unk2 = 0;
        gUnk_020229E0[r3].unk3 = 31;
        gUnk_020229E0[r3].unk4 = 0;
        gUnk_020229E0[r3].unk5 = 0;
        gUnk_020229E0[r3].type = r6;
        gUnk_020229E0[r3].subtype1 = r12;
        gUnk_020229E0[r3].unkF = 0;
        gUnk_020229E0[r3].subtype2 = 2;
        gUnk_020229E0[r3].unk22 = 0;
        gUnk_020229E0[r3].unk1A = 0;
        gUnk_020229E0[r3].unk1C = 0;
        gUnk_020229E0[r3].unk1E = 0;
        gUnk_020229E0[r3].unk20 = 0;
        gUnk_020229E0[r3].unk11 = 0;
        gUnk_020229E0[r3].unk12 = 0;
        gUnk_020229E0[r3].unk14 = 0;
        gUnk_020229E0[r3].unk16 = 0;
        gUnk_020229E0[r3].unk18 = 0;
        CreateObject(r4->base.unk56, &gUnk_020229E0[r3])->base.parent = r9;
        r4->base.flags |= 0x1000;
        sub_0808AE30(r4, 0, 0x2B4, 0);
    }
}

void sub_0809CFC4(struct Object2 *r12) {
    if (Rand16() & 1)
        r12->unk83 = gUnk_08351648[r12->type].unk0;
    else
        r12->unk83 = gUnk_08351648[r12->type].unk1;
    r12->base.counter = 0;
    r12->unk9F = 1;
    r12->base.flags |= 0x2000000 | 0x40 | 0x100 | 0x200 | 0x400 | 0x800;
    r12->base.unkC |= 1;
    r12->base.flags &= ~0x20;
    r12->unk78 = nullsub_123;
    r12->base.unkC |= 0x400;
}

static void sub_0809D060(struct Object2 *r4) {
    r4->base.counter = 0;
    r4->unk9E = 0;
    r4->unk9F = 0;
    r4->unk85 = 0;
    r4->unk83 = gUnk_08351648[r4->type].unk0;
    r4->unk78 = sub_0809D1E0;
    r4->unk80 = 0;
    r4->base.flags &= ~0x8;
    r4->base.flags &= ~0x40;
    r4->base.flags &= ~0x800;
    r4->base.flags &= ~(0x200000 | 0x20000);
    r4->base.flags &= ~(0x40000 | 0x100);
    r4->base.flags &= ~(0x100000 | 0x10000);
    r4->base.unkC |= (0x800 | 0x1);
    r4->base.unk5C = 0x81;
    r4->base.unk68 = 0;
    r4->base.yspeed = 0x300;
    if (gUnk_08D610B4[ObjTypeAltIdx(r4)])
        sub_08088398(r4, gUnk_08D610B4[ObjTypeAltIdx(r4)]);
    PlaySfx(&r4->base, 362);
    if (r4->object && !ObjType43To52(r4)
        && (r4->object->unk2 || r4->object->unk3 != 31))
        ++*sub_08002888(0, r4->object->unk4, gCurLevelInfo[r4->base.unk56].unk65E);
}

static void sub_0809D1E0(struct Object2 *r5) {
    u32 unk85; // trick required for matching

    if (r5->base.x > gCurLevelInfo[r5->base.unk56].unk50 || r5->base.x < gCurLevelInfo[r5->base.unk56].unk48)
        r5->base.xspeed = 0;
    if (r5->base.y < gCurLevelInfo[r5->base.unk56].unk4C)
        r5->base.y = gCurLevelInfo[r5->base.unk56].unk4C;
    if (!(r5->base.flags & 0x40)) {
        r5->base.yspeed -= 5;
        if (r5->base.yspeed < -0x300)
            r5->base.yspeed = -0x300;
        unk85 = r5->unk85;
        if (!unk85)
            r5->unk80 = unk85;
        if (r5->base.yspeed > 0) return;
    }
    if (r5->base.unk62 & 4) {
        if (!r5->unk85) {
            r5->base.unk68 = 130;
            PlaySfx(&r5->base, 356);
            r5->unk85 = 1;
            r5->base.xspeed >>= 1;
            r5->unk83 = gUnk_08351648[r5->type].unk1;
            r5->base.flags &= ~2;
            sub_0806FE64(3, r5);
            if (r5->base.xspeed > 0)
                sub_08089864(r5, 8, 16, 0);
            else
                sub_08089864(r5, 8, 16, 1);
        } else {
            goto _0809D374;
        }
    } else if (r5->unk85) {
    _0809D374:
        if (r5->unk83 == gUnk_08351648[r5->type].unk1) {
            r5->base.flags &= ~2;
            if (r5->base.flags) ++r5->unk83;
        } else {
            r5->base.flags |= 4;
        }
        if (r5->unk85 == 30) {
            r5->base.xspeed = 0;
            ++r5->base.counter;
        } else {
            if (!(r5->unk85 & 7)) {
                if (r5->base.xspeed > 0)
                    sub_08089864(r5, 8, 16, 0);
                else
                    sub_08089864(r5, 8, 16, 1);
            }
            ++r5->unk85;
        }
    }
    if (r5->base.counter > 170) {
        if (r5->base.counter == 171)
            PlaySfx(&r5->base, 380);
        r5->base.flags |= 0x40;
        r5->base.xspeed = gUnk_08352DD8[2 * r5->unk9E + 0];
        r5->base.yspeed = gUnk_08352DD8[2 * r5->unk9E + 1];
        ++r5->unk9E;
        if (r5->unk9E > 5)
            r5->unk9E = 0;
    }
    if (r5->base.counter == 170 || r5->base.counter == 202)
        sub_0808BA6C(r5, 0, 0x2A3, 1);
    if (r5->base.x > gCurLevelInfo[r5->base.unk56].unk50 || r5->base.x < gCurLevelInfo[r5->base.unk56].unk48)
        r5->base.xspeed = 0;
    if (!r5->unk90 && (r5->base.counter > 255 || r5->unk80 <= -12)) {
        PlaySfx(&r5->base, 358);
        sub_0806FE64(3, r5);
        sub_0808AE30(r5, 0, 665, 0);
        r5->base.flags |= 0x1000;
    }
}

static void sub_0809D5D0(struct Object2 *ip) {
    ip->base.counter = 0;
    ip->unk83 = gUnk_08351648[ip->type].unk0;
    ip->unk78 = sub_0809D654;
    ip->base.xspeed = 0;
    ip->base.yspeed = 0;
    ip->unk85 = 1;
    ip->base.flags &= ~0x20;
    ip->base.flags |= 0x40;
    ip->base.flags |= 0x100 | 0x200;
    ip->base.flags |= 0x8000;
    ip->base.flags &= ~0x40000;
    ip->base.unk68 = 0;
    ip->base.unk5C = 0xFFFF;
    ip->base.unkC |= 0x400;
    sub_0807DBCC(ip);
}

static void sub_0809D654(struct Object2 *r4) {
    if (r4->unk85 <= 6) {
        if ((r4->base.counter & 7) == r4->unk85) {
            r4->base.flags &= ~0x400;
            r4->unk83 = gUnk_08351648[r4->type].unk1;
        } else if ((r4->base.counter & 7) == 7) {
            r4->base.flags |= 0x400;
            ++r4->unk85;
        }
        if (r4->base.counter & 2)
            r4->base.yspeed = -0x100;
        else
            r4->base.yspeed = 0x100;
    } else {
        r4->base.yspeed = 0;
        r4->base.flags |= 0x400;
        r4->base.flags |= 0x1000;
        return;
    }
    if (++r4->base.counter > 120) {
        sub_0808AE30(r4, 0, 658, 0);
        r4->base.flags |= 0x1000;
    }
}

static void sub_0809D710(struct Object2 *r3) {
    if (r3->unk78 != sub_0809F988) {
        r3->base.counter = 0;
        if (Rand16() & 1)
            r3->unk83 = gUnk_08351648[r3->type].unk0;
        else
            r3->unk83 = gUnk_08351648[r3->type].unk1;
        r3->unk78 = sub_0809F988;
        r3->base.flags &= ~(0x100 | 0x20);
        r3->base.flags |= 0x40;
        r3->base.flags &= ~(0x40000 | 0x10000000 | 0x20000000 | 0x40000000 | 0x80000000);
        r3->base.flags |= 0x8000;
        if (r3->base.unk5C & 0x20)
            r3->base.unk5C = 32;
        else
            r3->base.unk5C = 0;
        r3->base.xspeed = 0;
        r3->base.yspeed = -0x40;
    }
}

static void sub_0809D7C8(struct Object2 *r8) {
    u8 r4;
    struct Sprite *r7 = &r8->base.unk10;

    if (r8->base.unk10.unk0 && !(r8->base.flags & 0x400)
        && gKirbys[gUnk_0203AD3C].base.base.unk60 == r8->base.unk60) {
        r7->unk10 = (r8->base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r8->base.unk54;
        r7->unk12 = (r8->base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r8->base.unk55;
        r7->unk10 += gUnk_0203AD18[0];
        r7->unk12 += gUnk_0203AD18[1];
        r4 = r7->unk1C;
        r7->unk1C = 0;
        sub_08155128(r7);
        r7->unk1C = r4;
        if (r8->base.flags & 1)
            r7->unk8 &= ~0x400;
        else
            r7->unk8 |= 0x400;
        if (r8->base.flags & 0x4000)
            sub_081564D8(r7);
        else
            sub_0815604C(r7);
    }
}

void sub_0809D8C8(struct Object2 *r4) {
    struct Object2 *r5 = r4;
    s32 r7 = 0, r6 = 0;
    s32 r2;

    if ((r2 = r4->base.x + (r4->base.unk3E << 8)) >= gCurLevelInfo[r4->base.unk56].unk50) {
        r6 = gCurLevelInfo[r4->base.unk56].unk50 - r2;
        r4->base.x += r6;
    } else if ((r2 = r4->base.x + (r4->base.unk3C << 8)) <= gCurLevelInfo[r4->base.unk56].unk48) {
        r6 = gCurLevelInfo[r4->base.unk56].unk48 - r2;
        r4->base.x += r6;
    }
    if ((r2 = r5->base.y + (r5->base.unk3F << 8)) >= gCurLevelInfo[r5->base.unk56].unk54) {
        r7 = gCurLevelInfo[r5->base.unk56].unk54 - r2;
        r4->base.y += r7;
    } else if ((r2 = r5->base.y + (r5->base.unk3D << 8)) <= gCurLevelInfo[r5->base.unk56].unk4C) {
        r7 = gCurLevelInfo[r5->base.unk56].unk4C - r2;
        r4->base.y += r7;
    }
    if (r4->base.flags & 0x800000)
        sub_08009DF8(r4);
    else
        sub_08009DE8(r4);
    r4->base.x -= r6;
    r4->base.y -= r7;
}

u8 sub_0809D998(struct Object2 *r2) {
    s32 r4 = r2->base.x + r2->base.xspeed, r2_;

    if (r4 <= gCurLevelInfo[r2->base.unk56].unk50 && r4 >= gCurLevelInfo[r2->base.unk56].unk48) {
        r2_ = r2->base.y + ((r2->base.unk3F + 1) << 8);
        if (r2_ <= gCurLevelInfo[r2->base.unk56].unk54 && r2_ >= gCurLevelInfo[r2->base.unk56].unk4C) {
            if (gUnk_082D88B8[sub_080023E4(r2->base.unk56, r4 >> 12, r2_ >> 12)] & 1)
                return 1;
        }
    }
    return 0;
}

void sub_0809DA30(struct Object2 *r5) {
    u16 r2;
    s32 r1;

    switch (r5->type) {
    case OBJ_GLUNK_BULLET: case OBJ_SHOTZO_BULLET: case OBJ_JACK_STAR:
        PlaySfx(&r5->base, 303);
        sub_0808AE30(r5, 0, 0x298, 0);
        break;
    case OBJ_FOLEY_LEAVES: case OBJ_UNKNOWN_A0: case OBJ_BATAFIRE_FIREBALL: case OBJ_APPLE: 
    case OBJ_PRANK_FIRE: case OBJ_PRANK_ICE: case OBJ_WIZ_FOOTBALL: case OBJ_WIZ_CAR: 
    case OBJ_WIZ_APPLE: case OBJ_SIR_KIBBLE_CUTTER: case OBJ_CUPIE_ARROW:
        if (r5->unk80 <= 0) {
            r2 = Rand16();
            if (r2 < 0x5555)
                r1 = 0;
            else if (r2 < 0xAAAA)
                r1 = 1;
            else
                r1 = 2;
            switch (r1) {
            case 1:
                PlaySfx(&r5->base, 300);
                break;
            case 2:
                PlaySfx(&r5->base, 301);
                break;
            default:
                PlaySfx(&r5->base, 302);
                break;
            }
            sub_0808AE30(r5, 0, 0x292, Rand16() & 3);
        } else {
            PlaySfx(&r5->base, 303);
            sub_0808AE30(r5, 0, 0x298, 0);
        }
        break;
    case OBJ_BANG_BANG: case OBJ_BONKERS_NUT_SMALL: case OBJ_BONKERS_NUT_LARGE: case OBJ_PRANK_BOMB: 
    case OBJ_BOMBAR_BOMB: case OBJ_WIZ_BOMB: case OBJ_THROWN_BOMB_2: case OBJ_SHOOTY_BOMB:
        if (r5->unk80 <= 0) {
            PlaySfx(&r5->base, 310);
            sub_0808AE30(r5, 0, 0x29B, 0);
        } else {
            sub_08073D2C(r5);
        }
        break;
    case OBJ_SCARFY: case OBJ_SCARFY_FALLING:
        if (r5->base.unkC & 2 || r5->unk80 <= 0) {
            r2 = Rand16();
            if (r2 < 0x5555)
                r1 = 0;
            else if (r2 < 0xAAAA)
                r1 = 1;
            else
                r1 = 2;
            switch (r1) {
            case 1:
                PlaySfx(&r5->base, 300);
                break;
            case 2:
                PlaySfx(&r5->base, 301);
                break;
            default:
                PlaySfx(&r5->base, 302);
                break;
            }
            sub_0808AE30(r5, 0, 0x292, Rand16() & 3);
        } else {
            sub_08073D2C(r5);
        }
        break;
    case OBJ_FOLEY_1: case OBJ_FOLEY_2: case OBJ_MOLEY_BOMB: case OBJ_MOLEY_BARREL:
        sub_08073D2C(r5);
        break;
    default:
        r2 = Rand16();
        if (r2 < 0x5555)
            r1 = 0;
        else if (r2 < 0xAAAA)
            r1 = 1;
        else
            r1 = 2;
        switch (r1) {
        case 1:
            PlaySfx(&r5->base, 300);
            break;
        case 2:
            PlaySfx(&r5->base, 301);
            break;
        default:
            PlaySfx(&r5->base, 302);
            break;
        }
        sub_0808AE30(r5, 0, 0x292, Rand16() & 3);
        sub_0806FE64(1, r5);
        break;
    }
}

static void sub_0809E424(struct Object2 *sb) {
    struct Task *task = TaskCreate(sub_0809E55C, sizeof(struct Object4), 0x3500, 0, sub_0803DCCC);
    struct Object4 *r7;
    u16 r1;

    TaskGetStructPtr(task, r7);
    sub_0803E3B0(r7);
    r7->unk0 = 3;
    r7->unk34 = sb->base.x;
    r7->unk38 = sb->base.y;
    r7->unk44 = sb;
    r7->unk42 = sb->base.unk60;
    r7->unk6 |= 0x4000;
    Rand32();
    r1 = Rand16();
    r7->unk3C = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
    Rand32();
    r1 = Rand16();
    r7->unk3E = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
    if (gUnk_03000510.unk4 & ((1 << sb->base.unk56) | 0x10))
        r7->unk6 |= 0x2000;
    r7->unk6 |= 0x4000;
    sub_080709F8(r7, &r7->unkC, (void *)0x6012000, 0x297, 1, 12);
}

static void sub_0809E55C(void) {
    struct Object4 *r4, *r0_, *r7 = TaskGetStructPtr(gCurTask, r0_);
    struct Object2 *ip = r7->unk44;
    u8 r3, r0;
    u16 r1;

    if (r7->unk6 & 0x1000) {
        TaskDestroy(gCurTask);
    } else if (ip->base.flags & 0x1000) {
        r7->unk6 |= 0x1000;
    } else {
        if (ip) {
            if (gUnk_03000510.unk4 & ((1 << ip->base.unk56) | 0x10) && !(r7->unk6 & 0x2000)) {
                sub_0803DBC8(r7);
                return;
            }
        } else {
            r4 = r7;
            r3 = 0;
            if (gKirbys[0].base.base.unk60 != r7->unk42) {
                r3 = 1;
                if (gKirbys[1].base.base.unk60 != r7->unk42) {
                    r3 = 2;
                    if (gKirbys[2].base.base.unk60 != r7->unk42) {
                        r3 = 3;
                        if (gKirbys[3].base.base.unk60 != r7->unk42)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(r4->unk6 & 0x2000)) {
                sub_0803DBC8(r4);
                return;
            }
        }
        // TODO: fix this loop
        for (r0 = gUnk_0203AD44; r0; --r0) {
            if (gCurLevelInfo[r0 - 1].currentRoom == r7->unk42 && !(gUnk_02026D50[gCurLevelInfo[r0 - 1].unk65E] & 8)) {
                goto _0809E6B6;
            }
        }
#ifndef NONMATCHING
        asm("mov\t%0, #1":"=r"(r0));
#else
        r0 = 1;
#endif
        if (r0) {
            r7->unk6 |= 0x1000;
        }
    _0809E6B6:
        if (r7->unk6 & 2) {
            if (r7->unk8 == 1) {
                r7->unk6 |= 0x1000;
                return;
            }
            ++r7->unk8;
        }
        if (r7->unk1 > 10) {
            Rand32();
            r1 = Rand16();
            r7->unk3C = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
            Rand32();
            r1 = Rand16();
            r7->unk3E = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
            if (r7->unk8 != 1)
                r7->unk6 |= 4;
        } else {
            r7->unk3E -= gUnk_08352DF8[r7->unk1 >> 1];
        }
        r7->unk34 = ip->base.x + r7->unk3C;
        r7->unk38 = ip->base.y + r7->unk3E;
        sub_0806FAC8(r7);
    }
}

void sub_0809E79C(struct Object2 *sb) {
    struct Task *task = TaskCreate(sub_0809E8D4, sizeof(struct Object4), 0x3500, 0, sub_0803DCCC);
    struct Object4 *r7;
    u16 r1;

    TaskGetStructPtr(task, r7);
    sub_0803E3B0(r7);
    r7->unk0 = 3;
    r7->unk34 = sb->base.x;
    r7->unk38 = sb->base.y;
    r7->unk44 = sb;
    r7->unk42 = sb->base.unk60;
    r7->unk6 |= 0x4000;
    Rand32();
    r1 = Rand16();
    r7->unk3C = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
    Rand32();
    r1 = Rand16();
    r7->unk3E = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
    if (gUnk_03000510.unk4 & ((1 << sb->base.unk56) | 0x10))
        r7->unk6 |= 0x2000;
    r7->unk6 |= 0x4000;
    sub_080709F8(r7, &r7->unkC, (void *)0x6012000, 0x29D, 0, 12);
}

static void sub_0809E8D4(void) {
    struct Object4 *r4, *r0_, *r7 = TaskGetStructPtr(gCurTask, r0_);
    struct Object2 *ip = r7->unk44;
    u8 r3, r0;
    u16 r1;

    if (r7->unk6 & 0x1000) {
        TaskDestroy(gCurTask);
    } else if (ip->base.flags & 0x1000) {
        r7->unk6 |= 0x1000;
    } else {
        if (ip) {
            if (gUnk_03000510.unk4 & ((1 << ip->base.unk56) | 0x10) && !(r7->unk6 & 0x2000)) {
                sub_0803DBC8(r7);
                return;
            }
        } else {
            r4 = r7;
            r3 = 0;
            if (gKirbys[0].base.base.unk60 != r7->unk42) {
                r3 = 1;
                if (gKirbys[1].base.base.unk60 != r7->unk42) {
                    r3 = 2;
                    if (gKirbys[2].base.base.unk60 != r7->unk42) {
                        r3 = 3;
                        if (gKirbys[3].base.base.unk60 != r7->unk42)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(r4->unk6 & 0x2000)) {
                sub_0803DBC8(r4);
                return;
            }
        }
        // TODO: fix this loop
        for (r0 = gUnk_0203AD44; r0; --r0) {
            if (gCurLevelInfo[r0 - 1].currentRoom == r7->unk42 && !(gUnk_02026D50[gCurLevelInfo[r0 - 1].unk65E] & 8)) {
                goto _0809EA1C;
            }
        }
#ifndef NONMATCHING
        asm("mov\t%0, #1":"=r"(r0));
#else
        r0 = 1;
#endif
        if (r0) {
            r7->unk6 |= 0x1000;
        }
    _0809EA1C:
        if (r7->unk6 & 2) {
            r7->unk6 |= 0x1000;
        } else {
            if (r7->unk1 == 13 || r7->unk1 == 45 || r7->unk1 == 49) {
                Rand32();
                r1 = Rand16();
                r7->unk3C = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
                Rand32();
                r1 = Rand16();
                r7->unk3E = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
            }
            r7->unk34 = ip->base.x + r7->unk3C;
            r7->unk38 = ip->base.y + r7->unk3E;
            switch (r7->unk1) {
            case 0:
                r7->unk3C += 0x100;
                break;    
            case 1:
                r7->unk3C -= 0x100;
                r7->unk3E += 0x100;
                break;
            case 2:
                r7->unk3C -= 0x100;
                r7->unk3E -= 0x100;
                break;
            case 13:
                r7->unk3C += 0x100;
                break;
            case 14:
                r7->unk3C -= 0x100;
                r7->unk3E += 0x100;
                break;
            case 15:
                r7->unk3C -= 0x100;
                r7->unk3E -= 0x100;
                break;
            }
            sub_0806FAC8(r7);
        }
    }
}

static void sub_0809EB90(struct Object2 *sb) {
    struct Task *task = TaskCreate(sub_0809ECD0, sizeof(struct Object4), 0x3500, 0, sub_0803DCCC);
    struct Object4 *r7;
    u16 r1;

    TaskGetStructPtr(task, r7);
    sub_0803E3B0(r7);
    r7->unk0 = 3;
    r7->unk34 = sb->base.x;
    r7->unk38 = sb->base.y;
    r7->unk44 = sb;
    r7->unk42 = sb->base.unk60;
    r7->unk8 = 0;
    r7->unk6 |= 0x4000;
    r7->unk4 = 0x40;
    Rand32();
    r1 = Rand16();
    r7->unk3C = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
    Rand32();
    r1 = Rand16();
    r7->unk3E = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
    if (gUnk_03000510.unk4 & ((1 << sb->base.unk56) | 0x10))
        r7->unk6 |= 0x2000;
    r7->unk6 |= 0x4000;
    sub_080709F8(r7, &r7->unkC, (void *)0x6012000, 0x29e, 0, 12);
}

static void sub_0809ECD0(void) {
    struct Object4 *r4, *r0_, *r7 = TaskGetStructPtr(gCurTask, r0_);
    struct Object2 *ip = r7->unk44;
    u8 r3, r0;

    if (r7->unk6 & 0x1000) {
        TaskDestroy(gCurTask);
    } else if (ip->base.flags & 0x1000) {
        r7->unk6 |= 0x1000;
    } else {
        if (ip) {
            if (gUnk_03000510.unk4 & ((1 << ip->base.unk56) | 0x10) && !(r7->unk6 & 0x2000)) {
                sub_0803DBC8(r7);
                return;
            }
        } else {
            r4 = r7;
            r3 = 0;
            if (gKirbys[0].base.base.unk60 != r7->unk42) {
                r3 = 1;
                if (gKirbys[1].base.base.unk60 != r7->unk42) {
                    r3 = 2;
                    if (gKirbys[2].base.base.unk60 != r7->unk42) {
                        r3 = 3;
                        if (gKirbys[3].base.base.unk60 != r7->unk42)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(r4->unk6 & 0x2000)) {
                sub_0803DBC8(r4);
                return;
            }
        }
        // TODO: fix this loop
        for (r0 = gUnk_0203AD44; r0; --r0) {
            if (gCurLevelInfo[r0 - 1].currentRoom == r7->unk42 && !(gUnk_02026D50[gCurLevelInfo[r0 - 1].unk65E] & 8)) {
                goto _0809EE18;
            }
        }
#ifndef NONMATCHING
        asm("mov\t%0, #1":"=r"(r0));
#else
        r0 = 1;
#endif
        if (r0) {
            r7->unk6 |= 0x1000;
        }
    _0809EE18:
        if (r7->unk6 & 2) {
            if (r7->unk8) {
                r7->unk6 |= 0x1000;
                return;
            }
            r7->unk8 = 1;
        }
        if (r7->unk1 == 18) {
            u16 r1;

            Rand32();
            r1 = Rand16();
            r7->unk3C = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
            Rand32();
            r1 = Rand16();
            r7->unk3E = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
            r7->unk4 = -0x40;
            if (!r7->unk8)
                r7->unk6 |= 4;
        }
        if (r7->unk1 == 36) {
            u16 r1;

            Rand32();
            r1 = Rand16();
            r7->unk3C = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
            Rand32();
            r1 = Rand16();
            r7->unk3E = ({12 - ((r1 % 16) + (r1 % 8));}) << 8;
            r7->unk4 = 0x40;
        }
        if (r7->unk1 >= 18) {
            r7->unk3E -= 0x40;
            r7->unk3E -= ((r7->unk1 - 18) << 4);
            r7->unk4 += 7;
        } else {
            r7->unk3E -= 0x40;
            r7->unk3E -= r7->unk1 << 4;
            r7->unk3C += r7->unk4;
            r7->unk4 -= 7;
        }
        r7->unk34 = ip->base.x + r7->unk3C;
        r7->unk38 = ip->base.y + r7->unk3E;
        sub_0806FAC8(r7);
    }
}

void sub_0809EF88(struct Object2 *obj) {
    if (!(gUnk_03000510.unk4 & ((1 << obj->base.unk56) | 0x10))
        && obj->base.y + (obj->base.unk3D << 8) >= gCurLevelInfo[obj->base.unk56].unk54 + 0x1800) {
        obj->unk80 = 0;
        if (ObjType38To52(obj)) {
            if (!(obj->object->unk22 & 4))
                sub_08086C48(obj);
            if (ObjType38To52(obj))
                if (!ObjType43To52(obj))
                    sub_0809D060(obj);
        }
        obj->base.flags |= 0x1000;
    }
}

void InitObject(struct Object2* arg0, struct Object* arg1, u8 arg2) {
    struct Object* objB0;
    u32 mask;
    sub_0803E380(&arg0->base);
    arg0->base.unk0 = 1;
    arg0->base.unk60 = gCurLevelInfo[arg2].currentRoom;
    arg0->base.unk56 = arg2;
    arg0->base.unk63 = 1;
    arg0->unk83 = 0;
    arg0->type = arg1->type;
    arg0->unk85 = 0;
    arg0->base.x = arg1->x << 8;
    arg0->base.y = arg1->y << 8;
    arg0->base.unk48 = arg0->base.x;
    arg0->base.unk4C = arg0->base.y;
    sub_0803E2B0(&arg0->base, -4, -8, 4, 10);
    sub_0809D8C8(arg0);
    arg0->base.x = arg1->x << 8;
    arg0->base.y = arg1->y << 8;
    arg0->unk78 = gUnk_08351648[arg0->type].unk10;
    arg0->unk7C = 0;
    arg0->unk8C = 0;
    arg0->object = arg1;
    arg0->subtype = arg1->subtype2;
    arg0->unk84 = gUnk_08351648[arg0->type].unk6;
    arg0->unk86 = 0;
    arg0->unk90 = 0;
    arg0->unk91 = 0;
    arg0->unk92 = 0;
    arg0->unk93 = 0;
    arg0->unk94 = 0;
    arg0->unk95 = 0;
    arg0->unk96 = 0;
    arg0->unk98 = 0;
    arg0->unk9A = 0;
    arg0->base.flags = 0x10000000;
    arg0->base.counter = 0;
    arg0->unk9E = 0;
    arg0->unk9F = 0xff;
    if (ObjType38To52(arg0)) {
        if (arg0->type == OBJ_DARK_MIND_FORM_1) {
            arg0->unk80 = gUnk_08351608[arg1->subtype2][gUnk_0203AD30 - 1];
            arg0->base.flags |= 0x4000000;
        }
        else {
            arg0->unk80 = gUnk_08351530[ObjTypeAltIdx(arg0)][gUnk_0203AD30 - 1];
            arg0->base.flags |= 0x4000000;
        }
    }
    else {
        arg0->unk80 = gUnk_08351648[arg0->type].unk4;
    }
    mask = ~7;
    arg0->base.unk68 = 0x82;
    if (ObjType5ETo6C(arg0) || ObjType6Dto9A(arg0)) { 
        arg0->base.unk5C &= mask;
    }
    else {
        arg0->base.unk5C &= mask;
        arg0->base.unk5C |= 1;
    }
    if (ObjType38To52(arg0)) {
        arg0->base.unk5C |= 0x108000;
    }
    arg0->kirby3 = sub_0803D368(arg0);
    arg0->unkA0 = arg0->kirby3->base.base.x >> 8;
    arg0->unkA2 = arg0->kirby3->base.base.y >> 8;
    arg0->unk9F = 0;
    if (gUnk_08351648[arg0->type].unkC == 0) {
        arg0->base.flags |= 0x400;
        arg0->base.flags |= 8;
    }
    sub_08001678(arg1->unk2, arg1->unk3, gCurLevelInfo[arg2].unk65E, 1);
    if (ObjType0To37(arg0) || ObjType38To52(arg0) || ObjType53To5C(arg0)) {
        arg0->unk91 = gUnk_08352AD0[arg0->type].unk1;
        arg0->unk92 = gUnk_08352AD0[arg0->type].unk2;
        arg0->unk93 = gUnk_08352AD0[arg0->type].unk3;
        arg0->unk94 = gUnk_08352AD0[arg0->type].unk0;
        arg0->unk95 = gUnk_08352AD0[arg0->type].unk4;
        arg0->unk96 = gUnk_08352AD0[arg0->type].unk5;
        arg0->unk97 = 0;
    }
    else {
        arg0->unk91 = 0;
        arg0->unk92 = 0;
        arg0->unk93 = 0;
        arg0->unk94 = 0;
        arg0->unk95 = 0;
        arg0->unk96 = 0;
    }
    objB0 = arg0->object;
    if (ObjType0To37(arg0)
        || ObjType38To52(arg0)
        || ObjType53To64(arg0)) {
        if (arg0->object->unk22 & 2) {
            arg0->base.unkC |= 0x1000;
        }
    }
    if (ObjType0To32(arg0)) {
        if (arg0->object->unk22 & 0x8000) {
            arg0->base.unkC |= 0x10;
        }
    }
    if (ObjType6Dto99(arg0)) {
        arg0->base.unkC |= 4;
        arg0->base.unkC |= 1;
    }
    if (arg0->object->unk2 != 0 || arg0->object->unk3 != 31) {
        if (ObjType0To37(arg0)) {
            arg0->base.unkC |= 0x100;
        }
    }
    if (arg0->base.unk58 & 2) {
        arg0->base.unkC |= 8;
    }
    arg0->unkA4 = gCurLevelInfo[arg0->base.unk56].unkA0 >> 8;
    arg0->unkA6 = gCurLevelInfo[arg0->base.unk56].unkA4 >> 8;
    arg0->unkA8 = gCurLevelInfo[arg0->base.unk56].unkA8 >> 8;
    arg0->unkAA = gCurLevelInfo[arg0->base.unk56].unkAC >> 8;
}

void ObjectInitSprite(struct Object2* arg0) {
    u8 r7 = 0x1a, ret;
    u16 r4;
    if (ObjType6Dto99(arg0) || arg0->type == OBJ_EMPTY_9A) {
        r7 = 0x1e;
    }
    if (ObjType38To52(arg0)) {
        r7 = 0x1d;
    }
    if (gUnk_08351648[arg0->type].unkC != 0) {
        if (gKirbys[gUnk_0203AD3C].base.base.unk60 == arg0->base.unk60) {
            if (arg0->base.flags & 0x4000) {
                arg0->base.unk10.unk0 = sub_0803DD58(arg0->type);
            }
            else {
                arg0->base.unk10.unk0 = sub_081570B0(gUnk_08351648[arg0->type].unkC);
            }
            arg0->base.unk10.unk14 = r7 << 6;
            arg0->base.unk10.unkC = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk0;
            arg0->base.unk10.unk1A = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk2;
            arg0->base.unk10.unk16 = 0;
            arg0->base.unk10.unk1B = 0xff;
            arg0->base.unk10.unk1C = 0x10;
            r4 = gUnk_08351648[arg0->type].unk8;
            if (arg0->base.unkC & 0x10) {
                r4 = gUnk_08351648[0x32].unk8;
            }
            ret = sub_0803DF24(r4);
            if (ret == 0xff) {
                if (gKirbys[gUnk_0203AD3C].base.base.unk60 == arg0->base.unk60) {
                    sub_0803DFAC(r4, arg0->object->unkF);
                    ret = sub_0803DF24(r4);
                }
                else {
                    ret = 0;
                }
            }
            arg0->base.unk10.unk1F = ret;
            arg0->base.unk10.unk10 = arg0->base.x >> 8;
            arg0->base.unk10.unk12 = arg0->base.y >> 8;
            arg0->base.unk10.unk8 = 0x42000;
            arg0->base.unk10.unk20 = ~0;
            sub_08155128(&arg0->base.unk10);
        }
        else {
            arg0->base.unk10.unk0 = 0;
            arg0->base.unk10.unk14 = r7 << 6;
            arg0->base.unk10.unkC = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk0;
            arg0->base.unk10.unk1A = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk2;
            arg0->base.unk10.unk16 = 0;
            arg0->base.unk10.unk1B = 0xff;
            arg0->base.unk10.unk1C = 0x10;
            arg0->base.unk10.unk1F = 0;
            arg0->base.unk10.unk10 = arg0->base.x >> 8;
            arg0->base.unk10.unk12 = arg0->base.y >> 8;
            arg0->base.unk10.unk8 = 0xc2000;
            sub_08155128(&arg0->base.unk10);
        }
    }
}

struct Object2 *CreateEmpty(struct Object *r6, u8 r7) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0, ObjectDestroy);
    struct Object2 *r4;

    sub_0803E380(&TaskGetStructPtr(task, r4)->base);
    r4->base.unk10.unk0 = 0;
    r4->base.unk0 = 1;
    r4->base.unk60 = gCurLevelInfo[r7].currentRoom;
    r4->base.unk56 = r7;
    r4->unk83 = 0;
    r4->type = r6->type;
    r4->unk85 = 0;
    r4->unk80 = 0;
    r4->unk78 = nullsub_124;
    r4->unk7C = 0;
    r4->object = r6;
    r4->unk84 = 0;
    r4->unk86 = 0;
    r4->unk90 = 0;
    r4->unk8C = 0;
    r4->base.flags = 0;
    r4->kirby3 = NULL;
    r4->unk9F = 0;
    sub_08001678(r6->unk2, r6->unk3, gCurLevelInfo[r7].unk65E, 1);
    if (r6->unk3 == 31) r4->object = 0;
    r4->base.flags = 0xE40;
    return r4;
}

static void sub_0809F6BC(struct Object2 *r5) {
    u16 r1, r2;
    u8 r3, r6;

    if ((ObjType0To32(r5) || r5->type == OBJ_PRANK)
        && !(gUnk_0203AD10 & 4)
        && !(r5->base.unk58 & 0x200)
        && !(Rand16() & 0x3F)) {
        r2 = Rand16();
        for (r1 = 0; r1 < 5; ++r1) {
            if (r2 < 0x2AAA * (r1 + 1))
                break;
        }
        r6 = r1;
        for (r3 = 0; r3 < 0x20; ++r3) {
            if (!(gUnk_020229D4 & (1 << r3))) {
                gUnk_020229D4 |= 1 << r3;
                break;
            }
        }
        gUnk_020229E0[r3].spawnTable = 1;
        gUnk_020229E0[r3].unk1 = 36;
        gUnk_020229E0[r3].x = r5->base.x >> 8;
        gUnk_020229E0[r3].y = r5->base.y >> 8;
        gUnk_020229E0[r3].unk2 = 0;
        gUnk_020229E0[r3].unk3 = 31;
        gUnk_020229E0[r3].unk4 = 0;
        gUnk_020229E0[r3].unk5 = 0;
        gUnk_020229E0[r3].type = 94;
        gUnk_020229E0[r3].subtype1 = r6;
        gUnk_020229E0[r3].unkF = 0;
        gUnk_020229E0[r3].subtype2 = 2;
        gUnk_020229E0[r3].unk22 = 0;
        gUnk_020229E0[r3].unk1A = 0;
        gUnk_020229E0[r3].unk1C = 0;
        gUnk_020229E0[r3].unk1E = 0;
        gUnk_020229E0[r3].unk20 = 0;
        gUnk_020229E0[r3].unk11 = 0;
        gUnk_020229E0[r3].unk12 = 0;
        gUnk_020229E0[r3].unk14 = 0;
        gUnk_020229E0[r3].unk16 = 0;
        gUnk_020229E0[r3].unk18 = 0;
        CreateObject(r5->base.unk56, &gUnk_020229E0[r3]);
        sub_0808AE30(r5, 0, 0x2B4, 0);
    }
}

void ObjectSetFunc(struct Object2 *obj, u16 a2, void (*func)(struct Object2 *)) {
    obj->base.counter = 0;
    obj->unk9E = 0;
    if ((a2 << 16) != 0xFFFF0000)
        obj->unk83 = a2;
    obj->unk78 = func;
    obj->unk9F = -1;
    obj->base.flags |= 4;
}

static void sub_0809F818(struct Object2 *obj) {
    u32 r2 = obj->unk9D;

    obj->unk9D = gKirbys[0].unk118;
    obj->unk9C = (r2 ^ obj->unk9D) & obj->unk9D;
}

void sub_0809F840(struct Object2 *obj) {
    if ((((struct Kirby *)obj->base.parent)->base.base.flags & 0x1000 || ((struct Kirby *)obj->base.parent)->base.unk80 <= 0)
        && !(obj->base.unkC & 0x400)) {
        if (!(obj->base.flags & 0x1000))
            sub_0809DA30(obj);
        obj->unk80 = 0;
        obj->base.flags |= 0x1000;
    }
}

static void sub_0809F88C(struct Object2 *obj) {
    ++obj->base.counter;
    obj->base.unk10.unk1C = 0;
    if (obj->base.counter == 2) {
        obj->base.flags |= 0x1000;
        sub_0809DA30(obj);
    }
}

static void sub_0809F8BC(struct Object2 *obj) {
    struct Kirby *kirby = obj->base.parent;

    obj->base.flags |= 0x2F00;
    obj->base.unk10.unk8 = obj->base.unk10.unk8 & 0xFFFFF7FF;
    obj->base.unk10.unk8 |= kirby->base.base.unk10.unk8 & 0x800;
    obj->base.flags &= ~1;
    obj->base.flags |= (kirby->base.base.flags & 1);
    obj->base.x = kirby->base.base.x;
    obj->base.y = kirby->base.base.y;
    obj->base.unk54 = kirby->base.base.unk54;
    obj->base.unk55 = kirby->base.base.unk55;
    if (kirby->base.base.flags & 0x1000)
        obj->base.flags |= 0x1000;
}

static void sub_0809F938(struct Object2 *obj) {
    u32 unkC;

    obj->base.xspeed = 0;
    obj->base.yspeed = 0;
    obj->base.parent = obj->base.kirby1;
    obj->base.counter = 0;
    unkC = obj->base.unkC | 1;
    obj->unk78 = sub_0809F964;
    obj->base.unkC = unkC | 0x400;
}

static void sub_0809F964(struct Object2 *obj) {
    struct Kirby *kirby = obj->base.parent;

    obj->base.x = kirby->base.base.x;
    obj->base.y = kirby->base.base.y;
}

static void nullsub_123(struct Object2 *obj) {}

static void sub_0809F974(struct Object2 *obj) {
    u32 flags = obj->base.flags;

    flags |= 0x200;
    flags |= 0x40;
    flags &= ~0x20;
    obj->base.flags = flags;
}

static void sub_0809F988(struct Object2 *obj) {
    if (++obj->base.counter > 0x28) {
        if (++obj->base.counter > 0x1e) {
            sub_0809DA30(obj);
            obj->base.flags |= 0x1000;
        }
    }
}

static void nullsub_124(struct Object2 *obj) {}
