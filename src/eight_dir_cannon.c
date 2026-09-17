#include "eight_dir_cannon.h"
#include "functions.h"
#include "task.h"
#include "code_0806F780.h"

static void EightDirCannonIdle(struct EightDirCannon *);
static void EightDirCannonRotate(struct EightDirCannon *);
static bool32 EightDirCannonUpdateRecoil(struct EightDirCannon *);
static void EightDirCannonRecoil(struct EightDirCannon *);

extern void sub_081222AC(struct ObjectBase *, u8);
extern bool8 sub_08051C40(struct Kirby *);
extern void sub_08051F70(struct Kirby *, u8);

void *CreateEightDirCannon(struct ObjectTemplate *arg0, u8 arg1) {
    struct EightDirCannon *cannon;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct EightDirCannon), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    cannon = TaskGetStructPtr(task);
    InitObject(&cannon->obj, arg0, arg1);
    cannon->obj.base.flags |= 0x00218940;
    cannon->obj.base.unk68 &= ~7;
    cannon->obj.base.unk5C |= ~7;
    cannon->obj.base.unk5C &= ~0x80;
    cannon->obj.base.unkC |= 1;
    sub_0803E2B0(&cannon->obj.base, -8, -8, 8, 8);
    ObjectSetBounds(&cannon->obj.base, -8, -8, 8, 8);
    ObjectInitSprite(&cannon->obj);
    gUnk_08351648[cannon->obj.type].unk10(&cannon->obj);
    return cannon;
}

void EightDirCannonSetFunc(struct EightDirCannon *cannon) {
    cannon->obj.base.counter = 0;
    cannon->unkB4 = cannon->obj.objTemplate->unk14;
    cannon->unkB5 = 5;
    cannon->unkB6 = 15;
    cannon->unkB7 = 8;
    cannon->unkB8 = 2;
    cannon->unkB9 = 0;
    cannon->unkBA = 0;
    cannon->obj.unk83 = cannon->unkB4;
    cannon->obj.unk78 = EightDirCannonIdle;
}

static void EightDirCannonIdle(struct EightDirCannon *cannon) {
    struct EightDirCannon *cannon2 = cannon;
    s16 rect[4];
    u16 roomId = cannon->obj.base.roomId;

    if (cannon->unkB7 & 8 && cannon->obj.base.flags & 0x40000) {
        if (((struct ObjectBase *)cannon->obj.base.unk6C)->unk56 >= gNumHumanPlayers)
            return;
        cannon->unkB7 |= 1;
        // The hitbox rect is built but never used; the original code still emits the stores.
        rect[0] = cannon->obj.base.unk38 * 0x100;
        rect[1] = cannon->obj.base.unk39 * 0x100;
        rect[2] = cannon->obj.base.unk3A * 0x100;
        rect[3] = cannon->obj.base.unk3B * 0x100;
        if (gKirbys[0].base.roomId == roomId && gNumHumanPlayers > 0
            && !(cannon->unkBA & 1)
            && sub_0803925C(&cannon->obj.base, &gKirbys[0].base)
            && gKirbys[0].base.unk6C == cannon
            && sub_08051C40(&gKirbys[0])) {
            CreateEffectObject(&cannon->obj.base, 0, 0x2A8, 7);
            cannon->unkBA |= 1;
            if (!(cannon->unkBA & 0x10)) {
                cannon->unkBA |= 0x10;
                cannon->unkBC = &gKirbys[0];
            }
        }
        if (gKirbys[1].base.roomId == roomId && gNumHumanPlayers > 1
            && !(cannon2->unkBA & 2)
            && sub_0803925C(&cannon2->obj.base, &gKirbys[1].base)
            && gKirbys[1].base.unk6C == cannon2
            && sub_08051C40(&gKirbys[1])) {
            CreateEffectObject(&cannon2->obj.base, 0, 0x2A8, 7);
            cannon2->unkBA |= 2;
            if (!(cannon2->unkBA & 0x10)) {
                cannon2->unkBA |= 0x10;
                cannon2->unkBC = &gKirbys[1];
            }
        }
        if (gKirbys[2].base.roomId == roomId && gNumHumanPlayers > 2
            && !(cannon2->unkBA & 4)
            && sub_0803925C(&cannon2->obj.base, &gKirbys[2].base)
            && gKirbys[2].base.unk6C == cannon2
            && sub_08051C40(&gKirbys[2])) {
            CreateEffectObject(&cannon2->obj.base, 0, 0x2A8, 7);
            cannon2->unkBA |= 4;
            if (!(cannon2->unkBA & 0x10)) {
                cannon2->unkBA |= 0x10;
                cannon2->unkBC = &gKirbys[2];
            }
        }
        if (gKirbys[3].base.roomId == roomId && gNumHumanPlayers > 3
            && !(cannon2->unkBA & 8)
            && sub_0803925C(&cannon2->obj.base, &gKirbys[3].base)
            && gKirbys[3].base.unk6C == cannon2
            && sub_08051C40(&gKirbys[3])) {
            CreateEffectObject(&cannon2->obj.base, 0, 0x2A8, 7);
            cannon2->unkBA |= 8;
            if (!(cannon2->unkBA & 0x10)) {
                cannon2->unkBA |= 0x10;
                cannon2->unkBC = &gKirbys[3];
            }
        }
        if (!cannon2->unkBA)
            cannon2->unkB7 &= ~1;
    }
    EightDirCannonRotate(cannon);
    cannon->obj.base.counter++;
}

