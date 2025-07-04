	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_air_spit_1:	@ 0x08D54FE0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x27
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x64
	.byte	0xBA
	.byte	0x28
	.byte	0xC1
	.byte	0x07
	.byte	0xC0
	.byte	0x75
	.byte	0xDB
	.byte	0x45
	.byte	0x50
	.byte	0x81
	.byte	0xC0
	.byte	0x61
	.byte	0x81
	.byte	0x40
	.byte	0x82
	.byte	0x3B
	.byte	0x81
	.byte	0x34
	.byte	0x81
	.byte	0x2C
	.byte	0x81
	.byte	0x24
	.byte	0x81
	.byte	0x1D
	.byte	0x81
	.byte	0x15
	.byte	0x81
	.byte	0x0E
	.byte	0x82
	.byte	0xB1

@******************************************************@

	.global se_kirby_air_spit
se_kirby_air_spit:	@ 0xse_kirby_air_spit
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_air_spit_1		@ track

	.align 2
