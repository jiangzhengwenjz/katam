#include "data.h"
#include "code_0814A828.h"
#include "functions.h"
#include "kirby.h"

void sub_0814A914(void);
void sub_0814ACA8(struct Unk_0814A828 *);
void sub_0814ADC8(struct Unk_0814A828 *);
void nullsub_12(struct Task *);
void sub_0814E0B4(struct Unk_0814A828 *);
void sub_0814E290(struct Unk_0814A828 *);
struct Task *sub_0814E394(struct Unk_0814A828 *, u8);

struct Unk_08387D8C {
    u16 animId;
    u16 variant;
    u8 unk4;
    u8 palId;
}; /* size = 8 */

extern const struct Unk_08387D8C gUnk_08387D8C[];

void sub_0814A828(void) {
    u16 color, i;
    struct Task *t;
    struct Unk_0814A828 *var;

    if (gUnk_0203AD10 & 0x10)
        sub_08039670();
    else if (gUnk_0203AD2C < 300) {
        color = RGB_WHITE;
        sub_0803D21C(&color, 0, 1);
        gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        m4aSoundVSyncOn();
        for (i = 0; i < gUnk_0203AD30; ++i)
            gKirbys[i].base.base.base.flags &= ~0x1000000;
        t = TaskCreate(sub_0814A914, sizeof(struct Unk_0814A828), 0x1000, TASK_USE_IWRAM | TASK_x0004, nullsub_12);
        var = TaskGetStructPtr(t);
        CpuFill16(0, var, sizeof(struct Unk_0814A828));
        var->unk8 = sub_0814E0B4;
    }
}

void sub_0814A914(void) {
    struct Unk_0814A828 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    u8 i;

    if (gUnk_0203AD10 & 2) {
        for (i = 0; i < gUnk_0203AD30; ++i) {
            if (gUnk_020382D0.unk8[1][i] & 0xB) {
                var->unk4 |= 1;
                break;
            }
        }
    } else {
        if (gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON))
            var->unk4 |= 1;
    }
    if (var->unk4 & 1 && !(var->unk4 & 0x80000000) && !(var->unk4 & 4) && !(var->unk4 & 2)) {
        var->unk8 = sub_0814E290;
        var->unk4 |= 0x80000000;
    }
    if (var->unkA0)
        var->unkA0(var);
    var->unk8(var);
}

bool32 sub_0814A9E8(struct Unk_0814A828 *a1) {
    ++a1->unkA4;
    gBldRegs.bldY = 0x10 - (0x10 * a1->unkA4 / a1->unkA6);
    if (a1->unkA4 >= a1->unkA6) {
        a1->unk4 &= ~4;
        if (!(a1->unk4 & 0x80000000)) {
            gBldRegs.bldY = 0;
            gBldRegs.bldAlpha = 0;
            gBldRegs.bldCnt = 0;
        }
        a1->unkA0 = NULL;
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_0814AA50(struct Unk_0814A828 *a1) {
    struct Background *bg = &a1->unk60;

    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(0x1F);
    bg->unk4 = 0x6008000;
    bg->unkA = 0;
    bg->tilemapVram = 0x600F800;
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->unk1C = 0x306;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->unk26 = 0x1E;
    bg->unk28 = 0x14;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->unk2E = 0x18;
    bg->scrollX = 0;
    bg->scrollY = 0;
    bg->prevScrollX = 0x7FFF;
    bg->prevScrollY = 0x7FFF;
    LZ77UnCompVram(gUnk_082D7850[0x306]->tileset, (u16 *)bg->unk4);
    sub_08153060(bg);
}

void sub_0814AAF4(struct Unk_0814A828 *a1) {
    const struct LevelInfo_1A0 *bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];
    u16 i;
    u16 *dst;
    const u16 *src;

    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[1] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(0x1E);
    LZ77UnCompVram(bg->tileset, (u16 *)0x6000000);
    src = bg->tilemap;
    dst = (u16 *)0x600F000;
    src = &src[8 * bg->width];
    for (i = 0; i < 0x14; ++i) {
        CpuCopy16(src, dst, 0x1E * sizeof(u16));
        src += bg->width;
        dst += 0x20;
    }
    gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON;
}

void sub_0814AB7C(struct Unk_0814A828 *a1) {
    struct Sprite *sprite = &a1->unk10;
    struct Sprite local;

    SpriteInitNoPointer2(sprite, 0x20 * gUnk_08387D8C[0].unk4 + 0x6012000, 0x3C0,
        gUnk_08387D8C[0].animId, gUnk_08387D8C[0].variant, 0, 0xFF, 0x10, gUnk_08387D8C[0].palId,
        0x78, 0x50, 0x80);
    SpriteSomething(&local, 0x6000000, gUnk_08387D8C[0].animId, gUnk_08387D8C[0].variant,
        0xFF, 0, 0, 0, 0, 0x10, gUnk_08387D8C[0].palId & 0xF, 0x80000);
}

void sub_0814AC28(struct Unk_0814A828 *a1) {
    a1->unkA8 = sub_0814E394(a1, 0);
    a1->unkB8 = TaskGetStructPtr(a1->unkA8);
    a1->unkAC = sub_0814E394(a1, 1);
    a1->unkBC = TaskGetStructPtr(a1->unkAC);
    sub_0814ADC8(a1);
    a1->unk8 = sub_0814ACA8;
}
