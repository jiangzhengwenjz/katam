	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_stuffed_cheeks_unused_1:	@ 0x08D54D0C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x6D
	.byte	0xBA
	.byte	0x32
	.byte	0xD5
	.byte	0x1A
	.byte	0x7F
	.byte	0x86
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_stuffed_cheeks_unused
se_kirby_stuffed_cheeks_unused:	@ 0x08D54D20
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_stuffed_cheeks_unused_1		@ track

	.align 2
