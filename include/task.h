#ifndef GUARD_TASK_H
#define GUARD_TASK_H

#include "global.h"

struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task*);

struct Task {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2; // prev? 
    /* 0x04 */ u16 next;
    /* 0x06 */ u16 structOffset;
    /* 0x08 */ TaskMain main;
    /* 0x0C */ TaskDestructor dtor;
    /* 0x10 */ u16 unk10; // priority? 
    /* 0x12 */ u16 flags; // 0x1  = active
                          // 0x2  = ???
                          // 0x10 = use ewram for struct
};

struct Unk_03003A20 {
    u16 unk0;
    s16 unk2;
    u8 space[0];
};

#define TaskGetStructPtr(taskp, dst) ({                                    \
    if ((taskp)->flags & 0x10)                                             \
        (dst) = (typeof(dst))(EWRAM_START + ((taskp)->structOffset << 2)); \
    else                                                                   \
        (dst) = (typeof(dst))(IWRAM_START + (taskp)->structOffset);        \
    (dst);                                                                 \
})

extern struct Task gUnk_030019F0[];
extern u32 gUnk_03002440;
extern struct Task gEmptyTask;
extern u8 gUnk_03002558;
extern struct Task* gTaskList[];
extern s32 gLastTaskNum;
extern struct Task* gUnk_03002E98;
extern struct Task* gNextTask;
extern struct Task* gCurTask;
extern struct Unk_03003A20 gUnk_03003A20[];
extern u8 gExecSoundMain;
extern OamData *gUnk_03006CC4;

u32 TaskInit(void);
void TaskExecute(void);
struct Task* TaskCreate(TaskMain, u16, u16, u16, TaskDestructor);
void TaskDestroy(struct Task*);
struct Unk_03003A20* IwramMalloc(u16);
void sub_08152FB0(u16, u16);

#endif
