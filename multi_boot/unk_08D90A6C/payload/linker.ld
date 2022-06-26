ENTRY(__start)

MEMORY {
    ewram (wx) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
}

SECTIONS {
    ewram_data (NOLOAD) : ALIGN(4) {
        . = 0x00020000; gUnk_02020000 = .;
        . = 0x00028000; gUnk_02028000 = .;
    } >ewram

    ewram_exec 0x2038000 : ALIGN(4) {
        asm/crt0.o(.text);
        asm/multi_sio_asm.o(.text);
        asm/code.o(.text);
        asm/multi_sio.o(.text);
        asm/sio32_multi_load.o(.text);
        asm/libagbsyscall.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        data/data.o(.rodata);
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_03000000 = .;
        . = 0x00000034; gUnk_03000034 = .;
        . = 0x00000040; gUnk_03000040 = .;
        . = 0x00000090; gUnk_03000090 = .;
        . = 0x000000A0; gUnk_030000A0 = .;
        . = 0x000004A0; gUnk_030004A0 = .;
        . = 0x000004A2; gUnk_030004A2 = .;
        . = 0x000004C0; gUnk_030004C0 = .;
        . = 0x00000640; gUnk_03000640 = .;
        . = 0x000006A0; gUnk_030006A0 = .;
        . = 0x000006BC; gUnk_030006BC = .;
        . = 0x000006D8; gUnk_030006D8 = .;
        . = 0x000006F4; gUnk_030006F4 = .;
        . = 0x00000710; gUnk_03000710 = .;
        . = 0x00000830; gUnk_03000830 = .;
        . = 0x00000870; gUnk_03000870 = .;
        . = 0x00007F00; gUnk_03007F00 = .;
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
