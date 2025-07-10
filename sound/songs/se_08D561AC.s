	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D561AC_1:	@ 0x08D56188
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x24
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7B
	.byte	0xBA
	.byte	0x32
	.byte	0x7F
	.byte	0xC0
	.byte	0x40
	.byte	0xEA
	.byte	0x3E
	.byte	0x7F
	.byte	0x84
	.byte	0xC0
	.byte	0x2A
	.byte	0xD4
	.byte	0x3A
	.byte	0x50
	.byte	0x85
	.byte	0xC0
	.byte	0x12
	.byte	0xEA
	.byte	0x3B
	.byte	0x28
	.byte	0x9B
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D561AC
se_08D561AC:	@ 0x08D561AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D561AC_1		@ track

	.align 2
