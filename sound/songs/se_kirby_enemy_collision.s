	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_enemy_collision_1:	@ 0x08D58158
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5F
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x64
	.byte	0xD0
	.byte	0x3C
	.byte	0x7F
	.byte	0x81
	.byte	0xD1
	.byte	0x38
	.byte	0x5C
	.byte	0x82
	.byte	0x35
	.byte	0x48
	.byte	0x82
	.byte	0x35
	.byte	0x28
	.byte	0x87
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_kirby_enemy_collision
se_kirby_enemy_collision:	@ 0x08D58174
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_enemy_collision_1		@ track

	.align 2
