#include "global.h"

static const char gUnk_083852F0[] = "kbydead";
static const char gUnk_083852F8[] = "boss_kyotu";
static const char gUnk_08385304[] = "boss_mid";
static const char gUnk_08385310[] = "ply_5";
static const char gUnk_08385318[] = "ply_2";
static const char gUnk_08385320[] = "ply_1";
static const char gUnk_08385328[] = "start_st";
static const char gUnk_08385334[] = "Non";
static const char gUnk_08385338[] = "takara";
static const char gUnk_08385340[] = "tobira_F2";
static const char gUnk_0838534C[] = "tobira_F1";
static const char gUnk_08385358[] = "switch";
static const char gUnk_08385360[] = "koware1";
static const char gUnk_08385368[] = "keitai_tyak";
static const char gUnk_08385374[] = "keitai_coal";
static const char gUnk_08385380[] = "kettei";
static const char gUnk_08385388[] = "select";
static const char gUnk_08385390[] = "pause";
static const char gUnk_08385398[] = "kbydead_FGM";
static const char gUnk_083853A4[] = "kaifuku";
static const char gUnk_083853AC[] = "oneup";
static const char gUnk_083853B4[] = "item";
static const char gUnk_083853BC[] = "king_goalem";
static const char gUnk_083853C8[] = "king_tataki";
static const char gUnk_083853D4[] = "b_boss_flash";
static const char gUnk_083853E4[] = "b_boss_exp";
static const char gUnk_083853F0[] = "cat_fireboal";
static const char gUnk_08385400[] = "cat_atk";
static const char gUnk_08385408[] = "m_boss_flash";
static const char gUnk_08385418[] = "m_boss_kizetu";
static const char gUnk_08385428[] = "m_boss_damage1";
static const char gUnk_08385438[] = "m_boss_exp";
static const char gUnk_08385444[] = "birug_hakidashi";
static const char gUnk_08385454[] = "birug_nomikomi";
static const char gUnk_08385464[] = "gleat_tyakuti";
static const char gUnk_08385474[] = "heavynight_sword";
static const char gUnk_08385488[] = "ditshi_apper";
static const char gUnk_08385498[] = "dittshi_jab";
static const char gUnk_083854A4[] = "syuty_shot";
static const char gUnk_083854B0[] = "foaly_bombnage";
static const char gUnk_083854C0[] = "apper_apper";
static const char gUnk_083854CC[] = "roal_kabe";
static const char gUnk_083854D8[] = "roal_start";
static const char gUnk_083854E4[] = "bress__dosin_s";
static const char gUnk_083854F4[] = "zako_shot_zo1";
static const char gUnk_08385504[] = "zako_jump1";
static const char gUnk_08385510[] = "zako_spark1";
static const char gUnk_0838551C[] = "zako_fire1";
static const char gUnk_08385528[] = "zako_shot1";
static const char gUnk_08385534[] = "zako_tobitachi";
static const char gUnk_08385544[] = "zako_dead_ice";
static const char gUnk_08385554[] = "zako_bomb";
static const char gUnk_08385560[] = "hit_2";
static const char gUnk_08385568[] = "hit_1";
static const char gUnk_08385570[] = "dmg_swordhit";
static const char gUnk_08385580[] = "dmg_cutterhit";
static const char gUnk_08385590[] = "dmg_icehit";
static const char gUnk_0838559C[] = "zakodamage1";
static const char gUnk_083855A8[] = "zakodead_S1";
static const char gUnk_083855B4[] = "zakodead3";
static const char gUnk_083855C0[] = "zakodead2";
static const char gUnk_083855CC[] = "zakodead1";
static const char gUnk_083855D8[] = "kby_crash60";
static const char gUnk_083855E4[] = "kby_moon_kick";
static const char gUnk_083855F4[] = "kby_spin_kick";
static const char gUnk_08385604[] = "kby_riging";
static const char gUnk_08385610[] = "kby_mega_pshot";
static const char gUnk_08385620[] = "kby_pshot2";
static const char gUnk_0838562C[] = "kby_pshot1";
static const char gUnk_08385638[] = "kby_pshot_tame3";
static const char gUnk_08385648[] = "kby_pshot_tame2";
static const char gUnk_08385658[] = "kby_pshot_tame1";
static const char gUnk_08385668[] = "kby_sky_kick";
static const char gUnk_08385678[] = "kby_spike_panch";
static const char gUnk_08385688[] = "kby_kick";
static const char gUnk_08385694[] = "kby_panch";
static const char gUnk_083856A0[] = "kby_sword_final";
static const char gUnk_083856B0[] = "kby_sword_mijin2";
static const char gUnk_083856C4[] = "kby_sword_mijin1";
static const char gUnk_083856D8[] = "kby_sword40_2";
static const char gUnk_083856E8[] = "kby_sword40_1 ";
static const char gUnk_083856F8[] = "kby_hammerhit3";
static const char gUnk_08385708[] = "kby_tornado";
static const char gUnk_08385714[] = "kby_hammerhit2";
static const char gUnk_08385724[] = "kby_fire_oni2";
static const char gUnk_08385734[] = "kby_fire_oni1";
static const char gUnk_08385744[] = "kby_hammeratari";
static const char gUnk_08385754[] = "kby_hammerhit1";
static const char gUnk_08385764[] = "kby_hammerfuri2";
static const char gUnk_08385774[] = "kby_hammerfuri1";
static const char gUnk_08385784[] = "kby_tornado2";
static const char gUnk_08385794[] = "kby_tornado1";
static const char gUnk_083857A4[] = "kby_spark_loop";
static const char gUnk_083857B4[] = "kby_ufo_tamekiri";
static const char gUnk_083857C8[] = "kby_ufo_nori";
static const char gUnk_083857D8[] = "kby_ufo_hane";
static const char gUnk_083857E8[] = "kby_ufo_lazer4";
static const char gUnk_083857F8[] = "kby_ufo_lazer3";
static const char gUnk_08385808[] = "kby_ufo_lazer2";
static const char gUnk_08385818[] = "kby_ufo_lazer1";
static const char gUnk_08385828[] = "kby_ufo_tame4";
static const char gUnk_08385838[] = "kby_ufo_tame3";
static const char gUnk_08385848[] = "kby_ufo_tame2";
static const char gUnk_08385858[] = "kby_ufo_tame1";
static const char gUnk_08385868[] = "kby_hi_jump";
static const char gUnk_08385874[] = "kby_lazerkabe20";
static const char gUnk_08385884[] = "kby_lazer50";
static const char gUnk_08385890[] = "kby_sleep2";
static const char gUnk_0838589C[] = "kby_sleep1";
static const char gUnk_083858A8[] = "kby_slowhit";
static const char gUnk_083858B4[] = "kby_slownage";
static const char gUnk_083858C4[] = "kby_slowcatch";
static const char gUnk_083858D4[] = "kby_korogari_2";
static const char gUnk_083858E4[] = "kby_stone_2";
static const char gUnk_083858F0[] = "kby_stone_1";
static const char gUnk_083858FC[] = "kby_lazer";
static const char gUnk_08385908[] = "kby_cutter";
static const char gUnk_08385914[] = "kby_parasol";
static const char gUnk_08385920[] = "kby_wheelbrake";
static const char gUnk_08385930[] = "kby_wheel_loop";
static const char gUnk_08385940[] = "kby_dokan";
static const char gUnk_0838594C[] = "kby_burnin_loop";
static const char gUnk_0838595C[] = "kby_icecube_osi";
static const char gUnk_0838596C[] = "kby_ice_loop";
static const char gUnk_0838597C[] = "kby_fire_loop";
static const char gUnk_0838598C[] = "not sound";
static const char gUnk_08385998[] = "kby_toridashi";
static const char gUnk_083859A8[] = "kby_suikomi_loop";
static const char gUnk_083859BC[] = "kby_humi_jump";
static const char gUnk_083859CC[] = "kby_korogari_1";
static const char gUnk_083859DC[] = "kby_tobitati";
static const char gUnk_083859EC[] = "kby_sinisou";
static const char gUnk_083859F8[] = "kby_tyuu";
static const char gUnk_08385A04[] = "kby_starhane";
static const char gUnk_08385A14[] = "kby_hosidasi";
static const char gUnk_08385A24[] = "kby_mizuoti";
static const char gUnk_08385A30[] = "kby_mizuhaki";
static const char gUnk_08385A40[] = "kby_hoshiware";
static const char gUnk_08385A50[] = "kby_ori";
static const char gUnk_08385A58[] = "kby_nobori";
static const char gUnk_08385A64[] = "kby_dmg_fire4";
static const char gUnk_08385A74[] = "kby_dmg_fire3";
static const char gUnk_08385A84[] = "kby_dmg_fire2";
static const char gUnk_08385A94[] = "kby_dmg_fire1";
static const char gUnk_08385AA4[] = "kby_dmg_ice";
static const char gUnk_08385AB0[] = "kby_oyogi_2";
static const char gUnk_08385ABC[] = "kby_oyogi_1";
static const char gUnk_08385AC8[] = "kby_brake";
static const char gUnk_08385AD4[] = "kby_sliding";
static const char gUnk_08385AE0[] = "kby_dash";
static const char gUnk_08385AEC[] = "kby_rakka";
static const char gUnk_08385AF8[] = "kby_habataki";
static const char gUnk_08385B08[] = "kby_airshot";
static const char gUnk_08385B14[] = "kby_nomikomi";
static const char gUnk_08385B24[] = "kby_dmg_3";
static const char gUnk_08385B30[] = "kby_dmg_2";
static const char gUnk_08385B3C[] = "kby_dmg_1";
static const char gUnk_08385B48[] = "kby_nouryoku";
static const char gUnk_08385B58[] = "kby_tyakuti";
static const char gUnk_08385B64[] = "kby_starshot_2";
static const char gUnk_08385B74[] = "kby_starshot_1";
static const char gUnk_08385B84[] = "kby_hoobari";
static const char gUnk_08385B90[] = "kby_suikomi";
static const char gUnk_08385B9C[] = "kby_jump";

