#ifndef GUARD_TASK_H
#define GUARD_TASK_H

#include "global.h"

struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task*);

struct Task {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    TaskMain unk8;
    TaskDestructor unkC;
    u16 unk10;
    u16 unk12;
};

struct Unk_03003A20 {
    u16 unk0;
    s16 unk2;
};

extern u32 gUnk_0203ADE4;

extern struct Task gUnk_030019F0[];
extern u32 gUnk_03002440;
extern struct Task gUnk_03002500;
extern u8 gUnk_03002558;
extern struct Task* gUnk_03002560[];
extern s32 gUnk_03002E7C;
extern struct Task* gUnk_03002E98;
extern struct Task* gUnk_03002EBC;
extern struct Task* gCurTask;
extern struct Unk_03003A20 gUnk_03003A20[];
extern u8 gUnk_030068D4;
extern u32 gUnk_03006CC4;

void sub_081590EC(u32*);
u32 TaskInit(void);
void TaskExecute(void);
struct Task* TaskCreate(TaskMain, u16, u16, u16, TaskDestructor);
void TaskDestroy(struct Task*);
struct Unk_03003A20* sub_08152DD8(u16);
void sub_08152FB0(u16, u16);

#endif
