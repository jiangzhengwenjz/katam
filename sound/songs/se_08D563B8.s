	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D563B8_1:	@ 0x08D563A4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x6A
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xDF
	.byte	0x39
	.byte	0x7F
	.byte	0x92
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D563B8
se_08D563B8:	@ 0x08D563B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D563B8_1		@ track

	.align 2
