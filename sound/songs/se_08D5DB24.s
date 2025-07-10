	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5DB24_1:	@ 0x08D5DB10
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
	.byte	0x46
	.byte	0xDA
	.byte	0x2F
	.byte	0x38
	.byte	0x8B
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5DB24
se_08D5DB24:	@ 0x08D5DB24
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5DB24_1		@ track

	.align 2
