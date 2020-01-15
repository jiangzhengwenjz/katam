#include "global.h"

// fdlibm.h
#define HUGE    ((float)3.40282346638528860e+38)

// math.h
union __dmath {
    __uint32_t i[2];
    double d;
};

#define DOMAIN 1
#define SING 2
#define OVERFLOW 3
#define UNDERFLOW 4
#define TLOSS 5
#define PLOSS 6

struct exception
{
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
    int err;
};

float __ieee754_powf(float, float);
int isnanf(float x);
int matherr(struct exception *exc);
int finitef(float x);
double rint(double x);

// sys/errno.h
#define EDOM 33         /* Math arg out of domain of func */
#define ERANGE 34       /* Math result not representable */
int *__errno(void);

// mislinked data section - -
union __dmath gUnk_08D60950 = { .i = {0x7ff00000, 0} }; // infinity
s32 gUnk_08D60958 = 1;

extern char gUnk_08D608BC[]; // "powf"

f32 powferrorhandler(f32 x, f32 y)
{
    struct exception e;
    union __dmath sp24;
    f32 r4 = __ieee754_powf(x, y);
    s32 r9 = gUnk_08D60958;

    if (r9 == -1)
        return r4;
    if (isnanf(y) != 0)
        return r4;
    if (isnanf(x) != 0)
    {
        if (y == 0.0f)
        {
            e.type = DOMAIN;
            e.name = gUnk_08D608BC;
            e.err = 0;
            e.arg1 = x;
            e.arg2 = y;
            e.retval = x;
            if (r9 == 2)
                e.retval = 1.0;
            else
            { 
                if (matherr(&e) == 0)
                    *__errno() = EDOM;
            }
            if (e.err != 0)
                *__errno() = e.err;
            return e.retval;
        }
    }
    else
    {
        if (x == 0.0f)
        {
            if (y == 0.0f)
            {
                e.type = DOMAIN;
                e.name = gUnk_08D608BC;
                e.err = 0;
                e.arg1 = x;
                e.arg2 = y;
                e.retval = 0.0;
                if (r9 != 0)
                    e.retval = 1.0;
                else 
                {
                    if (matherr(&e) == 0)
                        *__errno() = EDOM;
                }
                if (e.err != 0)
                    *__errno() = e.err;
                return e.retval;
            }
            else
            {
                // _08159468
                if (finitef(y) == 0)
                    return r4;
                if (y < 0.0f)
                {
                    e.type = DOMAIN;
                    e.name = gUnk_08D608BC;
                    e.err = 0;
                    e.arg1 = x;
                    e.arg2 = y;
                    if (r9 == 0)
                        e.retval = 0.0;
                    else
                        e.retval = -gUnk_08D60950.d;
                    if (gUnk_08D60958 == 2 || matherr(&e) == 0)
                        *__errno() = EDOM;
                    if (e.err != 0)
                        *__errno() = e.err;
                    return e.retval;
                }
                else
                    return r4;

            }
        }
        else
        {
            if (finitef(r4) == 0 && finitef(x) != 0 && finitef(y) != 0)
            {
                if (isnanf(r4) != 0)
                {
                    e.type = 1;
                    e.name = gUnk_08D608BC;
                    e.err = 0;
                    e.arg1 = x;
                    e.arg2 = y;
                    if (r9 == 0)
                        e.retval = 0.0;
                    else
                    {
                        union __d_math_2
                        {
                            f64 d;
                            s64 i;
                        };
                        e.retval = ((union __d_math_2)((s64)0xFFFFFFFF7FFFFFFF)).d;
                    }
                    if (gUnk_08D60958 == 2 || matherr(&e) == 0)
                        *__errno() = EDOM;
                    if (e.err != 0)
                        *__errno() = e.err;
                    return e.retval;
                }
                else
                {
                    e.type = OVERFLOW;
                    e.name = gUnk_08D608BC;
                    e.err = 0;
                    e.arg1 = x;
                    e.arg2 = y;
                    if (r9 == 0)
                    {
                        e.retval = HUGE;
                        y *= 5e-1;
                        if (x < 0.0)
                        {
                            if(rint(y) != y)
                                e.retval = -HUGE;
                        }
                    }
                    else
                    {
                        sp24 = gUnk_08D60950;
                        e.retval = sp24.d;
                        y *= 5e-1;
                        if (x < 0.0)
                        {
                            if(rint(y) != y)
                                e.retval = -sp24.d;
                        }
                    }
                }
            }
            else
            {
                if (r4 == 0.0f && finitef(x) != 0 && finitef(y) != 0)
                {
                    e.type = UNDERFLOW;
                    e.name = gUnk_08D608BC;
                    e.err = 0;
                    e.arg1 = x;
                    e.arg2 = y;
                    e.retval = 0.0;
                }
                else
                    return r4;
            }
            if (gUnk_08D60958 == 2 || matherr(&e) == 0)
                *__errno() = ERANGE;
            if (e.err != 0)
                *__errno() = e.err;
            return e.retval;
        }
    }
    return r4;
}
