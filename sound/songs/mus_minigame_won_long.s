	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

mus_minigame_won_long_1:	@ 0x08D4F380
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3F
	.byte	0xBD
	.byte	0x2A
	.byte	0xBE
	.byte	0x5C
	.byte	0xBA
	.byte	0x64
	.byte	0xD1
	.byte	0x3F
	.byte	0x60
	.byte	0x84
	.byte	0xD1
	.byte	0x84
	.byte	0xD3
	.byte	0x88
	.byte	0xD3
	.byte	0x88
	.byte	0xD3
	.byte	0x88
	.byte	0x41
	.byte	0x88
	.byte	0x3C
	.byte	0x88
	.byte	0x41
	.byte	0x8A
	.byte	0x43
	.byte	0x8A
	.byte	0x4A
	.byte	0x4C
	.byte	0x8A
	.byte	0x4F
	.byte	0x3C
	.byte	0x8A
	.byte	0xEF
	.byte	0x51
	.byte	0x2C
	.byte	0x88
	.byte	0x9F
	.byte	0x81
	.byte	0xD3
	.byte	0x39
	.byte	0x28
	.byte	0xA0
	.byte	0x83
	.byte	0xB1

@********************** Track  2 **********************@

mus_minigame_won_long_2:	@ 0x08D4F3B0
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x18
	.byte	0xBF
	.byte	0x4A
	.byte	0xBE
	.byte	0x40
	.byte	0xBA
	.byte	0x64
	.byte	0xD1
	.byte	0x43
	.byte	0x60
	.byte	0x84
	.byte	0xD1
	.byte	0x84
	.byte	0xD3
	.byte	0x88
	.byte	0x45
	.byte	0x88
	.byte	0x46
	.byte	0x88
	.byte	0xE3
	.byte	0x48
	.byte	0x98
	.byte	0x82
	.byte	0xD3
	.byte	0x4A
	.byte	0x8A
	.byte	0x47
	.byte	0x8A
	.byte	0x4A
	.byte	0x8A
	.byte	0xF1
	.byte	0x4C
	.byte	0x88
	.byte	0xB0
	.byte	0xB1

@********************** Track  3 **********************@

mus_minigame_won_long_3:	@ 0x08D4F3D6
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x18
	.byte	0xBF
	.byte	0x36
	.byte	0xBE
	.byte	0x40
	.byte	0xBA
	.byte	0x64
	.byte	0xD1
	.byte	0x3F
	.byte	0x60
	.byte	0x84
	.byte	0xD1
	.byte	0x84
	.byte	0xD3
	.byte	0x88
	.byte	0x41
	.byte	0x88
	.byte	0x43
	.byte	0x88
	.byte	0xE3
	.byte	0x45
	.byte	0x98
	.byte	0x82
	.byte	0xD3
	.byte	0x47
	.byte	0x8A
	.byte	0x43
	.byte	0x8A
	.byte	0x47
	.byte	0x8A
	.byte	0xF1
	.byte	0x49
	.byte	0x88
	.byte	0xB0
	.byte	0xB1

@********************** Track  4 **********************@

mus_minigame_won_long_4:	@ 0x08D4F3FC
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x7F
	.byte	0xBA
	.byte	0x64
	.byte	0xBE
	.byte	0x74
	.byte	0xBF
	.byte	0x40
	.byte	0xC2
	.byte	0x18
	.byte	0xC5
	.byte	0x00
	.byte	0xC3
	.byte	0x0B
	.byte	0xC4
	.byte	0x00
	.byte	0xD1
	.byte	0x1B
	.byte	0x4C
	.byte	0x84
	.byte	0xD1
	.byte	0x84
	.byte	0xD3
	.byte	0x88
	.byte	0x20
	.byte	0x88
	.byte	0x1B
	.byte	0x20
	.byte	0x88
	.byte	0x1B
	.byte	0x4C
	.byte	0x88
	.byte	0x20
	.byte	0x88
	.byte	0x1B
	.byte	0x20
	.byte	0x8A
	.byte	0x1B
	.byte	0x30
	.byte	0x8A
	.byte	0x1B
	.byte	0x38
	.byte	0x8A
	.byte	0x1B
	.byte	0x48
	.byte	0x8A
	.byte	0xEF
	.byte	0x22
	.byte	0x34
	.byte	0x88
	.byte	0x9F
	.byte	0x81
	.byte	0xD3
	.byte	0x18
	.byte	0x3C
	.byte	0xA0
	.byte	0x83
	.byte	0xB1

@******************************************************@

	.global mus_minigame_won_long
mus_minigame_won_long:	@ 0x08D4F438
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_minigame_won_long_1		@ track
	.word	mus_minigame_won_long_2		@ track
	.word	mus_minigame_won_long_3		@ track
	.word	mus_minigame_won_long_4		@ track

	.align 2
