	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D581E0_1:	@ 0x08D581C8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x78
	.byte	0xC0
	.byte	0x19
	.byte	0xDE
	.byte	0x40
	.byte	0x60
	.byte	0x85
	.byte	0xC0
	.byte	0x55
	.byte	0x83
	.byte	0x6A
	.byte	0x8A
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D581E0
se_08D581E0:	@ 0x08D581E0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D581E0_1		@ track

	.align 2
