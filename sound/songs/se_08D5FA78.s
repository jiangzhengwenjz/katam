	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5FA78_1:	@ 0x08D5FA64
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x2B
	.byte	0xD0
	.byte	0x58
	.byte	0x54
	.byte	0x81
	.byte	0x5F
	.byte	0x81
	.byte	0x67
	.byte	0x96
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5FA78
se_08D5FA78:	@ 0x08D5FA78
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5FA78_1		@ track

	.align 2
