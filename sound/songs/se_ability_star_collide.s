	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_ability_star_collide_1:	@ 0x08D5572C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x14
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x02
	.byte	0xBE
	.byte	0x7F
	.byte	0xD2
	.byte	0x56
	.byte	0x20
	.byte	0x81
	.byte	0xBE
	.byte	0x43
	.byte	0x81
	.byte	0x1E
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_ability_star_collide
se_ability_star_collide:	@ 0x08D55744
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_ability_star_collide_1		@ track

	.align 2
