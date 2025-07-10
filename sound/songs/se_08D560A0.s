	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D560A0_1:	@ 0x08D56088
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x15
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x78
	.byte	0xDB
	.byte	0x30
	.byte	0x7F
	.byte	0x87
	.byte	0xBE
	.byte	0x53
	.byte	0x83
	.byte	0x3C
	.byte	0x82
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D560A0
se_08D560A0:	@ 0x08D560A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D560A0_1		@ track

	.align 2
