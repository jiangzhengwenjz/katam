gNumMusicPlayers = 4;
gMaxLines = 0;

ENTRY(__start)

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_02000000 = .;
        . = 0x00000140; gUnk_02000140 = .;
        . = 0x00000F40; gUnk_02000F40 = .;
        . = 0x00008300; gUnk_02008300 = .;
        . = 0x00008340; gUnk_02008340 = .;
        . = 0x00008540; gUnk_02008540 = .;
        . = 0x00008740; gUnk_02008740 = .;
        . = 0x00018200; gUnk_02018200 = .;
        . = 0x00018F40; gUnk_02018F40 = .;
        . = 0x0001CB40; gUnk_0201CB40 = .;
        . = 0x00020EE0; gUnk_02020EE0 = .;
        . = 0x00020EE8; gUnk_02020EE8 = .;
        . = 0x00020EEC; gUnk_02020EEC = .;
        . = 0x00020F20; gUnk_02020F20 = .;
        . = 0x00020F24; gUnk_02020F24 = .;
        . = 0x00020F58; gUnk_02020F58 = .;
        . = 0x00020F5C; gUnk_02020F5C = .;
        . = 0x00021088; gUnk_02021088 = .;
        . = 0x00021230; gUnk_02021230 = .;
        . = 0x000213D8; gUnk_020213D8 = .;
        . = 0x00021580; gUnk_02021580 = .;
        . = 0x00021590; gUnk_02021590 = .;
        . = 0x00022120; gUnk_02022120 = .;
        . = 0x00022320; gUnk_02022320 = .;
        . = 0x00022520; gUnk_02022520 = .;
        . = 0x00022920; gUnk_02022920 = .;
        . = 0x00022930; gUnk_02022930 = .;
        . = 0x000229D0; gUnk_020229D0 = .;
        . = 0x000229D4; gUnk_020229D4 = .;
        . = 0x000229D8; gUnk_020229D8 = .;
        . = 0x000229E0; gUnk_020229E0 = .;
        . = 0x00022E60; gUnk_02022E60 = .;
        . = 0x00022E70; gUnk_02022E70 = .;
        . = 0x00022E80; gUnk_02022E80 = .;
        . = 0x00022EA0; gUnk_02022EA0 = .;
        . = 0x00022EB0; gUnk_02022EB0 = .;
        . = 0x00022EC0; gUnk_02022EC0 = .;
        . = 0x00022F40; gUnk_02022F40 = .;
        . = 0x00022F50; gUnk_02022F50 = .;
        . = 0x00023350; gUnk_02023350 = .;
        . = 0x00023354; gUnk_02023354 = .;
        . = 0x00023358; gUnk_02023358 = .;
        . = 0x00023368; gUnk_02023368 = .;
        . = 0x00023388; gUnk_02023388 = .;
        . = 0x00023488; gUnk_02023488 = .;
        . = 0x00023508; gUnk_02023508 = .;
        . = 0x00023510; gUnk_02023510 = .;
        . = 0x00023518; gUnk_02023518 = .;
        . = 0x00023520; gUnk_02023520 = .;
        . = 0x00023530; gUnk_02023530 = .;
        . = 0x0002353C; gUnk_0202353C = .;
        . = 0x00023540; gUnk_02023540 = .;
        . = 0x0002371C; gUnk_0202371C = .;
        . = 0x00023720; gUnk_02023720 = .;
        . = 0x00024ED0; gUnk_02024ED0 = .;
        . = 0x00026D50; gUnk_02026D50 = .;
        . = 0x00026D60; gUnk_02026D60 = .;
        . = 0x00028BF0; gUnk_02028BF0 = .;
        . = 0x00028C10; gUnk_02028C10 = .;
        . = 0x00028CA0; gUnk_02028CA0 = .;
        . = 0x00028EE0; gUnk_02028EE0 = .;
        . = 0x000382A0; gUnk_020382A0 = .;
        . = 0x000382D0; gUnk_020382D0 = .;
        . = 0x000382D8; gUnk_020382D8 = .;
        . = 0x000382E8; gUnk_020382E8 = .;
        . = 0x00038574; gUnk_02038574 = .;
        . = 0x00038578; gUnk_02038578 = .;
        . = 0x00038580; gUnk_02038580 = .;
        . = 0x00038590; gUnk_02038590 = .;
        . = 0x00038960; gUnk_02038960 = .;
        . = 0x00038990; gUnk_02038990 = .;
        . = 0x0003A9A0; gUnk_0203A9A0 = .;
        . = 0x0003A9B0; gUnk_0203A9B0 = .;
        . = 0x0003ACB0; gUnk_0203ACB0 = .;
        . = 0x0003ACC0; gUnk_0203ACC0 = .;
        . = 0x0003ACD4; gUnk_0203ACD4 = .;
        . = 0x0003ACE8; gUnk_0203ACE8 = .;
        . = 0x0003ACFC; gUnk_0203ACFC = .;
        . = 0x0003AD10; gUnk_0203AD10 = .;
        . = 0x0003AD14; gUnk_0203AD14 = .;
        . = 0x0003AD18; gUnk_0203AD18 = .;
        . = 0x0003AD1C; gUnk_0203AD1C = .;
        . = 0x0003AD20; gUnk_0203AD20 = .;
        . = 0x0003AD24; gUnk_0203AD24 = .;
        . = 0x0003AD2C; gUnk_0203AD2C = .;
        . = 0x0003AD30; gUnk_0203AD30 = .;
        . = 0x0003AD34; gUnk_0203AD34 = .;
        . = 0x0003AD38; gUnk_0203AD38 = .;
        . = 0x0003AD3C; gUnk_0203AD3C = .;
        . = 0x0003AD40; gUnk_0203AD40 = .;
        . = 0x0003AD44; gUnk_0203AD44 = .;
        . = 0x0003AD48; gUnk_0203AD48 = .;
        . = 0x0003AD4C; gUnk_0203AD4C = .;
        . = 0x0003AD50; gUnk_0203AD50 = .;
        . = 0x0003ADE0; gUnk_0203ADE0 = .;
        . = 0x0003ADE4; gUnk_0203ADE4 = .;
        . = 0x00040000;
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_03000000 = .;
        . = 0x00000004; gUnk_03000004 = .;
        . = 0x00000008; gUnk_03000008 = .;
        . = 0x0000000C; gUnk_0300000C = .;
        . = 0x00000010; gUnk_03000010 = .;
        . = 0x00000014; gUnk_03000014 = .;
        . = 0x00000020; gUnk_03000020 = .;
        . = 0x0000002C; gUnk_0300002C = .;
        . = 0x00000030; gUnk_03000030 = .;
        . = 0x00000034; gUnk_03000034 = .;
        . += 4; . = ALIGN(4);
        *libgcc.a:dp-bit.o(.bss);
        . = ALIGN(4);
        *libgcc.a:fp-bit.o(.bss);
        . = ALIGN(4);
        . = 0x00000060; SoundMainRAM_Buffer = .;
        . = 0x00000470; gUnk_03000470 = .;
        . = 0x00000478; gUnk_03000478 = .;
        . = 0x00000480; gUnk_03000480 = .;
        . = 0x00000484; gUnk_03000484 = .;
        . = 0x00000490; gUnk_03000490 = .;
        . = 0x000004C0; gUnk_030004C0 = .;
        . = 0x0000050C; gUnk_0300050C = .;
        . = 0x00000510; gUnk_03000510 = .;
        . = 0x00000518; gUnk_03000518 = .;
        . = 0x0000051C; gUnk_0300051C = .;
        . = 0x00000524; gUnk_03000524 = .;
        . = 0x00000530; gUnk_03000530 = .;
        . = 0x00000554; gUnk_03000554 = .;
        . = 0x00000558; gUnk_03000558 = .;
        . = 0x00000560; gSoundInfo = .;
        . = 0x00001510; gMPlayJumpTable = .;
        . = 0x00001514; gUnk_03001514 = .;
        . = 0x00001598; gUnk_03001598 = .;
        . = 0x0000159C; gUnk_0300159C = .;
        . = 0x000015A0; gCgbChans = .;
        . = 0x000016A0; gUnk_030016A0 = .;
        . = 0x000016E0; gUnk_030016E0 = .;
        . = 0x00001720; gUnk_03001720 = .;
        . = 0x00001760; gMPlayMemAccArea = .;
        . = 0x00001760; gUnk_03001760 = .;
        . = 0x00001770; gUnk_03001770 = .;
        . = 0x000017B0; gUnk_030017B0 = .;
        . = 0x000017F0; gUnk_030017F0 = .;
        . = 0x000019F0; gUnk_030019F0 = .;
        . = 0x000023F0; gUnk_030023F0 = .;
        . = 0x000023F4; gUnk_030023F4 = .;
        . = 0x00002400; gUnk_03002400 = .;
        . = 0x00002440; gUnk_03002440 = .;
        . = 0x00002450; gUnk_03002450 = .;
        . = 0x00002470; gUnk_03002470 = .;
        . = 0x00002480; gUnk_03002480 = .;
        . = 0x00002484; gUnk_03002484 = .;
        . = 0x00002488; gUnk_03002488 = .;
        . = 0x0000248C; gUnk_0300248C = .;
        . = 0x00002490; gUnk_03002490 = .;
        . = 0x000024E0; gUnk_030024E0 = .;
        . = 0x000024E4; gUnk_030024E4 = .;
        . = 0x000024E8; gUnk_030024E8 = .;
        . = 0x000024F0; gUnk_030024F0 = .;
        . = 0x00002500; gUnk_03002500 = .;
        . = 0x00002514; gUnk_03002514 = .;
        . = 0x00002520; gUnk_03002520 = .;
        . = 0x00002540; gUnk_03002540 = .;
        . = 0x00002544; gUnk_03002544 = .;
        . = 0x00002548; gUnk_03002548 = .;
        . = 0x0000254C; gUnk_0300254C = .;
        . = 0x00002550; gUnk_03002550 = .;
        . = 0x00002554; gUnk_03002554 = .;
        . = 0x00002558; gUnk_03002558 = .;
        . = 0x00002560; gUnk_03002560 = .;
        . = 0x00002760; gUnk_03002760 = .;
        . = 0x00002C60; gUnk_03002C60 = .;
        . = 0x00002C74; gUnk_03002C74 = .;
        . = 0x00002C78; gUnk_03002C78 = .;
        . = 0x00002E20; gUnk_03002E20 = .;
        . = 0x00002E40; gUnk_03002E40 = .;
        . = 0x00002E60; gUnk_03002E60 = .;
        . = 0x00002E64; gUnk_03002E64 = .;
        . = 0x00002E70; gUnk_03002E70 = .;
        . = 0x00002E7C; gUnk_03002E7C = .;
        . = 0x00002E80; gUnk_03002E80 = .;
        . = 0x00002E82; gUnk_03002E82 = .;
        . = 0x00002E83; gUnk_03002E83 = .;
        . = 0x00002E90; gUnk_03002E90 = .;
        . = 0x00002E94; gUnk_03002E94 = .;
        . = 0x00002E98; gUnk_03002E98 = .;
        . = 0x00002EA0; gUnk_03002EA0 = .;
        . = 0x00002EAC; gUnk_03002EAC = .;
        . = 0x00002EB0; gUnk_03002EB0 = .;
        . = 0x00002EB8; gUnk_03002EB8 = .;
        . = 0x00002EBC; gUnk_03002EBC = .;
        . = 0x00002EC0; gUnk_03002EC0 = .;
        . = 0x000031B8; gUnk_030031B8 = .;
        . = 0x000031C0; gUnk_030031C0 = .;
        . = 0x000035C0; gUnk_030035C0 = .;
        . = 0x000035D0; gUnk_030035D0 = .;
        . = 0x000035D4; gUnk_030035D4 = .;
        . = 0x000035E0; gUnk_030035E0 = .;
        . = 0x000035EC; gUnk_030035EC = .;
        . = 0x000035F0; gUnk_030035F0 = .;
        . = 0x00003670; gUnk_03003670 = .;
        . = 0x00003674; gUnk_03003674 = .;
        . = 0x00003678; gUnk_03003678 = .;
        . = 0x0000367C; gUnk_0300367C = .;
        . = 0x00003680; gUnk_03003680 = .;
        . = 0x00003690; gUnk_03003690 = .;
        . = 0x000036A0; gUnk_030036A0 = .;
        . = 0x000036B0; gUnk_030036B0 = .;
        . = 0x000036C4; gUnk_030036C4 = .;
        . = 0x000036C8; gUnk_030036C8 = .;
        . = 0x000036D0; gUnk_030036D0 = .;
        . = 0x00003710; gUnk_03003710 = .;
        . = 0x00003750; gUnk_03003750 = .;
        . = 0x00003790; gUnk_03003790 = .;
        . = 0x000037A0; gUnk_030037A0 = .;
        . = 0x00003820; gUnk_03003820 = .;
        . = 0x00003840; gUnk_03003840 = .;
        . = 0x00003860; gUnk_03003860 = .;
        . = 0x00003880; gUnk_03003880 = .;
        . = 0x000038A0; gUnk_030038A0 = .;
        . = 0x000038A2; gUnk_030038A2 = .;
        . = 0x00003982; gUnk_03003982 = .;
        . = 0x000039A0; gUnk_030039A0 = .;
        . = 0x000039A4; gUnk_030039A4 = .;
        . = 0x000039A8; gUnk_030039A8 = .;
        . = 0x000039AC; gUnk_030039AC = .;
        . = 0x000039FC; gUnk_030039FC = .;
        . = 0x00003A00; gUnk_03003A00 = .;
        . = 0x00003A04; gUnk_03003A04 = .;
        . = 0x00003A10; gUnk_03003A10 = .;
        . = 0x00003A20; gUnk_03003A20 = .;
        . = 0x00006030; gUnk_03006030 = .;
        . = 0x00006070; gUnk_03006070 = .;
        . = 0x00006074; gUnk_03006074 = .;
        . = 0x00006078; gUnk_03006078 = .;
        . = 0x0000607C; gUnk_0300607C = .;
        . = 0x00006080; gUnk_03006080 = .;
        . = 0x000060A0; gUnk_030060A0 = .;
        . = 0x000060B0; gUnk_030060B0 = .;
        . = 0x000060B6; gUnk_030060B6 = .;
        . = 0x000064B0; gUnk_030064B0 = .;
        . = 0x000068B0; gUnk_030068B0 = .;
        . = 0x000068B4; gUnk_030068B4 = .;
        . = 0x000068B8; gUnk_030068B8 = .;
        . = 0x000068C0; gUnk_030068C0 = .;
        . = 0x000068D0; gUnk_030068D0 = .;
        . = 0x000068D4; gUnk_030068D4 = .;
        . = 0x000068D8; gUnk_030068D8 = .;
        . = 0x000068E0; gUnk_030068E0 = .;
        . = 0x00006A60; gUnk_03006A60 = .;
        . = 0x00006C50; gUnk_03006C50 = .;
        . = 0x00006C90; gUnk_03006C90 = .;
        . = 0x00006CB0; gUnk_03006CB0 = .;
        . = 0x00006CBC; gUnk_03006CBC = .;
        . = 0x00006CC0; gUnk_03006CC0 = .;
        . = 0x00006CC4; gUnk_03006CC4 = .;
        . = 0x00007E80; gUnk_03007E80 = .;
        . = 0x00007F00; gUnk_03007F00 = .;
        . = 0x00007FA0; gUnk_03007FA0 = .;
        . = 0x00007FF0; SOUND_INFO_PTR = .;
        . = 0x00007FF8; gUnk_03007FF8 = .;
        . = 0x00007FFC; gUnk_03007FFC = .;
        . = 0x00008000;
    } >iwram

    rom : ALIGN(4) {
        asm/crt0.o(.text);
        asm/code.o(.text);
        asm/libm4a_1.o(.text);
        src/libm4a_2.o(.text);
        asm/code_0815158C.o(.text);
        asm/main.o(.text);
        asm/multiboot.o(.text);
        asm/code_08157E54.o(.text);
        asm/code_08158F14.o(.text);
        asm/code_08159074.o(.text);
        asm/agb_flash.o(.text); /* TODO: is it? */
        asm/libagbsyscall.o(.text);
        asm/code_08159350.o(.text);
        *libc.a:sf_finite.o(.text);
        *libc.a:sf_isnan.o(.text);
        *libc.a:sf_scalbn.o(.text);
        *libc.a:sf_copysign.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libgcc.a:dp-bit.o(.text);
        *libgcc.a:fp-bit.o(.text);
        *libgcc.a:_lshrdi3.o(.text);
        *libgcc.a:_muldi3.o(.text);
        *libgcc.a:_negdi2.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:memcpy.o(.text);
        *libc.a:memset.o(.text);
        data/data_1.o(.rodata);
        *libc.a:impure.o(.rodata);
        data/data_2.o(.rodata);
        /* stuff below are mislinked into the binary? */
        data/data_unk.o(.rodata);
        *libc.a:impure.o(.data);
    } >rom

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
