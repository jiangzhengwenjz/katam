	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5B2D8_1:	@ 0x08D5B2B8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x19
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x4B
	.byte	0xBA
	.byte	0x32
	.byte	0xD1
	.byte	0x43
	.byte	0x50
	.byte	0x82
	.byte	0x3E
	.byte	0x7F
	.byte	0x83
	.byte	0xD2
	.byte	0x3A
	.byte	0x83
	.byte	0xBA
	.byte	0x28
	.byte	0xEA
	.byte	0x35
	.byte	0x9B
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5B2D8
se_08D5B2D8:	@ 0x08D5B2D8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5B2D8_1		@ track

	.align 2
