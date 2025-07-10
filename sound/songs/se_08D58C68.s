	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58C68_1:	@ 0x08D58C50
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x01
	.byte	0xBE
	.byte	0x7F
	.byte	0xC2
	.byte	0x00
	.byte	0xC4
	.byte	0x0A
	.byte	0xC3
	.byte	0x00
	.byte	0xC1
	.byte	0x00
	.byte	0xC0
	.byte	0x50
	.byte	0xFB
	.byte	0x31
	.byte	0x64
	.byte	0xAE
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D58C68
se_08D58C68:	@ 0x08D58C68
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	se_08D58C68_1		@ track

	.align 2
