	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5E374_1:	@ 0x08D5E35C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x31
	.byte	0xBE
	.byte	0x65
	.byte	0xC2
	.byte	0x7F
	.byte	0xC5
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xC4
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xE6
	.byte	0x4E
	.byte	0x5C
	.byte	0xA0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5E374
gSong_08D5E374:	@ 0x08D5E374
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5E374_1		@ track

	.align 2
