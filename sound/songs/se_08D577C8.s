	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D577C8_1:	@ 0x08D577B0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x6D
	.byte	0xBA
	.byte	0x32
gSong_08D577C8_Patt_08D577B8:
	.byte	0xBE
	.byte	0x50
	.byte	0xBF
	.byte	0x40
	.byte	0xDA
	.byte	0x39
	.byte	0x3C
	.byte	0x8B
	.byte	0xB2
	.word	gSong_08D577C8_Patt_08D577B8
	.byte	0x8D
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D577C8
gSong_08D577C8:	@ 0x08D577C8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D577C8_1		@ track

	.align 2
