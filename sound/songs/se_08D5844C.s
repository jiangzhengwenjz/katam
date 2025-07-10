	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5844C_1:	@ 0x08D5842C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x14
	.byte	0xC1
	.byte	0x01
	.byte	0xBE
	.byte	0x7F
	.byte	0xC0
	.byte	0x32
	.byte	0xDB
	.byte	0x54
	.byte	0x28
	.byte	0x81
	.byte	0xBE
	.byte	0x54
	.byte	0xC0
	.byte	0x40
	.byte	0x81
	.byte	0xBE
	.byte	0x47
	.byte	0x85
	.byte	0x30
	.byte	0x83
	.byte	0x23
	.byte	0x81
	.byte	0x10
	.byte	0x87
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5844C
se_08D5844C:	@ 0x08D5844C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5844C_1		@ track

	.align 2
