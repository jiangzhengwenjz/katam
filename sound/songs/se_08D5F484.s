	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F484_1:	@ 0x08D5F470
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x26
	.byte	0xBF
	.byte	0x4A
	.byte	0xC4
	.byte	0x00
	.byte	0xBE
	.byte	0x59
	.byte	0xE1
	.byte	0x3B
	.byte	0x78
	.byte	0x92
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5F484
se_08D5F484:	@ 0x08D5F484
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5F484_1		@ track

	.align 2
