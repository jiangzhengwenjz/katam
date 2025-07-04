	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D587C0_1:	@ 0x08D587B0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x13
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5F
	.byte	0xD9
	.byte	0x31
	.byte	0x50
	.byte	0x8C
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D587C0
gSong_08D587C0:	@ 0x08D587C0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D587C0_1		@ track

	.align 2
