	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D56668_1:	@ 0x08D5663C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3B
	.byte	0xBF
	.byte	0x40
	.byte	0xC1
	.byte	0x06
	.byte	0xBA
	.byte	0x32
	.byte	0xC5
	.byte	0x00
	.byte	0xC4
	.byte	0x28
	.byte	0xC2
	.byte	0x50
	.byte	0xBE
	.byte	0x5E
	.byte	0xEC
	.byte	0x50
	.byte	0x40
	.byte	0x82
	.byte	0xBE
	.byte	0x7F
	.byte	0x98
	.byte	0x7A
	.byte	0x82
	.byte	0x70
	.byte	0x82
	.byte	0x66
	.byte	0x82
	.byte	0x5C
	.byte	0x82
	.byte	0x52
	.byte	0x82
	.byte	0x47
	.byte	0x82
	.byte	0x3D
	.byte	0x82
	.byte	0x33
	.byte	0x81
	.byte	0xB1

@******************************************************@

	.global se_08D56668
se_08D56668:	@ 0x08D56668
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D56668_1		@ track

	.align 2
