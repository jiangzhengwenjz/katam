	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D59CC4_1:	@ 0x08D59CB4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x73
	.byte	0xBE
	.byte	0x7D
	.byte	0xC4
	.byte	0x0A
	.byte	0xEE
	.byte	0x39
	.byte	0x7F
	.byte	0xA0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D59CC4
se_08D59CC4:	@ 0x08D59CC4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D59CC4_1		@ track

	.align 2
