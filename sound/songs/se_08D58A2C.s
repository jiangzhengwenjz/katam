	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58A2C_1:	@ 0x08D58A1C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x29
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xD9
	.byte	0x43
	.byte	0x24
	.byte	0x92
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D58A2C
se_08D58A2C:	@ 0x08D58A2C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D58A2C_1		@ track

	.align 2
