	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_sliding_1:	@ 0x08D55090
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x07
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xBA
	.byte	0x29
	.byte	0xF1
	.byte	0x3C
	.byte	0x38
	.byte	0xA2
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_sliding
se_kirby_sliding:	@ 0x08D550A4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_sliding_1		@ track

	.align 2
