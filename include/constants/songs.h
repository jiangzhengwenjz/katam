#ifndef GUARD_CONSTANTS_SONGS_H
#define GUARD_CONSTANTS_SONGS_H

#define MUS_DUMMY                          0x000
#define MUS_TITLE_SCREEN                   0x001
#define MUS_MENU                           0x002
#define MUS_TUTORIAL                       0x003
#define MUS_CENTRAL_CIRCLE                 0x004
#define MUS_RAINBOW_ROUTE                  0x005
#define MUS_MUSTARD_MOUNTAIN               0x006
#define MUS_PEPPERMINT_PALACE              0x007
#define MUS_CABBAGE_CAVERN                 0x008
#define MUS_MOONLIGHT_MANSION              0x009
#define MUS_RADISH_RUINS                   0x00A
#define MUS_CANDY_CONSTELLATION            0x00B
#define MUS_OLIVE_OCEAN                    0x00C
#define MUS_MID_BOSS                       0x00D
#define MUS_DARK_META_KNIGHT_BATTLE        0x00E
#define MUS_BOSS                           0x00F
#define MUS_DARK_MIND_SECOND_FORM          0x010
#define MUS_DARK_MIND_SKY                  0x011
#define MUS_ENDING                         0x012
#define MUS_MINIGAME_WON_CROWD             0x013
#define MUS_KIRBY_DEAD                     0x014
#define MUS_GOAL_BONUS                     0x015
#define MUS_VICTORY_LONG                   0x016
#define MUS_VICTORY_SHORT                  0x017
#define MUS_DARK_META_KNIGHT_BATTLE_INTRO  0x018
#define MUS_INTRO                          0x019
#define MUS_DARK_META_KNIGHT_APPEARS       0x01A
#define MUS_DARK_MIND_CHASE                0x01B
#define MUS_CRACKITY_HACK                  0x01C
#define MUS_WAVE_RIDE                      0x01D
#define MUS_WAVE_RIDE_GET_READY            0x01E
#define MUS_WAVE_RIDE_GOAL                 0x01F
#define MUS_MINIGAME_LOST                  0x020
#define MUS_MINIGAME_WON                   0x021
#define MUS_MINIGAME_WON_LONG              0x022
#define MUS_SPEED_EATERS                   0x023
#define MUS_SPEED_EATERS_CPU_WON           0x024
#define MUS_SHARD                          0x025
#define MUS_INVINCIBLE_CANDY               0x026
#define MUS_GAME_OVER                      0x027
#define MUS_CRACKITY_HACK_BASS_UNUSED      0x028
#define MUS_SPEED_EATERS_REVERB_UNUSED     0x029
#define MUS_CHAMPION                       0x02A
#define MUS_RAINBOW_ROUTE_ECHO_UNUSED      0x032
#define MUS_MOONLIGHT_MANSION_ECHO_UNUSED  0x033
#define MUS_RADISH_RUINS_ECHO_UNUSED       0x034
#define MUS_BOSS_BRASS_UNUSED              0x035
// Numbers indicates number to use via Sound Player
// ONLY - indicates SE used for only one object, MULTI - for multiple objects. With the names of the object(s) listed following this.
#define SE_KIRBY_JUMP                      0x064 // 0
#define SE_KIRBY_INHALE                    0x065 // 1
#define SE_KIRBY_STUFFED_CHEEKS_UNUSED     0x066 // 2
#define SE_KIRBY_STARSHOT_1                0x067 // 3
#define SE_KIRBY_STARSHOT_2                0x068 // 4
#define SE_KIRBY_LANDING                   0x069 // 5
#define SE_KIRBY_ABILITY                   0x06A // 6
#define SE_KIRBY_DMG_1                     0x06B // 7
#define SE_KIRBY_DMG_2                     0x06C // 8
#define SE_KIRBY_DMG_3                     0x06D // 9
#define SE_KIRBY_SWALLOW                   0x06E // 10
#define SE_KIRBY_AIRSHOT                   0x06F // 11
#define SE_KIRBY_FLOAT                     0x070 // 12
#define SE_KIRBY_BOUNCE                    0x071 // 13
#define SE_KIRBY_DASH                      0x072 // 14
#define SE_KIRBY_SLIDING                   0x073 // 15
#define SE_KIRBY_BRAKE                     0x074 // 16
#define SE_KIRBY_SWIM_1                    0x075 // 17
#define SE_KIRBY_SWIM_2                    0x076 // 18
#define SE_KIRBY_ICE_DMG                   0x077 // 19
#define SE_ABILITY_HAMMER_CHARGE_ATTACK    0x078 // 20
#define SE_KIRBY_FIRE_DMG                  0x079 // 21
#define SE_KIRBY_FIRE_DMG_STUFFED_CHEEKS   0x07A // 22
#define SE_KIRBY_ICE_DMG_STUFFED_CHEEKS    0x07B // 23
#define SE_KIRBY_CLIMB_UP                  0x07C // 24
#define SE_KIRBY_CLIMB_DOWN                0x07D // 25
#define SE_KIRBY_STAR_DESTROY              0x07E // 26
#define SE_KIRBY_WATER_ATTACK              0x07F // 27
#define SE_WATER_SPLASH                    0x080 // 28 Used by Gobbler as well
#define SE_KIRBY_STAR_RELEASE              0x081 // 29
#define SE_KIRBY_STAR_BOUNCE               0x082 // 30
#define SE_KIRBY_HUG                       0x083 // 31
#define SE_KIRBY_LOW_HEALTH                0x084 // 32
#define SE_KIRBY_FLOAT_START               0x085 // 33
#define SE_08D558B8                        0x086 // 34 Seemingly Unused
#define SE_KIRBY_STACK_JUMP                0x087 // 35
#define SE_08D55A98                        0x088 // 36 ONLY code_0806F780 - Kirby Inhale Effect? Appears unused, the only call to this SE is a stop call.
#define SE_KIRBY_CALL                      0x089 // 37
#define SE_COOKED_KIRBY                    0x08B // 38
#define SE_KIRBY_SLIP_BANANA               0x08C // 39
#define SE_KIRBY_WIPE_FACE                 0x08D // 40
#define SE_ABILITY_FIRE_ATTACK             0x08E // 41
#define SE_ABILITY_ICE_ATTACK              0x08F // 42
#define SE_ABILITY_ICE_BLOCK_PUSH          0x090 // 43
#define SE_ABILITY_BURNING_ATTACK          0x091 // 44
#define SE_ABILITY_COLLISION               0x092 // 45
#define SE_ABILITY_WHEEL_TRANSFORM         0x093 // 46
#define SE_ABILITY_WHEEL_TURN              0x094 // 47
#define SE_ABILITY_PARASOL_ATTACK          0x095 // 48
#define SE_ABILITY_CUTTER_ATTACK           0x096 // 49
#define SE_ABILITY_BEAM_ATTACK             0x097 // 50
#define SE_ABILITY_STONE_SLAM              0x098 // 51
#define SE_ABILITY_STONE_TRANSFORM         0x099 // 52
#define SE_08D56118                        0x09A // 53 Unused
#define SE_ABILITY_BOMB_SPAWN              0x09B // 54
#define SE_ABILITY_BOMB_THROW              0x09C // 55
#define SE_ABILITY_BOMB_EXPLODE            0x09D // 56
#define SE_ABILITY_THROW_GRAB              0x09E // 57
#define SE_ABILITY_THROW_ATTACK            0x09F // 58
#define SE_ABILITY_THROW_COLLISION         0x0A0 // 59
#define SE_ABILITY_SLEEP_SNORE             0x0A1 // 60
#define SE_ABILITY_SLEEP_WAKE              0x0A2 // 61
#define SE_ABILITY_COOK_START              0x0A3 // 62
#define SE_ABILITY_COOK_POTS               0x0A4 // 63
#define SE_ABILITY_COOK_STIR               0x0A5 // 64
#define SE_FOOD_SPAWN                      0x0A6 // 65
#define SE_LASER_ATTACK                    0x0A7 // 66
#define SE_LASER_REDIRECT                  0x0A8 // 67
#define SE_08D56520                        0x0A9 // 68 Unused
#define SE_08D56564                        0x0AA // 69 Unused
#define SE_08D565A8                        0x0AB // 70 Unused
#define SE_08D565EC                        0x0AC // 71 Unused
#define SE_ABILITY_COOK_SALT               0x0AD // 72
#define SE_ABILITY_UFO_BEAM_ATTACK         0x0AE // 73
#define SE_ABILITY_UFO_SMALL_LASER_ATTACK  0x0AF // 74
#define SE_ABILITY_UFO_MEDIUM_LASER_ATTACK 0x0B0 // 75
#define SE_ABILITY_UFO_LARGE_LASER_ATTACK  0x0B1 // 76
#define SE_ABILITY_UFO_LASER_REDIRECT      0x0B2 // 77
#define SE_ABILITY_UFO_FLOATING            0x0B3 // 78
#define SE_ABILITY_MASTER_WAVE_CHARGED     0x0B4 // 79
#define SE_ABILITY_SPARK_ATTACK            0x0B5 // 80
#define SE_ABILITY_TORNADO_ATTACK          0x0B6 // 81
#define SE_ABILITY_TORNADO_TRANSFORM       0x0B7 // 82
#define SE_ABILITY_HAMMER_ATTACK           0x0B8 // 83
#define SE_ABILITY_HAMMER_MIDAIR           0x0B9 // 84
#define SE_08D56B58                        0x0BA // 85 Unused
#define SE_ABILITY_HAMMER_GROUND           0x0BB // 86
#define SE_08D56C08                        0x0BC // 87 Unused
#define SE_ABILITY_HAMMER_CHARGE           0x0BD // 88
#define SE_08D56C50                        0x0BE // 89 Unused
#define SE_ABILITY_HAMMER_RUN_ATTACK       0x0BF // 90
#define SE_08D56D14                        0x0C0 // 91 Unused
#define SE_ABILITY_SWORD_ATTACK            0x0C1 // 92
#define SE_ABILITY_SWORD_MIDAIR            0x0C2 // 93
#define SE_ABILITY_SWORD_COMBO_1           0x0C3 // 94
#define SE_ABILITY_SWORD_COMBO_2           0x0C4 // 95
#define SE_ABILITY_SWORD_UPSLASH           0x0C5 // 96
#define SE_ABILITY_MISSILE_TRANSFORM       0x0C6 // 97
#define SE_ABILITY_MISSILE_MOVEMENT        0x0C7 // 98
#define SE_ABILITY_MISSILE_EXPLOSION       0x0C8 // 99
#define SE_ABILITY_FIGHTER_COMBO_1         0x0C9 // 100
#define SE_ABILITY_FIGHTER_COMBO_2         0x0CA // 101
#define SE_ABILITY_FIGHTER_COMBO_3         0x0CB // 102
#define SE_ABILITY_FIGHTER_DOWN_DASH       0x0CC // 103
#define SE_ABILITY_FIGHTER_CHARGE_1        0x0CD // 104
#define SE_ABILITY_FIGHTER_CHARGE_2        0x0CE // 105
#define SE_ABILITY_FIGHTER_CHARGE_3        0x0CF // 106
#define SE_ABILITY_FIGHTER_SMALL_WAVE      0x0D0 // 107
#define SE_ABILITY_FIGHTER_LARGE_WAVE      0x0D1 // 108
#define SE_ABILITY_FIGHTER_1_HP_ATTACK     0x0D2 // 109
#define SE_ABILITY_FIGHTER_UPPERCUT        0x0D3 // 110
#define SE_ABILITY_FIGHTER_WALK_ATTACK     0x0D4 // 111
#define SE_ABILITY_FIGHTER_RUN_ATTACK      0x0D5 // 112
#define SE_ABILITY_MAGIC_CAST              0x0D6 // 113
#define SE_ABILITY_MAGIC_ITEM              0x0D7 // 114
#define SE_ABILITY_MAGIC_META_KNIGHT       0x0D8 // 115
#define SE_ABILITY_SMASH_AIR_SPIN          0x0D9 // 116
#define SE_08D57760                        0x0DA // 117 Unused
#define SE_08D57780                        0x0DB // 118 Unused
#define SE_08D577A4                        0x0DC // 119 Unused
#define SE_ABILITY_CUPID_CHARGE_1          0x0DD // 120
#define SE_ABILITY_CUPID_CHARGE_2          0x0DE // 121
#define SE_ABILITY_CUPID_SHOOT             0x0DF // 122
#define SE_ABILITY_CUPID_FLOAT             0x0E0 // 123
#define SE_ABILITY_MASTER_WAVE_ATTACK      0x0E1 // 124
#define SE_ABILITY_CRASH_ATTACK            0x0E2 // 125
#define SE_08D58014                        0x0E3 // 126 Unused
#define SE_08D58038                        0x0E4 // 127 Unused
#define SE_ABILITY_MASTER_RUN_ATTACK       0x0E5 // 128
#define SE_OBJECT_ENEMY_DESPAWN_1          0x12C // 129
#define SE_OBJECT_ENEMY_DESPAWN_2          0x12D // 130
#define SE_OBJECT_ENEMY_DESPAWN_3          0x12E // 131
#define SE_OBJECT_BULLET_DESPAWN           0x12F // 132
#define SE_KIRBY_ENEMY_COLLISION           0x130 // 133
#define SE_08D58198                        0x131 // 134 Unused
#define SE_08D581BC                        0x132 // 135 Unused
#define SE_08D581E0                        0x133 // 136 Unused
#define SE_08D5820C                        0x134 // 137 Unused
#define SE_08D58274                        0x135 // 138 Unused
#define SE_OBJECT_BOMB_EXPLODE             0x136 // 139
#define SE_OBJECT_ICE_EXPLODE              0x137 // 140
#define SE_BRONTO_BURT_FLY                 0x138 // 141
#define SE_METAL_GUARDIAN_BIG_LASER        0x139 // 142
#define SE_WADDLE_DOO_BEAM_ATTACK          0x13A // 143 Used for Kracko's shock attack
#define SE_BASIC_ENEMY_FIRE_ATTACK         0x13B // 144
#define SE_LASER_BALL_LASER_ATTACK         0x13C // 145 Used by UFO
#define SE_PENGY_ICE_ATTACK                0x13D // 146
#define SE_ROCKY_SLAM                      0x13E // 147
#define SE_SIR_KIBBLE_BOOMERANG_ATTACK     0x13F // 148
#define SE_SPARKY_SHOCK_ATTACK             0x140 // 149
#define SE_SWORD_KNIGHT_SLASH_ATTACK       0x141 // 150
#define SE_08D5859C                        0x142 // 151 ONLY SwordKnight - Unable to identify in-game and asm has yet to be decomped
#define SE_TWISTER_FLYING                  0x143 // 152
#define SE_WHEELIE_COLLISION               0x144 // 153
#define SE_BASIC_ENEMY_JUMP                0x145 // 154 Used by Kracko's rain attack
#define SE_BULLET_ATTACK                   0x146 // 155
#define SE_DROPPY_STEAL_ATTACK             0x148 // 156
#define SE_PRANK_THROW_ITEM                0x149 // 157 Used by Shadow Kirby when throwing a bomb
#define SE_PRANK_PAINT                     0x14A // 158
#define SE_GOLEM_SLAM_ATTACK               0x14B // 159
#define SE_08D587A4                        0x14C // 160 Unused
#define SE_GOLEM_WHEEL_ATTACK_COLLISION    0x14D // 161
#define SE_GOLEM_PUNCH_ATTACK              0x14E // 162
#define SE_FOLEY_DROP                      0x14F // 163
#define SE_BASIC_ENEMY_LASER_ATTACK        0x150 // 164
#define SE_BANG_BANG_LAUNCH                0x151 // 165
#define SE_BOXIN_PUNCH_ATTACK              0x152 // 166
#define SE_08D5894C                        0x153 // 167 ONLY Boxin - Requires specific conditions to be met, unsure what they are yet.
#define SE_COOKIN_THROW_PAN                0x154 // 168
#define SE_HEAVY_KNIGHT_SLASH_ATTACK       0x155 // 169
#define SE_GIANT_ROCKY_SLAM                0x156 // 170
#define SE_METAL_GUARDIAN_TRI_LASER        0x157 // 171
#define SE_08D58A2C                        0x158 // 172 Unused
#define SE_FROSTY_SWALLOW_KIRBY            0x159 // 173
#define SE_FROSTY_SPIT_KIRBY               0x15A // 174 Used by Soarar too, more likely Snooter though, same se is used by Snooter after he spits out Kirby
#define SE_LEAP_KISS_ATTACK                0x15C // 175
#define SE_JACK_ATTACK                     0x15D // 176
#define SE_CUPIE_ARROW_ATTACK              0x15E // 177
#define SE_08D58B28                        0x15F // 178 Unused
#define SE_08D58B44                        0x160 // 179 Unused
#define SE_08D58B68                        0x161 // 180 Unused
#define SE_08D58B8C                        0x162 // 181 ONLY DarkMetaKnight Plays right before he does a sword attack on the ground
#define SE_MINIBOSS_RUN                    0x163 // 182 Used by Phan Phan when they start rolling
#define SE_BOSS_GROUND_POUND_ATTACK        0x164 // 183
#define SE_08D58C44                        0x165 // 184 MULTI Bonkers/Frosty - Bonkers Jumping much more difficult to identify with frosty, based on code it seems like it's used for his run attack
#define SE_MINIBOSS_EXPLOSION              0x166 // 185
#define SE_SPAWN_OBJECT                    0x167 // 186
#define SE_BOSS_THROW_OBJECT               0x168 // 187 Used by Titan Head when shooting rockets
#define SE_08D58D6C                        0x169 // 188 Unused
#define SE_08D58DD4                        0x16A // 189 ONLY Object
#define SE_08D58F3C                        0x16B // 190 Unused
#define SE_BONKERS_HAMMER_ATTACK           0x16C // 191
#define SE_MINI_BOSS_GRAB                  0x16D // 192
#define SE_PHANPHAN_SPIN_KIRBY             0x16E // 193
#define SE_PHAN_PHAN_THROW_KIRBY           0x16F // 194
#define SE_08D59034                        0x170 // 195 Unused
#define SE_BATAFIRE_FIREBALLS_AND_DIVE     0x171 // 196
#define SE_BOX_BOXER_CHARGE                0x172 // 197
#define SE_BOX_BOXER_WAVE_ATTACK           0x173 // 198
#define SE_BOXY_THROW_PRESENT              0x174 // 199
#define SE_BOXY_OPEN_PRESENT               0x175 // 200
#define SE_HAND_PUNCH                      0x176 // 201
#define SE_HAND_FINGER_GUN                 0x177 // 202
#define SE_BOMBAR_MISSILE_TELEGRAPH        0x178 // 203
#define SE_BOMBAR_MISSILE_ATTACK           0x179 // 204 Supposedly used with KirbyCannon too
#define SE_BOMBAR_DIVE_ATTACK              0x17A // 205
#define SE_AUDIENCE_CHEER                  0x17B // 206
#define SE_MINIBOSS_PRE_EXPLODE            0x17C // 207
#define SE_KRACKO_LIGHTNING_ATTACK         0x17F // 208
#define SE_KRACKO_SWEEP_ATTACK             0x180 // 209 Used by Dark Mind Dash attack during final form
#define SE_KING_GOLEM_HAND_SLAM            0x181 // 210
#define SE_KING_GOLEM_SPAWN_GOLEM          0x182 // 211
#define SE_08D599A0                        0x183 // 212 Unused
#define SE_GOBBLER_DASH_ATTACK             0x185 // 213
#define SE_GOBBLER_EAT_KIRBY               0x186 // 214
#define SE_WIZ_TAP_HAT                     0x187 // 215
#define SE_WIZ_JUMP                        0x188 // 216
#define SE_MOLEY_DIG                       0x18A // 217 Used by Dark Mind Form 2 when he begins expanding.
#define SE_MOLEY_THROW_ATTACK              0x18B // 218
#define SE_MEGA_TITAN_FLY                  0x18C // 219
#define SE_MEGA_TITAN_FIST_ATTACK          0x18D // 220
#define SE_MEGA_TITAN_FIST_COLLISION       0x18E // 221
#define SE_MEGA_TITAN_ELECTRIC_WALL        0x18F // 222
#define SE_08D59BEC                        0x190 // 223 Unused
#define SE_BOX_BOXER_PUNCH_ATTACK          0x191 // 224
#define SE_BOX_BOXER_GRAB                  0x192 // 225
#define SE_BOX_BOXER_THROW                 0x193 // 226
#define SE_BOSS_CLAP                       0x194 // 227
#define SE_BOX_BOXER_JUMP                  0x195 // 228
#define SE_BOXY_DASH                       0x196 // 229
#define SE_BOXY_COLLISION                  0x197 // 230
#define SE_HAND_POUND                      0x199 // 231
#define SE_HAND_GRAB                       0x19A // 232
#define SE_BOMBAR_DROP_BOMB                0x19B // 233
#define SE_GOBBLER_SPAWN_FISH              0x19C // 234
#define SE_WIZ_SPAWN_ITEM                  0x19D // 235
#define SE_WIZ_DASH                        0x19E // 236
#define SE_BATAFIRE_FLYING                 0x19F // 237
#define SE_08D59F44                        0x1A0 // 238 Unused
#define SE_WIZ_SPAWN                       0x1A1 // 239
#define SE_WIZ_HAT_JIGGLE                  0x1A2 // 240
#define SE_WIZ_INITIAL_JUMP                0x1A3 // 241
#define SE_08D59FC8                        0x1A4 // 242 MULTI DarkMetaKnight/Kirby/CutsceneTrigger
#define SE_08D59FE4                        0x1A5 // 243 Unused
#define SE_DMK_PARRY                       0x1A6 // 244
#define SE_DARK_MIND_TELE_1                0x1A7 // 245
#define SE_DARK_MIND_TELE_2                0x1A8 // 246
#define SE_08D5A0A0                        0x1A9 // 247 ONLY DarkMind - SE_DARK_MIND_MIRROR_SPIN_START?
#define SE_DARK_MIND_SHOOT_STAR            0x1AA // 248
#define SE_08D5A188                        0x1AB // 249 Unused
#define SE_DARK_MIND_SHATTER               0x1AC // 250
#define SE_08D5A1EC                        0x1AD // 251 ONLY DarkMind - SE_DARK_MIND_MIRROR_SPIN_END?
#define SE_DARK_MIND_SCREEN_BOMB           0x1AE // 252
#define SE_08D5A5FC                        0x1AF // 253 ONLY DarkMind - SE_DARK_MIND_PHASE_5_ATTACK?
#define SE_08D5A644                        0x1B0 // 254 ONLY DarkMind
#define SE_08D5A698                        0x1B1 // 255 ONLY DarkMind - SE_DARK_MIND_EXPAND?
#define SE_08D5A6B4                        0x1B2 // 256 ONLY DarkMind - SE_DARK_MIND_PHASE_4_START?
#define SE_DARK_MIND_LASER_BEAM            0x1B3 // 257
#define SE_DARK_MIND_LASER_SHOT            0x1B4 // 258
#define SE_DARK_MIND_LASER_REBOUND         0x1B5 // 259
#define SE_DARK_MIND_MIRROR_SWEEP          0x1B6 // 260
#define SE_08D5A864                        0x1B7 // 261 ONLY DarkMind
#define SE_DARK_META_KNIGHT_CHARGE         0x1C2 // 262
#define SE_DARK_META_KNIGHT_TORNADO        0x1C3 // 263
#define SE_08D5A964                        0x1C4 // 264 ONLY DarkMetaKnight - se_dark_meta_knight_wave
#define SE_08D5A99C                        0x1C5 // 265 ONLY DarkMetaKnight - SE_DARK_META_KNIGHT_JUMP?
#define SE_08D5ACA0                        0x1C7 // 266 Unused
#define SE_08D5ACCC                        0x1F4 // 267 MULTI Bonus/GoalGameBonus/Object/Shard/Chest - se_item_collected
#define SE_BONUS_1UP                       0x1F5 // 268
#define SE_08D5AD9C                        0x1F6 // 269 MULTI Bonus/GoalGameBonus/Kirby/Code08032E98
#define SE_08D5AE30                        0x1F7 // 270 ONLY Kirby se_kirby_dead
#define SE_PAUSE_MENU_OPEN                 0x1F8 // 271
#define SE_08D5AE9C                        0x1F9 // 272 ONLY Kirby
#define SE_PAUSE_MENU_ACTIVATE             0x1FA // 273
#define SE_PHONE_RING                      0x1FB // 274
#define SE_08D5AF5C                        0x1FC // 275 ONLY Code08032E98
#define SE_08D5B2A8                        0x1FD // 276 MULTI Kirby/WarpStar
#define SE_BLOCK_BREAK                     0x1FE // 277
#define SE_08D5B4FC                        0x1FF // 278 ONLY Kirby
#define SE_08D5B84C                        0x200 // 279 MULTI Kirby/Code0806F734
#define SE_08D5B924                        0x201 // 280 MULTI DarkMind/Kirby/CutsceneTrigger
#define SE_CANNON_FUSE_LIT                 0x202 // 281
#define SE_08D5B9C4                        0x203 // 282 ONLY Kirby
#define SE_08D5B9E8                        0x204 // 283 Unused
#define SE_SWITCH_ACTIVATE                 0x205 // 284
#define SE_08D5BE24                        0x206 // 285 MULTI Kirby/Code0802E57C - Goal Rooms?
#define SE_08D5C258                        0x207 // 286 MULTI Kirby/WarpStar - Goal Rooms?
#define SE_08D5C490                        0x208 // 287 MULTI Kirby/CutsceneTrigger/Code0802E57C - Goal Rooms?
#define SE_KIRBY_MIRROR_STANDARD           0x209 // 288
#define SE_KIRBY_MIRROR_TO_HUB             0x20A // 289
#define SE_08D5DADC                        0x20B // 290 Unused
#define SE_08D5DB04                        0x20C // 291 ONLY Kirby
#define SE_CHEST_COLLECT_ITEM              0x20D // 292
#define SE_08D5DE20                        0x20E // 293 Unused
#define SE_WARPSTAR_ACTIVATE_DESTROY       0x20F // 294
#define SE_08D5DE8C                        0x210 // 295 ONLY Kirby
#define SE_SHARD_OBTAINED                  0x212 // 296
#define SE_MIRROR_COMPLETE                 0x213 // 297
#define SE_08D5DEE4                        0x214 // 298 Unused
#define SE_VERT_SLIDING_DOOR_OPEN_CLOSE    0x215 // 299
#define SE_08D5DF80                        0x216 // 300 ONLY DarkMetaKnight
#define SE_08D5DFE0                        0x217 // 301 ONLY DarkMetaKnight
#define SE_08D5E00C                        0x218 // 302 ONLY DarkMetaKnight - SE_DARK_META_KNIGHT_REVEAL?
#define SE_08D5E044                        0x219 // 303 ONLY DarkMetaKnight - SE_DARK_META_KNIGHT_SHATTER
#define SE_08D5E238                        0x21A // 304 ONLY CutsceneTrigger
#define SE_08D5E270                        0x21B // 305 ONLY DarkMind - se_dark_mind_phase_5_start
#define SE_MAIN_MENU_CURSOR                0x21D // 306
#define SE_MAIN_MENU_SELECT                0x21E // 307
#define SE_MAIN_MENU_BACK                  0x21F // 308
#define SE_GAME_SELECT_DELETE_FILE         0x220 // 309 se_main_menu_delete_save
#define SE_GAME_SELECT_AMBIENT_1           0x221 // 310 se_main_menu_ambient_1
#define SE_GAME_SELECT_AMBIENT_2           0x222 // 311 se_main_menu_ambient_2
#define SE_APPLY_SPRAY_PAINT               0x223 // 312
#define SE_PAUSE_WORLD_MAP_HUB_CONNECT     0x224 // 313
#define SE_PAUSE_WORLD_MAP_HUB_MIRROR      0x225 // 314
#define SE_SHADOW_KIRBY_SPAWN              0x226 // 315
#define SE_CHEST_OPEN                      0x227 // 316
#define SE_SUBGAMES_MOVE_CURSOR            0x228 // 317
#define SE_SUBGAMES_SELECT                 0x229 // 318
#define SE_SUBGAME_CRACKITY_HACK_HIT       0x22A // 319
#define SE_08D5E618                        0x22C // 320 MULTI Code0814EBE4/Subgames/Code08025650 - SE_SUBGAME_WAVE_RIDE_GOAL?
#define SE_08D5E65C                        0x22D // 321 MULTI Subgames/WarpStar - SE_SUBGAME_WAVE_RIDE_JUMP? 
#define SE_SUBGAME_WAVE_RIDE_LAND          0x22E // 322
#define SE_SUBGAME_CRACKITY_HACK_DIG_1     0x230 // 323
#define SE_SUBGAME_CRACKITY_HACK_DIG_2     0x231 // 324
#define SE_08D5E730                        0x232 // 325 ONLY Subgames - SE_SUBGAME_WAVE_RIDE_SPEEDUP?
#define SE_08D5E854                        0x235 // 326 ONLY Subgames - Wave Ride maybe?
#define SE_08D5EA08                        0x236 // 327 ONLY ObjectSpawner
#define SE_08D5EA2C                        0x237 // 328 Unused
#define SE_SUBGAME_SPEED_EATERS_REVEAL     0x238 // 329
#define SE_SUBGAME_SPEED_EATERS_INHALE     0x239 // 330
#define SE_SUBGAME_SPEED_EATERS_SWALLOW    0x23A // 331
#define SE_SUBGAME_SPEED_EATERS_POINTS     0x23B // 332
#define SE_SUBGAME_SPEED_EATERS_BOMBS      0x23C // 333
// Intro Cutscene til 345
#define SE_INTRO_CUTSCENE_AMBIENT_1        0x23D // 334
#define SE_INTRO_CUTSCENE_AMBIENT_2        0x23E // 335
#define SE_INTRO_CUTSCENE_AMBIENT_3        0x23F // 336
#define SE_META_KNIGHT_FLY_IN              0x240 // 337
#define SE_INTRO_CUTSCENE_DMK_LANDING      0x241 // 338
#define SE_INTRO_CUTSCENE_DMK_SLASH        0x242 // 339
#define SE_INTRO_CUTSCENE_DMK_JUMP         0x243 // 340
#define SE_INTRO_CUTSCENE_AMBIENT_4        0x244 // 341
#define SE_INTRO_CUTSCENE_WARP_STAR_ENTER  0x245 // 342
#define SE_INTRO_CUTSCENE_WARP_STAR_EXIT   0x246 // 343
#define SE_INTRO_CUTSCENE_KIRBY_RUN        0x247 // 344
#define SE_INTRO_CUTSCENE_KIRBY_SPIN       0x248 // 345
// Ingame post tutorial cutscene til 354
#define SE_POST_TUTO_MK_HIT                0x249 // 346
#define SE_POST_TUTO_SMOKE                 0x24A // 347
#define SE_POST_TUTO_SLASH_MIRROR          0x24B // 348
#define SE_POST_TUTO_META_KNIGHT_GROUNDED  0x24C // 349
#define SE_POST_TUTO_MIRROR_SHATTER        0x24D // 350
#define SE_POST_TUTO_DMK_EXIT              0x24E // 351
#define SE_POST_TUTO_SHADOW_KIRBY_BOUNCE   0x24F // 352
#define SE_POST_TUTO_SHADOW_KIRBY_WALK     0x250 // 353
#define SE_POST_TUTO_SHADOW_KIRBY_SPAWN    0x251 // 354
#define SE_08D5F5A8                        0x252 // 355 ONLY DarkMind
#define SE_08D5F658                        0x253 // 356 ONLY DarkMind - SE_DARK_MIND_LASER_BEAM_START
#define SE_08D5F688                        0x254 // 357 Unused
#define SE_08D5F6A8                        0x258 // 358 se_intro_kirby_look
#define SE_08D5F6D4                        0x259 // 359 se_intro_kirby_expand
#define SE_08D5F704                        0x25A // 360 se_intro_kirby_dash
#define SE_08D5F724                        0x25B // 361 Unused
#define SE_08D5F758                        0x25C // 362 ONLY Intro
#define SE_08D5F778                        0x25D // 363 ONLY Intro
#define SE_08D5F7CC                        0x25E // 364 Unused
#define SE_08D5F800                        0x25F // 365 se_intro_giant_rocky_slam
#define SE_08D5F8AC                        0x260 // 366 Unused
#define SE_08D5F8F8                        0x261 // 367 Unused
#define SE_08D5F938                        0x262 // 368 Unused
#define SE_08D5F96C                        0x263 // 369 Unused
#define SE_08D5F990                        0x264 // 370 Unused
#define SE_08D5F9B0                        0x265 // 371 se_intro_ambient_1
#define SE_08D5F9D0                        0x266 // 372 se_intro_ambient_2
#define SE_08D5FA50                        0x267 // 373 ONLY Code08026044
#define SE_08D5FA78                        0x268 // 374 ONLY Code08026044
#define SE_08D5FAA4                        0x269 // 375 ONLY Code08026044
#define SE_08D5FD28                        0x26A // 376 ONLY Code08026044
#define SE_08D5FD8C                        0x26B // 377 Unused

#endif
