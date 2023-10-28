#ifndef GUARD_CONSTANTS_KIRBY_H
#define GUARD_CONSTANTS_KIRBY_H

#define KIRBY_ABILITY_NORMAL      0
#define KIRBY_ABILITY_FIRE        1
#define KIRBY_ABILITY_ICE         2
#define KIRBY_ABILITY_BURNING     3
#define KIRBY_ABILITY_WHEEL       4
#define KIRBY_ABILITY_PARASOL     5
#define KIRBY_ABILITY_CUTTER      6
#define KIRBY_ABILITY_BEAM        7
#define KIRBY_ABILITY_STONE       8
#define KIRBY_ABILITY_BOMB        9
#define KIRBY_ABILITY_THROW       10
#define KIRBY_ABILITY_SLEEP       11
#define KIRBY_ABILITY_COOK        12
#define KIRBY_ABILITY_LASER       13
#define KIRBY_ABILITY_UFO         14
#define KIRBY_ABILITY_SPARK       15
#define KIRBY_ABILITY_TORNADO     16
#define KIRBY_ABILITY_HAMMER      17
#define KIRBY_ABILITY_SWORD       18
#define KIRBY_ABILITY_CUPID       19
#define KIRBY_ABILITY_FIGHTER     20
#define KIRBY_ABILITY_MAGIC       21
#define KIRBY_ABILITY_SMASH       22
#define KIRBY_ABILITY_MINI        23
#define KIRBY_ABILITY_CRASH       24
#define KIRBY_ABILITY_MISSILE     25
#define KIRBY_ABILITY_MASTER      26

#define KIRBY_ABILITY_COUNT       (KIRBY_ABILITY_MASTER + 1)

// for both inhale and copy essence
#define KIRBY_ABILITY_CHANGE_RANDOM            0x20 // generate a random ability
#define KIRBY_ABILITY_CHANGE_UNKNOWN           0x40
#define KIRBY_ABILITY_CHANGE_IS_ABILITY_STAR   0x80 // also set when kirby inhales master sword

#endif
