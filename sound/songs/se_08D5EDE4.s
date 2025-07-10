	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5EDE4_1:	@ 0x08D5EDD0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x27
	.byte	0xBF
	.byte	0x40
	.byte	0xC4
	.byte	0x00
	.byte	0xBE
	.byte	0x7D
	.byte	0xFB
	.byte	0x37
	.byte	0x78
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5EDE4
se_08D5EDE4:	@ 0x08D5EDE4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5EDE4_1		@ track

	.align 2
