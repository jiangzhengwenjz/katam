	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_starshot_2_1:	@ 0x08D54D7C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x51
	.byte	0xBA
	.byte	0x3C
	.byte	0xEA
	.byte	0x1B
	.byte	0x70
	.byte	0xEA
	.byte	0x1C
	.byte	0x8D
	.byte	0xBE
	.byte	0x4A
	.byte	0x82
	.byte	0x43
	.byte	0x82
	.byte	0x3C
	.byte	0x82
	.byte	0x34
	.byte	0x82
	.byte	0x2D
	.byte	0x82
	.byte	0x26
	.byte	0x82
	.byte	0x1F
	.byte	0x82
	.byte	0x18
	.byte	0x82
	.byte	0x11
	.byte	0x82
	.byte	0x09
	.byte	0x82
	.byte	0xB1


@********************** Track  2 **********************@

se_kirby_starshot_2_2:	@ 0x08D54DA4
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x4F
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x30
	.byte	0xBA
	.byte	0x3C
	.byte	0xD0
	.byte	0x61
	.byte	0x64
	.byte	0x81
	.byte	0x5E
	.byte	0x83
	.byte	0x5D
	.byte	0x81
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_kirby_starshot_2
se_kirby_starshot_2:	@ 0x08D54DB8
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_starshot_2_1		@ track
	.word	se_kirby_starshot_2_2		@ track

	.align 2
