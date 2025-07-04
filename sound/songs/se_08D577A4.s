	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D577A4_1:	@ 0x08D5778C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x51
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x28
	.byte	0xBA
	.byte	0x28
	.byte	0xD0
	.byte	0x43
	.byte	0x70
	.byte	0x81
	.byte	0x45
	.byte	0x81
	.byte	0x4F
	.byte	0x8A
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D577A4
gSong_08D577A4:	@ 0x08D577A4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D577A4_1		@ track

	.align 2
