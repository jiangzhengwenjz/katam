	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_jump_1:	@ 0x08D54BE0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x11
	.byte	0xBA
	.byte	0x23
	.byte	0xE1
	.byte	0x21
	.byte	0x7F
	.byte	0x92
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_jump
se_kirby_jump:	@ 0x08D54BF4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_jump_1		@ track

	.align 2