static void EightDirCannonRotate(struct EightDirCannon *cannon) {
    struct EightDirCannon *cannon2 = cannon;
    u8 i;

    if (cannon->unkB7 & 1) {
        if (!(cannon->obj.objTemplate->unk22 & 1)) {
            if (cannon2->unkBC->unk11A & 1) {
                for (i = 0; i < gNumKirbys; i++) {
                    if ((cannon2->unkBA >> i) & 1)
                        sub_08051F70(&gKirbys[i], cannon2->unkB4);
                }
                cannon->obj.unk78 = EightDirCannonRecoil;
                cannon2->unkB7 &= ~8;
                sub_081222AC(&cannon->obj.base, cannon2->unkB4);
                RequestScreenShake(3, &cannon->obj.base);
            }
        }
        else if (cannon2->unkB7 & 2 && cannon2->unkB4 == cannon->obj.objTemplate->unk14) {
            for (i = 0; i < gNumKirbys; i++) {
                if ((cannon2->unkBA >> i) & 1)
                    sub_08051F70(&gKirbys[i], cannon2->unkB4);
            }
            cannon->obj.unk78 = EightDirCannonRecoil;
            cannon2->unkB7 &= ~8;
            sub_081222AC(&cannon->obj.base, cannon2->unkB4);
            RequestScreenShake(3, &cannon->obj.base);
        }
        if (cannon2->unkB7 & 8) {
            cannon2->unkB5--;
            if (cannon2->unkB5 == 0xFF) {
                cannon2->unkB4++;
                if (cannon2->unkB4 > 7) {
                    cannon2->unkB4 = 0;
                    cannon2->unkB7 |= 2;
                }
                cannon->obj.unk83 = cannon2->unkB4;
                cannon2->unkB5 = 5;
            }
        }
    }
}

static bool32 EightDirCannonUpdateRecoil(struct EightDirCannon *cannon) {
    struct EightDirCannon *cannon2 = cannon;

    if (cannon->unkB9 <= 9) {
        if (--cannon->unkB8 == 0xFF) {
            if (cannon->obj.base.flags & 1) {
                cannon->obj.base.xspeed -= gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100;
                if (cannon->obj.base.xspeed < -(gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100))
                    cannon->obj.base.xspeed = -(gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100);
                else if (cannon->obj.base.xspeed > gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100)
                    cannon->obj.base.xspeed = gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100;
            }
            else {
                cannon->obj.base.xspeed += gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100;
                if (cannon->obj.base.xspeed > gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100)
                    cannon->obj.base.xspeed = gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100;
                else if (cannon->obj.base.xspeed < -(gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100))
                    cannon->obj.base.xspeed = -(gUnk_08357EA4[cannon->unkB4][cannon->unkB9] * 0x100);
            }
            if (gUnk_08357EA4[cannon->unkB4][cannon->unkB9 + 1] * 0x100 > 0) {
                cannon2->obj.base.yspeed += gUnk_08357EA4[cannon->unkB4][cannon->unkB9 + 1] * 0x100;
                if (cannon2->obj.base.yspeed > gUnk_08357EA4[cannon->unkB4][cannon->unkB9 + 1] * 0x100)
                    cannon2->obj.base.yspeed = gUnk_08357EA4[cannon->unkB4][cannon->unkB9 + 1] * 0x100;
            }
            else {
                cannon2->obj.base.yspeed += gUnk_08357EA4[cannon->unkB4][cannon->unkB9 + 1] * 0x100;
                if (cannon2->obj.base.yspeed < -(gUnk_08357EA4[cannon->unkB4][cannon->unkB9 + 1] * 0x100))
                    cannon2->obj.base.yspeed = -(gUnk_08357EA4[cannon->unkB4][cannon->unkB9 + 1] * 0x100);
            }
            if (!(cannon->obj.base.flags & 0x800)) {
                cannon->obj.base.unk48 = cannon->obj.base.x;
                cannon->obj.base.unk4C = cannon->obj.base.y;
                cannon->obj.base.x += cannon->obj.base.xspeed;
                cannon->obj.base.y -= cannon->obj.base.yspeed;
            }
            if (cannon->obj.base.xspeed < 0) {
                cannon->obj.base.xspeed += 0x7FFF;
                if (cannon->obj.base.xspeed > 0)
                    cannon->obj.base.xspeed = 0;
            }
            else {
                cannon->obj.base.xspeed -= 0x7FFF;
                if (cannon->obj.base.xspeed < 0)
                    cannon->obj.base.xspeed = 0;
            }
            if (cannon->obj.base.yspeed < 0) {
                cannon->obj.base.yspeed += 0x7FFF;
                if (cannon->obj.base.yspeed > 0)
                    cannon->obj.base.yspeed = 0;
            }
            else {
                cannon->obj.base.yspeed -= 0x7FFF;
                if (cannon->obj.base.yspeed < 0)
                    cannon->obj.base.yspeed = 0;
            }
            cannon->unkB8 = 2;
            cannon->unkB9 += 2;
        }
        return TRUE;
    }
    cannon->unkB8 = 2;
    cannon->unkB9 = 0;
    return FALSE;
}

static void EightDirCannonRecoil(struct EightDirCannon *cannon) {
    if (!EightDirCannonUpdateRecoil(cannon)) {
        cannon->unkB7 = 8;
        cannon->unkB5 = 5;
        cannon->unkBA = 0;
        cannon->obj.unk78 = EightDirCannonIdle;
    }
    cannon->obj.base.counter++;
}
