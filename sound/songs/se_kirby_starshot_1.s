	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_starshot_1_1:	@ 0x08D54D2C
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
	.byte	0x64
	.byte	0x89
	.byte	0xBE
	.byte	0x51
	.byte	0x82
	.byte	0x4B
	.byte	0x82
	.byte	0x44
	.byte	0x82
	.byte	0x3E
	.byte	0x82
	.byte	0x37
	.byte	0x82
	.byte	0x31
	.byte	0x82
	.byte	0x2B
	.byte	0x82
	.byte	0x24
	.byte	0x82
	.byte	0x1E
	.byte	0x82
	.byte	0x18
	.byte	0x82
	.byte	0x11
	.byte	0x82
	.byte	0x0B
	.byte	0x82
	.byte	0xB1


@********************** Track  2 **********************@

se_kirby_starshot_1_2:	@ 0x08D54D56
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x50
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x30
	.byte	0xBA
	.byte	0x3C
	.byte	0xD0
	.byte	0x61
	.byte	0x70
	.byte	0x81
	.byte	0x5E
	.byte	0x83
	.byte	0x5D
	.byte	0x3C
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_starshot_1
se_kirby_starshot_1:	@ 0x08D54D6C
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_starshot_1_1		@ track
	.word	se_kirby_starshot_1_2		@ track

	.align 2
