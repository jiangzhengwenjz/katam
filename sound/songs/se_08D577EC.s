	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D577EC_1:	@ 0x08D577D4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x6D
	.byte	0xBA
	.byte	0x32
se_08D577EC_Patt_08D577DC:
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xDA
	.byte	0x45
	.byte	0x44
	.byte	0x8A
	.byte	0xB2
	.word	se_08D577EC_Patt_08D577DC
	.byte	0x8E
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D577EC
se_08D577EC:	@ 0x08D577EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D577EC_1		@ track

	.align 2
