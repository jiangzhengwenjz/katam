	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59F90_1:	@ 0x08D59F6C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x07
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x37
	.byte	0xD8
	.byte	0x3E
	.byte	0x48
	.byte	0x83
	.byte	0xBE
	.byte	0x2B
	.byte	0x81
	.byte	0x27
	.byte	0x81
	.byte	0x1F
	.byte	0x81
	.byte	0x06
	.byte	0x81
	.byte	0x06
	.byte	0x82
	.byte	0x05
	.byte	0x81
	.byte	0x04
	.byte	0x81
	.byte	0x03
	.byte	0x81
	.byte	0x03
	.byte	0x86
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D59F90
gSong_08D59F90:	@ 0x08D59F90
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	gSong_08D59F90_1		@ track

	.align 2
