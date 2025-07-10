	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D563D8_1:	@ 0x08D563C4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x6B
	.byte	0xBE
	.byte	0x7D
	.byte	0xBF
	.byte	0x40
	.byte	0xED
	.byte	0x39
	.byte	0x7C
	.byte	0x9E
	.byte	0xEE
	.byte	0x38
	.byte	0xA2
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D563D8
se_08D563D8:	@ 0x08D563D8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D563D8_1		@ track

	.align 2
