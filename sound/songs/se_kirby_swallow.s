	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_swallow_1:	@ 0x08D54FC0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x45
	.byte	0xBA
	.byte	0x33
	.byte	0xE2
	.byte	0x1D
	.byte	0x7F
	.byte	0x93
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_swallow
se_kirby_swallow:	@ 0x08D54FD4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_swallow_1		@ track

	.align 2
