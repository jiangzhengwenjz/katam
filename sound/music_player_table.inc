	.equiv TRACK_SIZE, 0x50

	.bss
	.align 2

gUnk_02020080::
	.space TRACK_SIZE * 16
	.size gUnk_02020080, .-gUnk_02020080

gUnk_02020580::
	.space TRACK_SIZE * 10
	.size gUnk_02020580, .-gUnk_02020580

gUnk_020208A0::
	.space TRACK_SIZE * 10
	.size gUnk_020208A0, .-gUnk_020208A0

gUnk_02020BC0::
	.space TRACK_SIZE * 10
	.size gUnk_02020BC0, .-gUnk_02020BC0
	
	.section .rodata
	.align 2
gMPlayTable::	@ 0x08B59EA0
	music_player gUnk_030016A0, gUnk_02020080, 16, 0
	music_player gUnk_030016E0, gUnk_02020580, 10, 0
	music_player gUnk_03001720, gUnk_020208A0, 10, 0
	music_player gUnk_03001770, gUnk_02020BC0, 10, 0
