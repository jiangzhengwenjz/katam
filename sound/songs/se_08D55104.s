	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D55104_1:	@ 0x08D550F0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x75
	.byte	0xBA
	.byte	0x14
	.byte	0xE2
	.byte	0x28
	.byte	0x20
	.byte	0x93
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D55104
se_08D55104:	@ 0x08D55104
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D55104_1		@ track

	.align 2
