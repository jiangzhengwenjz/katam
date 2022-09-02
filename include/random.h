#ifndef GUARD_RANDOM_H
#define GUARD_RANDOM_H

#include "global.h"

extern u32 gRngVal;

#define Rand32() (gRngVal = gRngVal * 1663525 + 1013904223)
#define Rand16() (Rand32(), gRngVal >> 16)

#define RandLessThan3() ({ \
    u16 _variable; \
    u16 _rand = Rand16(); \
 \
    if (_rand < 0x5555) \
        _variable = 0; \
    else if (_rand < 0xAAAA) \
        _variable = 1; \
    else \
        _variable = 2; \
    _variable; \
})

#define RandLessThan(x) ({ \
    u16 _r = Rand16(), _i; \
 \
    for (_i = 0; _i <= (x)-2; ++_i) \
        if (_r < (_i+1) * (0x10000/(x))) \
            break; \
    _i; \
})

#endif
