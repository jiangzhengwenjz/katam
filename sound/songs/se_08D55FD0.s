	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D55FD0_1:	@ 0x08D55F94
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xBA
	.byte	0x28
	.byte	0xD0
	.byte	0x48
	.byte	0x20
	.byte	0x82
	.byte	0xD1
	.byte	0x48
	.byte	0x2C
	.byte	0x83
	.byte	0xD0
	.byte	0x48
	.byte	0x24
	.byte	0x82
	.byte	0xD0
	.byte	0x82
	.byte	0xD0
	.byte	0x82
	.byte	0x48
	.byte	0x20
	.byte	0x81
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D55FD0_2:	@ 0x08D55FB4
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x57
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xBA
	.byte	0x28
	.byte	0x81
	.byte	0xD0
	.byte	0x73
	.byte	0x14
	.byte	0x82
	.byte	0x73
	.byte	0x20
	.byte	0x82
	.byte	0xD0
	.byte	0x82
	.byte	0xD0
	.byte	0x82
	.byte	0x73
	.byte	0x14
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D55FD0
gSong_08D55FD0:	@ 0x08D55FD0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D55FD0_1		@ track
	.word	gSong_08D55FD0_2		@ track

	.align 2
