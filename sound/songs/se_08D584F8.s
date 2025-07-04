	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D584F8_1:	@ 0x08D584DC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x15
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xD8
	.byte	0x31
	.byte	0x48
	.byte	0x82
	.byte	0xBE
	.byte	0x71
	.byte	0x81
	.byte	0x58
	.byte	0x81
	.byte	0x4E
	.byte	0x82
	.byte	0x3E
	.byte	0x81
	.byte	0x35
	.byte	0x81
	.byte	0x20
	.byte	0x84
	.byte	0xB1

@******************************************************@

	.global gSong_08D584F8
gSong_08D584F8:	@ 0x08D584F8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D584F8_1		@ track

	.align 2
