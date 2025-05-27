	.equiv TRACK_SIZE, 0x50

	.bss
	.align 2

gMPlayTrack_0::
	.space TRACK_SIZE * 16
	.size gMPlayTrack_0, .-gMPlayTrack_0

gMPlayTrack_1::
	.space TRACK_SIZE * 10
	.size gMPlayTrack_1, .-gMPlayTrack_1

gMPlayTrack_2::
	.space TRACK_SIZE * 10
	.size gMPlayTrack_2, .-gMPlayTrack_2

gMPlayTrack_3::
	.space TRACK_SIZE * 10
	.size gMPlayTrack_3, .-gMPlayTrack_3
	
	.section .rodata
	.align 2
gMPlayTable::	@ 0x08B59EA0
	music_player gMPlayInfo_0, gMPlayTrack_0, 16, 0
	music_player gMPlayInfo_1, gMPlayTrack_1, 10, 0
	music_player gMPlayInfo_2, gMPlayTrack_2, 10, 0
	music_player gMPlayInfo_3, gMPlayTrack_3, 10, 0
