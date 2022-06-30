ENTRY(__start)

MEMORY {
    ewram (wx) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
}

SECTIONS {
    ewram_exec : ALIGN(4) {
        . = 0x0; asm/loader.o(.text);
        . = 0x2B0; data/data.o(.rodata);
    } >ewram

    ewram_data 0x2038000 (NOLOAD) : ALIGN(4) {
        gUnk_02038000 = .;
    } >ewram

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
