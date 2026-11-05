#include "kirby_cannon.h"
#include "code_0806F780.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "object_collision.h"
#include "task.h"
#include "constants/songs.h"

static void sub_08121B70(struct KirbyCannon *);
static void sub_08121FCC(struct KirbyCannon *);
static void sub_08122248(struct KirbyCannon *);

const struct AnimInfo gUnk_08357E64[] = {
    { 0x2DD, 0, 0 },
    { 0x2DD, 1, 0 },
    { 0x2DD, 2, 0 },
    { 0x2DD, 3, 0 },
    { 0x2DD, 4, 0 },
};

static const u8 gUnk_08357E78[] = {
    0x06, 0x07, 0x03, 0x02, 0xFE, 0xFD, 0xF9, 0xFA, 0x02, 0x01, 0xFF, 0xFE,
};

void *CreateKirbyCannon(struct ObjectTemplate *template, u8 arg1)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct KirbyCannon), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct KirbyCannon *cannon = TaskGetStructPtr(t);

    InitObject(&cannon->obj, template, arg1);
    cannon->obj.base.flags |= 0x2218140;
    cannon->obj.base.unk68 &= ~7;
    cannon->obj.base.unk5C |= ~7;
    cannon->obj.base.unk5C &= ~0x80;
    cannon->obj.base.unkC |= 1;
    sub_0803E2B0(&cannon->obj.base, -4, -0x20, 4, -0x1C);
    ObjectSetBounds(&cannon->obj.base, -8, -0x10, 8, 0);
    cannon->obj.base.unk48 = cannon->obj.base.x -= 0x300;
    ObjectInitSprite(&cannon->obj);
    gUnk_08351648[cannon->obj.type].unk10(&cannon->obj);
    return cannon;
}

void sub_08121AF8(struct KirbyCannon *cannon)
{
    cannon->obj.base.counter = 0;
    cannon->unkB4 = 0;
    cannon->unkB5 = 0;
    cannon->unkB6 = 8;
    if (cannon->obj.objTemplate->unk22 & 2)
        cannon->unkB6 = 0x20;
    cannon->unkB7 = 3;
    cannon->unkB8 = 0;
    cannon->unkBA = cannon->obj.objTemplate->unk12;
    cannon->unkBC = cannon->obj.objTemplate->unk18 >> 8;
    cannon->unkBD = cannon->obj.objTemplate->unk18 != 0;
    cannon->obj.base.flags |= 1;
    cannon->obj.unk78 = sub_08121B70;
}

static void sub_08121B70(struct KirbyCannon *cannon)
{
    struct KirbyCannon *cannon2 = cannon;
    u16 roomId = cannon->obj.base.roomId;
    u32 *slot;

    slot = GetStateSlot(STATE_SLOT_ROOM, cannon->obj.objTemplate->unk14, gCurLevelInfo[cannon->obj.base.unk56].unk65E);
    if (*slot) {
        cannon->unkB6 &= ~8;
        cannon->unkB6 |= 0x20;
    } else {
        cannon->unkB6 |= 8;
        cannon->unkB6 &= ~0x20;
    }
    if (cannon2->unkB6 & 8) {
        if (cannon->obj.base.flags & 0x40000) {
            struct ObjectBase *other = cannon->obj.base.unk6C;

            cannon2->unkB6 |= 1;
            if (other->unk56 < gNumHumanPlayers) {
                if (gNumHumanPlayers > 0 && gKirbys[0].base.roomId == roomId
                    && !(cannon2->unkB8 & 1)
                    && ObjectHitboxesOverlap(&cannon->obj.base, &gKirbys[0].base)
                    && gKirbys[0].base.unk6C == cannon
                    && sub_080510EC(&gKirbys[0]))
                    cannon2->unkB8 |= 1;
                if (gNumHumanPlayers > 1 && gKirbys[1].base.roomId == roomId
                    && !(cannon2->unkB8 & 2)
                    && ObjectHitboxesOverlap(&cannon->obj.base, &gKirbys[1].base)
                    && gKirbys[1].base.unk6C == cannon
                    && sub_080510EC(&gKirbys[1]))
                    cannon2->unkB8 |= 2;
                if (gNumHumanPlayers > 2 && gKirbys[2].base.roomId == roomId
                    && !(cannon2->unkB8 & 4)
                    && ObjectHitboxesOverlap(&cannon->obj.base, &gKirbys[2].base)
                    && gKirbys[2].base.unk6C == cannon
                    && sub_080510EC(&gKirbys[2]))
                    cannon2->unkB8 |= 4;
                if (gNumHumanPlayers > 3 && gKirbys[3].base.roomId == roomId
                    && !(cannon2->unkB8 & 8)
                    && ObjectHitboxesOverlap(&cannon->obj.base, &gKirbys[3].base)
                    && gKirbys[3].base.unk6C == cannon
                    && sub_080510EC(&gKirbys[3]))
                    cannon2->unkB8 |= 8;
            }
        } else if (cannon2->unkB6 & 1) {
            if (cannon2->unkB8 & 1 && gKirbys[0].unk11A & 1) {
                sub_08051544(&gKirbys[0]);
                cannon2->unkB8 &= ~1;
            }
            if (cannon2->unkB8 & 2 && gKirbys[1].unk11A & 1) {
                sub_08051544(&gKirbys[1]);
                cannon2->unkB8 &= ~2;
            }
            if (cannon2->unkB8 & 4 && gKirbys[2].unk11A & 1) {
                sub_08051544(&gKirbys[2]);
                cannon2->unkB8 &= ~4;
            }
            if (cannon2->unkB8 & 8 && gKirbys[3].unk11A & 1) {
                sub_08051544(&gKirbys[3]);
                cannon2->unkB8 &= ~8;
            }
            if (!(cannon2->unkB8 & 0xF))
                cannon2->unkB6 &= ~1;
        }
    }
    slot = GetStateSlot(STATE_SLOT_ROOM, cannon2->obj.objTemplate->unk4, gCurLevelInfo[cannon->obj.base.unk56].unk65E);
    if (*slot) {
        --*slot;
        cannon2->unkB6 |= 2;
    }
    if (cannon2->unkB6 & 2) {
        cannon2->unkB6 &= ~8;
        if (cannon2->unkB6 & 1) {
            if (cannon2->unkB8 & 1)
                sub_0805BE64(&gKirbys[0]);
            if (cannon2->unkB8 & 2)
                sub_0805BE64(&gKirbys[1]);
            if (cannon2->unkB8 & 4)
                sub_0805BE64(&gKirbys[2]);
            if (cannon2->unkB8 & 8)
                sub_0805BE64(&gKirbys[3]);
            if (cannon->obj.objTemplate->unk22 & 1)
                cannon->obj.unk83 = 2;
            else
                cannon->obj.unk83 = 1;
        } else {
            sub_08094EDC(&cannon->obj.base);
            PlaySfx(&cannon->obj.base, SE_08D5B9E8);
        }
        cannon->obj.unk78 = sub_08121FCC;
    }
    cannon->obj.base.counter++;
}

