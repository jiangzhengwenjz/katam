	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58F7C_1:	@ 0x08D58F68
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3F
	.byte	0xBE
	.byte	0x41
	.byte	0xD0
	.byte	0x3D
	.byte	0x7F
	.byte	0x82
	.byte	0x41
	.byte	0x81
	.byte	0xD2
	.byte	0x44
	.byte	0x6C
	.byte	0x89
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D58F7C
se_08D58F7C:	@ 0x08D58F7C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D58F7C_1		@ track

	.align 2
