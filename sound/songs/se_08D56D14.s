	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D56D14_1:	@ 0x08D56CFC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x24
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x7F
	.byte	0xC0
	.byte	0x40
	.byte	0xDC
	.byte	0x40
	.byte	0x64
	.byte	0x84
	.byte	0xC0
	.byte	0x2A
	.byte	0x85
	.byte	0x12
	.byte	0x84
	.byte	0xB1

@******************************************************@

	.global se_08D56D14
se_08D56D14:	@ 0x08D56D14
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D56D14_1		@ track

	.align 2
