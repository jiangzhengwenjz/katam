	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_08B59D40:: @ 08B59D40
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

/* gUnk_08B5B234:: @ 08B5B234 direct sound wave data starts here
	.incbin "baserom.gba", 0xB5B234, 0x0000C68

gUnk_08B5BE9C:: @ 08B5BE9C
	.incbin "baserom.gba", 0xB5BE9C, 0x0000A74

gUnk_08B5C910:: @ 08B5C910
	.incbin "baserom.gba", 0xB5C910, 0x000119C

gUnk_08B5DAAC:: @ 08B5DAAC
	.incbin "baserom.gba", 0xB5DAAC, 0x0001364

gUnk_08B5EE10:: @ 08B5EE10
	.incbin "baserom.gba", 0xB5EE10, 0x0001EA6

gUnk_08B60CB6:: @ 08B60CB6
	.incbin "baserom.gba", 0xB60CB6, 0x000182A

gUnk_08B624E0:: @ 08B624E0
	.incbin "baserom.gba", 0xB624E0, 0x000023B

gUnk_08B6271B:: @ 08B6271B
	.incbin "baserom.gba", 0xB6271B, 0x0004459

gUnk_08B66B74:: @ 08B66B74
	.incbin "baserom.gba", 0xB66B74, 0x00026C4

gUnk_08B69238:: @ 08B69238
	.incbin "baserom.gba", 0xB69238, 0x000067E

gUnk_08B698B6:: @ 08B698B6
	.incbin "baserom.gba", 0xB698B6, 0x0002332

gUnk_08B6BBE8:: @ 08B6BBE8
	.incbin "baserom.gba", 0xB6BBE8, 0x0001B1C

gUnk_08B6D704:: @ 08B6D704
	.incbin "baserom.gba", 0xB6D704, 0x0002DC4

gUnk_08B704C8:: @ 08B704C8
	.incbin "baserom.gba", 0xB704C8, 0x0000B04

gUnk_08B70FCC:: @ 08B70FCC
	.incbin "baserom.gba", 0xB70FCC, 0x0002FF4

gUnk_08B73FC0:: @ 08B73FC0
	.incbin "baserom.gba", 0xB73FC0, 0x000137C

gUnk_08B7533C:: @ 08B7533C
	.incbin "baserom.gba", 0xB7533C, 0x0002DDC

gUnk_08B78118:: @ 08B78118
	.incbin "baserom.gba", 0xB78118, 0x000023C

gUnk_08B78354:: @ 08B78354
	.incbin "baserom.gba", 0xB78354, 0x00007D8

gUnk_08B78B2C:: @ 08B78B2C
	.incbin "baserom.gba", 0xB78B2C, 0x0001270

gUnk_08B79D9C:: @ 08B79D9C
	.incbin "baserom.gba", 0xB79D9C, 0x0002B2F

gUnk_08B7C8CB:: @ 08B7C8CB
	.incbin "baserom.gba", 0xB7C8CB, 0x0000C91

gUnk_08B7D55C:: @ 08B7D55C
	.incbin "baserom.gba", 0xB7D55C, 0x00007AD

gUnk_08B7DD09:: @ 08B7DD09
	.incbin "baserom.gba", 0xB7DD09, 0x00026DA

gUnk_08B803E3:: @ 08B803E3
	.incbin "baserom.gba", 0xB803E3, 0x00004F5

gUnk_08B808D8:: @ 08B808D8
	.incbin "baserom.gba", 0xB808D8, 0x0000110

gUnk_08B809E8:: @ 08B809E8
	.incbin "baserom.gba", 0xB809E8, 0x000221F

gUnk_08B82C07:: @ 08B82C07
	.incbin "baserom.gba", 0xB82C07, 0x0000ADD

gUnk_08B836E4:: @ 08B836E4
	.incbin "baserom.gba", 0xB836E4, 0x0001E4C

gUnk_08B85530:: @ 08B85530
	.incbin "baserom.gba", 0xB85530, 0x0000149

gUnk_08B85679:: @ 08B85679
	.incbin "baserom.gba", 0xB85679, 0x0000ABB

gUnk_08B86134:: @ 08B86134
	.incbin "baserom.gba", 0xB86134, 0x0001875

gUnk_08B879A9:: @ 08B879A9
	.incbin "baserom.gba", 0xB879A9, 0x0001FF0

gUnk_08B89999:: @ 08B89999
	.incbin "baserom.gba", 0xB89999, 0x0000CEB

gUnk_08B8A684:: @ 08B8A684
	.incbin "baserom.gba", 0xB8A684, 0x0003995

gUnk_08B8E019:: @ 08B8E019
	.incbin "baserom.gba", 0xB8E019, 0x0000693

gUnk_08B8E6AC:: @ 08B8E6AC
	.incbin "baserom.gba", 0xB8E6AC, 0x0001C87

gUnk_08B90333:: @ 08B90333
	.incbin "baserom.gba", 0xB90333, 0x00003ED

gUnk_08B90720:: @ 08B90720
	.incbin "baserom.gba", 0xB90720, 0x00005D8

gUnk_08B90CF8:: @ 08B90CF8
	.incbin "baserom.gba", 0xB90CF8, 0x000061F

gUnk_08B91317:: @ 08B91317
	.incbin "baserom.gba", 0xB91317, 0x0001189

gUnk_08B924A0:: @ 08B924A0
	.incbin "baserom.gba", 0xB924A0, 0x0002830

gUnk_08B94CD0:: @ 08B94CD0
	.incbin "baserom.gba", 0xB94CD0, 0x0001ACC

gUnk_08B9679C:: @ 08B9679C
	.incbin "baserom.gba", 0xB9679C, 0x0001704

gUnk_08B97EA0:: @ 08B97EA0
	.incbin "baserom.gba", 0xB97EA0, 0x0002663

gUnk_08B9A503:: @ 08B9A503
	.incbin "baserom.gba", 0xB9A503, 0x0000A19

gUnk_08B9AF1C:: @ 08B9AF1C
	.incbin "baserom.gba", 0xB9AF1C, 0x00002CD

gUnk_08B9B1E9:: @ 08B9B1E9
	.incbin "baserom.gba", 0xB9B1E9, 0x00009AF

gUnk_08B9BB98:: @ 08B9BB98
	.incbin "baserom.gba", 0xB9BB98, 0x0000FFD

gUnk_08B9CB95:: @ 08B9CB95
	.incbin "baserom.gba", 0xB9CB95, 0x0000CC7

gUnk_08B9D85C:: @ 08B9D85C
	.incbin "baserom.gba", 0xB9D85C, 0x000047C

gUnk_08B9DCD8:: @ 08B9DCD8
	.incbin "baserom.gba", 0xB9DCD8, 0x00010EB

gUnk_08B9EDC3:: @ 08B9EDC3
	.incbin "baserom.gba", 0xB9EDC3, 0x000153D

gUnk_08BA0300:: @ 08BA0300
	.incbin "baserom.gba", 0xBA0300, 0x0000210

gUnk_08BA0510:: @ 08BA0510
	.incbin "baserom.gba", 0xBA0510, 0x0000086

gUnk_08BA0596:: @ 08BA0596
	.incbin "baserom.gba", 0xBA0596, 0x0000D2A

gUnk_08BA12C0:: @ 08BA12C0
	.incbin "baserom.gba", 0xBA12C0, 0x0000CD8

gUnk_08BA1F98:: @ 08BA1F98
	.incbin "baserom.gba", 0xBA1F98, 0x0000371

gUnk_08BA2309:: @ 08BA2309
	.incbin "baserom.gba", 0xBA2309, 0x00006F4

gUnk_08BA29FD:: @ 08BA29FD
	.incbin "baserom.gba", 0xBA29FD, 0x00013EF

gUnk_08BA3DEC:: @ 08BA3DEC
	.incbin "baserom.gba", 0xBA3DEC, 0x0001449

gUnk_08BA5235:: @ 08BA5235
	.incbin "baserom.gba", 0xBA5235, 0x00008A3

gUnk_08BA5AD8:: @ 08BA5AD8
	.incbin "baserom.gba", 0xBA5AD8, 0x0000430

gUnk_08BA5F08:: @ 08BA5F08
	.incbin "baserom.gba", 0xBA5F08, 0x0000EAC

gUnk_08BA6DB4:: @ 08BA6DB4
	.incbin "baserom.gba", 0xBA6DB4, 0x0001A34

gUnk_08BA87E8:: @ 08BA87E8
	.incbin "baserom.gba", 0xBA87E8, 0x00019D4

gUnk_08BAA1BC:: @ 08BAA1BC
	.incbin "baserom.gba", 0xBAA1BC, 0x0000679

gUnk_08BAA835:: @ 08BAA835
	.incbin "baserom.gba", 0xBAA835, 0x00000E8

gUnk_08BAA91D:: @ 08BAA91D
	.incbin "baserom.gba", 0xBAA91D, 0x00000C1

gUnk_08BAA9DE:: @ 08BAA9DE
	.incbin "baserom.gba", 0xBAA9DE, 0x000009B

gUnk_08BAAA79:: @ 08BAAA79
	.incbin "baserom.gba", 0xBAAA79, 0x0000021

gUnk_08BAAA9A:: @ 08BAAA9A
	.incbin "baserom.gba", 0xBAAA9A, 0x00000E6

gUnk_08BAAB80:: @ 08BAAB80
	.incbin "baserom.gba", 0xBAAB80, 0x0000019

gUnk_08BAAB99:: @ 08BAAB99
	.incbin "baserom.gba", 0xBAAB99, 0x0000C77

gUnk_08BAB810:: @ 08BAB810
	.incbin "baserom.gba", 0xBAB810, 0x000029A

gUnk_08BABAAA:: @ 08BABAAA
	.incbin "baserom.gba", 0xBABAAA, 0x000008B

gUnk_08BABB35:: @ 08BABB35
	.incbin "baserom.gba", 0xBABB35, 0x00000F6

gUnk_08BABC2B:: @ 08BABC2B
	.incbin "baserom.gba", 0xBABC2B, 0x0001071

gUnk_08BACC9C:: @ 08BACC9C
	.incbin "baserom.gba", 0xBACC9C, 0x0001171

gUnk_08BADE0D:: @ 08BADE0D
	.incbin "baserom.gba", 0xBADE0D, 0x0001C53

gUnk_08BAFA60:: @ 08BAFA60
	.incbin "baserom.gba", 0xBAFA60, 0x00000A3

gUnk_08BAFB03:: @ 08BAFB03
	.incbin "baserom.gba", 0xBAFB03, 0x000081D

gUnk_08BB0320:: @ 08BB0320
	.incbin "baserom.gba", 0xBB0320, 0x00002E0

gUnk_08BB0600:: @ 08BB0600
	.incbin "baserom.gba", 0xBB0600, 0x0000110

gUnk_08BB0710:: @ 08BB0710
	.incbin "baserom.gba", 0xBB0710, 0x00002A8

gUnk_08BB09B8:: @ 08BB09B8
	.incbin "baserom.gba", 0xBB09B8, 0x0000760

gUnk_08BB1118:: @ 08BB1118
	.incbin "baserom.gba", 0xBB1118, 0x0000168

gUnk_08BB1280:: @ 08BB1280
	.incbin "baserom.gba", 0xBB1280, 0x0000134

gUnk_08BB13B4:: @ 08BB13B4
	.incbin "baserom.gba", 0xBB13B4, 0x000017D

gUnk_08BB1531:: @ 08BB1531
	.incbin "baserom.gba", 0xBB1531, 0x000021F

gUnk_08BB1750:: @ 08BB1750
	.incbin "baserom.gba", 0xBB1750, 0x0000177

gUnk_08BB18C7:: @ 08BB18C7
	.incbin "baserom.gba", 0xBB18C7, 0x0001DA4

gUnk_08BB366B:: @ 08BB366B
	.incbin "baserom.gba", 0xBB366B, 0x000011D

gUnk_08BB3788:: @ 08BB3788
	.incbin "baserom.gba", 0xBB3788, 0x0000923

gUnk_08BB40AB:: @ 08BB40AB
	.incbin "baserom.gba", 0xBB40AB, 0x0000885

gUnk_08BB4930:: @ 08BB4930
	.incbin "baserom.gba", 0xBB4930, 0x00006DB

gUnk_08BB500B:: @ 08BB500B
	.incbin "baserom.gba", 0xBB500B, 0x00004F8

gUnk_08BB5503:: @ 08BB5503
	.incbin "baserom.gba", 0xBB5503, 0x0000052

gUnk_08BB5555:: @ 08BB5555
	.incbin "baserom.gba", 0xBB5555, 0x0000220

gUnk_08BB5775:: @ 08BB5775
	.incbin "baserom.gba", 0xBB5775, 0x00003A7

gUnk_08BB5B1C:: @ 08BB5B1C
	.incbin "baserom.gba", 0xBB5B1C, 0x0000488

gUnk_08BB5FA4:: @ 08BB5FA4
	.incbin "baserom.gba", 0xBB5FA4, 0x0000319

gUnk_08BB62BD:: @ 08BB62BD
	.incbin "baserom.gba", 0xBB62BD, 0x0000E45

gUnk_08BB7102:: @ 08BB7102
	.incbin "baserom.gba", 0xBB7102, 0x00008A8

gUnk_08BB79AA:: @ 08BB79AA
	.incbin "baserom.gba", 0xBB79AA, 0x0001BCD

gUnk_08BB9577:: @ 08BB9577
	.incbin "baserom.gba", 0xBB9577, 0x0000542

gUnk_08BB9AB9:: @ 08BB9AB9
	.incbin "baserom.gba", 0xBB9AB9, 0x0000663

gUnk_08BBA11C:: @ 08BBA11C
	.incbin "baserom.gba", 0xBBA11C, 0x0000802

gUnk_08BBA91E:: @ 08BBA91E
	.incbin "baserom.gba", 0xBBA91E, 0x0000060

gUnk_08BBA97E:: @ 08BBA97E
	.incbin "baserom.gba", 0xBBA97E, 0x000033B

gUnk_08BBACB9:: @ 08BBACB9
	.incbin "baserom.gba", 0xBBACB9, 0x00005D4

gUnk_08BBB28D:: @ 08BBB28D
	.incbin "baserom.gba", 0xBBB28D, 0x000081E

gUnk_08BBBAAB:: @ 08BBBAAB
	.incbin "baserom.gba", 0xBBBAAB, 0x000001E

gUnk_08BBBAC9:: @ 08BBBAC9
	.incbin "baserom.gba", 0xBBBAC9, 0x00000BE

gUnk_08BBBB87:: @ 08BBBB87
	.incbin "baserom.gba", 0xBBBB87, 0x0000035

gUnk_08BBBBBC:: @ 08BBBBBC
	.incbin "baserom.gba", 0xBBBBBC, 0x0000002

gUnk_08BBBBBE:: @ 08BBBBBE
	.incbin "baserom.gba", 0xBBBBBE, 0x0000001

gUnk_08BBBBBF:: @ 08BBBBBF
	.incbin "baserom.gba", 0xBBBBBF, 0x000000F

gUnk_08BBBBCE:: @ 08BBBBCE
	.incbin "baserom.gba", 0xBBBBCE, 0x00008A6

gUnk_08BBC474:: @ 08BBC474
	.incbin "baserom.gba", 0xBBC474, 0x00003CD

gUnk_08BBC841:: @ 08BBC841
	.incbin "baserom.gba", 0xBBC841, 0x000154A

gUnk_08BBDD8B:: @ 08BBDD8B
	.incbin "baserom.gba", 0xBBDD8B, 0x0000F63

gUnk_08BBECEE:: @ 08BBECEE
	.incbin "baserom.gba", 0xBBECEE, 0x000017A

gUnk_08BBEE68:: @ 08BBEE68
	.incbin "baserom.gba", 0xBBEE68, 0x00013B2

gUnk_08BC021A:: @ 08BC021A
	.incbin "baserom.gba", 0xBC021A, 0x000024C

gUnk_08BC0466:: @ 08BC0466
	.incbin "baserom.gba", 0xBC0466, 0x00023E9

gUnk_08BC284F:: @ 08BC284F
	.incbin "baserom.gba", 0xBC284F, 0x0000409

gUnk_08BC2C58:: @ 08BC2C58
	.incbin "baserom.gba", 0xBC2C58, 0x0001EB0

gUnk_08BC4B08:: @ 08BC4B08
	.incbin "baserom.gba", 0xBC4B08, 0x0000F14

gUnk_08BC5A1C:: @ 08BC5A1C
	.incbin "baserom.gba", 0xBC5A1C, 0x00000A4

gUnk_08BC5AC0:: @ 08BC5AC0
	.incbin "baserom.gba", 0xBC5AC0, 0x0000F7E

gUnk_08BC6A3E:: @ 08BC6A3E
	.incbin "baserom.gba", 0xBC6A3E, 0x000118A

gUnk_08BC7BC8:: @ 08BC7BC8
	.incbin "baserom.gba", 0xBC7BC8, 0x0001ED8

gUnk_08BC9AA0:: @ 08BC9AA0
	.incbin "baserom.gba", 0xBC9AA0, 0x0001D08

gUnk_08BCB7A8:: @ 08BCB7A8
	.incbin "baserom.gba", 0xBCB7A8, 0x0000FE0

gUnk_08BCC788:: @ 08BCC788
	.incbin "baserom.gba", 0xBCC788, 0x0000432

gUnk_08BCCBBA:: @ 08BCCBBA
	.incbin "baserom.gba", 0xBCCBBA, 0x00002CE

gUnk_08BCCE88:: @ 08BCCE88
	.incbin "baserom.gba", 0xBCCE88, 0x0000067

gUnk_08BCCEEF:: @ 08BCCEEF
	.incbin "baserom.gba", 0xBCCEEF, 0x0000A1E

gUnk_08BCD90D:: @ 08BCD90D
	.incbin "baserom.gba", 0xBCD90D, 0x000029E

gUnk_08BCDBAB:: @ 08BCDBAB
	.incbin "baserom.gba", 0xBCDBAB, 0x000035B

gUnk_08BCDF06:: @ 08BCDF06
	.incbin "baserom.gba", 0xBCDF06, 0x00020F9

gUnk_08BCFFFF:: @ 08BCFFFF
	.incbin "baserom.gba", 0xBCFFFF, 0x0001731

gUnk_08BD1730:: @ 08BD1730
	.incbin "baserom.gba", 0xBD1730, 0x0001CD8

gUnk_08BD3408:: @ 08BD3408
	.incbin "baserom.gba", 0xBD3408, 0x00016D6

gUnk_08BD4ADE:: @ 08BD4ADE
	.incbin "baserom.gba", 0xBD4ADE, 0x0000600

gUnk_08BD50DE:: @ 08BD50DE
	.incbin "baserom.gba", 0xBD50DE, 0x00039DC

gUnk_08BD8ABA:: @ 08BD8ABA
	.incbin "baserom.gba", 0xBD8ABA, 0x0000FAE

gUnk_08BD9A68:: @ 08BD9A68
	.incbin "baserom.gba", 0xBD9A68, 0x000133E

gUnk_08BDADA6:: @ 08BDADA6
	.incbin "baserom.gba", 0xBDADA6, 0x0003032

gUnk_08BDDDD8:: @ 08BDDDD8
	.incbin "baserom.gba", 0xBDDDD8, 0x0000115

gUnk_08BDDEED:: @ 08BDDEED
	.incbin "baserom.gba", 0xBDDEED, 0x000006E

gUnk_08BDDF5B:: @ 08BDDF5B
	.incbin "baserom.gba", 0xBDDF5B, 0x0001B01

gUnk_08BDFA5C:: @ 08BDFA5C
	.incbin "baserom.gba", 0xBDFA5C, 0x00005A4

gUnk_08BE0000:: @ 08BE0000
	.incbin "baserom.gba", 0xBE0000, 0x000419F

gUnk_08BE419F:: @ 08BE419F
	.incbin "baserom.gba", 0xBE419F, 0x0001D95

gUnk_08BE5F34:: @ 08BE5F34
	.incbin "baserom.gba", 0xBE5F34, 0x0002208

gUnk_08BE813C:: @ 08BE813C
	.incbin "baserom.gba", 0xBE813C, 0x000000C

gUnk_08BE8148:: @ 08BE8148
	.incbin "baserom.gba", 0xBE8148, 0x0000014

gUnk_08BE815C:: @ 08BE815C
	.incbin "baserom.gba", 0xBE815C, 0x0000008

gUnk_08BE8164:: @ 08BE8164
	.incbin "baserom.gba", 0xBE8164, 0x000489C

gUnk_08BECA00:: @ 08BECA00
	.incbin "baserom.gba", 0xBECA00, 0x0000281

gUnk_08BECC81:: @ 08BECC81
	.incbin "baserom.gba", 0xBECC81, 0x0003497

gUnk_08BF0118:: @ 08BF0118
	.incbin "baserom.gba", 0xBF0118, 0x00001E6

gUnk_08BF02FE:: @ 08BF02FE
	.incbin "baserom.gba", 0xBF02FE, 0x000008A

gUnk_08BF0388:: @ 08BF0388
	.incbin "baserom.gba", 0xBF0388, 0x0000379

gUnk_08BF0701:: @ 08BF0701
	.incbin "baserom.gba", 0xBF0701, 0x0001810

gUnk_08BF1F11:: @ 08BF1F11
	.incbin "baserom.gba", 0xBF1F11, 0x00010A3

gUnk_08BF2FB4:: @ 08BF2FB4
	.incbin "baserom.gba", 0xBF2FB4, 0x0000FEB

gUnk_08BF3F9F:: @ 08BF3F9F
	.incbin "baserom.gba", 0xBF3F9F, 0x0000495

gUnk_08BF4434:: @ 08BF4434
	.incbin "baserom.gba", 0xBF4434, 0x000135F

gUnk_08BF5793:: @ 08BF5793
	.incbin "baserom.gba", 0xBF5793, 0x000097D

gUnk_08BF6110:: @ 08BF6110
	.incbin "baserom.gba", 0xBF6110, 0x00003E0

gUnk_08BF64F0:: @ 08BF64F0
	.incbin "baserom.gba", 0xBF64F0, 0x000115C

gUnk_08BF764C:: @ 08BF764C
	.incbin "baserom.gba", 0xBF764C, 0x0001220

gUnk_08BF886C:: @ 08BF886C
	.incbin "baserom.gba", 0xBF886C, 0x0001650

gUnk_08BF9EBC:: @ 08BF9EBC
	.incbin "baserom.gba", 0xBF9EBC, 0x0000384

gUnk_08BFA240:: @ 08BFA240
	.incbin "baserom.gba", 0xBFA240, 0x0003698

gUnk_08BFD8D8:: @ 08BFD8D8
	.incbin "baserom.gba", 0xBFD8D8, 0x000271B

gUnk_08BFFFF3:: @ 08BFFFF3
	.incbin "baserom.gba", 0xBFFFF3, 0x0000C96

gUnk_08C00C89:: @ 08C00C89
	.incbin "baserom.gba", 0xC00C89, 0x0000641

gUnk_08C012CA:: @ 08C012CA
	.incbin "baserom.gba", 0xC012CA, 0x0000DDA

gUnk_08C020A4:: @ 08C020A4
	.incbin "baserom.gba", 0xC020A4, 0x0000064

gUnk_08C02108:: @ 08C02108
	.incbin "baserom.gba", 0xC02108, 0x00001F7

gUnk_08C022FF:: @ 08C022FF
	.incbin "baserom.gba", 0xC022FF, 0x0000DBF

gUnk_08C030BE:: @ 08C030BE
	.incbin "baserom.gba", 0xC030BE, 0x00001FC

gUnk_08C032BA:: @ 08C032BA
	.incbin "baserom.gba", 0xC032BA, 0x0000C8E

gUnk_08C03F48:: @ 08C03F48
	.incbin "baserom.gba", 0xC03F48, 0x0001DA7

gUnk_08C05CEF:: @ 08C05CEF
	.incbin "baserom.gba", 0xC05CEF, 0x0001646

gUnk_08C07335:: @ 08C07335
	.incbin "baserom.gba", 0xC07335, 0x0000887

gUnk_08C07BBC:: @ 08C07BBC
	.incbin "baserom.gba", 0xC07BBC, 0x0000B5E

gUnk_08C0871A:: @ 08C0871A
	.incbin "baserom.gba", 0xC0871A, 0x0000FF9

gUnk_08C09713:: @ 08C09713
	.incbin "baserom.gba", 0xC09713, 0x0004D1D

gUnk_08C0E430:: @ 08C0E430
	.incbin "baserom.gba", 0xC0E430, 0x00011D0

gUnk_08C0F600:: @ 08C0F600
	.incbin "baserom.gba", 0xC0F600, 0x0000A00

gUnk_08C10000:: @ 08C10000
	.incbin "baserom.gba", 0xC10000, 0x000007B

gUnk_08C1007B:: @ 08C1007B
	.incbin "baserom.gba", 0xC1007B, 0x0000009

gUnk_08C10084:: @ 08C10084
	.incbin "baserom.gba", 0xC10084, 0x0000420

gUnk_08C104A4:: @ 08C104A4
	.incbin "baserom.gba", 0xC104A4, 0x0001016

gUnk_08C114BA:: @ 08C114BA
	.incbin "baserom.gba", 0xC114BA, 0x0001182

gUnk_08C1263C:: @ 08C1263C
	.incbin "baserom.gba", 0xC1263C, 0x0003F19

gUnk_08C16555:: @ 08C16555
	.incbin "baserom.gba", 0xC16555, 0x0000CAE

gUnk_08C17203:: @ 08C17203
	.incbin "baserom.gba", 0xC17203, 0x0000711

gUnk_08C17914:: @ 08C17914
	.incbin "baserom.gba", 0xC17914, 0x00031D9

gUnk_08C1AAED:: @ 08C1AAED
	.incbin "baserom.gba", 0xC1AAED, 0x0000BF8

gUnk_08C1B6E5:: @ 08C1B6E5
	.incbin "baserom.gba", 0xC1B6E5, 0x00021C7

gUnk_08C1D8AC:: @ 08C1D8AC
	.incbin "baserom.gba", 0xC1D8AC, 0x0001555

gUnk_08C1EE01:: @ 08C1EE01
	.incbin "baserom.gba", 0xC1EE01, 0x0000C2D

gUnk_08C1FA2E:: @ 08C1FA2E
	.incbin "baserom.gba", 0xC1FA2E, 0x0000E93

gUnk_08C208C1:: @ 08C208C1
	.incbin "baserom.gba", 0xC208C1, 0x0001087

gUnk_08C21948:: @ 08C21948
	.incbin "baserom.gba", 0xC21948, 0x00069E0

gUnk_08C28328:: @ 08C28328
	.incbin "baserom.gba", 0xC28328, 0x00003C8

gUnk_08C286F0:: @ 08C286F0
	.incbin "baserom.gba", 0xC286F0, 0x0004088

gUnk_08C2C778:: @ 08C2C778
	.incbin "baserom.gba", 0xC2C778, 0x0000FA0

gUnk_08C2D718:: @ 08C2D718
	.incbin "baserom.gba", 0xC2D718, 0x00009F7

gUnk_08C2E10F:: @ 08C2E10F
	.incbin "baserom.gba", 0xC2E10F, 0x00019C9

gUnk_08C2FAD8:: @ 08C2FAD8
	.incbin "baserom.gba", 0xC2FAD8, 0x0000620

gUnk_08C300F8:: @ 08C300F8
	.incbin "baserom.gba", 0xC300F8, 0x0000683

gUnk_08C3077B:: @ 08C3077B
	.incbin "baserom.gba", 0xC3077B, 0x0001080

gUnk_08C317FB:: @ 08C317FB
	.incbin "baserom.gba", 0xC317FB, 0x0004DBD

gUnk_08C365B8:: @ 08C365B8
	.incbin "baserom.gba", 0xC365B8, 0x0000A64

gUnk_08C3701C:: @ 08C3701C
	.incbin "baserom.gba", 0xC3701C, 0x00009CC

gUnk_08C379E8:: @ 08C379E8
	.incbin "baserom.gba", 0xC379E8, 0x00009AC

gUnk_08C38394:: @ 08C38394
	.incbin "baserom.gba", 0xC38394, 0x0001880

gUnk_08C39C14:: @ 08C39C14
	.incbin "baserom.gba", 0xC39C14, 0x00030C6

gUnk_08C3CCDA:: @ 08C3CCDA
	.incbin "baserom.gba", 0xC3CCDA, 0x0000416

gUnk_08C3D0F0:: @ 08C3D0F0
	.incbin "baserom.gba", 0xC3D0F0, 0x000010B

gUnk_08C3D1FB:: @ 08C3D1FB
	.incbin "baserom.gba", 0xC3D1FB, 0x00006ED

gUnk_08C3D8E8:: @ 08C3D8E8
	.incbin "baserom.gba", 0xC3D8E8, 0x000273A

gUnk_08C40022:: @ 08C40022
	.incbin "baserom.gba", 0xC40022, 0x00000C5

gUnk_08C400E7:: @ 08C400E7
	.incbin "baserom.gba", 0xC400E7, 0x000028D

gUnk_08C40374:: @ 08C40374
	.incbin "baserom.gba", 0xC40374, 0x000054F

gUnk_08C408C3:: @ 08C408C3
	.incbin "baserom.gba", 0xC408C3, 0x0000011

gUnk_08C408D4:: @ 08C408D4
	.incbin "baserom.gba", 0xC408D4, 0x0000111

gUnk_08C409E5:: @ 08C409E5
	.incbin "baserom.gba", 0xC409E5, 0x0000E67

gUnk_08C4184C:: @ 08C4184C
	.incbin "baserom.gba", 0xC4184C, 0x0000089

gUnk_08C418D5:: @ 08C418D5
	.incbin "baserom.gba", 0xC418D5, 0x000098B

gUnk_08C42260:: @ 08C42260
	.incbin "baserom.gba", 0xC42260, 0x00001F4

gUnk_08C42454:: @ 08C42454
	.incbin "baserom.gba", 0xC42454, 0x000037C

gUnk_08C427D0:: @ 08C427D0
	.incbin "baserom.gba", 0xC427D0, 0x0000434

gUnk_08C42C04:: @ 08C42C04
	.incbin "baserom.gba", 0xC42C04, 0x00004EC

gUnk_08C430F0:: @ 08C430F0
	.incbin "baserom.gba", 0xC430F0, 0x00006F0

gUnk_08C437E0:: @ 08C437E0
	.incbin "baserom.gba", 0xC437E0, 0x0000D75

gUnk_08C44555:: @ 08C44555
	.incbin "baserom.gba", 0xC44555, 0x0000FC7

gUnk_08C4551C:: @ 08C4551C
	.incbin "baserom.gba", 0xC4551C, 0x0001D8C

gUnk_08C472A8:: @ 08C472A8
	.incbin "baserom.gba", 0xC472A8, 0x000046C

gUnk_08C47714:: @ 08C47714
	.incbin "baserom.gba", 0xC47714, 0x0000F85

gUnk_08C48699:: @ 08C48699
	.incbin "baserom.gba", 0xC48699, 0x0000BB1

gUnk_08C4924A:: @ 08C4924A
	.incbin "baserom.gba", 0xC4924A, 0x000063C

gUnk_08C49886:: @ 08C49886
	.incbin "baserom.gba", 0xC49886, 0x00005BA

gUnk_08C49E40:: @ 08C49E40
	.incbin "baserom.gba", 0xC49E40, 0x00036F0

gUnk_08C4D530:: @ 08C4D530
	.incbin "baserom.gba", 0xC4D530, 0x0000C98

gUnk_08C4E1C8:: @ 08C4E1C8
	.incbin "baserom.gba", 0xC4E1C8, 0x000016C

gUnk_08C4E334:: @ 08C4E334
	.incbin "baserom.gba", 0xC4E334, 0x0001208

gUnk_08C4F53C:: @ 08C4F53C
	.incbin "baserom.gba", 0xC4F53C, 0x00005C0

gUnk_08C4FAFC:: @ 08C4FAFC
	.incbin "baserom.gba", 0xC4FAFC, 0x00007C7

gUnk_08C502C3:: @ 08C502C3
	.incbin "baserom.gba", 0xC502C3, 0x00000D5

gUnk_08C50398:: @ 08C50398
	.incbin "baserom.gba", 0xC50398, 0x000276C

gUnk_08C52B04:: @ 08C52B04
	.incbin "baserom.gba", 0xC52B04, 0x0001854

gUnk_08C54358:: @ 08C54358
	.incbin "baserom.gba", 0xC54358, 0x00007F8

gUnk_08C54B50:: @ 08C54B50
	.incbin "baserom.gba", 0xC54B50, 0x0001C94

gUnk_08C567E4:: @ 08C567E4
	.incbin "baserom.gba", 0xC567E4, 0x0000C1C

gUnk_08C57400:: @ 08C57400
	.incbin "baserom.gba", 0xC57400, 0x0000E14

gUnk_08C58214:: @ 08C58214
	.incbin "baserom.gba", 0xC58214, 0x00015F8

gUnk_08C5980C:: @ 08C5980C
	.incbin "baserom.gba", 0xC5980C, 0x0000D14

gUnk_08C5A520:: @ 08C5A520
	.incbin "baserom.gba", 0xC5A520, 0x0000A58

gUnk_08C5AF78:: @ 08C5AF78
	.incbin "baserom.gba", 0xC5AF78, 0x00031D0

gUnk_08C5E148:: @ 08C5E148
	.incbin "baserom.gba", 0xC5E148, 0x0001EC0

gUnk_08C60008:: @ 08C60008
	.incbin "baserom.gba", 0xC60008, 0x00000E4

gUnk_08C600EC:: @ 08C600EC
	.incbin "baserom.gba", 0xC600EC, 0x00000AD

gUnk_08C60199:: @ 08C60199
	.incbin "baserom.gba", 0xC60199, 0x00007BA

gUnk_08C60953:: @ 08C60953
	.incbin "baserom.gba", 0xC60953, 0x000067B

gUnk_08C60FCE:: @ 08C60FCE
	.incbin "baserom.gba", 0xC60FCE, 0x0000971

gUnk_08C6193F:: @ 08C6193F
	.incbin "baserom.gba", 0xC6193F, 0x00011CA

gUnk_08C62B09:: @ 08C62B09
	.incbin "baserom.gba", 0xC62B09, 0x00017EB

gUnk_08C642F4:: @ 08C642F4
	.incbin "baserom.gba", 0xC642F4, 0x0001B20

gUnk_08C65E14:: @ 08C65E14
	.incbin "baserom.gba", 0xC65E14, 0x0000EB8

gUnk_08C66CCC:: @ 08C66CCC
	.incbin "baserom.gba", 0xC66CCC, 0x0001D80

gUnk_08C68A4C:: @ 08C68A4C
	.incbin "baserom.gba", 0xC68A4C, 0x00014BC

gUnk_08C69F08:: @ 08C69F08
	.incbin "baserom.gba", 0xC69F08, 0x00001B4

gUnk_08C6A0BC:: @ 08C6A0BC
	.incbin "baserom.gba", 0xC6A0BC, 0x00006EE

gUnk_08C6A7AA:: @ 08C6A7AA
	.incbin "baserom.gba", 0xC6A7AA, 0x00015F2

gUnk_08C6BD9C:: @ 08C6BD9C
	.incbin "baserom.gba", 0xC6BD9C, 0x000064C

gUnk_08C6C3E8:: @ 08C6C3E8
	.incbin "baserom.gba", 0xC6C3E8, 0x0002EF0

gUnk_08C6F2D8:: @ 08C6F2D8
	.incbin "baserom.gba", 0xC6F2D8, 0x000140C

gUnk_08C706E4:: @ 08C706E4
	.incbin "baserom.gba", 0xC706E4, 0x00001E2

gUnk_08C708C6:: @ 08C708C6
	.incbin "baserom.gba", 0xC708C6, 0x0000022

gUnk_08C708E8:: @ 08C708E8
	.incbin "baserom.gba", 0xC708E8, 0x0000748

gUnk_08C71030:: @ 08C71030
	.incbin "baserom.gba", 0xC71030, 0x0000D56

gUnk_08C71D86:: @ 08C71D86
	.incbin "baserom.gba", 0xC71D86, 0x00002C5

gUnk_08C7204B:: @ 08C7204B
	.incbin "baserom.gba", 0xC7204B, 0x0001959

gUnk_08C739A4:: @ 08C739A4
	.incbin "baserom.gba", 0xC739A4, 0x000056C

gUnk_08C73F10:: @ 08C73F10
	.incbin "baserom.gba", 0xC73F10, 0x00003B6

gUnk_08C742C6:: @ 08C742C6
	.incbin "baserom.gba", 0xC742C6, 0x000018E

gUnk_08C74454:: @ 08C74454
	.incbin "baserom.gba", 0xC74454, 0x0000C7A

gUnk_08C750CE:: @ 08C750CE
	.incbin "baserom.gba", 0xC750CE, 0x000156E

gUnk_08C7663C:: @ 08C7663C
	.incbin "baserom.gba", 0xC7663C, 0x00027A4

gUnk_08C78DE0:: @ 08C78DE0
	.incbin "baserom.gba", 0xC78DE0, 0x0001FCE

gUnk_08C7ADAE:: @ 08C7ADAE
	.incbin "baserom.gba", 0xC7ADAE, 0x0000569

gUnk_08C7B317:: @ 08C7B317
	.incbin "baserom.gba", 0xC7B317, 0x0001CA9

gUnk_08C7CFC0:: @ 08C7CFC0
	.incbin "baserom.gba", 0xC7CFC0, 0x0000B24

gUnk_08C7DAE4:: @ 08C7DAE4
	.incbin "baserom.gba", 0xC7DAE4, 0x0000E70

gUnk_08C7E954:: @ 08C7E954
	.incbin "baserom.gba", 0xC7E954, 0x00010E0

gUnk_08C7FA34:: @ 08C7FA34
	.incbin "baserom.gba", 0xC7FA34, 0x000091C

gUnk_08C80350:: @ 08C80350
	.incbin "baserom.gba", 0xC80350, 0x0000577

gUnk_08C808C7:: @ 08C808C7
	.incbin "baserom.gba", 0xC808C7, 0x0001007

gUnk_08C818CE:: @ 08C818CE
	.incbin "baserom.gba", 0xC818CE, 0x00007DE

gUnk_08C820AC:: @ 08C820AC
	.incbin "baserom.gba", 0xC820AC, 0x0000081

gUnk_08C8212D:: @ 08C8212D
	.incbin "baserom.gba", 0xC8212D, 0x0002713

gUnk_08C84840:: @ 08C84840
	.incbin "baserom.gba", 0xC84840, 0x0000A10

gUnk_08C85250:: @ 08C85250
	.incbin "baserom.gba", 0xC85250, 0x00013E2

gUnk_08C86632:: @ 08C86632
	.incbin "baserom.gba", 0xC86632, 0x00016AA

gUnk_08C87CDC:: @ 08C87CDC
	.incbin "baserom.gba", 0xC87CDC, 0x00033BC

gUnk_08C8B098:: @ 08C8B098
	.incbin "baserom.gba", 0xC8B098, 0x0000778

gUnk_08C8B810:: @ 08C8B810
	.incbin "baserom.gba", 0xC8B810, 0x0000C08

gUnk_08C8C418:: @ 08C8C418
	.incbin "baserom.gba", 0xC8C418, 0x0000608

gUnk_08C8CA20:: @ 08C8CA20
	.incbin "baserom.gba", 0xC8CA20, 0x0000328

gUnk_08C8CD48:: @ 08C8CD48
	.incbin "baserom.gba", 0xC8CD48, 0x0002BB8

gUnk_08C8F900:: @ 08C8F900
	.incbin "baserom.gba", 0xC8F900, 0x0000310

gUnk_08C8FC10:: @ 08C8FC10
	.incbin "baserom.gba", 0xC8FC10, 0x0000DF7

gUnk_08C90A07:: @ 08C90A07
	.incbin "baserom.gba", 0xC90A07, 0x0001C35

gUnk_08C9263C:: @ 08C9263C
	.incbin "baserom.gba", 0xC9263C, 0x00009D5

gUnk_08C93011:: @ 08C93011
	.incbin "baserom.gba", 0xC93011, 0x0000614

gUnk_08C93625:: @ 08C93625
	.incbin "baserom.gba", 0xC93625, 0x00011E7

gUnk_08C9480C:: @ 08C9480C
	.incbin "baserom.gba", 0xC9480C, 0x0000CDC

gUnk_08C954E8:: @ 08C954E8
	.incbin "baserom.gba", 0xC954E8, 0x000155C

gUnk_08C96A44:: @ 08C96A44
	.incbin "baserom.gba", 0xC96A44, 0x0000668

gUnk_08C970AC:: @ 08C970AC
	.incbin "baserom.gba", 0xC970AC, 0x00018B4

gUnk_08C98960:: @ 08C98960
	.incbin "baserom.gba", 0xC98960, 0x0000440

gUnk_08C98DA0:: @ 08C98DA0
	.incbin "baserom.gba", 0xC98DA0, 0x0000211

gUnk_08C98FB1:: @ 08C98FB1
	.incbin "baserom.gba", 0xC98FB1, 0x00022F3

gUnk_08C9B2A4:: @ 08C9B2A4
	.incbin "baserom.gba", 0xC9B2A4, 0x0001A43

gUnk_08C9CCE7:: @ 08C9CCE7
	.incbin "baserom.gba", 0xC9CCE7, 0x0000185

gUnk_08C9CE6C:: @ 08C9CE6C
	.incbin "baserom.gba", 0xC9CE6C, 0x0000779

gUnk_08C9D5E5:: @ 08C9D5E5
	.incbin "baserom.gba", 0xC9D5E5, 0x0001056

gUnk_08C9E63B:: @ 08C9E63B
	.incbin "baserom.gba", 0xC9E63B, 0x0000215

gUnk_08C9E850:: @ 08C9E850
	.incbin "baserom.gba", 0xC9E850, 0x0000EB8

gUnk_08C9F708:: @ 08C9F708
	.incbin "baserom.gba", 0xC9F708, 0x0000128

gUnk_08C9F830:: @ 08C9F830
	.incbin "baserom.gba", 0xC9F830, 0x00007D8

gUnk_08CA0008:: @ 08CA0008
	.incbin "baserom.gba", 0xCA0008, 0x00000FD

gUnk_08CA0105:: @ 08CA0105
	.incbin "baserom.gba", 0xCA0105, 0x0000142

gUnk_08CA0247:: @ 08CA0247
	.incbin "baserom.gba", 0xCA0247, 0x00005BA

gUnk_08CA0801:: @ 08CA0801
	.incbin "baserom.gba", 0xCA0801, 0x0000002

gUnk_08CA0803:: @ 08CA0803
	.incbin "baserom.gba", 0xCA0803, 0x00000C6

gUnk_08CA08C9:: @ 08CA08C9
	.incbin "baserom.gba", 0xCA08C9, 0x000063F

gUnk_08CA0F08:: @ 08CA0F08
	.incbin "baserom.gba", 0xCA0F08, 0x000037D

gUnk_08CA1285:: @ 08CA1285
	.incbin "baserom.gba", 0xCA1285, 0x000135F

gUnk_08CA25E4:: @ 08CA25E4
	.incbin "baserom.gba", 0xCA25E4, 0x00002A4

gUnk_08CA2888:: @ 08CA2888
	.incbin "baserom.gba", 0xCA2888, 0x0000A64

gUnk_08CA32EC:: @ 08CA32EC
	.incbin "baserom.gba", 0xCA32EC, 0x00012E4

gUnk_08CA45D0:: @ 08CA45D0
	.incbin "baserom.gba", 0xCA45D0, 0x00002F0

gUnk_08CA48C0:: @ 08CA48C0
	.incbin "baserom.gba", 0xCA48C0, 0x0001AE2

gUnk_08CA63A2:: @ 08CA63A2
	.incbin "baserom.gba", 0xCA63A2, 0x000076B

gUnk_08CA6B0D:: @ 08CA6B0D
	.incbin "baserom.gba", 0xCA6B0D, 0x0000B16

gUnk_08CA7623:: @ 08CA7623
	.incbin "baserom.gba", 0xCA7623, 0x0000F38

gUnk_08CA855B:: @ 08CA855B
	.incbin "baserom.gba", 0xCA855B, 0x000143E

gUnk_08CA9999:: @ 08CA9999
	.incbin "baserom.gba", 0xCA9999, 0x0001737

gUnk_08CAB0D0:: @ 08CAB0D0
	.incbin "baserom.gba", 0xCAB0D0, 0x00000D7

gUnk_08CAB1A7:: @ 08CAB1A7
	.incbin "baserom.gba", 0xCAB1A7, 0x00009A1

gUnk_08CABB48:: @ 08CABB48
	.incbin "baserom.gba", 0xCABB48, 0x0000C0C

gUnk_08CAC754:: @ 08CAC754
	.incbin "baserom.gba", 0xCAC754, 0x00025F9

gUnk_08CAED4D:: @ 08CAED4D
	.incbin "baserom.gba", 0xCAED4D, 0x00012D7

gUnk_08CB0024:: @ 08CB0024
	.incbin "baserom.gba", 0xCB0024, 0x0000144

gUnk_08CB0168:: @ 08CB0168
	.incbin "baserom.gba", 0xCB0168, 0x00006E6

gUnk_08CB084E:: @ 08CB084E
	.incbin "baserom.gba", 0xCB084E, 0x00011A1

gUnk_08CB19EF:: @ 08CB19EF
	.incbin "baserom.gba", 0xCB19EF, 0x00026FF

gUnk_08CB40EE:: @ 08CB40EE
	.incbin "baserom.gba", 0xCB40EE, 0x00000A7

gUnk_08CB4195:: @ 08CB4195
	.incbin "baserom.gba", 0xCB4195, 0x00007A3

gUnk_08CB4938:: @ 08CB4938
	.incbin "baserom.gba", 0xCB4938, 0x0000BC0

gUnk_08CB54F8:: @ 08CB54F8
	.incbin "baserom.gba", 0xCB54F8, 0x00005F7

gUnk_08CB5AEF:: @ 08CB5AEF
	.incbin "baserom.gba", 0xCB5AEF, 0x00000E1

gUnk_08CB5BD0:: @ 08CB5BD0
	.incbin "baserom.gba", 0xCB5BD0, 0x00007D9

gUnk_08CB63A9:: @ 08CB63A9
	.incbin "baserom.gba", 0xCB63A9, 0x00001F1

gUnk_08CB659A:: @ 08CB659A
	.incbin "baserom.gba", 0xCB659A, 0x000088E

gUnk_08CB6E28:: @ 08CB6E28
	.incbin "baserom.gba", 0xCB6E28, 0x0000952

gUnk_08CB777A:: @ 08CB777A
	.incbin "baserom.gba", 0xCB777A, 0x0000746

gUnk_08CB7EC0:: @ 08CB7EC0
	.incbin "baserom.gba", 0xCB7EC0, 0x0000695

gUnk_08CB8555:: @ 08CB8555
	.incbin "baserom.gba", 0xCB8555, 0x00015AD

gUnk_08CB9B02:: @ 08CB9B02
	.incbin "baserom.gba", 0xCB9B02, 0x0001ABC

gUnk_08CBB5BE:: @ 08CBB5BE
	.incbin "baserom.gba", 0xCBB5BE, 0x0000571

gUnk_08CBBB2F:: @ 08CBBB2F
	.incbin "baserom.gba", 0xCBBB2F, 0x000009C

gUnk_08CBBBCB:: @ 08CBBBCB
	.incbin "baserom.gba", 0xCBBBCB, 0x00004B5

gUnk_08CBC080:: @ 08CBC080
	.incbin "baserom.gba", 0xCBC080, 0x0000C3B

gUnk_08CBCCBB:: @ 08CBCCBB
	.incbin "baserom.gba", 0xCBCCBB, 0x0001054

gUnk_08CBDD0F:: @ 08CBDD0F
	.incbin "baserom.gba", 0xCBDD0F, 0x0000E14

gUnk_08CBEB23:: @ 08CBEB23
	.incbin "baserom.gba", 0xCBEB23, 0x0000049

gUnk_08CBEB6C:: @ 08CBEB6C
	.incbin "baserom.gba", 0xCBEB6C, 0x00011F8

gUnk_08CBFD64:: @ 08CBFD64
	.incbin "baserom.gba", 0xCBFD64, 0x0000189

gUnk_08CBFEED:: @ 08CBFEED
	.incbin "baserom.gba", 0xCBFEED, 0x00004AD

gUnk_08CC039A:: @ 08CC039A
	.incbin "baserom.gba", 0xCC039A, 0x0000013

gUnk_08CC03AD:: @ 08CC03AD
	.incbin "baserom.gba", 0xCC03AD, 0x000051E

gUnk_08CC08CB:: @ 08CC08CB
	.incbin "baserom.gba", 0xCC08CB, 0x0000047

gUnk_08CC0912:: @ 08CC0912
	.incbin "baserom.gba", 0xCC0912, 0x00000EE

gUnk_08CC0A00:: @ 08CC0A00
	.incbin "baserom.gba", 0xCC0A00, 0x0000A14

gUnk_08CC1414:: @ 08CC1414
	.incbin "baserom.gba", 0xCC1414, 0x0000E64

gUnk_08CC2278:: @ 08CC2278
	.incbin "baserom.gba", 0xCC2278, 0x0000169

gUnk_08CC23E1:: @ 08CC23E1
	.incbin "baserom.gba", 0xCC23E1, 0x000260B

gUnk_08CC49EC:: @ 08CC49EC
	.incbin "baserom.gba", 0xCC49EC, 0x0000FC0

gUnk_08CC59AC:: @ 08CC59AC
	.incbin "baserom.gba", 0xCC59AC, 0x0002A98

gUnk_08CC8444:: @ 08CC8444
	.incbin "baserom.gba", 0xCC8444, 0x00002BC

gUnk_08CC8700:: @ 08CC8700
	.incbin "baserom.gba", 0xCC8700, 0x0000A80

gUnk_08CC9180:: @ 08CC9180
	.incbin "baserom.gba", 0xCC9180, 0x0000700

gUnk_08CC9880:: @ 08CC9880
	.incbin "baserom.gba", 0xCC9880, 0x00000E7

gUnk_08CC9967:: @ 08CC9967
	.incbin "baserom.gba", 0xCC9967, 0x0001087

gUnk_08CCA9EE:: @ 08CCA9EE
	.incbin "baserom.gba", 0xCCA9EE, 0x0000415

gUnk_08CCAE03:: @ 08CCAE03
	.incbin "baserom.gba", 0xCCAE03, 0x0000151

gUnk_08CCAF54:: @ 08CCAF54
	.incbin "baserom.gba", 0xCCAF54, 0x00008EC

gUnk_08CCB840:: @ 08CCB840
	.incbin "baserom.gba", 0xCCB840, 0x0000248

gUnk_08CCBA88:: @ 08CCBA88
	.incbin "baserom.gba", 0xCCBA88, 0x0000D7F

gUnk_08CCC807:: @ 08CCC807
	.incbin "baserom.gba", 0xCCC807, 0x00004A3

gUnk_08CCCCAA:: @ 08CCCCAA
	.incbin "baserom.gba", 0xCCCCAA, 0x0000002

gUnk_08CCCCAC:: @ 08CCCCAC
	.incbin "baserom.gba", 0xCCCCAC, 0x0000030

gUnk_08CCCCDC:: @ 08CCCCDC
	.incbin "baserom.gba", 0xCCCCDC, 0x0000ABD

gUnk_08CCD799:: @ 08CCD799
	.incbin "baserom.gba", 0xCCD799, 0x0000121

gUnk_08CCD8BA:: @ 08CCD8BA
	.incbin "baserom.gba", 0xCCD8BA, 0x000069E

gUnk_08CCDF58:: @ 08CCDF58
	.incbin "baserom.gba", 0xCCDF58, 0x00001C6

gUnk_08CCE11E:: @ 08CCE11E
	.incbin "baserom.gba", 0xCCE11E, 0x00005DA

gUnk_08CCE6F8:: @ 08CCE6F8
	.incbin "baserom.gba", 0xCCE6F8, 0x00007E3

gUnk_08CCEEDB:: @ 08CCEEDB
	.incbin "baserom.gba", 0xCCEEDB, 0x0000123

gUnk_08CCEFFE:: @ 08CCEFFE
	.incbin "baserom.gba", 0xCCEFFE, 0x0000FFF

gUnk_08CCFFFD:: @ 08CCFFFD
	.incbin "baserom.gba", 0xCCFFFD, 0x0000103

gUnk_08CD0100:: @ 08CD0100
	.incbin "baserom.gba", 0xCD0100, 0x0000280

gUnk_08CD0380:: @ 08CD0380
	.incbin "baserom.gba", 0xCD0380, 0x000010B

gUnk_08CD048B:: @ 08CD048B
	.incbin "baserom.gba", 0xCD048B, 0x0000D0E

gUnk_08CD1199:: @ 08CD1199
	.incbin "baserom.gba", 0xCD1199, 0x0000123

gUnk_08CD12BC:: @ 08CD12BC
	.incbin "baserom.gba", 0xCD12BC, 0x00029F4

gUnk_08CD3CB0:: @ 08CD3CB0
	.incbin "baserom.gba", 0xCD3CB0, 0x0000277

gUnk_08CD3F27:: @ 08CD3F27
	.incbin "baserom.gba", 0xCD3F27, 0x00001A5

gUnk_08CD40CC:: @ 08CD40CC
	.incbin "baserom.gba", 0xCD40CC, 0x0000900

gUnk_08CD49CC:: @ 08CD49CC
	.incbin "baserom.gba", 0xCD49CC, 0x0001D34

gUnk_08CD6700:: @ 08CD6700
	.incbin "baserom.gba", 0xCD6700, 0x0000FE4

gUnk_08CD76E4:: @ 08CD76E4
	.incbin "baserom.gba", 0xCD76E4, 0x000120A

gUnk_08CD88EE:: @ 08CD88EE
	.incbin "baserom.gba", 0xCD88EE, 0x000053E

gUnk_08CD8E2C:: @ 08CD8E2C
	.incbin "baserom.gba", 0xCD8E2C, 0x000179C

gUnk_08CDA5C8:: @ 08CDA5C8
	.incbin "baserom.gba", 0xCDA5C8, 0x00015F4

gUnk_08CDBBBC:: @ 08CDBBBC
	.incbin "baserom.gba", 0xCDBBBC, 0x00000F7

gUnk_08CDBCB3:: @ 08CDBCB3
	.incbin "baserom.gba", 0xCDBCB3, 0x0000019

gUnk_08CDBCCC:: @ 08CDBCCC
	.incbin "baserom.gba", 0xCDBCCC, 0x00007E8

gUnk_08CDC4B4:: @ 08CDC4B4
	.incbin "baserom.gba", 0xCDC4B4, 0x0000826

gUnk_08CDCCDA:: @ 08CDCCDA
	.incbin "baserom.gba", 0xCDCCDA, 0x00001F4

gUnk_08CDCECE:: @ 08CDCECE
	.incbin "baserom.gba", 0xCDCECE, 0x0000246

gUnk_08CDD114:: @ 08CDD114
	.incbin "baserom.gba", 0xCDD114, 0x0000C0C

gUnk_08CDDD20:: @ 08CDDD20
	.incbin "baserom.gba", 0xCDDD20, 0x00000BE

gUnk_08CDDDDE:: @ 08CDDDDE
	.incbin "baserom.gba", 0xCDDDDE, 0x000003A

gUnk_08CDDE18:: @ 08CDDE18
	.incbin "baserom.gba", 0xCDDE18, 0x00008C0

gUnk_08CDE6D8:: @ 08CDE6D8
	.incbin "baserom.gba", 0xCDE6D8, 0x0000714

gUnk_08CDEDEC:: @ 08CDEDEC
	.incbin "baserom.gba", 0xCDEDEC, 0x0000212

gUnk_08CDEFFE:: @ 08CDEFFE
	.incbin "baserom.gba", 0xCDEFFE, 0x00003FB

gUnk_08CDF3F9:: @ 08CDF3F9
	.incbin "baserom.gba", 0xCDF3F9, 0x00007FB

gUnk_08CDFBF4:: @ 08CDFBF4
	.incbin "baserom.gba", 0xCDFBF4, 0x00003EB

gUnk_08CDFFDF:: @ 08CDFFDF
	.incbin "baserom.gba", 0xCDFFDF, 0x000140E

gUnk_08CE13ED:: @ 08CE13ED
	.incbin "baserom.gba", 0xCE13ED, 0x00016B0

gUnk_08CE2A9D:: @ 08CE2A9D
	.incbin "baserom.gba", 0xCE2A9D, 0x0000564

gUnk_08CE3001:: @ 08CE3001
	.incbin "baserom.gba", 0xCE3001, 0x0000222

gUnk_08CE3223:: @ 08CE3223
	.incbin "baserom.gba", 0xCE3223, 0x000050D

gUnk_08CE3730:: @ 08CE3730
	.incbin "baserom.gba", 0xCE3730, 0x0000CB8

gUnk_08CE43E8:: @ 08CE43E8
	.incbin "baserom.gba", 0xCE43E8, 0x0000EC8

gUnk_08CE52B0:: @ 08CE52B0
	.incbin "baserom.gba", 0xCE52B0, 0x0000E04

gUnk_08CE60B4:: @ 08CE60B4
	.incbin "baserom.gba", 0xCE60B4, 0x0001664

gUnk_08CE7718:: @ 08CE7718
	.incbin "baserom.gba", 0xCE7718, 0x0000B34

gUnk_08CE824C:: @ 08CE824C
	.incbin "baserom.gba", 0xCE824C, 0x0001394

gUnk_08CE95E0:: @ 08CE95E0
	.incbin "baserom.gba", 0xCE95E0, 0x0000288

gUnk_08CE9868:: @ 08CE9868
	.incbin "baserom.gba", 0xCE9868, 0x0000747

gUnk_08CE9FAF:: @ 08CE9FAF
	.incbin "baserom.gba", 0xCE9FAF, 0x000154D

gUnk_08CEB4FC:: @ 08CEB4FC
	.incbin "baserom.gba", 0xCEB4FC, 0x00011D1

gUnk_08CEC6CD:: @ 08CEC6CD
	.incbin "baserom.gba", 0xCEC6CD, 0x000043B

gUnk_08CECB08:: @ 08CECB08
	.incbin "baserom.gba", 0xCECB08, 0x00007C8

gUnk_08CED2D0:: @ 08CED2D0
	.incbin "baserom.gba", 0xCED2D0, 0x0000FFC

gUnk_08CEE2CC:: @ 08CEE2CC
	.incbin "baserom.gba", 0xCEE2CC, 0x0000150

gUnk_08CEE41C:: @ 08CEE41C
	.incbin "baserom.gba", 0xCEE41C, 0x00009EC

gUnk_08CEEE08:: @ 08CEEE08
	.incbin "baserom.gba", 0xCEEE08, 0x0000091

gUnk_08CEEE99:: @ 08CEEE99
	.incbin "baserom.gba", 0xCEEE99, 0x00008C7

gUnk_08CEF760:: @ 08CEF760
	.incbin "baserom.gba", 0xCEF760, 0x0000768

gUnk_08CEFEC8:: @ 08CEFEC8
	.incbin "baserom.gba", 0xCEFEC8, 0x0000100

gUnk_08CEFFC8:: @ 08CEFFC8
	.incbin "baserom.gba", 0xCEFFC8, 0x0000037

gUnk_08CEFFFF:: @ 08CEFFFF
	.incbin "baserom.gba", 0xCEFFFF, 0x0000166

gUnk_08CF0165:: @ 08CF0165
	.incbin "baserom.gba", 0xCF0165, 0x0000DBB

gUnk_08CF0F20:: @ 08CF0F20
	.incbin "baserom.gba", 0xCF0F20, 0x0001730

gUnk_08CF2650:: @ 08CF2650
	.incbin "baserom.gba", 0xCF2650, 0x0001020

gUnk_08CF3670:: @ 08CF3670
	.incbin "baserom.gba", 0xCF3670, 0x0001278

gUnk_08CF48E8:: @ 08CF48E8
	.incbin "baserom.gba", 0xCF48E8, 0x0000FD0

gUnk_08CF58B8:: @ 08CF58B8
	.incbin "baserom.gba", 0xCF58B8, 0x00005A4

gUnk_08CF5E5C:: @ 08CF5E5C
	.incbin "baserom.gba", 0xCF5E5C, 0x0001A08

gUnk_08CF7864:: @ 08CF7864
	.incbin "baserom.gba", 0xCF7864, 0x0000F18

gUnk_08CF877C:: @ 08CF877C
	.incbin "baserom.gba", 0xCF877C, 0x0000BC4

gUnk_08CF9340:: @ 08CF9340
	.incbin "baserom.gba", 0xCF9340, 0x00013A4

gUnk_08CFA6E4:: @ 08CFA6E4
	.incbin "baserom.gba", 0xCFA6E4, 0x000051C

gUnk_08CFAC00:: @ 08CFAC00
	.incbin "baserom.gba", 0xCFAC00, 0x00008FC

gUnk_08CFB4FC:: @ 08CFB4FC
	.incbin "baserom.gba", 0xCFB4FC, 0x00009D0

gUnk_08CFBECC:: @ 08CFBECC
	.incbin "baserom.gba", 0xCFBECC, 0x0001360

gUnk_08CFD22C:: @ 08CFD22C
	.incbin "baserom.gba", 0xCFD22C, 0x0000FD0

gUnk_08CFE1FC:: @ 08CFE1FC
	.incbin "baserom.gba", 0xCFE1FC, 0x0000627

gUnk_08CFE823:: @ 08CFE823
	.incbin "baserom.gba", 0xCFE823, 0x00007CC

gUnk_08CFEFEF:: @ 08CFEFEF
	.incbin "baserom.gba", 0xCFEFEF, 0x0000E51

gUnk_08CFFE40:: @ 08CFFE40
	.incbin "baserom.gba", 0xCFFE40, 0x0000188

gUnk_08CFFFC8:: @ 08CFFFC8
	.incbin "baserom.gba", 0xCFFFC8, 0x0000037

gUnk_08CFFFFF:: @ 08CFFFFF
	.incbin "baserom.gba", 0xCFFFFF, 0x0000001

gUnk_08D00000:: @ 08D00000
	.incbin "baserom.gba", 0xD00000, 0x0000BD0

gUnk_08D00BD0:: @ 08D00BD0
	.incbin "baserom.gba", 0xD00BD0, 0x0000045

gUnk_08D00C15:: @ 08D00C15
	.incbin "baserom.gba", 0xD00C15, 0x0000100

gUnk_08D00D15:: @ 08D00D15
	.incbin "baserom.gba", 0xD00D15, 0x0000A7B

gUnk_08D01790:: @ 08D01790
	.incbin "baserom.gba", 0xD01790, 0x0001770

gUnk_08D02F00:: @ 08D02F00
	.incbin "baserom.gba", 0xD02F00, 0x0000328

gUnk_08D03228:: @ 08D03228
	.incbin "baserom.gba", 0xD03228, 0x0000200

gUnk_08D03428:: @ 08D03428
	.incbin "baserom.gba", 0xD03428, 0x00000C2

gUnk_08D034EA:: @ 08D034EA
	.incbin "baserom.gba", 0xD034EA, 0x000060A

gUnk_08D03AF4:: @ 08D03AF4
	.incbin "baserom.gba", 0xD03AF4, 0x0000840

gUnk_08D04334:: @ 08D04334
	.incbin "baserom.gba", 0xD04334, 0x0000D30

gUnk_08D05064:: @ 08D05064
	.incbin "baserom.gba", 0xD05064, 0x0000C69

gUnk_08D05CCD:: @ 08D05CCD
	.incbin "baserom.gba", 0xD05CCD, 0x0003ACF

gUnk_08D0979C:: @ 08D0979C
	.incbin "baserom.gba", 0xD0979C, 0x000099C

gUnk_08D0A138:: @ 08D0A138
	.incbin "baserom.gba", 0xD0A138, 0x00036E3

gUnk_08D0D81B:: @ 08D0D81B
	.incbin "baserom.gba", 0xD0D81B, 0x0002531

gUnk_08D0FD4C:: @ 08D0FD4C
	.incbin "baserom.gba", 0xD0FD4C, 0x000073F

gUnk_08D1048B:: @ 08D1048B
	.incbin "baserom.gba", 0xD1048B, 0x0001AF5

gUnk_08D11F80:: @ 08D11F80
	.incbin "baserom.gba", 0xD11F80, 0x0004DA0

gUnk_08D16D20:: @ 08D16D20
	.incbin "baserom.gba", 0xD16D20, 0x0003A85

gUnk_08D1A7A5:: @ 08D1A7A5
	.incbin "baserom.gba", 0xD1A7A5, 0x000318F

gUnk_08D1D934:: @ 08D1D934
	.incbin "baserom.gba", 0xD1D934, 0x00027F1

gUnk_08D20125:: @ 08D20125
	.incbin "baserom.gba", 0xD20125, 0x0000573

gUnk_08D20698:: @ 08D20698
	.incbin "baserom.gba", 0xD20698, 0x0003274

gUnk_08D2390C:: @ 08D2390C
	.incbin "baserom.gba", 0xD2390C, 0x0000C88

gUnk_08D24594:: @ 08D24594
	.incbin "baserom.gba", 0xD24594, 0x0001994

gUnk_08D25F28:: @ 08D25F28
	.incbin "baserom.gba", 0xD25F28, 0x0005EA3

gUnk_08D2BDCB:: @ 08D2BDCB
	.incbin "baserom.gba", 0xD2BDCB, 0x0000B1A

gUnk_08D2C8E5:: @ 08D2C8E5
	.incbin "baserom.gba", 0xD2C8E5, 0x00006FE

gUnk_08D2CFE3:: @ 08D2CFE3
	.incbin "baserom.gba", 0xD2CFE3, 0x0000099

gUnk_08D2D07C:: @ 08D2D07C
	.incbin "baserom.gba", 0xD2D07C, 0x00007D0

gUnk_08D2D84C:: @ 08D2D84C
	.incbin "baserom.gba", 0xD2D84C, 0x00016F3

gUnk_08D2EF3F:: @ 08D2EF3F
	.incbin "baserom.gba", 0xD2EF3F, 0x00003F9

gUnk_08D2F338:: @ 08D2F338
	.incbin "baserom.gba", 0xD2F338, 0x00011D0

gUnk_08D30508:: @ 08D30508
	.incbin "baserom.gba", 0xD30508, 0x00009F8

gUnk_08D30F00:: @ 08D30F00
	.incbin "baserom.gba", 0xD30F00, 0x000088C

gUnk_08D3178C:: @ 08D3178C
	.incbin "baserom.gba", 0xD3178C, 0x000042F

gUnk_08D31BBB:: @ 08D31BBB
	.incbin "baserom.gba", 0xD31BBB, 0x0000146

gUnk_08D31D01:: @ 08D31D01
	.incbin "baserom.gba", 0xD31D01, 0x0001743

gUnk_08D33444:: @ 08D33444
	.incbin "baserom.gba", 0xD33444, 0x0000D3C

gUnk_08D34180:: @ 08D34180
	.incbin "baserom.gba", 0xD34180, 0x0002054

gUnk_08D361D4:: @ 08D361D4
	.incbin "baserom.gba", 0xD361D4, 0x0002F04

gUnk_08D390D8:: @ 08D390D8
	.incbin "baserom.gba", 0xD390D8, 0x00016C4

gUnk_08D3A79C:: @ 08D3A79C
	.incbin "baserom.gba", 0xD3A79C, 0x0000A3A

gUnk_08D3B1D6:: @ 08D3B1D6
	.incbin "baserom.gba", 0xD3B1D6, 0x0001EF0

gUnk_08D3D0C6:: @ 08D3D0C6
	.incbin "baserom.gba", 0xD3D0C6, 0x0000146

gUnk_08D3D20C:: @ 08D3D20C
	.incbin "baserom.gba", 0xD3D20C, 0x0000069

gUnk_08D3D275:: @ 08D3D275
	.incbin "baserom.gba", 0xD3D275, 0x00021AB

gUnk_08D3F420:: @ 08D3F420
	.incbin "baserom.gba", 0xD3F420, 0x0000860

gUnk_08D3FC80:: @ 08D3FC80  direct sound wave data ends here
	.incbin "baserom.gba", 0xD3FC80, 0x000028D

gUnk_08D3FF0D:: @ 08D3FF0D
	.incbin "baserom.gba", 0xD3FF0D, 0x0000519

gUnk_08D40426:: @ 08D40426
	.incbin "baserom.gba", 0xD40426, 0x00000C9

gUnk_08D404EF:: @ 08D404EF
	.incbin "baserom.gba", 0xD404EF, 0x0000312

gUnk_08D40801:: @ 08D40801
	.incbin "baserom.gba", 0xD40801, 0x0000D23

gUnk_08D41524:: @ 08D41524
	.incbin "baserom.gba", 0xD41524, 0x0000006

gUnk_08D4152A:: @ 08D4152A
	.incbin "baserom.gba", 0xD4152A, 0x00000BC

gUnk_08D415E6:: @ 08D415E6
	.incbin "baserom.gba", 0xD415E6, 0x000005B

gUnk_08D41641:: @ 08D41641
	.incbin "baserom.gba", 0xD41641, 0x000005F

gUnk_08D416A0:: @ 08D416A0
	.incbin "baserom.gba", 0xD416A0, 0x00000A5

gUnk_08D41745:: @ 08D41745
	.incbin "baserom.gba", 0xD41745, 0x000009F

gUnk_08D417E4:: @ 08D417E4
	.incbin "baserom.gba", 0xD417E4, 0x0000060

gUnk_08D41844:: @ 08D41844 songs start here
	.incbin "baserom.gba", 0xD41844, 0x0000020

gUnk_08D41864:: @ 08D41864
	.incbin "baserom.gba", 0xD41864, 0x000005E

gUnk_08D418C2:: @ 08D418C2
	.incbin "baserom.gba", 0xD418C2, 0x0000032

gUnk_08D418F4:: @ 08D418F4
	.incbin "baserom.gba", 0xD418F4, 0x00000BC

gUnk_08D419B0:: @ 08D419B0
	.incbin "baserom.gba", 0xD419B0, 0x00000BC

gUnk_08D41A6C:: @ 08D41A6C
	.incbin "baserom.gba", 0xD41A6C, 0x0000078

gUnk_08D41AE4:: @ 08D41AE4
	.incbin "baserom.gba", 0xD41AE4, 0x000001C

gUnk_08D41B00:: @ 08D41B00
	.incbin "baserom.gba", 0xD41B00, 0x0000038

gUnk_08D41B38:: @ 08D41B38
	.incbin "baserom.gba", 0xD41B38, 0x0000087

gUnk_08D41BBF:: @ 08D41BBF
	.incbin "baserom.gba", 0xD41BBF, 0x0000055

gUnk_08D41C14:: @ 08D41C14
	.incbin "baserom.gba", 0xD41C14, 0x0000025

gUnk_08D41C39:: @ 08D41C39
	.incbin "baserom.gba", 0xD41C39, 0x0000128

gUnk_08D41D61:: @ 08D41D61
	.incbin "baserom.gba", 0xD41D61, 0x00000B7

gUnk_08D41E18:: @ 08D41E18
	.incbin "baserom.gba", 0xD41E18, 0x0000115

gUnk_08D41F2D:: @ 08D41F2D
	.incbin "baserom.gba", 0xD41F2D, 0x0000078

gUnk_08D41FA5:: @ 08D41FA5
	.incbin "baserom.gba", 0xD41FA5, 0x00000A0

gUnk_08D42045:: @ 08D42045
	.incbin "baserom.gba", 0xD42045, 0x0000004

gUnk_08D42049:: @ 08D42049
	.incbin "baserom.gba", 0xD42049, 0x0000071

gUnk_08D420BA:: @ 08D420BA
	.incbin "baserom.gba", 0xD420BA, 0x000006D

gUnk_08D42127:: @ 08D42127
	.incbin "baserom.gba", 0xD42127, 0x0000055

gUnk_08D4217C:: @ 08D4217C
	.incbin "baserom.gba", 0xD4217C, 0x0000028

gUnk_08D421A4:: @ 08D421A4
	.incbin "baserom.gba", 0xD421A4, 0x0000006

gUnk_08D421AA:: @ 08D421AA
	.incbin "baserom.gba", 0xD421AA, 0x0000120

gUnk_08D422CA:: @ 08D422CA
	.incbin "baserom.gba", 0xD422CA, 0x0000023

gUnk_08D422ED:: @ 08D422ED
	.incbin "baserom.gba", 0xD422ED, 0x0000092

gUnk_08D4237F:: @ 08D4237F
	.incbin "baserom.gba", 0xD4237F, 0x0000074

gUnk_08D423F3:: @ 08D423F3
	.incbin "baserom.gba", 0xD423F3, 0x0000140

gUnk_08D42533:: @ 08D42533
	.incbin "baserom.gba", 0xD42533, 0x0000072

gUnk_08D425A5:: @ 08D425A5
	.incbin "baserom.gba", 0xD425A5, 0x00000AF

gUnk_08D42654:: @ 08D42654
	.incbin "baserom.gba", 0xD42654, 0x000006F

gUnk_08D426C3:: @ 08D426C3
	.incbin "baserom.gba", 0xD426C3, 0x0000071

gUnk_08D42734:: @ 08D42734
	.incbin "baserom.gba", 0xD42734, 0x0000020

gUnk_08D42754:: @ 08D42754
	.incbin "baserom.gba", 0xD42754, 0x0000039

gUnk_08D4278D:: @ 08D4278D
	.incbin "baserom.gba", 0xD4278D, 0x0000075

gUnk_08D42802:: @ 08D42802
	.incbin "baserom.gba", 0xD42802, 0x000009E

gUnk_08D428A0:: @ 08D428A0
	.incbin "baserom.gba", 0xD428A0, 0x0000025

gUnk_08D428C5:: @ 08D428C5
	.incbin "baserom.gba", 0xD428C5, 0x000000E

gUnk_08D428D3:: @ 08D428D3
	.incbin "baserom.gba", 0xD428D3, 0x0000022

gUnk_08D428F5:: @ 08D428F5
	.incbin "baserom.gba", 0xD428F5, 0x0000070

gUnk_08D42965:: @ 08D42965
	.incbin "baserom.gba", 0xD42965, 0x0000004

gUnk_08D42969:: @ 08D42969
	.incbin "baserom.gba", 0xD42969, 0x0000027

gUnk_08D42990:: @ 08D42990
	.incbin "baserom.gba", 0xD42990, 0x000016A

gUnk_08D42AFA:: @ 08D42AFA
	.incbin "baserom.gba", 0xD42AFA, 0x00000DF

gUnk_08D42BD9:: @ 08D42BD9
	.incbin "baserom.gba", 0xD42BD9, 0x0000104

gUnk_08D42CDD:: @ 08D42CDD
	.incbin "baserom.gba", 0xD42CDD, 0x0000063

gUnk_08D42D40:: @ 08D42D40
	.incbin "baserom.gba", 0xD42D40, 0x00000C1

gUnk_08D42E01:: @ 08D42E01
	.incbin "baserom.gba", 0xD42E01, 0x0000048

gUnk_08D42E49:: @ 08D42E49
	.incbin "baserom.gba", 0xD42E49, 0x0000002

gUnk_08D42E4B:: @ 08D42E4B
	.incbin "baserom.gba", 0xD42E4B, 0x00000F5

gUnk_08D42F40:: @ 08D42F40
	.incbin "baserom.gba", 0xD42F40, 0x0000028

gUnk_08D42F68:: @ 08D42F68
	.incbin "baserom.gba", 0xD42F68, 0x000002F

gUnk_08D42F97:: @ 08D42F97
	.incbin "baserom.gba", 0xD42F97, 0x0000085

gUnk_08D4301C:: @ 08D4301C
	.incbin "baserom.gba", 0xD4301C, 0x00000CD

gUnk_08D430E9:: @ 08D430E9
	.incbin "baserom.gba", 0xD430E9, 0x0000097

gUnk_08D43180:: @ 08D43180
	.incbin "baserom.gba", 0xD43180, 0x0000021

gUnk_08D431A1:: @ 08D431A1
	.incbin "baserom.gba", 0xD431A1, 0x0000022

gUnk_08D431C3:: @ 08D431C3
	.incbin "baserom.gba", 0xD431C3, 0x000003A

gUnk_08D431FD:: @ 08D431FD
	.incbin "baserom.gba", 0xD431FD, 0x0000054

gUnk_08D43251:: @ 08D43251
	.incbin "baserom.gba", 0xD43251, 0x0000061

gUnk_08D432B2:: @ 08D432B2
	.incbin "baserom.gba", 0xD432B2, 0x0000015

gUnk_08D432C7:: @ 08D432C7
	.incbin "baserom.gba", 0xD432C7, 0x0000157

gUnk_08D4341E:: @ 08D4341E
	.incbin "baserom.gba", 0xD4341E, 0x0000015

gUnk_08D43433:: @ 08D43433
	.incbin "baserom.gba", 0xD43433, 0x000016F

gUnk_08D435A2:: @ 08D435A2
	.incbin "baserom.gba", 0xD435A2, 0x0000022

gUnk_08D435C4:: @ 08D435C4
	.incbin "baserom.gba", 0xD435C4, 0x0000021

gUnk_08D435E5:: @ 08D435E5
	.incbin "baserom.gba", 0xD435E5, 0x0000018

gUnk_08D435FD:: @ 08D435FD
	.incbin "baserom.gba", 0xD435FD, 0x000002B

gUnk_08D43628:: @ 08D43628
	.incbin "baserom.gba", 0xD43628, 0x0000057

gUnk_08D4367F:: @ 08D4367F
	.incbin "baserom.gba", 0xD4367F, 0x0000083

gUnk_08D43702:: @ 08D43702
	.incbin "baserom.gba", 0xD43702, 0x000003D

gUnk_08D4373F:: @ 08D4373F
	.incbin "baserom.gba", 0xD4373F, 0x00000BD

gUnk_08D437FC:: @ 08D437FC
	.incbin "baserom.gba", 0xD437FC, 0x0000029

gUnk_08D43825:: @ 08D43825
	.incbin "baserom.gba", 0xD43825, 0x00000B7

gUnk_08D438DC:: @ 08D438DC
	.incbin "baserom.gba", 0xD438DC, 0x0000024

gUnk_08D43900:: @ 08D43900
	.incbin "baserom.gba", 0xD43900, 0x000006A

gUnk_08D4396A:: @ 08D4396A
	.incbin "baserom.gba", 0xD4396A, 0x000015C

gUnk_08D43AC6:: @ 08D43AC6
	.incbin "baserom.gba", 0xD43AC6, 0x0000101

gUnk_08D43BC7:: @ 08D43BC7
	.incbin "baserom.gba", 0xD43BC7, 0x0000080

gUnk_08D43C47:: @ 08D43C47
	.incbin "baserom.gba", 0xD43C47, 0x0000079

gUnk_08D43CC0:: @ 08D43CC0
	.incbin "baserom.gba", 0xD43CC0, 0x0000012

gUnk_08D43CD2:: @ 08D43CD2
	.incbin "baserom.gba", 0xD43CD2, 0x0000007

gUnk_08D43CD9:: @ 08D43CD9
	.incbin "baserom.gba", 0xD43CD9, 0x0000022

gUnk_08D43CFB:: @ 08D43CFB
	.incbin "baserom.gba", 0xD43CFB, 0x00000DB

gUnk_08D43DD6:: @ 08D43DD6
	.incbin "baserom.gba", 0xD43DD6, 0x00000F5

gUnk_08D43ECB:: @ 08D43ECB
	.incbin "baserom.gba", 0xD43ECB, 0x0000004

gUnk_08D43ECF:: @ 08D43ECF
	.incbin "baserom.gba", 0xD43ECF, 0x000005A

gUnk_08D43F29:: @ 08D43F29
	.incbin "baserom.gba", 0xD43F29, 0x00001FD

gUnk_08D44126:: @ 08D44126
	.incbin "baserom.gba", 0xD44126, 0x0000041

gUnk_08D44167:: @ 08D44167
	.incbin "baserom.gba", 0xD44167, 0x000001B

gUnk_08D44182:: @ 08D44182
	.incbin "baserom.gba", 0xD44182, 0x000002F

gUnk_08D441B1:: @ 08D441B1
	.incbin "baserom.gba", 0xD441B1, 0x000001B

gUnk_08D441CC:: @ 08D441CC
	.incbin "baserom.gba", 0xD441CC, 0x0000129

gUnk_08D442F5:: @ 08D442F5
	.incbin "baserom.gba", 0xD442F5, 0x0000004

gUnk_08D442F9:: @ 08D442F9
	.incbin "baserom.gba", 0xD442F9, 0x00001AA

gUnk_08D444A3:: @ 08D444A3
	.incbin "baserom.gba", 0xD444A3, 0x0000087

gUnk_08D4452A:: @ 08D4452A
	.incbin "baserom.gba", 0xD4452A, 0x0000106

gUnk_08D44630:: @ 08D44630
	.incbin "baserom.gba", 0xD44630, 0x0000020

gUnk_08D44650:: @ 08D44650
	.incbin "baserom.gba", 0xD44650, 0x0000006

gUnk_08D44656:: @ 08D44656
	.incbin "baserom.gba", 0xD44656, 0x0000033

gUnk_08D44689:: @ 08D44689
	.incbin "baserom.gba", 0xD44689, 0x000002E

gUnk_08D446B7:: @ 08D446B7
	.incbin "baserom.gba", 0xD446B7, 0x00000EF

gUnk_08D447A6:: @ 08D447A6
	.incbin "baserom.gba", 0xD447A6, 0x0000004

gUnk_08D447AA:: @ 08D447AA
	.incbin "baserom.gba", 0xD447AA, 0x000001D

gUnk_08D447C7:: @ 08D447C7
	.incbin "baserom.gba", 0xD447C7, 0x0000070

gUnk_08D44837:: @ 08D44837
	.incbin "baserom.gba", 0xD44837, 0x0000083

gUnk_08D448BA:: @ 08D448BA
	.incbin "baserom.gba", 0xD448BA, 0x00000E1

gUnk_08D4499B:: @ 08D4499B
	.incbin "baserom.gba", 0xD4499B, 0x0000022

gUnk_08D449BD:: @ 08D449BD
	.incbin "baserom.gba", 0xD449BD, 0x0000097

gUnk_08D44A54:: @ 08D44A54
	.incbin "baserom.gba", 0xD44A54, 0x0000140

gUnk_08D44B94:: @ 08D44B94
	.incbin "baserom.gba", 0xD44B94, 0x0000002

gUnk_08D44B96:: @ 08D44B96
	.incbin "baserom.gba", 0xD44B96, 0x00000F0

gUnk_08D44C86:: @ 08D44C86
	.incbin "baserom.gba", 0xD44C86, 0x0000002

gUnk_08D44C88:: @ 08D44C88
	.incbin "baserom.gba", 0xD44C88, 0x000011A

gUnk_08D44DA2:: @ 08D44DA2
	.incbin "baserom.gba", 0xD44DA2, 0x0000020

gUnk_08D44DC2:: @ 08D44DC2
	.incbin "baserom.gba", 0xD44DC2, 0x0000041

gUnk_08D44E03:: @ 08D44E03
	.incbin "baserom.gba", 0xD44E03, 0x0000022

gUnk_08D44E25:: @ 08D44E25
	.incbin "baserom.gba", 0xD44E25, 0x0000097

gUnk_08D44EBC:: @ 08D44EBC
	.incbin "baserom.gba", 0xD44EBC, 0x0000024

gUnk_08D44EE0:: @ 08D44EE0
	.incbin "baserom.gba", 0xD44EE0, 0x000003A

gUnk_08D44F1A:: @ 08D44F1A
	.incbin "baserom.gba", 0xD44F1A, 0x00000C2

gUnk_08D44FDC:: @ 08D44FDC
	.incbin "baserom.gba", 0xD44FDC, 0x0000060

gUnk_08D4503C:: @ 08D4503C
	.incbin "baserom.gba", 0xD4503C, 0x000005B

gUnk_08D45097:: @ 08D45097
	.incbin "baserom.gba", 0xD45097, 0x00000DC

gUnk_08D45173:: @ 08D45173
	.incbin "baserom.gba", 0xD45173, 0x0000106

gUnk_08D45279:: @ 08D45279
	.incbin "baserom.gba", 0xD45279, 0x0000078

gUnk_08D452F1:: @ 08D452F1
	.incbin "baserom.gba", 0xD452F1, 0x0000002

gUnk_08D452F3:: @ 08D452F3
	.incbin "baserom.gba", 0xD452F3, 0x0000066

gUnk_08D45359:: @ 08D45359
	.incbin "baserom.gba", 0xD45359, 0x0000140

gUnk_08D45499:: @ 08D45499
	.incbin "baserom.gba", 0xD45499, 0x000001B

gUnk_08D454B4:: @ 08D454B4
	.incbin "baserom.gba", 0xD454B4, 0x000001C

gUnk_08D454D0:: @ 08D454D0
	.incbin "baserom.gba", 0xD454D0, 0x0000030

gUnk_08D45500:: @ 08D45500
	.incbin "baserom.gba", 0xD45500, 0x0000026

gUnk_08D45526:: @ 08D45526
	.incbin "baserom.gba", 0xD45526, 0x00000FD

gUnk_08D45623:: @ 08D45623
	.incbin "baserom.gba", 0xD45623, 0x00000CD

gUnk_08D456F0:: @ 08D456F0
	.incbin "baserom.gba", 0xD456F0, 0x0000020

gUnk_08D45710:: @ 08D45710
	.incbin "baserom.gba", 0xD45710, 0x00000AD

gUnk_08D457BD:: @ 08D457BD
	.incbin "baserom.gba", 0xD457BD, 0x000004A

gUnk_08D45807:: @ 08D45807
	.incbin "baserom.gba", 0xD45807, 0x0000094

gUnk_08D4589B:: @ 08D4589B
	.incbin "baserom.gba", 0xD4589B, 0x0000046

gUnk_08D458E1:: @ 08D458E1
	.incbin "baserom.gba", 0xD458E1, 0x0000240

gUnk_08D45B21:: @ 08D45B21
	.incbin "baserom.gba", 0xD45B21, 0x000001E

gUnk_08D45B3F:: @ 08D45B3F
	.incbin "baserom.gba", 0xD45B3F, 0x0000032

gUnk_08D45B71:: @ 08D45B71
	.incbin "baserom.gba", 0xD45B71, 0x000001D

gUnk_08D45B8E:: @ 08D45B8E
	.incbin "baserom.gba", 0xD45B8E, 0x000003F

gUnk_08D45BCD:: @ 08D45BCD
	.incbin "baserom.gba", 0xD45BCD, 0x0000060

gUnk_08D45C2D:: @ 08D45C2D
	.incbin "baserom.gba", 0xD45C2D, 0x000000A

gUnk_08D45C37:: @ 08D45C37
	.incbin "baserom.gba", 0xD45C37, 0x0000058

gUnk_08D45C8F:: @ 08D45C8F
	.incbin "baserom.gba", 0xD45C8F, 0x0000026

gUnk_08D45CB5:: @ 08D45CB5
	.incbin "baserom.gba", 0xD45CB5, 0x000001E

gUnk_08D45CD3:: @ 08D45CD3
	.incbin "baserom.gba", 0xD45CD3, 0x00000B8

gUnk_08D45D8B:: @ 08D45D8B
	.incbin "baserom.gba", 0xD45D8B, 0x000004C

gUnk_08D45DD7:: @ 08D45DD7
	.incbin "baserom.gba", 0xD45DD7, 0x0000004

gUnk_08D45DDB:: @ 08D45DDB
	.incbin "baserom.gba", 0xD45DDB, 0x0000022

gUnk_08D45DFD:: @ 08D45DFD
	.incbin "baserom.gba", 0xD45DFD, 0x000001E

gUnk_08D45E1B:: @ 08D45E1B
	.incbin "baserom.gba", 0xD45E1B, 0x000005F

gUnk_08D45E7A:: @ 08D45E7A
	.incbin "baserom.gba", 0xD45E7A, 0x0000004

gUnk_08D45E7E:: @ 08D45E7E
	.incbin "baserom.gba", 0xD45E7E, 0x000004E

gUnk_08D45ECC:: @ 08D45ECC
	.incbin "baserom.gba", 0xD45ECC, 0x0000024

gUnk_08D45EF0:: @ 08D45EF0
	.incbin "baserom.gba", 0xD45EF0, 0x00000A3

gUnk_08D45F93:: @ 08D45F93
	.incbin "baserom.gba", 0xD45F93, 0x00000A7

gUnk_08D4603A:: @ 08D4603A
	.incbin "baserom.gba", 0xD4603A, 0x0000257

gUnk_08D46291:: @ 08D46291
	.incbin "baserom.gba", 0xD46291, 0x0000147

gUnk_08D463D8:: @ 08D463D8
	.incbin "baserom.gba", 0xD463D8, 0x0000078

gUnk_08D46450:: @ 08D46450
	.incbin "baserom.gba", 0xD46450, 0x0000016

gUnk_08D46466:: @ 08D46466
	.incbin "baserom.gba", 0xD46466, 0x00000DD

gUnk_08D46543:: @ 08D46543
	.incbin "baserom.gba", 0xD46543, 0x00000B1

gUnk_08D465F4:: @ 08D465F4
	.incbin "baserom.gba", 0xD465F4, 0x0000048

gUnk_08D4663C:: @ 08D4663C
	.incbin "baserom.gba", 0xD4663C, 0x0000033

gUnk_08D4666F:: @ 08D4666F
	.incbin "baserom.gba", 0xD4666F, 0x00001BA

gUnk_08D46829:: @ 08D46829
	.incbin "baserom.gba", 0xD46829, 0x00001EB

gUnk_08D46A14:: @ 08D46A14
	.incbin "baserom.gba", 0xD46A14, 0x0000305

gUnk_08D46D19:: @ 08D46D19
	.incbin "baserom.gba", 0xD46D19, 0x0000397

gUnk_08D470B0:: @ 08D470B0
	.incbin "baserom.gba", 0xD470B0, 0x0000020

gUnk_08D470D0:: @ 08D470D0
	.incbin "baserom.gba", 0xD470D0, 0x0000109

gUnk_08D471D9:: @ 08D471D9
	.incbin "baserom.gba", 0xD471D9, 0x0000205

gUnk_08D473DE:: @ 08D473DE
	.incbin "baserom.gba", 0xD473DE, 0x00000F9

gUnk_08D474D7:: @ 08D474D7
	.incbin "baserom.gba", 0xD474D7, 0x0000021

gUnk_08D474F8:: @ 08D474F8
	.incbin "baserom.gba", 0xD474F8, 0x0000021

gUnk_08D47519:: @ 08D47519
	.incbin "baserom.gba", 0xD47519, 0x000001B

gUnk_08D47534:: @ 08D47534
	.incbin "baserom.gba", 0xD47534, 0x0000050

gUnk_08D47584:: @ 08D47584
	.incbin "baserom.gba", 0xD47584, 0x00000C6

gUnk_08D4764A:: @ 08D4764A
	.incbin "baserom.gba", 0xD4764A, 0x00000BE

gUnk_08D47708:: @ 08D47708
	.incbin "baserom.gba", 0xD47708, 0x0000115

gUnk_08D4781D:: @ 08D4781D
	.incbin "baserom.gba", 0xD4781D, 0x000000D

gUnk_08D4782A:: @ 08D4782A
	.incbin "baserom.gba", 0xD4782A, 0x0000090

gUnk_08D478BA:: @ 08D478BA
	.incbin "baserom.gba", 0xD478BA, 0x0000289

gUnk_08D47B43:: @ 08D47B43
	.incbin "baserom.gba", 0xD47B43, 0x000000D

gUnk_08D47B50:: @ 08D47B50
	.incbin "baserom.gba", 0xD47B50, 0x000009A

gUnk_08D47BEA:: @ 08D47BEA
	.incbin "baserom.gba", 0xD47BEA, 0x0000003

gUnk_08D47BED:: @ 08D47BED
	.incbin "baserom.gba", 0xD47BED, 0x000010B

gUnk_08D47CF8:: @ 08D47CF8
	.incbin "baserom.gba", 0xD47CF8, 0x0000024

gUnk_08D47D1C:: @ 08D47D1C
	.incbin "baserom.gba", 0xD47D1C, 0x00000CD

gUnk_08D47DE9:: @ 08D47DE9
	.incbin "baserom.gba", 0xD47DE9, 0x00000C2

gUnk_08D47EAB:: @ 08D47EAB
	.incbin "baserom.gba", 0xD47EAB, 0x0000078

gUnk_08D47F23:: @ 08D47F23
	.incbin "baserom.gba", 0xD47F23, 0x0000015

gUnk_08D47F38:: @ 08D47F38
	.incbin "baserom.gba", 0xD47F38, 0x0000029

gUnk_08D47F61:: @ 08D47F61
	.incbin "baserom.gba", 0xD47F61, 0x000001E

gUnk_08D47F7F:: @ 08D47F7F
	.incbin "baserom.gba", 0xD47F7F, 0x0000015

gUnk_08D47F94:: @ 08D47F94
	.incbin "baserom.gba", 0xD47F94, 0x0000029

gUnk_08D47FBD:: @ 08D47FBD
	.incbin "baserom.gba", 0xD47FBD, 0x000001E

gUnk_08D47FDB:: @ 08D47FDB
	.incbin "baserom.gba", 0xD47FDB, 0x0000024

gUnk_08D47FFF:: @ 08D47FFF
	.incbin "baserom.gba", 0xD47FFF, 0x0000046

gUnk_08D48045:: @ 08D48045
	.incbin "baserom.gba", 0xD48045, 0x000005E

gUnk_08D480A3:: @ 08D480A3
	.incbin "baserom.gba", 0xD480A3, 0x0000038

gUnk_08D480DB:: @ 08D480DB
	.incbin "baserom.gba", 0xD480DB, 0x0000010

gUnk_08D480EB:: @ 08D480EB
	.incbin "baserom.gba", 0xD480EB, 0x0000035

gUnk_08D48120:: @ 08D48120
	.incbin "baserom.gba", 0xD48120, 0x0000024

gUnk_08D48144:: @ 08D48144
	.incbin "baserom.gba", 0xD48144, 0x0000099

gUnk_08D481DD:: @ 08D481DD
	.incbin "baserom.gba", 0xD481DD, 0x0000074

gUnk_08D48251:: @ 08D48251
	.incbin "baserom.gba", 0xD48251, 0x000021B

gUnk_08D4846C:: @ 08D4846C
	.incbin "baserom.gba", 0xD4846C, 0x0000078

gUnk_08D484E4:: @ 08D484E4
	.incbin "baserom.gba", 0xD484E4, 0x000001A

gUnk_08D484FE:: @ 08D484FE
	.incbin "baserom.gba", 0xD484FE, 0x0000059

gUnk_08D48557:: @ 08D48557
	.incbin "baserom.gba", 0xD48557, 0x0000091

gUnk_08D485E8:: @ 08D485E8
	.incbin "baserom.gba", 0xD485E8, 0x0000165

gUnk_08D4874D:: @ 08D4874D
	.incbin "baserom.gba", 0xD4874D, 0x00000A9

gUnk_08D487F6:: @ 08D487F6
	.incbin "baserom.gba", 0xD487F6, 0x0000007

gUnk_08D487FD:: @ 08D487FD
	.incbin "baserom.gba", 0xD487FD, 0x00000A1

gUnk_08D4889E:: @ 08D4889E
	.incbin "baserom.gba", 0xD4889E, 0x000008B

gUnk_08D48929:: @ 08D48929
	.incbin "baserom.gba", 0xD48929, 0x000005B

gUnk_08D48984:: @ 08D48984
	.incbin "baserom.gba", 0xD48984, 0x00000E3

gUnk_08D48A67:: @ 08D48A67
	.incbin "baserom.gba", 0xD48A67, 0x00001BA

gUnk_08D48C21:: @ 08D48C21
	.incbin "baserom.gba", 0xD48C21, 0x0000092

gUnk_08D48CB3:: @ 08D48CB3
	.incbin "baserom.gba", 0xD48CB3, 0x0000025

gUnk_08D48CD8:: @ 08D48CD8
	.incbin "baserom.gba", 0xD48CD8, 0x0000034

gUnk_08D48D0C:: @ 08D48D0C
	.incbin "baserom.gba", 0xD48D0C, 0x0000020

gUnk_08D48D2C:: @ 08D48D2C
	.incbin "baserom.gba", 0xD48D2C, 0x0000074

gUnk_08D48DA0:: @ 08D48DA0
	.incbin "baserom.gba", 0xD48DA0, 0x0000020

gUnk_08D48DC0:: @ 08D48DC0
	.incbin "baserom.gba", 0xD48DC0, 0x00000A6

gUnk_08D48E66:: @ 08D48E66
	.incbin "baserom.gba", 0xD48E66, 0x0000138

gUnk_08D48F9E:: @ 08D48F9E
	.incbin "baserom.gba", 0xD48F9E, 0x00000AE

gUnk_08D4904C:: @ 08D4904C
	.incbin "baserom.gba", 0xD4904C, 0x0000043

gUnk_08D4908F:: @ 08D4908F
	.incbin "baserom.gba", 0xD4908F, 0x0000024

gUnk_08D490B3:: @ 08D490B3
	.incbin "baserom.gba", 0xD490B3, 0x000001C

gUnk_08D490CF:: @ 08D490CF
	.incbin "baserom.gba", 0xD490CF, 0x0000089

gUnk_08D49158:: @ 08D49158
	.incbin "baserom.gba", 0xD49158, 0x0000152

gUnk_08D492AA:: @ 08D492AA
	.incbin "baserom.gba", 0xD492AA, 0x0000277

gUnk_08D49521:: @ 08D49521
	.incbin "baserom.gba", 0xD49521, 0x000005B

gUnk_08D4957C:: @ 08D4957C
	.incbin "baserom.gba", 0xD4957C, 0x0000090

gUnk_08D4960C:: @ 08D4960C
	.incbin "baserom.gba", 0xD4960C, 0x000030B

gUnk_08D49917:: @ 08D49917
	.incbin "baserom.gba", 0xD49917, 0x000000E

gUnk_08D49925:: @ 08D49925
	.incbin "baserom.gba", 0xD49925, 0x00000E6

gUnk_08D49A0B:: @ 08D49A0B
	.incbin "baserom.gba", 0xD49A0B, 0x00000C9

gUnk_08D49AD4:: @ 08D49AD4
	.incbin "baserom.gba", 0xD49AD4, 0x000001C

gUnk_08D49AF0:: @ 08D49AF0
	.incbin "baserom.gba", 0xD49AF0, 0x0000091

gUnk_08D49B81:: @ 08D49B81
	.incbin "baserom.gba", 0xD49B81, 0x000021F

gUnk_08D49DA0:: @ 08D49DA0
	.incbin "baserom.gba", 0xD49DA0, 0x000008D

gUnk_08D49E2D:: @ 08D49E2D
	.incbin "baserom.gba", 0xD49E2D, 0x00000EF

gUnk_08D49F1C:: @ 08D49F1C
	.incbin "baserom.gba", 0xD49F1C, 0x00000C6

gUnk_08D49FE2:: @ 08D49FE2
	.incbin "baserom.gba", 0xD49FE2, 0x00001B3

gUnk_08D4A195:: @ 08D4A195
	.incbin "baserom.gba", 0xD4A195, 0x0000098

gUnk_08D4A22D:: @ 08D4A22D
	.incbin "baserom.gba", 0xD4A22D, 0x00000C1

gUnk_08D4A2EE:: @ 08D4A2EE
	.incbin "baserom.gba", 0xD4A2EE, 0x000009F

gUnk_08D4A38D:: @ 08D4A38D
	.incbin "baserom.gba", 0xD4A38D, 0x00002B2

gUnk_08D4A63F:: @ 08D4A63F
	.incbin "baserom.gba", 0xD4A63F, 0x00002D9

gUnk_08D4A918:: @ 08D4A918
	.incbin "baserom.gba", 0xD4A918, 0x000001C

gUnk_08D4A934:: @ 08D4A934
	.incbin "baserom.gba", 0xD4A934, 0x00000D9

gUnk_08D4AA0D:: @ 08D4AA0D
	.incbin "baserom.gba", 0xD4AA0D, 0x000023A

gUnk_08D4AC47:: @ 08D4AC47
	.incbin "baserom.gba", 0xD4AC47, 0x000007A

gUnk_08D4ACC1:: @ 08D4ACC1
	.incbin "baserom.gba", 0xD4ACC1, 0x0000028

gUnk_08D4ACE9:: @ 08D4ACE9
	.incbin "baserom.gba", 0xD4ACE9, 0x0000082

gUnk_08D4AD6B:: @ 08D4AD6B
	.incbin "baserom.gba", 0xD4AD6B, 0x0000194

gUnk_08D4AEFF:: @ 08D4AEFF
	.incbin "baserom.gba", 0xD4AEFF, 0x0000054

gUnk_08D4AF53:: @ 08D4AF53
	.incbin "baserom.gba", 0xD4AF53, 0x00001D3

gUnk_08D4B126:: @ 08D4B126
	.incbin "baserom.gba", 0xD4B126, 0x0000080

gUnk_08D4B1A6:: @ 08D4B1A6
	.incbin "baserom.gba", 0xD4B1A6, 0x0000093

gUnk_08D4B239:: @ 08D4B239
	.incbin "baserom.gba", 0xD4B239, 0x000006D

gUnk_08D4B2A6:: @ 08D4B2A6
	.incbin "baserom.gba", 0xD4B2A6, 0x00000D6

gUnk_08D4B37C:: @ 08D4B37C
	.incbin "baserom.gba", 0xD4B37C, 0x0000063

gUnk_08D4B3DF:: @ 08D4B3DF
	.incbin "baserom.gba", 0xD4B3DF, 0x0000058

gUnk_08D4B437:: @ 08D4B437
	.incbin "baserom.gba", 0xD4B437, 0x00000B6

gUnk_08D4B4ED:: @ 08D4B4ED
	.incbin "baserom.gba", 0xD4B4ED, 0x0000076

gUnk_08D4B563:: @ 08D4B563
	.incbin "baserom.gba", 0xD4B563, 0x00002F5

gUnk_08D4B858:: @ 08D4B858
	.incbin "baserom.gba", 0xD4B858, 0x0000020

gUnk_08D4B878:: @ 08D4B878
	.incbin "baserom.gba", 0xD4B878, 0x0000035

gUnk_08D4B8AD:: @ 08D4B8AD
	.incbin "baserom.gba", 0xD4B8AD, 0x00000BE

gUnk_08D4B96B:: @ 08D4B96B
	.incbin "baserom.gba", 0xD4B96B, 0x0000077

gUnk_08D4B9E2:: @ 08D4B9E2
	.incbin "baserom.gba", 0xD4B9E2, 0x0000031

gUnk_08D4BA13:: @ 08D4BA13
	.incbin "baserom.gba", 0xD4BA13, 0x00000D5

gUnk_08D4BAE8:: @ 08D4BAE8
	.incbin "baserom.gba", 0xD4BAE8, 0x00000A5

gUnk_08D4BB8D:: @ 08D4BB8D
	.incbin "baserom.gba", 0xD4BB8D, 0x0000048

gUnk_08D4BBD5:: @ 08D4BBD5
	.incbin "baserom.gba", 0xD4BBD5, 0x0000177

gUnk_08D4BD4C:: @ 08D4BD4C
	.incbin "baserom.gba", 0xD4BD4C, 0x0000058

gUnk_08D4BDA4:: @ 08D4BDA4
	.incbin "baserom.gba", 0xD4BDA4, 0x000003D

gUnk_08D4BDE1:: @ 08D4BDE1
	.incbin "baserom.gba", 0xD4BDE1, 0x000014E

gUnk_08D4BF2F:: @ 08D4BF2F
	.incbin "baserom.gba", 0xD4BF2F, 0x0000198

gUnk_08D4C0C7:: @ 08D4C0C7
	.incbin "baserom.gba", 0xD4C0C7, 0x00000EB

gUnk_08D4C1B2:: @ 08D4C1B2
	.incbin "baserom.gba", 0xD4C1B2, 0x0000116

gUnk_08D4C2C8:: @ 08D4C2C8
	.incbin "baserom.gba", 0xD4C2C8, 0x0000188

gUnk_08D4C450:: @ 08D4C450
	.incbin "baserom.gba", 0xD4C450, 0x0000155

gUnk_08D4C5A5:: @ 08D4C5A5
	.incbin "baserom.gba", 0xD4C5A5, 0x000017A

gUnk_08D4C71F:: @ 08D4C71F
	.incbin "baserom.gba", 0xD4C71F, 0x00000F9

gUnk_08D4C818:: @ 08D4C818
	.incbin "baserom.gba", 0xD4C818, 0x000002C

gUnk_08D4C844:: @ 08D4C844
	.incbin "baserom.gba", 0xD4C844, 0x0000028

gUnk_08D4C86C:: @ 08D4C86C
	.incbin "baserom.gba", 0xD4C86C, 0x0000021

gUnk_08D4C88D:: @ 08D4C88D
	.incbin "baserom.gba", 0xD4C88D, 0x0000021

gUnk_08D4C8AE:: @ 08D4C8AE
	.incbin "baserom.gba", 0xD4C8AE, 0x0000048

gUnk_08D4C8F6:: @ 08D4C8F6
	.incbin "baserom.gba", 0xD4C8F6, 0x000003E

gUnk_08D4C934:: @ 08D4C934
	.incbin "baserom.gba", 0xD4C934, 0x0000040

gUnk_08D4C974:: @ 08D4C974
	.incbin "baserom.gba", 0xD4C974, 0x0000020

gUnk_08D4C994:: @ 08D4C994
	.incbin "baserom.gba", 0xD4C994, 0x0000031

gUnk_08D4C9C5:: @ 08D4C9C5
	.incbin "baserom.gba", 0xD4C9C5, 0x000002E

gUnk_08D4C9F3:: @ 08D4C9F3
	.incbin "baserom.gba", 0xD4C9F3, 0x000002E

gUnk_08D4CA21:: @ 08D4CA21
	.incbin "baserom.gba", 0xD4CA21, 0x000002F

gUnk_08D4CA50:: @ 08D4CA50
	.incbin "baserom.gba", 0xD4CA50, 0x0000018

gUnk_08D4CA68:: @ 08D4CA68
	.incbin "baserom.gba", 0xD4CA68, 0x0000165

gUnk_08D4CBCD:: @ 08D4CBCD
	.incbin "baserom.gba", 0xD4CBCD, 0x00000F6

gUnk_08D4CCC3:: @ 08D4CCC3
	.incbin "baserom.gba", 0xD4CCC3, 0x000014A

gUnk_08D4CE0D:: @ 08D4CE0D
	.incbin "baserom.gba", 0xD4CE0D, 0x000004F

gUnk_08D4CE5C:: @ 08D4CE5C
	.incbin "baserom.gba", 0xD4CE5C, 0x0000074

gUnk_08D4CED0:: @ 08D4CED0
	.incbin "baserom.gba", 0xD4CED0, 0x0000018

gUnk_08D4CEE8:: @ 08D4CEE8
	.incbin "baserom.gba", 0xD4CEE8, 0x000005F

gUnk_08D4CF47:: @ 08D4CF47
	.incbin "baserom.gba", 0xD4CF47, 0x0000061

gUnk_08D4CFA8:: @ 08D4CFA8
	.incbin "baserom.gba", 0xD4CFA8, 0x0000058

gUnk_08D4D000:: @ 08D4D000
	.incbin "baserom.gba", 0xD4D000, 0x00000F4

gUnk_08D4D0F4:: @ 08D4D0F4
	.incbin "baserom.gba", 0xD4D0F4, 0x0000018

gUnk_08D4D10C:: @ 08D4D10C
	.incbin "baserom.gba", 0xD4D10C, 0x0000036

gUnk_08D4D142:: @ 08D4D142
	.incbin "baserom.gba", 0xD4D142, 0x0000034

gUnk_08D4D176:: @ 08D4D176
	.incbin "baserom.gba", 0xD4D176, 0x0000033

gUnk_08D4D1A9:: @ 08D4D1A9
	.incbin "baserom.gba", 0xD4D1A9, 0x000007F

gUnk_08D4D228:: @ 08D4D228
	.incbin "baserom.gba", 0xD4D228, 0x0000018

gUnk_08D4D240:: @ 08D4D240
	.incbin "baserom.gba", 0xD4D240, 0x0000006

gUnk_08D4D246:: @ 08D4D246
	.incbin "baserom.gba", 0xD4D246, 0x00000B8

gUnk_08D4D2FE:: @ 08D4D2FE
	.incbin "baserom.gba", 0xD4D2FE, 0x000001C

gUnk_08D4D31A:: @ 08D4D31A
	.incbin "baserom.gba", 0xD4D31A, 0x0000022

gUnk_08D4D33C:: @ 08D4D33C
	.incbin "baserom.gba", 0xD4D33C, 0x0000051

gUnk_08D4D38D:: @ 08D4D38D
	.incbin "baserom.gba", 0xD4D38D, 0x0000047

gUnk_08D4D3D4:: @ 08D4D3D4
	.incbin "baserom.gba", 0xD4D3D4, 0x0000047

gUnk_08D4D41B:: @ 08D4D41B
	.incbin "baserom.gba", 0xD4D41B, 0x0000004

gUnk_08D4D41F:: @ 08D4D41F
	.incbin "baserom.gba", 0xD4D41F, 0x000003D

gUnk_08D4D45C:: @ 08D4D45C
	.incbin "baserom.gba", 0xD4D45C, 0x0000020

gUnk_08D4D47C:: @ 08D4D47C
	.incbin "baserom.gba", 0xD4D47C, 0x0000006

gUnk_08D4D482:: @ 08D4D482
	.incbin "baserom.gba", 0xD4D482, 0x0000050

gUnk_08D4D4D2:: @ 08D4D4D2
	.incbin "baserom.gba", 0xD4D4D2, 0x0000068

gUnk_08D4D53A:: @ 08D4D53A
	.incbin "baserom.gba", 0xD4D53A, 0x00000E1

gUnk_08D4D61B:: @ 08D4D61B
	.incbin "baserom.gba", 0xD4D61B, 0x000008D

gUnk_08D4D6A8:: @ 08D4D6A8
	.incbin "baserom.gba", 0xD4D6A8, 0x0000004

gUnk_08D4D6AC:: @ 08D4D6AC
	.incbin "baserom.gba", 0xD4D6AC, 0x000009E

gUnk_08D4D74A:: @ 08D4D74A
	.incbin "baserom.gba", 0xD4D74A, 0x0000025

gUnk_08D4D76F:: @ 08D4D76F
	.incbin "baserom.gba", 0xD4D76F, 0x000006D

gUnk_08D4D7DC:: @ 08D4D7DC
	.incbin "baserom.gba", 0xD4D7DC, 0x0000004

gUnk_08D4D7E0:: @ 08D4D7E0
	.incbin "baserom.gba", 0xD4D7E0, 0x0000021

gUnk_08D4D801:: @ 08D4D801
	.incbin "baserom.gba", 0xD4D801, 0x000006D

gUnk_08D4D86E:: @ 08D4D86E
	.incbin "baserom.gba", 0xD4D86E, 0x0000025

gUnk_08D4D893:: @ 08D4D893
	.incbin "baserom.gba", 0xD4D893, 0x000006D

gUnk_08D4D900:: @ 08D4D900
	.incbin "baserom.gba", 0xD4D900, 0x0000020

gUnk_08D4D920:: @ 08D4D920
	.incbin "baserom.gba", 0xD4D920, 0x000001B

gUnk_08D4D93B:: @ 08D4D93B
	.incbin "baserom.gba", 0xD4D93B, 0x0000032

gUnk_08D4D96D:: @ 08D4D96D
	.incbin "baserom.gba", 0xD4D96D, 0x000005E

gUnk_08D4D9CB:: @ 08D4D9CB
	.incbin "baserom.gba", 0xD4D9CB, 0x0000050

gUnk_08D4DA1B:: @ 08D4DA1B
	.incbin "baserom.gba", 0xD4DA1B, 0x0000076

gUnk_08D4DA91:: @ 08D4DA91
	.incbin "baserom.gba", 0xD4DA91, 0x000002E

gUnk_08D4DABF:: @ 08D4DABF
	.incbin "baserom.gba", 0xD4DABF, 0x0000053

gUnk_08D4DB12:: @ 08D4DB12
	.incbin "baserom.gba", 0xD4DB12, 0x000007A

gUnk_08D4DB8C:: @ 08D4DB8C
	.incbin "baserom.gba", 0xD4DB8C, 0x0000030

gUnk_08D4DBBC:: @ 08D4DBBC
	.incbin "baserom.gba", 0xD4DBBC, 0x0000031

gUnk_08D4DBED:: @ 08D4DBED
	.incbin "baserom.gba", 0xD4DBED, 0x0000063

gUnk_08D4DC50:: @ 08D4DC50
	.incbin "baserom.gba", 0xD4DC50, 0x0000024

gUnk_08D4DC74:: @ 08D4DC74
	.incbin "baserom.gba", 0xD4DC74, 0x00000B0

gUnk_08D4DD24:: @ 08D4DD24
	.incbin "baserom.gba", 0xD4DD24, 0x0000018

gUnk_08D4DD3C:: @ 08D4DD3C
	.incbin "baserom.gba", 0xD4DD3C, 0x000002B

gUnk_08D4DD67:: @ 08D4DD67
	.incbin "baserom.gba", 0xD4DD67, 0x000001F

gUnk_08D4DD86:: @ 08D4DD86
	.incbin "baserom.gba", 0xD4DD86, 0x0000039

gUnk_08D4DDBF:: @ 08D4DDBF
	.incbin "baserom.gba", 0xD4DDBF, 0x0000004

gUnk_08D4DDC3:: @ 08D4DDC3
	.incbin "baserom.gba", 0xD4DDC3, 0x0000069

gUnk_08D4DE2C:: @ 08D4DE2C
	.incbin "baserom.gba", 0xD4DE2C, 0x0000018

gUnk_08D4DE44:: @ 08D4DE44
	.incbin "baserom.gba", 0xD4DE44, 0x0000193

gUnk_08D4DFD7:: @ 08D4DFD7
	.incbin "baserom.gba", 0xD4DFD7, 0x0000089

gUnk_08D4E060:: @ 08D4E060
	.incbin "baserom.gba", 0xD4E060, 0x000011B

gUnk_08D4E17B:: @ 08D4E17B
	.incbin "baserom.gba", 0xD4E17B, 0x00000B6

gUnk_08D4E231:: @ 08D4E231
	.incbin "baserom.gba", 0xD4E231, 0x0000172

gUnk_08D4E3A3:: @ 08D4E3A3
	.incbin "baserom.gba", 0xD4E3A3, 0x0000012

gUnk_08D4E3B5:: @ 08D4E3B5
	.incbin "baserom.gba", 0xD4E3B5, 0x0000027

gUnk_08D4E3DC:: @ 08D4E3DC
	.incbin "baserom.gba", 0xD4E3DC, 0x000001C

gUnk_08D4E3F8:: @ 08D4E3F8
	.incbin "baserom.gba", 0xD4E3F8, 0x000004A

gUnk_08D4E442:: @ 08D4E442
	.incbin "baserom.gba", 0xD4E442, 0x0000207

gUnk_08D4E649:: @ 08D4E649
	.incbin "baserom.gba", 0xD4E649, 0x0000005

gUnk_08D4E64E:: @ 08D4E64E
	.incbin "baserom.gba", 0xD4E64E, 0x00001AC

gUnk_08D4E7FA:: @ 08D4E7FA
	.incbin "baserom.gba", 0xD4E7FA, 0x0000106

gUnk_08D4E900:: @ 08D4E900
	.incbin "baserom.gba", 0xD4E900, 0x0000161

gUnk_08D4EA61:: @ 08D4EA61
	.incbin "baserom.gba", 0xD4EA61, 0x0000003

gUnk_08D4EA64:: @ 08D4EA64
	.incbin "baserom.gba", 0xD4EA64, 0x0000102

gUnk_08D4EB66:: @ 08D4EB66
	.incbin "baserom.gba", 0xD4EB66, 0x00001A1

gUnk_08D4ED07:: @ 08D4ED07
	.incbin "baserom.gba", 0xD4ED07, 0x0000069

gUnk_08D4ED70:: @ 08D4ED70
	.incbin "baserom.gba", 0xD4ED70, 0x0000020

gUnk_08D4ED90:: @ 08D4ED90
	.incbin "baserom.gba", 0xD4ED90, 0x00000B0

gUnk_08D4EE40:: @ 08D4EE40
	.incbin "baserom.gba", 0xD4EE40, 0x00000A2

gUnk_08D4EEE2:: @ 08D4EEE2
	.incbin "baserom.gba", 0xD4EEE2, 0x000009A

gUnk_08D4EF7C:: @ 08D4EF7C
	.incbin "baserom.gba", 0xD4EF7C, 0x0000098

gUnk_08D4F014:: @ 08D4F014
	.incbin "baserom.gba", 0xD4F014, 0x0000018

gUnk_08D4F02C:: @ 08D4F02C
	.incbin "baserom.gba", 0xD4F02C, 0x000001C

gUnk_08D4F048:: @ 08D4F048
	.incbin "baserom.gba", 0xD4F048, 0x000001C

gUnk_08D4F064:: @ 08D4F064
	.incbin "baserom.gba", 0xD4F064, 0x000001E

gUnk_08D4F082:: @ 08D4F082
	.incbin "baserom.gba", 0xD4F082, 0x0000017

gUnk_08D4F099:: @ 08D4F099
	.incbin "baserom.gba", 0xD4F099, 0x0000045

gUnk_08D4F0DE:: @ 08D4F0DE
	.incbin "baserom.gba", 0xD4F0DE, 0x000000E

gUnk_08D4F0EC:: @ 08D4F0EC
	.incbin "baserom.gba", 0xD4F0EC, 0x0000087

gUnk_08D4F173:: @ 08D4F173
	.incbin "baserom.gba", 0xD4F173, 0x0000081

gUnk_08D4F1F4:: @ 08D4F1F4
	.incbin "baserom.gba", 0xD4F1F4, 0x0000028

gUnk_08D4F21C:: @ 08D4F21C
	.incbin "baserom.gba", 0xD4F21C, 0x0000038

gUnk_08D4F254:: @ 08D4F254
	.incbin "baserom.gba", 0xD4F254, 0x000003C

gUnk_08D4F290:: @ 08D4F290
	.incbin "baserom.gba", 0xD4F290, 0x0000038

gUnk_08D4F2C8:: @ 08D4F2C8
	.incbin "baserom.gba", 0xD4F2C8, 0x0000014

gUnk_08D4F2DC:: @ 08D4F2DC
	.incbin "baserom.gba", 0xD4F2DC, 0x0000028

gUnk_08D4F304:: @ 08D4F304
	.incbin "baserom.gba", 0xD4F304, 0x000001D

gUnk_08D4F321:: @ 08D4F321
	.incbin "baserom.gba", 0xD4F321, 0x000001B

gUnk_08D4F33C:: @ 08D4F33C
	.incbin "baserom.gba", 0xD4F33C, 0x000002C

gUnk_08D4F368:: @ 08D4F368
	.incbin "baserom.gba", 0xD4F368, 0x0000018

gUnk_08D4F380:: @ 08D4F380
	.incbin "baserom.gba", 0xD4F380, 0x0000030

gUnk_08D4F3B0:: @ 08D4F3B0
	.incbin "baserom.gba", 0xD4F3B0, 0x0000026

gUnk_08D4F3D6:: @ 08D4F3D6
	.incbin "baserom.gba", 0xD4F3D6, 0x0000026

gUnk_08D4F3FC:: @ 08D4F3FC
	.incbin "baserom.gba", 0xD4F3FC, 0x000003C

gUnk_08D4F438:: @ 08D4F438
	.incbin "baserom.gba", 0xD4F438, 0x0000018

gUnk_08D4F450:: @ 08D4F450
	.incbin "baserom.gba", 0xD4F450, 0x00000A7

gUnk_08D4F4F7:: @ 08D4F4F7
	.incbin "baserom.gba", 0xD4F4F7, 0x0000145

gUnk_08D4F63C:: @ 08D4F63C
	.incbin "baserom.gba", 0xD4F63C, 0x00000A1

gUnk_08D4F6DD:: @ 08D4F6DD
	.incbin "baserom.gba", 0xD4F6DD, 0x000011F

gUnk_08D4F7FC:: @ 08D4F7FC
	.incbin "baserom.gba", 0xD4F7FC, 0x0000299

gUnk_08D4FA95:: @ 08D4FA95
	.incbin "baserom.gba", 0xD4FA95, 0x0000171

gUnk_08D4FC06:: @ 08D4FC06
	.incbin "baserom.gba", 0xD4FC06, 0x00000B9

gUnk_08D4FCBF:: @ 08D4FCBF
	.incbin "baserom.gba", 0xD4FCBF, 0x0000008

gUnk_08D4FCC7:: @ 08D4FCC7
	.incbin "baserom.gba", 0xD4FCC7, 0x0000034

gUnk_08D4FCFB:: @ 08D4FCFB
	.incbin "baserom.gba", 0xD4FCFB, 0x0000147

gUnk_08D4FE42:: @ 08D4FE42
	.incbin "baserom.gba", 0xD4FE42, 0x000002F

gUnk_08D4FE71:: @ 08D4FE71
	.incbin "baserom.gba", 0xD4FE71, 0x000025F

gUnk_08D500D0:: @ 08D500D0
	.incbin "baserom.gba", 0xD500D0, 0x0000020

gUnk_08D500F0:: @ 08D500F0
	.incbin "baserom.gba", 0xD500F0, 0x000002B

gUnk_08D5011B:: @ 08D5011B
	.incbin "baserom.gba", 0xD5011B, 0x0000027

gUnk_08D50142:: @ 08D50142
	.incbin "baserom.gba", 0xD50142, 0x0000026

gUnk_08D50168:: @ 08D50168
	.incbin "baserom.gba", 0xD50168, 0x0000026

gUnk_08D5018E:: @ 08D5018E
	.incbin "baserom.gba", 0xD5018E, 0x0000042

gUnk_08D501D0:: @ 08D501D0
	.incbin "baserom.gba", 0xD501D0, 0x000001C

gUnk_08D501EC:: @ 08D501EC
	.incbin "baserom.gba", 0xD501EC, 0x0000021

gUnk_08D5020D:: @ 08D5020D
	.incbin "baserom.gba", 0xD5020D, 0x0000017

gUnk_08D50224:: @ 08D50224
	.incbin "baserom.gba", 0xD50224, 0x0000016

gUnk_08D5023A:: @ 08D5023A
	.incbin "baserom.gba", 0xD5023A, 0x0000080

gUnk_08D502BA:: @ 08D502BA
	.incbin "baserom.gba", 0xD502BA, 0x0000020

gUnk_08D502DA:: @ 08D502DA
	.incbin "baserom.gba", 0xD502DA, 0x0000018

gUnk_08D502F2:: @ 08D502F2
	.incbin "baserom.gba", 0xD502F2, 0x0000018

gUnk_08D5030A:: @ 08D5030A
	.incbin "baserom.gba", 0xD5030A, 0x0000094

gUnk_08D5039E:: @ 08D5039E
	.incbin "baserom.gba", 0xD5039E, 0x0000020

gUnk_08D503BE:: @ 08D503BE
	.incbin "baserom.gba", 0xD503BE, 0x0000018

gUnk_08D503D6:: @ 08D503D6
	.incbin "baserom.gba", 0xD503D6, 0x0000019

gUnk_08D503EF:: @ 08D503EF
	.incbin "baserom.gba", 0xD503EF, 0x00000A9

gUnk_08D50498:: @ 08D50498
	.incbin "baserom.gba", 0xD50498, 0x0000014

gUnk_08D504AC:: @ 08D504AC
	.incbin "baserom.gba", 0xD504AC, 0x00000D3

gUnk_08D5057F:: @ 08D5057F
	.incbin "baserom.gba", 0xD5057F, 0x0000009

gUnk_08D50588:: @ 08D50588
	.incbin "baserom.gba", 0xD50588, 0x0000079

gUnk_08D50601:: @ 08D50601
	.incbin "baserom.gba", 0xD50601, 0x0000061

gUnk_08D50662:: @ 08D50662
	.incbin "baserom.gba", 0xD50662, 0x0000003

gUnk_08D50665:: @ 08D50665
	.incbin "baserom.gba", 0xD50665, 0x000005C

gUnk_08D506C1:: @ 08D506C1
	.incbin "baserom.gba", 0xD506C1, 0x000009F

gUnk_08D50760:: @ 08D50760
	.incbin "baserom.gba", 0xD50760, 0x000001C

gUnk_08D5077C:: @ 08D5077C
	.incbin "baserom.gba", 0xD5077C, 0x0000024

gUnk_08D507A0:: @ 08D507A0
	.incbin "baserom.gba", 0xD507A0, 0x0000024

gUnk_08D507C4:: @ 08D507C4
	.incbin "baserom.gba", 0xD507C4, 0x0000024

gUnk_08D507E8:: @ 08D507E8
	.incbin "baserom.gba", 0xD507E8, 0x0000021

gUnk_08D50809:: @ 08D50809
	.incbin "baserom.gba", 0xD50809, 0x0000040

gUnk_08D50849:: @ 08D50849
	.incbin "baserom.gba", 0xD50849, 0x0000023

gUnk_08D5086C:: @ 08D5086C
	.incbin "baserom.gba", 0xD5086C, 0x0000020

gUnk_08D5088C:: @ 08D5088C
	.incbin "baserom.gba", 0xD5088C, 0x000021F

gUnk_08D50AAB:: @ 08D50AAB
	.incbin "baserom.gba", 0xD50AAB, 0x0000047

gUnk_08D50AF2:: @ 08D50AF2
	.incbin "baserom.gba", 0xD50AF2, 0x0000014

gUnk_08D50B06:: @ 08D50B06
	.incbin "baserom.gba", 0xD50B06, 0x00000C0

gUnk_08D50BC6:: @ 08D50BC6
	.incbin "baserom.gba", 0xD50BC6, 0x00000B6

gUnk_08D50C7C:: @ 08D50C7C
	.incbin "baserom.gba", 0xD50C7C, 0x0000015

gUnk_08D50C91:: @ 08D50C91
	.incbin "baserom.gba", 0xD50C91, 0x000015D

gUnk_08D50DEE:: @ 08D50DEE
	.incbin "baserom.gba", 0xD50DEE, 0x000003A

gUnk_08D50E28:: @ 08D50E28
	.incbin "baserom.gba", 0xD50E28, 0x000001C

gUnk_08D50E44:: @ 08D50E44
	.incbin "baserom.gba", 0xD50E44, 0x000003B

gUnk_08D50E7F:: @ 08D50E7F
	.incbin "baserom.gba", 0xD50E7F, 0x000006E

gUnk_08D50EED:: @ 08D50EED
	.incbin "baserom.gba", 0xD50EED, 0x0000037

gUnk_08D50F24:: @ 08D50F24
	.incbin "baserom.gba", 0xD50F24, 0x000010B

gUnk_08D5102F:: @ 08D5102F
	.incbin "baserom.gba", 0xD5102F, 0x00000A2

gUnk_08D510D1:: @ 08D510D1
	.incbin "baserom.gba", 0xD510D1, 0x0000100

gUnk_08D511D1:: @ 08D511D1
	.incbin "baserom.gba", 0xD511D1, 0x00002AB

gUnk_08D5147C:: @ 08D5147C
	.incbin "baserom.gba", 0xD5147C, 0x0000061

gUnk_08D514DD:: @ 08D514DD
	.incbin "baserom.gba", 0xD514DD, 0x00001CC

gUnk_08D516A9:: @ 08D516A9
	.incbin "baserom.gba", 0xD516A9, 0x0000008

gUnk_08D516B1:: @ 08D516B1
	.incbin "baserom.gba", 0xD516B1, 0x0000169

gUnk_08D5181A:: @ 08D5181A
	.incbin "baserom.gba", 0xD5181A, 0x000003C

gUnk_08D51856:: @ 08D51856
	.incbin "baserom.gba", 0xD51856, 0x0000260

gUnk_08D51AB6:: @ 08D51AB6
	.incbin "baserom.gba", 0xD51AB6, 0x000014E

gUnk_08D51C04:: @ 08D51C04
	.incbin "baserom.gba", 0xD51C04, 0x0000024

gUnk_08D51C28:: @ 08D51C28
	.incbin "baserom.gba", 0xD51C28, 0x0000089

gUnk_08D51CB1:: @ 08D51CB1
	.incbin "baserom.gba", 0xD51CB1, 0x000003B

gUnk_08D51CEC:: @ 08D51CEC
	.incbin "baserom.gba", 0xD51CEC, 0x000002A

gUnk_08D51D16:: @ 08D51D16
	.incbin "baserom.gba", 0xD51D16, 0x0000054

gUnk_08D51D6A:: @ 08D51D6A
	.incbin "baserom.gba", 0xD51D6A, 0x0000042

gUnk_08D51DAC:: @ 08D51DAC
	.incbin "baserom.gba", 0xD51DAC, 0x0000046

gUnk_08D51DF2:: @ 08D51DF2
	.incbin "baserom.gba", 0xD51DF2, 0x0000004

gUnk_08D51DF6:: @ 08D51DF6
	.incbin "baserom.gba", 0xD51DF6, 0x0000066

gUnk_08D51E5C:: @ 08D51E5C
	.incbin "baserom.gba", 0xD51E5C, 0x0000024

gUnk_08D51E80:: @ 08D51E80
	.incbin "baserom.gba", 0xD51E80, 0x0000039

gUnk_08D51EB9:: @ 08D51EB9
	.incbin "baserom.gba", 0xD51EB9, 0x0000075

gUnk_08D51F2E:: @ 08D51F2E
	.incbin "baserom.gba", 0xD51F2E, 0x000009E

gUnk_08D51FCC:: @ 08D51FCC
	.incbin "baserom.gba", 0xD51FCC, 0x0000004

gUnk_08D51FD0:: @ 08D51FD0
	.incbin "baserom.gba", 0xD51FD0, 0x0000021

gUnk_08D51FF1:: @ 08D51FF1
	.incbin "baserom.gba", 0xD51FF1, 0x0000030

gUnk_08D52021:: @ 08D52021
	.incbin "baserom.gba", 0xD52021, 0x0000079

gUnk_08D5209A:: @ 08D5209A
	.incbin "baserom.gba", 0xD5209A, 0x0000196

gUnk_08D52230:: @ 08D52230
	.incbin "baserom.gba", 0xD52230, 0x00000DF

gUnk_08D5230F:: @ 08D5230F
	.incbin "baserom.gba", 0xD5230F, 0x0000002

gUnk_08D52311:: @ 08D52311
	.incbin "baserom.gba", 0xD52311, 0x0000165

gUnk_08D52476:: @ 08D52476
	.incbin "baserom.gba", 0xD52476, 0x00000DE

gUnk_08D52554:: @ 08D52554
	.incbin "baserom.gba", 0xD52554, 0x0000048

gUnk_08D5259C:: @ 08D5259C
	.incbin "baserom.gba", 0xD5259C, 0x00000F5

gUnk_08D52691:: @ 08D52691
	.incbin "baserom.gba", 0xD52691, 0x00001B0

gUnk_08D52841:: @ 08D52841
	.incbin "baserom.gba", 0xD52841, 0x00000AE

gUnk_08D528EF:: @ 08D528EF
	.incbin "baserom.gba", 0xD528EF, 0x0000016

gUnk_08D52905:: @ 08D52905
	.incbin "baserom.gba", 0xD52905, 0x0000011

gUnk_08D52916:: @ 08D52916
	.incbin "baserom.gba", 0xD52916, 0x0000072

gUnk_08D52988:: @ 08D52988
	.incbin "baserom.gba", 0xD52988, 0x0000034

gUnk_08D529BC:: @ 08D529BC
	.incbin "baserom.gba", 0xD529BC, 0x000003A

gUnk_08D529F6:: @ 08D529F6
	.incbin "baserom.gba", 0xD529F6, 0x00000C2

gUnk_08D52AB8:: @ 08D52AB8
	.incbin "baserom.gba", 0xD52AB8, 0x0000060

gUnk_08D52B18:: @ 08D52B18
	.incbin "baserom.gba", 0xD52B18, 0x000005B

gUnk_08D52B73:: @ 08D52B73
	.incbin "baserom.gba", 0xD52B73, 0x00000F4

gUnk_08D52C67:: @ 08D52C67
	.incbin "baserom.gba", 0xD52C67, 0x000010E

gUnk_08D52D75:: @ 08D52D75
	.incbin "baserom.gba", 0xD52D75, 0x0000078

gUnk_08D52DED:: @ 08D52DED
	.incbin "baserom.gba", 0xD52DED, 0x0000002

gUnk_08D52DEF:: @ 08D52DEF
	.incbin "baserom.gba", 0xD52DEF, 0x0000066

gUnk_08D52E55:: @ 08D52E55
	.incbin "baserom.gba", 0xD52E55, 0x0000159

gUnk_08D52FAE:: @ 08D52FAE
	.incbin "baserom.gba", 0xD52FAE, 0x0000119

gUnk_08D530C7:: @ 08D530C7
	.incbin "baserom.gba", 0xD530C7, 0x0000049

gUnk_08D53110:: @ 08D53110
	.incbin "baserom.gba", 0xD53110, 0x0000024

gUnk_08D53134:: @ 08D53134
	.incbin "baserom.gba", 0xD53134, 0x0000030

gUnk_08D53164:: @ 08D53164
	.incbin "baserom.gba", 0xD53164, 0x0000026

gUnk_08D5318A:: @ 08D5318A
	.incbin "baserom.gba", 0xD5318A, 0x00000FD

gUnk_08D53287:: @ 08D53287
	.incbin "baserom.gba", 0xD53287, 0x00000CD

gUnk_08D53354:: @ 08D53354
	.incbin "baserom.gba", 0xD53354, 0x0000020

gUnk_08D53374:: @ 08D53374
	.incbin "baserom.gba", 0xD53374, 0x000008D

gUnk_08D53401:: @ 08D53401
	.incbin "baserom.gba", 0xD53401, 0x000004F

gUnk_08D53450:: @ 08D53450
	.incbin "baserom.gba", 0xD53450, 0x0000002

gUnk_08D53452:: @ 08D53452
	.incbin "baserom.gba", 0xD53452, 0x00000D8

gUnk_08D5352A:: @ 08D5352A
	.incbin "baserom.gba", 0xD5352A, 0x000013D

gUnk_08D53667:: @ 08D53667
	.incbin "baserom.gba", 0xD53667, 0x00000C8

gUnk_08D5372F:: @ 08D5372F
	.incbin "baserom.gba", 0xD5372F, 0x000003B

gUnk_08D5376A:: @ 08D5376A
	.incbin "baserom.gba", 0xD5376A, 0x000003D

gUnk_08D537A7:: @ 08D537A7
	.incbin "baserom.gba", 0xD537A7, 0x00000CA

gUnk_08D53871:: @ 08D53871
	.incbin "baserom.gba", 0xD53871, 0x0000067

gUnk_08D538D8:: @ 08D538D8
	.incbin "baserom.gba", 0xD538D8, 0x0000026

gUnk_08D538FE:: @ 08D538FE
	.incbin "baserom.gba", 0xD538FE, 0x000005B

gUnk_08D53959:: @ 08D53959
	.incbin "baserom.gba", 0xD53959, 0x000002D

gUnk_08D53986:: @ 08D53986
	.incbin "baserom.gba", 0xD53986, 0x000004E

gUnk_08D539D4:: @ 08D539D4
	.incbin "baserom.gba", 0xD539D4, 0x0000010

gUnk_08D539E4:: @ 08D539E4
	.incbin "baserom.gba", 0xD539E4, 0x000003C

gUnk_08D53A20:: @ 08D53A20
	.incbin "baserom.gba", 0xD53A20, 0x0000026

gUnk_08D53A46:: @ 08D53A46
	.incbin "baserom.gba", 0xD53A46, 0x000001E

gUnk_08D53A64:: @ 08D53A64
	.incbin "baserom.gba", 0xD53A64, 0x000005F

gUnk_08D53AC3:: @ 08D53AC3
	.incbin "baserom.gba", 0xD53AC3, 0x0000028

gUnk_08D53AEB:: @ 08D53AEB
	.incbin "baserom.gba", 0xD53AEB, 0x0000028

gUnk_08D53B13:: @ 08D53B13
	.incbin "baserom.gba", 0xD53B13, 0x00000A0

gUnk_08D53BB3:: @ 08D53BB3
	.incbin "baserom.gba", 0xD53BB3, 0x000029D

gUnk_08D53E50:: @ 08D53E50
	.incbin "baserom.gba", 0xD53E50, 0x0000028

gUnk_08D53E78:: @ 08D53E78
	.incbin "baserom.gba", 0xD53E78, 0x00000A6

gUnk_08D53F1E:: @ 08D53F1E
	.incbin "baserom.gba", 0xD53F1E, 0x0000138

gUnk_08D54056:: @ 08D54056
	.incbin "baserom.gba", 0xD54056, 0x00000AE

gUnk_08D54104:: @ 08D54104
	.incbin "baserom.gba", 0xD54104, 0x0000066

gUnk_08D5416A:: @ 08D5416A
	.incbin "baserom.gba", 0xD5416A, 0x00000B5

gUnk_08D5421F:: @ 08D5421F
	.incbin "baserom.gba", 0xD5421F, 0x00000DB

gUnk_08D542FA:: @ 08D542FA
	.incbin "baserom.gba", 0xD542FA, 0x0000087

gUnk_08D54381:: @ 08D54381
	.incbin "baserom.gba", 0xD54381, 0x0000048

gUnk_08D543C9:: @ 08D543C9
	.incbin "baserom.gba", 0xD543C9, 0x0000038

gUnk_08D54401:: @ 08D54401
	.incbin "baserom.gba", 0xD54401, 0x00001A9

gUnk_08D545AA:: @ 08D545AA
	.incbin "baserom.gba", 0xD545AA, 0x000030D

gUnk_08D548B7:: @ 08D548B7
	.incbin "baserom.gba", 0xD548B7, 0x000000E

gUnk_08D548C5:: @ 08D548C5
	.incbin "baserom.gba", 0xD548C5, 0x00000E6

gUnk_08D549AB:: @ 08D549AB
	.incbin "baserom.gba", 0xD549AB, 0x00000C7

gUnk_08D54A72:: @ 08D54A72
	.incbin "baserom.gba", 0xD54A72, 0x0000059

gUnk_08D54ACB:: @ 08D54ACB
	.incbin "baserom.gba", 0xD54ACB, 0x00000F5

gUnk_08D54BC0:: @ 08D54BC0
	.incbin "baserom.gba", 0xD54BC0, 0x0000020

gUnk_08D54BE0:: @ 08D54BE0
	.incbin "baserom.gba", 0xD54BE0, 0x0000014

gUnk_08D54BF4:: @ 08D54BF4
	.incbin "baserom.gba", 0xD54BF4, 0x000000C

gUnk_08D54C00:: @ 08D54C00
	.incbin "baserom.gba", 0xD54C00, 0x00000F2

gUnk_08D54CF2:: @ 08D54CF2
	.incbin "baserom.gba", 0xD54CF2, 0x000000E

gUnk_08D54D00:: @ 08D54D00
	.incbin "baserom.gba", 0xD54D00, 0x000000C

gUnk_08D54D0C:: @ 08D54D0C
	.incbin "baserom.gba", 0xD54D0C, 0x0000014

gUnk_08D54D20:: @ 08D54D20
	.incbin "baserom.gba", 0xD54D20, 0x000000C

gUnk_08D54D2C:: @ 08D54D2C
	.incbin "baserom.gba", 0xD54D2C, 0x000002A

gUnk_08D54D56:: @ 08D54D56
	.incbin "baserom.gba", 0xD54D56, 0x0000016

gUnk_08D54D6C:: @ 08D54D6C
	.incbin "baserom.gba", 0xD54D6C, 0x0000010

gUnk_08D54D7C:: @ 08D54D7C
	.incbin "baserom.gba", 0xD54D7C, 0x0000028

gUnk_08D54DA4:: @ 08D54DA4
	.incbin "baserom.gba", 0xD54DA4, 0x0000014

gUnk_08D54DB8:: @ 08D54DB8
	.incbin "baserom.gba", 0xD54DB8, 0x0000010

gUnk_08D54DC8:: @ 08D54DC8
	.incbin "baserom.gba", 0xD54DC8, 0x0000018

gUnk_08D54DE0:: @ 08D54DE0
	.incbin "baserom.gba", 0xD54DE0, 0x000000C

gUnk_08D54DEC:: @ 08D54DEC
	.incbin "baserom.gba", 0xD54DEC, 0x0000017

gUnk_08D54E03:: @ 08D54E03
	.incbin "baserom.gba", 0xD54E03, 0x000001B

gUnk_08D54E1E:: @ 08D54E1E
	.incbin "baserom.gba", 0xD54E1E, 0x0000036

gUnk_08D54E54:: @ 08D54E54
	.incbin "baserom.gba", 0xD54E54, 0x0000014

gUnk_08D54E68:: @ 08D54E68
	.incbin "baserom.gba", 0xD54E68, 0x0000018

gUnk_08D54E80:: @ 08D54E80
	.incbin "baserom.gba", 0xD54E80, 0x000002E

gUnk_08D54EAE:: @ 08D54EAE
	.incbin "baserom.gba", 0xD54EAE, 0x000003E

gUnk_08D54EEC:: @ 08D54EEC
	.incbin "baserom.gba", 0xD54EEC, 0x0000014

gUnk_08D54F00:: @ 08D54F00
	.incbin "baserom.gba", 0xD54F00, 0x0000018

gUnk_08D54F18:: @ 08D54F18
	.incbin "baserom.gba", 0xD54F18, 0x000002E

gUnk_08D54F46:: @ 08D54F46
	.incbin "baserom.gba", 0xD54F46, 0x0000012

gUnk_08D54F58:: @ 08D54F58
	.incbin "baserom.gba", 0xD54F58, 0x0000014

gUnk_08D54F6C:: @ 08D54F6C
	.incbin "baserom.gba", 0xD54F6C, 0x0000018

gUnk_08D54F84:: @ 08D54F84
	.incbin "baserom.gba", 0xD54F84, 0x000002C

gUnk_08D54FB0:: @ 08D54FB0
	.incbin "baserom.gba", 0xD54FB0, 0x0000010

gUnk_08D54FC0:: @ 08D54FC0
	.incbin "baserom.gba", 0xD54FC0, 0x0000014

gUnk_08D54FD4:: @ 08D54FD4
	.incbin "baserom.gba", 0xD54FD4, 0x000000C

gUnk_08D54FE0:: @ 08D54FE0
	.incbin "baserom.gba", 0xD54FE0, 0x0000028

gUnk_08D55008:: @ 08D55008
	.incbin "baserom.gba", 0xD55008, 0x000000C

gUnk_08D55014:: @ 08D55014
	.incbin "baserom.gba", 0xD55014, 0x0000028

gUnk_08D5503C:: @ 08D5503C
	.incbin "baserom.gba", 0xD5503C, 0x000000C

gUnk_08D55048:: @ 08D55048
	.incbin "baserom.gba", 0xD55048, 0x0000014

gUnk_08D5505C:: @ 08D5505C
	.incbin "baserom.gba", 0xD5505C, 0x000000C

gUnk_08D55068:: @ 08D55068
	.incbin "baserom.gba", 0xD55068, 0x000001C

gUnk_08D55084:: @ 08D55084
	.incbin "baserom.gba", 0xD55084, 0x000000C

gUnk_08D55090:: @ 08D55090
	.incbin "baserom.gba", 0xD55090, 0x0000014

gUnk_08D550A4:: @ 08D550A4
	.incbin "baserom.gba", 0xD550A4, 0x000000C

gUnk_08D550B0:: @ 08D550B0
	.incbin "baserom.gba", 0xD550B0, 0x000001A

gUnk_08D550CA:: @ 08D550CA
	.incbin "baserom.gba", 0xD550CA, 0x0000016

gUnk_08D550E0:: @ 08D550E0
	.incbin "baserom.gba", 0xD550E0, 0x0000010

gUnk_08D550F0:: @ 08D550F0
	.incbin "baserom.gba", 0xD550F0, 0x0000014

gUnk_08D55104:: @ 08D55104
	.incbin "baserom.gba", 0xD55104, 0x000000C

gUnk_08D55110:: @ 08D55110
	.incbin "baserom.gba", 0xD55110, 0x0000014

gUnk_08D55124:: @ 08D55124
	.incbin "baserom.gba", 0xD55124, 0x000000C

gUnk_08D55130:: @ 08D55130
	.incbin "baserom.gba", 0xD55130, 0x0000018

gUnk_08D55148:: @ 08D55148
	.incbin "baserom.gba", 0xD55148, 0x000002E

gUnk_08D55176:: @ 08D55176
	.incbin "baserom.gba", 0xD55176, 0x000002F

gUnk_08D551A5:: @ 08D551A5
	.incbin "baserom.gba", 0xD551A5, 0x0000067

gUnk_08D5520C:: @ 08D5520C
	.incbin "baserom.gba", 0xD5520C, 0x0000018

gUnk_08D55224:: @ 08D55224
	.incbin "baserom.gba", 0xD55224, 0x00000C8

gUnk_08D552EC:: @ 08D552EC
	.incbin "baserom.gba", 0xD552EC, 0x000000C

gUnk_08D552F8:: @ 08D552F8
	.incbin "baserom.gba", 0xD552F8, 0x0000095

gUnk_08D5538D:: @ 08D5538D
	.incbin "baserom.gba", 0xD5538D, 0x0000016

gUnk_08D553A3:: @ 08D553A3
	.incbin "baserom.gba", 0xD553A3, 0x000002E

gUnk_08D553D1:: @ 08D553D1
	.incbin "baserom.gba", 0xD553D1, 0x000003F

gUnk_08D55410:: @ 08D55410
	.incbin "baserom.gba", 0xD55410, 0x0000018

gUnk_08D55428:: @ 08D55428
	.incbin "baserom.gba", 0xD55428, 0x0000095

gUnk_08D554BD:: @ 08D554BD
	.incbin "baserom.gba", 0xD554BD, 0x0000016

gUnk_08D554D3:: @ 08D554D3
	.incbin "baserom.gba", 0xD554D3, 0x0000031

gUnk_08D55504:: @ 08D55504
	.incbin "baserom.gba", 0xD55504, 0x0000014

gUnk_08D55518:: @ 08D55518
	.incbin "baserom.gba", 0xD55518, 0x0000018

gUnk_08D55530:: @ 08D55530
	.incbin "baserom.gba", 0xD55530, 0x000002E

gUnk_08D5555E:: @ 08D5555E
	.incbin "baserom.gba", 0xD5555E, 0x0000066

gUnk_08D555C4:: @ 08D555C4
	.incbin "baserom.gba", 0xD555C4, 0x0000014

gUnk_08D555D8:: @ 08D555D8
	.incbin "baserom.gba", 0xD555D8, 0x0000034

gUnk_08D5560C:: @ 08D5560C
	.incbin "baserom.gba", 0xD5560C, 0x000000C

gUnk_08D55618:: @ 08D55618
	.incbin "baserom.gba", 0xD55618, 0x000002C

gUnk_08D55644:: @ 08D55644
	.incbin "baserom.gba", 0xD55644, 0x000000C

gUnk_08D55650:: @ 08D55650
	.incbin "baserom.gba", 0xD55650, 0x0000011

gUnk_08D55661:: @ 08D55661
	.incbin "baserom.gba", 0xD55661, 0x0000013

gUnk_08D55674:: @ 08D55674
	.incbin "baserom.gba", 0xD55674, 0x0000010

gUnk_08D55684:: @ 08D55684
	.incbin "baserom.gba", 0xD55684, 0x0000028

gUnk_08D556AC:: @ 08D556AC
	.incbin "baserom.gba", 0xD556AC, 0x000000C

gUnk_08D556B8:: @ 08D556B8
	.incbin "baserom.gba", 0xD556B8, 0x0000040

gUnk_08D556F8:: @ 08D556F8
	.incbin "baserom.gba", 0xD556F8, 0x000000C

gUnk_08D55704:: @ 08D55704
	.incbin "baserom.gba", 0xD55704, 0x000001C

gUnk_08D55720:: @ 08D55720
	.incbin "baserom.gba", 0xD55720, 0x000000C

gUnk_08D5572C:: @ 08D5572C
	.incbin "baserom.gba", 0xD5572C, 0x0000018

gUnk_08D55744:: @ 08D55744
	.incbin "baserom.gba", 0xD55744, 0x000000C

gUnk_08D55750:: @ 08D55750
	.incbin "baserom.gba", 0xD55750, 0x0000070

gUnk_08D557C0:: @ 08D557C0
	.incbin "baserom.gba", 0xD557C0, 0x000000C

gUnk_08D557CC:: @ 08D557CC
	.incbin "baserom.gba", 0xD557CC, 0x0000028

gUnk_08D557F4:: @ 08D557F4
	.incbin "baserom.gba", 0xD557F4, 0x000000C

gUnk_08D55800:: @ 08D55800
	.incbin "baserom.gba", 0xD55800, 0x0000064

gUnk_08D55864:: @ 08D55864
	.incbin "baserom.gba", 0xD55864, 0x000000C

gUnk_08D55870:: @ 08D55870
	.incbin "baserom.gba", 0xD55870, 0x0000048

gUnk_08D558B8:: @ 08D558B8
	.incbin "baserom.gba", 0xD558B8, 0x000000C

gUnk_08D558C4:: @ 08D558C4
	.incbin "baserom.gba", 0xD558C4, 0x00000B0

gUnk_08D55974:: @ 08D55974
	.incbin "baserom.gba", 0xD55974, 0x000000C

gUnk_08D55980:: @ 08D55980
	.incbin "baserom.gba", 0xD55980, 0x000010A

gUnk_08D55A8A:: @ 08D55A8A
	.incbin "baserom.gba", 0xD55A8A, 0x000000E

gUnk_08D55A98:: @ 08D55A98
	.incbin "baserom.gba", 0xD55A98, 0x000000C

gUnk_08D55AA4:: @ 08D55AA4
	.incbin "baserom.gba", 0xD55AA4, 0x0000028

gUnk_08D55ACC:: @ 08D55ACC
	.incbin "baserom.gba", 0xD55ACC, 0x0000023

gUnk_08D55AEF:: @ 08D55AEF
	.incbin "baserom.gba", 0xD55AEF, 0x0000026

gUnk_08D55B15:: @ 08D55B15
	.incbin "baserom.gba", 0xD55B15, 0x0000027

gUnk_08D55B3C:: @ 08D55B3C
	.incbin "baserom.gba", 0xD55B3C, 0x0000018

gUnk_08D55B54:: @ 08D55B54
	.incbin "baserom.gba", 0xD55B54, 0x0000095

gUnk_08D55BE9:: @ 08D55BE9
	.incbin "baserom.gba", 0xD55BE9, 0x0000016

gUnk_08D55BFF:: @ 08D55BFF
	.incbin "baserom.gba", 0xD55BFF, 0x000002E

gUnk_08D55C2D:: @ 08D55C2D
	.incbin "baserom.gba", 0xD55C2D, 0x000003F

gUnk_08D55C6C:: @ 08D55C6C
	.incbin "baserom.gba", 0xD55C6C, 0x0000018

gUnk_08D55C84:: @ 08D55C84
	.incbin "baserom.gba", 0xD55C84, 0x0000034

gUnk_08D55CB8:: @ 08D55CB8
	.incbin "baserom.gba", 0xD55CB8, 0x000000C

gUnk_08D55CC4:: @ 08D55CC4
	.incbin "baserom.gba", 0xD55CC4, 0x0000054

gUnk_08D55D18:: @ 08D55D18
	.incbin "baserom.gba", 0xD55D18, 0x000000C

gUnk_08D55D24:: @ 08D55D24
	.incbin "baserom.gba", 0xD55D24, 0x0000084

gUnk_08D55DA8:: @ 08D55DA8
	.incbin "baserom.gba", 0xD55DA8, 0x000000C

gUnk_08D55DB4:: @ 08D55DB4
	.incbin "baserom.gba", 0xD55DB4, 0x0000049

gUnk_08D55DFD:: @ 08D55DFD
	.incbin "baserom.gba", 0xD55DFD, 0x000000B

gUnk_08D55E08:: @ 08D55E08
	.incbin "baserom.gba", 0xD55E08, 0x000000C

gUnk_08D55E14:: @ 08D55E14
	.incbin "baserom.gba", 0xD55E14, 0x000004C

gUnk_08D55E60:: @ 08D55E60
	.incbin "baserom.gba", 0xD55E60, 0x000000C

gUnk_08D55E6C:: @ 08D55E6C
	.incbin "baserom.gba", 0xD55E6C, 0x0000054

gUnk_08D55EC0:: @ 08D55EC0
	.incbin "baserom.gba", 0xD55EC0, 0x000000C

gUnk_08D55ECC:: @ 08D55ECC
	.incbin "baserom.gba", 0xD55ECC, 0x0000011

gUnk_08D55EDD:: @ 08D55EDD
	.incbin "baserom.gba", 0xD55EDD, 0x0000017

gUnk_08D55EF4:: @ 08D55EF4
	.incbin "baserom.gba", 0xD55EF4, 0x0000010

gUnk_08D55F04:: @ 08D55F04
	.incbin "baserom.gba", 0xD55F04, 0x0000084

gUnk_08D55F88:: @ 08D55F88
	.incbin "baserom.gba", 0xD55F88, 0x000000C

gUnk_08D55F94:: @ 08D55F94
	.incbin "baserom.gba", 0xD55F94, 0x0000020

gUnk_08D55FB4:: @ 08D55FB4
	.incbin "baserom.gba", 0xD55FB4, 0x000001C

gUnk_08D55FD0:: @ 08D55FD0
	.incbin "baserom.gba", 0xD55FD0, 0x0000010

gUnk_08D55FE0:: @ 08D55FE0
	.incbin "baserom.gba", 0xD55FE0, 0x0000038

gUnk_08D56018:: @ 08D56018
	.incbin "baserom.gba", 0xD56018, 0x000000C

gUnk_08D56024:: @ 08D56024
	.incbin "baserom.gba", 0xD56024, 0x0000018

gUnk_08D5603C:: @ 08D5603C
	.incbin "baserom.gba", 0xD5603C, 0x000000C

gUnk_08D56048:: @ 08D56048
	.incbin "baserom.gba", 0xD56048, 0x0000034

gUnk_08D5607C:: @ 08D5607C
	.incbin "baserom.gba", 0xD5607C, 0x000000C

gUnk_08D56088:: @ 08D56088
	.incbin "baserom.gba", 0xD56088, 0x0000018

gUnk_08D560A0:: @ 08D560A0
	.incbin "baserom.gba", 0xD560A0, 0x000000C

gUnk_08D560AC:: @ 08D560AC
	.incbin "baserom.gba", 0xD560AC, 0x0000018

gUnk_08D560C4:: @ 08D560C4
	.incbin "baserom.gba", 0xD560C4, 0x000000C

gUnk_08D560D0:: @ 08D560D0
	.incbin "baserom.gba", 0xD560D0, 0x0000048

gUnk_08D56118:: @ 08D56118
	.incbin "baserom.gba", 0xD56118, 0x000000C

gUnk_08D56124:: @ 08D56124
	.incbin "baserom.gba", 0xD56124, 0x0000014

gUnk_08D56138:: @ 08D56138
	.incbin "baserom.gba", 0xD56138, 0x000000C

gUnk_08D56144:: @ 08D56144
	.incbin "baserom.gba", 0xD56144, 0x0000038

gUnk_08D5617C:: @ 08D5617C
	.incbin "baserom.gba", 0xD5617C, 0x000000C

gUnk_08D56188:: @ 08D56188
	.incbin "baserom.gba", 0xD56188, 0x0000024

gUnk_08D561AC:: @ 08D561AC
	.incbin "baserom.gba", 0xD561AC, 0x000000C

gUnk_08D561B8:: @ 08D561B8
	.incbin "baserom.gba", 0xD561B8, 0x0000014

gUnk_08D561CC:: @ 08D561CC
	.incbin "baserom.gba", 0xD561CC, 0x000000C

gUnk_08D561D8:: @ 08D561D8
	.incbin "baserom.gba", 0xD561D8, 0x0000098

gUnk_08D56270:: @ 08D56270
	.incbin "baserom.gba", 0xD56270, 0x000000C

gUnk_08D5627C:: @ 08D5627C
	.incbin "baserom.gba", 0xD5627C, 0x0000018

gUnk_08D56294:: @ 08D56294
	.incbin "baserom.gba", 0xD56294, 0x000000C

gUnk_08D562A0:: @ 08D562A0
	.incbin "baserom.gba", 0xD562A0, 0x0000094

gUnk_08D56334:: @ 08D56334
	.incbin "baserom.gba", 0xD56334, 0x000000C

gUnk_08D56340:: @ 08D56340
	.incbin "baserom.gba", 0xD56340, 0x0000038

gUnk_08D56378:: @ 08D56378
	.incbin "baserom.gba", 0xD56378, 0x000000C

gUnk_08D56384:: @ 08D56384
	.incbin "baserom.gba", 0xD56384, 0x0000014

gUnk_08D56398:: @ 08D56398
	.incbin "baserom.gba", 0xD56398, 0x000000C

gUnk_08D563A4:: @ 08D563A4
	.incbin "baserom.gba", 0xD563A4, 0x0000014

gUnk_08D563B8:: @ 08D563B8
	.incbin "baserom.gba", 0xD563B8, 0x000000C

gUnk_08D563C4:: @ 08D563C4
	.incbin "baserom.gba", 0xD563C4, 0x0000014

gUnk_08D563D8:: @ 08D563D8
	.incbin "baserom.gba", 0xD563D8, 0x000000C

gUnk_08D563E4:: @ 08D563E4
	.incbin "baserom.gba", 0xD563E4, 0x0000014

gUnk_08D563F8:: @ 08D563F8
	.incbin "baserom.gba", 0xD563F8, 0x000000C

gUnk_08D56404:: @ 08D56404
	.incbin "baserom.gba", 0xD56404, 0x0000030

gUnk_08D56434:: @ 08D56434
	.incbin "baserom.gba", 0xD56434, 0x000000C

gUnk_08D56440:: @ 08D56440
	.incbin "baserom.gba", 0xD56440, 0x0000038

gUnk_08D56478:: @ 08D56478
	.incbin "baserom.gba", 0xD56478, 0x000000C

gUnk_08D56484:: @ 08D56484
	.incbin "baserom.gba", 0xD56484, 0x000009C

gUnk_08D56520:: @ 08D56520
	.incbin "baserom.gba", 0xD56520, 0x000000C

gUnk_08D5652C:: @ 08D5652C
	.incbin "baserom.gba", 0xD5652C, 0x0000038

gUnk_08D56564:: @ 08D56564
	.incbin "baserom.gba", 0xD56564, 0x000000C

gUnk_08D56570:: @ 08D56570
	.incbin "baserom.gba", 0xD56570, 0x0000038

gUnk_08D565A8:: @ 08D565A8
	.incbin "baserom.gba", 0xD565A8, 0x000000C

gUnk_08D565B4:: @ 08D565B4
	.incbin "baserom.gba", 0xD565B4, 0x0000038

gUnk_08D565EC:: @ 08D565EC
	.incbin "baserom.gba", 0xD565EC, 0x000000C

gUnk_08D565F8:: @ 08D565F8
	.incbin "baserom.gba", 0xD565F8, 0x0000038

gUnk_08D56630:: @ 08D56630
	.incbin "baserom.gba", 0xD56630, 0x000000C

gUnk_08D5663C:: @ 08D5663C
	.incbin "baserom.gba", 0xD5663C, 0x000002C

gUnk_08D56668:: @ 08D56668
	.incbin "baserom.gba", 0xD56668, 0x000000C

gUnk_08D56674:: @ 08D56674
	.incbin "baserom.gba", 0xD56674, 0x0000064

gUnk_08D566D8:: @ 08D566D8
	.incbin "baserom.gba", 0xD566D8, 0x000000C

gUnk_08D566E4:: @ 08D566E4
	.incbin "baserom.gba", 0xD566E4, 0x000009C

gUnk_08D56780:: @ 08D56780
	.incbin "baserom.gba", 0xD56780, 0x000000C

gUnk_08D5678C:: @ 08D5678C
	.incbin "baserom.gba", 0xD5678C, 0x00000B0

gUnk_08D5683C:: @ 08D5683C
	.incbin "baserom.gba", 0xD5683C, 0x000000C

gUnk_08D56848:: @ 08D56848
	.incbin "baserom.gba", 0xD56848, 0x000001C

gUnk_08D56864:: @ 08D56864
	.incbin "baserom.gba", 0xD56864, 0x000000C

gUnk_08D56870:: @ 08D56870
	.incbin "baserom.gba", 0xD56870, 0x0000034

gUnk_08D568A4:: @ 08D568A4
	.incbin "baserom.gba", 0xD568A4, 0x000000C

gUnk_08D568B0:: @ 08D568B0
	.incbin "baserom.gba", 0xD568B0, 0x0000068

gUnk_08D56918:: @ 08D56918
	.incbin "baserom.gba", 0xD56918, 0x000000C

gUnk_08D56924:: @ 08D56924
	.incbin "baserom.gba", 0xD56924, 0x0000024

gUnk_08D56948:: @ 08D56948
	.incbin "baserom.gba", 0xD56948, 0x000000C

gUnk_08D56954:: @ 08D56954
	.incbin "baserom.gba", 0xD56954, 0x0000094

gUnk_08D569E8:: @ 08D569E8
	.incbin "baserom.gba", 0xD569E8, 0x000000C

gUnk_08D569F4:: @ 08D569F4
	.incbin "baserom.gba", 0xD569F4, 0x00000C0

gUnk_08D56AB4:: @ 08D56AB4
	.incbin "baserom.gba", 0xD56AB4, 0x000000C

gUnk_08D56AC0:: @ 08D56AC0
	.incbin "baserom.gba", 0xD56AC0, 0x0000030

gUnk_08D56AF0:: @ 08D56AF0
	.incbin "baserom.gba", 0xD56AF0, 0x000000C

gUnk_08D56AFC:: @ 08D56AFC
	.incbin "baserom.gba", 0xD56AFC, 0x0000038

gUnk_08D56B34:: @ 08D56B34
	.incbin "baserom.gba", 0xD56B34, 0x000000C

gUnk_08D56B40:: @ 08D56B40
	.incbin "baserom.gba", 0xD56B40, 0x0000018

gUnk_08D56B58:: @ 08D56B58
	.incbin "baserom.gba", 0xD56B58, 0x000000C

gUnk_08D56B64:: @ 08D56B64
	.incbin "baserom.gba", 0xD56B64, 0x0000020

gUnk_08D56B84:: @ 08D56B84
	.incbin "baserom.gba", 0xD56B84, 0x000000C

gUnk_08D56B90:: @ 08D56B90
	.incbin "baserom.gba", 0xD56B90, 0x0000078

gUnk_08D56C08:: @ 08D56C08
	.incbin "baserom.gba", 0xD56C08, 0x000000C

gUnk_08D56C14:: @ 08D56C14
	.incbin "baserom.gba", 0xD56C14, 0x0000018

gUnk_08D56C2C:: @ 08D56C2C
	.incbin "baserom.gba", 0xD56C2C, 0x000000C

gUnk_08D56C38:: @ 08D56C38
	.incbin "baserom.gba", 0xD56C38, 0x0000018

gUnk_08D56C50:: @ 08D56C50
	.incbin "baserom.gba", 0xD56C50, 0x000000C

gUnk_08D56C5C:: @ 08D56C5C
	.incbin "baserom.gba", 0xD56C5C, 0x0000094

gUnk_08D56CF0:: @ 08D56CF0
	.incbin "baserom.gba", 0xD56CF0, 0x000000C

gUnk_08D56CFC:: @ 08D56CFC
	.incbin "baserom.gba", 0xD56CFC, 0x0000018

gUnk_08D56D14:: @ 08D56D14
	.incbin "baserom.gba", 0xD56D14, 0x000000C

gUnk_08D56D20:: @ 08D56D20
	.incbin "baserom.gba", 0xD56D20, 0x0000014

gUnk_08D56D34:: @ 08D56D34
	.incbin "baserom.gba", 0xD56D34, 0x000000C

gUnk_08D56D40:: @ 08D56D40
	.incbin "baserom.gba", 0xD56D40, 0x0000018

gUnk_08D56D58:: @ 08D56D58
	.incbin "baserom.gba", 0xD56D58, 0x000000C

gUnk_08D56D64:: @ 08D56D64
	.incbin "baserom.gba", 0xD56D64, 0x0000014

gUnk_08D56D78:: @ 08D56D78
	.incbin "baserom.gba", 0xD56D78, 0x000000C

gUnk_08D56D84:: @ 08D56D84
	.incbin "baserom.gba", 0xD56D84, 0x0000014

gUnk_08D56D98:: @ 08D56D98
	.incbin "baserom.gba", 0xD56D98, 0x000000C

gUnk_08D56DA4:: @ 08D56DA4
	.incbin "baserom.gba", 0xD56DA4, 0x000009C

gUnk_08D56E40:: @ 08D56E40
	.incbin "baserom.gba", 0xD56E40, 0x000000C

gUnk_08D56E4C:: @ 08D56E4C
	.incbin "baserom.gba", 0xD56E4C, 0x000009D

gUnk_08D56EE9:: @ 08D56EE9
	.incbin "baserom.gba", 0xD56EE9, 0x0000016

gUnk_08D56EFF:: @ 08D56EFF
	.incbin "baserom.gba", 0xD56EFF, 0x0000031

gUnk_08D56F30:: @ 08D56F30
	.incbin "baserom.gba", 0xD56F30, 0x0000014

gUnk_08D56F44:: @ 08D56F44
	.incbin "baserom.gba", 0xD56F44, 0x0000050

gUnk_08D56F94:: @ 08D56F94
	.incbin "baserom.gba", 0xD56F94, 0x000000C

gUnk_08D56FA0:: @ 08D56FA0
	.incbin "baserom.gba", 0xD56FA0, 0x0000024

gUnk_08D56FC4:: @ 08D56FC4
	.incbin "baserom.gba", 0xD56FC4, 0x000000C

gUnk_08D56FD0:: @ 08D56FD0
	.incbin "baserom.gba", 0xD56FD0, 0x0000014

gUnk_08D56FE4:: @ 08D56FE4
	.incbin "baserom.gba", 0xD56FE4, 0x000000C

gUnk_08D56FF0:: @ 08D56FF0
	.incbin "baserom.gba", 0xD56FF0, 0x0000044

gUnk_08D57034:: @ 08D57034
	.incbin "baserom.gba", 0xD57034, 0x000000C

gUnk_08D57040:: @ 08D57040
	.incbin "baserom.gba", 0xD57040, 0x000009C

gUnk_08D570DC:: @ 08D570DC
	.incbin "baserom.gba", 0xD570DC, 0x000000C

gUnk_08D570E8:: @ 08D570E8
	.incbin "baserom.gba", 0xD570E8, 0x000009C

gUnk_08D57184:: @ 08D57184
	.incbin "baserom.gba", 0xD57184, 0x000000C

gUnk_08D57190:: @ 08D57190
	.incbin "baserom.gba", 0xD57190, 0x0000038

gUnk_08D571C8:: @ 08D571C8
	.incbin "baserom.gba", 0xD571C8, 0x000000C

gUnk_08D571D4:: @ 08D571D4
	.incbin "baserom.gba", 0xD571D4, 0x000002D

gUnk_08D57201:: @ 08D57201
	.incbin "baserom.gba", 0xD57201, 0x000000B

gUnk_08D5720C:: @ 08D5720C
	.incbin "baserom.gba", 0xD5720C, 0x000000C

gUnk_08D57218:: @ 08D57218
	.incbin "baserom.gba", 0xD57218, 0x0000038

gUnk_08D57250:: @ 08D57250
	.incbin "baserom.gba", 0xD57250, 0x000000C

gUnk_08D5725C:: @ 08D5725C
	.incbin "baserom.gba", 0xD5725C, 0x0000074

gUnk_08D572D0:: @ 08D572D0
	.incbin "baserom.gba", 0xD572D0, 0x000000C

gUnk_08D572DC:: @ 08D572DC
	.incbin "baserom.gba", 0xD572DC, 0x000008C

gUnk_08D57368:: @ 08D57368
	.incbin "baserom.gba", 0xD57368, 0x000000C

gUnk_08D57374:: @ 08D57374
	.incbin "baserom.gba", 0xD57374, 0x00000B0

gUnk_08D57424:: @ 08D57424
	.incbin "baserom.gba", 0xD57424, 0x000000C

gUnk_08D57430:: @ 08D57430
	.incbin "baserom.gba", 0xD57430, 0x0000010

gUnk_08D57440:: @ 08D57440
	.incbin "baserom.gba", 0xD57440, 0x000000C

gUnk_08D5744C:: @ 08D5744C
	.incbin "baserom.gba", 0xD5744C, 0x0000094

gUnk_08D574E0:: @ 08D574E0
	.incbin "baserom.gba", 0xD574E0, 0x000000C

gUnk_08D574EC:: @ 08D574EC
	.incbin "baserom.gba", 0xD574EC, 0x00000A0

gUnk_08D5758C:: @ 08D5758C
	.incbin "baserom.gba", 0xD5758C, 0x000000C

gUnk_08D57598:: @ 08D57598
	.incbin "baserom.gba", 0xD57598, 0x0000037

gUnk_08D575CF:: @ 08D575CF
	.incbin "baserom.gba", 0xD575CF, 0x000003E

gUnk_08D5760D:: @ 08D5760D
	.incbin "baserom.gba", 0xD5760D, 0x0000043

gUnk_08D57650:: @ 08D57650
	.incbin "baserom.gba", 0xD57650, 0x0000014

gUnk_08D57664:: @ 08D57664
	.incbin "baserom.gba", 0xD57664, 0x0000014

gUnk_08D57678:: @ 08D57678
	.incbin "baserom.gba", 0xD57678, 0x000000C

gUnk_08D57684:: @ 08D57684
	.incbin "baserom.gba", 0xD57684, 0x0000014

gUnk_08D57698:: @ 08D57698
	.incbin "baserom.gba", 0xD57698, 0x000000C

gUnk_08D576A4:: @ 08D576A4
	.incbin "baserom.gba", 0xD576A4, 0x0000014

gUnk_08D576B8:: @ 08D576B8
	.incbin "baserom.gba", 0xD576B8, 0x000000C

gUnk_08D576C4:: @ 08D576C4
	.incbin "baserom.gba", 0xD576C4, 0x000009C

gUnk_08D57760:: @ 08D57760
	.incbin "baserom.gba", 0xD57760, 0x000000C

gUnk_08D5776C:: @ 08D5776C
	.incbin "baserom.gba", 0xD5776C, 0x0000014

gUnk_08D57780:: @ 08D57780
	.incbin "baserom.gba", 0xD57780, 0x000000C

gUnk_08D5778C:: @ 08D5778C
	.incbin "baserom.gba", 0xD5778C, 0x0000018

gUnk_08D577A4:: @ 08D577A4
	.incbin "baserom.gba", 0xD577A4, 0x000000C

gUnk_08D577B0:: @ 08D577B0
	.incbin "baserom.gba", 0xD577B0, 0x0000018

gUnk_08D577C8:: @ 08D577C8
	.incbin "baserom.gba", 0xD577C8, 0x000000C

gUnk_08D577D4:: @ 08D577D4
	.incbin "baserom.gba", 0xD577D4, 0x0000018

gUnk_08D577EC:: @ 08D577EC
	.incbin "baserom.gba", 0xD577EC, 0x000000C

gUnk_08D577F8:: @ 08D577F8
	.incbin "baserom.gba", 0xD577F8, 0x0000018

gUnk_08D57810:: @ 08D57810
	.incbin "baserom.gba", 0xD57810, 0x000000C

gUnk_08D5781C:: @ 08D5781C
	.incbin "baserom.gba", 0xD5781C, 0x0000028

gUnk_08D57844:: @ 08D57844
	.incbin "baserom.gba", 0xD57844, 0x000000C

gUnk_08D57850:: @ 08D57850
	.incbin "baserom.gba", 0xD57850, 0x000009B

gUnk_08D578EB:: @ 08D578EB
	.incbin "baserom.gba", 0xD578EB, 0x000009A

gUnk_08D57985:: @ 08D57985
	.incbin "baserom.gba", 0xD57985, 0x000009B

gUnk_08D57A20:: @ 08D57A20
	.incbin "baserom.gba", 0xD57A20, 0x0000014

gUnk_08D57A34:: @ 08D57A34
	.incbin "baserom.gba", 0xD57A34, 0x0000030

gUnk_08D57A64:: @ 08D57A64
	.incbin "baserom.gba", 0xD57A64, 0x000013D

gUnk_08D57BA1:: @ 08D57BA1
	.incbin "baserom.gba", 0xD57BA1, 0x00001E8

gUnk_08D57D89:: @ 08D57D89
	.incbin "baserom.gba", 0xD57D89, 0x00001E8

gUnk_08D57F71:: @ 08D57F71
	.incbin "baserom.gba", 0xD57F71, 0x000001B

gUnk_08D57F8C:: @ 08D57F8C
	.incbin "baserom.gba", 0xD57F8C, 0x000001C

gUnk_08D57FA8:: @ 08D57FA8
	.incbin "baserom.gba", 0xD57FA8, 0x000006C

gUnk_08D58014:: @ 08D58014
	.incbin "baserom.gba", 0xD58014, 0x000000C

gUnk_08D58020:: @ 08D58020
	.incbin "baserom.gba", 0xD58020, 0x0000018

gUnk_08D58038:: @ 08D58038
	.incbin "baserom.gba", 0xD58038, 0x000000C

gUnk_08D58044:: @ 08D58044
	.incbin "baserom.gba", 0xD58044, 0x000001D

gUnk_08D58061:: @ 08D58061
	.incbin "baserom.gba", 0xD58061, 0x000004F

gUnk_08D580B0:: @ 08D580B0
	.incbin "baserom.gba", 0xD580B0, 0x0000010

gUnk_08D580C0:: @ 08D580C0
	.incbin "baserom.gba", 0xD580C0, 0x0000010

gUnk_08D580D0:: @ 08D580D0
	.incbin "baserom.gba", 0xD580D0, 0x000000C

gUnk_08D580DC:: @ 08D580DC
	.incbin "baserom.gba", 0xD580DC, 0x0000014

gUnk_08D580F0:: @ 08D580F0
	.incbin "baserom.gba", 0xD580F0, 0x000000C

gUnk_08D580FC:: @ 08D580FC
	.incbin "baserom.gba", 0xD580FC, 0x0000020

gUnk_08D5811C:: @ 08D5811C
	.incbin "baserom.gba", 0xD5811C, 0x000000C

gUnk_08D58128:: @ 08D58128
	.incbin "baserom.gba", 0xD58128, 0x0000024

gUnk_08D5814C:: @ 08D5814C
	.incbin "baserom.gba", 0xD5814C, 0x000000C

gUnk_08D58158:: @ 08D58158
	.incbin "baserom.gba", 0xD58158, 0x000001C

gUnk_08D58174:: @ 08D58174
	.incbin "baserom.gba", 0xD58174, 0x000000C

gUnk_08D58180:: @ 08D58180
	.incbin "baserom.gba", 0xD58180, 0x0000018

gUnk_08D58198:: @ 08D58198
	.incbin "baserom.gba", 0xD58198, 0x000000C

gUnk_08D581A4:: @ 08D581A4
	.incbin "baserom.gba", 0xD581A4, 0x0000018

gUnk_08D581BC:: @ 08D581BC
	.incbin "baserom.gba", 0xD581BC, 0x000000C

gUnk_08D581C8:: @ 08D581C8
	.incbin "baserom.gba", 0xD581C8, 0x0000018

gUnk_08D581E0:: @ 08D581E0
	.incbin "baserom.gba", 0xD581E0, 0x000000C

gUnk_08D581EC:: @ 08D581EC
	.incbin "baserom.gba", 0xD581EC, 0x000000F

gUnk_08D581FB:: @ 08D581FB
	.incbin "baserom.gba", 0xD581FB, 0x0000011

gUnk_08D5820C:: @ 08D5820C
	.incbin "baserom.gba", 0xD5820C, 0x0000010

gUnk_08D5821C:: @ 08D5821C
	.incbin "baserom.gba", 0xD5821C, 0x0000016

gUnk_08D58232:: @ 08D58232
	.incbin "baserom.gba", 0xD58232, 0x0000042

gUnk_08D58274:: @ 08D58274
	.incbin "baserom.gba", 0xD58274, 0x0000010

gUnk_08D58284:: @ 08D58284
	.incbin "baserom.gba", 0xD58284, 0x000003C

gUnk_08D582C0:: @ 08D582C0
	.incbin "baserom.gba", 0xD582C0, 0x000000C

gUnk_08D582CC:: @ 08D582CC
	.incbin "baserom.gba", 0xD582CC, 0x000001E

gUnk_08D582EA:: @ 08D582EA
	.incbin "baserom.gba", 0xD582EA, 0x000001A

gUnk_08D58304:: @ 08D58304
	.incbin "baserom.gba", 0xD58304, 0x0000010

gUnk_08D58314:: @ 08D58314
	.incbin "baserom.gba", 0xD58314, 0x000003C

gUnk_08D58350:: @ 08D58350
	.incbin "baserom.gba", 0xD58350, 0x000000C

gUnk_08D5835C:: @ 08D5835C
	.incbin "baserom.gba", 0xD5835C, 0x000001C

gUnk_08D58378:: @ 08D58378
	.incbin "baserom.gba", 0xD58378, 0x000000C

gUnk_08D58384:: @ 08D58384
	.incbin "baserom.gba", 0xD58384, 0x0000058

gUnk_08D583DC:: @ 08D583DC
	.incbin "baserom.gba", 0xD583DC, 0x000000C

gUnk_08D583E8:: @ 08D583E8
	.incbin "baserom.gba", 0xD583E8, 0x0000038

gUnk_08D58420:: @ 08D58420
	.incbin "baserom.gba", 0xD58420, 0x000000C

gUnk_08D5842C:: @ 08D5842C
	.incbin "baserom.gba", 0xD5842C, 0x0000020

gUnk_08D5844C:: @ 08D5844C
	.incbin "baserom.gba", 0xD5844C, 0x000000C

gUnk_08D58458:: @ 08D58458
	.incbin "baserom.gba", 0xD58458, 0x0000078

gUnk_08D584D0:: @ 08D584D0
	.incbin "baserom.gba", 0xD584D0, 0x000000C

gUnk_08D584DC:: @ 08D584DC
	.incbin "baserom.gba", 0xD584DC, 0x000001C

gUnk_08D584F8:: @ 08D584F8
	.incbin "baserom.gba", 0xD584F8, 0x000000C

gUnk_08D58504:: @ 08D58504
	.incbin "baserom.gba", 0xD58504, 0x0000030

gUnk_08D58534:: @ 08D58534
	.incbin "baserom.gba", 0xD58534, 0x000000C

gUnk_08D58540:: @ 08D58540
	.incbin "baserom.gba", 0xD58540, 0x0000010

gUnk_08D58550:: @ 08D58550
	.incbin "baserom.gba", 0xD58550, 0x000000C

gUnk_08D5855C:: @ 08D5855C
	.incbin "baserom.gba", 0xD5855C, 0x0000010

gUnk_08D5856C:: @ 08D5856C
	.incbin "baserom.gba", 0xD5856C, 0x000000C

gUnk_08D58578:: @ 08D58578
	.incbin "baserom.gba", 0xD58578, 0x0000024

gUnk_08D5859C:: @ 08D5859C
	.incbin "baserom.gba", 0xD5859C, 0x000000C

gUnk_08D585A8:: @ 08D585A8
	.incbin "baserom.gba", 0xD585A8, 0x0000010

gUnk_08D585B8:: @ 08D585B8
	.incbin "baserom.gba", 0xD585B8, 0x000000C

gUnk_08D585C4:: @ 08D585C4
	.incbin "baserom.gba", 0xD585C4, 0x0000018

gUnk_08D585DC:: @ 08D585DC
	.incbin "baserom.gba", 0xD585DC, 0x000000C

gUnk_08D585E8:: @ 08D585E8
	.incbin "baserom.gba", 0xD585E8, 0x0000010

gUnk_08D585F8:: @ 08D585F8
	.incbin "baserom.gba", 0xD585F8, 0x000000C

gUnk_08D58604:: @ 08D58604
	.incbin "baserom.gba", 0xD58604, 0x0000030

gUnk_08D58634:: @ 08D58634
	.incbin "baserom.gba", 0xD58634, 0x000000C

gUnk_08D58640:: @ 08D58640
	.incbin "baserom.gba", 0xD58640, 0x0000010

gUnk_08D58650:: @ 08D58650
	.incbin "baserom.gba", 0xD58650, 0x000000C

gUnk_08D5865C:: @ 08D5865C
	.incbin "baserom.gba", 0xD5865C, 0x0000010

gUnk_08D5866C:: @ 08D5866C
	.incbin "baserom.gba", 0xD5866C, 0x000000C

gUnk_08D58678:: @ 08D58678
	.incbin "baserom.gba", 0xD58678, 0x0000028

gUnk_08D586A0:: @ 08D586A0
	.incbin "baserom.gba", 0xD586A0, 0x000000C

gUnk_08D586AC:: @ 08D586AC
	.incbin "baserom.gba", 0xD586AC, 0x0000038

gUnk_08D586E4:: @ 08D586E4
	.incbin "baserom.gba", 0xD586E4, 0x000000C

gUnk_08D586F0:: @ 08D586F0
	.incbin "baserom.gba", 0xD586F0, 0x00000B4

gUnk_08D587A4:: @ 08D587A4
	.incbin "baserom.gba", 0xD587A4, 0x000000C

gUnk_08D587B0:: @ 08D587B0
	.incbin "baserom.gba", 0xD587B0, 0x0000010

gUnk_08D587C0:: @ 08D587C0
	.incbin "baserom.gba", 0xD587C0, 0x000000C

gUnk_08D587CC:: @ 08D587CC
	.incbin "baserom.gba", 0xD587CC, 0x000001C

gUnk_08D587E8:: @ 08D587E8
	.incbin "baserom.gba", 0xD587E8, 0x000000C

gUnk_08D587F4:: @ 08D587F4
	.incbin "baserom.gba", 0xD587F4, 0x0000080

gUnk_08D58874:: @ 08D58874
	.incbin "baserom.gba", 0xD58874, 0x000000C

gUnk_08D58880:: @ 08D58880
	.incbin "baserom.gba", 0xD58880, 0x0000020

gUnk_08D588A0:: @ 08D588A0
	.incbin "baserom.gba", 0xD588A0, 0x000000C

gUnk_08D588AC:: @ 08D588AC
	.incbin "baserom.gba", 0xD588AC, 0x0000030

gUnk_08D588DC:: @ 08D588DC
	.incbin "baserom.gba", 0xD588DC, 0x000000C

gUnk_08D588E8:: @ 08D588E8
	.incbin "baserom.gba", 0xD588E8, 0x0000014

gUnk_08D588FC:: @ 08D588FC
	.incbin "baserom.gba", 0xD588FC, 0x000000C

gUnk_08D58908:: @ 08D58908
	.incbin "baserom.gba", 0xD58908, 0x0000044

gUnk_08D5894C:: @ 08D5894C
	.incbin "baserom.gba", 0xD5894C, 0x000000C

gUnk_08D58958:: @ 08D58958
	.incbin "baserom.gba", 0xD58958, 0x000002C

gUnk_08D58984:: @ 08D58984
	.incbin "baserom.gba", 0xD58984, 0x000000C

gUnk_08D58990:: @ 08D58990
	.incbin "baserom.gba", 0xD58990, 0x0000010

gUnk_08D589A0:: @ 08D589A0
	.incbin "baserom.gba", 0xD589A0, 0x000000C

gUnk_08D589AC:: @ 08D589AC
	.incbin "baserom.gba", 0xD589AC, 0x0000038

gUnk_08D589E4:: @ 08D589E4
	.incbin "baserom.gba", 0xD589E4, 0x000000C

gUnk_08D589F0:: @ 08D589F0
	.incbin "baserom.gba", 0xD589F0, 0x0000020

gUnk_08D58A10:: @ 08D58A10
	.incbin "baserom.gba", 0xD58A10, 0x000000C

gUnk_08D58A1C:: @ 08D58A1C
	.incbin "baserom.gba", 0xD58A1C, 0x0000010

gUnk_08D58A2C:: @ 08D58A2C
	.incbin "baserom.gba", 0xD58A2C, 0x000000C

gUnk_08D58A38:: @ 08D58A38
	.incbin "baserom.gba", 0xD58A38, 0x0000010

gUnk_08D58A48:: @ 08D58A48
	.incbin "baserom.gba", 0xD58A48, 0x000000C

gUnk_08D58A54:: @ 08D58A54
	.incbin "baserom.gba", 0xD58A54, 0x0000060

gUnk_08D58AB4:: @ 08D58AB4
	.incbin "baserom.gba", 0xD58AB4, 0x000000C

gUnk_08D58AC0:: @ 08D58AC0
	.incbin "baserom.gba", 0xD58AC0, 0x0000010

gUnk_08D58AD0:: @ 08D58AD0
	.incbin "baserom.gba", 0xD58AD0, 0x000000C

gUnk_08D58ADC:: @ 08D58ADC
	.incbin "baserom.gba", 0xD58ADC, 0x0000010

gUnk_08D58AEC:: @ 08D58AEC
	.incbin "baserom.gba", 0xD58AEC, 0x000000C

gUnk_08D58AF8:: @ 08D58AF8
	.incbin "baserom.gba", 0xD58AF8, 0x0000014

gUnk_08D58B0C:: @ 08D58B0C
	.incbin "baserom.gba", 0xD58B0C, 0x000000C

gUnk_08D58B18:: @ 08D58B18
	.incbin "baserom.gba", 0xD58B18, 0x0000010

gUnk_08D58B28:: @ 08D58B28
	.incbin "baserom.gba", 0xD58B28, 0x000000C

gUnk_08D58B34:: @ 08D58B34
	.incbin "baserom.gba", 0xD58B34, 0x0000010

gUnk_08D58B44:: @ 08D58B44
	.incbin "baserom.gba", 0xD58B44, 0x000000C

gUnk_08D58B50:: @ 08D58B50
	.incbin "baserom.gba", 0xD58B50, 0x0000018

gUnk_08D58B68:: @ 08D58B68
	.incbin "baserom.gba", 0xD58B68, 0x000000C

gUnk_08D58B74:: @ 08D58B74
	.incbin "baserom.gba", 0xD58B74, 0x0000018

gUnk_08D58B8C:: @ 08D58B8C
	.incbin "baserom.gba", 0xD58B8C, 0x000000C

gUnk_08D58B98:: @ 08D58B98
	.incbin "baserom.gba", 0xD58B98, 0x000001C

gUnk_08D58BB4:: @ 08D58BB4
	.incbin "baserom.gba", 0xD58BB4, 0x000000C

gUnk_08D58BC0:: @ 08D58BC0
	.incbin "baserom.gba", 0xD58BC0, 0x0000040

gUnk_08D58C00:: @ 08D58C00
	.incbin "baserom.gba", 0xD58C00, 0x000000C

gUnk_08D58C0C:: @ 08D58C0C
	.incbin "baserom.gba", 0xD58C0C, 0x0000038

gUnk_08D58C44:: @ 08D58C44
	.incbin "baserom.gba", 0xD58C44, 0x000000C

gUnk_08D58C50:: @ 08D58C50
	.incbin "baserom.gba", 0xD58C50, 0x0000018

gUnk_08D58C68:: @ 08D58C68
	.incbin "baserom.gba", 0xD58C68, 0x000000C

gUnk_08D58C74:: @ 08D58C74
	.incbin "baserom.gba", 0xD58C74, 0x0000030

gUnk_08D58CA4:: @ 08D58CA4
	.incbin "baserom.gba", 0xD58CA4, 0x000000C

gUnk_08D58CB0:: @ 08D58CB0
	.incbin "baserom.gba", 0xD58CB0, 0x0000074

gUnk_08D58D24:: @ 08D58D24
	.incbin "baserom.gba", 0xD58D24, 0x000000C

gUnk_08D58D30:: @ 08D58D30
	.incbin "baserom.gba", 0xD58D30, 0x000003C

gUnk_08D58D6C:: @ 08D58D6C
	.incbin "baserom.gba", 0xD58D6C, 0x000000C

gUnk_08D58D78:: @ 08D58D78
	.incbin "baserom.gba", 0xD58D78, 0x000005C

gUnk_08D58DD4:: @ 08D58DD4
	.incbin "baserom.gba", 0xD58DD4, 0x000000C

gUnk_08D58DE0:: @ 08D58DE0
	.incbin "baserom.gba", 0xD58DE0, 0x00000B8

gUnk_08D58E98:: @ 08D58E98
	.incbin "baserom.gba", 0xD58E98, 0x00000A4

gUnk_08D58F3C:: @ 08D58F3C
	.incbin "baserom.gba", 0xD58F3C, 0x0000010

gUnk_08D58F4C:: @ 08D58F4C
	.incbin "baserom.gba", 0xD58F4C, 0x0000010

gUnk_08D58F5C:: @ 08D58F5C
	.incbin "baserom.gba", 0xD58F5C, 0x000000C

gUnk_08D58F68:: @ 08D58F68
	.incbin "baserom.gba", 0xD58F68, 0x0000014

gUnk_08D58F7C:: @ 08D58F7C
	.incbin "baserom.gba", 0xD58F7C, 0x000000C

gUnk_08D58F88:: @ 08D58F88
	.incbin "baserom.gba", 0xD58F88, 0x0000010

gUnk_08D58F98:: @ 08D58F98
	.incbin "baserom.gba", 0xD58F98, 0x000000C

gUnk_08D58FA4:: @ 08D58FA4
	.incbin "baserom.gba", 0xD58FA4, 0x000006C

gUnk_08D59010:: @ 08D59010
	.incbin "baserom.gba", 0xD59010, 0x000000C

gUnk_08D5901C:: @ 08D5901C
	.incbin "baserom.gba", 0xD5901C, 0x0000018

gUnk_08D59034:: @ 08D59034
	.incbin "baserom.gba", 0xD59034, 0x000000C

gUnk_08D59040:: @ 08D59040
	.incbin "baserom.gba", 0xD59040, 0x0000054

gUnk_08D59094:: @ 08D59094
	.incbin "baserom.gba", 0xD59094, 0x000000C

gUnk_08D590A0:: @ 08D590A0
	.incbin "baserom.gba", 0xD590A0, 0x0000010

gUnk_08D590B0:: @ 08D590B0
	.incbin "baserom.gba", 0xD590B0, 0x000000C

gUnk_08D590BC:: @ 08D590BC
	.incbin "baserom.gba", 0xD590BC, 0x000000F

gUnk_08D590CB:: @ 08D590CB
	.incbin "baserom.gba", 0xD590CB, 0x0000011

gUnk_08D590DC:: @ 08D590DC
	.incbin "baserom.gba", 0xD590DC, 0x0000010

gUnk_08D590EC:: @ 08D590EC
	.incbin "baserom.gba", 0xD590EC, 0x0000074

gUnk_08D59160:: @ 08D59160
	.incbin "baserom.gba", 0xD59160, 0x000000C

gUnk_08D5916C:: @ 08D5916C
	.incbin "baserom.gba", 0xD5916C, 0x000002C

gUnk_08D59198:: @ 08D59198
	.incbin "baserom.gba", 0xD59198, 0x000000C

gUnk_08D591A4:: @ 08D591A4
	.incbin "baserom.gba", 0xD591A4, 0x0000017

gUnk_08D591BB:: @ 08D591BB
	.incbin "baserom.gba", 0xD591BB, 0x0000015

gUnk_08D591D0:: @ 08D591D0
	.incbin "baserom.gba", 0xD591D0, 0x0000010

gUnk_08D591E0:: @ 08D591E0
	.incbin "baserom.gba", 0xD591E0, 0x0000054

gUnk_08D59234:: @ 08D59234
	.incbin "baserom.gba", 0xD59234, 0x000000C

gUnk_08D59240:: @ 08D59240
	.incbin "baserom.gba", 0xD59240, 0x0000020

gUnk_08D59260:: @ 08D59260
	.incbin "baserom.gba", 0xD59260, 0x000000C

gUnk_08D5926C:: @ 08D5926C
	.incbin "baserom.gba", 0xD5926C, 0x0000054

gUnk_08D592C0:: @ 08D592C0
	.incbin "baserom.gba", 0xD592C0, 0x000000C

gUnk_08D592CC:: @ 08D592CC
	.incbin "baserom.gba", 0xD592CC, 0x0000010

gUnk_08D592DC:: @ 08D592DC
	.incbin "baserom.gba", 0xD592DC, 0x000000C

gUnk_08D592E8:: @ 08D592E8
	.incbin "baserom.gba", 0xD592E8, 0x0000174

gUnk_08D5945C:: @ 08D5945C
	.incbin "baserom.gba", 0xD5945C, 0x000015D

gUnk_08D595B9:: @ 08D595B9
	.incbin "baserom.gba", 0xD595B9, 0x0000012

gUnk_08D595CB:: @ 08D595CB
	.incbin "baserom.gba", 0xD595CB, 0x0000015

gUnk_08D595E0:: @ 08D595E0
	.incbin "baserom.gba", 0xD595E0, 0x0000091

gUnk_08D59671:: @ 08D59671
	.incbin "baserom.gba", 0xD59671, 0x000005B

gUnk_08D596CC:: @ 08D596CC
	.incbin "baserom.gba", 0xD596CC, 0x0000020

gUnk_08D596EC:: @ 08D596EC
	.incbin "baserom.gba", 0xD596EC, 0x00000B5

gUnk_08D597A1:: @ 08D597A1
	.incbin "baserom.gba", 0xD597A1, 0x00000AF

gUnk_08D59850:: @ 08D59850
	.incbin "baserom.gba", 0xD59850, 0x0000010

gUnk_08D59860:: @ 08D59860
	.incbin "baserom.gba", 0xD59860, 0x0000018

gUnk_08D59878:: @ 08D59878
	.incbin "baserom.gba", 0xD59878, 0x000000C

gUnk_08D59884:: @ 08D59884
	.incbin "baserom.gba", 0xD59884, 0x000005C

gUnk_08D598E0:: @ 08D598E0
	.incbin "baserom.gba", 0xD598E0, 0x000000C

gUnk_08D598EC:: @ 08D598EC
	.incbin "baserom.gba", 0xD598EC, 0x0000040

gUnk_08D5992C:: @ 08D5992C
	.incbin "baserom.gba", 0xD5992C, 0x000000C

gUnk_08D59938:: @ 08D59938
	.incbin "baserom.gba", 0xD59938, 0x000001C

gUnk_08D59954:: @ 08D59954
	.incbin "baserom.gba", 0xD59954, 0x000002C

gUnk_08D59980:: @ 08D59980
	.incbin "baserom.gba", 0xD59980, 0x0000010

gUnk_08D59990:: @ 08D59990
	.incbin "baserom.gba", 0xD59990, 0x0000010

gUnk_08D599A0:: @ 08D599A0
	.incbin "baserom.gba", 0xD599A0, 0x000000C

gUnk_08D599AC:: @ 08D599AC
	.incbin "baserom.gba", 0xD599AC, 0x0000010

gUnk_08D599BC:: @ 08D599BC
	.incbin "baserom.gba", 0xD599BC, 0x000000C

gUnk_08D599C8:: @ 08D599C8
	.incbin "baserom.gba", 0xD599C8, 0x0000010

gUnk_08D599D8:: @ 08D599D8
	.incbin "baserom.gba", 0xD599D8, 0x000000C

gUnk_08D599E4:: @ 08D599E4
	.incbin "baserom.gba", 0xD599E4, 0x0000010

gUnk_08D599F4:: @ 08D599F4
	.incbin "baserom.gba", 0xD599F4, 0x000000C

gUnk_08D59A00:: @ 08D59A00
	.incbin "baserom.gba", 0xD59A00, 0x0000020

gUnk_08D59A20:: @ 08D59A20
	.incbin "baserom.gba", 0xD59A20, 0x000000C

gUnk_08D59A2C:: @ 08D59A2C
	.incbin "baserom.gba", 0xD59A2C, 0x0000014

gUnk_08D59A40:: @ 08D59A40
	.incbin "baserom.gba", 0xD59A40, 0x000000C

gUnk_08D59A4C:: @ 08D59A4C
	.incbin "baserom.gba", 0xD59A4C, 0x00000B4

gUnk_08D59B00:: @ 08D59B00
	.incbin "baserom.gba", 0xD59B00, 0x000000C

gUnk_08D59B0C:: @ 08D59B0C
	.incbin "baserom.gba", 0xD59B0C, 0x0000010

gUnk_08D59B1C:: @ 08D59B1C
	.incbin "baserom.gba", 0xD59B1C, 0x000000C

gUnk_08D59B28:: @ 08D59B28
	.incbin "baserom.gba", 0xD59B28, 0x0000010

gUnk_08D59B38:: @ 08D59B38
	.incbin "baserom.gba", 0xD59B38, 0x000000C

gUnk_08D59B44:: @ 08D59B44
	.incbin "baserom.gba", 0xD59B44, 0x0000040

gUnk_08D59B84:: @ 08D59B84
	.incbin "baserom.gba", 0xD59B84, 0x000000C

gUnk_08D59B90:: @ 08D59B90
	.incbin "baserom.gba", 0xD59B90, 0x0000010

gUnk_08D59BA0:: @ 08D59BA0
	.incbin "baserom.gba", 0xD59BA0, 0x000000C

gUnk_08D59BAC:: @ 08D59BAC
	.incbin "baserom.gba", 0xD59BAC, 0x0000040

gUnk_08D59BEC:: @ 08D59BEC
	.incbin "baserom.gba", 0xD59BEC, 0x000000C

gUnk_08D59BF8:: @ 08D59BF8
	.incbin "baserom.gba", 0xD59BF8, 0x0000010

gUnk_08D59C08:: @ 08D59C08
	.incbin "baserom.gba", 0xD59C08, 0x000000C

gUnk_08D59C14:: @ 08D59C14
	.incbin "baserom.gba", 0xD59C14, 0x0000014

gUnk_08D59C28:: @ 08D59C28
	.incbin "baserom.gba", 0xD59C28, 0x000000C

gUnk_08D59C34:: @ 08D59C34
	.incbin "baserom.gba", 0xD59C34, 0x0000074

gUnk_08D59CA8:: @ 08D59CA8
	.incbin "baserom.gba", 0xD59CA8, 0x000000C

gUnk_08D59CB4:: @ 08D59CB4
	.incbin "baserom.gba", 0xD59CB4, 0x0000010

gUnk_08D59CC4:: @ 08D59CC4
	.incbin "baserom.gba", 0xD59CC4, 0x000000C

gUnk_08D59CD0:: @ 08D59CD0
	.incbin "baserom.gba", 0xD59CD0, 0x0000040

gUnk_08D59D10:: @ 08D59D10
	.incbin "baserom.gba", 0xD59D10, 0x000000C

gUnk_08D59D1C:: @ 08D59D1C
	.incbin "baserom.gba", 0xD59D1C, 0x0000018

gUnk_08D59D34:: @ 08D59D34
	.incbin "baserom.gba", 0xD59D34, 0x000000C

gUnk_08D59D40:: @ 08D59D40
	.incbin "baserom.gba", 0xD59D40, 0x0000038

gUnk_08D59D78:: @ 08D59D78
	.incbin "baserom.gba", 0xD59D78, 0x000000C

gUnk_08D59D84:: @ 08D59D84
	.incbin "baserom.gba", 0xD59D84, 0x0000014

gUnk_08D59D98:: @ 08D59D98
	.incbin "baserom.gba", 0xD59D98, 0x000000C

gUnk_08D59DA4:: @ 08D59DA4
	.incbin "baserom.gba", 0xD59DA4, 0x0000014

gUnk_08D59DB8:: @ 08D59DB8
	.incbin "baserom.gba", 0xD59DB8, 0x000000C

gUnk_08D59DC4:: @ 08D59DC4
	.incbin "baserom.gba", 0xD59DC4, 0x000007C

gUnk_08D59E40:: @ 08D59E40
	.incbin "baserom.gba", 0xD59E40, 0x000000C

gUnk_08D59E4C:: @ 08D59E4C
	.incbin "baserom.gba", 0xD59E4C, 0x0000030

gUnk_08D59E7C:: @ 08D59E7C
	.incbin "baserom.gba", 0xD59E7C, 0x000000C

gUnk_08D59E88:: @ 08D59E88
	.incbin "baserom.gba", 0xD59E88, 0x0000010

gUnk_08D59E98:: @ 08D59E98
	.incbin "baserom.gba", 0xD59E98, 0x000000C

gUnk_08D59EA4:: @ 08D59EA4
	.incbin "baserom.gba", 0xD59EA4, 0x0000018

gUnk_08D59EBC:: @ 08D59EBC
	.incbin "baserom.gba", 0xD59EBC, 0x000000C

gUnk_08D59EC8:: @ 08D59EC8
	.incbin "baserom.gba", 0xD59EC8, 0x000002D

gUnk_08D59EF5:: @ 08D59EF5
	.incbin "baserom.gba", 0xD59EF5, 0x000002B

gUnk_08D59F20:: @ 08D59F20
	.incbin "baserom.gba", 0xD59F20, 0x0000010

gUnk_08D59F30:: @ 08D59F30
	.incbin "baserom.gba", 0xD59F30, 0x0000014

gUnk_08D59F44:: @ 08D59F44
	.incbin "baserom.gba", 0xD59F44, 0x000000C

gUnk_08D59F50:: @ 08D59F50
	.incbin "baserom.gba", 0xD59F50, 0x0000010

gUnk_08D59F60:: @ 08D59F60
	.incbin "baserom.gba", 0xD59F60, 0x000000C

gUnk_08D59F6C:: @ 08D59F6C
	.incbin "baserom.gba", 0xD59F6C, 0x0000024

gUnk_08D59F90:: @ 08D59F90
	.incbin "baserom.gba", 0xD59F90, 0x000000C

gUnk_08D59F9C:: @ 08D59F9C
	.incbin "baserom.gba", 0xD59F9C, 0x0000010

gUnk_08D59FAC:: @ 08D59FAC
	.incbin "baserom.gba", 0xD59FAC, 0x000000C

gUnk_08D59FB8:: @ 08D59FB8
	.incbin "baserom.gba", 0xD59FB8, 0x0000010

gUnk_08D59FC8:: @ 08D59FC8
	.incbin "baserom.gba", 0xD59FC8, 0x000000C

gUnk_08D59FD4:: @ 08D59FD4
	.incbin "baserom.gba", 0xD59FD4, 0x0000010

gUnk_08D59FE4:: @ 08D59FE4
	.incbin "baserom.gba", 0xD59FE4, 0x000000C

gUnk_08D59FF0:: @ 08D59FF0
	.incbin "baserom.gba", 0xD59FF0, 0x0000024

gUnk_08D5A014:: @ 08D5A014
	.incbin "baserom.gba", 0xD5A014, 0x000000C

gUnk_08D5A020:: @ 08D5A020
	.incbin "baserom.gba", 0xD5A020, 0x0000024

gUnk_08D5A044:: @ 08D5A044
	.incbin "baserom.gba", 0xD5A044, 0x000000C

gUnk_08D5A050:: @ 08D5A050
	.incbin "baserom.gba", 0xD5A050, 0x0000024

gUnk_08D5A074:: @ 08D5A074
	.incbin "baserom.gba", 0xD5A074, 0x000000C

gUnk_08D5A080:: @ 08D5A080
	.incbin "baserom.gba", 0xD5A080, 0x0000020

gUnk_08D5A0A0:: @ 08D5A0A0
	.incbin "baserom.gba", 0xD5A0A0, 0x000000C

gUnk_08D5A0AC:: @ 08D5A0AC
	.incbin "baserom.gba", 0xD5A0AC, 0x0000094

gUnk_08D5A140:: @ 08D5A140
	.incbin "baserom.gba", 0xD5A140, 0x000000C

gUnk_08D5A14C:: @ 08D5A14C
	.incbin "baserom.gba", 0xD5A14C, 0x000003C

gUnk_08D5A188:: @ 08D5A188
	.incbin "baserom.gba", 0xD5A188, 0x000000C

gUnk_08D5A194:: @ 08D5A194
	.incbin "baserom.gba", 0xD5A194, 0x000000F

gUnk_08D5A1A3:: @ 08D5A1A3
	.incbin "baserom.gba", 0xD5A1A3, 0x0000011

gUnk_08D5A1B4:: @ 08D5A1B4
	.incbin "baserom.gba", 0xD5A1B4, 0x0000014

gUnk_08D5A1C8:: @ 08D5A1C8
	.incbin "baserom.gba", 0xD5A1C8, 0x0000014

gUnk_08D5A1DC:: @ 08D5A1DC
	.incbin "baserom.gba", 0xD5A1DC, 0x0000010

gUnk_08D5A1EC:: @ 08D5A1EC
	.incbin "baserom.gba", 0xD5A1EC, 0x000000C

gUnk_08D5A1F8:: @ 08D5A1F8
	.incbin "baserom.gba", 0xD5A1F8, 0x00001E7

gUnk_08D5A3DF:: @ 08D5A3DF
	.incbin "baserom.gba", 0xD5A3DF, 0x00001E5

gUnk_08D5A5C4:: @ 08D5A5C4
	.incbin "baserom.gba", 0xD5A5C4, 0x0000014

gUnk_08D5A5D8:: @ 08D5A5D8
	.incbin "baserom.gba", 0xD5A5D8, 0x0000014

gUnk_08D5A5EC:: @ 08D5A5EC
	.incbin "baserom.gba", 0xD5A5EC, 0x0000010

gUnk_08D5A5FC:: @ 08D5A5FC
	.incbin "baserom.gba", 0xD5A5FC, 0x000000C

gUnk_08D5A608:: @ 08D5A608
	.incbin "baserom.gba", 0xD5A608, 0x000003C

gUnk_08D5A644:: @ 08D5A644
	.incbin "baserom.gba", 0xD5A644, 0x000000C

gUnk_08D5A650:: @ 08D5A650
	.incbin "baserom.gba", 0xD5A650, 0x0000048

gUnk_08D5A698:: @ 08D5A698
	.incbin "baserom.gba", 0xD5A698, 0x000000C

gUnk_08D5A6A4:: @ 08D5A6A4
	.incbin "baserom.gba", 0xD5A6A4, 0x0000010

gUnk_08D5A6B4:: @ 08D5A6B4
	.incbin "baserom.gba", 0xD5A6B4, 0x000000C

gUnk_08D5A6C0:: @ 08D5A6C0
	.incbin "baserom.gba", 0xD5A6C0, 0x0000072

gUnk_08D5A732:: @ 08D5A732
	.incbin "baserom.gba", 0xD5A732, 0x000007A

gUnk_08D5A7AC:: @ 08D5A7AC
	.incbin "baserom.gba", 0xD5A7AC, 0x0000010

gUnk_08D5A7BC:: @ 08D5A7BC
	.incbin "baserom.gba", 0xD5A7BC, 0x0000010

gUnk_08D5A7CC:: @ 08D5A7CC
	.incbin "baserom.gba", 0xD5A7CC, 0x000000C

gUnk_08D5A7D8:: @ 08D5A7D8
	.incbin "baserom.gba", 0xD5A7D8, 0x0000010

gUnk_08D5A7E8:: @ 08D5A7E8
	.incbin "baserom.gba", 0xD5A7E8, 0x000000C

gUnk_08D5A7F4:: @ 08D5A7F4
	.incbin "baserom.gba", 0xD5A7F4, 0x0000018

gUnk_08D5A80C:: @ 08D5A80C
	.incbin "baserom.gba", 0xD5A80C, 0x000000C

gUnk_08D5A818:: @ 08D5A818
	.incbin "baserom.gba", 0xD5A818, 0x000004C

gUnk_08D5A864:: @ 08D5A864
	.incbin "baserom.gba", 0xD5A864, 0x000000C

gUnk_08D5A870:: @ 08D5A870
	.incbin "baserom.gba", 0xD5A870, 0x0000011

gUnk_08D5A881:: @ 08D5A881
	.incbin "baserom.gba", 0xD5A881, 0x0000013

gUnk_08D5A894:: @ 08D5A894
	.incbin "baserom.gba", 0xD5A894, 0x0000010

gUnk_08D5A8A4:: @ 08D5A8A4
	.incbin "baserom.gba", 0xD5A8A4, 0x0000060

gUnk_08D5A904:: @ 08D5A904
	.incbin "baserom.gba", 0xD5A904, 0x000003C

gUnk_08D5A940:: @ 08D5A940
	.incbin "baserom.gba", 0xD5A940, 0x0000010

gUnk_08D5A950:: @ 08D5A950
	.incbin "baserom.gba", 0xD5A950, 0x0000014

gUnk_08D5A964:: @ 08D5A964
	.incbin "baserom.gba", 0xD5A964, 0x000000C

gUnk_08D5A970:: @ 08D5A970
	.incbin "baserom.gba", 0xD5A970, 0x000002C

gUnk_08D5A99C:: @ 08D5A99C
	.incbin "baserom.gba", 0xD5A99C, 0x000000C

gUnk_08D5A9A8:: @ 08D5A9A8
	.incbin "baserom.gba", 0xD5A9A8, 0x0000174

gUnk_08D5AB1C:: @ 08D5AB1C
	.incbin "baserom.gba", 0xD5AB1C, 0x000015D

gUnk_08D5AC79:: @ 08D5AC79
	.incbin "baserom.gba", 0xD5AC79, 0x0000012

gUnk_08D5AC8B:: @ 08D5AC8B
	.incbin "baserom.gba", 0xD5AC8B, 0x0000015

gUnk_08D5ACA0:: @ 08D5ACA0
	.incbin "baserom.gba", 0xD5ACA0, 0x0000018

gUnk_08D5ACB8:: @ 08D5ACB8
	.incbin "baserom.gba", 0xD5ACB8, 0x0000014

gUnk_08D5ACCC:: @ 08D5ACCC
	.incbin "baserom.gba", 0xD5ACCC, 0x000000C

gUnk_08D5ACD8:: @ 08D5ACD8
	.incbin "baserom.gba", 0xD5ACD8, 0x0000028

gUnk_08D5AD00:: @ 08D5AD00
	.incbin "baserom.gba", 0xD5AD00, 0x0000023

gUnk_08D5AD23:: @ 08D5AD23
	.incbin "baserom.gba", 0xD5AD23, 0x0000026

gUnk_08D5AD49:: @ 08D5AD49
	.incbin "baserom.gba", 0xD5AD49, 0x0000027

gUnk_08D5AD70:: @ 08D5AD70
	.incbin "baserom.gba", 0xD5AD70, 0x0000018

gUnk_08D5AD88:: @ 08D5AD88
	.incbin "baserom.gba", 0xD5AD88, 0x0000014

gUnk_08D5AD9C:: @ 08D5AD9C
	.incbin "baserom.gba", 0xD5AD9C, 0x000000C

gUnk_08D5ADA8:: @ 08D5ADA8
	.incbin "baserom.gba", 0xD5ADA8, 0x000002E

gUnk_08D5ADD6:: @ 08D5ADD6
	.incbin "baserom.gba", 0xD5ADD6, 0x000002C

gUnk_08D5AE02:: @ 08D5AE02
	.incbin "baserom.gba", 0xD5AE02, 0x000002E

gUnk_08D5AE30:: @ 08D5AE30
	.incbin "baserom.gba", 0xD5AE30, 0x0000014

gUnk_08D5AE44:: @ 08D5AE44
	.incbin "baserom.gba", 0xD5AE44, 0x0000018

gUnk_08D5AE5C:: @ 08D5AE5C
	.incbin "baserom.gba", 0xD5AE5C, 0x000001C

gUnk_08D5AE78:: @ 08D5AE78
	.incbin "baserom.gba", 0xD5AE78, 0x0000010

gUnk_08D5AE88:: @ 08D5AE88
	.incbin "baserom.gba", 0xD5AE88, 0x0000014

gUnk_08D5AE9C:: @ 08D5AE9C
	.incbin "baserom.gba", 0xD5AE9C, 0x000000C

gUnk_08D5AEA8:: @ 08D5AEA8
	.incbin "baserom.gba", 0xD5AEA8, 0x0000018

gUnk_08D5AEC0:: @ 08D5AEC0
	.incbin "baserom.gba", 0xD5AEC0, 0x000000C

gUnk_08D5AECC:: @ 08D5AECC
	.incbin "baserom.gba", 0xD5AECC, 0x0000006

gUnk_08D5AED2:: @ 08D5AED2
	.incbin "baserom.gba", 0xD5AED2, 0x000003A

gUnk_08D5AF0C:: @ 08D5AF0C
	.incbin "baserom.gba", 0xD5AF0C, 0x000000C

gUnk_08D5AF18:: @ 08D5AF18
	.incbin "baserom.gba", 0xD5AF18, 0x0000044

gUnk_08D5AF5C:: @ 08D5AF5C
	.incbin "baserom.gba", 0xD5AF5C, 0x000000C

gUnk_08D5AF68:: @ 08D5AF68
	.incbin "baserom.gba", 0xD5AF68, 0x00002ED

gUnk_08D5B255:: @ 08D5B255
	.incbin "baserom.gba", 0xD5B255, 0x0000053

gUnk_08D5B2A8:: @ 08D5B2A8
	.incbin "baserom.gba", 0xD5B2A8, 0x0000010

gUnk_08D5B2B8:: @ 08D5B2B8
	.incbin "baserom.gba", 0xD5B2B8, 0x0000020

gUnk_08D5B2D8:: @ 08D5B2D8
	.incbin "baserom.gba", 0xD5B2D8, 0x000000C

gUnk_08D5B2E4:: @ 08D5B2E4
	.incbin "baserom.gba", 0xD5B2E4, 0x0000218

gUnk_08D5B4FC:: @ 08D5B4FC
	.incbin "baserom.gba", 0xD5B4FC, 0x000000C

gUnk_08D5B508:: @ 08D5B508
	.incbin "baserom.gba", 0xD5B508, 0x0000344

gUnk_08D5B84C:: @ 08D5B84C
	.incbin "baserom.gba", 0xD5B84C, 0x000000C

gUnk_08D5B858:: @ 08D5B858
	.incbin "baserom.gba", 0xD5B858, 0x00000CC

gUnk_08D5B924:: @ 08D5B924
	.incbin "baserom.gba", 0xD5B924, 0x000000C

gUnk_08D5B930:: @ 08D5B930
	.incbin "baserom.gba", 0xD5B930, 0x0000018

gUnk_08D5B948:: @ 08D5B948
	.incbin "baserom.gba", 0xD5B948, 0x000000C

gUnk_08D5B954:: @ 08D5B954
	.incbin "baserom.gba", 0xD5B954, 0x0000011

gUnk_08D5B965:: @ 08D5B965
	.incbin "baserom.gba", 0xD5B965, 0x000005F

gUnk_08D5B9C4:: @ 08D5B9C4
	.incbin "baserom.gba", 0xD5B9C4, 0x0000010

gUnk_08D5B9D4:: @ 08D5B9D4
	.incbin "baserom.gba", 0xD5B9D4, 0x0000014

gUnk_08D5B9E8:: @ 08D5B9E8
	.incbin "baserom.gba", 0xD5B9E8, 0x000000C

gUnk_08D5B9F4:: @ 08D5B9F4
	.incbin "baserom.gba", 0xD5B9F4, 0x0000014

gUnk_08D5BA08:: @ 08D5BA08
	.incbin "baserom.gba", 0xD5BA08, 0x000000C

gUnk_08D5BA14:: @ 08D5BA14
	.incbin "baserom.gba", 0xD5BA14, 0x00003BD

gUnk_08D5BDD1:: @ 08D5BDD1
	.incbin "baserom.gba", 0xD5BDD1, 0x0000053

gUnk_08D5BE24:: @ 08D5BE24
	.incbin "baserom.gba", 0xD5BE24, 0x0000010

gUnk_08D5BE34:: @ 08D5BE34
	.incbin "baserom.gba", 0xD5BE34, 0x00003D2

gUnk_08D5C206:: @ 08D5C206
	.incbin "baserom.gba", 0xD5C206, 0x0000052

gUnk_08D5C258:: @ 08D5C258
	.incbin "baserom.gba", 0xD5C258, 0x0000010

gUnk_08D5C268:: @ 08D5C268
	.incbin "baserom.gba", 0xD5C268, 0x00001D4

gUnk_08D5C43C:: @ 08D5C43C
	.incbin "baserom.gba", 0xD5C43C, 0x0000054

gUnk_08D5C490:: @ 08D5C490
	.incbin "baserom.gba", 0xD5C490, 0x0000010

gUnk_08D5C4A0:: @ 08D5C4A0
	.incbin "baserom.gba", 0xD5C4A0, 0x0000072

gUnk_08D5C512:: @ 08D5C512
	.incbin "baserom.gba", 0xD5C512, 0x0000026

gUnk_08D5C538:: @ 08D5C538
	.incbin "baserom.gba", 0xD5C538, 0x0000010

gUnk_08D5C548:: @ 08D5C548
	.incbin "baserom.gba", 0xD5C548, 0x0000076

gUnk_08D5C5BE:: @ 08D5C5BE
	.incbin "baserom.gba", 0xD5C5BE, 0x000004B

gUnk_08D5C609:: @ 08D5C609
	.incbin "baserom.gba", 0xD5C609, 0x000004F

gUnk_08D5C658:: @ 08D5C658
	.incbin "baserom.gba", 0xD5C658, 0x0000014

gUnk_08D5C66C:: @ 08D5C66C
	.incbin "baserom.gba", 0xD5C66C, 0x00006CF

gUnk_08D5CD3B:: @ 08D5CD3B
	.incbin "baserom.gba", 0xD5CD3B, 0x00006CD

gUnk_08D5D408:: @ 08D5D408
	.incbin "baserom.gba", 0xD5D408, 0x00006D4

gUnk_08D5DADC:: @ 08D5DADC
	.incbin "baserom.gba", 0xD5DADC, 0x0000014

gUnk_08D5DAF0:: @ 08D5DAF0
	.incbin "baserom.gba", 0xD5DAF0, 0x0000014

gUnk_08D5DB04:: @ 08D5DB04
	.incbin "baserom.gba", 0xD5DB04, 0x000000C

gUnk_08D5DB10:: @ 08D5DB10
	.incbin "baserom.gba", 0xD5DB10, 0x0000014

gUnk_08D5DB24:: @ 08D5DB24
	.incbin "baserom.gba", 0xD5DB24, 0x000000C

gUnk_08D5DB30:: @ 08D5DB30
	.incbin "baserom.gba", 0xD5DB30, 0x00001D5

gUnk_08D5DD05:: @ 08D5DD05
	.incbin "baserom.gba", 0xD5DD05, 0x0000054

gUnk_08D5DD59:: @ 08D5DD59
	.incbin "baserom.gba", 0xD5DD59, 0x00000C7

gUnk_08D5DE20:: @ 08D5DE20
	.incbin "baserom.gba", 0xD5DE20, 0x0000014

gUnk_08D5DE34:: @ 08D5DE34
	.incbin "baserom.gba", 0xD5DE34, 0x0000011

gUnk_08D5DE45:: @ 08D5DE45
	.incbin "baserom.gba", 0xD5DE45, 0x0000013

gUnk_08D5DE58:: @ 08D5DE58
	.incbin "baserom.gba", 0xD5DE58, 0x0000010

gUnk_08D5DE68:: @ 08D5DE68
	.incbin "baserom.gba", 0xD5DE68, 0x0000013

gUnk_08D5DE7B:: @ 08D5DE7B
	.incbin "baserom.gba", 0xD5DE7B, 0x0000011

gUnk_08D5DE8C:: @ 08D5DE8C
	.incbin "baserom.gba", 0xD5DE8C, 0x0000010

gUnk_08D5DE9C:: @ 08D5DE9C
	.incbin "baserom.gba", 0xD5DE9C, 0x0000010

gUnk_08D5DEAC:: @ 08D5DEAC
	.incbin "baserom.gba", 0xD5DEAC, 0x000000C

gUnk_08D5DEB8:: @ 08D5DEB8
	.incbin "baserom.gba", 0xD5DEB8, 0x0000010

gUnk_08D5DEC8:: @ 08D5DEC8
	.incbin "baserom.gba", 0xD5DEC8, 0x000000C

gUnk_08D5DED4:: @ 08D5DED4
	.incbin "baserom.gba", 0xD5DED4, 0x0000010

gUnk_08D5DEE4:: @ 08D5DEE4
	.incbin "baserom.gba", 0xD5DEE4, 0x000000C

gUnk_08D5DEF0:: @ 08D5DEF0
	.incbin "baserom.gba", 0xD5DEF0, 0x0000035

gUnk_08D5DF25:: @ 08D5DF25
	.incbin "baserom.gba", 0xD5DF25, 0x0000037

gUnk_08D5DF5C:: @ 08D5DF5C
	.incbin "baserom.gba", 0xD5DF5C, 0x0000010

gUnk_08D5DF6C:: @ 08D5DF6C
	.incbin "baserom.gba", 0xD5DF6C, 0x0000014

gUnk_08D5DF80:: @ 08D5DF80
	.incbin "baserom.gba", 0xD5DF80, 0x000000C

gUnk_08D5DF8C:: @ 08D5DF8C
	.incbin "baserom.gba", 0xD5DF8C, 0x000001F

gUnk_08D5DFAB:: @ 08D5DFAB
	.incbin "baserom.gba", 0xD5DFAB, 0x0000014

gUnk_08D5DFBF:: @ 08D5DFBF
	.incbin "baserom.gba", 0xD5DFBF, 0x0000011

gUnk_08D5DFD0:: @ 08D5DFD0
	.incbin "baserom.gba", 0xD5DFD0, 0x0000010

gUnk_08D5DFE0:: @ 08D5DFE0
	.incbin "baserom.gba", 0xD5DFE0, 0x0000018

gUnk_08D5DFF8:: @ 08D5DFF8
	.incbin "baserom.gba", 0xD5DFF8, 0x0000014

gUnk_08D5E00C:: @ 08D5E00C
	.incbin "baserom.gba", 0xD5E00C, 0x000000C

gUnk_08D5E018:: @ 08D5E018
	.incbin "baserom.gba", 0xD5E018, 0x000000F

gUnk_08D5E027:: @ 08D5E027
	.incbin "baserom.gba", 0xD5E027, 0x000000E

gUnk_08D5E035:: @ 08D5E035
	.incbin "baserom.gba", 0xD5E035, 0x000000F

gUnk_08D5E044:: @ 08D5E044
	.incbin "baserom.gba", 0xD5E044, 0x0000014

gUnk_08D5E058:: @ 08D5E058
	.incbin "baserom.gba", 0xD5E058, 0x0000034

gUnk_08D5E08C:: @ 08D5E08C
	.incbin "baserom.gba", 0xD5E08C, 0x0000032

gUnk_08D5E0BE:: @ 08D5E0BE
	.incbin "baserom.gba", 0xD5E0BE, 0x000002D

gUnk_08D5E0EB:: @ 08D5E0EB
	.incbin "baserom.gba", 0xD5E0EB, 0x000014D

gUnk_08D5E238:: @ 08D5E238
	.incbin "baserom.gba", 0xD5E238, 0x0000018

gUnk_08D5E250:: @ 08D5E250
	.incbin "baserom.gba", 0xD5E250, 0x000000F

gUnk_08D5E25F:: @ 08D5E25F
	.incbin "baserom.gba", 0xD5E25F, 0x0000011

gUnk_08D5E270:: @ 08D5E270
	.incbin "baserom.gba", 0xD5E270, 0x0000010

gUnk_08D5E280:: @ 08D5E280
	.incbin "baserom.gba", 0xD5E280, 0x0000014

gUnk_08D5E294:: @ 08D5E294
	.incbin "baserom.gba", 0xD5E294, 0x000000C

gUnk_08D5E2A0:: @ 08D5E2A0
	.incbin "baserom.gba", 0xD5E2A0, 0x0000018

gUnk_08D5E2B8:: @ 08D5E2B8
	.incbin "baserom.gba", 0xD5E2B8, 0x000000C

gUnk_08D5E2C4:: @ 08D5E2C4
	.incbin "baserom.gba", 0xD5E2C4, 0x0000018

gUnk_08D5E2DC:: @ 08D5E2DC
	.incbin "baserom.gba", 0xD5E2DC, 0x000000C

gUnk_08D5E2E8:: @ 08D5E2E8
	.incbin "baserom.gba", 0xD5E2E8, 0x0000028

gUnk_08D5E310:: @ 08D5E310
	.incbin "baserom.gba", 0xD5E310, 0x000000C

gUnk_08D5E31C:: @ 08D5E31C
	.incbin "baserom.gba", 0xD5E31C, 0x0000014

gUnk_08D5E330:: @ 08D5E330
	.incbin "baserom.gba", 0xD5E330, 0x000000C

gUnk_08D5E33C:: @ 08D5E33C
	.incbin "baserom.gba", 0xD5E33C, 0x0000014

gUnk_08D5E350:: @ 08D5E350
	.incbin "baserom.gba", 0xD5E350, 0x000000C

gUnk_08D5E35C:: @ 08D5E35C
	.incbin "baserom.gba", 0xD5E35C, 0x0000018

gUnk_08D5E374:: @ 08D5E374
	.incbin "baserom.gba", 0xD5E374, 0x000000C

gUnk_08D5E380:: @ 08D5E380
	.incbin "baserom.gba", 0xD5E380, 0x0000018

gUnk_08D5E398:: @ 08D5E398
	.incbin "baserom.gba", 0xD5E398, 0x000000C

gUnk_08D5E3A4:: @ 08D5E3A4
	.incbin "baserom.gba", 0xD5E3A4, 0x0000014

gUnk_08D5E3B8:: @ 08D5E3B8
	.incbin "baserom.gba", 0xD5E3B8, 0x000000C

gUnk_08D5E3C4:: @ 08D5E3C4
	.incbin "baserom.gba", 0xD5E3C4, 0x0000016

gUnk_08D5E3DA:: @ 08D5E3DA
	.incbin "baserom.gba", 0xD5E3DA, 0x0000015

gUnk_08D5E3EF:: @ 08D5E3EF
	.incbin "baserom.gba", 0xD5E3EF, 0x000001D

gUnk_08D5E40C:: @ 08D5E40C
	.incbin "baserom.gba", 0xD5E40C, 0x0000014

gUnk_08D5E420:: @ 08D5E420
	.incbin "baserom.gba", 0xD5E420, 0x0000025

gUnk_08D5E445:: @ 08D5E445
	.incbin "baserom.gba", 0xD5E445, 0x000001A

gUnk_08D5E45F:: @ 08D5E45F
	.incbin "baserom.gba", 0xD5E45F, 0x0000018

gUnk_08D5E477:: @ 08D5E477
	.incbin "baserom.gba", 0xD5E477, 0x0000021

gUnk_08D5E498:: @ 08D5E498
	.incbin "baserom.gba", 0xD5E498, 0x0000018

gUnk_08D5E4B0:: @ 08D5E4B0
	.incbin "baserom.gba", 0xD5E4B0, 0x0000014

gUnk_08D5E4C4:: @ 08D5E4C4
	.incbin "baserom.gba", 0xD5E4C4, 0x000000C

gUnk_08D5E4D0:: @ 08D5E4D0
	.incbin "baserom.gba", 0xD5E4D0, 0x0000018

gUnk_08D5E4E8:: @ 08D5E4E8
	.incbin "baserom.gba", 0xD5E4E8, 0x000000C

gUnk_08D5E4F4:: @ 08D5E4F4
	.incbin "baserom.gba", 0xD5E4F4, 0x0000010

gUnk_08D5E504:: @ 08D5E504
	.incbin "baserom.gba", 0xD5E504, 0x000000C

gUnk_08D5E510:: @ 08D5E510
	.incbin "baserom.gba", 0xD5E510, 0x0000088

gUnk_08D5E598:: @ 08D5E598
	.incbin "baserom.gba", 0xD5E598, 0x0000080

gUnk_08D5E618:: @ 08D5E618
	.incbin "baserom.gba", 0xD5E618, 0x0000010

gUnk_08D5E628:: @ 08D5E628
	.incbin "baserom.gba", 0xD5E628, 0x0000034

gUnk_08D5E65C:: @ 08D5E65C
	.incbin "baserom.gba", 0xD5E65C, 0x000000C

gUnk_08D5E668:: @ 08D5E668
	.incbin "baserom.gba", 0xD5E668, 0x0000018

gUnk_08D5E680:: @ 08D5E680
	.incbin "baserom.gba", 0xD5E680, 0x000000C

gUnk_08D5E68C:: @ 08D5E68C
	.incbin "baserom.gba", 0xD5E68C, 0x0000014

gUnk_08D5E6A0:: @ 08D5E6A0
	.incbin "baserom.gba", 0xD5E6A0, 0x000000C

gUnk_08D5E6AC:: @ 08D5E6AC
	.incbin "baserom.gba", 0xD5E6AC, 0x0000014

gUnk_08D5E6C0:: @ 08D5E6C0
	.incbin "baserom.gba", 0xD5E6C0, 0x000000C

gUnk_08D5E6CC:: @ 08D5E6CC
	.incbin "baserom.gba", 0xD5E6CC, 0x000001D

gUnk_08D5E6E9:: @ 08D5E6E9
	.incbin "baserom.gba", 0xD5E6E9, 0x0000028

gUnk_08D5E711:: @ 08D5E711
	.incbin "baserom.gba", 0xD5E711, 0x000001F

gUnk_08D5E730:: @ 08D5E730
	.incbin "baserom.gba", 0xD5E730, 0x0000014

gUnk_08D5E744:: @ 08D5E744
	.incbin "baserom.gba", 0xD5E744, 0x00000F1

gUnk_08D5E835:: @ 08D5E835
	.incbin "baserom.gba", 0xD5E835, 0x000001F

gUnk_08D5E854:: @ 08D5E854
	.incbin "baserom.gba", 0xD5E854, 0x0000010

gUnk_08D5E864:: @ 08D5E864
	.incbin "baserom.gba", 0xD5E864, 0x00000D1

gUnk_08D5E935:: @ 08D5E935
	.incbin "baserom.gba", 0xD5E935, 0x00000D3

gUnk_08D5EA08:: @ 08D5EA08
	.incbin "baserom.gba", 0xD5EA08, 0x0000010

gUnk_08D5EA18:: @ 08D5EA18
	.incbin "baserom.gba", 0xD5EA18, 0x0000014

gUnk_08D5EA2C:: @ 08D5EA2C
	.incbin "baserom.gba", 0xD5EA2C, 0x000000C

gUnk_08D5EA38:: @ 08D5EA38
	.incbin "baserom.gba", 0xD5EA38, 0x000000F

gUnk_08D5EA47:: @ 08D5EA47
	.incbin "baserom.gba", 0xD5EA47, 0x000000F

gUnk_08D5EA56:: @ 08D5EA56
	.incbin "baserom.gba", 0xD5EA56, 0x0000012

gUnk_08D5EA68:: @ 08D5EA68
	.incbin "baserom.gba", 0xD5EA68, 0x0000014

gUnk_08D5EA7C:: @ 08D5EA7C
	.incbin "baserom.gba", 0xD5EA7C, 0x000009C

gUnk_08D5EB18:: @ 08D5EB18
	.incbin "baserom.gba", 0xD5EB18, 0x000000C

gUnk_08D5EB24:: @ 08D5EB24
	.incbin "baserom.gba", 0xD5EB24, 0x0000014

gUnk_08D5EB38:: @ 08D5EB38
	.incbin "baserom.gba", 0xD5EB38, 0x000000C

gUnk_08D5EB44:: @ 08D5EB44
	.incbin "baserom.gba", 0xD5EB44, 0x0000014

gUnk_08D5EB58:: @ 08D5EB58
	.incbin "baserom.gba", 0xD5EB58, 0x000000C

gUnk_08D5EB64:: @ 08D5EB64
	.incbin "baserom.gba", 0xD5EB64, 0x0000051

gUnk_08D5EBB5:: @ 08D5EBB5
	.incbin "baserom.gba", 0xD5EBB5, 0x0000022

gUnk_08D5EBD7:: @ 08D5EBD7
	.incbin "baserom.gba", 0xD5EBD7, 0x0000089

gUnk_08D5EC60:: @ 08D5EC60
	.incbin "baserom.gba", 0xD5EC60, 0x0000014

gUnk_08D5EC74:: @ 08D5EC74
	.incbin "baserom.gba", 0xD5EC74, 0x0000040

gUnk_08D5ECB4:: @ 08D5ECB4
	.incbin "baserom.gba", 0xD5ECB4, 0x000000C

gUnk_08D5ECC0:: @ 08D5ECC0
	.incbin "baserom.gba", 0xD5ECC0, 0x000003C

gUnk_08D5ECFC:: @ 08D5ECFC
	.incbin "baserom.gba", 0xD5ECFC, 0x000000C

gUnk_08D5ED08:: @ 08D5ED08
	.incbin "baserom.gba", 0xD5ED08, 0x000002E

gUnk_08D5ED36:: @ 08D5ED36
	.incbin "baserom.gba", 0xD5ED36, 0x000002E

gUnk_08D5ED64:: @ 08D5ED64
	.incbin "baserom.gba", 0xD5ED64, 0x0000010

gUnk_08D5ED74:: @ 08D5ED74
	.incbin "baserom.gba", 0xD5ED74, 0x0000014

gUnk_08D5ED88:: @ 08D5ED88
	.incbin "baserom.gba", 0xD5ED88, 0x0000018

gUnk_08D5EDA0:: @ 08D5EDA0
	.incbin "baserom.gba", 0xD5EDA0, 0x0000010

gUnk_08D5EDB0:: @ 08D5EDB0
	.incbin "baserom.gba", 0xD5EDB0, 0x0000014

gUnk_08D5EDC4:: @ 08D5EDC4
	.incbin "baserom.gba", 0xD5EDC4, 0x000000C

gUnk_08D5EDD0:: @ 08D5EDD0
	.incbin "baserom.gba", 0xD5EDD0, 0x0000014

gUnk_08D5EDE4:: @ 08D5EDE4
	.incbin "baserom.gba", 0xD5EDE4, 0x000000C

gUnk_08D5EDF0:: @ 08D5EDF0
	.incbin "baserom.gba", 0xD5EDF0, 0x0000014

gUnk_08D5EE04:: @ 08D5EE04
	.incbin "baserom.gba", 0xD5EE04, 0x000000C

gUnk_08D5EE10:: @ 08D5EE10
	.incbin "baserom.gba", 0xD5EE10, 0x0000023

gUnk_08D5EE33:: @ 08D5EE33
	.incbin "baserom.gba", 0xD5EE33, 0x0000020

gUnk_08D5EE53:: @ 08D5EE53
	.incbin "baserom.gba", 0xD5EE53, 0x000001C

gUnk_08D5EE6F:: @ 08D5EE6F
	.incbin "baserom.gba", 0xD5EE6F, 0x00001B9

gUnk_08D5F028:: @ 08D5F028
	.incbin "baserom.gba", 0xD5F028, 0x0000018

gUnk_08D5F040:: @ 08D5F040
	.incbin "baserom.gba", 0xD5F040, 0x00000D4

gUnk_08D5F114:: @ 08D5F114
	.incbin "baserom.gba", 0xD5F114, 0x000000C

gUnk_08D5F120:: @ 08D5F120
	.incbin "baserom.gba", 0xD5F120, 0x0000230

gUnk_08D5F350:: @ 08D5F350
	.incbin "baserom.gba", 0xD5F350, 0x000000C

gUnk_08D5F35C:: @ 08D5F35C
	.incbin "baserom.gba", 0xD5F35C, 0x0000010

gUnk_08D5F36C:: @ 08D5F36C
	.incbin "baserom.gba", 0xD5F36C, 0x000000C

gUnk_08D5F378:: @ 08D5F378
	.incbin "baserom.gba", 0xD5F378, 0x0000024

gUnk_08D5F39C:: @ 08D5F39C
	.incbin "baserom.gba", 0xD5F39C, 0x000000C

gUnk_08D5F3A8:: @ 08D5F3A8
	.incbin "baserom.gba", 0xD5F3A8, 0x000000F

gUnk_08D5F3B7:: @ 08D5F3B7
	.incbin "baserom.gba", 0xD5F3B7, 0x0000015

gUnk_08D5F3CC:: @ 08D5F3CC
	.incbin "baserom.gba", 0xD5F3CC, 0x0000010

gUnk_08D5F3DC:: @ 08D5F3DC
	.incbin "baserom.gba", 0xD5F3DC, 0x0000068

gUnk_08D5F444:: @ 08D5F444
	.incbin "baserom.gba", 0xD5F444, 0x000000C

gUnk_08D5F450:: @ 08D5F450
	.incbin "baserom.gba", 0xD5F450, 0x0000014

gUnk_08D5F464:: @ 08D5F464
	.incbin "baserom.gba", 0xD5F464, 0x000000C

gUnk_08D5F470:: @ 08D5F470
	.incbin "baserom.gba", 0xD5F470, 0x0000014

gUnk_08D5F484:: @ 08D5F484
	.incbin "baserom.gba", 0xD5F484, 0x000000C

gUnk_08D5F490:: @ 08D5F490
	.incbin "baserom.gba", 0xD5F490, 0x0000010

gUnk_08D5F4A0:: @ 08D5F4A0
	.incbin "baserom.gba", 0xD5F4A0, 0x000000F

gUnk_08D5F4AF:: @ 08D5F4AF
	.incbin "baserom.gba", 0xD5F4AF, 0x0000011

gUnk_08D5F4C0:: @ 08D5F4C0
	.incbin "baserom.gba", 0xD5F4C0, 0x0000014

gUnk_08D5F4D4:: @ 08D5F4D4
	.incbin "baserom.gba", 0xD5F4D4, 0x0000010

gUnk_08D5F4E4:: @ 08D5F4E4
	.incbin "baserom.gba", 0xD5F4E4, 0x000000C

gUnk_08D5F4F0:: @ 08D5F4F0
	.incbin "baserom.gba", 0xD5F4F0, 0x0000014

gUnk_08D5F504:: @ 08D5F504
	.incbin "baserom.gba", 0xD5F504, 0x000000C

gUnk_08D5F510:: @ 08D5F510
	.incbin "baserom.gba", 0xD5F510, 0x0000010

gUnk_08D5F520:: @ 08D5F520
	.incbin "baserom.gba", 0xD5F520, 0x000000C

gUnk_08D5F52C:: @ 08D5F52C
	.incbin "baserom.gba", 0xD5F52C, 0x0000016

gUnk_08D5F542:: @ 08D5F542
	.incbin "baserom.gba", 0xD5F542, 0x0000015

gUnk_08D5F557:: @ 08D5F557
	.incbin "baserom.gba", 0xD5F557, 0x000001D

gUnk_08D5F574:: @ 08D5F574
	.incbin "baserom.gba", 0xD5F574, 0x0000014

gUnk_08D5F588:: @ 08D5F588
	.incbin "baserom.gba", 0xD5F588, 0x000000F

gUnk_08D5F597:: @ 08D5F597
	.incbin "baserom.gba", 0xD5F597, 0x0000011

gUnk_08D5F5A8:: @ 08D5F5A8
	.incbin "baserom.gba", 0xD5F5A8, 0x0000010

gUnk_08D5F5B8:: @ 08D5F5B8
	.incbin "baserom.gba", 0xD5F5B8, 0x000004E

gUnk_08D5F606:: @ 08D5F606
	.incbin "baserom.gba", 0xD5F606, 0x0000052

gUnk_08D5F658:: @ 08D5F658
	.incbin "baserom.gba", 0xD5F658, 0x0000010

gUnk_08D5F668:: @ 08D5F668
	.incbin "baserom.gba", 0xD5F668, 0x0000020

gUnk_08D5F688:: @ 08D5F688
	.incbin "baserom.gba", 0xD5F688, 0x000000C

gUnk_08D5F694:: @ 08D5F694
	.incbin "baserom.gba", 0xD5F694, 0x0000014

gUnk_08D5F6A8:: @ 08D5F6A8
	.incbin "baserom.gba", 0xD5F6A8, 0x000000C

gUnk_08D5F6B4:: @ 08D5F6B4
	.incbin "baserom.gba", 0xD5F6B4, 0x000000F

gUnk_08D5F6C3:: @ 08D5F6C3
	.incbin "baserom.gba", 0xD5F6C3, 0x0000011

gUnk_08D5F6D4:: @ 08D5F6D4
	.incbin "baserom.gba", 0xD5F6D4, 0x0000010

gUnk_08D5F6E4:: @ 08D5F6E4
	.incbin "baserom.gba", 0xD5F6E4, 0x0000020

gUnk_08D5F704:: @ 08D5F704
	.incbin "baserom.gba", 0xD5F704, 0x000000C

gUnk_08D5F710:: @ 08D5F710
	.incbin "baserom.gba", 0xD5F710, 0x0000014

gUnk_08D5F724:: @ 08D5F724
	.incbin "baserom.gba", 0xD5F724, 0x000000C

gUnk_08D5F730:: @ 08D5F730
	.incbin "baserom.gba", 0xD5F730, 0x0000028

gUnk_08D5F758:: @ 08D5F758
	.incbin "baserom.gba", 0xD5F758, 0x000000C

gUnk_08D5F764:: @ 08D5F764
	.incbin "baserom.gba", 0xD5F764, 0x0000014

gUnk_08D5F778:: @ 08D5F778
	.incbin "baserom.gba", 0xD5F778, 0x000000C

gUnk_08D5F784:: @ 08D5F784
	.incbin "baserom.gba", 0xD5F784, 0x0000048

gUnk_08D5F7CC:: @ 08D5F7CC
	.incbin "baserom.gba", 0xD5F7CC, 0x000000C

gUnk_08D5F7D8:: @ 08D5F7D8
	.incbin "baserom.gba", 0xD5F7D8, 0x0000011

gUnk_08D5F7E9:: @ 08D5F7E9
	.incbin "baserom.gba", 0xD5F7E9, 0x0000017

gUnk_08D5F800:: @ 08D5F800
	.incbin "baserom.gba", 0xD5F800, 0x0000010

gUnk_08D5F810:: @ 08D5F810
	.incbin "baserom.gba", 0xD5F810, 0x000009C

gUnk_08D5F8AC:: @ 08D5F8AC
	.incbin "baserom.gba", 0xD5F8AC, 0x000000C

gUnk_08D5F8B8:: @ 08D5F8B8
	.incbin "baserom.gba", 0xD5F8B8, 0x0000040

gUnk_08D5F8F8:: @ 08D5F8F8
	.incbin "baserom.gba", 0xD5F8F8, 0x000000C

gUnk_08D5F904:: @ 08D5F904
	.incbin "baserom.gba", 0xD5F904, 0x0000034

gUnk_08D5F938:: @ 08D5F938
	.incbin "baserom.gba", 0xD5F938, 0x000000C

gUnk_08D5F944:: @ 08D5F944
	.incbin "baserom.gba", 0xD5F944, 0x000000D

gUnk_08D5F951:: @ 08D5F951
	.incbin "baserom.gba", 0xD5F951, 0x000001B

gUnk_08D5F96C:: @ 08D5F96C
	.incbin "baserom.gba", 0xD5F96C, 0x0000010

gUnk_08D5F97C:: @ 08D5F97C
	.incbin "baserom.gba", 0xD5F97C, 0x0000014

gUnk_08D5F990:: @ 08D5F990
	.incbin "baserom.gba", 0xD5F990, 0x000000C

gUnk_08D5F99C:: @ 08D5F99C
	.incbin "baserom.gba", 0xD5F99C, 0x0000014

gUnk_08D5F9B0:: @ 08D5F9B0
	.incbin "baserom.gba", 0xD5F9B0, 0x000000C

gUnk_08D5F9BC:: @ 08D5F9BC
	.incbin "baserom.gba", 0xD5F9BC, 0x0000014

gUnk_08D5F9D0:: @ 08D5F9D0
	.incbin "baserom.gba", 0xD5F9D0, 0x000000C

gUnk_08D5F9DC:: @ 08D5F9DC
	.incbin "baserom.gba", 0xD5F9DC, 0x0000027

gUnk_08D5FA03:: @ 08D5FA03
	.incbin "baserom.gba", 0xD5FA03, 0x0000026

gUnk_08D5FA29:: @ 08D5FA29
	.incbin "baserom.gba", 0xD5FA29, 0x0000027

gUnk_08D5FA50:: @ 08D5FA50
	.incbin "baserom.gba", 0xD5FA50, 0x0000014

gUnk_08D5FA64:: @ 08D5FA64
	.incbin "baserom.gba", 0xD5FA64, 0x0000014

gUnk_08D5FA78:: @ 08D5FA78
	.incbin "baserom.gba", 0xD5FA78, 0x000000C

gUnk_08D5FA84:: @ 08D5FA84
	.incbin "baserom.gba", 0xD5FA84, 0x000000F

gUnk_08D5FA93:: @ 08D5FA93
	.incbin "baserom.gba", 0xD5FA93, 0x0000011

gUnk_08D5FAA4:: @ 08D5FAA4
	.incbin "baserom.gba", 0xD5FAA4, 0x0000010

gUnk_08D5FAB4:: @ 08D5FAB4
	.incbin "baserom.gba", 0xD5FAB4, 0x0000274

gUnk_08D5FD28:: @ 08D5FD28
	.incbin "baserom.gba", 0xD5FD28, 0x000000C

gUnk_08D5FD34:: @ 08D5FD34
	.incbin "baserom.gba", 0xD5FD34, 0x000002D

gUnk_08D5FD61:: @ 08D5FD61
	.incbin "baserom.gba", 0xD5FD61, 0x000002B

gUnk_08D5FD8C:: @ 08D5FD8C songs end here
	.incbin "baserom.gba", 0xD5FD8C, 0x0000010
*/