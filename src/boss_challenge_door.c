#include "boss_challenge_door.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"
#include "task.h"
#include "code_0806F780.h"

static void sub_08118C18(struct BossChallengeDoor *);
static void sub_08118D80(struct BossChallengeDoor *);
static void sub_08119094(struct BossChallengeDoor *);
static void sub_08119184(struct BossChallengeDoor *);
static void sub_081191A8(struct BossChallengeDoor *);
static void sub_081191B4(struct BossChallengeDoor *);
static void nullsub_126(struct BossChallengeDoor *);

extern const u16 gUnk_08357B24[];
extern const u16 gUnk_08357B3E[][3];

void *CreateBossChallengeDoor(struct Object *template, u8 a2) {
    struct BossChallengeDoor *door;
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct BossChallengeDoor), 0x1000, 0, ObjectDestroy);

    door = TaskGetStructPtr(t);
    InitObject(&door->obj2, template, a2);
    door->obj2.base.flags |= 0x201CB40;
    door->obj2.base.unk68 &= ~7;
    door->obj2.base.unk5C |= 0x20;
    door->obj2.base.y += 0x800;
    sub_0803E2B0(&door->obj2.base, -8, -8, 8, 8);
    sub_0803E308(&door->obj2.base, -8, -8, 8, 8);
    ObjectInitSprite(&door->obj2);
    door->obj2.base.sprite.unk14 = 0x7C0;
    gUnk_08351648[door->obj2.type].unk10(&door->obj2);
    return door;
}

static void sub_08118C18(struct BossChallengeDoor *door) {
    s32 bossIdx;
    struct Object4 *sign;
    struct BossChallengeDoor *d2;

    d2 = door;
    sub_08119094(d2);
    bossIdx = (*sub_08002888(1, 9, 0xFF) & 0xF0000) >> 16;
    if (bossIdx != 0xC) {
        if (d2->obj2.object->unk22 & 0x100)
            d2->unkB4 = sub_08092944(&d2->obj2.base, 0, 0x294, 10);
        else
            d2->unkB4 = sub_08092944(&d2->obj2.base, 0, 0x294, 3);
        door->unkB4->sprite.unk14 = 0x780;
        bossIdx =(*sub_08002888(1, 9, 0xFF) & 0xF0000) >> 16;
        sign = sub_0808B62C(&d2->obj2.base, gUnk_08357B3E[bossIdx][2], gUnk_08357B3E[bossIdx][0], gUnk_08357B3E[bossIdx][1], 0);
        door->unkB8 = sign;
        sign->sprite.palId = 0;
        Macro_081050E8(door->unkB8, &door->unkB8->sprite, gUnk_08357B3E[bossIdx][0], gUnk_08357B3E[bossIdx][1], door->unkB8->sprite.palId == 0);
        door->unkB8->sprite.unk14 = 0x780;
        door->unkB8->y = d2->obj2.base.y - 0x3C00;
        ObjectSetFunc(d2, 0, sub_08119184);
    }
    else {
        d2->obj2.base.flags |= 0x1400;
        ObjectSetFunc(d2, 2, sub_081191A8);
    }
}

