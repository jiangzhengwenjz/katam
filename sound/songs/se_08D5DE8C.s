	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5DE8C_1:	@ 0x08D5DE68
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x57
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xD3
	.byte	0x28
	.byte	0x50
	.byte	0x86
	.byte	0xD8
	.byte	0x28
	.byte	0x58
	.byte	0x8C
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5DE8C_2:	@ 0x08D5DE7B
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x53
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x46
	.byte	0xD3
	.byte	0x34
	.byte	0x48
	.byte	0x86
	.byte	0xD8
	.byte	0x34
	.byte	0x4C
	.byte	0x8C
	.byte	0xB1

@******************************************************@

	.global gSong_08D5DE8C
gSong_08D5DE8C:	@ 0x08D5DE8C
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5DE8C_1		@ track
	.word	gSong_08D5DE8C_2		@ track

	.align 2
