	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

voicegroup008:: @ 08B59D40
	.incbin "baserom.gba", 0xB59D40, 0x00000C0

ProgrammableWaveData_08B59E00:: @ 08B59E00 programmable wave 0
	.incbin "baserom.gba", 0xB59E00, 0x0000010

ProgrammableWaveData_08B59E10:: @ 08B59E10 programmable wave 1
	.incbin "baserom.gba", 0xB59E10, 0x0000010

ProgrammableWaveData_08B59E20:: @ 08B59E20 programmable wave 2
	.incbin "baserom.gba", 0xB59E20, 0x0000010

ProgrammableWaveData_08B59E30:: @ 08B59E30 programmable wave 3
	.incbin "baserom.gba", 0xB59E30, 0x0000010

ProgrammableWaveData_08B59E40:: @ 08B59E40 programmable wave 4
	.incbin "baserom.gba", 0xB59E40, 0x0000060

gMPlayTable:: @ 08B59EA0
	.incbin "baserom.gba", 0xB59EA0, 0x0000030

gSongTable:: @ 08B59ED0
	.incbin "baserom.gba", 0xB59ED0, 0x0001360

gUnk_08B5B230:: @ 08B5B230 dummy_song_header
	.incbin "baserom.gba", 0xB5B230, 0x0000004
