	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5E350_1:	@ 0x08D5E33C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x03
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x55
	.byte	0xBF
	.byte	0x40
	.byte	0xF9
	.byte	0x3C
	.byte	0x7F
	.byte	0xAA
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5E350
se_08D5E350:	@ 0x08D5E350
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	se_08D5E350_1		@ track

	.align 2
