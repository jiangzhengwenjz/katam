	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5E6C0_1:	@ 0x08D5E6AC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5F
	.byte	0xC4
	.byte	0x28
	.byte	0xC2
	.byte	0x0D
	.byte	0xBE
	.byte	0x37
	.byte	0xBF
	.byte	0x40
	.byte	0xD9
	.byte	0x30
	.byte	0x64
	.byte	0x92
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5E6C0
se_08D5E6C0:	@ 0x08D5E6C0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5E6C0_1		@ track

	.align 2