static void sub_08121FCC(struct KirbyCannon *cannon)
{
    struct KirbyCannon *cannon2 = cannon;
    struct EffectObject *effect;

    if (cannon->obj.base.flags & 2) {
        cannon->obj.unk83 = 2;
        cannon->obj.unk78 = sub_08122248;
        effect = CreateEffectObject(&cannon->obj.base, 0, 0x2A8, 0);
        effect->y -= 0x2000;
        RequestScreenShake(3, &cannon->obj.base);
        cannon->unkB5 = 0;
        if (cannon->unkB8 & 1) {
            sub_080515D4(&gKirbys[0], cannon->unkBA, cannon->unkBC, cannon->unkBD, cannon->obj.objTemplate->unk22 & 1);
            cannon->unkB8 &= ~1;
        }
        if (cannon->unkB8 & 2) {
            sub_080515D4(&gKirbys[1], cannon->unkBA, cannon->unkBC, cannon->unkBD, cannon->obj.objTemplate->unk22 & 1);
            cannon->unkB8 &= ~2;
        }
        if (cannon->unkB8 & 4) {
            sub_080515D4(&gKirbys[2], cannon->unkBA, cannon->unkBC, cannon->unkBD, cannon->obj.objTemplate->unk22 & 1);
            cannon->unkB8 &= ~4;
        }
        if (cannon2->unkB8 & 8) {
            sub_080515D4(&gKirbys[3], cannon2->unkBA, cannon2->unkBC, cannon2->unkBD, cannon2->obj.objTemplate->unk22 & 1);
            cannon2->unkB8 &= ~8;
        }
    }
}

static bool32 sub_0812214C(struct KirbyCannon *cannon)
{
    if (cannon->unkB5 < ARRAY_COUNT(gUnk_08357E78)) {
        if (--cannon->unkB4 == 0xFF) {
            // TODO: This movement logic relies on implementation-defined conversion
            // from an out-of-range integer to s16 to produce negative velocities.
            // The u8 table and branch structure must be preserved for matching.
            if (gUnk_08357E78[cannon->unkB5] * 0x100 > 0) {
                cannon->obj.base.yspeed += gUnk_08357E78[cannon->unkB5] * 0x100;
                if (cannon->obj.base.yspeed > gUnk_08357E78[cannon->unkB5] * 0x100)
                    cannon->obj.base.yspeed = gUnk_08357E78[cannon->unkB5] * 0x100;
            } else {
                cannon->obj.base.yspeed += gUnk_08357E78[cannon->unkB5] * 0x100;
                if (cannon->obj.base.yspeed < -(gUnk_08357E78[cannon->unkB5] * 0x100))
                    cannon->obj.base.yspeed = -(gUnk_08357E78[cannon->unkB5] * 0x100);
            }
            if (!(cannon->obj.base.flags & 0x800)) {
                cannon->obj.base.unk48 = cannon->obj.base.x;
                cannon->obj.base.unk4C = cannon->obj.base.y;
                cannon->obj.base.x += cannon->obj.base.xspeed;
                cannon->obj.base.y -= cannon->obj.base.yspeed;
            }
            if (cannon->obj.base.yspeed < 0) {
                cannon->obj.base.yspeed += 0x7FFF;
                if (cannon->obj.base.yspeed > 0)
                    cannon->obj.base.yspeed = 0;
            } else {
                cannon->obj.base.yspeed -= 0x7FFF;
                if (cannon->obj.base.yspeed < 0)
                    cannon->obj.base.yspeed = 0;
            }
            cannon->unkB4 = 0;
            cannon->unkB5++;
        }
        return TRUE;
    }
    cannon->unkB4 = 0;
    cannon->unkB5 = 0;
    return FALSE;
}

static void sub_08122248(struct KirbyCannon *cannon)
{
    if (cannon->unkB6 & 4) {
        if (!sub_0812214C(cannon)) {
            cannon->unkB6 = 8;
            cannon->unkB7 = 3;
            cannon->obj.unk78 = sub_08121B70;
        }
    } else if (--cannon->unkB7 == 0xFF) {
        cannon->unkB6 |= 4;
        cannon->obj.unk83 = 0;
    }
    cannon->obj.base.counter++;
}
