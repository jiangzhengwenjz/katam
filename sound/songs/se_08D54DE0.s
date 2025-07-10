	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D54DE0_1:	@ 0x08D54DC8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x51
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x28
	.byte	0xBA
	.byte	0x19
	.byte	0xD0
	.byte	0x3C
	.byte	0x7F
	.byte	0x81
	.byte	0x3E
	.byte	0x81
	.byte	0x43
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D54DE0
se_08D54DE0:	@ 0x08D54DE0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D54DE0_1		@ track

	.align 2
