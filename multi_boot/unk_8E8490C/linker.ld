ENTRY(__start)

MEMORY {
    ewram (wx) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
}

SECTIONS {
    ewram_exec : ALIGN(4) {
        asm/crt0.o(.text);
        asm/code.o(.text);
        asm/m4a_asm.o(.text);
        asm/m4a.o(.text);
        asm/code_02009F1C.o(.text);
        asm/multi_sio.o(.text);
        asm/sio32_multi_load.o(.text);
        asm/multi_sio_0200CE08.o(.text);
        asm/multi_sio_asm.o(.text);
        asm/libagbsyscall.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libc.a:memcpy.o(.text);
        data/data.o(.rodata);
    } >ewram

    ewram_data 0x2030000 (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_02030000 = .;
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000004; gUnk_03000004 = .;
        . = 0x00000640; gUnk_03000640 = .;
        . = 0x00000641; gUnk_03000641 = .;
        . = 0x00000A40; gUnk_03000A40 = .;
        . = 0x00000A44; gUnk_03000A44 = .;
        . = 0x00000A50; gUnk_03000A50 = .;
        . = 0x00000A5C; gUnk_03000A5C = .;
        . = 0x00000A68; gUnk_03000A68 = .;
        . = 0x00000A74; gUnk_03000A74 = .;
        . = 0x00000A80; gUnk_03000A80 = .;
        . = 0x00000A88; gUnk_03000A88 = .;
        . = 0x00000AB0; gUnk_03000AB0 = .;
        . = 0x00000D60; gUnk_03000D60 = .;
        . = 0x00000D70; gUnk_03000D70 = .;
        . = 0x00000D80; gUnk_03000D80 = .;
        . = 0x00001D30; gUnk_03001D30 = .;
        . = 0x00001D34; gUnk_03001D34 = .;
        . = 0x00001DB8; gUnk_03001DB8 = .;
        . = 0x00001DBC; gUnk_03001DBC = .;
        . = 0x00001DC0; gUnk_03001DC0 = .;
        . = 0x00001F80; gUnk_03001F80 = .;
        . = 0x00001F90; gUnk_03001F90 = .;
        . = 0x00001FD0; gUnk_03001FD0 = .;
        . = 0x000021D0; gUnk_030021D0 = .;
        . = 0x00002BD0; gUnk_03002BD0 = .;
        . = 0x00002BD4; gUnk_03002BD4 = .;
        . = 0x00002C20; gUnk_03002C20 = .;
        . = 0x00002C30; gUnk_03002C30 = .;
        . = 0x00002C50; gUnk_03002C50 = .;
        . = 0x00002C60; gUnk_03002C60 = .;
        . = 0x00002C64; gUnk_03002C64 = .;
        . = 0x00002C68; gUnk_03002C68 = .;
        . = 0x00002C6C; gUnk_03002C6C = .;
        . = 0x00002C70; gUnk_03002C70 = .;
        . = 0x00002CC0; gUnk_03002CC0 = .;
        . = 0x00002CC4; gUnk_03002CC4 = .;
        . = 0x00002CC8; gUnk_03002CC8 = .;
        . = 0x00002CD0; gUnk_03002CD0 = .;
        . = 0x00002CE0; gUnk_03002CE0 = .;
        . = 0x00002CF4; gUnk_03002CF4 = .;
        . = 0x00002D00; gUnk_03002D00 = .;
        . = 0x00002D20; gUnk_03002D20 = .;
        . = 0x00002D24; gUnk_03002D24 = .;
        . = 0x00002D28; gUnk_03002D28 = .;
        . = 0x00002D2C; gUnk_03002D2C = .;
        . = 0x00002D30; gUnk_03002D30 = .;
        . = 0x00002D34; gUnk_03002D34 = .;
        . = 0x00002D38; gUnk_03002D38 = .;
        . = 0x00002D40; gUnk_03002D40 = .;
        . = 0x00002F40; gUnk_03002F40 = .;
        . = 0x00003440; gUnk_03003440 = .;
        . = 0x00003620; gUnk_03003620 = .;
        . = 0x00003644; gUnk_03003644 = .;
        . = 0x00003650; gUnk_03003650 = .;
        . = 0x0000365C; gUnk_0300365C = .;
        . = 0x00003660; gUnk_03003660 = .;
        . = 0x00003670; gUnk_03003670 = .;
        . = 0x00003674; gUnk_03003674 = .;
        . = 0x00003678; gUnk_03003678 = .;
        . = 0x00003680; gUnk_03003680 = .;
        . = 0x0000368C; gUnk_0300368C = .;
        . = 0x00003690; gUnk_03003690 = .;
        . = 0x00003698; gUnk_03003698 = .;
        . = 0x0000369C; gUnk_0300369C = .;
        . = 0x000036A0; gUnk_030036A0 = .;
        . = 0x000039A0; gUnk_030039A0 = .;
        . = 0x00003DA0; gUnk_03003DA0 = .;
        . = 0x00003DB0; gUnk_03003DB0 = .;
        . = 0x00003DB4; gUnk_03003DB4 = .;
        . = 0x00003DC0; gUnk_03003DC0 = .;
        . = 0x00003DCC; gUnk_03003DCC = .;
        . = 0x00003DD0; gUnk_03003DD0 = .;
        . = 0x00003E50; gUnk_03003E50 = .;
        . = 0x00003E54; gUnk_03003E54 = .;
        . = 0x00003E5C; gUnk_03003E5C = .;
        . = 0x00003E60; gUnk_03003E60 = .;
        . = 0x00003E70; gUnk_03003E70 = .;
        . = 0x00003E80; gUnk_03003E80 = .;
        . = 0x00003E90; gUnk_03003E90 = .;
        . = 0x00003EA4; gUnk_03003EA4 = .;
        . = 0x00003EA8; gUnk_03003EA8 = .;
        . = 0x00003F70; gUnk_03003F70 = .;
        . = 0x00003F80; gUnk_03003F80 = .;
        . = 0x00004180; gUnk_03004180 = .;
        . = 0x00004184; gUnk_03004184 = .;
        . = 0x00004188; gUnk_03004188 = .;
        . = 0x0000418C; gUnk_0300418C = .;
        . = 0x000041DC; gUnk_030041DC = .;
        . = 0x000041E0; gUnk_030041E0 = .;
        . = 0x000041E4; gUnk_030041E4 = .;
        . = 0x000041F0; gUnk_030041F0 = .;
        . = 0x00004200; gUnk_03004200 = .;
        . = 0x00006850; gUnk_03006850 = .;
        . = 0x00006854; gUnk_03006854 = .;
        . = 0x00006858; gUnk_03006858 = .;
        . = 0x0000685C; gUnk_0300685C = .;
        . = 0x00006860; gUnk_03006860 = .;
        . = 0x00006880; gUnk_03006880 = .;
        . = 0x00006890; gUnk_03006890 = .;
        . = 0x00006896; gUnk_03006896 = .;
        . = 0x00007090; gUnk_03007090 = .;
        . = 0x00007094; gUnk_03007094 = .;
        . = 0x00007098; gUnk_03007098 = .;
        . = 0x000070A0; gUnk_030070A0 = .;
        . = 0x000070B4; gUnk_030070B4 = .;
        . = 0x000070B8; gUnk_030070B8 = .;
        . = 0x000070C0; gUnk_030070C0 = .;
        . = 0x00007240; gUnk_03007240 = .;
        . = 0x00007430; gUnk_03007430 = .;
        . = 0x00007470; gUnk_03007470 = .;
        . = 0x00007488; gUnk_03007488 = .;
        . = 0x00007E80; gUnk_03007E80 = .;
        . = 0x00007FA0; gUnk_03007FA0 = .;
        . = 0x00008000;
    } >iwram

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
