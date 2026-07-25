#ifndef GUARD_WADDLE_DEE_H
#define GUARD_WADDLE_DEE_H

#include "data.h"
#include "functions.h"

void* CreateWaddleDee(struct Object* arg0, u8 arg1);
void WaddleDeeChooseBehavior(struct Object2*);

extern const struct AnimInfo gWaddleDeeAnimInfo[];

#endif
