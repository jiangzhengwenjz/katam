	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5A6B4_1:	@ 0x08D5A6A4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x01
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x67
	.byte	0xEF
	.byte	0x3C
	.byte	0x78
	.byte	0xA2
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5A6B4
se_08D5A6B4:	@ 0x08D5A6B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	se_08D5A6B4_1		@ track

	.align 2
