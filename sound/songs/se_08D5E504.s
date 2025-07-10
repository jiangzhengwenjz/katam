	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5E504_1:	@ 0x08D5E4F4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x60
	.byte	0xBE
	.byte	0x76
	.byte	0xBF
	.byte	0x40
	.byte	0xF7
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5E504
se_08D5E504:	@ 0x08D5E504
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	110		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5E504_1		@ track

	.align 2
