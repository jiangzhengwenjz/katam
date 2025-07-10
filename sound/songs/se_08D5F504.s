	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F504_1:	@ 0x08D5F4F0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x1E
	.byte	0xBA
	.byte	0x1E
	.byte	0xD5
	.byte	0x20
	.byte	0x7F
	.byte	0x86
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5F504
se_08D5F504:	@ 0x08D5F504
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5F504_1		@ track

	.align 2