static const s16 gUnk_08385BA6[] = {
    -0x1, -0x1,
    -0x2, -0x2,
    -0x4, -0x4,
    -0x8, -0x8,
    -0x8, -0x8,
     0x8,  0x8,
     0x8,  0x8,
     0x4,  0x4,
     0x2,  0x2,
     0x1,  0x1,
    -0x1, -0x1,
    -0x1, -0x1,
    -0x1, -0x1,
    -0x1, -0x1,
    -0x1, -0x1,
     0x1,  0x1,
     0x1,  0x1,
     0x1,  0x1,
     0x1,  0x1,
     0x1,  0x1,
       0,
};

// None of the functions is referenced.
// TODO: look into the kiosk demo to confirm these functions ought to be here

static void nullsub_129(void) {}

static void nullsub_130(void) {}

static void nullsub_131(void) {}

static void nullsub_132(void) {}

static void sub_08138764(u8 *a1, s32 a2, u8 a3) {
    u8 i;
    s32 r3;

    for (i = 0; i < a3; ++i) {
        u8 *dst = a1 + i;

        r3 = ((0xF << 4 * (a3 - i - 1)) & a2) >> 4 * (a3 - i - 1);
        *dst = r3 + 0x30;
        if (*dst > 0x39)
            *dst = r3 + 0x37;
    }
    a1[i] = 0;
}
