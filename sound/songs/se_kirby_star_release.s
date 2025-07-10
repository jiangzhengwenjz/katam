	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_star_release_1:	@ 0x08D55704
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x14
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x3C
	.byte	0xBA
	.byte	0x27
	.byte	0xD1
	.byte	0x53
	.byte	0x1C
	.byte	0x83
	.byte	0x4E
	.byte	0x48
	.byte	0x83
	.byte	0xD2
	.byte	0x48
	.byte	0x64
	.byte	0x83
	.byte	0xD1
	.byte	0x42
	.byte	0x20
	.byte	0x82
	.byte	0xB1

@******************************************************@

	.global se_kirby_star_release
se_kirby_star_release:	@ 0x08D55720
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_star_release_1		@ track

	.align 2