#ifndef NONMATCHING
NAKED static void sub_08118D80(struct BossChallengeDoor *door) {
    asm(".include \"asm/nonmatching/sub_08118D80.inc\"");
}
#else
static void sub_08118D80(struct BossChallengeDoor *door) {
    struct BossChallengeDoor *d2;
    u16 bossIdx;
    struct LevelInfo *levels;
    struct LevelInfo *level;
    s32 x0, y0, w, h;
    u16 i;
    u16 j;
    u16 k;
    bool32 touched;
    const u16 *panim;
    u8 sp28, sp29;

    d2 = door;
    door->obj2.base.flags |= 4;
    bossIdx = (*sub_08002888(1, 9, 0xFF) & 0xF0000) >> 16;
    if (gCurLevelInfo[door->obj2.base.unk56].currentRoom == gCurLevelInfo[gUnk_0203AD3C].currentRoom) {
        if (door->unkB8->sprite.palId == 0) {
            if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == door->unkB8->roomId) {
                u16 anim2 = gUnk_08357B3E[bossIdx][0];

                door->unkB8->sprite.palId = sub_0803DF24(anim2);
                if (door->unkB8->sprite.palId == 0xFF)
                    door->unkB8->sprite.palId = sub_0803DFAC(anim2, (u8)gUnk_08357B3E[bossIdx][1]);
            }
            else {
                door->unkB8->sprite.palId = 0;
            }
        }
        if (d2->unkB8->sprite.palId != 0) {
            struct Sprite spr;

            spr.tilesVram = 0x6000000;
            spr.animId = gUnk_08357B3E[bossIdx][0];
            spr.variant = gUnk_08357B3E[bossIdx][1];
            spr.unk1B = 0xFF;
            spr.x = 0;
            spr.y = 0;
            spr.unk14 = 0;
            spr.unk16 = 0;
            spr.unk1C = 0x10;
            spr.palId = door->unkB8->sprite.palId & 0xF;
            spr.unk8 = 0x80000;
            sub_08155128(&spr);
            sub_0803D280((spr.palId << 28) >> 24, 0x10);
        }
    }

    level = &gCurLevelInfo[door->obj2.base.unk56];
    x0 = door->obj2.base.x + (door->obj2.base.unk3C * 0x100);
    y0 = door->obj2.base.y + (door->obj2.base.unk3D * 0x100);
    w = (door->obj2.base.unk3E - door->obj2.base.unk3C) * 0x100;
    h = (door->obj2.base.unk3F - door->obj2.base.unk3D) * 0x100;
    levels = gCurLevelInfo;
    touched = FALSE;
    for (i = 0; i < gUnk_0203AD30; i++) {
        struct Kirby *kirby = &gKirbys[i];

        if (level->currentRoom != levels[i].currentRoom)
            continue;
        if (!(kirby->movementState & 0x40))
            continue;
        if (!(kirby->base.base.base.unkC & 0x1000))
            continue;
        if (x0 > kirby->base.base.base.x)
            continue;
        if (x0 + w < kirby->base.base.base.x)
            continue;
        if (y0 > kirby->base.base.base.y)
            continue;
        if (y0 + h >= kirby->base.base.base.y) {
            touched = TRUE;
            break;
        }
    }
    if (touched) {
        for (j = 0; j < gUnk_0203AD30; j++)
            ;
        panim = &gUnk_08357B24[(*sub_08002888(1, 9, gCurLevelInfo[door->obj2.base.unk56].unk65E) & 0xF0000) >> 16];
        for (k = 0; k < 4; k++) {
            struct Kirby *kirby = &gKirbys[k];
            u16 a;

            if (kirby->hp <= 0)
                continue;
            if (level->currentRoom != kirby->base.base.base.roomId)
                continue;
            a = *panim;
            sub_08002D40(a, &sp28, &sp29);
            gKirbys[k].base.base.base.unkC |= 0x800000;
            sub_0805BDF4(kirby, a, sp28, sp29);
        }
        door->obj2.unk78 = sub_081191B4;
    }
    door->obj2.base.counter++;
}
#endif

#ifndef NONMATCHING
NAKED static void sub_08119094(struct BossChallengeDoor *door) {
    asm(".include \"asm/nonmatching/sub_08119094.inc\"");
}
#else
static void sub_08119094(struct BossChallengeDoor *door) {
    u32 *ptr;
    u32 field;
    u32 val, val2;

    ptr = sub_08002888(1, 9, gCurLevelInfo[door->obj2.base.unk56].unk65E);
    field = (*ptr & 0xF0000) >> 16;
    if (field == 0)
        *ptr |= 0x80000000;
    val = *ptr;
    if (val & 0x80000000) {
        val2 = val | (1 << field);
        *ptr = val2;
        if ((val2 & 0xFFF) == 0xFFF) {
            field = 0xC;
            val = val2;
        }
        else {
            u16 steps = Rand16() & 0xF;
            u16 cur = field;
            s32 steps2;

            if (steps != 0xFFFF) {
                val = *ptr;
                do {
                    steps2 = steps - 1;
                    while (1) {
                        cur++;
                        if (cur != 0xC) {
                            if (val & (1 << cur)) {
                                do {
                                    cur++;
                                } while (cur != 0xC && (val & (1 << cur)));
                            }
                            if (cur != 0xC)
                                break;
                        }
                        cur = 0;
                    }
                    steps = steps2;
                } while (steps != 0xFFFF);
            }
            field = cur;
            val = *ptr;
        }
    }
    *ptr = (val & 0x7FF0FFFF) | (field << 16);
}
#endif

static void sub_08119184(struct BossChallengeDoor *door) {
    door->unkB4->flags &= ~0x400;
    door->obj2.unk83 = 0;
    door->obj2.unk78 = sub_08118D80;
}

static void sub_081191A8(struct BossChallengeDoor *door) {
    door->obj2.base.flags |= 0x1400;
}

static void sub_081191B4(struct BossChallengeDoor *door) {
    door->obj2.unk78 = nullsub_126;
}

static void nullsub_126(struct BossChallengeDoor *door) {
}
