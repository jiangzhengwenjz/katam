	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_star_destroy_1:	@ 0x08D55650
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x10
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x32
	.byte	0xBA
	.byte	0x46
	.byte	0xE6
	.byte	0x3C
	.byte	0x7F
	.byte	0x97
	.byte	0xB1


@********************** Track  2 **********************@

se_kirby_star_destroy_2:	@ 0x08D55661
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x61
	.byte	0xBA
	.byte	0x1E
	.byte	0xD1
	.byte	0x64
	.byte	0x50
	.byte	0x82
	.byte	0x5F
	.byte	0x83
	.byte	0x62
	.byte	0x82
	.byte	0xB1

@******************************************************@

	.global se_kirby_star_destroy
se_kirby_star_destroy:	@ 0x08D55674
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_star_destroy_1		@ track
	.word	se_kirby_star_destroy_2		@ track

	.align 2
