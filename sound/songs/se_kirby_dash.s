	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_dash_1:	@ 0x08D55068
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
	.byte	0x27
	.byte	0xD1
	.byte	0x47
	.byte	0x1C
	.byte	0x84
	.byte	0x4B
	.byte	0x14
	.byte	0x84
	.byte	0x4E
	.byte	0x83
	.byte	0x54
	.byte	0x0C
	.byte	0x82
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_dash
se_kirby_dash:	@ 0x08D55084
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_dash_1		@ track

	.align 2
