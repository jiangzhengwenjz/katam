#include "code_0801DA58.h"
#include "task.h"
#include "functions.h"

#include <limits.h>

void sub_0801DFF4(void);
void nullsub_28(struct Task *);
void sub_0801E030(struct Unk_0801DA58 *);

extern const u16 gUnk_082DE694[][2];

void sub_0801DA58(u16 a1)
{
    struct Task *t = TaskCreate(sub_0801DFF4, sizeof(struct Unk_0801DA58), 0x1000, TASK_x0004, nullsub_28);
    struct Unk_0801DA58 *var;
    u16 color = RGB_WHITE;
    u32 tilesVram;
    const struct LevelInfo_1A0 *bg;
    const u16 *src;
    u16 i;
    u16 *dst;
    struct Sprite *sprite;

    sub_0803D21C(&color, 0, 1);
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG3_ON;
    gDispCnt |= DISPCNT_OBJ_1D_MAP;
    var = TaskGetStructPtr(t);
    var->unkD8 = sub_0801E030;
    var->unkDC = a1;
    var->unkE2 = 0;
    var->unkD0[0] = 0;
    var->unkD0[1] = 0;
    tilesVram = 0x6012000;
    sprite = &var->unk80[0];
    sprite->tilesVram = tilesVram;
    sprite->unk14 = 0x100;
    sprite->animId = 0x2B9;
    sprite->variant = 0;
    sprite->unk16 = 0;
    sprite->unk1B = 0xFF;
    sprite->unk1C = 0x10;
    sprite->palId = 0;
    sprite->x = -0x40;
    sprite->y = -0x40;
    sprite->unk8 = 0x40000;
    sub_08155128(sprite);
    tilesVram += 0x3C0;
    sprite = &var->unk80[1];
    sprite->tilesVram = tilesVram;
    sprite->unk14 = 0x100;
    sprite->animId = 0x2B9;
    sprite->variant = 0;
    sprite->unk16 = 0;
    sprite->unk1B = 0xFF;
    sprite->unk1C = 0x10;
    sprite->palId = 0;
    sprite->x = -0x40;
    sprite->y = -0x40;
    sprite->unk8 = 0x40000;
    sub_08155128(sprite);
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgCntRegs[3] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30);
    BgInit(&var->unk0, 0x6008000, 0, 0x600F000, 0, 0, 0x307, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x1B,
        gUnk_082DE694[var->unkDC][0], gUnk_082DE694[var->unkDC][1], 0x7FFF, 0x7FFF);
    LZ77UnCompVram(gUnk_082D7850[0x307]->unk8, (u16 *)var->unk0.unk4);
    sub_08153060(&var->unk0);
    bg = gBackgrounds[gRoomProps[0x321].backgroundIdx];
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31);
    LZ77UnCompVram(bg->tileset, (u16 *)0x6000000);
    src = bg->tilemap;
    dst = (u16 *)0x600F800;
    src += 8 * bg->width;
    for (i = 0; i < 0x14; ++i)
    {
        CpuCopy16(src, dst, 0x3C);
        src += bg->width;
        dst += 0x20;
    }
}
