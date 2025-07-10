	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58F5C_1:	@ 0x08D58F4C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x03
	.byte	0xBE
	.byte	0x73
	.byte	0xC0
	.byte	0x50
	.byte	0xE0
	.byte	0x46
	.byte	0x7F
	.byte	0x98
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D58F5C
se_08D58F5C:	@ 0x08D58F5C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	se_08D58F5C_1		@ track

	.align 2
