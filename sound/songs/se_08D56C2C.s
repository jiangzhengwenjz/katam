	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D56C2C_1:	@ 0x08D56C14
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x03
	.byte	0xBE
	.byte	0x33
	.byte	0xBA
	.byte	0x0A
	.byte	0xC0
	.byte	0x50
	.byte	0xE0
	.byte	0x45
	.byte	0x7F
	.byte	0x81
	.byte	0xBE
	.byte	0x4D
	.byte	0x81
	.byte	0x7F
	.byte	0x8F
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D56C2C
se_08D56C2C:	@ 0x08D56C2C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	se_08D56C2C_1		@ track

	.align 2
