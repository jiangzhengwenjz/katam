	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_float_1:	@ 0x08D55014
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xBA
	.byte	0x09
	.byte	0xE7
	.byte	0x1F
	.byte	0x1C
	.byte	0x82
	.byte	0xBE
	.byte	0x7E
	.byte	0x82
	.byte	0x7D
	.byte	0x82
	.byte	0x76
	.byte	0x81
	.byte	0x6E
	.byte	0x81
	.byte	0x65
	.byte	0x81
	.byte	0x60
	.byte	0x81
	.byte	0x5A
	.byte	0x81
	.byte	0x54
	.byte	0x81
	.byte	0x53
	.byte	0x81
	.byte	0x52
	.byte	0x8D
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_float
se_kirby_float:	@ 0xse_kirby_float
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_float_1		@ track

	.align 2
