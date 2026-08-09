#include "special_hub_mirror.h"
#include "kirby.h"
#include "functions.h"
#include "code_0806F780.h"
#include "task.h"

static bool32 SpecialHubMirrorUpdateEffect(struct SpecialHubMirror *);
static void SpecialHubMirrorClearTiles(struct SpecialHubMirror *);
static void nullsub_108(struct SpecialHubMirror *);
static void SpecialHubMirrorInit(struct SpecialHubMirror *);
static void SpecialHubMirrorMain(struct SpecialHubMirror *);

void *CreateSpecialHubMirror(struct ObjectTemplate *arg0, u8 arg1) {
    struct SpecialHubMirror *mirror;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct SpecialHubMirror), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    mirror = TaskGetStructPtr(task);
    InitObject(&mirror->obj2, arg0, arg1);
    mirror->unkB4 = NULL;
    mirror->unkB8 = 0xFFFF;
    mirror->obj2.base.flags |= 0x18F40;
    mirror->obj2.base.unk68 &= ~7;
    mirror->obj2.base.unk5C &= ~7;
    mirror->obj2.base.unk5C |= 4;
    sub_0803E2B0(&mirror->obj2.base, -0x10, -0x10, 0x10, 0x10);
    ObjectSetBounds(&mirror->obj2.base, -0x10, -0x10, 0x10, 0x10);
    mirror->obj2.unk78 = SpecialHubMirrorInit;
    return mirror;
}

static bool32 SpecialHubMirrorUpdateEffect(struct SpecialHubMirror *mirror) {
    if (mirror->unkB8 == 0xFFFF) {
        struct Unk_0888562C_3 *tile = sub_080025AC(mirror->obj2.base.unk56, mirror->obj2.base.x >> 12, (mirror->obj2.base.y + 0x1000) >> 12).pat3;
        mirror->unkB8 = tile->unk08;
        mirror->unkBA = tile->unk0A;
        mirror->unkBC = tile->unk0B;
    }
    if (!sub_08002BA8(mirror->obj2.base.roomId, mirror->unkB8, mirror->unkBA, mirror->unkBC)) {
        if (mirror->unkB4 == NULL) {
            mirror->unkB4 = sub_0808B62C(&mirror->obj2.base, 0, 0x2CF, 0, 0);
            mirror->unkB4->flags |= 1;
            mirror->unkB4->x = mirror->obj2.base.x;
            mirror->unkB4->y = mirror->obj2.base.y - 0x1000;
            mirror->unkB4->sprite.unk14 = 0x780;
        }
        return TRUE;
    }
    else {
        if (mirror->unkB4 != NULL) {
            mirror->unkB4->flags |= 0x1000;
            mirror->unkB4 = NULL;
        }
        return FALSE;
    }
}

static void SpecialHubMirrorClearTiles(struct SpecialHubMirror *mirror) {
    u8 x = mirror->obj2.base.x >> 12;
    u8 y = mirror->obj2.base.y >> 12;
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x - 1, y - 1), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x, y - 1), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x + 1, y - 1), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x - 1, y), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x, y), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x + 1, y), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x - 1, y + 1), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x, y + 1), 0, 0);
    sub_08001408(mirror->obj2.base.unk56, sub_080025AC(mirror->obj2.base.unk56, x + 1, y + 1), 0, 0);
}

static void SpecialHubMirrorInit(struct SpecialHubMirror *mirror) {
    if (*GetStateSlot(STATE_SLOT_WORLD, mirror->obj2.objTemplate->unk4, gCurLevelInfo[mirror->obj2.base.unk56].unk65E) != 0) {
        if (!(gCollisionAttributes[GetCollisionTile(mirror->obj2.base.unk56, mirror->obj2.base.x >> 12, (mirror->obj2.base.y >> 12) + 1)] & 0x4000)) {
            SpecialHubMirrorClearTiles(mirror);
        }
        SpecialHubMirrorUpdateEffect(mirror);
        mirror->obj2.unk78 = SpecialHubMirrorMain;
    }
}

static void SpecialHubMirrorMain(struct SpecialHubMirror *mirror) {
    if (!SpecialHubMirrorUpdateEffect(mirror)) {
        mirror->obj2.unk78 = nullsub_108;
    }
}

static void nullsub_108(struct SpecialHubMirror *mirror) {}

void nullsub_109(struct SpecialHubMirror *mirror) {}
