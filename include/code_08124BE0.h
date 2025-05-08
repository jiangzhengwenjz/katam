#ifndef GUARD_CODE_08124BE0_H
#define GUARD_CODE_08124BE0_H

#include "global.h"
#include "data.h"
#include "task.h"
#include "pause_world_map.h"

// TODO: Into pause_help.h
struct Unk_08D6113C {
    /* 0x0 */ void* unkSrc;
    /* 0x4 */ void* unkDest;
}; /* size = 0x8 */

extern struct Unk_08D6113C gUnk_08D6113C[];

void sub_08124BE0(void);
void sub_08124E80(void);
void sub_08124EA0(void);
void sub_08124EC8(void);
void sub_08125088(struct UnkKirbyMapSprite*, u32);
struct Task* sub_081252FC(u32);

#endif
