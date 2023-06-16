#include "mirror_door.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"

static void sub_08119F88(struct MirrorDoor *);
static void sub_0811A234(struct MirrorDoor *);
static void sub_0811A3D8(struct MirrorDoor *);
static void sub_0811A548(struct MirrorDoor *);
static void sub_0811A6A0(struct Task *);
static bool32 sub_0811A708(struct MirrorDoor *);

const struct Unk_02021590 gUnk_08357BEC[] = {
    { 0x294, 0x0, 0x0 },
    { 0x294, 0x6, 0x0 },
    { 0x294, 0x1, 0x0 },
};

void *CreateMirrorDoor(struct Object *template, u8 a2)
{
    struct MirrorDoor *mdAlias;
    bool32 var = FALSE;
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct MirrorDoor), 0x1000, TASK_USE_IWRAM, sub_0811A6A0);
    struct MirrorDoor *tmp = TaskGetStructPtr(t), *md = tmp;

    mdAlias = md;
    InitObject(&md->obj2, template, a2);
    md->unkB4[0] = NULL;
    md->unkB4[1] = NULL;
    md->unkBC = md->obj2.base.x >> 12;
    md->unkBE = md->obj2.base.y >> 12;
    md->unkC0 = 0;
    md->obj2.base.flags |= 0x340;
    md->obj2.base.flags |= 0x4000;
    md->obj2.base.unkC |= 1;
    md->obj2.base.y += 0x800;
    md->obj2.unk83 = template->subtype1;
    if (md->obj2.unk83 > 2)
        md->obj2.unk83 = 0;
    switch (template->subtype1)
    {
    case 0:
    case 1:
        if (gUnk_082D88B8[sub_080023E4(md->obj2.base.unk56, md->unkBC, md->unkBE)] & 0x4000)
        {
            var = TRUE;
            if (sub_0811A708(md))
                md->obj2.unk83 = 2;
            else
                md->obj2.unk83 = 0;
            sub_08119F88(md);
            mdAlias->unkB4[0]->sprite.unk14 = 0x780;
        }
        else
        {
            var = FALSE;
            if (template->subtype1 == 1)
            {
                md->obj2.base.flags |= 0x400;
                md->obj2.unk83 = 0;
            }
            else
                md->obj2.unk83 = 1;
        }
        break;
    case 2:
        sub_08119F88(md);
        if (*sub_08002888(1, template->unk4, 0))
        {
            var = FALSE;
            md->unkC0 |= 1;
            md->unkC2 = sub_0800255C(md->obj2.base.unk56, md->unkBC, md->unkBE, 0);
            md->unkB4[0]->flags |= 0x400;
            md->obj2.unk83 = 1;
        }
        else
        {
            var = TRUE;
            md->unkC0 &= ~1;
            md->obj2.unk83 = 0;
        }
        break;
    }
    if (template->unk22 & 1)
    {
        mdAlias->unkB4[1] = sub_08092944(&md->obj2.base, 0, 0x294, 7);
        mdAlias->unkB4[1]->sprite.unk14 = 0x780;
        if (!var) mdAlias->unkB4[1]->flags |= 0x400;
    }
    md->obj2.base.sprite.tilesVram = 0x6012000;
    md->obj2.base.sprite.unk14 = 0x680;
    md->obj2.base.sprite.animId = gUnk_08351648[md->obj2.type].unk14[md->obj2.unk83].animId;
    md->obj2.base.sprite.variant = gUnk_08351648[md->obj2.type].unk14[md->obj2.unk83].variant;
    md->obj2.base.sprite.unk16 = 0;
    md->obj2.base.sprite.unk1B = 0xFF;
    md->obj2.base.sprite.unk1C = 0x10;
    md->obj2.base.sprite.palId = 0xF;
    md->obj2.base.sprite.x = md->obj2.base.x >> 8;
    md->obj2.base.sprite.y = md->obj2.base.y >> 8;
    md->obj2.base.sprite.unk8 = 0xC2000;
    sub_08155128(&md->obj2.base.sprite);
    md->obj2.base.sprite.unk14 = 0x7C0;
    gUnk_08351648[md->obj2.type].unk10(&md->obj2);
    return md;
}

