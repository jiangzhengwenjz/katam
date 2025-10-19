#ifndef GUARD_SIR_KIBBLE_H
#define GUARD_SIR_KIBBLE_H

#include "data.h"
#include "functions.h"

void* CreateSirKibble(struct Object* arg0, u8 arg1);
void* CreateUnknownA0(struct Object* arg0, u8 arg1);
void* CreateSirKibbleCutter(struct Object* arg0, u8 arg1);
void sub_080B1850(struct Object2 *arg0);
void sub_080B1FD0(struct Object2 *arg0);
void sub_080B2108(struct Object2 *arg0);
void sub_080B2130(struct Object2 *arg0);

extern const struct AnimInfo gUnk_08353F54[];
extern const struct AnimInfo gUnk_08353F6C[];

#endif
