	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D56138_1:	@ 0x08D56124
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBA
	.byte	0x32
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x78
	.byte	0xE2
	.byte	0x29
	.byte	0x20
	.byte	0x98
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D56138
se_08D56138:	@ 0x08D56138
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D56138_1		@ track

	.align 2
