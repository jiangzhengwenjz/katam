	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5A074_1:	@ 0x08D5A050
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x12
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x59
	.byte	0xC1
	.byte	0x11
	.byte	0xC0
	.byte	0x40
	.byte	0xD0
	.byte	0x4C
	.byte	0x54
	.byte	0x81
	.byte	0x4E
	.byte	0x81
	.byte	0xD1
	.byte	0x52
	.byte	0x68
	.byte	0x82
	.byte	0x56
	.byte	0x82
	.byte	0x5C
	.byte	0x54
	.byte	0x83
	.byte	0x56
	.byte	0x3C
	.byte	0x82
	.byte	0x5C
	.byte	0x28
	.byte	0x87
	.byte	0xB1

@******************************************************@

	.global gSong_08D5A074
gSong_08D5A074:	@ 0x08D5A074
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5A074_1		@ track

	.align 2
