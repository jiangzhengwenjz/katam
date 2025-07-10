	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D560C4_1:	@ 0x08D560AC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7D
	.byte	0xBA
	.byte	0x28
	.byte	0xD0
	.byte	0x30
	.byte	0x58
	.byte	0x82
	.byte	0x2C
	.byte	0x83
	.byte	0x32
	.byte	0x38
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D560C4
se_08D560C4:	@ 0x08D560C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D560C4_1		@ track

	.align 2
