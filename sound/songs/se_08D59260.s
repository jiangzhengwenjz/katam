	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D59260_1:	@ 0x08D59240
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x02
	.byte	0xBE
	.byte	0x64
	.byte	0xC2
	.byte	0x00
	.byte	0xC4
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xC1
	.byte	0x00
	.byte	0xC0
	.byte	0x40
	.byte	0xD0
	.byte	0x2E
	.byte	0x48
	.byte	0x82
	.byte	0x30
	.byte	0x82
	.byte	0xD1
	.byte	0x3D
	.byte	0x34
	.byte	0x88
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D59260
se_08D59260:	@ 0x08D59260
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D59260_1		@ track

	.align 2
