	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D57440_1:	@ 0x08D57430
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x27
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x60
	.byte	0xED
	.byte	0x32
	.byte	0x70
	.byte	0xA0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D57440
se_08D57440:	@ 0x08D57440
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D57440_1		@ track

	.align 2