static void sub_08119F88(struct MirrorDoor *md)
{
    bool32 var = FALSE;
    struct Unk_0888562C_3 *ptr = sub_080025AC(md->obj2.base.unk56, md->unkBC, md->unkBE).pat3;

    if (ptr->unk08 >= 0x3D4 && ptr->unk08 <= 0x3DD)
        var = TRUE;
    if (sub_08002BA8(md->obj2.base.roomId, ptr->unk08, ptr->unk0A, ptr->unk0B))
    {
        if (var)
            md->unkB4[0] = sub_08092944(&md->obj2.base, 0, 0x294, 8);
        else if (md->obj2.object->unk22 & 0x100)
            md->unkB4[0] = sub_08092944(&md->obj2.base, 0, 0x294, 9);
        else
            md->unkB4[0] = sub_08092944(&md->obj2.base, 0, 0x294, 2);
        md->unkC0 |= 2;
    }
    else
    {
        if (var)
            md->unkB4[0] = sub_08092944(&md->obj2.base, 0, 0x294, 4);
        else if (md->obj2.object->unk22 & 0x100)
            md->unkB4[0] = sub_08092944(&md->obj2.base, 0, 0x294, 0xA);
        else
            md->unkB4[0] = sub_08092944(&md->obj2.base, 0, 0x294, 3);
        md->unkC0 &= ~2;
    }
    md->unkB4[0]->sprite.unk14 = 0x780;
}

static void sub_0811A084(struct MirrorDoor *md)
{
    if (!(md->unkC0 & 2)
        && gUnk_082D88B8[sub_080023E4(md->obj2.base.unk56, md->unkBC, md->unkBE)] & 0x4000)
    {
        bool32 var = FALSE;
        struct Unk_0888562C_3 *ptr = sub_080025AC(md->obj2.base.unk56, md->unkBC, md->unkBE).pat3;

        if (ptr->unk08 >= 0x3D4 && ptr->unk08 <= 0x3DD)
            var = TRUE;
        if (sub_08002BA8(md->obj2.base.roomId, ptr->unk08, ptr->unk0A, ptr->unk0B))
        {
            struct Sprite *sprite = &md->unkB4[0]->sprite;
            if (var)
            {
                sprite->animId = 0x294;
                sprite->variant = 8;
            }
            else if (md->obj2.object->unk22 & 0x100)
            {
                sprite->animId = 0x294;
                sprite->variant = 9;
            }
            else
            {
                sprite->animId = 0x294;
                sprite->variant = 2;
            }
            sprite->unk1B = 0xFF;
            md->unkC0 |= 2;
        }
    }
}

static void sub_0811A15C(struct MirrorDoor *md)
{
    sub_0811A084(md);
    if (!(gUnk_082D88B8[sub_080023E4(md->obj2.base.unk56, md->unkBC, md->unkBE)] & 0x4000))
    {
        struct Sprite *sprite = &md->obj2.base.sprite;

        md->obj2.unk83 = 1;
        sprite->animId = gUnk_08351648[md->obj2.type].unk14[1].animId;
        sprite->variant = gUnk_08351648[md->obj2.type].unk14[md->obj2.unk83].variant;
        sprite->unk1B = 0xFF;
        if (md->unkB4[0])
            md->unkB4[0]->flags |= 0x400;
        if (md->unkB4[1])
            md->unkB4[1]->flags |= 0x400;
        sub_0808AE30(&md->obj2.base, 0, 0x2B4, 0)->y -= 0x1000;
        md->obj2.unk78 = sub_0811A234;
    }
    md->obj2.base.flags |= 4;
}

static void sub_0811A234(struct MirrorDoor *md)
{
    struct MirrorDoor *mdAlias = md;

    if (gUnk_082D88B8[sub_080023E4(md->obj2.base.unk56, md->unkBC, md->unkBE)] & 0x4000)
    {
        struct Sprite *sprite = &md->obj2.base.sprite;
        struct Unk_0888562C_3 *ptr = sub_080025AC(md->obj2.base.unk56, md->unkBC, md->unkBE).pat3;
        bool32 var;

        if (ptr->unk08 >= 0x3D4 && ptr->unk08 <= 0x3DD)
            var = TRUE;
        else
            var = FALSE;
        if (var)
            md->obj2.unk83 = 2;
        else
            md->obj2.unk83 = 0;
        sprite->animId = gUnk_08351648[md->obj2.type].unk14[md->obj2.unk83].animId;
        sprite->variant = gUnk_08351648[md->obj2.type].unk14[md->obj2.unk83].variant;
        sprite->unk1B = 0xFF;
        if (mdAlias->unkB4[0])
            mdAlias->unkB4[0]->flags &= ~0x400;
        else
            sub_08119F88(md);
        if (mdAlias->unkB4[1])
            mdAlias->unkB4[1]->flags &= ~0x400;
        sub_0808AE30(&md->obj2.base, 0, 0x2B4, 0)->y -= 0x1000;
        md->obj2.unk78 = sub_0811A15C;
    }
    md->obj2.base.flags |= 4;
}

