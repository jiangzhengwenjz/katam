	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5814C_1:	@ 0x08D58128
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x64
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xC1
	.byte	0x07
	.byte	0xC4
	.byte	0x28
	.byte	0xBE
	.byte	0x5E
	.byte	0xC0
	.byte	0x7E
	.byte	0xDB
	.byte	0x44
	.byte	0x50
	.byte	0x81
	.byte	0xBE
	.byte	0x7E
	.byte	0xC0
	.byte	0x51
	.byte	0x81
	.byte	0x3E
	.byte	0x81
	.byte	0x27
	.byte	0x81
	.byte	0x1C
	.byte	0x81
	.byte	0x1A
	.byte	0x87
	.byte	0xB1

@******************************************************@

	.global gSong_08D5814C
gSong_08D5814C:	@ 0x08D5814C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5814C_1		@ track

	.align 2
