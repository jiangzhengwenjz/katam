ENTRY(__start)

MEMORY {
    ewram (wx) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
}

SECTIONS {
    ewram_data (NOLOAD) : ALIGN(4) {
        . = 0x00020000; gUnk_02020000 = .;
    } >ewram

    ewram_exec 0x2038000 : ALIGN(4) {
        asm/crt0.o(.text);
        asm/multi_sio_asm.o(.text);
        src/main.o(.text);
        src/multi_sio.o(.text);
        src/sio32_multi_load.o(.text);
        asm/libagbsyscall.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        data/data.o(.rodata);
        src/main.o(.rodata);
        src/multi_sio.o(.rodata);
        src/sio32_multi_load.o(.rodata);
        data/data_1.o(.rodata);
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gIntrTable = .;
        . = 0x00000034; gUnk_03000034 = .;
        . = 0x00000040; gMultiSioRecv = .;
        . = 0x00000090; gMultiSioStatusFlags = .;
        . = 0x000000A0; gIntrMainBuf = .;
        . = 0x000004A0; gMultiSioSend = .;
        . = 0x000004C0; gMultiSioIntrFuncBuf = .;
        . = 0x00000640; gMultiSioArea = .;
        . = 0x00000830; gMultiSioRecvFuncBuf = .;
        . = 0x00000870; gSio32MultiLoadArea = .;
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