static void sub_0811A35C(struct MirrorDoor *md)
{
    sub_0811A084(md);
    if (!(gUnk_082D88B8[sub_080023E4(md->obj2.base.unk56, md->unkBC, md->unkBE)] & 0x4000))
    {
        md->obj2.base.flags |= 0x400;
        if (md->unkB4[0])
            md->unkB4[0]->flags |= 0x400;
        if (md->unkB4[1])
            md->unkB4[1]->flags |= 0x400;
        md->obj2.unk78 = sub_0811A3D8;
    }
    md->obj2.base.flags |= 4;
}

static void sub_0811A3D8(struct MirrorDoor *md)
{
    struct MirrorDoor *mdAlias = md;

    if (gUnk_082D88B8[sub_080023E4(md->obj2.base.unk56, md->unkBC, md->unkBE)] & 0x4000)
    {
        md->obj2.base.flags &= ~0x400;
        if (md->unkB4[0])
            md->unkB4[0]->flags &= ~0x400;
        else
            sub_08119F88(md);
        if (mdAlias->unkB4[1])
            mdAlias->unkB4[1]->flags &= ~0x400;
        md->obj2.unk78 = sub_0811A35C;
    }
}

static void sub_0811A45C(struct MirrorDoor *md)
{
    sub_0811A084(md);
    if (*sub_08002888(1, md->obj2.object->unk4, 0))
    {
        struct Sprite *sprite = &md->obj2.base.sprite;

        md->obj2.unk83 = 1;
        sprite->animId = gUnk_08351648[md->obj2.type].unk14[1].animId;
        sprite->variant = gUnk_08351648[md->obj2.type].unk14[md->obj2.unk83].variant;
        sprite->unk1B = 0xFF;
        md->unkC0 |= 1;
        md->unkC2 = sub_0800255C(md->obj2.base.unk56, md->unkBC, md->unkBE, 0);
        if (md->unkB4[0])
            md->unkB4[0]->flags |= 0x400;
        if (md->unkB4[1])
            md->unkB4[1]->flags |= 0x400;
        sub_0808AE30(&md->obj2.base, 0, 0x2B4, 0)->y -= 0x1000;
        md->obj2.unk78 = sub_0811A548;
    }
    md->obj2.base.flags |= 4;
}

static void sub_0811A548(struct MirrorDoor *md)
{
    if (!*sub_08002888(1, md->obj2.object->unk4, 0))
    {
        struct Sprite *sprite = &md->obj2.base.sprite;

        md->obj2.unk83 = 0;
        sprite->animId = gUnk_08351648[md->obj2.type].unk14[0].animId;
        sprite->variant = gUnk_08351648[md->obj2.type].unk14[md->obj2.unk83].variant;
        sprite->unk1B = 0xFF;
        md->unkC0 &= ~1;
        sub_0800255C(md->obj2.base.unk56, md->unkBC, md->unkBE, md->unkC2);
        if (md->unkB4[0])
            md->unkB4[0]->flags &= ~0x400;
        if (md->unkB4[1])
            md->unkB4[1]->flags &= ~0x400;
        sub_0808AE30(&md->obj2.base, 0, 0x2B4, 0)->y -= 0x1000;
        md->obj2.unk78 = sub_0811A45C;
    }
    md->obj2.base.flags |= 4;
}

void sub_0811A624(struct MirrorDoor *md)
{
    md->obj2.base.counter = 0;
    switch (md->obj2.object->subtype1)
    {
    case 0:
        if (md->obj2.unk83 == 1)
            md->obj2.unk78 = sub_0811A234;
        else
            md->obj2.unk78 = sub_0811A15C;
        break;
    case 1:
        if (md->obj2.base.flags & 0x400)
            md->obj2.unk78 = sub_0811A3D8;
        else
            md->obj2.unk78 = sub_0811A35C;
        break;
    case 2:
        if (md->obj2.unk83 == 0)
            md->obj2.unk78 = sub_0811A45C;
        else
            md->obj2.unk78 = sub_0811A548;
        break;
    }
}

static void sub_0811A6A0(struct Task *t)
{
    struct MirrorDoor *md = TaskGetStructPtr(t);

    if (md->obj2.base.unk56 != 0xFF && md->obj2.object->subtype1 == 2 && md->unkC0 & 1)
        sub_0800255C(md->obj2.base.unk56, md->unkBC, md->unkBE, md->unkC2);
    ObjectDestroy(t);
}

static bool32 sub_0811A708(struct MirrorDoor *md)
{
    struct Unk_0888562C_3 *ptr = sub_080025AC(md->obj2.base.unk56, md->unkBC, md->unkBE).pat3;

    if (ptr->unk08 >= 0x3D4 && ptr->unk08 <= 0x3DD)
        return TRUE;
    else
        return FALSE;
}
