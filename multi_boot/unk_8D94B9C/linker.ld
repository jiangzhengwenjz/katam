ENTRY(__start)

MEMORY {
    ewram (wx) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
}

SECTIONS {
    ewram : ALIGN(4) {
        asm/crt0.o(.text);
        asm/code.o(.text);
        asm/m4a_asm.o(.text);
        asm/m4a.o(.text);
        asm/code_0200879C.o(.text);
        asm/multi_sio.o(.text);
        asm/sio32_multi_load.o(.text);
        asm/multi_sio_0800B688.o(.text);
        asm/multi_sio_asm.o(.text);
        asm/libagbsyscall.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libc.a:memcpy.o(.text);
        data/data.o(.rodata);
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_03000000 = .;
        . = 0x00000001; gUnk_03000001 = .;
        . = 0x00000004; gUnk_03000004 = .;
        . = 0x00000400; gUnk_03000400 = .;
        . = 0x00000404; gUnk_03000404 = .;
        . = 0x00000410; gUnk_03000410 = .;
        . = 0x0000041C; gUnk_0300041C = .;
        . = 0x00000428; gUnk_03000428 = .;
        . = 0x00000434; gUnk_03000434 = .;
        . = 0x00000440; gUnk_03000440 = .;
        . = 0x00000448; gUnk_03000448 = .;
        . = 0x00000470; gUnk_03000470 = .;
        . = 0x00000720; gUnk_03000720 = .;
        . = 0x00000730; gUnk_03000730 = .;
        . = 0x00000740; gUnk_03000740 = .;
        . = 0x00000780; gUnk_03000780 = .;
        . = 0x00000980; gUnk_03000980 = .;
        . = 0x00001380; gUnk_03001380 = .;
        . = 0x00001384; gUnk_03001384 = .;
        . = 0x000013D0; gUnk_030013D0 = .;
        . = 0x000013E0; gUnk_030013E0 = .;
        . = 0x00001400; gUnk_03001400 = .;
        . = 0x00001410; gUnk_03001410 = .;
        . = 0x00001414; gUnk_03001414 = .;
        . = 0x00001418; gUnk_03001418 = .;
        . = 0x0000141C; gUnk_0300141C = .;
        . = 0x00001420; gUnk_03001420 = .;
        . = 0x00001470; gUnk_03001470 = .;
        . = 0x00001474; gUnk_03001474 = .;
        . = 0x00001478; gUnk_03001478 = .;
        . = 0x00001480; gUnk_03001480 = .;
        . = 0x00001490; gUnk_03001490 = .;
        . = 0x000014A4; gUnk_030014A4 = .;
        . = 0x000014B0; gUnk_030014B0 = .;
        . = 0x000014D0; gUnk_030014D0 = .;
        . = 0x000014D4; gUnk_030014D4 = .;
        . = 0x000014D8; gUnk_030014D8 = .;
        . = 0x000014DC; gUnk_030014DC = .;
        . = 0x000014E0; gUnk_030014E0 = .;
        . = 0x000014E4; gUnk_030014E4 = .;
        . = 0x000014E8; gUnk_030014E8 = .;
        . = 0x000014F0; gUnk_030014F0 = .;
        . = 0x000016F0; gUnk_030016F0 = .;
        . = 0x00001BF0; gUnk_03001BF0 = .;
        . = 0x00001DD0; gUnk_03001DD0 = .;
        . = 0x00001DF4; gUnk_03001DF4 = .;
        . = 0x00001E00; gUnk_03001E00 = .;
        . = 0x00001E0C; gUnk_03001E0C = .;
        . = 0x00001E10; gUnk_03001E10 = .;
        . = 0x00001E20; gUnk_03001E20 = .;
        . = 0x00001E24; gUnk_03001E24 = .;
        . = 0x00001E28; gUnk_03001E28 = .;
        . = 0x00001E30; gUnk_03001E30 = .;
        . = 0x00001E3C; gUnk_03001E3C = .;
        . = 0x00001E40; gUnk_03001E40 = .;
        . = 0x00001E48; gUnk_03001E48 = .;
        . = 0x00001E4C; gUnk_03001E4C = .;
        . = 0x00001E50; gUnk_03001E50 = .;
        . = 0x00002150; gUnk_03002150 = .;
        . = 0x00002550; gUnk_03002550 = .;
        . = 0x00002560; gUnk_03002560 = .;
        . = 0x00002564; gUnk_03002564 = .;
        . = 0x00002570; gUnk_03002570 = .;
        . = 0x0000257C; gUnk_0300257C = .;
        . = 0x00002580; gUnk_03002580 = .;
        . = 0x00002600; gUnk_03002600 = .;
        . = 0x00002604; gUnk_03002604 = .;
        . = 0x0000260C; gUnk_0300260C = .;
        . = 0x00002610; gUnk_03002610 = .;
        . = 0x00002620; gUnk_03002620 = .;
        . = 0x00002630; gUnk_03002630 = .;
        . = 0x00002640; gUnk_03002640 = .;
        . = 0x00002654; gUnk_03002654 = .;
        . = 0x00002658; gUnk_03002658 = .;
        . = 0x00002720; gUnk_03002720 = .;
        . = 0x00002730; gUnk_03002730 = .;
        . = 0x00002930; gUnk_03002930 = .;
        . = 0x00002934; gUnk_03002934 = .;
        . = 0x00002938; gUnk_03002938 = .;
        . = 0x0000293C; gUnk_0300293C = .;
        . = 0x0000298C; gUnk_0300298C = .;
        . = 0x00002990; gUnk_03002990 = .;
        . = 0x00002994; gUnk_03002994 = .;
        . = 0x000029A0; gUnk_030029A0 = .;
        . = 0x000029B0; gUnk_030029B0 = .;
        . = 0x00005000; gUnk_03005000 = .;
        . = 0x00005004; gUnk_03005004 = .;
        . = 0x00005008; gUnk_03005008 = .;
        . = 0x0000500C; gUnk_0300500C = .;
        . = 0x00005010; gUnk_03005010 = .;
        . = 0x00005030; gUnk_03005030 = .;
        . = 0x00005040; gUnk_03005040 = .;
        . = 0x00005046; gUnk_03005046 = .;
        . = 0x00005840; gUnk_03005840 = .;
        . = 0x00005844; gUnk_03005844 = .;
        . = 0x00005848; gUnk_03005848 = .;
        . = 0x00005850; gUnk_03005850 = .;
        . = 0x00005864; gUnk_03005864 = .;
        . = 0x00005868; gUnk_03005868 = .;
        . = 0x00005870; gUnk_03005870 = .;
        . = 0x000059F0; gUnk_030059F0 = .;
        . = 0x00005BE0; gUnk_03005BE0 = .;
        . = 0x00005C20; gUnk_03005C20 = .;
        . = 0x00005C38; gUnk_03005C38 = .;
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
