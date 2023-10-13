#include "code_0800ECAC.h"
#include "functions.h"
#include "kirby.h"

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

    if (!(gUnk_03000510.unk4 & ((1 << s->unk40->base.base.base.unk56) | 0x10))
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
