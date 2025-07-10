	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D59878_1:	@ 0x08D59860
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x37
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xD4
	.byte	0x3C
	.byte	0x54
	.byte	0x85
	.byte	0x3D
	.byte	0x85
	.byte	0x3C
	.byte	0x34
	.byte	0x85
	.byte	0x3D
	.byte	0x2C
	.byte	0x89
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D59878
se_08D59878:	@ 0x08D59878
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D59878_1		@ track

	.align 2
