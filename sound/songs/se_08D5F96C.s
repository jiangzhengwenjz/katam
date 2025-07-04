	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5F96C_1:	@ 0x08D5F944
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x62
	.byte	0xBE
	.byte	0x5A
	.byte	0xE7
	.byte	0x37
	.byte	0x74
	.byte	0xB0
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5F96C_2:	@ 0x08D5F951
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x5C
	.byte	0xBE
	.byte	0x5A
	.byte	0xD9
	.byte	0x2C
	.byte	0x6C
	.byte	0x85
	.byte	0xBE
	.byte	0x36
	.byte	0x81
	.byte	0x2E
	.byte	0x81
	.byte	0x26
	.byte	0x81
	.byte	0x1E
	.byte	0x81
	.byte	0x16
	.byte	0x81
	.byte	0x0D
	.byte	0x81
	.byte	0x06
	.byte	0xAC
	.byte	0x81
	.byte	0xB1

@******************************************************@

	.global gSong_08D5F96C
gSong_08D5F96C:	@ 0x08D5F96C
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5F96C_1		@ track
	.word	gSong_08D5F96C_2		@ track

	.align 2
