	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gRainbowRoute1Palette:: @ 08A4D780
	.incbin "graphics/rooms/backgrounds/rainbow_route_1.agbpal"

gRainbowRoute1Tileset:: @ 08A4D880
	.incbin "graphics/rooms/backgrounds/rainbow_route_1.4bpp.lz"

gRainbowRoute1Tilemap:: @ 08A54818
	.incbin "graphics/rooms/backgrounds/rainbow_route_1.tilemap"

gRainbowRoute1RoomBackgroundTiles:: @ 08A54F20
	.incbin "baserom.gba", 0xA54F20, 0x0000020

gCarrotCastle2Palette:: @ 08A54F40
	.incbin "graphics/rooms/backgrounds/carrot_castle_2.agbpal"

gCarrotCastle2Tileset:: @ 08A55040
	.incbin "graphics/rooms/backgrounds/carrot_castle_2.4bpp.lz"

gCarrotCastle2Tilemap:: @ 08A58C8C
	.incbin "graphics/rooms/backgrounds/carrot_castle_2.tilemap"

gUnk_08A59394:: @ 08A59394
	.incbin "baserom.gba", 0xA59394, 0x0000020

gMoonlightMansion2Palette:: @ 08A593B4
	.incbin "graphics/rooms/backgrounds/moonlight_mansion_2.agbpal"

gMoonlightMansion2Tileset:: @ 08A594B4
	.incbin "graphics/rooms/backgrounds/moonlight_mansion_2.4bpp.lz"

gMoonlightMansion2Tilemap:: @ 08A5FC1C
	.incbin "graphics/rooms/backgrounds/moonlight_mansion_2.tilemap"

gUnk_08A60324:: @ 08A60324
	.incbin "baserom.gba", 0xA60324, 0x0000020

gOliveOcean1Palette:: @ 08A60344
	.incbin "graphics/rooms/backgrounds/olive_ocean_1.agbpal"

gOliveOcean1Tileset:: @ 08A60444
	.incbin "graphics/rooms/backgrounds/olive_ocean_1.4bpp.lz"

gOliveOcean1Tilemap:: @ 08A65148
	.incbin "graphics/rooms/backgrounds/olive_ocean_1.tilemap"

gUnk_08A65850:: @ 08A65850
	.incbin "baserom.gba", 0xA65850, 0x0000020

gMustardMountain1Palette:: @ 08A65870
	.incbin "graphics/rooms/backgrounds/mustard_mountain_1.agbpal"

gMustardMountain1Tileset:: @ 08A65970
	.incbin "graphics/rooms/backgrounds/mustard_mountain_1.4bpp.lz"

gMustardMountain1Tilemap:: @ 08A6BF94
	.incbin "graphics/rooms/backgrounds/mustard_mountain_1.tilemap"

gUnk_08A6C69C:: @ 08A6C69C
	.incbin "baserom.gba", 0xA6C69C, 0x0000020

gCarrotCastle1Palette:: @ 08A6C6BC
	.incbin "graphics/rooms/backgrounds/carrot_castle_1.agbpal"

gCarrotCastle1Tileset:: @ 08A6C7BC
	.incbin "graphics/rooms/backgrounds/carrot_castle_1.4bpp.lz"

gCarrotCastle1Tilemap:: @ 08A728E8
	.incbin "graphics/rooms/backgrounds/carrot_castle_1.tilemap"

gUnk_08A72FF0:: @ 08A72FF0
	.incbin "baserom.gba", 0xA72FF0, 0x0000020

gPeppermintPalace1Palette:: @ 08A73010
	.incbin "graphics/rooms/backgrounds/peppermint_palace_1.agbpal"

gPeppermintPalace1Tileset:: @ 08A73110
	.incbin "graphics/rooms/backgrounds/peppermint_palace_1.4bpp.lz"

gPeppermintPalace1Tilemap:: @ 08A78048
	.incbin "graphics/rooms/backgrounds/peppermint_palace_1.tilemap"

gUnk_08A78750:: @ 08A78750
	.incbin "baserom.gba", 0xA78750, 0x0000020

gPeppermintPalace2Palette:: @ 08A78770
	.incbin "graphics/rooms/backgrounds/peppermint_palace_2.agbpal"

gPeppermintPalace2Tileset:: @ 08A78870
	.incbin "graphics/rooms/backgrounds/peppermint_palace_2.4bpp.lz"

gPeppermintPalace2Tilemap:: @ 08A7D9F8
	.incbin "graphics/rooms/backgrounds/peppermint_palace_2.tilemap"

gUnk_08A7E100:: @ 08A7E100
	.incbin "baserom.gba", 0xA7E100, 0x0000020

gPeppermintPalace3Palette:: @ 08A7E120
	.incbin "graphics/rooms/backgrounds/peppermint_palace_3.agbpal"

gPeppermintPalace3Tileset:: @ 08A7E220
	.incbin "graphics/rooms/backgrounds/peppermint_palace_3.4bpp.lz"

gPeppermintPalace3Tilemap:: @ 08A83E8C
	.incbin "graphics/rooms/backgrounds/peppermint_palace_3.tilemap"

gUnk_08A84594:: @ 08A84594
	.incbin "baserom.gba", 0xA84594, 0x0000020

gPeppermintPalace4Palette:: @ 08A845B4
	.incbin "graphics/rooms/backgrounds/peppermint_palace_4.agbpal"

gPeppermintPalace4Tileset:: @ 08A846B4
	.incbin "graphics/rooms/backgrounds/peppermint_palace_4.4bpp.lz"

gPeppermintPalace4Tilemap:: @ 08A87FF8
	.incbin "graphics/rooms/backgrounds/peppermint_palace_4.tilemap"

gUnk_08A88700:: @ 08A88700
	.incbin "baserom.gba", 0xA88700, 0x0000020

gMustardMountain2Palette:: @ 08A88720
	.incbin "graphics/rooms/backgrounds/mustard_mountain_2.agbpal"

gMustardMountain2Tileset:: @ 08A65870 
	.incbin "graphics/rooms/backgrounds/mustard_mountain_2.4bpp.lz"

gMustardMountain2Tilemap:: @ 08A8E23C
	.incbin "graphics/rooms/backgrounds/mustard_mountain_2.tilemap"

gUnk_08A8E944:: @ 08A8E944
	.incbin "baserom.gba", 0xA8E944, 0x0000020

gMustardMountain3Palette:: @ 08A8E964
	.incbin "graphics/rooms/backgrounds/mustard_mountain_3.agbpal"

gMustardMountain3Tileset:: @ 08A8EA64 
	.incbin "graphics/rooms/backgrounds/mustard_mountain_3.4bpp.lz"

gMustardMountain3Tilemap:: @ 08A94EA0
	.incbin "graphics/rooms/backgrounds/mustard_mountain_3.tilemap"

gUnk_08A955A8:: @ 08A955A8
	.incbin "baserom.gba", 0xA955A8, 0x0000020

gCandyConstellation3Palette:: @ 08A955C8
	.incbin "graphics/rooms/backgrounds/candy_constellation_3.agbpal"

gCandyConstellation3Tileset:: @ 08A956C8
	.incbin "graphics/rooms/backgrounds/candy_constellation_3.4bpp.lz"

gCandyConstellation3Tilemap:: @ 08A9A208
	.incbin "graphics/rooms/backgrounds/candy_constellation_3.tilemap"

gUnk_08A9A910:: @ 08A9A910
	.incbin "baserom.gba", 0xA9A910, 0x0000020

gCandyConstellation1Palette:: @ 08A9A930
	.incbin "graphics/rooms/backgrounds/candy_constellation_1.agbpal"

gCandyConstellation1Tileset:: @ 08A9AA30
	.incbin "graphics/rooms/backgrounds/candy_constellation_1.4bpp.lz"

gCandyConstellation1Tilemap:: @ 08A9E590
	.incbin "graphics/rooms/backgrounds/candy_constellation_1.tilemap"

gUnk_08A9EC98:: @ 08A9EC98
	.incbin "baserom.gba", 0xA9EC98, 0x0000020

gCandyConstellation2Palette:: @ 08A9ECB8
	.incbin "graphics/rooms/backgrounds/candy_constellation_2.agbpal"

gCandyConstellation2Tileset:: @ 08A9EDB8
	.incbin "graphics/rooms/backgrounds/candy_constellation_2.4bpp.lz"

gCandyConstellation2Tilemap:: @ 08AA2CF0
	.incbin "graphics/rooms/backgrounds/candy_constellation_2.tilemap"

gUnk_08AA33F8:: @ 08AA33F8
	.incbin "baserom.gba", 0xAA33F8, 0x0000020

gCabbageCavern2Palette:: @ 08AA3418
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_2.agbpal"

gCabbageCavern2Tileset:: @ 08AA3518
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_2.4bpp.lz"

gCabbageCavern2Tilemap:: @ 08AA8B80
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_2.tilemap"

gUnk_08AA9288:: @ 08AA9288
	.incbin "baserom.gba", 0xAA9288, 0x0000020

gRadishRuins3Palette:: @ 08AA92A8
	.incbin "graphics/rooms/backgrounds/radish_ruins_3.agbpal"

gRadishRuins3Tileset:: @ 08AA93A8
	.incbin "graphics/rooms/backgrounds/radish_ruins_3.4bpp.lz"

gRadishRuins3Tilemap:: @ 08AAE160
	.incbin "graphics/rooms/backgrounds/radish_ruins_3.tilemap"

gUnk_08AAE868:: @ 08AAE868
	.incbin "baserom.gba", 0xAAE868, 0x0000020

gCabbageCavern3Palette:: @ 08AAE888
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_3.agbpal"

gCabbageCavern3Tileset:: @ 08AAE988
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_3.4bpp.lz"

gCabbageCavern3Tilemap:: @ 08AB3F18
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_3.tilemap"

gUnk_08AB4620:: @ 08AB4620
	.incbin "baserom.gba", 0xAB4620, 0x0000020

gCabbageCavern1Palette:: @ 08AB4640
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_1.agbpal"

gCabbageCavern1Tileset:: @ 08AB4740
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_1.4bpp.lz"

gCabbageCavern1Tilemap:: @ 08AB9AF0
	.incbin "graphics/rooms/backgrounds/cabbage_cavern_1.tilemap"

gUnk_08ABA1F8:: @ 08ABA1F8
	.incbin "baserom.gba", 0xABA1F8, 0x0000020

gRadishRuins1Palette:: @ 08ABA218
	.incbin "graphics/rooms/backgrounds/radish_ruins_1.agbpal"

gRadishRuins1Tileset:: @ 08ABA318
	.incbin "graphics/rooms/backgrounds/radish_ruins_1.4bpp.lz"

gRadishRuins1Tilemap:: @ 08ABF8A4
	.incbin "graphics/rooms/backgrounds/radish_ruins_1.tilemap"

gUnk_08ABFFAC:: @ 08ABFFAC
	.incbin "baserom.gba", 0xABFFAC, 0x0000020

gRadishRuins2Palette:: @ 08ABFFCC
	.incbin "graphics/rooms/backgrounds/radish_ruins_2.agbpal"

gRadishRuins2Tileset:: @ 08AC00CC
	.incbin "graphics/rooms/backgrounds/radish_ruins_2.4bpp.lz"

gRadishRuins2Tilemap:: @ 08AC554C
	.incbin "graphics/rooms/backgrounds/radish_ruins_2.tilemap"

gUnk_08AC5C54:: @ 08AC5C54
	.incbin "baserom.gba", 0xAC5C54, 0x0000020

gUnusedBackgroundPalette:: @ 08AC5C74
	.incbin "graphics/rooms/backgrounds/unused_background.agbpal"

gUnusedBackgroundTileset:: @ 08AC5D74
	.incbin "graphics/rooms/backgrounds/unused_background.4bpp.lz"

gUnusedBackgroundTilemap:: @ 08AC6C78
	.incbin "graphics/rooms/backgrounds/unused_background.tilemap"

gUnk_08AC7380:: @ 08AC7380
	.incbin "baserom.gba", 0xAC7380, 0x0000020

gCarrotCastle3Palette:: @ 08AC73A0
	.incbin "graphics/rooms/backgrounds/carrot_castle_3.agbpal"

gCarrotCastle3Tileset:: @ 08AC74A0
	.incbin "graphics/rooms/backgrounds/carrot_castle_3.4bpp.lz"

gCarrotCastle3Tilemap:: @ 08ACCFD8
	.incbin "graphics/rooms/backgrounds/carrot_castle_3.tilemap"

gUnk_08ACD6E0:: @ 08ACD6E0
	.incbin "baserom.gba", 0xACD6E0, 0x0000020

gMoonlightMansion3Palette:: @ 08ACD700
	.incbin "graphics/rooms/backgrounds/moonlight_mansion_3.agbpal"

gMoonlightMansion3Tileset:: @ 08ACD800
	.incbin "graphics/rooms/backgrounds/moonlight_mansion_3.4bpp.lz"

gMoonlightMansion3Tilemap:: @ 08AD2F54
	.incbin "graphics/rooms/backgrounds/moonlight_mansion_3.tilemap"

gUnk_08AD365C:: @ 08AD365C
	.incbin "baserom.gba", 0xAD365C, 0x0000020

gCarrotCastle4Palette:: @ 08AD367C
	.incbin "graphics/rooms/backgrounds/carrot_castle_4.agbpal"

gCarrotCastle4Tileset:: @ 08AD377C
	.incbin "graphics/rooms/backgrounds/carrot_castle_4.4bpp.lz"

gCarrotCastle4Tilemap:: @ 08AD7F6C
	.incbin "graphics/rooms/backgrounds/carrot_castle_4.tilemap"

gUnk_08AD8674:: @ 08AD8674
	.incbin "baserom.gba", 0xAD8674, 0x0000020

gCentralCirclePalette:: @ 08AD8694
	.incbin "graphics/rooms/backgrounds/central_circle.agbpal"

gCentralCircleTileset:: @ 08AD8794
	.incbin "graphics/rooms/backgrounds/central_circle.4bpp.lz"

gCentralCircleTilemap:: @ 08ADD254
	.incbin "graphics/rooms/backgrounds/central_circle.tilemap"

gUnk_08ADD95C:: @ 08ADD95C
	.incbin "baserom.gba", 0xADD95C, 0x0000020

gOliveOcean2Palette:: @ 08ADD97C
	.incbin "graphics/rooms/backgrounds/olive_ocean_2.agbpal"

gOliveOcean2Tileset:: @ 08ADDA7C
	.incbin "graphics/rooms/backgrounds/olive_ocean_2.4bpp.lz"

gOliveOcean2Tilemap:: @ 08AE2B48
	.incbin "graphics/rooms/backgrounds/olive_ocean_2.tilemap"

gUnk_08AE3250:: @ 08AE3250
	.incbin "baserom.gba", 0xAE3250, 0x0000020

gRainbowRoute2Palette:: @ 08AE3270
	.incbin "graphics/rooms/backgrounds/rainbow_route_2.agbpal"

gRainbowRoute2Tileset:: @ 08AE3370
	.incbin "graphics/rooms/backgrounds/rainbow_route_2.4bpp.lz"

gRainbowRoute2Tilemap:: @ 08AE7FE4
	.incbin "graphics/rooms/backgrounds/rainbow_route_2.tilemap"

gUnk_08AE86EC:: @ 08AE86EC
	.incbin "baserom.gba", 0xAE86EC, 0x0000020

gOliveOcean3Palette:: @ 08AE870C
	.incbin "graphics/rooms/backgrounds/olive_ocean_3.agbpal"

gOliveOcean3Tileset:: @ 08AE880C
	.incbin "graphics/rooms/backgrounds/olive_ocean_3.4bpp.lz"

gOliveOcean3Tilemap:: @ 08AECFD4
	.incbin "graphics/rooms/backgrounds/olive_ocean_3.tilemap"

gUnk_08AED6DC:: @ 08AED6DC
	.incbin "baserom.gba", 0xAED6DC, 0x0000020

gDimensionMirror1Palette:: @ 08AED6FC
	.incbin "graphics/rooms/backgrounds/dimension_mirror_1.agbpal"

gDimensionMirror1Tileset:: @ 08AED7FC
	.incbin "graphics/rooms/backgrounds/dimension_mirror_1.4bpp.lz"

gDimensionMirror1Tilemap:: @ 08AF12D4
	.incbin "graphics/rooms/backgrounds/dimension_mirror_1.tilemap"

gUnk_08AF19DC:: @ 08AF19DC
	.incbin "baserom.gba", 0xAF19DC, 0x0000020

gDimensionMirror2Palette:: @ 08AF19FC
	.incbin "graphics/rooms/backgrounds/dimension_mirror_2.agbpal"

gDimensionMirror2Tileset:: @ 08AF1AFC
	.incbin "graphics/rooms/backgrounds/dimension_mirror_2.4bpp.lz"

gDimensionMirror2Tilemap:: @ 08AF6984
	.incbin "graphics/rooms/backgrounds/dimension_mirror_2.tilemap"

gUnk_08AF708C:: @ 08AF708C
	.incbin "baserom.gba", 0xAF708C, 0x0000020

gDimensionMirror3Palette:: @ 08AF70AC
	.incbin "graphics/rooms/backgrounds/dimension_mirror_3.agbpal"

gDimensionMirror3Tileset:: @ 08AF71AC
	.incbin "graphics/rooms/backgrounds/dimension_mirror_3.4bpp.lz"

gDimensionMirror3Tilemap:: @ 08AFA678
	.incbin "graphics/rooms/backgrounds/dimension_mirror_3.tilemap"

gUnk_08AFABF8:: @ 08AFABF8
	.incbin "baserom.gba", 0xAFABF8, 0x0000020

gCredits1Palette:: @ 08AFAC18
	.incbin "graphics/rooms/backgrounds/credits.agbpal"

gCredits1Tileset:: @ 08AFAD18
	.incbin "graphics/rooms/backgrounds/credits.4bpp.lz"

gCredits1Tilemap:: @ 08AFBCC8
	.incbin "graphics/rooms/backgrounds/credits_1.tilemap"
	.incbin "baserom.gba", 0xB007C8, 0x000E100

gUnk_08B0E8C8:: @ 08B0E8C8
	.incbin "baserom.gba", 0xB0E8C8, 0x0000020

gCredits2Palette:: @ 08B0E8E8
	.incbin "graphics/rooms/backgrounds/credits.agbpal"

gCredits2Tileset:: @ 08B0E9E8
	.incbin "graphics/rooms/backgrounds/credits.4bpp.lz"

gCredits2Tilemap:: @ 08B0F998
	.incbin "graphics/rooms/backgrounds/credits_2.tilemap"
	.incbin "baserom.gba", 0xB14DF8, 0x000FD20

gUnk_08B24B18:: @ 08B24B18
	.incbin "baserom.gba", 0xB24B18, 0x0000020

gCreditsEmptyPalette:: @ 08B24B38
	.incbin "graphics/rooms/backgrounds/credits.agbpal"

gCreditsEmptyTileset:: @ 08B24C38
	.incbin "graphics/rooms/backgrounds/credits.4bpp.lz"

gCreditsEmptyTilemap:: @ 08B25BE8
	.incbin "graphics/rooms/backgrounds/credits_empty.tilemap"
	.incbin "baserom.gba", 0xB2B048, 0x000FD20

gUnk_08B3AD68:: @ 08B3AD68
	.incbin "baserom.gba", 0xB3AD68, 0x0000020

gUnk_08B3AD88:: @ 08B3AD88
	.incbin "baserom.gba", 0xB3AD88, 0x0000008

gUnk_08B3AD90:: @ 08B3AD90
	.incbin "baserom.gba", 0xB3AD90, 0x0000010

gUnk_08B3ADA0:: @ 08B3ADA0
	.incbin "baserom.gba", 0xB3ADA0, 0x000000C

gUnk_08B3ADAC:: @ 08B3ADAC
	.incbin "baserom.gba", 0xB3ADAC, 0x0000008

gUnk_08B3ADB4:: @ 08B3ADB4
	.incbin "baserom.gba", 0xB3ADB4, 0x000000C

gUnk_08B3ADC0:: @ 08B3ADC0
	.incbin "baserom.gba", 0xB3ADC0, 0x000000C

gUnk_08B3ADCC:: @ 08B3ADCC
	.incbin "baserom.gba", 0xB3ADCC, 0x0000010

gUnk_08B3ADDC:: @ 08B3ADDC
	.incbin "baserom.gba", 0xB3ADDC, 0x0000024

gUnk_08B3AE00:: @ 08B3AE00
	.incbin "baserom.gba", 0xB3AE00, 0x0000020

gUnk_08B3AE20:: @ 08B3AE20
	.incbin "baserom.gba", 0xB3AE20, 0x0000020

gUnk_08B3AE40:: @ 08B3AE40
	.incbin "baserom.gba", 0xB3AE40, 0x000001C

gUnk_08B3AE5C:: @ 08B3AE5C
	.incbin "baserom.gba", 0xB3AE5C, 0x0000018

gUnk_08B3AE74:: @ 08B3AE74
	.incbin "baserom.gba", 0xB3AE74, 0x0000018

gUnk_08B3AE8C:: @ 08B3AE8C
	.incbin "baserom.gba", 0xB3AE8C, 0x0000018

gUnk_08B3AEA4:: @ 08B3AEA4
	.incbin "baserom.gba", 0xB3AEA4, 0x0000014

gUnk_08B3AEB8:: @ 08B3AEB8
	.incbin "baserom.gba", 0xB3AEB8, 0x0000020

gUnk_08B3AED8:: @ 08B3AED8
	.incbin "baserom.gba", 0xB3AED8, 0x0000020

gUnk_08B3AEF8:: @ 08B3AEF8
	.incbin "baserom.gba", 0xB3AEF8, 0x0000010

gUnk_08B3AF08:: @ 08B3AF08
	.incbin "baserom.gba", 0xB3AF08, 0x0000014

gUnk_08B3AF1C:: @ 08B3AF1C
	.incbin "baserom.gba", 0xB3AF1C, 0x0000010

gUnk_08B3AF2C:: @ 08B3AF2C
	.incbin "baserom.gba", 0xB3AF2C, 0x0000014

gUnk_08B3AF40:: @ 08B3AF40
	.incbin "baserom.gba", 0xB3AF40, 0x0000024

gUnk_08B3AF64:: @ 08B3AF64
	.incbin "baserom.gba", 0xB3AF64, 0x0000020

gUnk_08B3AF84:: @ 08B3AF84
	.incbin "baserom.gba", 0xB3AF84, 0x0000020

gUnk_08B3AFA4:: @ 08B3AFA4
	.incbin "baserom.gba", 0xB3AFA4, 0x000001C

gUnk_08B3AFC0:: @ 08B3AFC0
	.incbin "baserom.gba", 0xB3AFC0, 0x0000020

gUnk_08B3AFE0:: @ 08B3AFE0
	.incbin "baserom.gba", 0xB3AFE0, 0x0000024

gUnk_08B3B004:: @ 08B3B004
	.incbin "baserom.gba", 0xB3B004, 0x0000024

gUnk_08B3B028:: @ 08B3B028
	.incbin "baserom.gba", 0xB3B028, 0x0000024

gUnk_08B3B04C:: @ 08B3B04C
	.incbin "baserom.gba", 0xB3B04C, 0x0000010

gUnk_08B3B05C:: @ 08B3B05C
	.incbin "baserom.gba", 0xB3B05C, 0x0000024

gUnk_08B3B080:: @ 08B3B080
	.incbin "baserom.gba", 0xB3B080, 0x0000018

gUnk_08B3B098:: @ 08B3B098
	.incbin "baserom.gba", 0xB3B098, 0x0000010

gUnk_08B3B0A8:: @ 08B3B0A8
	.incbin "baserom.gba", 0xB3B0A8, 0x000001C

gUnk_08B3B0C4:: @ 08B3B0C4
	.incbin "baserom.gba", 0xB3B0C4, 0x0000014

gUnk_08B3B0D8:: @ 08B3B0D8
	.incbin "baserom.gba", 0xB3B0D8, 0x0000020

gUnk_08B3B0F8:: @ 08B3B0F8
	.incbin "baserom.gba", 0xB3B0F8, 0x0000020

gUnk_08B3B118:: @ 08B3B118
	.incbin "baserom.gba", 0xB3B118, 0x000001C

gUnk_08B3B134:: @ 08B3B134
	.incbin "baserom.gba", 0xB3B134, 0x000001C

gUnk_08B3B150:: @ 08B3B150
	.incbin "baserom.gba", 0xB3B150, 0x000001C

gUnk_08B3B16C:: @ 08B3B16C
	.incbin "baserom.gba", 0xB3B16C, 0x000001C

gUnk_08B3B188:: @ 08B3B188
	.incbin "baserom.gba", 0xB3B188, 0x0000018

gUnk_08B3B1A0:: @ 08B3B1A0
	.incbin "baserom.gba", 0xB3B1A0, 0x0000018

gUnk_08B3B1B8:: @ 08B3B1B8
	.incbin "baserom.gba", 0xB3B1B8, 0x0000010

gUnk_08B3B1C8:: @ 08B3B1C8
	.incbin "baserom.gba", 0xB3B1C8, 0x0000014

gUnk_08B3B1DC:: @ 08B3B1DC
	.incbin "baserom.gba", 0xB3B1DC, 0x0000014

gUnk_08B3B1F0:: @ 08B3B1F0
	.incbin "baserom.gba", 0xB3B1F0, 0x0000018

gUnk_08B3B208:: @ 08B3B208
	.incbin "baserom.gba", 0xB3B208, 0x000001C

gUnk_08B3B224:: @ 08B3B224
	.incbin "baserom.gba", 0xB3B224, 0x000001C

gUnk_08B3B240:: @ 08B3B240
	.incbin "baserom.gba", 0xB3B240, 0x000001C

gUnk_08B3B25C:: @ 08B3B25C
	.incbin "baserom.gba", 0xB3B25C, 0x0000004

gUnk_08B3B260:: @ 08B3B260
	.incbin "baserom.gba", 0xB3B260, 0x000004C

gUnk_08B3B2AC:: @ 08B3B2AC
	.incbin "baserom.gba", 0xB3B2AC, 0x0000008

gUnk_08B3B2B4:: @ 08B3B2B4
	.incbin "baserom.gba", 0xB3B2B4, 0x0000004

gUnk_08B3B2B8:: @ 08B3B2B8
	.incbin "baserom.gba", 0xB3B2B8, 0x0000008

gUnk_08B3B2C0:: @ 08B3B2C0
	.incbin "baserom.gba", 0xB3B2C0, 0x000000C

gUnk_08B3B2CC:: @ 08B3B2CC
	.incbin "baserom.gba", 0xB3B2CC, 0x0000004

gUnk_08B3B2D0:: @ 08B3B2D0
	.incbin "baserom.gba", 0xB3B2D0, 0x0000004

gUnk_08B3B2D4:: @ 08B3B2D4
	.incbin "baserom.gba", 0xB3B2D4, 0x0000004

gUnk_08B3B2D8:: @ 08B3B2D8
	.incbin "baserom.gba", 0xB3B2D8, 0x0000004

gUnk_08B3B2DC:: @ 08B3B2DC
	.incbin "baserom.gba", 0xB3B2DC, 0x0000004

gUnk_08B3B2E0:: @ 08B3B2E0
	.incbin "baserom.gba", 0xB3B2E0, 0x0000004

gUnk_08B3B2E4:: @ 08B3B2E4
	.incbin "baserom.gba", 0xB3B2E4, 0x0000004

gUnk_08B3B2E8:: @ 08B3B2E8
	.incbin "baserom.gba", 0xB3B2E8, 0x0000004

gUnk_08B3B2EC:: @ 08B3B2EC
	.incbin "baserom.gba", 0xB3B2EC, 0x0000004

gUnk_08B3B2F0:: @ 08B3B2F0
	.incbin "baserom.gba", 0xB3B2F0, 0x0000004

gUnk_08B3B2F4:: @ 08B3B2F4
	.incbin "baserom.gba", 0xB3B2F4, 0x0000004

gUnk_08B3B2F8:: @ 08B3B2F8
	.incbin "baserom.gba", 0xB3B2F8, 0x0000004

gUnk_08B3B2FC:: @ 08B3B2FC
	.incbin "baserom.gba", 0xB3B2FC, 0x0000004

gUnk_08B3B300:: @ 08B3B300
	.incbin "baserom.gba", 0xB3B300, 0x0000004

gUnk_08B3B304:: @ 08B3B304
	.incbin "baserom.gba", 0xB3B304, 0x0000004

gUnk_08B3B308:: @ 08B3B308
	.incbin "baserom.gba", 0xB3B308, 0x0000004

gUnk_08B3B30C:: @ 08B3B30C
	.incbin "baserom.gba", 0xB3B30C, 0x0000004

gUnk_08B3B310:: @ 08B3B310
	.incbin "baserom.gba", 0xB3B310, 0x0000004

gUnk_08B3B314:: @ 08B3B314
	.incbin "baserom.gba", 0xB3B314, 0x0000004

gUnk_08B3B318:: @ 08B3B318
	.incbin "baserom.gba", 0xB3B318, 0x0000004

gUnk_08B3B31C:: @ 08B3B31C
	.incbin "baserom.gba", 0xB3B31C, 0x0000004

gUnk_08B3B320:: @ 08B3B320
	.incbin "baserom.gba", 0xB3B320, 0x0000004

gUnk_08B3B324:: @ 08B3B324
	.incbin "baserom.gba", 0xB3B324, 0x0000004

gUnk_08B3B328:: @ 08B3B328
	.incbin "baserom.gba", 0xB3B328, 0x0000004

gUnk_08B3B32C:: @ 08B3B32C
	.incbin "baserom.gba", 0xB3B32C, 0x0000004

gUnk_08B3B330:: @ 08B3B330
	.incbin "baserom.gba", 0xB3B330, 0x000004C

gUnk_08B3B37C:: @ 08B3B37C
	.incbin "baserom.gba", 0xB3B37C, 0x0000004

gUnk_08B3B380:: @ 08B3B380
	.incbin "baserom.gba", 0xB3B380, 0x0000008

gUnk_08B3B388:: @ 08B3B388
	.incbin "baserom.gba", 0xB3B388, 0x0000004

gUnk_08B3B38C:: @ 08B3B38C
	.incbin "baserom.gba", 0xB3B38C, 0x0000004

gUnk_08B3B390:: @ 08B3B390
	.incbin "baserom.gba", 0xB3B390, 0x0000004

gUnk_08B3B394:: @ 08B3B394
	.incbin "baserom.gba", 0xB3B394, 0x0000004

gUnk_08B3B398:: @ 08B3B398
	.incbin "baserom.gba", 0xB3B398, 0x0000004

gUnk_08B3B39C:: @ 08B3B39C
	.incbin "baserom.gba", 0xB3B39C, 0x0000004

gUnk_08B3B3A0:: @ 08B3B3A0
	.incbin "baserom.gba", 0xB3B3A0, 0x0000004

gUnk_08B3B3A4:: @ 08B3B3A4
	.incbin "baserom.gba", 0xB3B3A4, 0x0000004

gUnk_08B3B3A8:: @ 08B3B3A8
	.incbin "baserom.gba", 0xB3B3A8, 0x0000004

gUnk_08B3B3AC:: @ 08B3B3AC
	.incbin "baserom.gba", 0xB3B3AC, 0x0000004

gUnk_08B3B3B0:: @ 08B3B3B0
	.incbin "baserom.gba", 0xB3B3B0, 0x0000004

gUnk_08B3B3B4:: @ 08B3B3B4
	.incbin "baserom.gba", 0xB3B3B4, 0x0000004

gUnk_08B3B3B8:: @ 08B3B3B8
	.incbin "baserom.gba", 0xB3B3B8, 0x0000004

gUnk_08B3B3BC:: @ 08B3B3BC
	.incbin "baserom.gba", 0xB3B3BC, 0x0000004

gUnk_08B3B3C0:: @ 08B3B3C0
	.incbin "baserom.gba", 0xB3B3C0, 0x0000004

gUnk_08B3B3C4:: @ 08B3B3C4
	.incbin "baserom.gba", 0xB3B3C4, 0x0000004

gUnk_08B3B3C8:: @ 08B3B3C8
	.incbin "baserom.gba", 0xB3B3C8, 0x0000004

gUnk_08B3B3CC:: @ 08B3B3CC
	.incbin "baserom.gba", 0xB3B3CC, 0x0000008

gUnk_08B3B3D4:: @ 08B3B3D4
	.incbin "baserom.gba", 0xB3B3D4, 0x0000004

gUnk_08B3B3D8:: @ 08B3B3D8
	.incbin "baserom.gba", 0xB3B3D8, 0x0000004

gUnk_08B3B3DC:: @ 08B3B3DC
	.incbin "baserom.gba", 0xB3B3DC, 0x0000004

gUnk_08B3B3E0:: @ 08B3B3E0
	.incbin "baserom.gba", 0xB3B3E0, 0x0000004

gUnk_08B3B3E4:: @ 08B3B3E4
	.incbin "baserom.gba", 0xB3B3E4, 0x0000004

gUnk_08B3B3E8:: @ 08B3B3E8
	.incbin "baserom.gba", 0xB3B3E8, 0x0000004

gUnk_08B3B3EC:: @ 08B3B3EC
	.incbin "baserom.gba", 0xB3B3EC, 0x0000004

gUnk_08B3B3F0:: @ 08B3B3F0
	.incbin "baserom.gba", 0xB3B3F0, 0x0000004

gUnk_08B3B3F4:: @ 08B3B3F4
	.incbin "baserom.gba", 0xB3B3F4, 0x0000004

gUnk_08B3B3F8:: @ 08B3B3F8
	.incbin "baserom.gba", 0xB3B3F8, 0x0000004

gUnk_08B3B3FC:: @ 08B3B3FC
	.incbin "baserom.gba", 0xB3B3FC, 0x0000004

gUnk_08B3B400:: @ 08B3B400
	.incbin "baserom.gba", 0xB3B400, 0x0000004

gUnk_08B3B404:: @ 08B3B404
	.incbin "baserom.gba", 0xB3B404, 0x0000004

gUnk_08B3B408:: @ 08B3B408
	.incbin "baserom.gba", 0xB3B408, 0x0000004

gUnk_08B3B40C:: @ 08B3B40C
	.incbin "baserom.gba", 0xB3B40C, 0x0000004

gUnk_08B3B410:: @ 08B3B410
	.incbin "baserom.gba", 0xB3B410, 0x0000004

gUnk_08B3B414:: @ 08B3B414
	.incbin "baserom.gba", 0xB3B414, 0x0000004

gUnk_08B3B418:: @ 08B3B418
	.incbin "baserom.gba", 0xB3B418, 0x0000004

gUnk_08B3B41C:: @ 08B3B41C
	.incbin "baserom.gba", 0xB3B41C, 0x0000004

gUnk_08B3B420:: @ 08B3B420
	.incbin "baserom.gba", 0xB3B420, 0x0000004

gUnk_08B3B424:: @ 08B3B424
	.incbin "baserom.gba", 0xB3B424, 0x0000004

gUnk_08B3B428:: @ 08B3B428
	.incbin "baserom.gba", 0xB3B428, 0x0000004

gUnk_08B3B42C:: @ 08B3B42C
	.incbin "baserom.gba", 0xB3B42C, 0x0000004

gUnk_08B3B430:: @ 08B3B430
	.incbin "baserom.gba", 0xB3B430, 0x0000004

gUnk_08B3B434:: @ 08B3B434
	.incbin "baserom.gba", 0xB3B434, 0x0000004

gUnk_08B3B438:: @ 08B3B438
	.incbin "baserom.gba", 0xB3B438, 0x0000004

gUnk_08B3B43C:: @ 08B3B43C
	.incbin "baserom.gba", 0xB3B43C, 0x0000004

gUnk_08B3B440:: @ 08B3B440
	.incbin "baserom.gba", 0xB3B440, 0x0000004

gUnk_08B3B444:: @ 08B3B444
	.incbin "baserom.gba", 0xB3B444, 0x0000004

gUnk_08B3B448:: @ 08B3B448
	.incbin "baserom.gba", 0xB3B448, 0x0000004

gUnk_08B3B44C:: @ 08B3B44C
	.incbin "baserom.gba", 0xB3B44C, 0x0000004

gUnk_08B3B450:: @ 08B3B450
	.incbin "baserom.gba", 0xB3B450, 0x000004C

gUnk_08B3B49C:: @ 08B3B49C
	.incbin "baserom.gba", 0xB3B49C, 0x0000004

gUnk_08B3B4A0:: @ 08B3B4A0
	.incbin "baserom.gba", 0xB3B4A0, 0x0000002

gUnk_08B3B4A2:: @ 08B3B4A2
	.incbin "baserom.gba", 0xB3B4A2, 0x0000006

gUnk_08B3B4A8:: @ 08B3B4A8
	.incbin "baserom.gba", 0xB3B4A8, 0x0000008

gUnk_08B3B4B0:: @ 08B3B4B0
	.incbin "baserom.gba", 0xB3B4B0, 0x0000004

gUnk_08B3B4B4:: @ 08B3B4B4
	.incbin "baserom.gba", 0xB3B4B4, 0x0000004

gUnk_08B3B4B8:: @ 08B3B4B8
	.incbin "baserom.gba", 0xB3B4B8, 0x0000004

gUnk_08B3B4BC:: @ 08B3B4BC
	.incbin "baserom.gba", 0xB3B4BC, 0x0000004

gUnk_08B3B4C0:: @ 08B3B4C0
	.incbin "baserom.gba", 0xB3B4C0, 0x0000004

gUnk_08B3B4C4:: @ 08B3B4C4
	.incbin "baserom.gba", 0xB3B4C4, 0x0000004

gUnk_08B3B4C8:: @ 08B3B4C8
	.incbin "baserom.gba", 0xB3B4C8, 0x0000004

gUnk_08B3B4CC:: @ 08B3B4CC
	.incbin "baserom.gba", 0xB3B4CC, 0x0000004

gUnk_08B3B4D0:: @ 08B3B4D0
	.incbin "baserom.gba", 0xB3B4D0, 0x0000004

gUnk_08B3B4D4:: @ 08B3B4D4
	.incbin "baserom.gba", 0xB3B4D4, 0x0000004

gUnk_08B3B4D8:: @ 08B3B4D8
	.incbin "baserom.gba", 0xB3B4D8, 0x0000004

gUnk_08B3B4DC:: @ 08B3B4DC
	.incbin "baserom.gba", 0xB3B4DC, 0x0000004

gUnk_08B3B4E0:: @ 08B3B4E0
	.incbin "baserom.gba", 0xB3B4E0, 0x0000004

gUnk_08B3B4E4:: @ 08B3B4E4
	.incbin "baserom.gba", 0xB3B4E4, 0x0000004

gUnk_08B3B4E8:: @ 08B3B4E8
	.incbin "baserom.gba", 0xB3B4E8, 0x0000004

gUnk_08B3B4EC:: @ 08B3B4EC
	.incbin "baserom.gba", 0xB3B4EC, 0x0000004

gUnk_08B3B4F0:: @ 08B3B4F0
	.incbin "baserom.gba", 0xB3B4F0, 0x000000C

gUnk_08B3B4FC:: @ 08B3B4FC
	.incbin "baserom.gba", 0xB3B4FC, 0x0000004

gUnk_08B3B500:: @ 08B3B500
	.incbin "baserom.gba", 0xB3B500, 0x0000004

gUnk_08B3B504:: @ 08B3B504
	.incbin "baserom.gba", 0xB3B504, 0x0000004

gUnk_08B3B508:: @ 08B3B508
	.incbin "baserom.gba", 0xB3B508, 0x0000004

gUnk_08B3B50C:: @ 08B3B50C
	.incbin "baserom.gba", 0xB3B50C, 0x0000004

gUnk_08B3B510:: @ 08B3B510
	.incbin "baserom.gba", 0xB3B510, 0x0000004

gUnk_08B3B514:: @ 08B3B514
	.incbin "baserom.gba", 0xB3B514, 0x0000004

gUnk_08B3B518:: @ 08B3B518
	.incbin "baserom.gba", 0xB3B518, 0x0000004

gUnk_08B3B51C:: @ 08B3B51C
	.incbin "baserom.gba", 0xB3B51C, 0x0000004

gUnk_08B3B520:: @ 08B3B520
	.incbin "baserom.gba", 0xB3B520, 0x0000004

gUnk_08B3B524:: @ 08B3B524
	.incbin "baserom.gba", 0xB3B524, 0x0000004

gUnk_08B3B528:: @ 08B3B528
	.incbin "baserom.gba", 0xB3B528, 0x0000004

gUnk_08B3B52C:: @ 08B3B52C
	.incbin "baserom.gba", 0xB3B52C, 0x0000004

gUnk_08B3B530:: @ 08B3B530
	.incbin "baserom.gba", 0xB3B530, 0x0000004

gUnk_08B3B534:: @ 08B3B534
	.incbin "baserom.gba", 0xB3B534, 0x0000004

gUnk_08B3B538:: @ 08B3B538
	.incbin "baserom.gba", 0xB3B538, 0x0000004

gUnk_08B3B53C:: @ 08B3B53C
	.incbin "baserom.gba", 0xB3B53C, 0x0000004

gUnk_08B3B540:: @ 08B3B540
	.incbin "baserom.gba", 0xB3B540, 0x0000004

gUnk_08B3B544:: @ 08B3B544
	.incbin "baserom.gba", 0xB3B544, 0x0000004

gUnk_08B3B548:: @ 08B3B548
	.incbin "baserom.gba", 0xB3B548, 0x0000004

gUnk_08B3B54C:: @ 08B3B54C
	.incbin "baserom.gba", 0xB3B54C, 0x0000004

gUnk_08B3B550:: @ 08B3B550
	.incbin "baserom.gba", 0xB3B550, 0x0000004

gUnk_08B3B554:: @ 08B3B554
	.incbin "baserom.gba", 0xB3B554, 0x0000004

gUnk_08B3B558:: @ 08B3B558
	.incbin "baserom.gba", 0xB3B558, 0x0000004

gUnk_08B3B55C:: @ 08B3B55C
	.incbin "baserom.gba", 0xB3B55C, 0x0000004

gUnk_08B3B560:: @ 08B3B560
	.incbin "baserom.gba", 0xB3B560, 0x0000004

gUnk_08B3B564:: @ 08B3B564
	.incbin "baserom.gba", 0xB3B564, 0x0000004

gUnk_08B3B568:: @ 08B3B568
	.incbin "baserom.gba", 0xB3B568, 0x0000004

gUnk_08B3B56C:: @ 08B3B56C
	.incbin "baserom.gba", 0xB3B56C, 0x0000004

gUnk_08B3B570:: @ 08B3B570
	.incbin "baserom.gba", 0xB3B570, 0x0000004

gUnk_08B3B574:: @ 08B3B574
	.incbin "baserom.gba", 0xB3B574, 0x0000004

gUnk_08B3B578:: @ 08B3B578
	.incbin "baserom.gba", 0xB3B578, 0x000004C

gUnk_08B3B5C4:: @ 08B3B5C4
	.incbin "baserom.gba", 0xB3B5C4, 0x0000004

gUnk_08B3B5C8:: @ 08B3B5C8
	.incbin "baserom.gba", 0xB3B5C8, 0x000000C

gUnk_08B3B5D4:: @ 08B3B5D4
	.incbin "baserom.gba", 0xB3B5D4, 0x000000C

gUnk_08B3B5E0:: @ 08B3B5E0
	.incbin "baserom.gba", 0xB3B5E0, 0x0000008

gUnk_08B3B5E8:: @ 08B3B5E8
	.incbin "baserom.gba", 0xB3B5E8, 0x0000008

gUnk_08B3B5F0:: @ 08B3B5F0
	.incbin "baserom.gba", 0xB3B5F0, 0x000000C

gUnk_08B3B5FC:: @ 08B3B5FC
	.incbin "baserom.gba", 0xB3B5FC, 0x000000C

gUnk_08B3B608:: @ 08B3B608
	.incbin "baserom.gba", 0xB3B608, 0x0000020

gUnk_08B3B628:: @ 08B3B628
	.incbin "baserom.gba", 0xB3B628, 0x0000020

gUnk_08B3B648:: @ 08B3B648
	.incbin "baserom.gba", 0xB3B648, 0x000001C

gUnk_08B3B664:: @ 08B3B664
	.incbin "baserom.gba", 0xB3B664, 0x000001C

gUnk_08B3B680:: @ 08B3B680
	.incbin "baserom.gba", 0xB3B680, 0x0000018

gUnk_08B3B698:: @ 08B3B698
	.incbin "baserom.gba", 0xB3B698, 0x0000018

gUnk_08B3B6B0:: @ 08B3B6B0
	.incbin "baserom.gba", 0xB3B6B0, 0x0000014

gUnk_08B3B6C4:: @ 08B3B6C4
	.incbin "baserom.gba", 0xB3B6C4, 0x0000014

gUnk_08B3B6D8:: @ 08B3B6D8
	.incbin "baserom.gba", 0xB3B6D8, 0x0000020

gUnk_08B3B6F8:: @ 08B3B6F8
	.incbin "baserom.gba", 0xB3B6F8, 0x0000020

gUnk_08B3B718:: @ 08B3B718
	.incbin "baserom.gba", 0xB3B718, 0x000000C

gUnk_08B3B724:: @ 08B3B724
	.incbin "baserom.gba", 0xB3B724, 0x0000014

gUnk_08B3B738:: @ 08B3B738
	.incbin "baserom.gba", 0xB3B738, 0x0000010

gUnk_08B3B748:: @ 08B3B748
	.incbin "baserom.gba", 0xB3B748, 0x0000010

gUnk_08B3B758:: @ 08B3B758
	.incbin "baserom.gba", 0xB3B758, 0x0000020

gUnk_08B3B778:: @ 08B3B778
	.incbin "baserom.gba", 0xB3B778, 0x0000020

gUnk_08B3B798:: @ 08B3B798
	.incbin "baserom.gba", 0xB3B798, 0x000001C

gUnk_08B3B7B4:: @ 08B3B7B4
	.incbin "baserom.gba", 0xB3B7B4, 0x000001C

gUnk_08B3B7D0:: @ 08B3B7D0
	.incbin "baserom.gba", 0xB3B7D0, 0x0000020

gUnk_08B3B7F0:: @ 08B3B7F0
	.incbin "baserom.gba", 0xB3B7F0, 0x0000020

gUnk_08B3B810:: @ 08B3B810
	.incbin "baserom.gba", 0xB3B810, 0x0000024

gUnk_08B3B834:: @ 08B3B834
	.incbin "baserom.gba", 0xB3B834, 0x0000020

gUnk_08B3B854:: @ 08B3B854
	.incbin "baserom.gba", 0xB3B854, 0x0000010

gUnk_08B3B864:: @ 08B3B864
	.incbin "baserom.gba", 0xB3B864, 0x0000020

gUnk_08B3B884:: @ 08B3B884
	.incbin "baserom.gba", 0xB3B884, 0x0000014

gUnk_08B3B898:: @ 08B3B898
	.incbin "baserom.gba", 0xB3B898, 0x0000010

gUnk_08B3B8A8:: @ 08B3B8A8
	.incbin "baserom.gba", 0xB3B8A8, 0x0000018

gUnk_08B3B8C0:: @ 08B3B8C0
	.incbin "baserom.gba", 0xB3B8C0, 0x0000010

gUnk_08B3B8D0:: @ 08B3B8D0
	.incbin "baserom.gba", 0xB3B8D0, 0x000001C

gUnk_08B3B8EC:: @ 08B3B8EC
	.incbin "baserom.gba", 0xB3B8EC, 0x000001C

gUnk_08B3B908:: @ 08B3B908
	.incbin "baserom.gba", 0xB3B908, 0x000001C

gUnk_08B3B924:: @ 08B3B924
	.incbin "baserom.gba", 0xB3B924, 0x0000018

gUnk_08B3B93C:: @ 08B3B93C
	.incbin "baserom.gba", 0xB3B93C, 0x000001C

gUnk_08B3B958:: @ 08B3B958
	.incbin "baserom.gba", 0xB3B958, 0x0000018

gUnk_08B3B970:: @ 08B3B970
	.incbin "baserom.gba", 0xB3B970, 0x0000018

gUnk_08B3B988:: @ 08B3B988
	.incbin "baserom.gba", 0xB3B988, 0x0000014

gUnk_08B3B99C:: @ 08B3B99C
	.incbin "baserom.gba", 0xB3B99C, 0x0000010

gUnk_08B3B9AC:: @ 08B3B9AC
	.incbin "baserom.gba", 0xB3B9AC, 0x0000010

gUnk_08B3B9BC:: @ 08B3B9BC
	.incbin "baserom.gba", 0xB3B9BC, 0x0000014

gUnk_08B3B9D0:: @ 08B3B9D0
	.incbin "baserom.gba", 0xB3B9D0, 0x0000014

gUnk_08B3B9E4:: @ 08B3B9E4
	.incbin "baserom.gba", 0xB3B9E4, 0x0000018

gUnk_08B3B9FC:: @ 08B3B9FC
	.incbin "baserom.gba", 0xB3B9FC, 0x000001C

gUnk_08B3BA18:: @ 08B3BA18
	.incbin "baserom.gba", 0xB3BA18, 0x000001C

gUnk_08B3BA34:: @ 08B3BA34
	.incbin "baserom.gba", 0xB3BA34, 0x0000004

gUnk_08B3BA38:: @ 08B3BA38
	.incbin "baserom.gba", 0xB3BA38, 0x000004C

gUnk_08B3BA84:: @ 08B3BA84
	.incbin "baserom.gba", 0xB3BA84, 0x0000004

gUnk_08B3BA88:: @ 08B3BA88
	.incbin "baserom.gba", 0xB3BA88, 0x000000C

gUnk_08B3BA94:: @ 08B3BA94
	.incbin "baserom.gba", 0xB3BA94, 0x0000008

gUnk_08B3BA9C:: @ 08B3BA9C
	.incbin "baserom.gba", 0xB3BA9C, 0x0000004

gUnk_08B3BAA0:: @ 08B3BAA0
	.incbin "baserom.gba", 0xB3BAA0, 0x0000008

gUnk_08B3BAA8:: @ 08B3BAA8
	.incbin "baserom.gba", 0xB3BAA8, 0x0000008

gUnk_08B3BAB0:: @ 08B3BAB0
	.incbin "baserom.gba", 0xB3BAB0, 0x000000C

gUnk_08B3BABC:: @ 08B3BABC
	.incbin "baserom.gba", 0xB3BABC, 0x0000020

gUnk_08B3BADC:: @ 08B3BADC
	.incbin "baserom.gba", 0xB3BADC, 0x000001C

gUnk_08B3BAF8:: @ 08B3BAF8
	.incbin "baserom.gba", 0xB3BAF8, 0x000001C

gUnk_08B3BB14:: @ 08B3BB14
	.incbin "baserom.gba", 0xB3BB14, 0x0000018

gUnk_08B3BB2C:: @ 08B3BB2C
	.incbin "baserom.gba", 0xB3BB2C, 0x0000014

gUnk_08B3BB40:: @ 08B3BB40
	.incbin "baserom.gba", 0xB3BB40, 0x0000014

gUnk_08B3BB54:: @ 08B3BB54
	.incbin "baserom.gba", 0xB3BB54, 0x0000014

gUnk_08B3BB68:: @ 08B3BB68
	.incbin "baserom.gba", 0xB3BB68, 0x0000010

gUnk_08B3BB78:: @ 08B3BB78
	.incbin "baserom.gba", 0xB3BB78, 0x000001C

gUnk_08B3BB94:: @ 08B3BB94
	.incbin "baserom.gba", 0xB3BB94, 0x000001C

gUnk_08B3BBB0:: @ 08B3BBB0
	.incbin "baserom.gba", 0xB3BBB0, 0x000000C

gUnk_08B3BBBC:: @ 08B3BBBC
	.incbin "baserom.gba", 0xB3BBBC, 0x0000010

gUnk_08B3BBCC:: @ 08B3BBCC
	.incbin "baserom.gba", 0xB3BBCC, 0x000000C

gUnk_08B3BBD8:: @ 08B3BBD8
	.incbin "baserom.gba", 0xB3BBD8, 0x0000010

gUnk_08B3BBE8:: @ 08B3BBE8
	.incbin "baserom.gba", 0xB3BBE8, 0x0000020

gUnk_08B3BC08:: @ 08B3BC08
	.incbin "baserom.gba", 0xB3BC08, 0x000001C

gUnk_08B3BC24:: @ 08B3BC24
	.incbin "baserom.gba", 0xB3BC24, 0x000001C

gUnk_08B3BC40:: @ 08B3BC40
	.incbin "baserom.gba", 0xB3BC40, 0x0000018

gUnk_08B3BC58:: @ 08B3BC58
	.incbin "baserom.gba", 0xB3BC58, 0x000001C

gUnk_08B3BC74:: @ 08B3BC74
	.incbin "baserom.gba", 0xB3BC74, 0x0000020

gUnk_08B3BC94:: @ 08B3BC94
	.incbin "baserom.gba", 0xB3BC94, 0x0000020

gUnk_08B3BCB4:: @ 08B3BCB4
	.incbin "baserom.gba", 0xB3BCB4, 0x0000020

gUnk_08B3BCD4:: @ 08B3BCD4
	.incbin "baserom.gba", 0xB3BCD4, 0x000000C

gUnk_08B3BCE0:: @ 08B3BCE0
	.incbin "baserom.gba", 0xB3BCE0, 0x0000020

gUnk_08B3BD00:: @ 08B3BD00
	.incbin "baserom.gba", 0xB3BD00, 0x0000014

gUnk_08B3BD14:: @ 08B3BD14
	.incbin "baserom.gba", 0xB3BD14, 0x000000C

gUnk_08B3BD20:: @ 08B3BD20
	.incbin "baserom.gba", 0xB3BD20, 0x0000018

gUnk_08B3BD38:: @ 08B3BD38
	.incbin "baserom.gba", 0xB3BD38, 0x0000010

gUnk_08B3BD48:: @ 08B3BD48
	.incbin "baserom.gba", 0xB3BD48, 0x000001C

gUnk_08B3BD64:: @ 08B3BD64
	.incbin "baserom.gba", 0xB3BD64, 0x000001C

gUnk_08B3BD80:: @ 08B3BD80
	.incbin "baserom.gba", 0xB3BD80, 0x0000018

gUnk_08B3BD98:: @ 08B3BD98
	.incbin "baserom.gba", 0xB3BD98, 0x0000018

gUnk_08B3BDB0:: @ 08B3BDB0
	.incbin "baserom.gba", 0xB3BDB0, 0x0000018

gUnk_08B3BDC8:: @ 08B3BDC8
	.incbin "baserom.gba", 0xB3BDC8, 0x0000018

gUnk_08B3BDE0:: @ 08B3BDE0
	.incbin "baserom.gba", 0xB3BDE0, 0x0000014

gUnk_08B3BDF4:: @ 08B3BDF4
	.incbin "baserom.gba", 0xB3BDF4, 0x0000014

gUnk_08B3BE08:: @ 08B3BE08
	.incbin "baserom.gba", 0xB3BE08, 0x000000C

gUnk_08B3BE14:: @ 08B3BE14
	.incbin "baserom.gba", 0xB3BE14, 0x0000010

gUnk_08B3BE24:: @ 08B3BE24
	.incbin "baserom.gba", 0xB3BE24, 0x0000010

gUnk_08B3BE34:: @ 08B3BE34
	.incbin "baserom.gba", 0xB3BE34, 0x0000014

gUnk_08B3BE48:: @ 08B3BE48
	.incbin "baserom.gba", 0xB3BE48, 0x0000018

gUnk_08B3BE60:: @ 08B3BE60
	.incbin "baserom.gba", 0xB3BE60, 0x0000018

gUnk_08B3BE78:: @ 08B3BE78
	.incbin "baserom.gba", 0xB3BE78, 0x0000018

gUnk_08B3BE90:: @ 08B3BE90
	.incbin "baserom.gba", 0xB3BE90, 0x0000004

gUnk_08B3BE94:: @ 08B3BE94
	.incbin "baserom.gba", 0xB3BE94, 0x000004C

gUnk_08B3BEE0:: @ 08B3BEE0
	.incbin "baserom.gba", 0xB3BEE0, 0x0000004

gUnk_08B3BEE4:: @ 08B3BEE4
	.incbin "baserom.gba", 0xB3BEE4, 0x0000008

gUnk_08B3BEEC:: @ 08B3BEEC
	.incbin "baserom.gba", 0xB3BEEC, 0x0000004

gUnk_08B3BEF0:: @ 08B3BEF0
	.incbin "baserom.gba", 0xB3BEF0, 0x0000004

gUnk_08B3BEF4:: @ 08B3BEF4
	.incbin "baserom.gba", 0xB3BEF4, 0x0000004

gUnk_08B3BEF8:: @ 08B3BEF8
	.incbin "baserom.gba", 0xB3BEF8, 0x0000008

gUnk_08B3BF00:: @ 08B3BF00
	.incbin "baserom.gba", 0xB3BF00, 0x0000008

gUnk_08B3BF08:: @ 08B3BF08
	.incbin "baserom.gba", 0xB3BF08, 0x000001C

gUnk_08B3BF24:: @ 08B3BF24
	.incbin "baserom.gba", 0xB3BF24, 0x000001C

gUnk_08B3BF40:: @ 08B3BF40
	.incbin "baserom.gba", 0xB3BF40, 0x0000018

gUnk_08B3BF58:: @ 08B3BF58
	.incbin "baserom.gba", 0xB3BF58, 0x0000018

gUnk_08B3BF70:: @ 08B3BF70
	.incbin "baserom.gba", 0xB3BF70, 0x0000014

gUnk_08B3BF84:: @ 08B3BF84
	.incbin "baserom.gba", 0xB3BF84, 0x0000014

gUnk_08B3BF98:: @ 08B3BF98
	.incbin "baserom.gba", 0xB3BF98, 0x0000010

gUnk_08B3BFA8:: @ 08B3BFA8
	.incbin "baserom.gba", 0xB3BFA8, 0x0000010

gUnk_08B3BFB8:: @ 08B3BFB8
	.incbin "baserom.gba", 0xB3BFB8, 0x000001C

gUnk_08B3BFD4:: @ 08B3BFD4
	.incbin "baserom.gba", 0xB3BFD4, 0x000001C

gUnk_08B3BFF0:: @ 08B3BFF0
	.incbin "baserom.gba", 0xB3BFF0, 0x0000008

gUnk_08B3BFF8:: @ 08B3BFF8
	.incbin "baserom.gba", 0xB3BFF8, 0x0000010

gUnk_08B3C008:: @ 08B3C008
	.incbin "baserom.gba", 0xB3C008, 0x000000C

gUnk_08B3C014:: @ 08B3C014
	.incbin "baserom.gba", 0xB3C014, 0x000000C

gUnk_08B3C020:: @ 08B3C020
	.incbin "baserom.gba", 0xB3C020, 0x000001C

gUnk_08B3C03C:: @ 08B3C03C
	.incbin "baserom.gba", 0xB3C03C, 0x000001C

gUnk_08B3C058:: @ 08B3C058
	.incbin "baserom.gba", 0xB3C058, 0x0000018

gUnk_08B3C070:: @ 08B3C070
	.incbin "baserom.gba", 0xB3C070, 0x0000018

gUnk_08B3C088:: @ 08B3C088
	.incbin "baserom.gba", 0xB3C088, 0x000001C

gUnk_08B3C0A4:: @ 08B3C0A4
	.incbin "baserom.gba", 0xB3C0A4, 0x000001C

gUnk_08B3C0C0:: @ 08B3C0C0
	.incbin "baserom.gba", 0xB3C0C0, 0x0000020

gUnk_08B3C0E0:: @ 08B3C0E0
	.incbin "baserom.gba", 0xB3C0E0, 0x000001C

gUnk_08B3C0FC:: @ 08B3C0FC
	.incbin "baserom.gba", 0xB3C0FC, 0x000000C

gUnk_08B3C108:: @ 08B3C108
	.incbin "baserom.gba", 0xB3C108, 0x000001C

gUnk_08B3C124:: @ 08B3C124
	.incbin "baserom.gba", 0xB3C124, 0x0000010

gUnk_08B3C134:: @ 08B3C134
	.incbin "baserom.gba", 0xB3C134, 0x000000C

gUnk_08B3C140:: @ 08B3C140
	.incbin "baserom.gba", 0xB3C140, 0x0000014

gUnk_08B3C154:: @ 08B3C154
	.incbin "baserom.gba", 0xB3C154, 0x000000C

gUnk_08B3C160:: @ 08B3C160
	.incbin "baserom.gba", 0xB3C160, 0x0000018

gUnk_08B3C178:: @ 08B3C178
	.incbin "baserom.gba", 0xB3C178, 0x0000018

gUnk_08B3C190:: @ 08B3C190
	.incbin "baserom.gba", 0xB3C190, 0x0000018

gUnk_08B3C1A8:: @ 08B3C1A8
	.incbin "baserom.gba", 0xB3C1A8, 0x0000014

gUnk_08B3C1BC:: @ 08B3C1BC
	.incbin "baserom.gba", 0xB3C1BC, 0x0000018

gUnk_08B3C1D4:: @ 08B3C1D4
	.incbin "baserom.gba", 0xB3C1D4, 0x0000014

gUnk_08B3C1E8:: @ 08B3C1E8
	.incbin "baserom.gba", 0xB3C1E8, 0x0000014

gUnk_08B3C1FC:: @ 08B3C1FC
	.incbin "baserom.gba", 0xB3C1FC, 0x0000010

gUnk_08B3C20C:: @ 08B3C20C
	.incbin "baserom.gba", 0xB3C20C, 0x000000C

gUnk_08B3C218:: @ 08B3C218
	.incbin "baserom.gba", 0xB3C218, 0x000000C

gUnk_08B3C224:: @ 08B3C224
	.incbin "baserom.gba", 0xB3C224, 0x0000010

gUnk_08B3C234:: @ 08B3C234
	.incbin "baserom.gba", 0xB3C234, 0x0000010

gUnk_08B3C244:: @ 08B3C244
	.incbin "baserom.gba", 0xB3C244, 0x0000014

gUnk_08B3C258:: @ 08B3C258
	.incbin "baserom.gba", 0xB3C258, 0x0000018

gUnk_08B3C270:: @ 08B3C270
	.incbin "baserom.gba", 0xB3C270, 0x0000018

gUnk_08B3C288:: @ 08B3C288
	.incbin "baserom.gba", 0xB3C288, 0x0000004

gUnk_08B3C28C:: @ 08B3C28C
	.incbin "baserom.gba", 0xB3C28C, 0x000004C

gUnk_08B3C2D8:: @ 08B3C2D8
	.incbin "baserom.gba", 0xB3C2D8, 0x0000004

gUnk_08B3C2DC:: @ 08B3C2DC
	.incbin "baserom.gba", 0xB3C2DC, 0x000000C

gUnk_08B3C2E8:: @ 08B3C2E8
	.incbin "baserom.gba", 0xB3C2E8, 0x0000004

gUnk_08B3C2EC:: @ 08B3C2EC
	.incbin "baserom.gba", 0xB3C2EC, 0x0000004

gUnk_08B3C2F0:: @ 08B3C2F0
	.incbin "baserom.gba", 0xB3C2F0, 0x0000004

gUnk_08B3C2F4:: @ 08B3C2F4
	.incbin "baserom.gba", 0xB3C2F4, 0x0000008

gUnk_08B3C2FC:: @ 08B3C2FC
	.incbin "baserom.gba", 0xB3C2FC, 0x0000008

gUnk_08B3C304:: @ 08B3C304
	.incbin "baserom.gba", 0xB3C304, 0x000001C

gUnk_08B3C320:: @ 08B3C320
	.incbin "baserom.gba", 0xB3C320, 0x0000018

gUnk_08B3C338:: @ 08B3C338
	.incbin "baserom.gba", 0xB3C338, 0x0000018

gUnk_08B3C350:: @ 08B3C350
	.incbin "baserom.gba", 0xB3C350, 0x0000014

gUnk_08B3C364:: @ 08B3C364
	.incbin "baserom.gba", 0xB3C364, 0x0000010

gUnk_08B3C374:: @ 08B3C374
	.incbin "baserom.gba", 0xB3C374, 0x0000010

gUnk_08B3C384:: @ 08B3C384
	.incbin "baserom.gba", 0xB3C384, 0x0000010

gUnk_08B3C394:: @ 08B3C394
	.incbin "baserom.gba", 0xB3C394, 0x000000C

gUnk_08B3C3A0:: @ 08B3C3A0
	.incbin "baserom.gba", 0xB3C3A0, 0x0000018

gUnk_08B3C3B8:: @ 08B3C3B8
	.incbin "baserom.gba", 0xB3C3B8, 0x0000018

gUnk_08B3C3D0:: @ 08B3C3D0
	.incbin "baserom.gba", 0xB3C3D0, 0x000000C

gUnk_08B3C3DC:: @ 08B3C3DC
	.incbin "baserom.gba", 0xB3C3DC, 0x0000010

gUnk_08B3C3EC:: @ 08B3C3EC
	.incbin "baserom.gba", 0xB3C3EC, 0x000000C

gUnk_08B3C3F8:: @ 08B3C3F8
	.incbin "baserom.gba", 0xB3C3F8, 0x0000010

gUnk_08B3C408:: @ 08B3C408
	.incbin "baserom.gba", 0xB3C408, 0x000001C

gUnk_08B3C424:: @ 08B3C424
	.incbin "baserom.gba", 0xB3C424, 0x0000018

gUnk_08B3C43C:: @ 08B3C43C
	.incbin "baserom.gba", 0xB3C43C, 0x0000018

gUnk_08B3C454:: @ 08B3C454
	.incbin "baserom.gba", 0xB3C454, 0x0000014

gUnk_08B3C468:: @ 08B3C468
	.incbin "baserom.gba", 0xB3C468, 0x0000018

gUnk_08B3C480:: @ 08B3C480
	.incbin "baserom.gba", 0xB3C480, 0x000001C

gUnk_08B3C49C:: @ 08B3C49C
	.incbin "baserom.gba", 0xB3C49C, 0x000001C

gUnk_08B3C4B8:: @ 08B3C4B8
	.incbin "baserom.gba", 0xB3C4B8, 0x000001C

gUnk_08B3C4D4:: @ 08B3C4D4
	.incbin "baserom.gba", 0xB3C4D4, 0x000000C

gUnk_08B3C4E0:: @ 08B3C4E0
	.incbin "baserom.gba", 0xB3C4E0, 0x000001C

gUnk_08B3C4FC:: @ 08B3C4FC
	.incbin "baserom.gba", 0xB3C4FC, 0x0000010

gUnk_08B3C50C:: @ 08B3C50C
	.incbin "baserom.gba", 0xB3C50C, 0x0000008

gUnk_08B3C514:: @ 08B3C514
	.incbin "baserom.gba", 0xB3C514, 0x0000014

gUnk_08B3C528:: @ 08B3C528
	.incbin "baserom.gba", 0xB3C528, 0x000000C

gUnk_08B3C534:: @ 08B3C534
	.incbin "baserom.gba", 0xB3C534, 0x0000018

gUnk_08B3C54C:: @ 08B3C54C
	.incbin "baserom.gba", 0xB3C54C, 0x0000018

gUnk_08B3C564:: @ 08B3C564
	.incbin "baserom.gba", 0xB3C564, 0x0000018

gUnk_08B3C57C:: @ 08B3C57C
	.incbin "baserom.gba", 0xB3C57C, 0x0000018

gUnk_08B3C594:: @ 08B3C594
	.incbin "baserom.gba", 0xB3C594, 0x0000018

gUnk_08B3C5AC:: @ 08B3C5AC
	.incbin "baserom.gba", 0xB3C5AC, 0x0000018

gUnk_08B3C5C4:: @ 08B3C5C4
	.incbin "baserom.gba", 0xB3C5C4, 0x0000014

gUnk_08B3C5D8:: @ 08B3C5D8
	.incbin "baserom.gba", 0xB3C5D8, 0x0000014

gUnk_08B3C5EC:: @ 08B3C5EC
	.incbin "baserom.gba", 0xB3C5EC, 0x0000008

gUnk_08B3C5F4:: @ 08B3C5F4
	.incbin "baserom.gba", 0xB3C5F4, 0x000000C

gUnk_08B3C600:: @ 08B3C600
	.incbin "baserom.gba", 0xB3C600, 0x000000C

gUnk_08B3C60C:: @ 08B3C60C
	.incbin "baserom.gba", 0xB3C60C, 0x0000010

gUnk_08B3C61C:: @ 08B3C61C
	.incbin "baserom.gba", 0xB3C61C, 0x0000014

gUnk_08B3C630:: @ 08B3C630
	.incbin "baserom.gba", 0xB3C630, 0x0000014

gUnk_08B3C644:: @ 08B3C644
	.incbin "baserom.gba", 0xB3C644, 0x0000014

gUnk_08B3C658:: @ 08B3C658
	.incbin "baserom.gba", 0xB3C658, 0x0000004

gUnk_08B3C65C:: @ 08B3C65C
	.incbin "baserom.gba", 0xB3C65C, 0x000004C

gUnk_08B3C6A8:: @ 08B3C6A8
	.incbin "baserom.gba", 0xB3C6A8, 0x0000008

gUnk_08B3C6B0:: @ 08B3C6B0
	.incbin "baserom.gba", 0xB3C6B0, 0x0000008

gUnk_08B3C6B8:: @ 08B3C6B8
	.incbin "baserom.gba", 0xB3C6B8, 0x000000C

gUnk_08B3C6C4:: @ 08B3C6C4
	.incbin "baserom.gba", 0xB3C6C4, 0x000000C

gUnk_08B3C6D0:: @ 08B3C6D0
	.incbin "baserom.gba", 0xB3C6D0, 0x0000004

gUnk_08B3C6D4:: @ 08B3C6D4
	.incbin "baserom.gba", 0xB3C6D4, 0x0000004

gUnk_08B3C6D8:: @ 08B3C6D8
	.incbin "baserom.gba", 0xB3C6D8, 0x0000004

gUnk_08B3C6DC:: @ 08B3C6DC
	.incbin "baserom.gba", 0xB3C6DC, 0x0000004

gUnk_08B3C6E0:: @ 08B3C6E0
	.incbin "baserom.gba", 0xB3C6E0, 0x0000004

gUnk_08B3C6E4:: @ 08B3C6E4
	.incbin "baserom.gba", 0xB3C6E4, 0x0000004

gUnk_08B3C6E8:: @ 08B3C6E8
	.incbin "baserom.gba", 0xB3C6E8, 0x0000004

gUnk_08B3C6EC:: @ 08B3C6EC
	.incbin "baserom.gba", 0xB3C6EC, 0x0000004

gUnk_08B3C6F0:: @ 08B3C6F0
	.incbin "baserom.gba", 0xB3C6F0, 0x0000004

gUnk_08B3C6F4:: @ 08B3C6F4
	.incbin "baserom.gba", 0xB3C6F4, 0x0000004

gUnk_08B3C6F8:: @ 08B3C6F8
	.incbin "baserom.gba", 0xB3C6F8, 0x0000004

gUnk_08B3C6FC:: @ 08B3C6FC
	.incbin "baserom.gba", 0xB3C6FC, 0x0000004

gUnk_08B3C700:: @ 08B3C700
	.incbin "baserom.gba", 0xB3C700, 0x0000004

gUnk_08B3C704:: @ 08B3C704
	.incbin "baserom.gba", 0xB3C704, 0x0000004

gUnk_08B3C708:: @ 08B3C708
	.incbin "baserom.gba", 0xB3C708, 0x0000004

gUnk_08B3C70C:: @ 08B3C70C
	.incbin "baserom.gba", 0xB3C70C, 0x0000004

gUnk_08B3C710:: @ 08B3C710
	.incbin "baserom.gba", 0xB3C710, 0x0000004

gUnk_08B3C714:: @ 08B3C714
	.incbin "baserom.gba", 0xB3C714, 0x0000004

gUnk_08B3C718:: @ 08B3C718
	.incbin "baserom.gba", 0xB3C718, 0x0000004

gUnk_08B3C71C:: @ 08B3C71C
	.incbin "baserom.gba", 0xB3C71C, 0x0000004

gUnk_08B3C720:: @ 08B3C720
	.incbin "baserom.gba", 0xB3C720, 0x0000004

gUnk_08B3C724:: @ 08B3C724
	.incbin "baserom.gba", 0xB3C724, 0x0000004

gUnk_08B3C728:: @ 08B3C728
	.incbin "baserom.gba", 0xB3C728, 0x0000004

gUnk_08B3C72C:: @ 08B3C72C
	.incbin "baserom.gba", 0xB3C72C, 0x0000004

gUnk_08B3C730:: @ 08B3C730
	.incbin "baserom.gba", 0xB3C730, 0x0000004

gUnk_08B3C734:: @ 08B3C734
	.incbin "baserom.gba", 0xB3C734, 0x000004C

gUnk_08B3C780:: @ 08B3C780
	.incbin "baserom.gba", 0xB3C780, 0x0000004

gUnk_08B3C784:: @ 08B3C784
	.incbin "baserom.gba", 0xB3C784, 0x0000004

gUnk_08B3C788:: @ 08B3C788
	.incbin "baserom.gba", 0xB3C788, 0x0000008

gUnk_08B3C790:: @ 08B3C790
	.incbin "baserom.gba", 0xB3C790, 0x0000008

gUnk_08B3C798:: @ 08B3C798
	.incbin "baserom.gba", 0xB3C798, 0x0000004

gUnk_08B3C79C:: @ 08B3C79C
	.incbin "baserom.gba", 0xB3C79C, 0x0000004

gUnk_08B3C7A0:: @ 08B3C7A0
	.incbin "baserom.gba", 0xB3C7A0, 0x0000004

gUnk_08B3C7A4:: @ 08B3C7A4
	.incbin "baserom.gba", 0xB3C7A4, 0x0000004

gUnk_08B3C7A8:: @ 08B3C7A8
	.incbin "baserom.gba", 0xB3C7A8, 0x0000004

gUnk_08B3C7AC:: @ 08B3C7AC
	.incbin "baserom.gba", 0xB3C7AC, 0x0000004

gUnk_08B3C7B0:: @ 08B3C7B0
	.incbin "baserom.gba", 0xB3C7B0, 0x0000004

gUnk_08B3C7B4:: @ 08B3C7B4
	.incbin "baserom.gba", 0xB3C7B4, 0x0000004

gUnk_08B3C7B8:: @ 08B3C7B8
	.incbin "baserom.gba", 0xB3C7B8, 0x0000004

gUnk_08B3C7BC:: @ 08B3C7BC
	.incbin "baserom.gba", 0xB3C7BC, 0x0000004

gUnk_08B3C7C0:: @ 08B3C7C0
	.incbin "baserom.gba", 0xB3C7C0, 0x0000004

gUnk_08B3C7C4:: @ 08B3C7C4
	.incbin "baserom.gba", 0xB3C7C4, 0x0000004

gUnk_08B3C7C8:: @ 08B3C7C8
	.incbin "baserom.gba", 0xB3C7C8, 0x0000004

gUnk_08B3C7CC:: @ 08B3C7CC
	.incbin "baserom.gba", 0xB3C7CC, 0x0000004

gUnk_08B3C7D0:: @ 08B3C7D0
	.incbin "baserom.gba", 0xB3C7D0, 0x0000004

gUnk_08B3C7D4:: @ 08B3C7D4
	.incbin "baserom.gba", 0xB3C7D4, 0x0000004

gUnk_08B3C7D8:: @ 08B3C7D8
	.incbin "baserom.gba", 0xB3C7D8, 0x0000004

gUnk_08B3C7DC:: @ 08B3C7DC
	.incbin "baserom.gba", 0xB3C7DC, 0x0000004

gUnk_08B3C7E0:: @ 08B3C7E0
	.incbin "baserom.gba", 0xB3C7E0, 0x0000004

gUnk_08B3C7E4:: @ 08B3C7E4
	.incbin "baserom.gba", 0xB3C7E4, 0x0000004

gUnk_08B3C7E8:: @ 08B3C7E8
	.incbin "baserom.gba", 0xB3C7E8, 0x0000004

gUnk_08B3C7EC:: @ 08B3C7EC
	.incbin "baserom.gba", 0xB3C7EC, 0x0000004

gUnk_08B3C7F0:: @ 08B3C7F0
	.incbin "baserom.gba", 0xB3C7F0, 0x0000004

gUnk_08B3C7F4:: @ 08B3C7F4
	.incbin "baserom.gba", 0xB3C7F4, 0x0000004

gUnk_08B3C7F8:: @ 08B3C7F8
	.incbin "baserom.gba", 0xB3C7F8, 0x0000004

gUnk_08B3C7FC:: @ 08B3C7FC
	.incbin "baserom.gba", 0xB3C7FC, 0x000004C

gUnk_08B3C848:: @ 08B3C848
	.incbin "baserom.gba", 0xB3C848, 0x0000004

gUnk_08B3C84C:: @ 08B3C84C
	.incbin "baserom.gba", 0xB3C84C, 0x0000020

gUnk_08B3C86C:: @ 08B3C86C
	.incbin "baserom.gba", 0xB3C86C, 0x0000004

gUnk_08B3C870:: @ 08B3C870
	.incbin "baserom.gba", 0xB3C870, 0x0000004

gUnk_08B3C874:: @ 08B3C874
	.incbin "baserom.gba", 0xB3C874, 0x0000004

gUnk_08B3C878:: @ 08B3C878
	.incbin "baserom.gba", 0xB3C878, 0x0000020

gUnk_08B3C898:: @ 08B3C898
	.incbin "baserom.gba", 0xB3C898, 0x000001C

gUnk_08B3C8B4:: @ 08B3C8B4
	.incbin "baserom.gba", 0xB3C8B4, 0x0000008

gUnk_08B3C8BC:: @ 08B3C8BC
	.incbin "baserom.gba", 0xB3C8BC, 0x000000C

gUnk_08B3C8C8:: @ 08B3C8C8
	.incbin "baserom.gba", 0xB3C8C8, 0x000000C

gUnk_08B3C8D4:: @ 08B3C8D4
	.incbin "baserom.gba", 0xB3C8D4, 0x0000010

gUnk_08B3C8E4:: @ 08B3C8E4
	.incbin "baserom.gba", 0xB3C8E4, 0x000001C

gUnk_08B3C900:: @ 08B3C900
	.incbin "baserom.gba", 0xB3C900, 0x0000014

gUnk_08B3C914:: @ 08B3C914
	.incbin "baserom.gba", 0xB3C914, 0x0000018

gUnk_08B3C92C:: @ 08B3C92C
	.incbin "baserom.gba", 0xB3C92C, 0x0000018

gUnk_08B3C944:: @ 08B3C944
	.incbin "baserom.gba", 0xB3C944, 0x000000C

gUnk_08B3C950:: @ 08B3C950
	.incbin "baserom.gba", 0xB3C950, 0x0000008

gUnk_08B3C958:: @ 08B3C958
	.incbin "baserom.gba", 0xB3C958, 0x0000020

gUnk_08B3C978:: @ 08B3C978
	.incbin "baserom.gba", 0xB3C978, 0x000001C

gUnk_08B3C994:: @ 08B3C994
	.incbin "baserom.gba", 0xB3C994, 0x0000024

gUnk_08B3C9B8:: @ 08B3C9B8
	.incbin "baserom.gba", 0xB3C9B8, 0x0000020

gUnk_08B3C9D8:: @ 08B3C9D8
	.incbin "baserom.gba", 0xB3C9D8, 0x0000018

gUnk_08B3C9F0:: @ 08B3C9F0
	.incbin "baserom.gba", 0xB3C9F0, 0x0000018

gUnk_08B3CA08:: @ 08B3CA08
	.incbin "baserom.gba", 0xB3CA08, 0x0000014

gUnk_08B3CA1C:: @ 08B3CA1C
	.incbin "baserom.gba", 0xB3CA1C, 0x0000014

gUnk_08B3CA30:: @ 08B3CA30
	.incbin "baserom.gba", 0xB3CA30, 0x0000018

gUnk_08B3CA48:: @ 08B3CA48
	.incbin "baserom.gba", 0xB3CA48, 0x0000018

gUnk_08B3CA60:: @ 08B3CA60
	.incbin "baserom.gba", 0xB3CA60, 0x0000010

gUnk_08B3CA70:: @ 08B3CA70
	.incbin "baserom.gba", 0xB3CA70, 0x0000010

gUnk_08B3CA80:: @ 08B3CA80
	.incbin "baserom.gba", 0xB3CA80, 0x0000020

gUnk_08B3CAA0:: @ 08B3CAA0
	.incbin "baserom.gba", 0xB3CAA0, 0x0000008

gUnk_08B3CAA8:: @ 08B3CAA8
	.incbin "baserom.gba", 0xB3CAA8, 0x0000014

gUnk_08B3CABC:: @ 08B3CABC
	.incbin "baserom.gba", 0xB3CABC, 0x000001C

gUnk_08B3CAD8:: @ 08B3CAD8
	.incbin "baserom.gba", 0xB3CAD8, 0x0000010

gUnk_08B3CAE8:: @ 08B3CAE8
	.incbin "baserom.gba", 0xB3CAE8, 0x0000018

gUnk_08B3CB00:: @ 08B3CB00
	.incbin "baserom.gba", 0xB3CB00, 0x000000C

gUnk_08B3CB0C:: @ 08B3CB0C
	.incbin "baserom.gba", 0xB3CB0C, 0x0000014

gUnk_08B3CB20:: @ 08B3CB20
	.incbin "baserom.gba", 0xB3CB20, 0x0000014

gUnk_08B3CB34:: @ 08B3CB34
	.incbin "baserom.gba", 0xB3CB34, 0x000001C

gUnk_08B3CB50:: @ 08B3CB50
	.incbin "baserom.gba", 0xB3CB50, 0x0000018

gUnk_08B3CB68:: @ 08B3CB68
	.incbin "baserom.gba", 0xB3CB68, 0x0000018

gUnk_08B3CB80:: @ 08B3CB80
	.incbin "baserom.gba", 0xB3CB80, 0x0000018

gUnk_08B3CB98:: @ 08B3CB98
	.incbin "baserom.gba", 0xB3CB98, 0x000001C

gUnk_08B3CBB4:: @ 08B3CBB4
	.incbin "baserom.gba", 0xB3CBB4, 0x0000020

gUnk_08B3CBD4:: @ 08B3CBD4
	.incbin "baserom.gba", 0xB3CBD4, 0x0000020

gUnk_08B3CBF4:: @ 08B3CBF4
	.incbin "baserom.gba", 0xB3CBF4, 0x0000024

gUnk_08B3CC18:: @ 08B3CC18
	.incbin "baserom.gba", 0xB3CC18, 0x0000024

gUnk_08B3CC3C:: @ 08B3CC3C
	.incbin "baserom.gba", 0xB3CC3C, 0x0000010

gUnk_08B3CC4C:: @ 08B3CC4C
	.incbin "baserom.gba", 0xB3CC4C, 0x000000C

gUnk_08B3CC58:: @ 08B3CC58
	.incbin "baserom.gba", 0xB3CC58, 0x0000010

gUnk_08B3CC68:: @ 08B3CC68
	.incbin "baserom.gba", 0xB3CC68, 0x0000004

gUnk_08B3CC6C:: @ 08B3CC6C
	.incbin "baserom.gba", 0xB3CC6C, 0x000004C

gUnk_08B3CCB8:: @ 08B3CCB8
	.incbin "baserom.gba", 0xB3CCB8, 0x0000004

gUnk_08B3CCBC:: @ 08B3CCBC
	.incbin "baserom.gba", 0xB3CCBC, 0x000001C

gUnk_08B3CCD8:: @ 08B3CCD8
	.incbin "baserom.gba", 0xB3CCD8, 0x0000004

gUnk_08B3CCDC:: @ 08B3CCDC
	.incbin "baserom.gba", 0xB3CCDC, 0x0000004

gUnk_08B3CCE0:: @ 08B3CCE0
	.incbin "baserom.gba", 0xB3CCE0, 0x0000004

gUnk_08B3CCE4:: @ 08B3CCE4
	.incbin "baserom.gba", 0xB3CCE4, 0x000001C

gUnk_08B3CD00:: @ 08B3CD00
	.incbin "baserom.gba", 0xB3CD00, 0x0000018

gUnk_08B3CD18:: @ 08B3CD18
	.incbin "baserom.gba", 0xB3CD18, 0x000000C

gUnk_08B3CD24:: @ 08B3CD24
	.incbin "baserom.gba", 0xB3CD24, 0x0000008

gUnk_08B3CD2C:: @ 08B3CD2C
	.incbin "baserom.gba", 0xB3CD2C, 0x0000008

gUnk_08B3CD34:: @ 08B3CD34
	.incbin "baserom.gba", 0xB3CD34, 0x000000C

gUnk_08B3CD40:: @ 08B3CD40
	.incbin "baserom.gba", 0xB3CD40, 0x0000018

gUnk_08B3CD58:: @ 08B3CD58
	.incbin "baserom.gba", 0xB3CD58, 0x0000010

gUnk_08B3CD68:: @ 08B3CD68
	.incbin "baserom.gba", 0xB3CD68, 0x0000014

gUnk_08B3CD7C:: @ 08B3CD7C
	.incbin "baserom.gba", 0xB3CD7C, 0x0000014

gUnk_08B3CD90:: @ 08B3CD90
	.incbin "baserom.gba", 0xB3CD90, 0x0000010

gUnk_08B3CDA0:: @ 08B3CDA0
	.incbin "baserom.gba", 0xB3CDA0, 0x000000C

gUnk_08B3CDAC:: @ 08B3CDAC
	.incbin "baserom.gba", 0xB3CDAC, 0x000001C

gUnk_08B3CDC8:: @ 08B3CDC8
	.incbin "baserom.gba", 0xB3CDC8, 0x0000020

gUnk_08B3CDE8:: @ 08B3CDE8
	.incbin "baserom.gba", 0xB3CDE8, 0x0000020

gUnk_08B3CE08:: @ 08B3CE08
	.incbin "baserom.gba", 0xB3CE08, 0x0000020

gUnk_08B3CE28:: @ 08B3CE28
	.incbin "baserom.gba", 0xB3CE28, 0x0000014

gUnk_08B3CE3C:: @ 08B3CE3C
	.incbin "baserom.gba", 0xB3CE3C, 0x0000014

gUnk_08B3CE50:: @ 08B3CE50
	.incbin "baserom.gba", 0xB3CE50, 0x0000010

gUnk_08B3CE60:: @ 08B3CE60
	.incbin "baserom.gba", 0xB3CE60, 0x0000010

gUnk_08B3CE70:: @ 08B3CE70
	.incbin "baserom.gba", 0xB3CE70, 0x0000014

gUnk_08B3CE84:: @ 08B3CE84
	.incbin "baserom.gba", 0xB3CE84, 0x0000014

gUnk_08B3CE98:: @ 08B3CE98
	.incbin "baserom.gba", 0xB3CE98, 0x0000014

gUnk_08B3CEAC:: @ 08B3CEAC
	.incbin "baserom.gba", 0xB3CEAC, 0x0000014

gUnk_08B3CEC0:: @ 08B3CEC0
	.incbin "baserom.gba", 0xB3CEC0, 0x0000020

gUnk_08B3CEE0:: @ 08B3CEE0
	.incbin "baserom.gba", 0xB3CEE0, 0x0000008

gUnk_08B3CEE8:: @ 08B3CEE8
	.incbin "baserom.gba", 0xB3CEE8, 0x0000010

gUnk_08B3CEF8:: @ 08B3CEF8
	.incbin "baserom.gba", 0xB3CEF8, 0x0000018

gUnk_08B3CF10:: @ 08B3CF10
	.incbin "baserom.gba", 0xB3CF10, 0x000000C

gUnk_08B3CF1C:: @ 08B3CF1C
	.incbin "baserom.gba", 0xB3CF1C, 0x0000014

gUnk_08B3CF30:: @ 08B3CF30
	.incbin "baserom.gba", 0xB3CF30, 0x0000010

gUnk_08B3CF40:: @ 08B3CF40
	.incbin "baserom.gba", 0xB3CF40, 0x0000018

gUnk_08B3CF58:: @ 08B3CF58
	.incbin "baserom.gba", 0xB3CF58, 0x0000018

gUnk_08B3CF70:: @ 08B3CF70
	.incbin "baserom.gba", 0xB3CF70, 0x0000020

gUnk_08B3CF90:: @ 08B3CF90
	.incbin "baserom.gba", 0xB3CF90, 0x000001C

gUnk_08B3CFAC:: @ 08B3CFAC
	.incbin "baserom.gba", 0xB3CFAC, 0x000001C

gUnk_08B3CFC8:: @ 08B3CFC8
	.incbin "baserom.gba", 0xB3CFC8, 0x000001C

gUnk_08B3CFE4:: @ 08B3CFE4
	.incbin "baserom.gba", 0xB3CFE4, 0x0000020

gUnk_08B3D004:: @ 08B3D004
	.incbin "baserom.gba", 0xB3D004, 0x000001C

gUnk_08B3D020:: @ 08B3D020
	.incbin "baserom.gba", 0xB3D020, 0x000001C

gUnk_08B3D03C:: @ 08B3D03C
	.incbin "baserom.gba", 0xB3D03C, 0x0000020

gUnk_08B3D05C:: @ 08B3D05C
	.incbin "baserom.gba", 0xB3D05C, 0x0000020

gUnk_08B3D07C:: @ 08B3D07C
	.incbin "baserom.gba", 0xB3D07C, 0x0000014

gUnk_08B3D090:: @ 08B3D090
	.incbin "baserom.gba", 0xB3D090, 0x0000010

gUnk_08B3D0A0:: @ 08B3D0A0
	.incbin "baserom.gba", 0xB3D0A0, 0x0000014

gUnk_08B3D0B4:: @ 08B3D0B4
	.incbin "baserom.gba", 0xB3D0B4, 0x0000004

gUnk_08B3D0B8:: @ 08B3D0B8
	.incbin "baserom.gba", 0xB3D0B8, 0x000004C

gUnk_08B3D104:: @ 08B3D104
	.incbin "baserom.gba", 0xB3D104, 0x0000004

gUnk_08B3D108:: @ 08B3D108
	.incbin "baserom.gba", 0xB3D108, 0x000001C

gUnk_08B3D124:: @ 08B3D124
	.incbin "baserom.gba", 0xB3D124, 0x0000004

gUnk_08B3D128:: @ 08B3D128
	.incbin "baserom.gba", 0xB3D128, 0x0000004

gUnk_08B3D12C:: @ 08B3D12C
	.incbin "baserom.gba", 0xB3D12C, 0x0000004

gUnk_08B3D130:: @ 08B3D130
	.incbin "baserom.gba", 0xB3D130, 0x0000018

gUnk_08B3D148:: @ 08B3D148
	.incbin "baserom.gba", 0xB3D148, 0x0000018

gUnk_08B3D160:: @ 08B3D160
	.incbin "baserom.gba", 0xB3D160, 0x000000C

gUnk_08B3D16C:: @ 08B3D16C
	.incbin "baserom.gba", 0xB3D16C, 0x0000008

gUnk_08B3D174:: @ 08B3D174
	.incbin "baserom.gba", 0xB3D174, 0x0000008

gUnk_08B3D17C:: @ 08B3D17C
	.incbin "baserom.gba", 0xB3D17C, 0x0000008

gUnk_08B3D184:: @ 08B3D184
	.incbin "baserom.gba", 0xB3D184, 0x0000014

gUnk_08B3D198:: @ 08B3D198
	.incbin "baserom.gba", 0xB3D198, 0x000000C

gUnk_08B3D1A4:: @ 08B3D1A4
	.incbin "baserom.gba", 0xB3D1A4, 0x0000014

gUnk_08B3D1B8:: @ 08B3D1B8
	.incbin "baserom.gba", 0xB3D1B8, 0x0000010

gUnk_08B3D1C8:: @ 08B3D1C8
	.incbin "baserom.gba", 0xB3D1C8, 0x0000014

gUnk_08B3D1DC:: @ 08B3D1DC
	.incbin "baserom.gba", 0xB3D1DC, 0x0000010

gUnk_08B3D1EC:: @ 08B3D1EC
	.incbin "baserom.gba", 0xB3D1EC, 0x000001C

gUnk_08B3D208:: @ 08B3D208
	.incbin "baserom.gba", 0xB3D208, 0x0000020

gUnk_08B3D228:: @ 08B3D228
	.incbin "baserom.gba", 0xB3D228, 0x000001C

gUnk_08B3D244:: @ 08B3D244
	.incbin "baserom.gba", 0xB3D244, 0x0000020

gUnk_08B3D264:: @ 08B3D264
	.incbin "baserom.gba", 0xB3D264, 0x0000014

gUnk_08B3D278:: @ 08B3D278
	.incbin "baserom.gba", 0xB3D278, 0x0000010

gUnk_08B3D288:: @ 08B3D288
	.incbin "baserom.gba", 0xB3D288, 0x0000010

gUnk_08B3D298:: @ 08B3D298
	.incbin "baserom.gba", 0xB3D298, 0x000000C

gUnk_08B3D2A4:: @ 08B3D2A4
	.incbin "baserom.gba", 0xB3D2A4, 0x0000010

gUnk_08B3D2B4:: @ 08B3D2B4
	.incbin "baserom.gba", 0xB3D2B4, 0x0000014

gUnk_08B3D2C8:: @ 08B3D2C8
	.incbin "baserom.gba", 0xB3D2C8, 0x0000018

gUnk_08B3D2E0:: @ 08B3D2E0
	.incbin "baserom.gba", 0xB3D2E0, 0x0000014

gUnk_08B3D2F4:: @ 08B3D2F4
	.incbin "baserom.gba", 0xB3D2F4, 0x000001C

gUnk_08B3D310:: @ 08B3D310
	.incbin "baserom.gba", 0xB3D310, 0x000000C

gUnk_08B3D31C:: @ 08B3D31C
	.incbin "baserom.gba", 0xB3D31C, 0x0000010

gUnk_08B3D32C:: @ 08B3D32C
	.incbin "baserom.gba", 0xB3D32C, 0x0000014

gUnk_08B3D340:: @ 08B3D340
	.incbin "baserom.gba", 0xB3D340, 0x000000C

gUnk_08B3D34C:: @ 08B3D34C
	.incbin "baserom.gba", 0xB3D34C, 0x0000014

gUnk_08B3D360:: @ 08B3D360
	.incbin "baserom.gba", 0xB3D360, 0x0000010

gUnk_08B3D370:: @ 08B3D370
	.incbin "baserom.gba", 0xB3D370, 0x0000018

gUnk_08B3D388:: @ 08B3D388
	.incbin "baserom.gba", 0xB3D388, 0x000001C

gUnk_08B3D3A4:: @ 08B3D3A4
	.incbin "baserom.gba", 0xB3D3A4, 0x0000020

gUnk_08B3D3C4:: @ 08B3D3C4
	.incbin "baserom.gba", 0xB3D3C4, 0x0000020

gUnk_08B3D3E4:: @ 08B3D3E4
	.incbin "baserom.gba", 0xB3D3E4, 0x000001C

gUnk_08B3D400:: @ 08B3D400
	.incbin "baserom.gba", 0xB3D400, 0x0000020

gUnk_08B3D420:: @ 08B3D420
	.incbin "baserom.gba", 0xB3D420, 0x0000020

gUnk_08B3D440:: @ 08B3D440
	.incbin "baserom.gba", 0xB3D440, 0x0000018

gUnk_08B3D458:: @ 08B3D458
	.incbin "baserom.gba", 0xB3D458, 0x000001C

gUnk_08B3D474:: @ 08B3D474
	.incbin "baserom.gba", 0xB3D474, 0x000001C

gUnk_08B3D490:: @ 08B3D490
	.incbin "baserom.gba", 0xB3D490, 0x0000020

gUnk_08B3D4B0:: @ 08B3D4B0
	.incbin "baserom.gba", 0xB3D4B0, 0x0000014

gUnk_08B3D4C4:: @ 08B3D4C4
	.incbin "baserom.gba", 0xB3D4C4, 0x0000014

gUnk_08B3D4D8:: @ 08B3D4D8
	.incbin "baserom.gba", 0xB3D4D8, 0x0000018

gUnk_08B3D4F0:: @ 08B3D4F0
	.incbin "baserom.gba", 0xB3D4F0, 0x0000004

gUnk_08B3D4F4:: @ 08B3D4F4
	.incbin "baserom.gba", 0xB3D4F4, 0x000004C

gUnk_08B3D540:: @ 08B3D540
	.incbin "baserom.gba", 0xB3D540, 0x0000004

gUnk_08B3D544:: @ 08B3D544
	.incbin "baserom.gba", 0xB3D544, 0x0000018

gUnk_08B3D55C:: @ 08B3D55C
	.incbin "baserom.gba", 0xB3D55C, 0x0000004

gUnk_08B3D560:: @ 08B3D560
	.incbin "baserom.gba", 0xB3D560, 0x0000004

gUnk_08B3D564:: @ 08B3D564
	.incbin "baserom.gba", 0xB3D564, 0x0000004

gUnk_08B3D568:: @ 08B3D568
	.incbin "baserom.gba", 0xB3D568, 0x0000018

gUnk_08B3D580:: @ 08B3D580
	.incbin "baserom.gba", 0xB3D580, 0x0000014

gUnk_08B3D594:: @ 08B3D594
	.incbin "baserom.gba", 0xB3D594, 0x0000010

gUnk_08B3D5A4:: @ 08B3D5A4
	.incbin "baserom.gba", 0xB3D5A4, 0x000000C

gUnk_08B3D5B0:: @ 08B3D5B0
	.incbin "baserom.gba", 0xB3D5B0, 0x0000008

gUnk_08B3D5B8:: @ 08B3D5B8
	.incbin "baserom.gba", 0xB3D5B8, 0x0000008

gUnk_08B3D5C0:: @ 08B3D5C0
	.incbin "baserom.gba", 0xB3D5C0, 0x0000014

gUnk_08B3D5D4:: @ 08B3D5D4
	.incbin "baserom.gba", 0xB3D5D4, 0x000000C

gUnk_08B3D5E0:: @ 08B3D5E0
	.incbin "baserom.gba", 0xB3D5E0, 0x0000010

gUnk_08B3D5F0:: @ 08B3D5F0
	.incbin "baserom.gba", 0xB3D5F0, 0x0000010

gUnk_08B3D600:: @ 08B3D600
	.incbin "baserom.gba", 0xB3D600, 0x0000014

gUnk_08B3D614:: @ 08B3D614
	.incbin "baserom.gba", 0xB3D614, 0x0000010

gUnk_08B3D624:: @ 08B3D624
	.incbin "baserom.gba", 0xB3D624, 0x0000018

gUnk_08B3D63C:: @ 08B3D63C
	.incbin "baserom.gba", 0xB3D63C, 0x0000020

gUnk_08B3D65C:: @ 08B3D65C
	.incbin "baserom.gba", 0xB3D65C, 0x000001C

gUnk_08B3D678:: @ 08B3D678
	.incbin "baserom.gba", 0xB3D678, 0x000001C

gUnk_08B3D694:: @ 08B3D694
	.incbin "baserom.gba", 0xB3D694, 0x0000010

gUnk_08B3D6A4:: @ 08B3D6A4
	.incbin "baserom.gba", 0xB3D6A4, 0x0000010

gUnk_08B3D6B4:: @ 08B3D6B4
	.incbin "baserom.gba", 0xB3D6B4, 0x000000C

gUnk_08B3D6C0:: @ 08B3D6C0
	.incbin "baserom.gba", 0xB3D6C0, 0x000000C

gUnk_08B3D6CC:: @ 08B3D6CC
	.incbin "baserom.gba", 0xB3D6CC, 0x0000010

gUnk_08B3D6DC:: @ 08B3D6DC
	.incbin "baserom.gba", 0xB3D6DC, 0x0000010

gUnk_08B3D6EC:: @ 08B3D6EC
	.incbin "baserom.gba", 0xB3D6EC, 0x0000018

gUnk_08B3D704:: @ 08B3D704
	.incbin "baserom.gba", 0xB3D704, 0x0000018

gUnk_08B3D71C:: @ 08B3D71C
	.incbin "baserom.gba", 0xB3D71C, 0x000001C

gUnk_08B3D738:: @ 08B3D738
	.incbin "baserom.gba", 0xB3D738, 0x000000C

gUnk_08B3D744:: @ 08B3D744
	.incbin "baserom.gba", 0xB3D744, 0x000000C

gUnk_08B3D750:: @ 08B3D750
	.incbin "baserom.gba", 0xB3D750, 0x0000014

gUnk_08B3D764:: @ 08B3D764
	.incbin "baserom.gba", 0xB3D764, 0x0000008

gUnk_08B3D76C:: @ 08B3D76C
	.incbin "baserom.gba", 0xB3D76C, 0x0000010

gUnk_08B3D77C:: @ 08B3D77C
	.incbin "baserom.gba", 0xB3D77C, 0x0000014

gUnk_08B3D790:: @ 08B3D790
	.incbin "baserom.gba", 0xB3D790, 0x0000018

gUnk_08B3D7A8:: @ 08B3D7A8
	.incbin "baserom.gba", 0xB3D7A8, 0x000001C

gUnk_08B3D7C4:: @ 08B3D7C4
	.incbin "baserom.gba", 0xB3D7C4, 0x0000020

gUnk_08B3D7E4:: @ 08B3D7E4
	.incbin "baserom.gba", 0xB3D7E4, 0x0000020

gUnk_08B3D804:: @ 08B3D804
	.incbin "baserom.gba", 0xB3D804, 0x000001C

gUnk_08B3D820:: @ 08B3D820
	.incbin "baserom.gba", 0xB3D820, 0x0000020

gUnk_08B3D840:: @ 08B3D840
	.incbin "baserom.gba", 0xB3D840, 0x0000020

gUnk_08B3D860:: @ 08B3D860
	.incbin "baserom.gba", 0xB3D860, 0x0000018

gUnk_08B3D878:: @ 08B3D878
	.incbin "baserom.gba", 0xB3D878, 0x0000018

gUnk_08B3D890:: @ 08B3D890
	.incbin "baserom.gba", 0xB3D890, 0x000001C

gUnk_08B3D8AC:: @ 08B3D8AC
	.incbin "baserom.gba", 0xB3D8AC, 0x000001C

gUnk_08B3D8C8:: @ 08B3D8C8
	.incbin "baserom.gba", 0xB3D8C8, 0x0000014

gUnk_08B3D8DC:: @ 08B3D8DC
	.incbin "baserom.gba", 0xB3D8DC, 0x0000014

gUnk_08B3D8F0:: @ 08B3D8F0
	.incbin "baserom.gba", 0xB3D8F0, 0x0000018

gUnk_08B3D908:: @ 08B3D908
	.incbin "baserom.gba", 0xB3D908, 0x0000004

gUnk_08B3D90C:: @ 08B3D90C
	.incbin "baserom.gba", 0xB3D90C, 0x000004C

gUnk_08B3D958:: @ 08B3D958
	.incbin "baserom.gba", 0xB3D958, 0x0000008

gUnk_08B3D960:: @ 08B3D960
	.incbin "baserom.gba", 0xB3D960, 0x0000008

gUnk_08B3D968:: @ 08B3D968
	.incbin "baserom.gba", 0xB3D968, 0x0000008

gUnk_08B3D970:: @ 08B3D970
	.incbin "baserom.gba", 0xB3D970, 0x000000C

gUnk_08B3D97C:: @ 08B3D97C
	.incbin "baserom.gba", 0xB3D97C, 0x0000004

gUnk_08B3D980:: @ 08B3D980
	.incbin "baserom.gba", 0xB3D980, 0x000000C

gUnk_08B3D98C:: @ 08B3D98C
	.incbin "baserom.gba", 0xB3D98C, 0x000000C

gUnk_08B3D998:: @ 08B3D998
	.incbin "baserom.gba", 0xB3D998, 0x0000018

gUnk_08B3D9B0:: @ 08B3D9B0
	.incbin "baserom.gba", 0xB3D9B0, 0x0000010

gUnk_08B3D9C0:: @ 08B3D9C0
	.incbin "baserom.gba", 0xB3D9C0, 0x0000004

gUnk_08B3D9C4:: @ 08B3D9C4
	.incbin "baserom.gba", 0xB3D9C4, 0x0000004

gUnk_08B3D9C8:: @ 08B3D9C8
	.incbin "baserom.gba", 0xB3D9C8, 0x0000010

gUnk_08B3D9D8:: @ 08B3D9D8
	.incbin "baserom.gba", 0xB3D9D8, 0x0000004

gUnk_08B3D9DC:: @ 08B3D9DC
	.incbin "baserom.gba", 0xB3D9DC, 0x0000004

gUnk_08B3D9E0:: @ 08B3D9E0
	.incbin "baserom.gba", 0xB3D9E0, 0x0000004

gUnk_08B3D9E4:: @ 08B3D9E4
	.incbin "baserom.gba", 0xB3D9E4, 0x0000004

gUnk_08B3D9E8:: @ 08B3D9E8
	.incbin "baserom.gba", 0xB3D9E8, 0x0000004

gUnk_08B3D9EC:: @ 08B3D9EC
	.incbin "baserom.gba", 0xB3D9EC, 0x0000010

gUnk_08B3D9FC:: @ 08B3D9FC
	.incbin "baserom.gba", 0xB3D9FC, 0x0000014

gUnk_08B3DA10:: @ 08B3DA10
	.incbin "baserom.gba", 0xB3DA10, 0x0000014

gUnk_08B3DA24:: @ 08B3DA24
	.incbin "baserom.gba", 0xB3DA24, 0x0000018

gUnk_08B3DA3C:: @ 08B3DA3C
	.incbin "baserom.gba", 0xB3DA3C, 0x000001C

gUnk_08B3DA58:: @ 08B3DA58
	.incbin "baserom.gba", 0xB3DA58, 0x0000018

gUnk_08B3DA70:: @ 08B3DA70
	.incbin "baserom.gba", 0xB3DA70, 0x000004C

gUnk_08B3DABC:: @ 08B3DABC
	.incbin "baserom.gba", 0xB3DABC, 0x0000004

gUnk_08B3DAC0:: @ 08B3DAC0
	.incbin "baserom.gba", 0xB3DAC0, 0x0000008

gUnk_08B3DAC8:: @ 08B3DAC8
	.incbin "baserom.gba", 0xB3DAC8, 0x0000008

gUnk_08B3DAD0:: @ 08B3DAD0
	.incbin "baserom.gba", 0xB3DAD0, 0x000000C

gUnk_08B3DADC:: @ 08B3DADC
	.incbin "baserom.gba", 0xB3DADC, 0x0000004

gUnk_08B3DAE0:: @ 08B3DAE0
	.incbin "baserom.gba", 0xB3DAE0, 0x000000C

gUnk_08B3DAEC:: @ 08B3DAEC
	.incbin "baserom.gba", 0xB3DAEC, 0x0000008

gUnk_08B3DAF4:: @ 08B3DAF4
	.incbin "baserom.gba", 0xB3DAF4, 0x0000018

gUnk_08B3DB0C:: @ 08B3DB0C
	.incbin "baserom.gba", 0xB3DB0C, 0x0000010

gUnk_08B3DB1C:: @ 08B3DB1C
	.incbin "baserom.gba", 0xB3DB1C, 0x0000004

gUnk_08B3DB20:: @ 08B3DB20
	.incbin "baserom.gba", 0xB3DB20, 0x0000004

gUnk_08B3DB24:: @ 08B3DB24
	.incbin "baserom.gba", 0xB3DB24, 0x0000010

gUnk_08B3DB34:: @ 08B3DB34
	.incbin "baserom.gba", 0xB3DB34, 0x0000004

gUnk_08B3DB38:: @ 08B3DB38
	.incbin "baserom.gba", 0xB3DB38, 0x0000004

gUnk_08B3DB3C:: @ 08B3DB3C
	.incbin "baserom.gba", 0xB3DB3C, 0x0000004

gUnk_08B3DB40:: @ 08B3DB40
	.incbin "baserom.gba", 0xB3DB40, 0x0000004

gUnk_08B3DB44:: @ 08B3DB44
	.incbin "baserom.gba", 0xB3DB44, 0x0000004

gUnk_08B3DB48:: @ 08B3DB48
	.incbin "baserom.gba", 0xB3DB48, 0x0000010

gUnk_08B3DB58:: @ 08B3DB58
	.incbin "baserom.gba", 0xB3DB58, 0x0000014

gUnk_08B3DB6C:: @ 08B3DB6C
	.incbin "baserom.gba", 0xB3DB6C, 0x0000014

gUnk_08B3DB80:: @ 08B3DB80
	.incbin "baserom.gba", 0xB3DB80, 0x0000018

gUnk_08B3DB98:: @ 08B3DB98
	.incbin "baserom.gba", 0xB3DB98, 0x000001C

gUnk_08B3DBB4:: @ 08B3DBB4
	.incbin "baserom.gba", 0xB3DBB4, 0x0000018

gUnk_08B3DBCC:: @ 08B3DBCC
	.incbin "baserom.gba", 0xB3DBCC, 0x000004C

gUnk_08B3DC18:: @ 08B3DC18
	.incbin "baserom.gba", 0xB3DC18, 0x0000004

gUnk_08B3DC1C:: @ 08B3DC1C
	.incbin "baserom.gba", 0xB3DC1C, 0x0000008

gUnk_08B3DC24:: @ 08B3DC24
	.incbin "baserom.gba", 0xB3DC24, 0x0000008

gUnk_08B3DC2C:: @ 08B3DC2C
	.incbin "baserom.gba", 0xB3DC2C, 0x000000C

gUnk_08B3DC38:: @ 08B3DC38
	.incbin "baserom.gba", 0xB3DC38, 0x0000004

gUnk_08B3DC3C:: @ 08B3DC3C
	.incbin "baserom.gba", 0xB3DC3C, 0x0000008

gUnk_08B3DC44:: @ 08B3DC44
	.incbin "baserom.gba", 0xB3DC44, 0x000000C

gUnk_08B3DC50:: @ 08B3DC50
	.incbin "baserom.gba", 0xB3DC50, 0x0000018

gUnk_08B3DC68:: @ 08B3DC68
	.incbin "baserom.gba", 0xB3DC68, 0x0000010

gUnk_08B3DC78:: @ 08B3DC78
	.incbin "baserom.gba", 0xB3DC78, 0x0000004

gUnk_08B3DC7C:: @ 08B3DC7C
	.incbin "baserom.gba", 0xB3DC7C, 0x0000004

gUnk_08B3DC80:: @ 08B3DC80
	.incbin "baserom.gba", 0xB3DC80, 0x000000C

gUnk_08B3DC8C:: @ 08B3DC8C
	.incbin "baserom.gba", 0xB3DC8C, 0x0000004

gUnk_08B3DC90:: @ 08B3DC90
	.incbin "baserom.gba", 0xB3DC90, 0x0000004

gUnk_08B3DC94:: @ 08B3DC94
	.incbin "baserom.gba", 0xB3DC94, 0x0000004

gUnk_08B3DC98:: @ 08B3DC98
	.incbin "baserom.gba", 0xB3DC98, 0x0000004

gUnk_08B3DC9C:: @ 08B3DC9C
	.incbin "baserom.gba", 0xB3DC9C, 0x0000004

gUnk_08B3DCA0:: @ 08B3DCA0
	.incbin "baserom.gba", 0xB3DCA0, 0x0000010

gUnk_08B3DCB0:: @ 08B3DCB0
	.incbin "baserom.gba", 0xB3DCB0, 0x0000010

gUnk_08B3DCC0:: @ 08B3DCC0
	.incbin "baserom.gba", 0xB3DCC0, 0x0000014

gUnk_08B3DCD4:: @ 08B3DCD4
	.incbin "baserom.gba", 0xB3DCD4, 0x0000014

gUnk_08B3DCE8:: @ 08B3DCE8
	.incbin "baserom.gba", 0xB3DCE8, 0x0000018

gUnk_08B3DD00:: @ 08B3DD00
	.incbin "baserom.gba", 0xB3DD00, 0x0000014

gUnk_08B3DD14:: @ 08B3DD14
	.incbin "baserom.gba", 0xB3DD14, 0x000004C

gUnk_08B3DD60:: @ 08B3DD60
	.incbin "baserom.gba", 0xB3DD60, 0x0000004

gUnk_08B3DD64:: @ 08B3DD64
	.incbin "baserom.gba", 0xB3DD64, 0x0000020

gUnk_08B3DD84:: @ 08B3DD84
	.incbin "baserom.gba", 0xB3DD84, 0x0000004

gUnk_08B3DD88:: @ 08B3DD88
	.incbin "baserom.gba", 0xB3DD88, 0x0000004

gUnk_08B3DD8C:: @ 08B3DD8C
	.incbin "baserom.gba", 0xB3DD8C, 0x0000004

gUnk_08B3DD90:: @ 08B3DD90
	.incbin "baserom.gba", 0xB3DD90, 0x0000020

gUnk_08B3DDB0:: @ 08B3DDB0
	.incbin "baserom.gba", 0xB3DDB0, 0x0000020

gUnk_08B3DDD0:: @ 08B3DDD0
	.incbin "baserom.gba", 0xB3DDD0, 0x0000010

gUnk_08B3DDE0:: @ 08B3DDE0
	.incbin "baserom.gba", 0xB3DDE0, 0x0000014

gUnk_08B3DDF4:: @ 08B3DDF4
	.incbin "baserom.gba", 0xB3DDF4, 0x0000018

gUnk_08B3DE0C:: @ 08B3DE0C
	.incbin "baserom.gba", 0xB3DE0C, 0x0000018

gUnk_08B3DE24:: @ 08B3DE24
	.incbin "baserom.gba", 0xB3DE24, 0x0000008

gUnk_08B3DE2C:: @ 08B3DE2C
	.incbin "baserom.gba", 0xB3DE2C, 0x000001C

gUnk_08B3DE48:: @ 08B3DE48
	.incbin "baserom.gba", 0xB3DE48, 0x0000024

gUnk_08B3DE6C:: @ 08B3DE6C
	.incbin "baserom.gba", 0xB3DE6C, 0x0000020

gUnk_08B3DE8C:: @ 08B3DE8C
	.incbin "baserom.gba", 0xB3DE8C, 0x0000010

gUnk_08B3DE9C:: @ 08B3DE9C
	.incbin "baserom.gba", 0xB3DE9C, 0x0000010

gUnk_08B3DEAC:: @ 08B3DEAC
	.incbin "baserom.gba", 0xB3DEAC, 0x000001C

gUnk_08B3DEC8:: @ 08B3DEC8
	.incbin "baserom.gba", 0xB3DEC8, 0x0000018

gUnk_08B3DEE0:: @ 08B3DEE0
	.incbin "baserom.gba", 0xB3DEE0, 0x0000024

gUnk_08B3DF04:: @ 08B3DF04
	.incbin "baserom.gba", 0xB3DF04, 0x0000018

gUnk_08B3DF1C:: @ 08B3DF1C
	.incbin "baserom.gba", 0xB3DF1C, 0x0000024

gUnk_08B3DF40:: @ 08B3DF40
	.incbin "baserom.gba", 0xB3DF40, 0x0000020

gUnk_08B3DF60:: @ 08B3DF60
	.incbin "baserom.gba", 0xB3DF60, 0x0000020

gUnk_08B3DF80:: @ 08B3DF80
	.incbin "baserom.gba", 0xB3DF80, 0x000001C

gUnk_08B3DF9C:: @ 08B3DF9C
	.incbin "baserom.gba", 0xB3DF9C, 0x0000020

gUnk_08B3DFBC:: @ 08B3DFBC
	.incbin "baserom.gba", 0xB3DFBC, 0x0000024

gUnk_08B3DFE0:: @ 08B3DFE0
	.incbin "baserom.gba", 0xB3DFE0, 0x0000014

gUnk_08B3DFF4:: @ 08B3DFF4
	.incbin "baserom.gba", 0xB3DFF4, 0x0000010

gUnk_08B3E004:: @ 08B3E004
	.incbin "baserom.gba", 0xB3E004, 0x000001C

gUnk_08B3E020:: @ 08B3E020
	.incbin "baserom.gba", 0xB3E020, 0x0000014

gUnk_08B3E034:: @ 08B3E034
	.incbin "baserom.gba", 0xB3E034, 0x0000020

gUnk_08B3E054:: @ 08B3E054
	.incbin "baserom.gba", 0xB3E054, 0x0000024

gUnk_08B3E078:: @ 08B3E078
	.incbin "baserom.gba", 0xB3E078, 0x000001C

gUnk_08B3E094:: @ 08B3E094
	.incbin "baserom.gba", 0xB3E094, 0x0000024

gUnk_08B3E0B8:: @ 08B3E0B8
	.incbin "baserom.gba", 0xB3E0B8, 0x000000C

gUnk_08B3E0C4:: @ 08B3E0C4
	.incbin "baserom.gba", 0xB3E0C4, 0x000000C

gUnk_08B3E0D0:: @ 08B3E0D0
	.incbin "baserom.gba", 0xB3E0D0, 0x0000010

gUnk_08B3E0E0:: @ 08B3E0E0
	.incbin "baserom.gba", 0xB3E0E0, 0x0000014

gUnk_08B3E0F4:: @ 08B3E0F4
	.incbin "baserom.gba", 0xB3E0F4, 0x0000014

gUnk_08B3E108:: @ 08B3E108
	.incbin "baserom.gba", 0xB3E108, 0x0000010

gUnk_08B3E118:: @ 08B3E118
	.incbin "baserom.gba", 0xB3E118, 0x0000014

gUnk_08B3E12C:: @ 08B3E12C
	.incbin "baserom.gba", 0xB3E12C, 0x0000014

gUnk_08B3E140:: @ 08B3E140
	.incbin "baserom.gba", 0xB3E140, 0x0000024

gUnk_08B3E164:: @ 08B3E164
	.incbin "baserom.gba", 0xB3E164, 0x0000024

gUnk_08B3E188:: @ 08B3E188
	.incbin "baserom.gba", 0xB3E188, 0x0000028

gUnk_08B3E1B0:: @ 08B3E1B0
	.incbin "baserom.gba", 0xB3E1B0, 0x0000028

gUnk_08B3E1D8:: @ 08B3E1D8
	.incbin "baserom.gba", 0xB3E1D8, 0x0000008

gUnk_08B3E1E0:: @ 08B3E1E0
	.incbin "baserom.gba", 0xB3E1E0, 0x000000C

gUnk_08B3E1EC:: @ 08B3E1EC
	.incbin "baserom.gba", 0xB3E1EC, 0x000000C

gUnk_08B3E1F8:: @ 08B3E1F8
	.incbin "baserom.gba", 0xB3E1F8, 0x0000004

gUnk_08B3E1FC:: @ 08B3E1FC
	.incbin "baserom.gba", 0xB3E1FC, 0x000004C

gUnk_08B3E248:: @ 08B3E248
	.incbin "baserom.gba", 0xB3E248, 0x0000004

gUnk_08B3E24C:: @ 08B3E24C
	.incbin "baserom.gba", 0xB3E24C, 0x0000014

gUnk_08B3E260:: @ 08B3E260
	.incbin "baserom.gba", 0xB3E260, 0x0000004

gUnk_08B3E264:: @ 08B3E264
	.incbin "baserom.gba", 0xB3E264, 0x0000004

gUnk_08B3E268:: @ 08B3E268
	.incbin "baserom.gba", 0xB3E268, 0x0000004

gUnk_08B3E26C:: @ 08B3E26C
	.incbin "baserom.gba", 0xB3E26C, 0x0000014

gUnk_08B3E280:: @ 08B3E280
	.incbin "baserom.gba", 0xB3E280, 0x0000010

gUnk_08B3E290:: @ 08B3E290
	.incbin "baserom.gba", 0xB3E290, 0x0000014

gUnk_08B3E2A4:: @ 08B3E2A4
	.incbin "baserom.gba", 0xB3E2A4, 0x0000010

gUnk_08B3E2B4:: @ 08B3E2B4
	.incbin "baserom.gba", 0xB3E2B4, 0x000000C

gUnk_08B3E2C0:: @ 08B3E2C0
	.incbin "baserom.gba", 0xB3E2C0, 0x000000C

gUnk_08B3E2CC:: @ 08B3E2CC
	.incbin "baserom.gba", 0xB3E2CC, 0x0000010

gUnk_08B3E2DC:: @ 08B3E2DC
	.incbin "baserom.gba", 0xB3E2DC, 0x0000008

gUnk_08B3E2E4:: @ 08B3E2E4
	.incbin "baserom.gba", 0xB3E2E4, 0x000000C

gUnk_08B3E2F0:: @ 08B3E2F0
	.incbin "baserom.gba", 0xB3E2F0, 0x000000C

gUnk_08B3E2FC:: @ 08B3E2FC
	.incbin "baserom.gba", 0xB3E2FC, 0x0000018

gUnk_08B3E314:: @ 08B3E314
	.incbin "baserom.gba", 0xB3E314, 0x0000014

gUnk_08B3E328:: @ 08B3E328
	.incbin "baserom.gba", 0xB3E328, 0x0000014

gUnk_08B3E33C:: @ 08B3E33C
	.incbin "baserom.gba", 0xB3E33C, 0x000001C

gUnk_08B3E358:: @ 08B3E358
	.incbin "baserom.gba", 0xB3E358, 0x0000018

gUnk_08B3E370:: @ 08B3E370
	.incbin "baserom.gba", 0xB3E370, 0x0000018

gUnk_08B3E388:: @ 08B3E388
	.incbin "baserom.gba", 0xB3E388, 0x0000010

gUnk_08B3E398:: @ 08B3E398
	.incbin "baserom.gba", 0xB3E398, 0x0000010

gUnk_08B3E3A8:: @ 08B3E3A8
	.incbin "baserom.gba", 0xB3E3A8, 0x000000C

gUnk_08B3E3B4:: @ 08B3E3B4
	.incbin "baserom.gba", 0xB3E3B4, 0x000000C

gUnk_08B3E3C0:: @ 08B3E3C0
	.incbin "baserom.gba", 0xB3E3C0, 0x0000010

gUnk_08B3E3D0:: @ 08B3E3D0
	.incbin "baserom.gba", 0xB3E3D0, 0x0000010

gUnk_08B3E3E0:: @ 08B3E3E0
	.incbin "baserom.gba", 0xB3E3E0, 0x000001C

gUnk_08B3E3FC:: @ 08B3E3FC
	.incbin "baserom.gba", 0xB3E3FC, 0x0000018

gUnk_08B3E414:: @ 08B3E414
	.incbin "baserom.gba", 0xB3E414, 0x0000018

gUnk_08B3E42C:: @ 08B3E42C
	.incbin "baserom.gba", 0xB3E42C, 0x0000010

gUnk_08B3E43C:: @ 08B3E43C
	.incbin "baserom.gba", 0xB3E43C, 0x0000008

gUnk_08B3E444:: @ 08B3E444
	.incbin "baserom.gba", 0xB3E444, 0x0000010

gUnk_08B3E454:: @ 08B3E454
	.incbin "baserom.gba", 0xB3E454, 0x0000008

gUnk_08B3E45C:: @ 08B3E45C
	.incbin "baserom.gba", 0xB3E45C, 0x000000C

gUnk_08B3E468:: @ 08B3E468
	.incbin "baserom.gba", 0xB3E468, 0x0000014

gUnk_08B3E47C:: @ 08B3E47C
	.incbin "baserom.gba", 0xB3E47C, 0x0000014

gUnk_08B3E490:: @ 08B3E490
	.incbin "baserom.gba", 0xB3E490, 0x0000018

gUnk_08B3E4A8:: @ 08B3E4A8
	.incbin "baserom.gba", 0xB3E4A8, 0x000001C

gUnk_08B3E4C4:: @ 08B3E4C4
	.incbin "baserom.gba", 0xB3E4C4, 0x000001C

gUnk_08B3E4E0:: @ 08B3E4E0
	.incbin "baserom.gba", 0xB3E4E0, 0x0000018

gUnk_08B3E4F8:: @ 08B3E4F8
	.incbin "baserom.gba", 0xB3E4F8, 0x000001C

gUnk_08B3E514:: @ 08B3E514
	.incbin "baserom.gba", 0xB3E514, 0x000001C

gUnk_08B3E530:: @ 08B3E530
	.incbin "baserom.gba", 0xB3E530, 0x0000014

gUnk_08B3E544:: @ 08B3E544
	.incbin "baserom.gba", 0xB3E544, 0x0000014

gUnk_08B3E558:: @ 08B3E558
	.incbin "baserom.gba", 0xB3E558, 0x0000018

gUnk_08B3E570:: @ 08B3E570
	.incbin "baserom.gba", 0xB3E570, 0x0000018

gUnk_08B3E588:: @ 08B3E588
	.incbin "baserom.gba", 0xB3E588, 0x0000010

gUnk_08B3E598:: @ 08B3E598
	.incbin "baserom.gba", 0xB3E598, 0x0000014

gUnk_08B3E5AC:: @ 08B3E5AC
	.incbin "baserom.gba", 0xB3E5AC, 0x0000014

gUnk_08B3E5C0:: @ 08B3E5C0
	.incbin "baserom.gba", 0xB3E5C0, 0x0000004

gUnk_08B3E5C4:: @ 08B3E5C4
	.incbin "baserom.gba", 0xB3E5C4, 0x000004C

gUnk_08B3E610:: @ 08B3E610
	.incbin "baserom.gba", 0xB3E610, 0x0000004

gUnk_08B3E614:: @ 08B3E614
	.incbin "baserom.gba", 0xB3E614, 0x0000004

gUnk_08B3E618:: @ 08B3E618
	.incbin "baserom.gba", 0xB3E618, 0x0000004

gUnk_08B3E61C:: @ 08B3E61C
	.incbin "baserom.gba", 0xB3E61C, 0x0000008

gUnk_08B3E624:: @ 08B3E624
	.incbin "baserom.gba", 0xB3E624, 0x0000004

gUnk_08B3E628:: @ 08B3E628
	.incbin "baserom.gba", 0xB3E628, 0x0000004

gUnk_08B3E62C:: @ 08B3E62C
	.incbin "baserom.gba", 0xB3E62C, 0x0000004

gUnk_08B3E630:: @ 08B3E630
	.incbin "baserom.gba", 0xB3E630, 0x0000004

gUnk_08B3E634:: @ 08B3E634
	.incbin "baserom.gba", 0xB3E634, 0x0000004

gUnk_08B3E638:: @ 08B3E638
	.incbin "baserom.gba", 0xB3E638, 0x0000004

gUnk_08B3E63C:: @ 08B3E63C
	.incbin "baserom.gba", 0xB3E63C, 0x0000004

gUnk_08B3E640:: @ 08B3E640
	.incbin "baserom.gba", 0xB3E640, 0x0000004

gUnk_08B3E644:: @ 08B3E644
	.incbin "baserom.gba", 0xB3E644, 0x0000004

gUnk_08B3E648:: @ 08B3E648
	.incbin "baserom.gba", 0xB3E648, 0x0000004

gUnk_08B3E64C:: @ 08B3E64C
	.incbin "baserom.gba", 0xB3E64C, 0x0000004

gUnk_08B3E650:: @ 08B3E650
	.incbin "baserom.gba", 0xB3E650, 0x0000004

gUnk_08B3E654:: @ 08B3E654
	.incbin "baserom.gba", 0xB3E654, 0x0000004

gUnk_08B3E658:: @ 08B3E658
	.incbin "baserom.gba", 0xB3E658, 0x0000004

gUnk_08B3E65C:: @ 08B3E65C
	.incbin "baserom.gba", 0xB3E65C, 0x0000004

gUnk_08B3E660:: @ 08B3E660
	.incbin "baserom.gba", 0xB3E660, 0x0000004

gUnk_08B3E664:: @ 08B3E664
	.incbin "baserom.gba", 0xB3E664, 0x0000004

gUnk_08B3E668:: @ 08B3E668
	.incbin "baserom.gba", 0xB3E668, 0x0000004

gUnk_08B3E66C:: @ 08B3E66C
	.incbin "baserom.gba", 0xB3E66C, 0x0000004

gUnk_08B3E670:: @ 08B3E670
	.incbin "baserom.gba", 0xB3E670, 0x0000004

gUnk_08B3E674:: @ 08B3E674
	.incbin "baserom.gba", 0xB3E674, 0x0000004

gUnk_08B3E678:: @ 08B3E678
	.incbin "baserom.gba", 0xB3E678, 0x0000004

gUnk_08B3E67C:: @ 08B3E67C
	.incbin "baserom.gba", 0xB3E67C, 0x0000004

gUnk_08B3E680:: @ 08B3E680
	.incbin "baserom.gba", 0xB3E680, 0x0000004

gUnk_08B3E684:: @ 08B3E684
	.incbin "baserom.gba", 0xB3E684, 0x0000004

gUnk_08B3E688:: @ 08B3E688
	.incbin "baserom.gba", 0xB3E688, 0x000004C

gUnk_08B3E6D4:: @ 08B3E6D4
	.incbin "baserom.gba", 0xB3E6D4, 0x0000008

gUnk_08B3E6DC:: @ 08B3E6DC
	.incbin "baserom.gba", 0xB3E6DC, 0x0000008

gUnk_08B3E6E4:: @ 08B3E6E4
	.incbin "baserom.gba", 0xB3E6E4, 0x000000C

gUnk_08B3E6F0:: @ 08B3E6F0
	.incbin "baserom.gba", 0xB3E6F0, 0x000000C

gUnk_08B3E6FC:: @ 08B3E6FC
	.incbin "baserom.gba", 0xB3E6FC, 0x0000010

gUnk_08B3E70C:: @ 08B3E70C
	.incbin "baserom.gba", 0xB3E70C, 0x0000010

gUnk_08B3E71C:: @ 08B3E71C
	.incbin "baserom.gba", 0xB3E71C, 0x0000018

gUnk_08B3E734:: @ 08B3E734
	.incbin "baserom.gba", 0xB3E734, 0x000001C

gUnk_08B3E750:: @ 08B3E750
	.incbin "baserom.gba", 0xB3E750, 0x0000020

gUnk_08B3E770:: @ 08B3E770
	.incbin "baserom.gba", 0xB3E770, 0x000001C

gUnk_08B3E78C:: @ 08B3E78C
	.incbin "baserom.gba", 0xB3E78C, 0x000001C

gUnk_08B3E7A8:: @ 08B3E7A8
	.incbin "baserom.gba", 0xB3E7A8, 0x0000018

gUnk_08B3E7C0:: @ 08B3E7C0
	.incbin "baserom.gba", 0xB3E7C0, 0x000001C

gUnk_08B3E7DC:: @ 08B3E7DC
	.incbin "baserom.gba", 0xB3E7DC, 0x000001C

gUnk_08B3E7F8:: @ 08B3E7F8
	.incbin "baserom.gba", 0xB3E7F8, 0x0000004

gUnk_08B3E7FC:: @ 08B3E7FC
	.incbin "baserom.gba", 0xB3E7FC, 0x0000004

gUnk_08B3E800:: @ 08B3E800
	.incbin "baserom.gba", 0xB3E800, 0x0000020

gUnk_08B3E820:: @ 08B3E820
	.incbin "baserom.gba", 0xB3E820, 0x0000024

gUnk_08B3E844:: @ 08B3E844
	.incbin "baserom.gba", 0xB3E844, 0x0000014

gUnk_08B3E858:: @ 08B3E858
	.incbin "baserom.gba", 0xB3E858, 0x000001C

gUnk_08B3E874:: @ 08B3E874
	.incbin "baserom.gba", 0xB3E874, 0x0000020

gUnk_08B3E894:: @ 08B3E894
	.incbin "baserom.gba", 0xB3E894, 0x000000C

gUnk_08B3E8A0:: @ 08B3E8A0
	.incbin "baserom.gba", 0xB3E8A0, 0x0000010

gUnk_08B3E8B0:: @ 08B3E8B0
	.incbin "baserom.gba", 0xB3E8B0, 0x0000010

gUnk_08B3E8C0:: @ 08B3E8C0
	.incbin "baserom.gba", 0xB3E8C0, 0x0000018

gUnk_08B3E8D8:: @ 08B3E8D8
	.incbin "baserom.gba", 0xB3E8D8, 0x0000018

gUnk_08B3E8F0:: @ 08B3E8F0
	.incbin "baserom.gba", 0xB3E8F0, 0x000001C

gUnk_08B3E90C:: @ 08B3E90C
	.incbin "baserom.gba", 0xB3E90C, 0x000001C

gUnk_08B3E928:: @ 08B3E928
	.incbin "baserom.gba", 0xB3E928, 0x0000014

gUnk_08B3E93C:: @ 08B3E93C
	.incbin "baserom.gba", 0xB3E93C, 0x000004C

gUnk_08B3E988:: @ 08B3E988
	.incbin "baserom.gba", 0xB3E988, 0x0000008

gUnk_08B3E990:: @ 08B3E990
	.incbin "baserom.gba", 0xB3E990, 0x0000008

gUnk_08B3E998:: @ 08B3E998
	.incbin "baserom.gba", 0xB3E998, 0x0000008

gUnk_08B3E9A0:: @ 08B3E9A0
	.incbin "baserom.gba", 0xB3E9A0, 0x000000C

gUnk_08B3E9AC:: @ 08B3E9AC
	.incbin "baserom.gba", 0xB3E9AC, 0x000000C

gUnk_08B3E9B8:: @ 08B3E9B8
	.incbin "baserom.gba", 0xB3E9B8, 0x0000010

gUnk_08B3E9C8:: @ 08B3E9C8
	.incbin "baserom.gba", 0xB3E9C8, 0x0000018

gUnk_08B3E9E0:: @ 08B3E9E0
	.incbin "baserom.gba", 0xB3E9E0, 0x000001C

gUnk_08B3E9FC:: @ 08B3E9FC
	.incbin "baserom.gba", 0xB3E9FC, 0x0000020

gUnk_08B3EA1C:: @ 08B3EA1C
	.incbin "baserom.gba", 0xB3EA1C, 0x000001C

gUnk_08B3EA38:: @ 08B3EA38
	.incbin "baserom.gba", 0xB3EA38, 0x0000018

gUnk_08B3EA50:: @ 08B3EA50
	.incbin "baserom.gba", 0xB3EA50, 0x0000014

gUnk_08B3EA64:: @ 08B3EA64
	.incbin "baserom.gba", 0xB3EA64, 0x0000018

gUnk_08B3EA7C:: @ 08B3EA7C
	.incbin "baserom.gba", 0xB3EA7C, 0x0000018

gUnk_08B3EA94:: @ 08B3EA94
	.incbin "baserom.gba", 0xB3EA94, 0x0000004

gUnk_08B3EA98:: @ 08B3EA98
	.incbin "baserom.gba", 0xB3EA98, 0x0000004

gUnk_08B3EA9C:: @ 08B3EA9C
	.incbin "baserom.gba", 0xB3EA9C, 0x000001C

gUnk_08B3EAB8:: @ 08B3EAB8
	.incbin "baserom.gba", 0xB3EAB8, 0x0000020

gUnk_08B3EAD8:: @ 08B3EAD8
	.incbin "baserom.gba", 0xB3EAD8, 0x0000010

gUnk_08B3EAE8:: @ 08B3EAE8
	.incbin "baserom.gba", 0xB3EAE8, 0x000001C

gUnk_08B3EB04:: @ 08B3EB04
	.incbin "baserom.gba", 0xB3EB04, 0x000001C

gUnk_08B3EB20:: @ 08B3EB20
	.incbin "baserom.gba", 0xB3EB20, 0x0000008

gUnk_08B3EB28:: @ 08B3EB28
	.incbin "baserom.gba", 0xB3EB28, 0x000000C

gUnk_08B3EB34:: @ 08B3EB34
	.incbin "baserom.gba", 0xB3EB34, 0x0000010

gUnk_08B3EB44:: @ 08B3EB44
	.incbin "baserom.gba", 0xB3EB44, 0x0000018

gUnk_08B3EB5C:: @ 08B3EB5C
	.incbin "baserom.gba", 0xB3EB5C, 0x0000018

gUnk_08B3EB74:: @ 08B3EB74
	.incbin "baserom.gba", 0xB3EB74, 0x000001C

gUnk_08B3EB90:: @ 08B3EB90
	.incbin "baserom.gba", 0xB3EB90, 0x000001C

gUnk_08B3EBAC:: @ 08B3EBAC
	.incbin "baserom.gba", 0xB3EBAC, 0x0000014

gUnk_08B3EBC0:: @ 08B3EBC0
	.incbin "baserom.gba", 0xB3EBC0, 0x000004C

gUnk_08B3EC0C:: @ 08B3EC0C
	.incbin "baserom.gba", 0xB3EC0C, 0x0000004

gUnk_08B3EC10:: @ 08B3EC10
	.incbin "baserom.gba", 0xB3EC10, 0x0000004

gUnk_08B3EC14:: @ 08B3EC14
	.incbin "baserom.gba", 0xB3EC14, 0x0000008

gUnk_08B3EC1C:: @ 08B3EC1C
	.incbin "baserom.gba", 0xB3EC1C, 0x0000008

gUnk_08B3EC24:: @ 08B3EC24
	.incbin "baserom.gba", 0xB3EC24, 0x000000C

gUnk_08B3EC30:: @ 08B3EC30
	.incbin "baserom.gba", 0xB3EC30, 0x000000C

gUnk_08B3EC3C:: @ 08B3EC3C
	.incbin "baserom.gba", 0xB3EC3C, 0x0000014

gUnk_08B3EC50:: @ 08B3EC50
	.incbin "baserom.gba", 0xB3EC50, 0x0000018

gUnk_08B3EC68:: @ 08B3EC68
	.incbin "baserom.gba", 0xB3EC68, 0x000001C

gUnk_08B3EC84:: @ 08B3EC84
	.incbin "baserom.gba", 0xB3EC84, 0x0000018

gUnk_08B3EC9C:: @ 08B3EC9C
	.incbin "baserom.gba", 0xB3EC9C, 0x0000018

gUnk_08B3ECB4:: @ 08B3ECB4
	.incbin "baserom.gba", 0xB3ECB4, 0x0000014

gUnk_08B3ECC8:: @ 08B3ECC8
	.incbin "baserom.gba", 0xB3ECC8, 0x0000018

gUnk_08B3ECE0:: @ 08B3ECE0
	.incbin "baserom.gba", 0xB3ECE0, 0x0000018

gUnk_08B3ECF8:: @ 08B3ECF8
	.incbin "baserom.gba", 0xB3ECF8, 0x0000004

gUnk_08B3ECFC:: @ 08B3ECFC
	.incbin "baserom.gba", 0xB3ECFC, 0x0000004

gUnk_08B3ED00:: @ 08B3ED00
	.incbin "baserom.gba", 0xB3ED00, 0x000001C

gUnk_08B3ED1C:: @ 08B3ED1C
	.incbin "baserom.gba", 0xB3ED1C, 0x0000020

gUnk_08B3ED3C:: @ 08B3ED3C
	.incbin "baserom.gba", 0xB3ED3C, 0x0000010

gUnk_08B3ED4C:: @ 08B3ED4C
	.incbin "baserom.gba", 0xB3ED4C, 0x0000018

gUnk_08B3ED64:: @ 08B3ED64
	.incbin "baserom.gba", 0xB3ED64, 0x000001C

gUnk_08B3ED80:: @ 08B3ED80
	.incbin "baserom.gba", 0xB3ED80, 0x0000004

gUnk_08B3ED84:: @ 08B3ED84
	.incbin "baserom.gba", 0xB3ED84, 0x000000C

gUnk_08B3ED90:: @ 08B3ED90
	.incbin "baserom.gba", 0xB3ED90, 0x000000C

gUnk_08B3ED9C:: @ 08B3ED9C
	.incbin "baserom.gba", 0xB3ED9C, 0x0000014

gUnk_08B3EDB0:: @ 08B3EDB0
	.incbin "baserom.gba", 0xB3EDB0, 0x0000014

gUnk_08B3EDC4:: @ 08B3EDC4
	.incbin "baserom.gba", 0xB3EDC4, 0x0000018

gUnk_08B3EDDC:: @ 08B3EDDC
	.incbin "baserom.gba", 0xB3EDDC, 0x0000018

gUnk_08B3EDF4:: @ 08B3EDF4
	.incbin "baserom.gba", 0xB3EDF4, 0x0000010

gUnk_08B3EE04:: @ 08B3EE04
	.incbin "baserom.gba", 0xB3EE04, 0x000004C

gUnk_08B3EE50:: @ 08B3EE50
	.incbin "baserom.gba", 0xB3EE50, 0x0000004

gUnk_08B3EE54:: @ 08B3EE54
	.incbin "baserom.gba", 0xB3EE54, 0x0000004

gUnk_08B3EE58:: @ 08B3EE58
	.incbin "baserom.gba", 0xB3EE58, 0x0000004

gUnk_08B3EE5C:: @ 08B3EE5C
	.incbin "baserom.gba", 0xB3EE5C, 0x0000008

gUnk_08B3EE64:: @ 08B3EE64
	.incbin "baserom.gba", 0xB3EE64, 0x0000008

gUnk_08B3EE6C:: @ 08B3EE6C
	.incbin "baserom.gba", 0xB3EE6C, 0x000000C

gUnk_08B3EE78:: @ 08B3EE78
	.incbin "baserom.gba", 0xB3EE78, 0x0000014

gUnk_08B3EE8C:: @ 08B3EE8C
	.incbin "baserom.gba", 0xB3EE8C, 0x0000018

gUnk_08B3EEA4:: @ 08B3EEA4
	.incbin "baserom.gba", 0xB3EEA4, 0x000001C

gUnk_08B3EEC0:: @ 08B3EEC0
	.incbin "baserom.gba", 0xB3EEC0, 0x0000018

gUnk_08B3EED8:: @ 08B3EED8
	.incbin "baserom.gba", 0xB3EED8, 0x0000014

gUnk_08B3EEEC:: @ 08B3EEEC
	.incbin "baserom.gba", 0xB3EEEC, 0x0000010

gUnk_08B3EEFC:: @ 08B3EEFC
	.incbin "baserom.gba", 0xB3EEFC, 0x0000014

gUnk_08B3EF10:: @ 08B3EF10
	.incbin "baserom.gba", 0xB3EF10, 0x0000014

gUnk_08B3EF24:: @ 08B3EF24
	.incbin "baserom.gba", 0xB3EF24, 0x0000004

gUnk_08B3EF28:: @ 08B3EF28
	.incbin "baserom.gba", 0xB3EF28, 0x0000004

gUnk_08B3EF2C:: @ 08B3EF2C
	.incbin "baserom.gba", 0xB3EF2C, 0x0000018

gUnk_08B3EF44:: @ 08B3EF44
	.incbin "baserom.gba", 0xB3EF44, 0x000001C

gUnk_08B3EF60:: @ 08B3EF60
	.incbin "baserom.gba", 0xB3EF60, 0x000000C

gUnk_08B3EF6C:: @ 08B3EF6C
	.incbin "baserom.gba", 0xB3EF6C, 0x0000018

gUnk_08B3EF84:: @ 08B3EF84
	.incbin "baserom.gba", 0xB3EF84, 0x0000018

gUnk_08B3EF9C:: @ 08B3EF9C
	.incbin "baserom.gba", 0xB3EF9C, 0x0000004

gUnk_08B3EFA0:: @ 08B3EFA0
	.incbin "baserom.gba", 0xB3EFA0, 0x0000008

gUnk_08B3EFA8:: @ 08B3EFA8
	.incbin "baserom.gba", 0xB3EFA8, 0x000000C

gUnk_08B3EFB4:: @ 08B3EFB4
	.incbin "baserom.gba", 0xB3EFB4, 0x0000014

gUnk_08B3EFC8:: @ 08B3EFC8
	.incbin "baserom.gba", 0xB3EFC8, 0x0000014

gUnk_08B3EFDC:: @ 08B3EFDC
	.incbin "baserom.gba", 0xB3EFDC, 0x0000018

gUnk_08B3EFF4:: @ 08B3EFF4
	.incbin "baserom.gba", 0xB3EFF4, 0x0000018

gUnk_08B3F00C:: @ 08B3F00C
	.incbin "baserom.gba", 0xB3F00C, 0x0000010

gUnk_08B3F01C:: @ 08B3F01C
	.incbin "baserom.gba", 0xB3F01C, 0x000004C

gUnk_08B3F068:: @ 08B3F068
	.incbin "baserom.gba", 0xB3F068, 0x0000004

gUnk_08B3F06C:: @ 08B3F06C
	.incbin "baserom.gba", 0xB3F06C, 0x0000004

gUnk_08B3F070:: @ 08B3F070
	.incbin "baserom.gba", 0xB3F070, 0x0000004

gUnk_08B3F074:: @ 08B3F074
	.incbin "baserom.gba", 0xB3F074, 0x0000004

gUnk_08B3F078:: @ 08B3F078
	.incbin "baserom.gba", 0xB3F078, 0x0000008

gUnk_08B3F080:: @ 08B3F080
	.incbin "baserom.gba", 0xB3F080, 0x0000008

gUnk_08B3F088:: @ 08B3F088
	.incbin "baserom.gba", 0xB3F088, 0x0000004

gUnk_08B3F08C:: @ 08B3F08C
	.incbin "baserom.gba", 0xB3F08C, 0x0000004

gUnk_08B3F090:: @ 08B3F090
	.incbin "baserom.gba", 0xB3F090, 0x0000004

gUnk_08B3F094:: @ 08B3F094
	.incbin "baserom.gba", 0xB3F094, 0x0000004

gUnk_08B3F098:: @ 08B3F098
	.incbin "baserom.gba", 0xB3F098, 0x0000004

gUnk_08B3F09C:: @ 08B3F09C
	.incbin "baserom.gba", 0xB3F09C, 0x0000004

gUnk_08B3F0A0:: @ 08B3F0A0
	.incbin "baserom.gba", 0xB3F0A0, 0x0000004

gUnk_08B3F0A4:: @ 08B3F0A4
	.incbin "baserom.gba", 0xB3F0A4, 0x0000004

gUnk_08B3F0A8:: @ 08B3F0A8
	.incbin "baserom.gba", 0xB3F0A8, 0x0000004

gUnk_08B3F0AC:: @ 08B3F0AC
	.incbin "baserom.gba", 0xB3F0AC, 0x0000004

gUnk_08B3F0B0:: @ 08B3F0B0
	.incbin "baserom.gba", 0xB3F0B0, 0x0000004

gUnk_08B3F0B4:: @ 08B3F0B4
	.incbin "baserom.gba", 0xB3F0B4, 0x0000004

gUnk_08B3F0B8:: @ 08B3F0B8
	.incbin "baserom.gba", 0xB3F0B8, 0x0000004

gUnk_08B3F0BC:: @ 08B3F0BC
	.incbin "baserom.gba", 0xB3F0BC, 0x0000004

gUnk_08B3F0C0:: @ 08B3F0C0
	.incbin "baserom.gba", 0xB3F0C0, 0x0000004

gUnk_08B3F0C4:: @ 08B3F0C4
	.incbin "baserom.gba", 0xB3F0C4, 0x0000004

gUnk_08B3F0C8:: @ 08B3F0C8
	.incbin "baserom.gba", 0xB3F0C8, 0x0000004

gUnk_08B3F0CC:: @ 08B3F0CC
	.incbin "baserom.gba", 0xB3F0CC, 0x0000004

gUnk_08B3F0D0:: @ 08B3F0D0
	.incbin "baserom.gba", 0xB3F0D0, 0x0000004

gUnk_08B3F0D4:: @ 08B3F0D4
	.incbin "baserom.gba", 0xB3F0D4, 0x0000004

gUnk_08B3F0D8:: @ 08B3F0D8
	.incbin "baserom.gba", 0xB3F0D8, 0x0000004

gUnk_08B3F0DC:: @ 08B3F0DC
	.incbin "baserom.gba", 0xB3F0DC, 0x0000004

gUnk_08B3F0E0:: @ 08B3F0E0
	.incbin "baserom.gba", 0xB3F0E0, 0x0000004

gUnk_08B3F0E4:: @ 08B3F0E4
	.incbin "baserom.gba", 0xB3F0E4, 0x000004C

gUnk_08B3F130:: @ 08B3F130
	.incbin "baserom.gba", 0xB3F130, 0x0000004

gUnk_08B3F134:: @ 08B3F134
	.incbin "baserom.gba", 0xB3F134, 0x0000004

gUnk_08B3F138:: @ 08B3F138
	.incbin "baserom.gba", 0xB3F138, 0x0000004

gUnk_08B3F13C:: @ 08B3F13C
	.incbin "baserom.gba", 0xB3F13C, 0x0000004

gUnk_08B3F140:: @ 08B3F140
	.incbin "baserom.gba", 0xB3F140, 0x0000004

gUnk_08B3F144:: @ 08B3F144
	.incbin "baserom.gba", 0xB3F144, 0x0000008

gUnk_08B3F14C:: @ 08B3F14C
	.incbin "baserom.gba", 0xB3F14C, 0x0000004

gUnk_08B3F150:: @ 08B3F150
	.incbin "baserom.gba", 0xB3F150, 0x0000004

gUnk_08B3F154:: @ 08B3F154
	.incbin "baserom.gba", 0xB3F154, 0x0000004

gUnk_08B3F158:: @ 08B3F158
	.incbin "baserom.gba", 0xB3F158, 0x0000004

gUnk_08B3F15C:: @ 08B3F15C
	.incbin "baserom.gba", 0xB3F15C, 0x0000004

gUnk_08B3F160:: @ 08B3F160
	.incbin "baserom.gba", 0xB3F160, 0x0000004

gUnk_08B3F164:: @ 08B3F164
	.incbin "baserom.gba", 0xB3F164, 0x0000004

gUnk_08B3F168:: @ 08B3F168
	.incbin "baserom.gba", 0xB3F168, 0x0000004

gUnk_08B3F16C:: @ 08B3F16C
	.incbin "baserom.gba", 0xB3F16C, 0x0000004

gUnk_08B3F170:: @ 08B3F170
	.incbin "baserom.gba", 0xB3F170, 0x0000004

gUnk_08B3F174:: @ 08B3F174
	.incbin "baserom.gba", 0xB3F174, 0x0000004

gUnk_08B3F178:: @ 08B3F178
	.incbin "baserom.gba", 0xB3F178, 0x0000004

gUnk_08B3F17C:: @ 08B3F17C
	.incbin "baserom.gba", 0xB3F17C, 0x0000004

gUnk_08B3F180:: @ 08B3F180
	.incbin "baserom.gba", 0xB3F180, 0x0000004

gUnk_08B3F184:: @ 08B3F184
	.incbin "baserom.gba", 0xB3F184, 0x0000004

gUnk_08B3F188:: @ 08B3F188
	.incbin "baserom.gba", 0xB3F188, 0x0000004

gUnk_08B3F18C:: @ 08B3F18C
	.incbin "baserom.gba", 0xB3F18C, 0x0000004

gUnk_08B3F190:: @ 08B3F190
	.incbin "baserom.gba", 0xB3F190, 0x0000004

gUnk_08B3F194:: @ 08B3F194
	.incbin "baserom.gba", 0xB3F194, 0x0000004

gUnk_08B3F198:: @ 08B3F198
	.incbin "baserom.gba", 0xB3F198, 0x0000004

gUnk_08B3F19C:: @ 08B3F19C
	.incbin "baserom.gba", 0xB3F19C, 0x0000004

gUnk_08B3F1A0:: @ 08B3F1A0
	.incbin "baserom.gba", 0xB3F1A0, 0x0000004

gUnk_08B3F1A4:: @ 08B3F1A4
	.incbin "baserom.gba", 0xB3F1A4, 0x0000004

gUnk_08B3F1A8:: @ 08B3F1A8
	.incbin "baserom.gba", 0xB3F1A8, 0x000004C

gUnk_08B3F1F4:: @ 08B3F1F4
	.incbin "baserom.gba", 0xB3F1F4, 0x0000004

gUnk_08B3F1F8:: @ 08B3F1F8
	.incbin "baserom.gba", 0xB3F1F8, 0x0000024

gUnk_08B3F21C:: @ 08B3F21C
	.incbin "baserom.gba", 0xB3F21C, 0x0000004

gUnk_08B3F220:: @ 08B3F220
	.incbin "baserom.gba", 0xB3F220, 0x0000004

gUnk_08B3F224:: @ 08B3F224
	.incbin "baserom.gba", 0xB3F224, 0x0000004

gUnk_08B3F228:: @ 08B3F228
	.incbin "baserom.gba", 0xB3F228, 0x0000020

gUnk_08B3F248:: @ 08B3F248
	.incbin "baserom.gba", 0xB3F248, 0x0000024

gUnk_08B3F26C:: @ 08B3F26C
	.incbin "baserom.gba", 0xB3F26C, 0x0000014

gUnk_08B3F280:: @ 08B3F280
	.incbin "baserom.gba", 0xB3F280, 0x0000018

gUnk_08B3F298:: @ 08B3F298
	.incbin "baserom.gba", 0xB3F298, 0x0000018

gUnk_08B3F2B0:: @ 08B3F2B0
	.incbin "baserom.gba", 0xB3F2B0, 0x000001C

gUnk_08B3F2CC:: @ 08B3F2CC
	.incbin "baserom.gba", 0xB3F2CC, 0x0000008

gUnk_08B3F2D4:: @ 08B3F2D4
	.incbin "baserom.gba", 0xB3F2D4, 0x0000020

gUnk_08B3F2F4:: @ 08B3F2F4
	.incbin "baserom.gba", 0xB3F2F4, 0x0000008

gUnk_08B3F2FC:: @ 08B3F2FC
	.incbin "baserom.gba", 0xB3F2FC, 0x0000024

gUnk_08B3F320:: @ 08B3F320
	.incbin "baserom.gba", 0xB3F320, 0x0000010

gUnk_08B3F330:: @ 08B3F330
	.incbin "baserom.gba", 0xB3F330, 0x0000010

gUnk_08B3F340:: @ 08B3F340
	.incbin "baserom.gba", 0xB3F340, 0x0000020

gUnk_08B3F360:: @ 08B3F360
	.incbin "baserom.gba", 0xB3F360, 0x0000018

gUnk_08B3F378:: @ 08B3F378
	.incbin "baserom.gba", 0xB3F378, 0x0000024

gUnk_08B3F39C:: @ 08B3F39C
	.incbin "baserom.gba", 0xB3F39C, 0x000001C

gUnk_08B3F3B8:: @ 08B3F3B8
	.incbin "baserom.gba", 0xB3F3B8, 0x0000024

gUnk_08B3F3DC:: @ 08B3F3DC
	.incbin "baserom.gba", 0xB3F3DC, 0x0000024

gUnk_08B3F400:: @ 08B3F400
	.incbin "baserom.gba", 0xB3F400, 0x0000020

gUnk_08B3F420:: @ 08B3F420
	.incbin "baserom.gba", 0xB3F420, 0x0000020

gUnk_08B3F440:: @ 08B3F440
	.incbin "baserom.gba", 0xB3F440, 0x0000024

gUnk_08B3F464:: @ 08B3F464
	.incbin "baserom.gba", 0xB3F464, 0x0000024

gUnk_08B3F488:: @ 08B3F488
	.incbin "baserom.gba", 0xB3F488, 0x0000014

gUnk_08B3F49C:: @ 08B3F49C
	.incbin "baserom.gba", 0xB3F49C, 0x0000014

gUnk_08B3F4B0:: @ 08B3F4B0
	.incbin "baserom.gba", 0xB3F4B0, 0x000001C

gUnk_08B3F4CC:: @ 08B3F4CC
	.incbin "baserom.gba", 0xB3F4CC, 0x0000014

gUnk_08B3F4E0:: @ 08B3F4E0
	.incbin "baserom.gba", 0xB3F4E0, 0x0000020

gUnk_08B3F500:: @ 08B3F500
	.incbin "baserom.gba", 0xB3F500, 0x0000024

gUnk_08B3F524:: @ 08B3F524
	.incbin "baserom.gba", 0xB3F524, 0x000001C

gUnk_08B3F540:: @ 08B3F540
	.incbin "baserom.gba", 0xB3F540, 0x0000024

gUnk_08B3F564:: @ 08B3F564
	.incbin "baserom.gba", 0xB3F564, 0x0000010

gUnk_08B3F574:: @ 08B3F574
	.incbin "baserom.gba", 0xB3F574, 0x0000010

gUnk_08B3F584:: @ 08B3F584
	.incbin "baserom.gba", 0xB3F584, 0x0000010

gUnk_08B3F594:: @ 08B3F594
	.incbin "baserom.gba", 0xB3F594, 0x0000018

gUnk_08B3F5AC:: @ 08B3F5AC
	.incbin "baserom.gba", 0xB3F5AC, 0x0000014

gUnk_08B3F5C0:: @ 08B3F5C0
	.incbin "baserom.gba", 0xB3F5C0, 0x0000014

gUnk_08B3F5D4:: @ 08B3F5D4
	.incbin "baserom.gba", 0xB3F5D4, 0x0000014

gUnk_08B3F5E8:: @ 08B3F5E8
	.incbin "baserom.gba", 0xB3F5E8, 0x0000018

gUnk_08B3F600:: @ 08B3F600
	.incbin "baserom.gba", 0xB3F600, 0x0000024

gUnk_08B3F624:: @ 08B3F624
	.incbin "baserom.gba", 0xB3F624, 0x0000028

gUnk_08B3F64C:: @ 08B3F64C
	.incbin "baserom.gba", 0xB3F64C, 0x0000028

gUnk_08B3F674:: @ 08B3F674
	.incbin "baserom.gba", 0xB3F674, 0x000002C

gUnk_08B3F6A0:: @ 08B3F6A0
	.incbin "baserom.gba", 0xB3F6A0, 0x000000C

gUnk_08B3F6AC:: @ 08B3F6AC
	.incbin "baserom.gba", 0xB3F6AC, 0x000000C

gUnk_08B3F6B8:: @ 08B3F6B8
	.incbin "baserom.gba", 0xB3F6B8, 0x000000C

gUnk_08B3F6C4:: @ 08B3F6C4
	.incbin "baserom.gba", 0xB3F6C4, 0x0000004

gUnk_08B3F6C8:: @ 08B3F6C8
	.incbin "baserom.gba", 0xB3F6C8, 0x000004C

gUnk_08B3F714:: @ 08B3F714
	.incbin "baserom.gba", 0xB3F714, 0x0000004

gUnk_08B3F718:: @ 08B3F718
	.incbin "baserom.gba", 0xB3F718, 0x0000010

gUnk_08B3F728:: @ 08B3F728
	.incbin "baserom.gba", 0xB3F728, 0x0000004

gUnk_08B3F72C:: @ 08B3F72C
	.incbin "baserom.gba", 0xB3F72C, 0x0000004

gUnk_08B3F730:: @ 08B3F730
	.incbin "baserom.gba", 0xB3F730, 0x0000004

gUnk_08B3F734:: @ 08B3F734
	.incbin "baserom.gba", 0xB3F734, 0x0000010

gUnk_08B3F744:: @ 08B3F744
	.incbin "baserom.gba", 0xB3F744, 0x000000C

gUnk_08B3F750:: @ 08B3F750
	.incbin "baserom.gba", 0xB3F750, 0x0000014

gUnk_08B3F764:: @ 08B3F764
	.incbin "baserom.gba", 0xB3F764, 0x0000014

gUnk_08B3F778:: @ 08B3F778
	.incbin "baserom.gba", 0xB3F778, 0x0000010

gUnk_08B3F788:: @ 08B3F788
	.incbin "baserom.gba", 0xB3F788, 0x0000010

gUnk_08B3F798:: @ 08B3F798
	.incbin "baserom.gba", 0xB3F798, 0x000000C

gUnk_08B3F7A4:: @ 08B3F7A4
	.incbin "baserom.gba", 0xB3F7A4, 0x000000C

gUnk_08B3F7B0:: @ 08B3F7B0
	.incbin "baserom.gba", 0xB3F7B0, 0x0000008

gUnk_08B3F7B8:: @ 08B3F7B8
	.incbin "baserom.gba", 0xB3F7B8, 0x0000008

gUnk_08B3F7C0:: @ 08B3F7C0
	.incbin "baserom.gba", 0xB3F7C0, 0x0000014

gUnk_08B3F7D4:: @ 08B3F7D4
	.incbin "baserom.gba", 0xB3F7D4, 0x0000014

gUnk_08B3F7E8:: @ 08B3F7E8
	.incbin "baserom.gba", 0xB3F7E8, 0x0000010

gUnk_08B3F7F8:: @ 08B3F7F8
	.incbin "baserom.gba", 0xB3F7F8, 0x0000018

gUnk_08B3F810:: @ 08B3F810
	.incbin "baserom.gba", 0xB3F810, 0x0000014

gUnk_08B3F824:: @ 08B3F824
	.incbin "baserom.gba", 0xB3F824, 0x0000014

gUnk_08B3F838:: @ 08B3F838
	.incbin "baserom.gba", 0xB3F838, 0x0000014

gUnk_08B3F84C:: @ 08B3F84C
	.incbin "baserom.gba", 0xB3F84C, 0x0000014

gUnk_08B3F860:: @ 08B3F860
	.incbin "baserom.gba", 0xB3F860, 0x0000010

gUnk_08B3F870:: @ 08B3F870
	.incbin "baserom.gba", 0xB3F870, 0x0000010

gUnk_08B3F880:: @ 08B3F880
	.incbin "baserom.gba", 0xB3F880, 0x0000014

gUnk_08B3F894:: @ 08B3F894
	.incbin "baserom.gba", 0xB3F894, 0x0000014

gUnk_08B3F8A8:: @ 08B3F8A8
	.incbin "baserom.gba", 0xB3F8A8, 0x0000018

gUnk_08B3F8C0:: @ 08B3F8C0
	.incbin "baserom.gba", 0xB3F8C0, 0x0000014

gUnk_08B3F8D4:: @ 08B3F8D4
	.incbin "baserom.gba", 0xB3F8D4, 0x0000014

gUnk_08B3F8E8:: @ 08B3F8E8
	.incbin "baserom.gba", 0xB3F8E8, 0x0000014

gUnk_08B3F8FC:: @ 08B3F8FC
	.incbin "baserom.gba", 0xB3F8FC, 0x0000008

gUnk_08B3F904:: @ 08B3F904
	.incbin "baserom.gba", 0xB3F904, 0x000000C

gUnk_08B3F910:: @ 08B3F910
	.incbin "baserom.gba", 0xB3F910, 0x000000C

gUnk_08B3F91C:: @ 08B3F91C
	.incbin "baserom.gba", 0xB3F91C, 0x0000008

gUnk_08B3F924:: @ 08B3F924
	.incbin "baserom.gba", 0xB3F924, 0x0000010

gUnk_08B3F934:: @ 08B3F934
	.incbin "baserom.gba", 0xB3F934, 0x0000010

gUnk_08B3F944:: @ 08B3F944
	.incbin "baserom.gba", 0xB3F944, 0x0000014

gUnk_08B3F958:: @ 08B3F958
	.incbin "baserom.gba", 0xB3F958, 0x0000018

gUnk_08B3F970:: @ 08B3F970
	.incbin "baserom.gba", 0xB3F970, 0x0000018

gUnk_08B3F988:: @ 08B3F988
	.incbin "baserom.gba", 0xB3F988, 0x0000014

gUnk_08B3F99C:: @ 08B3F99C
	.incbin "baserom.gba", 0xB3F99C, 0x0000018

gUnk_08B3F9B4:: @ 08B3F9B4
	.incbin "baserom.gba", 0xB3F9B4, 0x0000018

gUnk_08B3F9CC:: @ 08B3F9CC
	.incbin "baserom.gba", 0xB3F9CC, 0x0000010

gUnk_08B3F9DC:: @ 08B3F9DC
	.incbin "baserom.gba", 0xB3F9DC, 0x0000010

gUnk_08B3F9EC:: @ 08B3F9EC
	.incbin "baserom.gba", 0xB3F9EC, 0x0000014

gUnk_08B3FA00:: @ 08B3FA00
	.incbin "baserom.gba", 0xB3FA00, 0x0000014

gUnk_08B3FA14:: @ 08B3FA14
	.incbin "baserom.gba", 0xB3FA14, 0x000000C

gUnk_08B3FA20:: @ 08B3FA20
	.incbin "baserom.gba", 0xB3FA20, 0x0000010

gUnk_08B3FA30:: @ 08B3FA30
	.incbin "baserom.gba", 0xB3FA30, 0x0000010

gUnk_08B3FA40:: @ 08B3FA40
	.incbin "baserom.gba", 0xB3FA40, 0x0000004

gUnk_08B3FA44:: @ 08B3FA44
	.incbin "baserom.gba", 0xB3FA44, 0x000004C

gUnk_08B3FA90:: @ 08B3FA90
	.incbin "baserom.gba", 0xB3FA90, 0x0000004

gUnk_08B3FA94:: @ 08B3FA94
	.incbin "baserom.gba", 0xB3FA94, 0x0000024

gUnk_08B3FAB8:: @ 08B3FAB8
	.incbin "baserom.gba", 0xB3FAB8, 0x0000004

gUnk_08B3FABC:: @ 08B3FABC
	.incbin "baserom.gba", 0xB3FABC, 0x0000004

gUnk_08B3FAC0:: @ 08B3FAC0
	.incbin "baserom.gba", 0xB3FAC0, 0x0000004

gUnk_08B3FAC4:: @ 08B3FAC4
	.incbin "baserom.gba", 0xB3FAC4, 0x0000024

gUnk_08B3FAE8:: @ 08B3FAE8
	.incbin "baserom.gba", 0xB3FAE8, 0x0000024

gUnk_08B3FB0C:: @ 08B3FB0C
	.incbin "baserom.gba", 0xB3FB0C, 0x000000C

gUnk_08B3FB18:: @ 08B3FB18
	.incbin "baserom.gba", 0xB3FB18, 0x0000010

gUnk_08B3FB28:: @ 08B3FB28
	.incbin "baserom.gba", 0xB3FB28, 0x0000014

gUnk_08B3FB3C:: @ 08B3FB3C
	.incbin "baserom.gba", 0xB3FB3C, 0x0000014

gUnk_08B3FB50:: @ 08B3FB50
	.incbin "baserom.gba", 0xB3FB50, 0x0000020

gUnk_08B3FB70:: @ 08B3FB70
	.incbin "baserom.gba", 0xB3FB70, 0x0000018

gUnk_08B3FB88:: @ 08B3FB88
	.incbin "baserom.gba", 0xB3FB88, 0x0000020

gUnk_08B3FBA8:: @ 08B3FBA8
	.incbin "baserom.gba", 0xB3FBA8, 0x000001C

gUnk_08B3FBC4:: @ 08B3FBC4
	.incbin "baserom.gba", 0xB3FBC4, 0x0000008

gUnk_08B3FBCC:: @ 08B3FBCC
	.incbin "baserom.gba", 0xB3FBCC, 0x000000C

gUnk_08B3FBD8:: @ 08B3FBD8
	.incbin "baserom.gba", 0xB3FBD8, 0x0000020

gUnk_08B3FBF8:: @ 08B3FBF8
	.incbin "baserom.gba", 0xB3FBF8, 0x000001C

gUnk_08B3FC14:: @ 08B3FC14
	.incbin "baserom.gba", 0xB3FC14, 0x0000028

gUnk_08B3FC3C:: @ 08B3FC3C
	.incbin "baserom.gba", 0xB3FC3C, 0x000001C

gUnk_08B3FC58:: @ 08B3FC58
	.incbin "baserom.gba", 0xB3FC58, 0x0000020

gUnk_08B3FC78:: @ 08B3FC78
	.incbin "baserom.gba", 0xB3FC78, 0x000001C

gUnk_08B3FC94:: @ 08B3FC94
	.incbin "baserom.gba", 0xB3FC94, 0x000001C

gUnk_08B3FCB0:: @ 08B3FCB0
	.incbin "baserom.gba", 0xB3FCB0, 0x0000018

gUnk_08B3FCC8:: @ 08B3FCC8
	.incbin "baserom.gba", 0xB3FCC8, 0x000001C

gUnk_08B3FCE4:: @ 08B3FCE4
	.incbin "baserom.gba", 0xB3FCE4, 0x0000020

gUnk_08B3FD04:: @ 08B3FD04
	.incbin "baserom.gba", 0xB3FD04, 0x000000C

gUnk_08B3FD10:: @ 08B3FD10
	.incbin "baserom.gba", 0xB3FD10, 0x0000008

gUnk_08B3FD18:: @ 08B3FD18
	.incbin "baserom.gba", 0xB3FD18, 0x0000020

gUnk_08B3FD38:: @ 08B3FD38
	.incbin "baserom.gba", 0xB3FD38, 0x0000010

gUnk_08B3FD48:: @ 08B3FD48
	.incbin "baserom.gba", 0xB3FD48, 0x000001C

gUnk_08B3FD64:: @ 08B3FD64
	.incbin "baserom.gba", 0xB3FD64, 0x0000020

gUnk_08B3FD84:: @ 08B3FD84
	.incbin "baserom.gba", 0xB3FD84, 0x0000018

gUnk_08B3FD9C:: @ 08B3FD9C
	.incbin "baserom.gba", 0xB3FD9C, 0x0000020

gUnk_08B3FDBC:: @ 08B3FDBC
	.incbin "baserom.gba", 0xB3FDBC, 0x0000008

gUnk_08B3FDC4:: @ 08B3FDC4
	.incbin "baserom.gba", 0xB3FDC4, 0x0000010

gUnk_08B3FDD4:: @ 08B3FDD4
	.incbin "baserom.gba", 0xB3FDD4, 0x0000014

gUnk_08B3FDE8:: @ 08B3FDE8
	.incbin "baserom.gba", 0xB3FDE8, 0x0000018

gUnk_08B3FE00:: @ 08B3FE00
	.incbin "baserom.gba", 0xB3FE00, 0x0000018

gUnk_08B3FE18:: @ 08B3FE18
	.incbin "baserom.gba", 0xB3FE18, 0x0000014

gUnk_08B3FE2C:: @ 08B3FE2C
	.incbin "baserom.gba", 0xB3FE2C, 0x0000018

gUnk_08B3FE44:: @ 08B3FE44
	.incbin "baserom.gba", 0xB3FE44, 0x0000018

gUnk_08B3FE5C:: @ 08B3FE5C
	.incbin "baserom.gba", 0xB3FE5C, 0x0000024

gUnk_08B3FE80:: @ 08B3FE80
	.incbin "baserom.gba", 0xB3FE80, 0x0000028

gUnk_08B3FEA8:: @ 08B3FEA8
	.incbin "baserom.gba", 0xB3FEA8, 0x0000028

gUnk_08B3FED0:: @ 08B3FED0
	.incbin "baserom.gba", 0xB3FED0, 0x000002C

gUnk_08B3FEFC:: @ 08B3FEFC
	.incbin "baserom.gba", 0xB3FEFC, 0x000000C

gUnk_08B3FF08:: @ 08B3FF08
	.incbin "baserom.gba", 0xB3FF08, 0x000000C

gUnk_08B3FF14:: @ 08B3FF14
	.incbin "baserom.gba", 0xB3FF14, 0x0000010

gUnk_08B3FF24:: @ 08B3FF24
	.incbin "baserom.gba", 0xB3FF24, 0x0000004

gUnk_08B3FF28:: @ 08B3FF28
	.incbin "baserom.gba", 0xB3FF28, 0x000004C

gUnk_08B3FF74:: @ 08B3FF74
	.incbin "baserom.gba", 0xB3FF74, 0x0000004

gUnk_08B3FF78:: @ 08B3FF78
	.incbin "baserom.gba", 0xB3FF78, 0x0000024

gUnk_08B3FF9C:: @ 08B3FF9C
	.incbin "baserom.gba", 0xB3FF9C, 0x0000004

gUnk_08B3FFA0:: @ 08B3FFA0
	.incbin "baserom.gba", 0xB3FFA0, 0x0000004

gUnk_08B3FFA4:: @ 08B3FFA4
	.incbin "baserom.gba", 0xB3FFA4, 0x0000004

gUnk_08B3FFA8:: @ 08B3FFA8
	.incbin "baserom.gba", 0xB3FFA8, 0x0000020

gUnk_08B3FFC8:: @ 08B3FFC8
	.incbin "baserom.gba", 0xB3FFC8, 0x0000020

gUnk_08B3FFE8:: @ 08B3FFE8
	.incbin "baserom.gba", 0xB3FFE8, 0x0000008

gUnk_08B3FFF0:: @ 08B3FFF0
	.incbin "baserom.gba", 0xB3FFF0, 0x000000C

gUnk_08B3FFFC:: @ 08B3FFFC
	.incbin "baserom.gba", 0xB3FFFC, 0x0000010

gUnk_08B4000C:: @ 08B4000C
	.incbin "baserom.gba", 0xB4000C, 0x0000010

gUnk_08B4001C:: @ 08B4001C
	.incbin "baserom.gba", 0xB4001C, 0x000001C

gUnk_08B40038:: @ 08B40038
	.incbin "baserom.gba", 0xB40038, 0x0000014

gUnk_08B4004C:: @ 08B4004C
	.incbin "baserom.gba", 0xB4004C, 0x000001C

gUnk_08B40068:: @ 08B40068
	.incbin "baserom.gba", 0xB40068, 0x0000018

gUnk_08B40080:: @ 08B40080
	.incbin "baserom.gba", 0xB40080, 0x000000C

gUnk_08B4008C:: @ 08B4008C
	.incbin "baserom.gba", 0xB4008C, 0x0000008

gUnk_08B40094:: @ 08B40094
	.incbin "baserom.gba", 0xB40094, 0x0000020

gUnk_08B400B4:: @ 08B400B4
	.incbin "baserom.gba", 0xB400B4, 0x000001C

gUnk_08B400D0:: @ 08B400D0
	.incbin "baserom.gba", 0xB400D0, 0x0000024

gUnk_08B400F4:: @ 08B400F4
	.incbin "baserom.gba", 0xB400F4, 0x000001C

gUnk_08B40110:: @ 08B40110
	.incbin "baserom.gba", 0xB40110, 0x000001C

gUnk_08B4012C:: @ 08B4012C
	.incbin "baserom.gba", 0xB4012C, 0x0000018

gUnk_08B40144:: @ 08B40144
	.incbin "baserom.gba", 0xB40144, 0x0000018

gUnk_08B4015C:: @ 08B4015C
	.incbin "baserom.gba", 0xB4015C, 0x0000014

gUnk_08B40170:: @ 08B40170
	.incbin "baserom.gba", 0xB40170, 0x0000018

gUnk_08B40188:: @ 08B40188
	.incbin "baserom.gba", 0xB40188, 0x000001C

gUnk_08B401A4:: @ 08B401A4
	.incbin "baserom.gba", 0xB401A4, 0x0000010

gUnk_08B401B4:: @ 08B401B4
	.incbin "baserom.gba", 0xB401B4, 0x000000C

gUnk_08B401C0:: @ 08B401C0
	.incbin "baserom.gba", 0xB401C0, 0x0000020

gUnk_08B401E0:: @ 08B401E0
	.incbin "baserom.gba", 0xB401E0, 0x000000C

gUnk_08B401EC:: @ 08B401EC
	.incbin "baserom.gba", 0xB401EC, 0x0000018

gUnk_08B40204:: @ 08B40204
	.incbin "baserom.gba", 0xB40204, 0x000001C

gUnk_08B40220:: @ 08B40220
	.incbin "baserom.gba", 0xB40220, 0x0000014

gUnk_08B40234:: @ 08B40234
	.incbin "baserom.gba", 0xB40234, 0x000001C

gUnk_08B40250:: @ 08B40250
	.incbin "baserom.gba", 0xB40250, 0x0000008

gUnk_08B40258:: @ 08B40258
	.incbin "baserom.gba", 0xB40258, 0x0000010

gUnk_08B40268:: @ 08B40268
	.incbin "baserom.gba", 0xB40268, 0x0000014

gUnk_08B4027C:: @ 08B4027C
	.incbin "baserom.gba", 0xB4027C, 0x0000018

gUnk_08B40294:: @ 08B40294
	.incbin "baserom.gba", 0xB40294, 0x0000018

gUnk_08B402AC:: @ 08B402AC
	.incbin "baserom.gba", 0xB402AC, 0x0000014

gUnk_08B402C0:: @ 08B402C0
	.incbin "baserom.gba", 0xB402C0, 0x0000018

gUnk_08B402D8:: @ 08B402D8
	.incbin "baserom.gba", 0xB402D8, 0x0000018

gUnk_08B402F0:: @ 08B402F0
	.incbin "baserom.gba", 0xB402F0, 0x0000020

gUnk_08B40310:: @ 08B40310
	.incbin "baserom.gba", 0xB40310, 0x0000024

gUnk_08B40334:: @ 08B40334
	.incbin "baserom.gba", 0xB40334, 0x0000024

gUnk_08B40358:: @ 08B40358
	.incbin "baserom.gba", 0xB40358, 0x0000028

gUnk_08B40380:: @ 08B40380
	.incbin "baserom.gba", 0xB40380, 0x000000C

gUnk_08B4038C:: @ 08B4038C
	.incbin "baserom.gba", 0xB4038C, 0x000000C

gUnk_08B40398:: @ 08B40398
	.incbin "baserom.gba", 0xB40398, 0x0000010

gUnk_08B403A8:: @ 08B403A8
	.incbin "baserom.gba", 0xB403A8, 0x0000004

gUnk_08B403AC:: @ 08B403AC
	.incbin "baserom.gba", 0xB403AC, 0x000004C

gUnk_08B403F8:: @ 08B403F8
	.incbin "baserom.gba", 0xB403F8, 0x0000004

gUnk_08B403FC:: @ 08B403FC
	.incbin "baserom.gba", 0xB403FC, 0x000000C

gUnk_08B40408:: @ 08B40408
	.incbin "baserom.gba", 0xB40408, 0x0000004

gUnk_08B4040C:: @ 08B4040C
	.incbin "baserom.gba", 0xB4040C, 0x0000004

gUnk_08B40410:: @ 08B40410
	.incbin "baserom.gba", 0xB40410, 0x0000004

gUnk_08B40414:: @ 08B40414
	.incbin "baserom.gba", 0xB40414, 0x0000008

gUnk_08B4041C:: @ 08B4041C
	.incbin "baserom.gba", 0xB4041C, 0x000000C

gUnk_08B40428:: @ 08B40428
	.incbin "baserom.gba", 0xB40428, 0x0000020

gUnk_08B40448:: @ 08B40448
	.incbin "baserom.gba", 0xB40448, 0x000001C

gUnk_08B40464:: @ 08B40464
	.incbin "baserom.gba", 0xB40464, 0x000001C

gUnk_08B40480:: @ 08B40480
	.incbin "baserom.gba", 0xB40480, 0x0000018

gUnk_08B40498:: @ 08B40498
	.incbin "baserom.gba", 0xB40498, 0x0000014

gUnk_08B404AC:: @ 08B404AC
	.incbin "baserom.gba", 0xB404AC, 0x0000014

gUnk_08B404C0:: @ 08B404C0
	.incbin "baserom.gba", 0xB404C0, 0x0000014

gUnk_08B404D4:: @ 08B404D4
	.incbin "baserom.gba", 0xB404D4, 0x0000010

gUnk_08B404E4:: @ 08B404E4
	.incbin "baserom.gba", 0xB404E4, 0x000001C

gUnk_08B40500:: @ 08B40500
	.incbin "baserom.gba", 0xB40500, 0x000001C

gUnk_08B4051C:: @ 08B4051C
	.incbin "baserom.gba", 0xB4051C, 0x0000008

gUnk_08B40524:: @ 08B40524
	.incbin "baserom.gba", 0xB40524, 0x000000C

gUnk_08B40530:: @ 08B40530
	.incbin "baserom.gba", 0xB40530, 0x000000C

gUnk_08B4053C:: @ 08B4053C
	.incbin "baserom.gba", 0xB4053C, 0x000000C

gUnk_08B40548:: @ 08B40548
	.incbin "baserom.gba", 0xB40548, 0x0000020

gUnk_08B40568:: @ 08B40568
	.incbin "baserom.gba", 0xB40568, 0x000001C

gUnk_08B40584:: @ 08B40584
	.incbin "baserom.gba", 0xB40584, 0x000001C

gUnk_08B405A0:: @ 08B405A0
	.incbin "baserom.gba", 0xB405A0, 0x0000018

gUnk_08B405B8:: @ 08B405B8
	.incbin "baserom.gba", 0xB405B8, 0x000001C

gUnk_08B405D4:: @ 08B405D4
	.incbin "baserom.gba", 0xB405D4, 0x0000020

gUnk_08B405F4:: @ 08B405F4
	.incbin "baserom.gba", 0xB405F4, 0x0000020

gUnk_08B40614:: @ 08B40614
	.incbin "baserom.gba", 0xB40614, 0x0000020

gUnk_08B40634:: @ 08B40634
	.incbin "baserom.gba", 0xB40634, 0x0000008

gUnk_08B4063C:: @ 08B4063C
	.incbin "baserom.gba", 0xB4063C, 0x0000020

gUnk_08B4065C:: @ 08B4065C
	.incbin "baserom.gba", 0xB4065C, 0x0000014

gUnk_08B40670:: @ 08B40670
	.incbin "baserom.gba", 0xB40670, 0x000000C

gUnk_08B4067C:: @ 08B4067C
	.incbin "baserom.gba", 0xB4067C, 0x0000018

gUnk_08B40694:: @ 08B40694
	.incbin "baserom.gba", 0xB40694, 0x0000010

gUnk_08B406A4:: @ 08B406A4
	.incbin "baserom.gba", 0xB406A4, 0x000001C

gUnk_08B406C0:: @ 08B406C0
	.incbin "baserom.gba", 0xB406C0, 0x0000018

gUnk_08B406D8:: @ 08B406D8
	.incbin "baserom.gba", 0xB406D8, 0x0000014

gUnk_08B406EC:: @ 08B406EC
	.incbin "baserom.gba", 0xB406EC, 0x0000014

gUnk_08B40700:: @ 08B40700
	.incbin "baserom.gba", 0xB40700, 0x0000014

gUnk_08B40714:: @ 08B40714
	.incbin "baserom.gba", 0xB40714, 0x0000014

gUnk_08B40728:: @ 08B40728
	.incbin "baserom.gba", 0xB40728, 0x0000010

gUnk_08B40738:: @ 08B40738
	.incbin "baserom.gba", 0xB40738, 0x0000010

gUnk_08B40748:: @ 08B40748
	.incbin "baserom.gba", 0xB40748, 0x000000C

gUnk_08B40754:: @ 08B40754
	.incbin "baserom.gba", 0xB40754, 0x0000010

gUnk_08B40764:: @ 08B40764
	.incbin "baserom.gba", 0xB40764, 0x0000010

gUnk_08B40774:: @ 08B40774
	.incbin "baserom.gba", 0xB40774, 0x0000014

gUnk_08B40788:: @ 08B40788
	.incbin "baserom.gba", 0xB40788, 0x0000018

gUnk_08B407A0:: @ 08B407A0
	.incbin "baserom.gba", 0xB407A0, 0x0000018

gUnk_08B407B8:: @ 08B407B8
	.incbin "baserom.gba", 0xB407B8, 0x0000018

gUnk_08B407D0:: @ 08B407D0
	.incbin "baserom.gba", 0xB407D0, 0x0000004

gUnk_08B407D4:: @ 08B407D4
	.incbin "baserom.gba", 0xB407D4, 0x000004C

gUnk_08B40820:: @ 08B40820
	.incbin "baserom.gba", 0xB40820, 0x0000004

gUnk_08B40824:: @ 08B40824
	.incbin "baserom.gba", 0xB40824, 0x0000010

gUnk_08B40834:: @ 08B40834
	.incbin "baserom.gba", 0xB40834, 0x0000004

gUnk_08B40838:: @ 08B40838
	.incbin "baserom.gba", 0xB40838, 0x0000004

gUnk_08B4083C:: @ 08B4083C
	.incbin "baserom.gba", 0xB4083C, 0x0000004

gUnk_08B40840:: @ 08B40840
	.incbin "baserom.gba", 0xB40840, 0x0000010

gUnk_08B40850:: @ 08B40850
	.incbin "baserom.gba", 0xB40850, 0x0000010

gUnk_08B40860:: @ 08B40860
	.incbin "baserom.gba", 0xB40860, 0x000001C

gUnk_08B4087C:: @ 08B4087C
	.incbin "baserom.gba", 0xB4087C, 0x0000020

gUnk_08B4089C:: @ 08B4089C
	.incbin "baserom.gba", 0xB4089C, 0x0000020

gUnk_08B408BC:: @ 08B408BC
	.incbin "baserom.gba", 0xB408BC, 0x0000020

gUnk_08B408DC:: @ 08B408DC
	.incbin "baserom.gba", 0xB408DC, 0x000001C

gUnk_08B408F8:: @ 08B408F8
	.incbin "baserom.gba", 0xB408F8, 0x000001C

gUnk_08B40914:: @ 08B40914
	.incbin "baserom.gba", 0xB40914, 0x0000018

gUnk_08B4092C:: @ 08B4092C
	.incbin "baserom.gba", 0xB4092C, 0x0000018

gUnk_08B40944:: @ 08B40944
	.incbin "baserom.gba", 0xB40944, 0x000001C

gUnk_08B40960:: @ 08B40960
	.incbin "baserom.gba", 0xB40960, 0x000001C

gUnk_08B4097C:: @ 08B4097C
	.incbin "baserom.gba", 0xB4097C, 0x000000C

gUnk_08B40988:: @ 08B40988
	.incbin "baserom.gba", 0xB40988, 0x0000008

gUnk_08B40990:: @ 08B40990
	.incbin "baserom.gba", 0xB40990, 0x0000014

gUnk_08B409A4:: @ 08B409A4
	.incbin "baserom.gba", 0xB409A4, 0x0000008

gUnk_08B409AC:: @ 08B409AC
	.incbin "baserom.gba", 0xB409AC, 0x0000024

gUnk_08B409D0:: @ 08B409D0
	.incbin "baserom.gba", 0xB409D0, 0x0000024

gUnk_08B409F4:: @ 08B409F4
	.incbin "baserom.gba", 0xB409F4, 0x000000C

gUnk_08B40A00:: @ 08B40A00
	.incbin "baserom.gba", 0xB40A00, 0x0000014

gUnk_08B40A14:: @ 08B40A14
	.incbin "baserom.gba", 0xB40A14, 0x0000020

gUnk_08B40A34:: @ 08B40A34
	.incbin "baserom.gba", 0xB40A34, 0x0000024

gUnk_08B40A58:: @ 08B40A58
	.incbin "baserom.gba", 0xB40A58, 0x0000024

gUnk_08B40A7C:: @ 08B40A7C
	.incbin "baserom.gba", 0xB40A7C, 0x0000020

gUnk_08B40A9C:: @ 08B40A9C
	.incbin "baserom.gba", 0xB40A9C, 0x000001C

gUnk_08B40AB8:: @ 08B40AB8
	.incbin "baserom.gba", 0xB40AB8, 0x000000C

gUnk_08B40AC4:: @ 08B40AC4
	.incbin "baserom.gba", 0xB40AC4, 0x0000020

gUnk_08B40AE4:: @ 08B40AE4
	.incbin "baserom.gba", 0xB40AE4, 0x0000018

gUnk_08B40AFC:: @ 08B40AFC
	.incbin "baserom.gba", 0xB40AFC, 0x0000014

gUnk_08B40B10:: @ 08B40B10
	.incbin "baserom.gba", 0xB40B10, 0x000001C

gUnk_08B40B2C:: @ 08B40B2C
	.incbin "baserom.gba", 0xB40B2C, 0x0000014

gUnk_08B40B40:: @ 08B40B40
	.incbin "baserom.gba", 0xB40B40, 0x0000018

gUnk_08B40B58:: @ 08B40B58
	.incbin "baserom.gba", 0xB40B58, 0x0000010

gUnk_08B40B68:: @ 08B40B68
	.incbin "baserom.gba", 0xB40B68, 0x0000010

gUnk_08B40B78:: @ 08B40B78
	.incbin "baserom.gba", 0xB40B78, 0x000000C

gUnk_08B40B84:: @ 08B40B84
	.incbin "baserom.gba", 0xB40B84, 0x0000010

gUnk_08B40B94:: @ 08B40B94
	.incbin "baserom.gba", 0xB40B94, 0x000000C

gUnk_08B40BA0:: @ 08B40BA0
	.incbin "baserom.gba", 0xB40BA0, 0x000000C

gUnk_08B40BAC:: @ 08B40BAC
	.incbin "baserom.gba", 0xB40BAC, 0x0000008

gUnk_08B40BB4:: @ 08B40BB4
	.incbin "baserom.gba", 0xB40BB4, 0x0000014

gUnk_08B40BC8:: @ 08B40BC8
	.incbin "baserom.gba", 0xB40BC8, 0x0000014

gUnk_08B40BDC:: @ 08B40BDC
	.incbin "baserom.gba", 0xB40BDC, 0x0000018

gUnk_08B40BF4:: @ 08B40BF4
	.incbin "baserom.gba", 0xB40BF4, 0x0000018

gUnk_08B40C0C:: @ 08B40C0C
	.incbin "baserom.gba", 0xB40C0C, 0x000000B

gUnk_08B40C17:: @ 08B40C17
	.incbin "baserom.gba", 0xB40C17, 0x0000009

gUnk_08B40C20:: @ 08B40C20
	.incbin "baserom.gba", 0xB40C20, 0x0000018

gUnk_08B40C38:: @ 08B40C38
	.incbin "baserom.gba", 0xB40C38, 0x0000014

gUnk_08B40C4C:: @ 08B40C4C
	.incbin "baserom.gba", 0xB40C4C, 0x0000004

gUnk_08B40C50:: @ 08B40C50
	.incbin "baserom.gba", 0xB40C50, 0x000004C

gUnk_08B40C9C:: @ 08B40C9C
	.incbin "baserom.gba", 0xB40C9C, 0x0000004

gUnk_08B40CA0:: @ 08B40CA0
	.incbin "baserom.gba", 0xB40CA0, 0x0000004

gUnk_08B40CA4:: @ 08B40CA4
	.incbin "baserom.gba", 0xB40CA4, 0x0000004

gUnk_08B40CA8:: @ 08B40CA8
	.incbin "baserom.gba", 0xB40CA8, 0x0000004

gUnk_08B40CAC:: @ 08B40CAC
	.incbin "baserom.gba", 0xB40CAC, 0x0000004

gUnk_08B40CB0:: @ 08B40CB0
	.incbin "baserom.gba", 0xB40CB0, 0x0000004

gUnk_08B40CB4:: @ 08B40CB4
	.incbin "baserom.gba", 0xB40CB4, 0x0000004

gUnk_08B40CB8:: @ 08B40CB8
	.incbin "baserom.gba", 0xB40CB8, 0x0000004

gUnk_08B40CBC:: @ 08B40CBC
	.incbin "baserom.gba", 0xB40CBC, 0x0000004

gUnk_08B40CC0:: @ 08B40CC0
	.incbin "baserom.gba", 0xB40CC0, 0x0000004

gUnk_08B40CC4:: @ 08B40CC4
	.incbin "baserom.gba", 0xB40CC4, 0x0000004

gUnk_08B40CC8:: @ 08B40CC8
	.incbin "baserom.gba", 0xB40CC8, 0x0000004

gUnk_08B40CCC:: @ 08B40CCC
	.incbin "baserom.gba", 0xB40CCC, 0x0000004

gUnk_08B40CD0:: @ 08B40CD0
	.incbin "baserom.gba", 0xB40CD0, 0x0000004

gUnk_08B40CD4:: @ 08B40CD4
	.incbin "baserom.gba", 0xB40CD4, 0x0000004

gUnk_08B40CD8:: @ 08B40CD8
	.incbin "baserom.gba", 0xB40CD8, 0x0000004

gUnk_08B40CDC:: @ 08B40CDC
	.incbin "baserom.gba", 0xB40CDC, 0x0000004

gUnk_08B40CE0:: @ 08B40CE0
	.incbin "baserom.gba", 0xB40CE0, 0x0000004

gUnk_08B40CE4:: @ 08B40CE4
	.incbin "baserom.gba", 0xB40CE4, 0x0000004

gUnk_08B40CE8:: @ 08B40CE8
	.incbin "baserom.gba", 0xB40CE8, 0x0000008

gUnk_08B40CF0:: @ 08B40CF0
	.incbin "baserom.gba", 0xB40CF0, 0x0000004

gUnk_08B40CF4:: @ 08B40CF4
	.incbin "baserom.gba", 0xB40CF4, 0x0000004

gUnk_08B40CF8:: @ 08B40CF8
	.incbin "baserom.gba", 0xB40CF8, 0x0000004

gUnk_08B40CFC:: @ 08B40CFC
	.incbin "baserom.gba", 0xB40CFC, 0x0000004

gUnk_08B40D00:: @ 08B40D00
	.incbin "baserom.gba", 0xB40D00, 0x0000004

gUnk_08B40D04:: @ 08B40D04
	.incbin "baserom.gba", 0xB40D04, 0x0000004

gUnk_08B40D08:: @ 08B40D08
	.incbin "baserom.gba", 0xB40D08, 0x0000004

gUnk_08B40D0C:: @ 08B40D0C
	.incbin "baserom.gba", 0xB40D0C, 0x0000004

gUnk_08B40D10:: @ 08B40D10
	.incbin "baserom.gba", 0xB40D10, 0x0000004

gUnk_08B40D14:: @ 08B40D14
	.incbin "baserom.gba", 0xB40D14, 0x0000004

gUnk_08B40D18:: @ 08B40D18
	.incbin "baserom.gba", 0xB40D18, 0x0000004

gUnk_08B40D1C:: @ 08B40D1C
	.incbin "baserom.gba", 0xB40D1C, 0x0000004

gUnk_08B40D20:: @ 08B40D20
	.incbin "baserom.gba", 0xB40D20, 0x0000004

gUnk_08B40D24:: @ 08B40D24
	.incbin "baserom.gba", 0xB40D24, 0x0000004

gUnk_08B40D28:: @ 08B40D28
	.incbin "baserom.gba", 0xB40D28, 0x0000004

gUnk_08B40D2C:: @ 08B40D2C
	.incbin "baserom.gba", 0xB40D2C, 0x0000004

gUnk_08B40D30:: @ 08B40D30
	.incbin "baserom.gba", 0xB40D30, 0x0000004

gUnk_08B40D34:: @ 08B40D34
	.incbin "baserom.gba", 0xB40D34, 0x0000004

gUnk_08B40D38:: @ 08B40D38
	.incbin "baserom.gba", 0xB40D38, 0x0000004

gUnk_08B40D3C:: @ 08B40D3C
	.incbin "baserom.gba", 0xB40D3C, 0x0000004

gUnk_08B40D40:: @ 08B40D40
	.incbin "baserom.gba", 0xB40D40, 0x0000004

gUnk_08B40D44:: @ 08B40D44
	.incbin "baserom.gba", 0xB40D44, 0x0000004

gUnk_08B40D48:: @ 08B40D48
	.incbin "baserom.gba", 0xB40D48, 0x0000004

gUnk_08B40D4C:: @ 08B40D4C
	.incbin "baserom.gba", 0xB40D4C, 0x0000004

gUnk_08B40D50:: @ 08B40D50
	.incbin "baserom.gba", 0xB40D50, 0x0000004

gUnk_08B40D54:: @ 08B40D54
	.incbin "baserom.gba", 0xB40D54, 0x0000004

gUnk_08B40D58:: @ 08B40D58
	.incbin "baserom.gba", 0xB40D58, 0x0000004

gUnk_08B40D5C:: @ 08B40D5C
	.incbin "baserom.gba", 0xB40D5C, 0x0000004

gUnk_08B40D60:: @ 08B40D60
	.incbin "baserom.gba", 0xB40D60, 0x0000004

gUnk_08B40D64:: @ 08B40D64
	.incbin "baserom.gba", 0xB40D64, 0x0000004

gUnk_08B40D68:: @ 08B40D68
	.incbin "baserom.gba", 0xB40D68, 0x0000004

gUnk_08B40D6C:: @ 08B40D6C
	.incbin "baserom.gba", 0xB40D6C, 0x000004C

gUnk_08B40DB8:: @ 08B40DB8
	.incbin "baserom.gba", 0xB40DB8, 0x0000004

gUnk_08B40DBC:: @ 08B40DBC
	.incbin "baserom.gba", 0xB40DBC, 0x0000010

gUnk_08B40DCC:: @ 08B40DCC
	.incbin "baserom.gba", 0xB40DCC, 0x0000004

gUnk_08B40DD0:: @ 08B40DD0
	.incbin "baserom.gba", 0xB40DD0, 0x0000004

gUnk_08B40DD4:: @ 08B40DD4
	.incbin "baserom.gba", 0xB40DD4, 0x0000004

gUnk_08B40DD8:: @ 08B40DD8
	.incbin "baserom.gba", 0xB40DD8, 0x000000C

gUnk_08B40DE4:: @ 08B40DE4
	.incbin "baserom.gba", 0xB40DE4, 0x0000010

gUnk_08B40DF4:: @ 08B40DF4
	.incbin "baserom.gba", 0xB40DF4, 0x0000020

gUnk_08B40E14:: @ 08B40E14
	.incbin "baserom.gba", 0xB40E14, 0x0000020

gUnk_08B40E34:: @ 08B40E34
	.incbin "baserom.gba", 0xB40E34, 0x0000020

gUnk_08B40E54:: @ 08B40E54
	.incbin "baserom.gba", 0xB40E54, 0x000001C

gUnk_08B40E70:: @ 08B40E70
	.incbin "baserom.gba", 0xB40E70, 0x0000018

gUnk_08B40E88:: @ 08B40E88
	.incbin "baserom.gba", 0xB40E88, 0x0000018

gUnk_08B40EA0:: @ 08B40EA0
	.incbin "baserom.gba", 0xB40EA0, 0x0000018

gUnk_08B40EB8:: @ 08B40EB8
	.incbin "baserom.gba", 0xB40EB8, 0x0000014

gUnk_08B40ECC:: @ 08B40ECC
	.incbin "baserom.gba", 0xB40ECC, 0x000001C

gUnk_08B40EE8:: @ 08B40EE8
	.incbin "baserom.gba", 0xB40EE8, 0x000001C

gUnk_08B40F04:: @ 08B40F04
	.incbin "baserom.gba", 0xB40F04, 0x000000C

gUnk_08B40F10:: @ 08B40F10
	.incbin "baserom.gba", 0xB40F10, 0x0000008

gUnk_08B40F18:: @ 08B40F18
	.incbin "baserom.gba", 0xB40F18, 0x0000010

gUnk_08B40F28:: @ 08B40F28
	.incbin "baserom.gba", 0xB40F28, 0x0000008

gUnk_08B40F30:: @ 08B40F30
	.incbin "baserom.gba", 0xB40F30, 0x0000024

gUnk_08B40F54:: @ 08B40F54
	.incbin "baserom.gba", 0xB40F54, 0x0000020

gUnk_08B40F74:: @ 08B40F74
	.incbin "baserom.gba", 0xB40F74, 0x0000020

gUnk_08B40F94:: @ 08B40F94
	.incbin "baserom.gba", 0xB40F94, 0x000001C

gUnk_08B40FB0:: @ 08B40FB0
	.incbin "baserom.gba", 0xB40FB0, 0x0000020

gUnk_08B40FD0:: @ 08B40FD0
	.incbin "baserom.gba", 0xB40FD0, 0x0000024

gUnk_08B40FF4:: @ 08B40FF4
	.incbin "baserom.gba", 0xB40FF4, 0x0000020

gUnk_08B41014:: @ 08B41014
	.incbin "baserom.gba", 0xB41014, 0x0000020

gUnk_08B41034:: @ 08B41034
	.incbin "baserom.gba", 0xB41034, 0x0000008

gUnk_08B4103C:: @ 08B4103C
	.incbin "baserom.gba", 0xB4103C, 0x0000020

gUnk_08B4105C:: @ 08B4105C
	.incbin "baserom.gba", 0xB4105C, 0x0000018

gUnk_08B41074:: @ 08B41074
	.incbin "baserom.gba", 0xB41074, 0x0000010

gUnk_08B41084:: @ 08B41084
	.incbin "baserom.gba", 0xB41084, 0x000001C

gUnk_08B410A0:: @ 08B410A0
	.incbin "baserom.gba", 0xB410A0, 0x0000014

gUnk_08B410B4:: @ 08B410B4
	.incbin "baserom.gba", 0xB410B4, 0x000001C

gUnk_08B410D0:: @ 08B410D0
	.incbin "baserom.gba", 0xB410D0, 0x0000014

gUnk_08B410E4:: @ 08B410E4
	.incbin "baserom.gba", 0xB410E4, 0x0000010

gUnk_08B410F4:: @ 08B410F4
	.incbin "baserom.gba", 0xB410F4, 0x0000010

gUnk_08B41104:: @ 08B41104
	.incbin "baserom.gba", 0xB41104, 0x0000010

gUnk_08B41114:: @ 08B41114
	.incbin "baserom.gba", 0xB41114, 0x0000010

gUnk_08B41124:: @ 08B41124
	.incbin "baserom.gba", 0xB41124, 0x000000C

gUnk_08B41130:: @ 08B41130
	.incbin "baserom.gba", 0xB41130, 0x000000C

gUnk_08B4113C:: @ 08B4113C
	.incbin "baserom.gba", 0xB4113C, 0x0000010

gUnk_08B4114C:: @ 08B4114C
	.incbin "baserom.gba", 0xB4114C, 0x0000014

gUnk_08B41160:: @ 08B41160
	.incbin "baserom.gba", 0xB41160, 0x0000014

gUnk_08B41174:: @ 08B41174
	.incbin "baserom.gba", 0xB41174, 0x0000018

gUnk_08B4118C:: @ 08B4118C
	.incbin "baserom.gba", 0xB4118C, 0x0000018

gUnk_08B411A4:: @ 08B411A4
	.incbin "baserom.gba", 0xB411A4, 0x0000018

gUnk_08B411BC:: @ 08B411BC
	.incbin "baserom.gba", 0xB411BC, 0x0000014

gUnk_08B411D0:: @ 08B411D0
	.incbin "baserom.gba", 0xB411D0, 0x0000004

gUnk_08B411D4:: @ 08B411D4
	.incbin "baserom.gba", 0xB411D4, 0x000004C

gUnk_08B41220:: @ 08B41220
	.incbin "baserom.gba", 0xB41220, 0x0000008

gUnk_08B41228:: @ 08B41228
	.incbin "baserom.gba", 0xB41228, 0x000000C

gUnk_08B41234:: @ 08B41234
	.incbin "baserom.gba", 0xB41234, 0x0000008

gUnk_08B4123C:: @ 08B4123C
	.incbin "baserom.gba", 0xB4123C, 0x000000C

gUnk_08B41248:: @ 08B41248
	.incbin "baserom.gba", 0xB41248, 0x000000C

gUnk_08B41254:: @ 08B41254
	.incbin "baserom.gba", 0xB41254, 0x000000C

gUnk_08B41260:: @ 08B41260
	.incbin "baserom.gba", 0xB41260, 0x0000014

gUnk_08B41274:: @ 08B41274
	.incbin "baserom.gba", 0xB41274, 0x0000010

gUnk_08B41284:: @ 08B41284
	.incbin "baserom.gba", 0xB41284, 0x000001C

gUnk_08B412A0:: @ 08B412A0
	.incbin "baserom.gba", 0xB412A0, 0x0000014

gUnk_08B412B4:: @ 08B412B4
	.incbin "baserom.gba", 0xB412B4, 0x0000018

gUnk_08B412CC:: @ 08B412CC
	.incbin "baserom.gba", 0xB412CC, 0x000001C

gUnk_08B412E8:: @ 08B412E8
	.incbin "baserom.gba", 0xB412E8, 0x0000014

gUnk_08B412FC:: @ 08B412FC
	.incbin "baserom.gba", 0xB412FC, 0x0000014

gUnk_08B41310:: @ 08B41310
	.incbin "baserom.gba", 0xB41310, 0x0000010

gUnk_08B41320:: @ 08B41320
	.incbin "baserom.gba", 0xB41320, 0x0000018

gUnk_08B41338:: @ 08B41338
	.incbin "baserom.gba", 0xB41338, 0x000001C

gUnk_08B41354:: @ 08B41354
	.incbin "baserom.gba", 0xB41354, 0x0000018

gUnk_08B4136C:: @ 08B4136C
	.incbin "baserom.gba", 0xB4136C, 0x0000018

gUnk_08B41384:: @ 08B41384
	.incbin "baserom.gba", 0xB41384, 0x0000014

gUnk_08B41398:: @ 08B41398
	.incbin "baserom.gba", 0xB41398, 0x0000018

gUnk_08B413B0:: @ 08B413B0
	.incbin "baserom.gba", 0xB413B0, 0x000001C

gUnk_08B413CC:: @ 08B413CC
	.incbin "baserom.gba", 0xB413CC, 0x0000014

gUnk_08B413E0:: @ 08B413E0
	.incbin "baserom.gba", 0xB413E0, 0x0000018

gUnk_08B413F8:: @ 08B413F8
	.incbin "baserom.gba", 0xB413F8, 0x0000018

gUnk_08B41410:: @ 08B41410
	.incbin "baserom.gba", 0xB41410, 0x0000014

gUnk_08B41424:: @ 08B41424
	.incbin "baserom.gba", 0xB41424, 0x000004C

gUnk_08B41470:: @ 08B41470
	.incbin "baserom.gba", 0xB41470, 0x000000C

gUnk_08B4147C:: @ 08B4147C
	.incbin "baserom.gba", 0xB4147C, 0x0000008

gUnk_08B41484:: @ 08B41484
	.incbin "baserom.gba", 0xB41484, 0x0000008

gUnk_08B4148C:: @ 08B4148C
	.incbin "baserom.gba", 0xB4148C, 0x000000C

gUnk_08B41498:: @ 08B41498
	.incbin "baserom.gba", 0xB41498, 0x000000C

gUnk_08B414A4:: @ 08B414A4
	.incbin "baserom.gba", 0xB414A4, 0x000000C

gUnk_08B414B0:: @ 08B414B0
	.incbin "baserom.gba", 0xB414B0, 0x0000014

gUnk_08B414C4:: @ 08B414C4
	.incbin "baserom.gba", 0xB414C4, 0x0000010

gUnk_08B414D4:: @ 08B414D4
	.incbin "baserom.gba", 0xB414D4, 0x000001C

gUnk_08B414F0:: @ 08B414F0
	.incbin "baserom.gba", 0xB414F0, 0x0000014

gUnk_08B41504:: @ 08B41504
	.incbin "baserom.gba", 0xB41504, 0x0000018

gUnk_08B4151C:: @ 08B4151C
	.incbin "baserom.gba", 0xB4151C, 0x000001C

gUnk_08B41538:: @ 08B41538
	.incbin "baserom.gba", 0xB41538, 0x0000014

gUnk_08B4154C:: @ 08B4154C
	.incbin "baserom.gba", 0xB4154C, 0x0000014

gUnk_08B41560:: @ 08B41560
	.incbin "baserom.gba", 0xB41560, 0x0000010

gUnk_08B41570:: @ 08B41570
	.incbin "baserom.gba", 0xB41570, 0x0000018

gUnk_08B41588:: @ 08B41588
	.incbin "baserom.gba", 0xB41588, 0x000001C

gUnk_08B415A4:: @ 08B415A4
	.incbin "baserom.gba", 0xB415A4, 0x0000018

gUnk_08B415BC:: @ 08B415BC
	.incbin "baserom.gba", 0xB415BC, 0x0000018

gUnk_08B415D4:: @ 08B415D4
	.incbin "baserom.gba", 0xB415D4, 0x0000014

gUnk_08B415E8:: @ 08B415E8
	.incbin "baserom.gba", 0xB415E8, 0x0000018

gUnk_08B41600:: @ 08B41600
	.incbin "baserom.gba", 0xB41600, 0x000001C

gUnk_08B4161C:: @ 08B4161C
	.incbin "baserom.gba", 0xB4161C, 0x0000014

gUnk_08B41630:: @ 08B41630
	.incbin "baserom.gba", 0xB41630, 0x0000018

gUnk_08B41648:: @ 08B41648
	.incbin "baserom.gba", 0xB41648, 0x0000018

gUnk_08B41660:: @ 08B41660
	.incbin "baserom.gba", 0xB41660, 0x0000014

gUnk_08B41674:: @ 08B41674
	.incbin "baserom.gba", 0xB41674, 0x000004C

gUnk_08B416C0:: @ 08B416C0
	.incbin "baserom.gba", 0xB416C0, 0x0000008

gUnk_08B416C8:: @ 08B416C8
	.incbin "baserom.gba", 0xB416C8, 0x0000008

gUnk_08B416D0:: @ 08B416D0
	.incbin "baserom.gba", 0xB416D0, 0x0000008

gUnk_08B416D8:: @ 08B416D8
	.incbin "baserom.gba", 0xB416D8, 0x0000008

gUnk_08B416E0:: @ 08B416E0
	.incbin "baserom.gba", 0xB416E0, 0x0000008

gUnk_08B416E8:: @ 08B416E8
	.incbin "baserom.gba", 0xB416E8, 0x000000C

gUnk_08B416F4:: @ 08B416F4
	.incbin "baserom.gba", 0xB416F4, 0x0000014

gUnk_08B41708:: @ 08B41708
	.incbin "baserom.gba", 0xB41708, 0x000000C

gUnk_08B41714:: @ 08B41714
	.incbin "baserom.gba", 0xB41714, 0x0000018

gUnk_08B4172C:: @ 08B4172C
	.incbin "baserom.gba", 0xB4172C, 0x0000014

gUnk_08B41740:: @ 08B41740
	.incbin "baserom.gba", 0xB41740, 0x0000014

gUnk_08B41754:: @ 08B41754
	.incbin "baserom.gba", 0xB41754, 0x000001C

gUnk_08B41770:: @ 08B41770
	.incbin "baserom.gba", 0xB41770, 0x0000010

gUnk_08B41780:: @ 08B41780
	.incbin "baserom.gba", 0xB41780, 0x0000014

gUnk_08B41794:: @ 08B41794
	.incbin "baserom.gba", 0xB41794, 0x0000010

gUnk_08B417A4:: @ 08B417A4
	.incbin "baserom.gba", 0xB417A4, 0x0000014

gUnk_08B417B8:: @ 08B417B8
	.incbin "baserom.gba", 0xB417B8, 0x000001C

gUnk_08B417D4:: @ 08B417D4
	.incbin "baserom.gba", 0xB417D4, 0x0000018

gUnk_08B417EC:: @ 08B417EC
	.incbin "baserom.gba", 0xB417EC, 0x0000014

gUnk_08B41800:: @ 08B41800
	.incbin "baserom.gba", 0xB41800, 0x0000010

gUnk_08B41810:: @ 08B41810
	.incbin "baserom.gba", 0xB41810, 0x0000018

gUnk_08B41828:: @ 08B41828
	.incbin "baserom.gba", 0xB41828, 0x0000018

gUnk_08B41840:: @ 08B41840
	.incbin "baserom.gba", 0xB41840, 0x0000010

gUnk_08B41850:: @ 08B41850
	.incbin "baserom.gba", 0xB41850, 0x0000014

gUnk_08B41864:: @ 08B41864
	.incbin "baserom.gba", 0xB41864, 0x0000018

gUnk_08B4187C:: @ 08B4187C
	.incbin "baserom.gba", 0xB4187C, 0x0000014

gUnk_08B41890:: @ 08B41890
	.incbin "baserom.gba", 0xB41890, 0x000004C

gUnk_08B418DC:: @ 08B418DC
	.incbin "baserom.gba", 0xB418DC, 0x000000C

gUnk_08B418E8:: @ 08B418E8
	.incbin "baserom.gba", 0xB418E8, 0x000000C

gUnk_08B418F4:: @ 08B418F4
	.incbin "baserom.gba", 0xB418F4, 0x000000C

gUnk_08B41900:: @ 08B41900
	.incbin "baserom.gba", 0xB41900, 0x0000008

gUnk_08B41908:: @ 08B41908
	.incbin "baserom.gba", 0xB41908, 0x0000008

gUnk_08B41910:: @ 08B41910
	.incbin "baserom.gba", 0xB41910, 0x000000C

gUnk_08B4191C:: @ 08B4191C
	.incbin "baserom.gba", 0xB4191C, 0x0000014

gUnk_08B41930:: @ 08B41930
	.incbin "baserom.gba", 0xB41930, 0x000000C

gUnk_08B4193C:: @ 08B4193C
	.incbin "baserom.gba", 0xB4193C, 0x0000018

gUnk_08B41954:: @ 08B41954
	.incbin "baserom.gba", 0xB41954, 0x0000014

gUnk_08B41968:: @ 08B41968
	.incbin "baserom.gba", 0xB41968, 0x0000014

gUnk_08B4197C:: @ 08B4197C
	.incbin "baserom.gba", 0xB4197C, 0x000001C

gUnk_08B41998:: @ 08B41998
	.incbin "baserom.gba", 0xB41998, 0x0000010

gUnk_08B419A8:: @ 08B419A8
	.incbin "baserom.gba", 0xB419A8, 0x0000014

gUnk_08B419BC:: @ 08B419BC
	.incbin "baserom.gba", 0xB419BC, 0x0000010

gUnk_08B419CC:: @ 08B419CC
	.incbin "baserom.gba", 0xB419CC, 0x0000014

gUnk_08B419E0:: @ 08B419E0
	.incbin "baserom.gba", 0xB419E0, 0x000001C

gUnk_08B419FC:: @ 08B419FC
	.incbin "baserom.gba", 0xB419FC, 0x0000018

gUnk_08B41A14:: @ 08B41A14
	.incbin "baserom.gba", 0xB41A14, 0x0000014

gUnk_08B41A28:: @ 08B41A28
	.incbin "baserom.gba", 0xB41A28, 0x0000010

gUnk_08B41A38:: @ 08B41A38
	.incbin "baserom.gba", 0xB41A38, 0x0000018

gUnk_08B41A50:: @ 08B41A50
	.incbin "baserom.gba", 0xB41A50, 0x0000018

gUnk_08B41A68:: @ 08B41A68
	.incbin "baserom.gba", 0xB41A68, 0x0000010

gUnk_08B41A78:: @ 08B41A78
	.incbin "baserom.gba", 0xB41A78, 0x0000014

gUnk_08B41A8C:: @ 08B41A8C
	.incbin "baserom.gba", 0xB41A8C, 0x0000018

gUnk_08B41AA4:: @ 08B41AA4
	.incbin "baserom.gba", 0xB41AA4, 0x0000014

gUnk_08B41AB8:: @ 08B41AB8
	.incbin "baserom.gba", 0xB41AB8, 0x000004C

gUnk_08B41B04:: @ 08B41B04
	.incbin "baserom.gba", 0xB41B04, 0x000000C

gUnk_08B41B10:: @ 08B41B10
	.incbin "baserom.gba", 0xB41B10, 0x000000C

gUnk_08B41B1C:: @ 08B41B1C
	.incbin "baserom.gba", 0xB41B1C, 0x0000008

gUnk_08B41B24:: @ 08B41B24
	.incbin "baserom.gba", 0xB41B24, 0x000000C

gUnk_08B41B30:: @ 08B41B30
	.incbin "baserom.gba", 0xB41B30, 0x0000008

gUnk_08B41B38:: @ 08B41B38
	.incbin "baserom.gba", 0xB41B38, 0x0000008

gUnk_08B41B40:: @ 08B41B40
	.incbin "baserom.gba", 0xB41B40, 0x0000010

gUnk_08B41B50:: @ 08B41B50
	.incbin "baserom.gba", 0xB41B50, 0x000000C

gUnk_08B41B5C:: @ 08B41B5C
	.incbin "baserom.gba", 0xB41B5C, 0x0000018

gUnk_08B41B74:: @ 08B41B74
	.incbin "baserom.gba", 0xB41B74, 0x0000010

gUnk_08B41B84:: @ 08B41B84
	.incbin "baserom.gba", 0xB41B84, 0x0000014

gUnk_08B41B98:: @ 08B41B98
	.incbin "baserom.gba", 0xB41B98, 0x0000018

gUnk_08B41BB0:: @ 08B41BB0
	.incbin "baserom.gba", 0xB41BB0, 0x0000010

gUnk_08B41BC0:: @ 08B41BC0
	.incbin "baserom.gba", 0xB41BC0, 0x0000010

gUnk_08B41BD0:: @ 08B41BD0
	.incbin "baserom.gba", 0xB41BD0, 0x000000C

gUnk_08B41BDC:: @ 08B41BDC
	.incbin "baserom.gba", 0xB41BDC, 0x0000014

gUnk_08B41BF0:: @ 08B41BF0
	.incbin "baserom.gba", 0xB41BF0, 0x0000018

gUnk_08B41C08:: @ 08B41C08
	.incbin "baserom.gba", 0xB41C08, 0x0000014

gUnk_08B41C1C:: @ 08B41C1C
	.incbin "baserom.gba", 0xB41C1C, 0x0000014

gUnk_08B41C30:: @ 08B41C30
	.incbin "baserom.gba", 0xB41C30, 0x0000010

gUnk_08B41C40:: @ 08B41C40
	.incbin "baserom.gba", 0xB41C40, 0x0000014

gUnk_08B41C54:: @ 08B41C54
	.incbin "baserom.gba", 0xB41C54, 0x0000018

gUnk_08B41C6C:: @ 08B41C6C
	.incbin "baserom.gba", 0xB41C6C, 0x0000010

gUnk_08B41C7C:: @ 08B41C7C
	.incbin "baserom.gba", 0xB41C7C, 0x0000014

gUnk_08B41C90:: @ 08B41C90
	.incbin "baserom.gba", 0xB41C90, 0x0000014

gUnk_08B41CA4:: @ 08B41CA4
	.incbin "baserom.gba", 0xB41CA4, 0x0000010

gUnk_08B41CB4:: @ 08B41CB4
	.incbin "baserom.gba", 0xB41CB4, 0x000004C

gUnk_08B41D00:: @ 08B41D00
	.incbin "baserom.gba", 0xB41D00, 0x000000C

gUnk_08B41D0C:: @ 08B41D0C
	.incbin "baserom.gba", 0xB41D0C, 0x000000C

gUnk_08B41D18:: @ 08B41D18
	.incbin "baserom.gba", 0xB41D18, 0x000000C

gUnk_08B41D24:: @ 08B41D24
	.incbin "baserom.gba", 0xB41D24, 0x000000C

gUnk_08B41D30:: @ 08B41D30
	.incbin "baserom.gba", 0xB41D30, 0x0000008

gUnk_08B41D38:: @ 08B41D38
	.incbin "baserom.gba", 0xB41D38, 0x0000008

gUnk_08B41D40:: @ 08B41D40
	.incbin "baserom.gba", 0xB41D40, 0x0000010

gUnk_08B41D50:: @ 08B41D50
	.incbin "baserom.gba", 0xB41D50, 0x0000008

gUnk_08B41D58:: @ 08B41D58
	.incbin "baserom.gba", 0xB41D58, 0x0000014

gUnk_08B41D6C:: @ 08B41D6C
	.incbin "baserom.gba", 0xB41D6C, 0x0000010

gUnk_08B41D7C:: @ 08B41D7C
	.incbin "baserom.gba", 0xB41D7C, 0x0000010

gUnk_08B41D8C:: @ 08B41D8C
	.incbin "baserom.gba", 0xB41D8C, 0x0000018

gUnk_08B41DA4:: @ 08B41DA4
	.incbin "baserom.gba", 0xB41DA4, 0x000000C

gUnk_08B41DB0:: @ 08B41DB0
	.incbin "baserom.gba", 0xB41DB0, 0x0000010

gUnk_08B41DC0:: @ 08B41DC0
	.incbin "baserom.gba", 0xB41DC0, 0x000000C

gUnk_08B41DCC:: @ 08B41DCC
	.incbin "baserom.gba", 0xB41DCC, 0x0000010

gUnk_08B41DDC:: @ 08B41DDC
	.incbin "baserom.gba", 0xB41DDC, 0x0000018

gUnk_08B41DF4:: @ 08B41DF4
	.incbin "baserom.gba", 0xB41DF4, 0x0000014

gUnk_08B41E08:: @ 08B41E08
	.incbin "baserom.gba", 0xB41E08, 0x0000010

gUnk_08B41E18:: @ 08B41E18
	.incbin "baserom.gba", 0xB41E18, 0x000000C

gUnk_08B41E24:: @ 08B41E24
	.incbin "baserom.gba", 0xB41E24, 0x0000014

gUnk_08B41E38:: @ 08B41E38
	.incbin "baserom.gba", 0xB41E38, 0x0000014

gUnk_08B41E4C:: @ 08B41E4C
	.incbin "baserom.gba", 0xB41E4C, 0x000000C

gUnk_08B41E58:: @ 08B41E58
	.incbin "baserom.gba", 0xB41E58, 0x0000010

gUnk_08B41E68:: @ 08B41E68
	.incbin "baserom.gba", 0xB41E68, 0x0000014

gUnk_08B41E7C:: @ 08B41E7C
	.incbin "baserom.gba", 0xB41E7C, 0x0000010

gUnk_08B41E8C:: @ 08B41E8C
	.incbin "baserom.gba", 0xB41E8C, 0x000004C

gUnk_08B41ED8:: @ 08B41ED8
	.incbin "baserom.gba", 0xB41ED8, 0x0000004

gUnk_08B41EDC:: @ 08B41EDC
	.incbin "baserom.gba", 0xB41EDC, 0x000000C

gUnk_08B41EE8:: @ 08B41EE8
	.incbin "baserom.gba", 0xB41EE8, 0x000000C

gUnk_08B41EF4:: @ 08B41EF4
	.incbin "baserom.gba", 0xB41EF4, 0x0000008

gUnk_08B41EFC:: @ 08B41EFC
	.incbin "baserom.gba", 0xB41EFC, 0x0000004

gUnk_08B41F00:: @ 08B41F00
	.incbin "baserom.gba", 0xB41F00, 0x0000008

gUnk_08B41F08:: @ 08B41F08
	.incbin "baserom.gba", 0xB41F08, 0x0000010

gUnk_08B41F18:: @ 08B41F18
	.incbin "baserom.gba", 0xB41F18, 0x0000014

gUnk_08B41F2C:: @ 08B41F2C
	.incbin "baserom.gba", 0xB41F2C, 0x000000C

gUnk_08B41F38:: @ 08B41F38
	.incbin "baserom.gba", 0xB41F38, 0x0000004

gUnk_08B41F3C:: @ 08B41F3C
	.incbin "baserom.gba", 0xB41F3C, 0x0000004

gUnk_08B41F40:: @ 08B41F40
	.incbin "baserom.gba", 0xB41F40, 0x0000008

gUnk_08B41F48:: @ 08B41F48
	.incbin "baserom.gba", 0xB41F48, 0x0000004

gUnk_08B41F4C:: @ 08B41F4C
	.incbin "baserom.gba", 0xB41F4C, 0x0000004

gUnk_08B41F50:: @ 08B41F50
	.incbin "baserom.gba", 0xB41F50, 0x0000004

gUnk_08B41F54:: @ 08B41F54
	.incbin "baserom.gba", 0xB41F54, 0x0000004

gUnk_08B41F58:: @ 08B41F58
	.incbin "baserom.gba", 0xB41F58, 0x0000004

gUnk_08B41F5C:: @ 08B41F5C
	.incbin "baserom.gba", 0xB41F5C, 0x000000C

gUnk_08B41F68:: @ 08B41F68
	.incbin "baserom.gba", 0xB41F68, 0x000000C

gUnk_08B41F74:: @ 08B41F74
	.incbin "baserom.gba", 0xB41F74, 0x0000010

gUnk_08B41F84:: @ 08B41F84
	.incbin "baserom.gba", 0xB41F84, 0x0000010

gUnk_08B41F94:: @ 08B41F94
	.incbin "baserom.gba", 0xB41F94, 0x0000014

gUnk_08B41FA8:: @ 08B41FA8
	.incbin "baserom.gba", 0xB41FA8, 0x0000010

gUnk_08B41FB8:: @ 08B41FB8
	.incbin "baserom.gba", 0xB41FB8, 0x000004C

gUnk_08B42004:: @ 08B42004
	.incbin "baserom.gba", 0xB42004, 0x0000004

gUnk_08B42008:: @ 08B42008
	.incbin "baserom.gba", 0xB42008, 0x0000004

gUnk_08B4200C:: @ 08B4200C
	.incbin "baserom.gba", 0xB4200C, 0x0000004

gUnk_08B42010:: @ 08B42010
	.incbin "baserom.gba", 0xB42010, 0x0000004

gUnk_08B42014:: @ 08B42014
	.incbin "baserom.gba", 0xB42014, 0x0000004

gUnk_08B42018:: @ 08B42018
	.incbin "baserom.gba", 0xB42018, 0x0000004

gUnk_08B4201C:: @ 08B4201C
	.incbin "baserom.gba", 0xB4201C, 0x0000004

gUnk_08B42020:: @ 08B42020
	.incbin "baserom.gba", 0xB42020, 0x0000004

gUnk_08B42024:: @ 08B42024
	.incbin "baserom.gba", 0xB42024, 0x0000004

gUnk_08B42028:: @ 08B42028
	.incbin "baserom.gba", 0xB42028, 0x0000004

gUnk_08B4202C:: @ 08B4202C
	.incbin "baserom.gba", 0xB4202C, 0x0000004

gUnk_08B42030:: @ 08B42030
	.incbin "baserom.gba", 0xB42030, 0x0000004

gUnk_08B42034:: @ 08B42034
	.incbin "baserom.gba", 0xB42034, 0x0000004

gUnk_08B42038:: @ 08B42038
	.incbin "baserom.gba", 0xB42038, 0x0000004

gUnk_08B4203C:: @ 08B4203C
	.incbin "baserom.gba", 0xB4203C, 0x0000004

gUnk_08B42040:: @ 08B42040
	.incbin "baserom.gba", 0xB42040, 0x0000004

gUnk_08B42044:: @ 08B42044
	.incbin "baserom.gba", 0xB42044, 0x0000004

gUnk_08B42048:: @ 08B42048
	.incbin "baserom.gba", 0xB42048, 0x0000004

gUnk_08B4204C:: @ 08B4204C
	.incbin "baserom.gba", 0xB4204C, 0x0000004

gUnk_08B42050:: @ 08B42050
	.incbin "baserom.gba", 0xB42050, 0x0000004

gUnk_08B42054:: @ 08B42054
	.incbin "baserom.gba", 0xB42054, 0x0000004

gUnk_08B42058:: @ 08B42058
	.incbin "baserom.gba", 0xB42058, 0x0000008

gUnk_08B42060:: @ 08B42060
	.incbin "baserom.gba", 0xB42060, 0x0000008

gUnk_08B42068:: @ 08B42068
	.incbin "baserom.gba", 0xB42068, 0x000000C

gUnk_08B42074:: @ 08B42074
	.incbin "baserom.gba", 0xB42074, 0x0000004

gUnk_08B42078:: @ 08B42078
	.incbin "baserom.gba", 0xB42078, 0x000000C

gUnk_08B42084:: @ 08B42084
	.incbin "baserom.gba", 0xB42084, 0x0000010

gUnk_08B42094:: @ 08B42094
	.incbin "baserom.gba", 0xB42094, 0x0000004

gUnk_08B42098:: @ 08B42098
	.incbin "baserom.gba", 0xB42098, 0x0000004

gUnk_08B4209C:: @ 08B4209C
	.incbin "baserom.gba", 0xB4209C, 0x0000004

gUnk_08B420A0:: @ 08B420A0
	.incbin "baserom.gba", 0xB420A0, 0x0000004

gUnk_08B420A4:: @ 08B420A4
	.incbin "baserom.gba", 0xB420A4, 0x0000004

gUnk_08B420A8:: @ 08B420A8
	.incbin "baserom.gba", 0xB420A8, 0x0000004

gUnk_08B420AC:: @ 08B420AC
	.incbin "baserom.gba", 0xB420AC, 0x0000004

gUnk_08B420B0:: @ 08B420B0
	.incbin "baserom.gba", 0xB420B0, 0x0000004

gUnk_08B420B4:: @ 08B420B4
	.incbin "baserom.gba", 0xB420B4, 0x0000004

gUnk_08B420B8:: @ 08B420B8
	.incbin "baserom.gba", 0xB420B8, 0x0000004

gUnk_08B420BC:: @ 08B420BC
	.incbin "baserom.gba", 0xB420BC, 0x0000004

gUnk_08B420C0:: @ 08B420C0
	.incbin "baserom.gba", 0xB420C0, 0x0000004

gUnk_08B420C4:: @ 08B420C4
	.incbin "baserom.gba", 0xB420C4, 0x0000004

gUnk_08B420C8:: @ 08B420C8
	.incbin "baserom.gba", 0xB420C8, 0x0000004

gUnk_08B420CC:: @ 08B420CC
	.incbin "baserom.gba", 0xB420CC, 0x0000004

gUnk_08B420D0:: @ 08B420D0
	.incbin "baserom.gba", 0xB420D0, 0x0000004

gUnk_08B420D4:: @ 08B420D4
	.incbin "baserom.gba", 0xB420D4, 0x0000004

gUnk_08B420D8:: @ 08B420D8
	.incbin "baserom.gba", 0xB420D8, 0x0000004

gUnk_08B420DC:: @ 08B420DC
	.incbin "baserom.gba", 0xB420DC, 0x0000004

gUnk_08B420E0:: @ 08B420E0
	.incbin "baserom.gba", 0xB420E0, 0x0000004

gUnk_08B420E4:: @ 08B420E4
	.incbin "baserom.gba", 0xB420E4, 0x0000004

gUnk_08B420E8:: @ 08B420E8
	.incbin "baserom.gba", 0xB420E8, 0x0000004

gUnk_08B420EC:: @ 08B420EC
	.incbin "baserom.gba", 0xB420EC, 0x0000004

gUnk_08B420F0:: @ 08B420F0
	.incbin "baserom.gba", 0xB420F0, 0x0000004

gUnk_08B420F4:: @ 08B420F4
	.incbin "baserom.gba", 0xB420F4, 0x000004C

gUnk_08B42140:: @ 08B42140
	.incbin "baserom.gba", 0xB42140, 0x0000004

gUnk_08B42144:: @ 08B42144
	.incbin "baserom.gba", 0xB42144, 0x0000004

gUnk_08B42148:: @ 08B42148
	.incbin "baserom.gba", 0xB42148, 0x0000004

gUnk_08B4214C:: @ 08B4214C
	.incbin "baserom.gba", 0xB4214C, 0x0000004

gUnk_08B42150:: @ 08B42150
	.incbin "baserom.gba", 0xB42150, 0x0000004

gUnk_08B42154:: @ 08B42154
	.incbin "baserom.gba", 0xB42154, 0x0000004

gUnk_08B42158:: @ 08B42158
	.incbin "baserom.gba", 0xB42158, 0x0000004

gUnk_08B4215C:: @ 08B4215C
	.incbin "baserom.gba", 0xB4215C, 0x0000004

gUnk_08B42160:: @ 08B42160
	.incbin "baserom.gba", 0xB42160, 0x0000004

gUnk_08B42164:: @ 08B42164
	.incbin "baserom.gba", 0xB42164, 0x0000004

gUnk_08B42168:: @ 08B42168
	.incbin "baserom.gba", 0xB42168, 0x0000004

gUnk_08B4216C:: @ 08B4216C
	.incbin "baserom.gba", 0xB4216C, 0x0000004

gUnk_08B42170:: @ 08B42170
	.incbin "baserom.gba", 0xB42170, 0x0000004

gUnk_08B42174:: @ 08B42174
	.incbin "baserom.gba", 0xB42174, 0x0000004

gUnk_08B42178:: @ 08B42178
	.incbin "baserom.gba", 0xB42178, 0x0000004

gUnk_08B4217C:: @ 08B4217C
	.incbin "baserom.gba", 0xB4217C, 0x0000004

gUnk_08B42180:: @ 08B42180
	.incbin "baserom.gba", 0xB42180, 0x0000004

gUnk_08B42184:: @ 08B42184
	.incbin "baserom.gba", 0xB42184, 0x0000004

gUnk_08B42188:: @ 08B42188
	.incbin "baserom.gba", 0xB42188, 0x0000004

gUnk_08B4218C:: @ 08B4218C
	.incbin "baserom.gba", 0xB4218C, 0x0000004

gUnk_08B42190:: @ 08B42190
	.incbin "baserom.gba", 0xB42190, 0x0000004

gUnk_08B42194:: @ 08B42194
	.incbin "baserom.gba", 0xB42194, 0x0000008

gUnk_08B4219C:: @ 08B4219C
	.incbin "baserom.gba", 0xB4219C, 0x0000008

gUnk_08B421A4:: @ 08B421A4
	.incbin "baserom.gba", 0xB421A4, 0x0000008

gUnk_08B421AC:: @ 08B421AC
	.incbin "baserom.gba", 0xB421AC, 0x0000004

gUnk_08B421B0:: @ 08B421B0
	.incbin "baserom.gba", 0xB421B0, 0x000000C

gUnk_08B421BC:: @ 08B421BC
	.incbin "baserom.gba", 0xB421BC, 0x000000C

gUnk_08B421C8:: @ 08B421C8
	.incbin "baserom.gba", 0xB421C8, 0x0000004

gUnk_08B421CC:: @ 08B421CC
	.incbin "baserom.gba", 0xB421CC, 0x0000004

gUnk_08B421D0:: @ 08B421D0
	.incbin "baserom.gba", 0xB421D0, 0x0000004

gUnk_08B421D4:: @ 08B421D4
	.incbin "baserom.gba", 0xB421D4, 0x0000004

gUnk_08B421D8:: @ 08B421D8
	.incbin "baserom.gba", 0xB421D8, 0x0000004

gUnk_08B421DC:: @ 08B421DC
	.incbin "baserom.gba", 0xB421DC, 0x0000004

gUnk_08B421E0:: @ 08B421E0
	.incbin "baserom.gba", 0xB421E0, 0x0000004

gUnk_08B421E4:: @ 08B421E4
	.incbin "baserom.gba", 0xB421E4, 0x0000004

gUnk_08B421E8:: @ 08B421E8
	.incbin "baserom.gba", 0xB421E8, 0x0000004

gUnk_08B421EC:: @ 08B421EC
	.incbin "baserom.gba", 0xB421EC, 0x0000004

gUnk_08B421F0:: @ 08B421F0
	.incbin "baserom.gba", 0xB421F0, 0x0000004

gUnk_08B421F4:: @ 08B421F4
	.incbin "baserom.gba", 0xB421F4, 0x0000004

gUnk_08B421F8:: @ 08B421F8
	.incbin "baserom.gba", 0xB421F8, 0x0000004

gUnk_08B421FC:: @ 08B421FC
	.incbin "baserom.gba", 0xB421FC, 0x0000004

gUnk_08B42200:: @ 08B42200
	.incbin "baserom.gba", 0xB42200, 0x0000004

gUnk_08B42204:: @ 08B42204
	.incbin "baserom.gba", 0xB42204, 0x0000004

gUnk_08B42208:: @ 08B42208
	.incbin "baserom.gba", 0xB42208, 0x0000004

gUnk_08B4220C:: @ 08B4220C
	.incbin "baserom.gba", 0xB4220C, 0x0000004

gUnk_08B42210:: @ 08B42210
	.incbin "baserom.gba", 0xB42210, 0x0000004

gUnk_08B42214:: @ 08B42214
	.incbin "baserom.gba", 0xB42214, 0x0000004

gUnk_08B42218:: @ 08B42218
	.incbin "baserom.gba", 0xB42218, 0x0000004

gUnk_08B4221C:: @ 08B4221C
	.incbin "baserom.gba", 0xB4221C, 0x0000004

gUnk_08B42220:: @ 08B42220
	.incbin "baserom.gba", 0xB42220, 0x0000004

gUnk_08B42224:: @ 08B42224
	.incbin "baserom.gba", 0xB42224, 0x0000004

gUnk_08B42228:: @ 08B42228
	.incbin "baserom.gba", 0xB42228, 0x000004C

gUnk_08B42274:: @ 08B42274
	.incbin "baserom.gba", 0xB42274, 0x0000004

gUnk_08B42278:: @ 08B42278
	.incbin "baserom.gba", 0xB42278, 0x0000004

gUnk_08B4227C:: @ 08B4227C
	.incbin "baserom.gba", 0xB4227C, 0x0000004

gUnk_08B42280:: @ 08B42280
	.incbin "baserom.gba", 0xB42280, 0x0000004

gUnk_08B42284:: @ 08B42284
	.incbin "baserom.gba", 0xB42284, 0x0000004

gUnk_08B42288:: @ 08B42288
	.incbin "baserom.gba", 0xB42288, 0x0000004

gUnk_08B4228C:: @ 08B4228C
	.incbin "baserom.gba", 0xB4228C, 0x0000004

gUnk_08B42290:: @ 08B42290
	.incbin "baserom.gba", 0xB42290, 0x0000004

gUnk_08B42294:: @ 08B42294
	.incbin "baserom.gba", 0xB42294, 0x0000004

gUnk_08B42298:: @ 08B42298
	.incbin "baserom.gba", 0xB42298, 0x0000004

gUnk_08B4229C:: @ 08B4229C
	.incbin "baserom.gba", 0xB4229C, 0x0000004

gUnk_08B422A0:: @ 08B422A0
	.incbin "baserom.gba", 0xB422A0, 0x0000004

gUnk_08B422A4:: @ 08B422A4
	.incbin "baserom.gba", 0xB422A4, 0x0000004

gUnk_08B422A8:: @ 08B422A8
	.incbin "baserom.gba", 0xB422A8, 0x0000004

gUnk_08B422AC:: @ 08B422AC
	.incbin "baserom.gba", 0xB422AC, 0x0000004

gUnk_08B422B0:: @ 08B422B0
	.incbin "baserom.gba", 0xB422B0, 0x0000004

gUnk_08B422B4:: @ 08B422B4
	.incbin "baserom.gba", 0xB422B4, 0x0000004

gUnk_08B422B8:: @ 08B422B8
	.incbin "baserom.gba", 0xB422B8, 0x0000004

gUnk_08B422BC:: @ 08B422BC
	.incbin "baserom.gba", 0xB422BC, 0x0000004

gUnk_08B422C0:: @ 08B422C0
	.incbin "baserom.gba", 0xB422C0, 0x0000004

gUnk_08B422C4:: @ 08B422C4
	.incbin "baserom.gba", 0xB422C4, 0x0000004

gUnk_08B422C8:: @ 08B422C8
	.incbin "baserom.gba", 0xB422C8, 0x000000C

gUnk_08B422D4:: @ 08B422D4
	.incbin "baserom.gba", 0xB422D4, 0x0000008

gUnk_08B422DC:: @ 08B422DC
	.incbin "baserom.gba", 0xB422DC, 0x0000008

gUnk_08B422E4:: @ 08B422E4
	.incbin "baserom.gba", 0xB422E4, 0x0000004

gUnk_08B422E8:: @ 08B422E8
	.incbin "baserom.gba", 0xB422E8, 0x0000008

gUnk_08B422F0:: @ 08B422F0
	.incbin "baserom.gba", 0xB422F0, 0x000000C

gUnk_08B422FC:: @ 08B422FC
	.incbin "baserom.gba", 0xB422FC, 0x0000004

gUnk_08B42300:: @ 08B42300
	.incbin "baserom.gba", 0xB42300, 0x0000004

gUnk_08B42304:: @ 08B42304
	.incbin "baserom.gba", 0xB42304, 0x0000004

gUnk_08B42308:: @ 08B42308
	.incbin "baserom.gba", 0xB42308, 0x0000004

gUnk_08B4230C:: @ 08B4230C
	.incbin "baserom.gba", 0xB4230C, 0x0000004

gUnk_08B42310:: @ 08B42310
	.incbin "baserom.gba", 0xB42310, 0x0000004

gUnk_08B42314:: @ 08B42314
	.incbin "baserom.gba", 0xB42314, 0x0000004

gUnk_08B42318:: @ 08B42318
	.incbin "baserom.gba", 0xB42318, 0x0000004

gUnk_08B4231C:: @ 08B4231C
	.incbin "baserom.gba", 0xB4231C, 0x0000004

gUnk_08B42320:: @ 08B42320
	.incbin "baserom.gba", 0xB42320, 0x0000004

gUnk_08B42324:: @ 08B42324
	.incbin "baserom.gba", 0xB42324, 0x0000004

gUnk_08B42328:: @ 08B42328
	.incbin "baserom.gba", 0xB42328, 0x0000004

gUnk_08B4232C:: @ 08B4232C
	.incbin "baserom.gba", 0xB4232C, 0x0000004

gUnk_08B42330:: @ 08B42330
	.incbin "baserom.gba", 0xB42330, 0x0000004

gUnk_08B42334:: @ 08B42334
	.incbin "baserom.gba", 0xB42334, 0x0000004

gUnk_08B42338:: @ 08B42338
	.incbin "baserom.gba", 0xB42338, 0x0000004

gUnk_08B4233C:: @ 08B4233C
	.incbin "baserom.gba", 0xB4233C, 0x0000004

gUnk_08B42340:: @ 08B42340
	.incbin "baserom.gba", 0xB42340, 0x0000004

gUnk_08B42344:: @ 08B42344
	.incbin "baserom.gba", 0xB42344, 0x0000004

gUnk_08B42348:: @ 08B42348
	.incbin "baserom.gba", 0xB42348, 0x0000004

gUnk_08B4234C:: @ 08B4234C
	.incbin "baserom.gba", 0xB4234C, 0x0000004

gUnk_08B42350:: @ 08B42350
	.incbin "baserom.gba", 0xB42350, 0x0000004

gUnk_08B42354:: @ 08B42354
	.incbin "baserom.gba", 0xB42354, 0x0000004

gUnk_08B42358:: @ 08B42358
	.incbin "baserom.gba", 0xB42358, 0x0000004

gUnk_08B4235C:: @ 08B4235C
	.incbin "baserom.gba", 0xB4235C, 0x000004C

gUnk_08B423A8:: @ 08B423A8
	.incbin "baserom.gba", 0xB423A8, 0x0000004

gUnk_08B423AC:: @ 08B423AC
	.incbin "baserom.gba", 0xB423AC, 0x0000018

gUnk_08B423C4:: @ 08B423C4
	.incbin "baserom.gba", 0xB423C4, 0x0000004

gUnk_08B423C8:: @ 08B423C8
	.incbin "baserom.gba", 0xB423C8, 0x0000004

gUnk_08B423CC:: @ 08B423CC
	.incbin "baserom.gba", 0xB423CC, 0x0000004

gUnk_08B423D0:: @ 08B423D0
	.incbin "baserom.gba", 0xB423D0, 0x0000018

gUnk_08B423E8:: @ 08B423E8
	.incbin "baserom.gba", 0xB423E8, 0x0000014

gUnk_08B423FC:: @ 08B423FC
	.incbin "baserom.gba", 0xB423FC, 0x0000014

gUnk_08B42410:: @ 08B42410
	.incbin "baserom.gba", 0xB42410, 0x0000010

gUnk_08B42420:: @ 08B42420
	.incbin "baserom.gba", 0xB42420, 0x000000C

gUnk_08B4242C:: @ 08B4242C
	.incbin "baserom.gba", 0xB4242C, 0x000000C

gUnk_08B42438:: @ 08B42438
	.incbin "baserom.gba", 0xB42438, 0x0000014

gUnk_08B4244C:: @ 08B4244C
	.incbin "baserom.gba", 0xB4244C, 0x000000C

gUnk_08B42458:: @ 08B42458
	.incbin "baserom.gba", 0xB42458, 0x0000010

gUnk_08B42468:: @ 08B42468
	.incbin "baserom.gba", 0xB42468, 0x0000010

gUnk_08B42478:: @ 08B42478
	.incbin "baserom.gba", 0xB42478, 0x0000018

gUnk_08B42490:: @ 08B42490
	.incbin "baserom.gba", 0xB42490, 0x0000014

gUnk_08B424A4:: @ 08B424A4
	.incbin "baserom.gba", 0xB424A4, 0x0000018

gUnk_08B424BC:: @ 08B424BC
	.incbin "baserom.gba", 0xB424BC, 0x0000020

gUnk_08B424DC:: @ 08B424DC
	.incbin "baserom.gba", 0xB424DC, 0x000001C

gUnk_08B424F8:: @ 08B424F8
	.incbin "baserom.gba", 0xB424F8, 0x000001C

gUnk_08B42514:: @ 08B42514
	.incbin "baserom.gba", 0xB42514, 0x000000C

gUnk_08B42520:: @ 08B42520
	.incbin "baserom.gba", 0xB42520, 0x000000C

gUnk_08B4252C:: @ 08B4252C
	.incbin "baserom.gba", 0xB4252C, 0x0000008

gUnk_08B42534:: @ 08B42534
	.incbin "baserom.gba", 0xB42534, 0x0000008

gUnk_08B4253C:: @ 08B4253C
	.incbin "baserom.gba", 0xB4253C, 0x000000C

gUnk_08B42548:: @ 08B42548
	.incbin "baserom.gba", 0xB42548, 0x000000C

gUnk_08B42554:: @ 08B42554
	.incbin "baserom.gba", 0xB42554, 0x000001C

gUnk_08B42570:: @ 08B42570
	.incbin "baserom.gba", 0xB42570, 0x000001C

gUnk_08B4258C:: @ 08B4258C
	.incbin "baserom.gba", 0xB4258C, 0x000001C

gUnk_08B425A8:: @ 08B425A8
	.incbin "baserom.gba", 0xB425A8, 0x0000010

gUnk_08B425B8:: @ 08B425B8
	.incbin "baserom.gba", 0xB425B8, 0x000000C

gUnk_08B425C4:: @ 08B425C4
	.incbin "baserom.gba", 0xB425C4, 0x0000014

gUnk_08B425D8:: @ 08B425D8
	.incbin "baserom.gba", 0xB425D8, 0x0000008

gUnk_08B425E0:: @ 08B425E0
	.incbin "baserom.gba", 0xB425E0, 0x0000010

gUnk_08B425F0:: @ 08B425F0
	.incbin "baserom.gba", 0xB425F0, 0x0000018

gUnk_08B42608:: @ 08B42608
	.incbin "baserom.gba", 0xB42608, 0x0000018

gUnk_08B42620:: @ 08B42620
	.incbin "baserom.gba", 0xB42620, 0x000001C

gUnk_08B4263C:: @ 08B4263C
	.incbin "baserom.gba", 0xB4263C, 0x0000020

gUnk_08B4265C:: @ 08B4265C
	.incbin "baserom.gba", 0xB4265C, 0x0000020

gUnk_08B4267C:: @ 08B4267C
	.incbin "baserom.gba", 0xB4267C, 0x000001C

gUnk_08B42698:: @ 08B42698
	.incbin "baserom.gba", 0xB42698, 0x0000020

gUnk_08B426B8:: @ 08B426B8
	.incbin "baserom.gba", 0xB426B8, 0x0000020

gUnk_08B426D8:: @ 08B426D8
	.incbin "baserom.gba", 0xB426D8, 0x0000018

gUnk_08B426F0:: @ 08B426F0
	.incbin "baserom.gba", 0xB426F0, 0x0000018

gUnk_08B42708:: @ 08B42708
	.incbin "baserom.gba", 0xB42708, 0x000001C

gUnk_08B42724:: @ 08B42724
	.incbin "baserom.gba", 0xB42724, 0x000001C

gUnk_08B42740:: @ 08B42740
	.incbin "baserom.gba", 0xB42740, 0x0000014

gUnk_08B42754:: @ 08B42754
	.incbin "baserom.gba", 0xB42754, 0x0000018

gUnk_08B4276C:: @ 08B4276C
	.incbin "baserom.gba", 0xB4276C, 0x0000018

gUnk_08B42784:: @ 08B42784
	.incbin "baserom.gba", 0xB42784, 0x0000004

gUnk_08B42788:: @ 08B42788
	.incbin "baserom.gba", 0xB42788, 0x000004C

gUnk_08B427D4:: @ 08B427D4
	.incbin "baserom.gba", 0xB427D4, 0x0000004

gUnk_08B427D8:: @ 08B427D8
	.incbin "baserom.gba", 0xB427D8, 0x0000004

gUnk_08B427DC:: @ 08B427DC
	.incbin "baserom.gba", 0xB427DC, 0x0000004

gUnk_08B427E0:: @ 08B427E0
	.incbin "baserom.gba", 0xB427E0, 0x0000004

gUnk_08B427E4:: @ 08B427E4
	.incbin "baserom.gba", 0xB427E4, 0x0000004

gUnk_08B427E8:: @ 08B427E8
	.incbin "baserom.gba", 0xB427E8, 0x0000004

gUnk_08B427EC:: @ 08B427EC
	.incbin "baserom.gba", 0xB427EC, 0x0000004

gUnk_08B427F0:: @ 08B427F0
	.incbin "baserom.gba", 0xB427F0, 0x0000004

gUnk_08B427F4:: @ 08B427F4
	.incbin "baserom.gba", 0xB427F4, 0x0000004

gUnk_08B427F8:: @ 08B427F8
	.incbin "baserom.gba", 0xB427F8, 0x0000004

gUnk_08B427FC:: @ 08B427FC
	.incbin "baserom.gba", 0xB427FC, 0x0000004

gUnk_08B42800:: @ 08B42800
	.incbin "baserom.gba", 0xB42800, 0x0000004

gUnk_08B42804:: @ 08B42804
	.incbin "baserom.gba", 0xB42804, 0x0000004

gUnk_08B42808:: @ 08B42808
	.incbin "baserom.gba", 0xB42808, 0x0000004

gUnk_08B4280C:: @ 08B4280C
	.incbin "baserom.gba", 0xB4280C, 0x0000004

gUnk_08B42810:: @ 08B42810
	.incbin "baserom.gba", 0xB42810, 0x0000004

gUnk_08B42814:: @ 08B42814
	.incbin "baserom.gba", 0xB42814, 0x0000004

gUnk_08B42818:: @ 08B42818
	.incbin "baserom.gba", 0xB42818, 0x0000004

gUnk_08B4281C:: @ 08B4281C
	.incbin "baserom.gba", 0xB4281C, 0x0000004

gUnk_08B42820:: @ 08B42820
	.incbin "baserom.gba", 0xB42820, 0x0000004

gUnk_08B42824:: @ 08B42824
	.incbin "baserom.gba", 0xB42824, 0x0000004

gUnk_08B42828:: @ 08B42828
	.incbin "baserom.gba", 0xB42828, 0x0000004

gUnk_08B4282C:: @ 08B4282C
	.incbin "baserom.gba", 0xB4282C, 0x0000004

gUnk_08B42830:: @ 08B42830
	.incbin "baserom.gba", 0xB42830, 0x0000004

gUnk_08B42834:: @ 08B42834
	.incbin "baserom.gba", 0xB42834, 0x0000004

gUnk_08B42838:: @ 08B42838
	.incbin "baserom.gba", 0xB42838, 0x0000008

gUnk_08B42840:: @ 08B42840
	.incbin "baserom.gba", 0xB42840, 0x0000008

gUnk_08B42848:: @ 08B42848
	.incbin "baserom.gba", 0xB42848, 0x0000004

gUnk_08B4284C:: @ 08B4284C
	.incbin "baserom.gba", 0xB4284C, 0x0000004

gUnk_08B42850:: @ 08B42850
	.incbin "baserom.gba", 0xB42850, 0x0000004

gUnk_08B42854:: @ 08B42854
	.incbin "baserom.gba", 0xB42854, 0x0000004

gUnk_08B42858:: @ 08B42858
	.incbin "baserom.gba", 0xB42858, 0x0000004

gUnk_08B4285C:: @ 08B4285C
	.incbin "baserom.gba", 0xB4285C, 0x0000004

gUnk_08B42860:: @ 08B42860
	.incbin "baserom.gba", 0xB42860, 0x0000004

gUnk_08B42864:: @ 08B42864
	.incbin "baserom.gba", 0xB42864, 0x0000004

gUnk_08B42868:: @ 08B42868
	.incbin "baserom.gba", 0xB42868, 0x0000004

gUnk_08B4286C:: @ 08B4286C
	.incbin "baserom.gba", 0xB4286C, 0x0000004

gUnk_08B42870:: @ 08B42870
	.incbin "baserom.gba", 0xB42870, 0x0000004

gUnk_08B42874:: @ 08B42874
	.incbin "baserom.gba", 0xB42874, 0x0000004

gUnk_08B42878:: @ 08B42878
	.incbin "baserom.gba", 0xB42878, 0x0000004

gUnk_08B4287C:: @ 08B4287C
	.incbin "baserom.gba", 0xB4287C, 0x0000004

gUnk_08B42880:: @ 08B42880
	.incbin "baserom.gba", 0xB42880, 0x0000004

gUnk_08B42884:: @ 08B42884
	.incbin "baserom.gba", 0xB42884, 0x0000004

gUnk_08B42888:: @ 08B42888
	.incbin "baserom.gba", 0xB42888, 0x0000004

gUnk_08B4288C:: @ 08B4288C
	.incbin "baserom.gba", 0xB4288C, 0x0000004

gUnk_08B42890:: @ 08B42890
	.incbin "baserom.gba", 0xB42890, 0x0000004

gUnk_08B42894:: @ 08B42894
	.incbin "baserom.gba", 0xB42894, 0x0000004

gUnk_08B42898:: @ 08B42898
	.incbin "baserom.gba", 0xB42898, 0x0000004

gUnk_08B4289C:: @ 08B4289C
	.incbin "baserom.gba", 0xB4289C, 0x0000004

gUnk_08B428A0:: @ 08B428A0
	.incbin "baserom.gba", 0xB428A0, 0x0000004

gUnk_08B428A4:: @ 08B428A4
	.incbin "baserom.gba", 0xB428A4, 0x0000004

gUnk_08B428A8:: @ 08B428A8
	.incbin "baserom.gba", 0xB428A8, 0x000004C

gUnk_08B428F4:: @ 08B428F4
	.incbin "baserom.gba", 0xB428F4, 0x0000004

gUnk_08B428F8:: @ 08B428F8
	.incbin "baserom.gba", 0xB428F8, 0x0000004

gUnk_08B428FC:: @ 08B428FC
	.incbin "baserom.gba", 0xB428FC, 0x0000004

gUnk_08B42900:: @ 08B42900
	.incbin "baserom.gba", 0xB42900, 0x0000004

gUnk_08B42904:: @ 08B42904
	.incbin "baserom.gba", 0xB42904, 0x0000004

gUnk_08B42908:: @ 08B42908
	.incbin "baserom.gba", 0xB42908, 0x0000004

gUnk_08B4290C:: @ 08B4290C
	.incbin "baserom.gba", 0xB4290C, 0x0000004

gUnk_08B42910:: @ 08B42910
	.incbin "baserom.gba", 0xB42910, 0x0000004

gUnk_08B42914:: @ 08B42914
	.incbin "baserom.gba", 0xB42914, 0x0000004

gUnk_08B42918:: @ 08B42918
	.incbin "baserom.gba", 0xB42918, 0x0000004

gUnk_08B4291C:: @ 08B4291C
	.incbin "baserom.gba", 0xB4291C, 0x0000004

gUnk_08B42920:: @ 08B42920
	.incbin "baserom.gba", 0xB42920, 0x0000004

gUnk_08B42924:: @ 08B42924
	.incbin "baserom.gba", 0xB42924, 0x0000004

gUnk_08B42928:: @ 08B42928
	.incbin "baserom.gba", 0xB42928, 0x0000004

gUnk_08B4292C:: @ 08B4292C
	.incbin "baserom.gba", 0xB4292C, 0x0000004

gUnk_08B42930:: @ 08B42930
	.incbin "baserom.gba", 0xB42930, 0x0000004

gUnk_08B42934:: @ 08B42934
	.incbin "baserom.gba", 0xB42934, 0x0000004

gUnk_08B42938:: @ 08B42938
	.incbin "baserom.gba", 0xB42938, 0x0000004

gUnk_08B4293C:: @ 08B4293C
	.incbin "baserom.gba", 0xB4293C, 0x0000004

gUnk_08B42940:: @ 08B42940
	.incbin "baserom.gba", 0xB42940, 0x0000004

gUnk_08B42944:: @ 08B42944
	.incbin "baserom.gba", 0xB42944, 0x0000004

gUnk_08B42948:: @ 08B42948
	.incbin "baserom.gba", 0xB42948, 0x0000004

gUnk_08B4294C:: @ 08B4294C
	.incbin "baserom.gba", 0xB4294C, 0x0000004

gUnk_08B42950:: @ 08B42950
	.incbin "baserom.gba", 0xB42950, 0x0000004

gUnk_08B42954:: @ 08B42954
	.incbin "baserom.gba", 0xB42954, 0x0000004

gUnk_08B42958:: @ 08B42958
	.incbin "baserom.gba", 0xB42958, 0x0000004

gUnk_08B4295C:: @ 08B4295C
	.incbin "baserom.gba", 0xB4295C, 0x0000008

gUnk_08B42964:: @ 08B42964
	.incbin "baserom.gba", 0xB42964, 0x0000004

gUnk_08B42968:: @ 08B42968
	.incbin "baserom.gba", 0xB42968, 0x0000004

gUnk_08B4296C:: @ 08B4296C
	.incbin "baserom.gba", 0xB4296C, 0x0000004

gUnk_08B42970:: @ 08B42970
	.incbin "baserom.gba", 0xB42970, 0x0000004

gUnk_08B42974:: @ 08B42974
	.incbin "baserom.gba", 0xB42974, 0x0000004

gUnk_08B42978:: @ 08B42978
	.incbin "baserom.gba", 0xB42978, 0x0000004

gUnk_08B4297C:: @ 08B4297C
	.incbin "baserom.gba", 0xB4297C, 0x0000004

gUnk_08B42980:: @ 08B42980
	.incbin "baserom.gba", 0xB42980, 0x0000004

gUnk_08B42984:: @ 08B42984
	.incbin "baserom.gba", 0xB42984, 0x0000004

gUnk_08B42988:: @ 08B42988
	.incbin "baserom.gba", 0xB42988, 0x0000004

gUnk_08B4298C:: @ 08B4298C
	.incbin "baserom.gba", 0xB4298C, 0x0000004

gUnk_08B42990:: @ 08B42990
	.incbin "baserom.gba", 0xB42990, 0x0000004

gUnk_08B42994:: @ 08B42994
	.incbin "baserom.gba", 0xB42994, 0x0000004

gUnk_08B42998:: @ 08B42998
	.incbin "baserom.gba", 0xB42998, 0x0000004

gUnk_08B4299C:: @ 08B4299C
	.incbin "baserom.gba", 0xB4299C, 0x0000004

gUnk_08B429A0:: @ 08B429A0
	.incbin "baserom.gba", 0xB429A0, 0x0000004

gUnk_08B429A4:: @ 08B429A4
	.incbin "baserom.gba", 0xB429A4, 0x0000004

gUnk_08B429A8:: @ 08B429A8
	.incbin "baserom.gba", 0xB429A8, 0x0000004

gUnk_08B429AC:: @ 08B429AC
	.incbin "baserom.gba", 0xB429AC, 0x0000004

gUnk_08B429B0:: @ 08B429B0
	.incbin "baserom.gba", 0xB429B0, 0x0000004

gUnk_08B429B4:: @ 08B429B4
	.incbin "baserom.gba", 0xB429B4, 0x0000004

gUnk_08B429B8:: @ 08B429B8
	.incbin "baserom.gba", 0xB429B8, 0x0000004

gUnk_08B429BC:: @ 08B429BC
	.incbin "baserom.gba", 0xB429BC, 0x0000004

gUnk_08B429C0:: @ 08B429C0
	.incbin "baserom.gba", 0xB429C0, 0x0000004

gUnk_08B429C4:: @ 08B429C4
	.incbin "baserom.gba", 0xB429C4, 0x000004C

gUnk_08B42A10:: @ 08B42A10
	.incbin "baserom.gba", 0xB42A10, 0x0000004

gUnk_08B42A14:: @ 08B42A14
	.incbin "baserom.gba", 0xB42A14, 0x0000004

gUnk_08B42A18:: @ 08B42A18
	.incbin "baserom.gba", 0xB42A18, 0x0000004

gUnk_08B42A1C:: @ 08B42A1C
	.incbin "baserom.gba", 0xB42A1C, 0x0000004

gUnk_08B42A20:: @ 08B42A20
	.incbin "baserom.gba", 0xB42A20, 0x0000004

gUnk_08B42A24:: @ 08B42A24
	.incbin "baserom.gba", 0xB42A24, 0x0000004

gUnk_08B42A28:: @ 08B42A28
	.incbin "baserom.gba", 0xB42A28, 0x0000004

gUnk_08B42A2C:: @ 08B42A2C
	.incbin "baserom.gba", 0xB42A2C, 0x0000004

gUnk_08B42A30:: @ 08B42A30
	.incbin "baserom.gba", 0xB42A30, 0x0000004

gUnk_08B42A34:: @ 08B42A34
	.incbin "baserom.gba", 0xB42A34, 0x0000004

gUnk_08B42A38:: @ 08B42A38
	.incbin "baserom.gba", 0xB42A38, 0x0000004

gUnk_08B42A3C:: @ 08B42A3C
	.incbin "baserom.gba", 0xB42A3C, 0x0000004

gUnk_08B42A40:: @ 08B42A40
	.incbin "baserom.gba", 0xB42A40, 0x0000004

gUnk_08B42A44:: @ 08B42A44
	.incbin "baserom.gba", 0xB42A44, 0x0000004

gUnk_08B42A48:: @ 08B42A48
	.incbin "baserom.gba", 0xB42A48, 0x0000004

gUnk_08B42A4C:: @ 08B42A4C
	.incbin "baserom.gba", 0xB42A4C, 0x0000004

gUnk_08B42A50:: @ 08B42A50
	.incbin "baserom.gba", 0xB42A50, 0x0000004

gUnk_08B42A54:: @ 08B42A54
	.incbin "baserom.gba", 0xB42A54, 0x0000004

gUnk_08B42A58:: @ 08B42A58
	.incbin "baserom.gba", 0xB42A58, 0x0000004

gUnk_08B42A5C:: @ 08B42A5C
	.incbin "baserom.gba", 0xB42A5C, 0x0000004

gUnk_08B42A60:: @ 08B42A60
	.incbin "baserom.gba", 0xB42A60, 0x0000004

gUnk_08B42A64:: @ 08B42A64
	.incbin "baserom.gba", 0xB42A64, 0x0000004

gUnk_08B42A68:: @ 08B42A68
	.incbin "baserom.gba", 0xB42A68, 0x0000004

gUnk_08B42A6C:: @ 08B42A6C
	.incbin "baserom.gba", 0xB42A6C, 0x0000004

gUnk_08B42A70:: @ 08B42A70
	.incbin "baserom.gba", 0xB42A70, 0x0000004

gUnk_08B42A74:: @ 08B42A74
	.incbin "baserom.gba", 0xB42A74, 0x0000004

gUnk_08B42A78:: @ 08B42A78
	.incbin "baserom.gba", 0xB42A78, 0x0000004

gUnk_08B42A7C:: @ 08B42A7C
	.incbin "baserom.gba", 0xB42A7C, 0x0000008

gUnk_08B42A84:: @ 08B42A84
	.incbin "baserom.gba", 0xB42A84, 0x0000004

gUnk_08B42A88:: @ 08B42A88
	.incbin "baserom.gba", 0xB42A88, 0x0000004

gUnk_08B42A8C:: @ 08B42A8C
	.incbin "baserom.gba", 0xB42A8C, 0x0000004

gUnk_08B42A90:: @ 08B42A90
	.incbin "baserom.gba", 0xB42A90, 0x0000004

gUnk_08B42A94:: @ 08B42A94
	.incbin "baserom.gba", 0xB42A94, 0x0000004

gUnk_08B42A98:: @ 08B42A98
	.incbin "baserom.gba", 0xB42A98, 0x0000004

gUnk_08B42A9C:: @ 08B42A9C
	.incbin "baserom.gba", 0xB42A9C, 0x0000004

gUnk_08B42AA0:: @ 08B42AA0
	.incbin "baserom.gba", 0xB42AA0, 0x0000004

gUnk_08B42AA4:: @ 08B42AA4
	.incbin "baserom.gba", 0xB42AA4, 0x0000004

gUnk_08B42AA8:: @ 08B42AA8
	.incbin "baserom.gba", 0xB42AA8, 0x0000004

gUnk_08B42AAC:: @ 08B42AAC
	.incbin "baserom.gba", 0xB42AAC, 0x0000004

gUnk_08B42AB0:: @ 08B42AB0
	.incbin "baserom.gba", 0xB42AB0, 0x0000004

gUnk_08B42AB4:: @ 08B42AB4
	.incbin "baserom.gba", 0xB42AB4, 0x0000004

gUnk_08B42AB8:: @ 08B42AB8
	.incbin "baserom.gba", 0xB42AB8, 0x0000004

gUnk_08B42ABC:: @ 08B42ABC
	.incbin "baserom.gba", 0xB42ABC, 0x0000004

gUnk_08B42AC0:: @ 08B42AC0
	.incbin "baserom.gba", 0xB42AC0, 0x0000004

gUnk_08B42AC4:: @ 08B42AC4
	.incbin "baserom.gba", 0xB42AC4, 0x0000004

gUnk_08B42AC8:: @ 08B42AC8
	.incbin "baserom.gba", 0xB42AC8, 0x0000004

gUnk_08B42ACC:: @ 08B42ACC
	.incbin "baserom.gba", 0xB42ACC, 0x0000004

gUnk_08B42AD0:: @ 08B42AD0
	.incbin "baserom.gba", 0xB42AD0, 0x0000004

gUnk_08B42AD4:: @ 08B42AD4
	.incbin "baserom.gba", 0xB42AD4, 0x0000004

gUnk_08B42AD8:: @ 08B42AD8
	.incbin "baserom.gba", 0xB42AD8, 0x0000004

gUnk_08B42ADC:: @ 08B42ADC
	.incbin "baserom.gba", 0xB42ADC, 0x0000004

gUnk_08B42AE0:: @ 08B42AE0
	.incbin "baserom.gba", 0xB42AE0, 0x000004C

gUnk_08B42B2C:: @ 08B42B2C
	.incbin "baserom.gba", 0xB42B2C, 0x0000004

gUnk_08B42B30:: @ 08B42B30
	.incbin "baserom.gba", 0xB42B30, 0x0000004

gUnk_08B42B34:: @ 08B42B34
	.incbin "baserom.gba", 0xB42B34, 0x0000004

gUnk_08B42B38:: @ 08B42B38
	.incbin "baserom.gba", 0xB42B38, 0x0000004

gUnk_08B42B3C:: @ 08B42B3C
	.incbin "baserom.gba", 0xB42B3C, 0x0000004

gUnk_08B42B40:: @ 08B42B40
	.incbin "baserom.gba", 0xB42B40, 0x0000004

gUnk_08B42B44:: @ 08B42B44
	.incbin "baserom.gba", 0xB42B44, 0x0000004

gUnk_08B42B48:: @ 08B42B48
	.incbin "baserom.gba", 0xB42B48, 0x0000004

gUnk_08B42B4C:: @ 08B42B4C
	.incbin "baserom.gba", 0xB42B4C, 0x0000004

gUnk_08B42B50:: @ 08B42B50
	.incbin "baserom.gba", 0xB42B50, 0x0000004

gUnk_08B42B54:: @ 08B42B54
	.incbin "baserom.gba", 0xB42B54, 0x0000004

gUnk_08B42B58:: @ 08B42B58
	.incbin "baserom.gba", 0xB42B58, 0x0000004

gUnk_08B42B5C:: @ 08B42B5C
	.incbin "baserom.gba", 0xB42B5C, 0x0000004

gUnk_08B42B60:: @ 08B42B60
	.incbin "baserom.gba", 0xB42B60, 0x0000004

gUnk_08B42B64:: @ 08B42B64
	.incbin "baserom.gba", 0xB42B64, 0x0000004

gUnk_08B42B68:: @ 08B42B68
	.incbin "baserom.gba", 0xB42B68, 0x0000004

gUnk_08B42B6C:: @ 08B42B6C
	.incbin "baserom.gba", 0xB42B6C, 0x0000004

gUnk_08B42B70:: @ 08B42B70
	.incbin "baserom.gba", 0xB42B70, 0x0000004

gUnk_08B42B74:: @ 08B42B74
	.incbin "baserom.gba", 0xB42B74, 0x0000004

gUnk_08B42B78:: @ 08B42B78
	.incbin "baserom.gba", 0xB42B78, 0x0000004

gUnk_08B42B7C:: @ 08B42B7C
	.incbin "baserom.gba", 0xB42B7C, 0x0000004

gUnk_08B42B80:: @ 08B42B80
	.incbin "baserom.gba", 0xB42B80, 0x0000004

gUnk_08B42B84:: @ 08B42B84
	.incbin "baserom.gba", 0xB42B84, 0x0000004

gUnk_08B42B88:: @ 08B42B88
	.incbin "baserom.gba", 0xB42B88, 0x0000004

gUnk_08B42B8C:: @ 08B42B8C
	.incbin "baserom.gba", 0xB42B8C, 0x0000004

gUnk_08B42B90:: @ 08B42B90
	.incbin "baserom.gba", 0xB42B90, 0x0000004

gUnk_08B42B94:: @ 08B42B94
	.incbin "baserom.gba", 0xB42B94, 0x0000004

gUnk_08B42B98:: @ 08B42B98
	.incbin "baserom.gba", 0xB42B98, 0x0000008

gUnk_08B42BA0:: @ 08B42BA0
	.incbin "baserom.gba", 0xB42BA0, 0x0000008

gUnk_08B42BA8:: @ 08B42BA8
	.incbin "baserom.gba", 0xB42BA8, 0x0000004

gUnk_08B42BAC:: @ 08B42BAC
	.incbin "baserom.gba", 0xB42BAC, 0x0000004

gUnk_08B42BB0:: @ 08B42BB0
	.incbin "baserom.gba", 0xB42BB0, 0x0000004

gUnk_08B42BB4:: @ 08B42BB4
	.incbin "baserom.gba", 0xB42BB4, 0x0000004

gUnk_08B42BB8:: @ 08B42BB8
	.incbin "baserom.gba", 0xB42BB8, 0x0000004

gUnk_08B42BBC:: @ 08B42BBC
	.incbin "baserom.gba", 0xB42BBC, 0x0000004

gUnk_08B42BC0:: @ 08B42BC0
	.incbin "baserom.gba", 0xB42BC0, 0x0000004

gUnk_08B42BC4:: @ 08B42BC4
	.incbin "baserom.gba", 0xB42BC4, 0x0000004

gUnk_08B42BC8:: @ 08B42BC8
	.incbin "baserom.gba", 0xB42BC8, 0x0000004

gUnk_08B42BCC:: @ 08B42BCC
	.incbin "baserom.gba", 0xB42BCC, 0x0000004

gUnk_08B42BD0:: @ 08B42BD0
	.incbin "baserom.gba", 0xB42BD0, 0x0000004

gUnk_08B42BD4:: @ 08B42BD4
	.incbin "baserom.gba", 0xB42BD4, 0x0000004

gUnk_08B42BD8:: @ 08B42BD8
	.incbin "baserom.gba", 0xB42BD8, 0x0000004

gUnk_08B42BDC:: @ 08B42BDC
	.incbin "baserom.gba", 0xB42BDC, 0x0000004

gUnk_08B42BE0:: @ 08B42BE0
	.incbin "baserom.gba", 0xB42BE0, 0x0000004

gUnk_08B42BE4:: @ 08B42BE4
	.incbin "baserom.gba", 0xB42BE4, 0x0000004

gUnk_08B42BE8:: @ 08B42BE8
	.incbin "baserom.gba", 0xB42BE8, 0x0000004

gUnk_08B42BEC:: @ 08B42BEC
	.incbin "baserom.gba", 0xB42BEC, 0x0000004

gUnk_08B42BF0:: @ 08B42BF0
	.incbin "baserom.gba", 0xB42BF0, 0x0000004

gUnk_08B42BF4:: @ 08B42BF4
	.incbin "baserom.gba", 0xB42BF4, 0x0000004

gUnk_08B42BF8:: @ 08B42BF8
	.incbin "baserom.gba", 0xB42BF8, 0x0000004

gUnk_08B42BFC:: @ 08B42BFC
	.incbin "baserom.gba", 0xB42BFC, 0x0000004

gUnk_08B42C00:: @ 08B42C00
	.incbin "baserom.gba", 0xB42C00, 0x000004C

gUnk_08B42C4C:: @ 08B42C4C
	.incbin "baserom.gba", 0xB42C4C, 0x0000004

gUnk_08B42C50:: @ 08B42C50
	.incbin "baserom.gba", 0xB42C50, 0x0000004

gUnk_08B42C54:: @ 08B42C54
	.incbin "baserom.gba", 0xB42C54, 0x0000004

gUnk_08B42C58:: @ 08B42C58
	.incbin "baserom.gba", 0xB42C58, 0x0000004

gUnk_08B42C5C:: @ 08B42C5C
	.incbin "baserom.gba", 0xB42C5C, 0x0000004

gUnk_08B42C60:: @ 08B42C60
	.incbin "baserom.gba", 0xB42C60, 0x0000004

gUnk_08B42C64:: @ 08B42C64
	.incbin "baserom.gba", 0xB42C64, 0x0000008

gUnk_08B42C6C:: @ 08B42C6C
	.incbin "baserom.gba", 0xB42C6C, 0x0000004

gUnk_08B42C70:: @ 08B42C70
	.incbin "baserom.gba", 0xB42C70, 0x0000004

gUnk_08B42C74:: @ 08B42C74
	.incbin "baserom.gba", 0xB42C74, 0x0000004

gUnk_08B42C78:: @ 08B42C78
	.incbin "baserom.gba", 0xB42C78, 0x0000004

gUnk_08B42C7C:: @ 08B42C7C
	.incbin "baserom.gba", 0xB42C7C, 0x0000004

gUnk_08B42C80:: @ 08B42C80
	.incbin "baserom.gba", 0xB42C80, 0x0000004

gUnk_08B42C84:: @ 08B42C84
	.incbin "baserom.gba", 0xB42C84, 0x0000004

gUnk_08B42C88:: @ 08B42C88
	.incbin "baserom.gba", 0xB42C88, 0x0000004

gUnk_08B42C8C:: @ 08B42C8C
	.incbin "baserom.gba", 0xB42C8C, 0x0000004

gUnk_08B42C90:: @ 08B42C90
	.incbin "baserom.gba", 0xB42C90, 0x0000004

gUnk_08B42C94:: @ 08B42C94
	.incbin "baserom.gba", 0xB42C94, 0x0000004

gUnk_08B42C98:: @ 08B42C98
	.incbin "baserom.gba", 0xB42C98, 0x0000004

gUnk_08B42C9C:: @ 08B42C9C
	.incbin "baserom.gba", 0xB42C9C, 0x0000004

gUnk_08B42CA0:: @ 08B42CA0
	.incbin "baserom.gba", 0xB42CA0, 0x0000004

gUnk_08B42CA4:: @ 08B42CA4
	.incbin "baserom.gba", 0xB42CA4, 0x0000004

gUnk_08B42CA8:: @ 08B42CA8
	.incbin "baserom.gba", 0xB42CA8, 0x0000004

gUnk_08B42CAC:: @ 08B42CAC
	.incbin "baserom.gba", 0xB42CAC, 0x0000004

gUnk_08B42CB0:: @ 08B42CB0
	.incbin "baserom.gba", 0xB42CB0, 0x0000004

gUnk_08B42CB4:: @ 08B42CB4
	.incbin "baserom.gba", 0xB42CB4, 0x0000004

gUnk_08B42CB8:: @ 08B42CB8
	.incbin "baserom.gba", 0xB42CB8, 0x000004C

gUnk_08B42D04:: @ 08B42D04
	.incbin "baserom.gba", 0xB42D04, 0x000004C

gUnk_08B42D50:: @ 08B42D50
	.incbin "baserom.gba", 0xB42D50, 0x0000004

gUnk_08B42D54:: @ 08B42D54
	.incbin "baserom.gba", 0xB42D54, 0x000000C

gUnk_08B42D60:: @ 08B42D60
	.incbin "baserom.gba", 0xB42D60, 0x0000004

gUnk_08B42D64:: @ 08B42D64
	.incbin "baserom.gba", 0xB42D64, 0x0000004

gUnk_08B42D68:: @ 08B42D68
	.incbin "baserom.gba", 0xB42D68, 0x0000004

gUnk_08B42D6C:: @ 08B42D6C
	.incbin "baserom.gba", 0xB42D6C, 0x000000C

gUnk_08B42D78:: @ 08B42D78
	.incbin "baserom.gba", 0xB42D78, 0x000000C

gUnk_08B42D84:: @ 08B42D84
	.incbin "baserom.gba", 0xB42D84, 0x0000020

gUnk_08B42DA4:: @ 08B42DA4
	.incbin "baserom.gba", 0xB42DA4, 0x0000020

gUnk_08B42DC4:: @ 08B42DC4
	.incbin "baserom.gba", 0xB42DC4, 0x000001C

gUnk_08B42DE0:: @ 08B42DE0
	.incbin "baserom.gba", 0xB42DE0, 0x000001C

gUnk_08B42DFC:: @ 08B42DFC
	.incbin "baserom.gba", 0xB42DFC, 0x0000018

gUnk_08B42E14:: @ 08B42E14
	.incbin "baserom.gba", 0xB42E14, 0x0000018

gUnk_08B42E2C:: @ 08B42E2C
	.incbin "baserom.gba", 0xB42E2C, 0x0000014

gUnk_08B42E40:: @ 08B42E40
	.incbin "baserom.gba", 0xB42E40, 0x0000014

gUnk_08B42E54:: @ 08B42E54
	.incbin "baserom.gba", 0xB42E54, 0x0000020

gUnk_08B42E74:: @ 08B42E74
	.incbin "baserom.gba", 0xB42E74, 0x0000020

gUnk_08B42E94:: @ 08B42E94
	.incbin "baserom.gba", 0xB42E94, 0x0000008

gUnk_08B42E9C:: @ 08B42E9C
	.incbin "baserom.gba", 0xB42E9C, 0x000000C

gUnk_08B42EA8:: @ 08B42EA8
	.incbin "baserom.gba", 0xB42EA8, 0x0000010

gUnk_08B42EB8:: @ 08B42EB8
	.incbin "baserom.gba", 0xB42EB8, 0x0000008

gUnk_08B42EC0:: @ 08B42EC0
	.incbin "baserom.gba", 0xB42EC0, 0x0000020

gUnk_08B42EE0:: @ 08B42EE0
	.incbin "baserom.gba", 0xB42EE0, 0x0000020

gUnk_08B42F00:: @ 08B42F00
	.incbin "baserom.gba", 0xB42F00, 0x000001C

gUnk_08B42F1C:: @ 08B42F1C
	.incbin "baserom.gba", 0xB42F1C, 0x000001C

gUnk_08B42F38:: @ 08B42F38
	.incbin "baserom.gba", 0xB42F38, 0x0000020

gUnk_08B42F58:: @ 08B42F58
	.incbin "baserom.gba", 0xB42F58, 0x0000020

gUnk_08B42F78:: @ 08B42F78
	.incbin "baserom.gba", 0xB42F78, 0x0000024

gUnk_08B42F9C:: @ 08B42F9C
	.incbin "baserom.gba", 0xB42F9C, 0x0000020

gUnk_08B42FBC:: @ 08B42FBC
	.incbin "baserom.gba", 0xB42FBC, 0x0000008

gUnk_08B42FC4:: @ 08B42FC4
	.incbin "baserom.gba", 0xB42FC4, 0x0000020

gUnk_08B42FE4:: @ 08B42FE4
	.incbin "baserom.gba", 0xB42FE4, 0x0000014

gUnk_08B42FF8:: @ 08B42FF8
	.incbin "baserom.gba", 0xB42FF8, 0x0000010

gUnk_08B43008:: @ 08B43008
	.incbin "baserom.gba", 0xB43008, 0x0000018

gUnk_08B43020:: @ 08B43020
	.incbin "baserom.gba", 0xB43020, 0x0000010

gUnk_08B43030:: @ 08B43030
	.incbin "baserom.gba", 0xB43030, 0x000001C

gUnk_08B4304C:: @ 08B4304C
	.incbin "baserom.gba", 0xB4304C, 0x0000014

gUnk_08B43060:: @ 08B43060
	.incbin "baserom.gba", 0xB43060, 0x0000014

gUnk_08B43074:: @ 08B43074
	.incbin "baserom.gba", 0xB43074, 0x0000010

gUnk_08B43084:: @ 08B43084
	.incbin "baserom.gba", 0xB43084, 0x0000014

gUnk_08B43098:: @ 08B43098
	.incbin "baserom.gba", 0xB43098, 0x0000010

gUnk_08B430A8:: @ 08B430A8
	.incbin "baserom.gba", 0xB430A8, 0x0000010

gUnk_08B430B8:: @ 08B430B8
	.incbin "baserom.gba", 0xB430B8, 0x000000C

gUnk_08B430C4:: @ 08B430C4
	.incbin "baserom.gba", 0xB430C4, 0x0000010

gUnk_08B430D4:: @ 08B430D4
	.incbin "baserom.gba", 0xB430D4, 0x0000010

gUnk_08B430E4:: @ 08B430E4
	.incbin "baserom.gba", 0xB430E4, 0x0000014

gUnk_08B430F8:: @ 08B430F8
	.incbin "baserom.gba", 0xB430F8, 0x0000014

gUnk_08B4310C:: @ 08B4310C
	.incbin "baserom.gba", 0xB4310C, 0x0000018

gUnk_08B43124:: @ 08B43124
	.incbin "baserom.gba", 0xB43124, 0x000001C

gUnk_08B43140:: @ 08B43140
	.incbin "baserom.gba", 0xB43140, 0x0000018

gUnk_08B43158:: @ 08B43158
	.incbin "baserom.gba", 0xB43158, 0x0000004

gUnk_08B4315C:: @ 08B4315C
	.incbin "baserom.gba", 0xB4315C, 0x000004C

gUnk_08B431A8:: @ 08B431A8
	.incbin "baserom.gba", 0xB431A8, 0x0000008

gUnk_08B431B0:: @ 08B431B0
	.incbin "baserom.gba", 0xB431B0, 0x0000004

gUnk_08B431B4:: @ 08B431B4
	.incbin "baserom.gba", 0xB431B4, 0x0000004

gUnk_08B431B8:: @ 08B431B8
	.incbin "baserom.gba", 0xB431B8, 0x0000004

gUnk_08B431BC:: @ 08B431BC
	.incbin "baserom.gba", 0xB431BC, 0x0000004

gUnk_08B431C0:: @ 08B431C0
	.incbin "baserom.gba", 0xB431C0, 0x0000004

gUnk_08B431C4:: @ 08B431C4
	.incbin "baserom.gba", 0xB431C4, 0x0000010

gUnk_08B431D4:: @ 08B431D4
	.incbin "baserom.gba", 0xB431D4, 0x000000C

gUnk_08B431E0:: @ 08B431E0
	.incbin "baserom.gba", 0xB431E0, 0x0000004

gUnk_08B431E4:: @ 08B431E4
	.incbin "baserom.gba", 0xB431E4, 0x0000004

gUnk_08B431E8:: @ 08B431E8
	.incbin "baserom.gba", 0xB431E8, 0x0000004

gUnk_08B431EC:: @ 08B431EC
	.incbin "baserom.gba", 0xB431EC, 0x0000004

gUnk_08B431F0:: @ 08B431F0
	.incbin "baserom.gba", 0xB431F0, 0x0000004

gUnk_08B431F4:: @ 08B431F4
	.incbin "baserom.gba", 0xB431F4, 0x0000008

gUnk_08B431FC:: @ 08B431FC
	.incbin "baserom.gba", 0xB431FC, 0x0000004

gUnk_08B43200:: @ 08B43200
	.incbin "baserom.gba", 0xB43200, 0x0000004

gUnk_08B43204:: @ 08B43204
	.incbin "baserom.gba", 0xB43204, 0x000000C

gUnk_08B43210:: @ 08B43210
	.incbin "baserom.gba", 0xB43210, 0x000000C

gUnk_08B4321C:: @ 08B4321C
	.incbin "baserom.gba", 0xB4321C, 0x0000010

gUnk_08B4322C:: @ 08B4322C
	.incbin "baserom.gba", 0xB4322C, 0x000000C

gUnk_08B43238:: @ 08B43238
	.incbin "baserom.gba", 0xB43238, 0x0000004

gUnk_08B4323C:: @ 08B4323C
	.incbin "baserom.gba", 0xB4323C, 0x000004C

gUnk_08B43288:: @ 08B43288
	.incbin "baserom.gba", 0xB43288, 0x0000004

gUnk_08B4328C:: @ 08B4328C
	.incbin "baserom.gba", 0xB4328C, 0x0000020

gUnk_08B432AC:: @ 08B432AC
	.incbin "baserom.gba", 0xB432AC, 0x0000004

gUnk_08B432B0:: @ 08B432B0
	.incbin "baserom.gba", 0xB432B0, 0x0000004

gUnk_08B432B4:: @ 08B432B4
	.incbin "baserom.gba", 0xB432B4, 0x0000004

gUnk_08B432B8:: @ 08B432B8
	.incbin "baserom.gba", 0xB432B8, 0x000001C

gUnk_08B432D4:: @ 08B432D4
	.incbin "baserom.gba", 0xB432D4, 0x000001C

gUnk_08B432F0:: @ 08B432F0
	.incbin "baserom.gba", 0xB432F0, 0x0000008

gUnk_08B432F8:: @ 08B432F8
	.incbin "baserom.gba", 0xB432F8, 0x0000008

gUnk_08B43300:: @ 08B43300
	.incbin "baserom.gba", 0xB43300, 0x000000C

gUnk_08B4330C:: @ 08B4330C
	.incbin "baserom.gba", 0xB4330C, 0x000000C

gUnk_08B43318:: @ 08B43318
	.incbin "baserom.gba", 0xB43318, 0x0000018

gUnk_08B43330:: @ 08B43330
	.incbin "baserom.gba", 0xB43330, 0x0000010

gUnk_08B43340:: @ 08B43340
	.incbin "baserom.gba", 0xB43340, 0x0000018

gUnk_08B43358:: @ 08B43358
	.incbin "baserom.gba", 0xB43358, 0x0000014

gUnk_08B4336C:: @ 08B4336C
	.incbin "baserom.gba", 0xB4336C, 0x0000010

gUnk_08B4337C:: @ 08B4337C
	.incbin "baserom.gba", 0xB4337C, 0x000000C

gUnk_08B43388:: @ 08B43388
	.incbin "baserom.gba", 0xB43388, 0x0000020

gUnk_08B433A8:: @ 08B433A8
	.incbin "baserom.gba", 0xB433A8, 0x0000020

gUnk_08B433C8:: @ 08B433C8
	.incbin "baserom.gba", 0xB433C8, 0x0000020

gUnk_08B433E8:: @ 08B433E8
	.incbin "baserom.gba", 0xB433E8, 0x0000020

gUnk_08B43408:: @ 08B43408
	.incbin "baserom.gba", 0xB43408, 0x0000018

gUnk_08B43420:: @ 08B43420
	.incbin "baserom.gba", 0xB43420, 0x0000014

gUnk_08B43434:: @ 08B43434
	.incbin "baserom.gba", 0xB43434, 0x0000014

gUnk_08B43448:: @ 08B43448
	.incbin "baserom.gba", 0xB43448, 0x0000010

gUnk_08B43458:: @ 08B43458
	.incbin "baserom.gba", 0xB43458, 0x0000014

gUnk_08B4346C:: @ 08B4346C
	.incbin "baserom.gba", 0xB4346C, 0x0000018

gUnk_08B43484:: @ 08B43484
	.incbin "baserom.gba", 0xB43484, 0x0000014

gUnk_08B43498:: @ 08B43498
	.incbin "baserom.gba", 0xB43498, 0x0000010

gUnk_08B434A8:: @ 08B434A8
	.incbin "baserom.gba", 0xB434A8, 0x0000020

gUnk_08B434C8:: @ 08B434C8
	.incbin "baserom.gba", 0xB434C8, 0x0000008

gUnk_08B434D0:: @ 08B434D0
	.incbin "baserom.gba", 0xB434D0, 0x0000014

gUnk_08B434E4:: @ 08B434E4
	.incbin "baserom.gba", 0xB434E4, 0x0000018

gUnk_08B434FC:: @ 08B434FC
	.incbin "baserom.gba", 0xB434FC, 0x0000010

gUnk_08B4350C:: @ 08B4350C
	.incbin "baserom.gba", 0xB4350C, 0x0000018

gUnk_08B43524:: @ 08B43524
	.incbin "baserom.gba", 0xB43524, 0x000000C

gUnk_08B43530:: @ 08B43530
	.incbin "baserom.gba", 0xB43530, 0x0000014

gUnk_08B43544:: @ 08B43544
	.incbin "baserom.gba", 0xB43544, 0x0000018

gUnk_08B4355C:: @ 08B4355C
	.incbin "baserom.gba", 0xB4355C, 0x000001C

gUnk_08B43578:: @ 08B43578
	.incbin "baserom.gba", 0xB43578, 0x000001C

gUnk_08B43594:: @ 08B43594
	.incbin "baserom.gba", 0xB43594, 0x0000018

gUnk_08B435AC:: @ 08B435AC
	.incbin "baserom.gba", 0xB435AC, 0x000001C

gUnk_08B435C8:: @ 08B435C8
	.incbin "baserom.gba", 0xB435C8, 0x000001C

gUnk_08B435E4:: @ 08B435E4
	.incbin "baserom.gba", 0xB435E4, 0x000001C

gUnk_08B43600:: @ 08B43600
	.incbin "baserom.gba", 0xB43600, 0x0000020

gUnk_08B43620:: @ 08B43620
	.incbin "baserom.gba", 0xB43620, 0x0000020

gUnk_08B43640:: @ 08B43640
	.incbin "baserom.gba", 0xB43640, 0x0000024

gUnk_08B43664:: @ 08B43664
	.incbin "baserom.gba", 0xB43664, 0x0000010

gUnk_08B43674:: @ 08B43674
	.incbin "baserom.gba", 0xB43674, 0x0000010

gUnk_08B43684:: @ 08B43684
	.incbin "baserom.gba", 0xB43684, 0x0000014

gUnk_08B43698:: @ 08B43698
	.incbin "baserom.gba", 0xB43698, 0x0000004

gUnk_08B4369C:: @ 08B4369C
	.incbin "baserom.gba", 0xB4369C, 0x000004C

gUnk_08B436E8:: @ 08B436E8
	.incbin "baserom.gba", 0xB436E8, 0x0000004

gUnk_08B436EC:: @ 08B436EC
	.incbin "baserom.gba", 0xB436EC, 0x000000C

gUnk_08B436F8:: @ 08B436F8
	.incbin "baserom.gba", 0xB436F8, 0x0000008

gUnk_08B43700:: @ 08B43700
	.incbin "baserom.gba", 0xB43700, 0x0000008

gUnk_08B43708:: @ 08B43708
	.incbin "baserom.gba", 0xB43708, 0x0000004

gUnk_08B4370C:: @ 08B4370C
	.incbin "baserom.gba", 0xB4370C, 0x0000008

gUnk_08B43714:: @ 08B43714
	.incbin "baserom.gba", 0xB43714, 0x000000C

gUnk_08B43720:: @ 08B43720
	.incbin "baserom.gba", 0xB43720, 0x0000014

gUnk_08B43734:: @ 08B43734
	.incbin "baserom.gba", 0xB43734, 0x000000C

gUnk_08B43740:: @ 08B43740
	.incbin "baserom.gba", 0xB43740, 0x0000004

gUnk_08B43744:: @ 08B43744
	.incbin "baserom.gba", 0xB43744, 0x0000004

gUnk_08B43748:: @ 08B43748
	.incbin "baserom.gba", 0xB43748, 0x000000C

gUnk_08B43754:: @ 08B43754
	.incbin "baserom.gba", 0xB43754, 0x0000004

gUnk_08B43758:: @ 08B43758
	.incbin "baserom.gba", 0xB43758, 0x0000004

gUnk_08B4375C:: @ 08B4375C
	.incbin "baserom.gba", 0xB4375C, 0x0000004

gUnk_08B43760:: @ 08B43760
	.incbin "baserom.gba", 0xB43760, 0x0000004

gUnk_08B43764:: @ 08B43764
	.incbin "baserom.gba", 0xB43764, 0x0000004

gUnk_08B43768:: @ 08B43768
	.incbin "baserom.gba", 0xB43768, 0x000000C

gUnk_08B43774:: @ 08B43774
	.incbin "baserom.gba", 0xB43774, 0x0000010

gUnk_08B43784:: @ 08B43784
	.incbin "baserom.gba", 0xB43784, 0x0000010

gUnk_08B43794:: @ 08B43794
	.incbin "baserom.gba", 0xB43794, 0x0000014

gUnk_08B437A8:: @ 08B437A8
	.incbin "baserom.gba", 0xB437A8, 0x0000018

gUnk_08B437C0:: @ 08B437C0
	.incbin "baserom.gba", 0xB437C0, 0x0000014

gUnk_08B437D4:: @ 08B437D4
	.incbin "baserom.gba", 0xB437D4, 0x000004C

gUnk_08B43820:: @ 08B43820
	.incbin "baserom.gba", 0xB43820, 0x0000004

gUnk_08B43824:: @ 08B43824
	.incbin "baserom.gba", 0xB43824, 0x0000014

gUnk_08B43838:: @ 08B43838
	.incbin "baserom.gba", 0xB43838, 0x0000004

gUnk_08B4383C:: @ 08B4383C
	.incbin "baserom.gba", 0xB4383C, 0x0000004

gUnk_08B43840:: @ 08B43840
	.incbin "baserom.gba", 0xB43840, 0x0000004

gUnk_08B43844:: @ 08B43844
	.incbin "baserom.gba", 0xB43844, 0x0000010

gUnk_08B43854:: @ 08B43854
	.incbin "baserom.gba", 0xB43854, 0x0000010

gUnk_08B43864:: @ 08B43864
	.incbin "baserom.gba", 0xB43864, 0x0000014

gUnk_08B43878:: @ 08B43878
	.incbin "baserom.gba", 0xB43878, 0x0000010

gUnk_08B43888:: @ 08B43888
	.incbin "baserom.gba", 0xB43888, 0x0000010

gUnk_08B43898:: @ 08B43898
	.incbin "baserom.gba", 0xB43898, 0x000000C

gUnk_08B438A4:: @ 08B438A4
	.incbin "baserom.gba", 0xB438A4, 0x000000C

gUnk_08B438B0:: @ 08B438B0
	.incbin "baserom.gba", 0xB438B0, 0x0000008

gUnk_08B438B8:: @ 08B438B8
	.incbin "baserom.gba", 0xB438B8, 0x000000C

gUnk_08B438C4:: @ 08B438C4
	.incbin "baserom.gba", 0xB438C4, 0x0000008

gUnk_08B438CC:: @ 08B438CC
	.incbin "baserom.gba", 0xB438CC, 0x0000014

gUnk_08B438E0:: @ 08B438E0
	.incbin "baserom.gba", 0xB438E0, 0x0000014

gUnk_08B438F4:: @ 08B438F4
	.incbin "baserom.gba", 0xB438F4, 0x0000014

gUnk_08B43908:: @ 08B43908
	.incbin "baserom.gba", 0xB43908, 0x0000018

gUnk_08B43920:: @ 08B43920
	.incbin "baserom.gba", 0xB43920, 0x0000014

gUnk_08B43934:: @ 08B43934
	.incbin "baserom.gba", 0xB43934, 0x0000018

gUnk_08B4394C:: @ 08B4394C
	.incbin "baserom.gba", 0xB4394C, 0x0000014

gUnk_08B43960:: @ 08B43960
	.incbin "baserom.gba", 0xB43960, 0x0000010

gUnk_08B43970:: @ 08B43970
	.incbin "baserom.gba", 0xB43970, 0x0000010

gUnk_08B43980:: @ 08B43980
	.incbin "baserom.gba", 0xB43980, 0x000000C

gUnk_08B4398C:: @ 08B4398C
	.incbin "baserom.gba", 0xB4398C, 0x0000010

gUnk_08B4399C:: @ 08B4399C
	.incbin "baserom.gba", 0xB4399C, 0x0000014

gUnk_08B439B0:: @ 08B439B0
	.incbin "baserom.gba", 0xB439B0, 0x0000018

gUnk_08B439C8:: @ 08B439C8
	.incbin "baserom.gba", 0xB439C8, 0x0000018

gUnk_08B439E0:: @ 08B439E0
	.incbin "baserom.gba", 0xB439E0, 0x0000014

gUnk_08B439F4:: @ 08B439F4
	.incbin "baserom.gba", 0xB439F4, 0x0000014

gUnk_08B43A08:: @ 08B43A08
	.incbin "baserom.gba", 0xB43A08, 0x0000008

gUnk_08B43A10:: @ 08B43A10
	.incbin "baserom.gba", 0xB43A10, 0x000000C

gUnk_08B43A1C:: @ 08B43A1C
	.incbin "baserom.gba", 0xB43A1C, 0x000000C

gUnk_08B43A28:: @ 08B43A28
	.incbin "baserom.gba", 0xB43A28, 0x000000C

gUnk_08B43A34:: @ 08B43A34
	.incbin "baserom.gba", 0xB43A34, 0x0000014

gUnk_08B43A48:: @ 08B43A48
	.incbin "baserom.gba", 0xB43A48, 0x0000014

gUnk_08B43A5C:: @ 08B43A5C
	.incbin "baserom.gba", 0xB43A5C, 0x0000014

gUnk_08B43A70:: @ 08B43A70
	.incbin "baserom.gba", 0xB43A70, 0x000001C

gUnk_08B43A8C:: @ 08B43A8C
	.incbin "baserom.gba", 0xB43A8C, 0x0000018

gUnk_08B43AA4:: @ 08B43AA4
	.incbin "baserom.gba", 0xB43AA4, 0x0000018

gUnk_08B43ABC:: @ 08B43ABC
	.incbin "baserom.gba", 0xB43ABC, 0x0000018

gUnk_08B43AD4:: @ 08B43AD4
	.incbin "baserom.gba", 0xB43AD4, 0x000001C

gUnk_08B43AF0:: @ 08B43AF0
	.incbin "baserom.gba", 0xB43AF0, 0x0000010

gUnk_08B43B00:: @ 08B43B00
	.incbin "baserom.gba", 0xB43B00, 0x0000014

gUnk_08B43B14:: @ 08B43B14
	.incbin "baserom.gba", 0xB43B14, 0x0000014

gUnk_08B43B28:: @ 08B43B28
	.incbin "baserom.gba", 0xB43B28, 0x0000018

gUnk_08B43B40:: @ 08B43B40
	.incbin "baserom.gba", 0xB43B40, 0x0000010

gUnk_08B43B50:: @ 08B43B50
	.incbin "baserom.gba", 0xB43B50, 0x0000010

gUnk_08B43B60:: @ 08B43B60
	.incbin "baserom.gba", 0xB43B60, 0x0000010

gUnk_08B43B70:: @ 08B43B70
	.incbin "baserom.gba", 0xB43B70, 0x0000004

gUnk_08B43B74:: @ 08B43B74
	.incbin "baserom.gba", 0xB43B74, 0x000004C

gUnk_08B43BC0:: @ 08B43BC0
	.incbin "baserom.gba", 0xB43BC0, 0x0000004

gUnk_08B43BC4:: @ 08B43BC4
	.incbin "baserom.gba", 0xB43BC4, 0x0000004

gUnk_08B43BC8:: @ 08B43BC8
	.incbin "baserom.gba", 0xB43BC8, 0x0000004

gUnk_08B43BCC:: @ 08B43BCC
	.incbin "baserom.gba", 0xB43BCC, 0x0000004

gUnk_08B43BD0:: @ 08B43BD0
	.incbin "baserom.gba", 0xB43BD0, 0x0000004

gUnk_08B43BD4:: @ 08B43BD4
	.incbin "baserom.gba", 0xB43BD4, 0x0000004

gUnk_08B43BD8:: @ 08B43BD8
	.incbin "baserom.gba", 0xB43BD8, 0x000000C

gUnk_08B43BE4:: @ 08B43BE4
	.incbin "baserom.gba", 0xB43BE4, 0x0000008

gUnk_08B43BEC:: @ 08B43BEC
	.incbin "baserom.gba", 0xB43BEC, 0x0000014

gUnk_08B43C00:: @ 08B43C00
	.incbin "baserom.gba", 0xB43C00, 0x000000C

gUnk_08B43C0C:: @ 08B43C0C
	.incbin "baserom.gba", 0xB43C0C, 0x0000010

gUnk_08B43C1C:: @ 08B43C1C
	.incbin "baserom.gba", 0xB43C1C, 0x0000014

gUnk_08B43C30:: @ 08B43C30
	.incbin "baserom.gba", 0xB43C30, 0x000000C

gUnk_08B43C3C:: @ 08B43C3C
	.incbin "baserom.gba", 0xB43C3C, 0x000000C

gUnk_08B43C48:: @ 08B43C48
	.incbin "baserom.gba", 0xB43C48, 0x0000008

gUnk_08B43C50:: @ 08B43C50
	.incbin "baserom.gba", 0xB43C50, 0x0000010

gUnk_08B43C60:: @ 08B43C60
	.incbin "baserom.gba", 0xB43C60, 0x0000014

gUnk_08B43C74:: @ 08B43C74
	.incbin "baserom.gba", 0xB43C74, 0x0000010

gUnk_08B43C84:: @ 08B43C84
	.incbin "baserom.gba", 0xB43C84, 0x0000010

gUnk_08B43C94:: @ 08B43C94
	.incbin "baserom.gba", 0xB43C94, 0x000000C

gUnk_08B43CA0:: @ 08B43CA0
	.incbin "baserom.gba", 0xB43CA0, 0x0000010

gUnk_08B43CB0:: @ 08B43CB0
	.incbin "baserom.gba", 0xB43CB0, 0x0000014

gUnk_08B43CC4:: @ 08B43CC4
	.incbin "baserom.gba", 0xB43CC4, 0x000000C

gUnk_08B43CD0:: @ 08B43CD0
	.incbin "baserom.gba", 0xB43CD0, 0x0000010

gUnk_08B43CE0:: @ 08B43CE0
	.incbin "baserom.gba", 0xB43CE0, 0x0000010

gUnk_08B43CF0:: @ 08B43CF0
	.incbin "baserom.gba", 0xB43CF0, 0x000000C

gUnk_08B43CFC:: @ 08B43CFC
	.incbin "baserom.gba", 0xB43CFC, 0x000004C

gUnk_08B43D48:: @ 08B43D48
	.incbin "baserom.gba", 0xB43D48, 0x0000008

gUnk_08B43D50:: @ 08B43D50
	.incbin "baserom.gba", 0xB43D50, 0x0000004

gUnk_08B43D54:: @ 08B43D54
	.incbin "baserom.gba", 0xB43D54, 0x0000004

gUnk_08B43D58:: @ 08B43D58
	.incbin "baserom.gba", 0xB43D58, 0x0000004

gUnk_08B43D5C:: @ 08B43D5C
	.incbin "baserom.gba", 0xB43D5C, 0x0000004

gUnk_08B43D60:: @ 08B43D60
	.incbin "baserom.gba", 0xB43D60, 0x0000004

gUnk_08B43D64:: @ 08B43D64
	.incbin "baserom.gba", 0xB43D64, 0x0000004

gUnk_08B43D68:: @ 08B43D68
	.incbin "baserom.gba", 0xB43D68, 0x0000004

gUnk_08B43D6C:: @ 08B43D6C
	.incbin "baserom.gba", 0xB43D6C, 0x0000004

gUnk_08B43D70:: @ 08B43D70
	.incbin "baserom.gba", 0xB43D70, 0x0000004

gUnk_08B43D74:: @ 08B43D74
	.incbin "baserom.gba", 0xB43D74, 0x0000004

gUnk_08B43D78:: @ 08B43D78
	.incbin "baserom.gba", 0xB43D78, 0x0000004

gUnk_08B43D7C:: @ 08B43D7C
	.incbin "baserom.gba", 0xB43D7C, 0x0000004

gUnk_08B43D80:: @ 08B43D80
	.incbin "baserom.gba", 0xB43D80, 0x0000004

gUnk_08B43D84:: @ 08B43D84
	.incbin "baserom.gba", 0xB43D84, 0x0000004

gUnk_08B43D88:: @ 08B43D88
	.incbin "baserom.gba", 0xB43D88, 0x0000004

gUnk_08B43D8C:: @ 08B43D8C
	.incbin "baserom.gba", 0xB43D8C, 0x0000008

gUnk_08B43D94:: @ 08B43D94
	.incbin "baserom.gba", 0xB43D94, 0x0000004

gUnk_08B43D98:: @ 08B43D98
	.incbin "baserom.gba", 0xB43D98, 0x0000004

gUnk_08B43D9C:: @ 08B43D9C
	.incbin "baserom.gba", 0xB43D9C, 0x0000004

gUnk_08B43DA0:: @ 08B43DA0
	.incbin "baserom.gba", 0xB43DA0, 0x0000004

gUnk_08B43DA4:: @ 08B43DA4
	.incbin "baserom.gba", 0xB43DA4, 0x0000004

gUnk_08B43DA8:: @ 08B43DA8
	.incbin "baserom.gba", 0xB43DA8, 0x0000004

gUnk_08B43DAC:: @ 08B43DAC
	.incbin "baserom.gba", 0xB43DAC, 0x0000004

gUnk_08B43DB0:: @ 08B43DB0
	.incbin "baserom.gba", 0xB43DB0, 0x0000004

gUnk_08B43DB4:: @ 08B43DB4
	.incbin "baserom.gba", 0xB43DB4, 0x0000004

gUnk_08B43DB8:: @ 08B43DB8
	.incbin "baserom.gba", 0xB43DB8, 0x0000004

gUnk_08B43DBC:: @ 08B43DBC
	.incbin "baserom.gba", 0xB43DBC, 0x0000004

gUnk_08B43DC0:: @ 08B43DC0
	.incbin "baserom.gba", 0xB43DC0, 0x0000004

gUnk_08B43DC4:: @ 08B43DC4
	.incbin "baserom.gba", 0xB43DC4, 0x0000004

gUnk_08B43DC8:: @ 08B43DC8
	.incbin "baserom.gba", 0xB43DC8, 0x0000004

gUnk_08B43DCC:: @ 08B43DCC
	.incbin "baserom.gba", 0xB43DCC, 0x000004C

gUnk_08B43E18:: @ 08B43E18
	.incbin "baserom.gba", 0xB43E18, 0x0000014

gUnk_08B43E2C:: @ 08B43E2C
	.incbin "baserom.gba", 0xB43E2C, 0x0000008

gUnk_08B43E34:: @ 08B43E34
	.incbin "baserom.gba", 0xB43E34, 0x0000010

gUnk_08B43E44:: @ 08B43E44
	.incbin "baserom.gba", 0xB43E44, 0x0000010

gUnk_08B43E54:: @ 08B43E54
	.incbin "baserom.gba", 0xB43E54, 0x000000C

gUnk_08B43E60:: @ 08B43E60
	.incbin "baserom.gba", 0xB43E60, 0x0000010

gUnk_08B43E70:: @ 08B43E70
	.incbin "baserom.gba", 0xB43E70, 0x0000008

gUnk_08B43E78:: @ 08B43E78
	.incbin "baserom.gba", 0xB43E78, 0x000000C

gUnk_08B43E84:: @ 08B43E84
	.incbin "baserom.gba", 0xB43E84, 0x000000C

gUnk_08B43E90:: @ 08B43E90
	.incbin "baserom.gba", 0xB43E90, 0x0000008

gUnk_08B43E98:: @ 08B43E98
	.incbin "baserom.gba", 0xB43E98, 0x0000010

gUnk_08B43EA8:: @ 08B43EA8
	.incbin "baserom.gba", 0xB43EA8, 0x0000010

gUnk_08B43EB8:: @ 08B43EB8
	.incbin "baserom.gba", 0xB43EB8, 0x0000010

gUnk_08B43EC8:: @ 08B43EC8
	.incbin "baserom.gba", 0xB43EC8, 0x000000C

gUnk_08B43ED4:: @ 08B43ED4
	.incbin "baserom.gba", 0xB43ED4, 0x0000010

gUnk_08B43EE4:: @ 08B43EE4
	.incbin "baserom.gba", 0xB43EE4, 0x0000014

gUnk_08B43EF8:: @ 08B43EF8
	.incbin "baserom.gba", 0xB43EF8, 0x0000018

gUnk_08B43F10:: @ 08B43F10
	.incbin "baserom.gba", 0xB43F10, 0x0000014

gUnk_08B43F24:: @ 08B43F24
	.incbin "baserom.gba", 0xB43F24, 0x0000010

gUnk_08B43F34:: @ 08B43F34
	.incbin "baserom.gba", 0xB43F34, 0x0000010

gUnk_08B43F44:: @ 08B43F44
	.incbin "baserom.gba", 0xB43F44, 0x0000010

gUnk_08B43F54:: @ 08B43F54
	.incbin "baserom.gba", 0xB43F54, 0x0000014

gUnk_08B43F68:: @ 08B43F68
	.incbin "baserom.gba", 0xB43F68, 0x0000014

gUnk_08B43F7C:: @ 08B43F7C
	.incbin "baserom.gba", 0xB43F7C, 0x0000010

gUnk_08B43F8C:: @ 08B43F8C
	.incbin "baserom.gba", 0xB43F8C, 0x0000010

gUnk_08B43F9C:: @ 08B43F9C
	.incbin "baserom.gba", 0xB43F9C, 0x0000010

gUnk_08B43FAC:: @ 08B43FAC
	.incbin "baserom.gba", 0xB43FAC, 0x0000014

gUnk_08B43FC0:: @ 08B43FC0
	.incbin "baserom.gba", 0xB43FC0, 0x0000018

gUnk_08B43FD8:: @ 08B43FD8
	.incbin "baserom.gba", 0xB43FD8, 0x0000014

gUnk_08B43FEC:: @ 08B43FEC
	.incbin "baserom.gba", 0xB43FEC, 0x000000C

gUnk_08B43FF8:: @ 08B43FF8
	.incbin "baserom.gba", 0xB43FF8, 0x000000C

gUnk_08B44004:: @ 08B44004
	.incbin "baserom.gba", 0xB44004, 0x000004C

gUnk_08B44050:: @ 08B44050
	.incbin "baserom.gba", 0xB44050, 0x0000014

gUnk_08B44064:: @ 08B44064
	.incbin "baserom.gba", 0xB44064, 0x0000010

gUnk_08B44074:: @ 08B44074
	.incbin "baserom.gba", 0xB44074, 0x0000008

gUnk_08B4407C:: @ 08B4407C
	.incbin "baserom.gba", 0xB4407C, 0x0000008

gUnk_08B44084:: @ 08B44084
	.incbin "baserom.gba", 0xB44084, 0x0000008

gUnk_08B4408C:: @ 08B4408C
	.incbin "baserom.gba", 0xB4408C, 0x000000C

gUnk_08B44098:: @ 08B44098
	.incbin "baserom.gba", 0xB44098, 0x000000C

gUnk_08B440A4:: @ 08B440A4
	.incbin "baserom.gba", 0xB440A4, 0x000000C

gUnk_08B440B0:: @ 08B440B0
	.incbin "baserom.gba", 0xB440B0, 0x000000C

gUnk_08B440BC:: @ 08B440BC
	.incbin "baserom.gba", 0xB440BC, 0x0000010

gUnk_08B440CC:: @ 08B440CC
	.incbin "baserom.gba", 0xB440CC, 0x0000010

gUnk_08B440DC:: @ 08B440DC
	.incbin "baserom.gba", 0xB440DC, 0x000000C

gUnk_08B440E8:: @ 08B440E8
	.incbin "baserom.gba", 0xB440E8, 0x0000010

gUnk_08B440F8:: @ 08B440F8
	.incbin "baserom.gba", 0xB440F8, 0x0000010

gUnk_08B44108:: @ 08B44108
	.incbin "baserom.gba", 0xB44108, 0x0000010

gUnk_08B44118:: @ 08B44118
	.incbin "baserom.gba", 0xB44118, 0x0000014

gUnk_08B4412C:: @ 08B4412C
	.incbin "baserom.gba", 0xB4412C, 0x0000018

gUnk_08B44144:: @ 08B44144
	.incbin "baserom.gba", 0xB44144, 0x000000C

gUnk_08B44150:: @ 08B44150
	.incbin "baserom.gba", 0xB44150, 0x0000010

gUnk_08B44160:: @ 08B44160
	.incbin "baserom.gba", 0xB44160, 0x0000010

gUnk_08B44170:: @ 08B44170
	.incbin "baserom.gba", 0xB44170, 0x0000014

gUnk_08B44184:: @ 08B44184
	.incbin "baserom.gba", 0xB44184, 0x0000014

gUnk_08B44198:: @ 08B44198
	.incbin "baserom.gba", 0xB44198, 0x0000010

gUnk_08B441A8:: @ 08B441A8
	.incbin "baserom.gba", 0xB441A8, 0x000000C

gUnk_08B441B4:: @ 08B441B4
	.incbin "baserom.gba", 0xB441B4, 0x000000C

gUnk_08B441C0:: @ 08B441C0
	.incbin "baserom.gba", 0xB441C0, 0x000000C

gUnk_08B441CC:: @ 08B441CC
	.incbin "baserom.gba", 0xB441CC, 0x0000010

gUnk_08B441DC:: @ 08B441DC
	.incbin "baserom.gba", 0xB441DC, 0x0000010

gUnk_08B441EC:: @ 08B441EC
	.incbin "baserom.gba", 0xB441EC, 0x000000C

gUnk_08B441F8:: @ 08B441F8
	.incbin "baserom.gba", 0xB441F8, 0x000000C

gUnk_08B44204:: @ 08B44204
	.incbin "baserom.gba", 0xB44204, 0x0000010

gUnk_08B44214:: @ 08B44214
	.incbin "baserom.gba", 0xB44214, 0x000004C

gUnk_08B44260:: @ 08B44260
	.incbin "baserom.gba", 0xB44260, 0x0000014

gUnk_08B44274:: @ 08B44274
	.incbin "baserom.gba", 0xB44274, 0x0000010

gUnk_08B44284:: @ 08B44284
	.incbin "baserom.gba", 0xB44284, 0x0000008

gUnk_08B4428C:: @ 08B4428C
	.incbin "baserom.gba", 0xB4428C, 0x0000008

gUnk_08B44294:: @ 08B44294
	.incbin "baserom.gba", 0xB44294, 0x000000C

gUnk_08B442A0:: @ 08B442A0
	.incbin "baserom.gba", 0xB442A0, 0x000000C

gUnk_08B442AC:: @ 08B442AC
	.incbin "baserom.gba", 0xB442AC, 0x0000010

gUnk_08B442BC:: @ 08B442BC
	.incbin "baserom.gba", 0xB442BC, 0x000000C

gUnk_08B442C8:: @ 08B442C8
	.incbin "baserom.gba", 0xB442C8, 0x000000C

gUnk_08B442D4:: @ 08B442D4
	.incbin "baserom.gba", 0xB442D4, 0x0000014

gUnk_08B442E8:: @ 08B442E8
	.incbin "baserom.gba", 0xB442E8, 0x0000010

gUnk_08B442F8:: @ 08B442F8
	.incbin "baserom.gba", 0xB442F8, 0x0000010

gUnk_08B44308:: @ 08B44308
	.incbin "baserom.gba", 0xB44308, 0x0000010

gUnk_08B44318:: @ 08B44318
	.incbin "baserom.gba", 0xB44318, 0x0000010

gUnk_08B44328:: @ 08B44328
	.incbin "baserom.gba", 0xB44328, 0x0000010

gUnk_08B44338:: @ 08B44338
	.incbin "baserom.gba", 0xB44338, 0x0000010

gUnk_08B44348:: @ 08B44348
	.incbin "baserom.gba", 0xB44348, 0x0000014

gUnk_08B4435C:: @ 08B4435C
	.incbin "baserom.gba", 0xB4435C, 0x0000008

gUnk_08B44364:: @ 08B44364
	.incbin "baserom.gba", 0xB44364, 0x0000010

gUnk_08B44374:: @ 08B44374
	.incbin "baserom.gba", 0xB44374, 0x0000010

gUnk_08B44384:: @ 08B44384
	.incbin "baserom.gba", 0xB44384, 0x0000014

gUnk_08B44398:: @ 08B44398
	.incbin "baserom.gba", 0xB44398, 0x0000014

gUnk_08B443AC:: @ 08B443AC
	.incbin "baserom.gba", 0xB443AC, 0x000000C

gUnk_08B443B8:: @ 08B443B8
	.incbin "baserom.gba", 0xB443B8, 0x0000008

gUnk_08B443C0:: @ 08B443C0
	.incbin "baserom.gba", 0xB443C0, 0x000000C

gUnk_08B443CC:: @ 08B443CC
	.incbin "baserom.gba", 0xB443CC, 0x0000010

gUnk_08B443DC:: @ 08B443DC
	.incbin "baserom.gba", 0xB443DC, 0x0000010

gUnk_08B443EC:: @ 08B443EC
	.incbin "baserom.gba", 0xB443EC, 0x000000C

gUnk_08B443F8:: @ 08B443F8
	.incbin "baserom.gba", 0xB443F8, 0x000000C

gUnk_08B44404:: @ 08B44404
	.incbin "baserom.gba", 0xB44404, 0x000000C

gUnk_08B44410:: @ 08B44410
	.incbin "baserom.gba", 0xB44410, 0x0000010

gUnk_08B44420:: @ 08B44420
	.incbin "baserom.gba", 0xB44420, 0x000004C

gUnk_08B4446C:: @ 08B4446C
	.incbin "baserom.gba", 0xB4446C, 0x0000014

gUnk_08B44480:: @ 08B44480
	.incbin "baserom.gba", 0xB44480, 0x000000C

gUnk_08B4448C:: @ 08B4448C
	.incbin "baserom.gba", 0xB4448C, 0x0000008

gUnk_08B44494:: @ 08B44494
	.incbin "baserom.gba", 0xB44494, 0x000000C

gUnk_08B444A0:: @ 08B444A0
	.incbin "baserom.gba", 0xB444A0, 0x0000008

gUnk_08B444A8:: @ 08B444A8
	.incbin "baserom.gba", 0xB444A8, 0x0000008

gUnk_08B444B0:: @ 08B444B0
	.incbin "baserom.gba", 0xB444B0, 0x000000C

gUnk_08B444BC:: @ 08B444BC
	.incbin "baserom.gba", 0xB444BC, 0x0000008

gUnk_08B444C4:: @ 08B444C4
	.incbin "baserom.gba", 0xB444C4, 0x0000008

gUnk_08B444CC:: @ 08B444CC
	.incbin "baserom.gba", 0xB444CC, 0x0000010

gUnk_08B444DC:: @ 08B444DC
	.incbin "baserom.gba", 0xB444DC, 0x0000010

gUnk_08B444EC:: @ 08B444EC
	.incbin "baserom.gba", 0xB444EC, 0x000000C

gUnk_08B444F8:: @ 08B444F8
	.incbin "baserom.gba", 0xB444F8, 0x0000010

gUnk_08B44508:: @ 08B44508
	.incbin "baserom.gba", 0xB44508, 0x000000C

gUnk_08B44514:: @ 08B44514
	.incbin "baserom.gba", 0xB44514, 0x0000010

gUnk_08B44524:: @ 08B44524
	.incbin "baserom.gba", 0xB44524, 0x0000014

gUnk_08B44538:: @ 08B44538
	.incbin "baserom.gba", 0xB44538, 0x0000018

gUnk_08B44550:: @ 08B44550
	.incbin "baserom.gba", 0xB44550, 0x000000C

gUnk_08B4455C:: @ 08B4455C
	.incbin "baserom.gba", 0xB4455C, 0x0000010

gUnk_08B4456C:: @ 08B4456C
	.incbin "baserom.gba", 0xB4456C, 0x0000010

gUnk_08B4457C:: @ 08B4457C
	.incbin "baserom.gba", 0xB4457C, 0x0000010

gUnk_08B4458C:: @ 08B4458C
	.incbin "baserom.gba", 0xB4458C, 0x0000014

gUnk_08B445A0:: @ 08B445A0
	.incbin "baserom.gba", 0xB445A0, 0x0000010

gUnk_08B445B0:: @ 08B445B0
	.incbin "baserom.gba", 0xB445B0, 0x000000C

gUnk_08B445BC:: @ 08B445BC
	.incbin "baserom.gba", 0xB445BC, 0x0000008

gUnk_08B445C4:: @ 08B445C4
	.incbin "baserom.gba", 0xB445C4, 0x000000C

gUnk_08B445D0:: @ 08B445D0
	.incbin "baserom.gba", 0xB445D0, 0x000000C

gUnk_08B445DC:: @ 08B445DC
	.incbin "baserom.gba", 0xB445DC, 0x0000010

gUnk_08B445EC:: @ 08B445EC
	.incbin "baserom.gba", 0xB445EC, 0x0000010

gUnk_08B445FC:: @ 08B445FC
	.incbin "baserom.gba", 0xB445FC, 0x000000C

gUnk_08B44608:: @ 08B44608
	.incbin "baserom.gba", 0xB44608, 0x000000C

gUnk_08B44614:: @ 08B44614
	.incbin "baserom.gba", 0xB44614, 0x000004C

gUnk_08B44660:: @ 08B44660
	.incbin "baserom.gba", 0xB44660, 0x0000004

gUnk_08B44664:: @ 08B44664
	.incbin "baserom.gba", 0xB44664, 0x0000004

gUnk_08B44668:: @ 08B44668
	.incbin "baserom.gba", 0xB44668, 0x0000004

gUnk_08B4466C:: @ 08B4466C
	.incbin "baserom.gba", 0xB4466C, 0x0000004

gUnk_08B44670:: @ 08B44670
	.incbin "baserom.gba", 0xB44670, 0x0000004

gUnk_08B44674:: @ 08B44674
	.incbin "baserom.gba", 0xB44674, 0x0000008

gUnk_08B4467C:: @ 08B4467C
	.incbin "baserom.gba", 0xB4467C, 0x0000004

gUnk_08B44680:: @ 08B44680
	.incbin "baserom.gba", 0xB44680, 0x0000004

gUnk_08B44684:: @ 08B44684
	.incbin "baserom.gba", 0xB44684, 0x0000004

gUnk_08B44688:: @ 08B44688
	.incbin "baserom.gba", 0xB44688, 0x0000004

gUnk_08B4468C:: @ 08B4468C
	.incbin "baserom.gba", 0xB4468C, 0x0000004

gUnk_08B44690:: @ 08B44690
	.incbin "baserom.gba", 0xB44690, 0x0000008

gUnk_08B44698:: @ 08B44698
	.incbin "baserom.gba", 0xB44698, 0x0000004

gUnk_08B4469C:: @ 08B4469C
	.incbin "baserom.gba", 0xB4469C, 0x0000004

gUnk_08B446A0:: @ 08B446A0
	.incbin "baserom.gba", 0xB446A0, 0x0000004

gUnk_08B446A4:: @ 08B446A4
	.incbin "baserom.gba", 0xB446A4, 0x0000004

gUnk_08B446A8:: @ 08B446A8
	.incbin "baserom.gba", 0xB446A8, 0x0000004

gUnk_08B446AC:: @ 08B446AC
	.incbin "baserom.gba", 0xB446AC, 0x0000004

gUnk_08B446B0:: @ 08B446B0
	.incbin "baserom.gba", 0xB446B0, 0x0000004

gUnk_08B446B4:: @ 08B446B4
	.incbin "baserom.gba", 0xB446B4, 0x0000004

gUnk_08B446B8:: @ 08B446B8
	.incbin "baserom.gba", 0xB446B8, 0x0000004

gUnk_08B446BC:: @ 08B446BC
	.incbin "baserom.gba", 0xB446BC, 0x0000004

gUnk_08B446C0:: @ 08B446C0
	.incbin "baserom.gba", 0xB446C0, 0x0000004

gUnk_08B446C4:: @ 08B446C4
	.incbin "baserom.gba", 0xB446C4, 0x0000004

gUnk_08B446C8:: @ 08B446C8
	.incbin "baserom.gba", 0xB446C8, 0x0000004

gUnk_08B446CC:: @ 08B446CC
	.incbin "baserom.gba", 0xB446CC, 0x0000004

gUnk_08B446D0:: @ 08B446D0
	.incbin "baserom.gba", 0xB446D0, 0x0000004

gUnk_08B446D4:: @ 08B446D4
	.incbin "baserom.gba", 0xB446D4, 0x0000004

gUnk_08B446D8:: @ 08B446D8
	.incbin "baserom.gba", 0xB446D8, 0x0000004

gUnk_08B446DC:: @ 08B446DC
	.incbin "baserom.gba", 0xB446DC, 0x0000004

gUnk_08B446E0:: @ 08B446E0
	.incbin "baserom.gba", 0xB446E0, 0x0000004

gUnk_08B446E4:: @ 08B446E4
	.incbin "baserom.gba", 0xB446E4, 0x000004C

gUnk_08B44730:: @ 08B44730
	.incbin "baserom.gba", 0xB44730, 0x0000014

gUnk_08B44744:: @ 08B44744
	.incbin "baserom.gba", 0xB44744, 0x0000008

gUnk_08B4474C:: @ 08B4474C
	.incbin "baserom.gba", 0xB4474C, 0x000000C

gUnk_08B44758:: @ 08B44758
	.incbin "baserom.gba", 0xB44758, 0x0000010

gUnk_08B44768:: @ 08B44768
	.incbin "baserom.gba", 0xB44768, 0x000000C

gUnk_08B44774:: @ 08B44774
	.incbin "baserom.gba", 0xB44774, 0x000000C

gUnk_08B44780:: @ 08B44780
	.incbin "baserom.gba", 0xB44780, 0x0000008

gUnk_08B44788:: @ 08B44788
	.incbin "baserom.gba", 0xB44788, 0x0000008

gUnk_08B44790:: @ 08B44790
	.incbin "baserom.gba", 0xB44790, 0x000000C

gUnk_08B4479C:: @ 08B4479C
	.incbin "baserom.gba", 0xB4479C, 0x000000C

gUnk_08B447A8:: @ 08B447A8
	.incbin "baserom.gba", 0xB447A8, 0x000000C

gUnk_08B447B4:: @ 08B447B4
	.incbin "baserom.gba", 0xB447B4, 0x0000010

gUnk_08B447C4:: @ 08B447C4
	.incbin "baserom.gba", 0xB447C4, 0x000000C

gUnk_08B447D0:: @ 08B447D0
	.incbin "baserom.gba", 0xB447D0, 0x000000C

gUnk_08B447DC:: @ 08B447DC
	.incbin "baserom.gba", 0xB447DC, 0x000000C

gUnk_08B447E8:: @ 08B447E8
	.incbin "baserom.gba", 0xB447E8, 0x0000010

gUnk_08B447F8:: @ 08B447F8
	.incbin "baserom.gba", 0xB447F8, 0x0000014

gUnk_08B4480C:: @ 08B4480C
	.incbin "baserom.gba", 0xB4480C, 0x0000010

gUnk_08B4481C:: @ 08B4481C
	.incbin "baserom.gba", 0xB4481C, 0x0000010

gUnk_08B4482C:: @ 08B4482C
	.incbin "baserom.gba", 0xB4482C, 0x000000C

gUnk_08B44838:: @ 08B44838
	.incbin "baserom.gba", 0xB44838, 0x0000010

gUnk_08B44848:: @ 08B44848
	.incbin "baserom.gba", 0xB44848, 0x0000010

gUnk_08B44858:: @ 08B44858
	.incbin "baserom.gba", 0xB44858, 0x0000010

gUnk_08B44868:: @ 08B44868
	.incbin "baserom.gba", 0xB44868, 0x000000C

gUnk_08B44874:: @ 08B44874
	.incbin "baserom.gba", 0xB44874, 0x000000C

gUnk_08B44880:: @ 08B44880
	.incbin "baserom.gba", 0xB44880, 0x0000010

gUnk_08B44890:: @ 08B44890
	.incbin "baserom.gba", 0xB44890, 0x0000010

gUnk_08B448A0:: @ 08B448A0
	.incbin "baserom.gba", 0xB448A0, 0x0000014

gUnk_08B448B4:: @ 08B448B4
	.incbin "baserom.gba", 0xB448B4, 0x0000014

gUnk_08B448C8:: @ 08B448C8
	.incbin "baserom.gba", 0xB448C8, 0x0000008

gUnk_08B448D0:: @ 08B448D0
	.incbin "baserom.gba", 0xB448D0, 0x000000C

gUnk_08B448DC:: @ 08B448DC
	.incbin "baserom.gba", 0xB448DC, 0x000004C

gUnk_08B44928:: @ 08B44928
	.incbin "baserom.gba", 0xB44928, 0x0000014

gUnk_08B4493C:: @ 08B4493C
	.incbin "baserom.gba", 0xB4493C, 0x000000C

gUnk_08B44948:: @ 08B44948
	.incbin "baserom.gba", 0xB44948, 0x000000C

gUnk_08B44954:: @ 08B44954
	.incbin "baserom.gba", 0xB44954, 0x000000C

gUnk_08B44960:: @ 08B44960
	.incbin "baserom.gba", 0xB44960, 0x0000008

gUnk_08B44968:: @ 08B44968
	.incbin "baserom.gba", 0xB44968, 0x000000C

gUnk_08B44974:: @ 08B44974
	.incbin "baserom.gba", 0xB44974, 0x0000008

gUnk_08B4497C:: @ 08B4497C
	.incbin "baserom.gba", 0xB4497C, 0x0000008

gUnk_08B44984:: @ 08B44984
	.incbin "baserom.gba", 0xB44984, 0x0000008

gUnk_08B4498C:: @ 08B4498C
	.incbin "baserom.gba", 0xB4498C, 0x000000C

gUnk_08B44998:: @ 08B44998
	.incbin "baserom.gba", 0xB44998, 0x0000010

gUnk_08B449A8:: @ 08B449A8
	.incbin "baserom.gba", 0xB449A8, 0x000000C

gUnk_08B449B4:: @ 08B449B4
	.incbin "baserom.gba", 0xB449B4, 0x0000010

gUnk_08B449C4:: @ 08B449C4
	.incbin "baserom.gba", 0xB449C4, 0x000000C

gUnk_08B449D0:: @ 08B449D0
	.incbin "baserom.gba", 0xB449D0, 0x0000010

gUnk_08B449E0:: @ 08B449E0
	.incbin "baserom.gba", 0xB449E0, 0x0000014

gUnk_08B449F4:: @ 08B449F4
	.incbin "baserom.gba", 0xB449F4, 0x0000018

gUnk_08B44A0C:: @ 08B44A0C
	.incbin "baserom.gba", 0xB44A0C, 0x0000010

gUnk_08B44A1C:: @ 08B44A1C
	.incbin "baserom.gba", 0xB44A1C, 0x0000010

gUnk_08B44A2C:: @ 08B44A2C
	.incbin "baserom.gba", 0xB44A2C, 0x0000010

gUnk_08B44A3C:: @ 08B44A3C
	.incbin "baserom.gba", 0xB44A3C, 0x0000010

gUnk_08B44A4C:: @ 08B44A4C
	.incbin "baserom.gba", 0xB44A4C, 0x0000014

gUnk_08B44A60:: @ 08B44A60
	.incbin "baserom.gba", 0xB44A60, 0x0000014

gUnk_08B44A74:: @ 08B44A74
	.incbin "baserom.gba", 0xB44A74, 0x000000C

gUnk_08B44A80:: @ 08B44A80
	.incbin "baserom.gba", 0xB44A80, 0x000000C

gUnk_08B44A8C:: @ 08B44A8C
	.incbin "baserom.gba", 0xB44A8C, 0x000000C

gUnk_08B44A98:: @ 08B44A98
	.incbin "baserom.gba", 0xB44A98, 0x0000010

gUnk_08B44AA8:: @ 08B44AA8
	.incbin "baserom.gba", 0xB44AA8, 0x0000014

gUnk_08B44ABC:: @ 08B44ABC
	.incbin "baserom.gba", 0xB44ABC, 0x0000010

gUnk_08B44ACC:: @ 08B44ACC
	.incbin "baserom.gba", 0xB44ACC, 0x000000C

gUnk_08B44AD8:: @ 08B44AD8
	.incbin "baserom.gba", 0xB44AD8, 0x000000C

gUnk_08B44AE4:: @ 08B44AE4
	.incbin "baserom.gba", 0xB44AE4, 0x000004C

gUnk_08B44B30:: @ 08B44B30
	.incbin "baserom.gba", 0xB44B30, 0x0000014

gUnk_08B44B44:: @ 08B44B44
	.incbin "baserom.gba", 0xB44B44, 0x000000C

gUnk_08B44B50:: @ 08B44B50
	.incbin "baserom.gba", 0xB44B50, 0x000000C

gUnk_08B44B5C:: @ 08B44B5C
	.incbin "baserom.gba", 0xB44B5C, 0x000000C

gUnk_08B44B68:: @ 08B44B68
	.incbin "baserom.gba", 0xB44B68, 0x0000008

gUnk_08B44B70:: @ 08B44B70
	.incbin "baserom.gba", 0xB44B70, 0x000000C

gUnk_08B44B7C:: @ 08B44B7C
	.incbin "baserom.gba", 0xB44B7C, 0x000000C

gUnk_08B44B88:: @ 08B44B88
	.incbin "baserom.gba", 0xB44B88, 0x0000008

gUnk_08B44B90:: @ 08B44B90
	.incbin "baserom.gba", 0xB44B90, 0x0000008

gUnk_08B44B98:: @ 08B44B98
	.incbin "baserom.gba", 0xB44B98, 0x0000010

gUnk_08B44BA8:: @ 08B44BA8
	.incbin "baserom.gba", 0xB44BA8, 0x000000C

gUnk_08B44BB4:: @ 08B44BB4
	.incbin "baserom.gba", 0xB44BB4, 0x000000C

gUnk_08B44BC0:: @ 08B44BC0
	.incbin "baserom.gba", 0xB44BC0, 0x000000C

gUnk_08B44BCC:: @ 08B44BCC
	.incbin "baserom.gba", 0xB44BCC, 0x000000C

gUnk_08B44BD8:: @ 08B44BD8
	.incbin "baserom.gba", 0xB44BD8, 0x000000C

gUnk_08B44BE4:: @ 08B44BE4
	.incbin "baserom.gba", 0xB44BE4, 0x0000010

gUnk_08B44BF4:: @ 08B44BF4
	.incbin "baserom.gba", 0xB44BF4, 0x0000014

gUnk_08B44C08:: @ 08B44C08
	.incbin "baserom.gba", 0xB44C08, 0x000000C

gUnk_08B44C14:: @ 08B44C14
	.incbin "baserom.gba", 0xB44C14, 0x0000010

gUnk_08B44C24:: @ 08B44C24
	.incbin "baserom.gba", 0xB44C24, 0x000000C

gUnk_08B44C30:: @ 08B44C30
	.incbin "baserom.gba", 0xB44C30, 0x0000010

gUnk_08B44C40:: @ 08B44C40
	.incbin "baserom.gba", 0xB44C40, 0x0000010

gUnk_08B44C50:: @ 08B44C50
	.incbin "baserom.gba", 0xB44C50, 0x0000010

gUnk_08B44C60:: @ 08B44C60
	.incbin "baserom.gba", 0xB44C60, 0x0000008

gUnk_08B44C68:: @ 08B44C68
	.incbin "baserom.gba", 0xB44C68, 0x000000C

gUnk_08B44C74:: @ 08B44C74
	.incbin "baserom.gba", 0xB44C74, 0x000000C

gUnk_08B44C80:: @ 08B44C80
	.incbin "baserom.gba", 0xB44C80, 0x0000010

gUnk_08B44C90:: @ 08B44C90
	.incbin "baserom.gba", 0xB44C90, 0x0000010

gUnk_08B44CA0:: @ 08B44CA0
	.incbin "baserom.gba", 0xB44CA0, 0x0000010

gUnk_08B44CB0:: @ 08B44CB0
	.incbin "baserom.gba", 0xB44CB0, 0x0000008

gUnk_08B44CB8:: @ 08B44CB8
	.incbin "baserom.gba", 0xB44CB8, 0x000000C

gUnk_08B44CC4:: @ 08B44CC4
	.incbin "baserom.gba", 0xB44CC4, 0x000004C

gUnk_08B44D10:: @ 08B44D10
	.incbin "baserom.gba", 0xB44D10, 0x0000018

gUnk_08B44D28:: @ 08B44D28
	.incbin "baserom.gba", 0xB44D28, 0x0000008

gUnk_08B44D30:: @ 08B44D30
	.incbin "baserom.gba", 0xB44D30, 0x0000010

gUnk_08B44D40:: @ 08B44D40
	.incbin "baserom.gba", 0xB44D40, 0x0000014

gUnk_08B44D54:: @ 08B44D54
	.incbin "baserom.gba", 0xB44D54, 0x0000010

gUnk_08B44D64:: @ 08B44D64
	.incbin "baserom.gba", 0xB44D64, 0x0000010

gUnk_08B44D74:: @ 08B44D74
	.incbin "baserom.gba", 0xB44D74, 0x000000C

gUnk_08B44D80:: @ 08B44D80
	.incbin "baserom.gba", 0xB44D80, 0x000000C

gUnk_08B44D8C:: @ 08B44D8C
	.incbin "baserom.gba", 0xB44D8C, 0x0000010

gUnk_08B44D9C:: @ 08B44D9C
	.incbin "baserom.gba", 0xB44D9C, 0x0000008

gUnk_08B44DA4:: @ 08B44DA4
	.incbin "baserom.gba", 0xB44DA4, 0x0000010

gUnk_08B44DB4:: @ 08B44DB4
	.incbin "baserom.gba", 0xB44DB4, 0x0000014

gUnk_08B44DC8:: @ 08B44DC8
	.incbin "baserom.gba", 0xB44DC8, 0x0000010

gUnk_08B44DD8:: @ 08B44DD8
	.incbin "baserom.gba", 0xB44DD8, 0x0000010

gUnk_08B44DE8:: @ 08B44DE8
	.incbin "baserom.gba", 0xB44DE8, 0x0000010

gUnk_08B44DF8:: @ 08B44DF8
	.incbin "baserom.gba", 0xB44DF8, 0x0000014

gUnk_08B44E0C:: @ 08B44E0C
	.incbin "baserom.gba", 0xB44E0C, 0x0000018

gUnk_08B44E24:: @ 08B44E24
	.incbin "baserom.gba", 0xB44E24, 0x0000014

gUnk_08B44E38:: @ 08B44E38
	.incbin "baserom.gba", 0xB44E38, 0x0000014

gUnk_08B44E4C:: @ 08B44E4C
	.incbin "baserom.gba", 0xB44E4C, 0x0000010

gUnk_08B44E5C:: @ 08B44E5C
	.incbin "baserom.gba", 0xB44E5C, 0x0000014

gUnk_08B44E70:: @ 08B44E70
	.incbin "baserom.gba", 0xB44E70, 0x0000014

gUnk_08B44E84:: @ 08B44E84
	.incbin "baserom.gba", 0xB44E84, 0x0000014

gUnk_08B44E98:: @ 08B44E98
	.incbin "baserom.gba", 0xB44E98, 0x0000010

gUnk_08B44EA8:: @ 08B44EA8
	.incbin "baserom.gba", 0xB44EA8, 0x0000010

gUnk_08B44EB8:: @ 08B44EB8
	.incbin "baserom.gba", 0xB44EB8, 0x0000014

gUnk_08B44ECC:: @ 08B44ECC
	.incbin "baserom.gba", 0xB44ECC, 0x0000014

gUnk_08B44EE0:: @ 08B44EE0
	.incbin "baserom.gba", 0xB44EE0, 0x0000018

gUnk_08B44EF8:: @ 08B44EF8
	.incbin "baserom.gba", 0xB44EF8, 0x0000018

gUnk_08B44F10:: @ 08B44F10
	.incbin "baserom.gba", 0xB44F10, 0x000000C

gUnk_08B44F1C:: @ 08B44F1C
	.incbin "baserom.gba", 0xB44F1C, 0x0000010

gUnk_08B44F2C:: @ 08B44F2C
	.incbin "baserom.gba", 0xB44F2C, 0x000004C

gUnk_08B44F78:: @ 08B44F78
	.incbin "baserom.gba", 0xB44F78, 0x0000010

gUnk_08B44F88:: @ 08B44F88
	.incbin "baserom.gba", 0xB44F88, 0x0000010

gUnk_08B44F98:: @ 08B44F98
	.incbin "baserom.gba", 0xB44F98, 0x0000014

gUnk_08B44FAC:: @ 08B44FAC
	.incbin "baserom.gba", 0xB44FAC, 0x0000014

gUnk_08B44FC0:: @ 08B44FC0
	.incbin "baserom.gba", 0xB44FC0, 0x0000014

gUnk_08B44FD4:: @ 08B44FD4
	.incbin "baserom.gba", 0xB44FD4, 0x0000014

gUnk_08B44FE8:: @ 08B44FE8
	.incbin "baserom.gba", 0xB44FE8, 0x0000010

gUnk_08B44FF8:: @ 08B44FF8
	.incbin "baserom.gba", 0xB44FF8, 0x0000010

gUnk_08B45008:: @ 08B45008
	.incbin "baserom.gba", 0xB45008, 0x0000014

gUnk_08B4501C:: @ 08B4501C
	.incbin "baserom.gba", 0xB4501C, 0x0000014

gUnk_08B45030:: @ 08B45030
	.incbin "baserom.gba", 0xB45030, 0x0000008

gUnk_08B45038:: @ 08B45038
	.incbin "baserom.gba", 0xB45038, 0x0000018

gUnk_08B45050:: @ 08B45050
	.incbin "baserom.gba", 0xB45050, 0x0000008

gUnk_08B45058:: @ 08B45058
	.incbin "baserom.gba", 0xB45058, 0x0000008

gUnk_08B45060:: @ 08B45060
	.incbin "baserom.gba", 0xB45060, 0x000000C

gUnk_08B4506C:: @ 08B4506C
	.incbin "baserom.gba", 0xB4506C, 0x0000010

gUnk_08B4507C:: @ 08B4507C
	.incbin "baserom.gba", 0xB4507C, 0x0000014

gUnk_08B45090:: @ 08B45090
	.incbin "baserom.gba", 0xB45090, 0x0000014

gUnk_08B450A4:: @ 08B450A4
	.incbin "baserom.gba", 0xB450A4, 0x000000C

gUnk_08B450B0:: @ 08B450B0
	.incbin "baserom.gba", 0xB450B0, 0x000000C

gUnk_08B450BC:: @ 08B450BC
	.incbin "baserom.gba", 0xB450BC, 0x000000C

gUnk_08B450C8:: @ 08B450C8
	.incbin "baserom.gba", 0xB450C8, 0x0000010

gUnk_08B450D8:: @ 08B450D8
	.incbin "baserom.gba", 0xB450D8, 0x0000010

gUnk_08B450E8:: @ 08B450E8
	.incbin "baserom.gba", 0xB450E8, 0x0000014

gUnk_08B450FC:: @ 08B450FC
	.incbin "baserom.gba", 0xB450FC, 0x0000014

gUnk_08B45110:: @ 08B45110
	.incbin "baserom.gba", 0xB45110, 0x0000018

gUnk_08B45128:: @ 08B45128
	.incbin "baserom.gba", 0xB45128, 0x0000018

gUnk_08B45140:: @ 08B45140
	.incbin "baserom.gba", 0xB45140, 0x0000014

gUnk_08B45154:: @ 08B45154
	.incbin "baserom.gba", 0xB45154, 0x0000010

gUnk_08B45164:: @ 08B45164
	.incbin "baserom.gba", 0xB45164, 0x000000C

gUnk_08B45170:: @ 08B45170
	.incbin "baserom.gba", 0xB45170, 0x000000C

gUnk_08B4517C:: @ 08B4517C
	.incbin "baserom.gba", 0xB4517C, 0x000004C

gUnk_08B451C8:: @ 08B451C8
	.incbin "baserom.gba", 0xB451C8, 0x0000004

gUnk_08B451CC:: @ 08B451CC
	.incbin "baserom.gba", 0xB451CC, 0x0000004

gUnk_08B451D0:: @ 08B451D0
	.incbin "baserom.gba", 0xB451D0, 0x0000004

gUnk_08B451D4:: @ 08B451D4
	.incbin "baserom.gba", 0xB451D4, 0x0000004

gUnk_08B451D8:: @ 08B451D8
	.incbin "baserom.gba", 0xB451D8, 0x0000004

gUnk_08B451DC:: @ 08B451DC
	.incbin "baserom.gba", 0xB451DC, 0x0000004

gUnk_08B451E0:: @ 08B451E0
	.incbin "baserom.gba", 0xB451E0, 0x0000004

gUnk_08B451E4:: @ 08B451E4
	.incbin "baserom.gba", 0xB451E4, 0x0000004

gUnk_08B451E8:: @ 08B451E8
	.incbin "baserom.gba", 0xB451E8, 0x0000004

gUnk_08B451EC:: @ 08B451EC
	.incbin "baserom.gba", 0xB451EC, 0x0000004

gUnk_08B451F0:: @ 08B451F0
	.incbin "baserom.gba", 0xB451F0, 0x0000004

gUnk_08B451F4:: @ 08B451F4
	.incbin "baserom.gba", 0xB451F4, 0x0000008

gUnk_08B451FC:: @ 08B451FC
	.incbin "baserom.gba", 0xB451FC, 0x0000004

gUnk_08B45200:: @ 08B45200
	.incbin "baserom.gba", 0xB45200, 0x0000004

gUnk_08B45204:: @ 08B45204
	.incbin "baserom.gba", 0xB45204, 0x0000004

gUnk_08B45208:: @ 08B45208
	.incbin "baserom.gba", 0xB45208, 0x0000004

gUnk_08B4520C:: @ 08B4520C
	.incbin "baserom.gba", 0xB4520C, 0x0000004

gUnk_08B45210:: @ 08B45210
	.incbin "baserom.gba", 0xB45210, 0x0000004

gUnk_08B45214:: @ 08B45214
	.incbin "baserom.gba", 0xB45214, 0x0000004

gUnk_08B45218:: @ 08B45218
	.incbin "baserom.gba", 0xB45218, 0x0000004

gUnk_08B4521C:: @ 08B4521C
	.incbin "baserom.gba", 0xB4521C, 0x0000004

gUnk_08B45220:: @ 08B45220
	.incbin "baserom.gba", 0xB45220, 0x0000004

gUnk_08B45224:: @ 08B45224
	.incbin "baserom.gba", 0xB45224, 0x0000004

gUnk_08B45228:: @ 08B45228
	.incbin "baserom.gba", 0xB45228, 0x0000004

gUnk_08B4522C:: @ 08B4522C
	.incbin "baserom.gba", 0xB4522C, 0x0000004

gUnk_08B45230:: @ 08B45230
	.incbin "baserom.gba", 0xB45230, 0x0000004

gUnk_08B45234:: @ 08B45234
	.incbin "baserom.gba", 0xB45234, 0x0000004

gUnk_08B45238:: @ 08B45238
	.incbin "baserom.gba", 0xB45238, 0x0000004

gUnk_08B4523C:: @ 08B4523C
	.incbin "baserom.gba", 0xB4523C, 0x0000004

gUnk_08B45240:: @ 08B45240
	.incbin "baserom.gba", 0xB45240, 0x0000004

gUnk_08B45244:: @ 08B45244
	.incbin "baserom.gba", 0xB45244, 0x0000004

gUnk_08B45248:: @ 08B45248
	.incbin "baserom.gba", 0xB45248, 0x000004C

gUnk_08B45294:: @ 08B45294
	.incbin "baserom.gba", 0xB45294, 0x0000014

gUnk_08B452A8:: @ 08B452A8
	.incbin "baserom.gba", 0xB452A8, 0x0000010

gUnk_08B452B8:: @ 08B452B8
	.incbin "baserom.gba", 0xB452B8, 0x0000014

gUnk_08B452CC:: @ 08B452CC
	.incbin "baserom.gba", 0xB452CC, 0x0000014

gUnk_08B452E0:: @ 08B452E0
	.incbin "baserom.gba", 0xB452E0, 0x0000010

gUnk_08B452F0:: @ 08B452F0
	.incbin "baserom.gba", 0xB452F0, 0x0000014

gUnk_08B45304:: @ 08B45304
	.incbin "baserom.gba", 0xB45304, 0x000000C

gUnk_08B45310:: @ 08B45310
	.incbin "baserom.gba", 0xB45310, 0x0000010

gUnk_08B45320:: @ 08B45320
	.incbin "baserom.gba", 0xB45320, 0x0000010

gUnk_08B45330:: @ 08B45330
	.incbin "baserom.gba", 0xB45330, 0x0000010

gUnk_08B45340:: @ 08B45340
	.incbin "baserom.gba", 0xB45340, 0x0000008

gUnk_08B45348:: @ 08B45348
	.incbin "baserom.gba", 0xB45348, 0x0000014

gUnk_08B4535C:: @ 08B4535C
	.incbin "baserom.gba", 0xB4535C, 0x0000008

gUnk_08B45364:: @ 08B45364
	.incbin "baserom.gba", 0xB45364, 0x000000C

gUnk_08B45370:: @ 08B45370
	.incbin "baserom.gba", 0xB45370, 0x000000C

gUnk_08B4537C:: @ 08B4537C
	.incbin "baserom.gba", 0xB4537C, 0x0000010

gUnk_08B4538C:: @ 08B4538C
	.incbin "baserom.gba", 0xB4538C, 0x0000014

gUnk_08B453A0:: @ 08B453A0
	.incbin "baserom.gba", 0xB453A0, 0x0000014

gUnk_08B453B4:: @ 08B453B4
	.incbin "baserom.gba", 0xB453B4, 0x0000010

gUnk_08B453C4:: @ 08B453C4
	.incbin "baserom.gba", 0xB453C4, 0x000000C

gUnk_08B453D0:: @ 08B453D0
	.incbin "baserom.gba", 0xB453D0, 0x0000010

gUnk_08B453E0:: @ 08B453E0
	.incbin "baserom.gba", 0xB453E0, 0x0000010

gUnk_08B453F0:: @ 08B453F0
	.incbin "baserom.gba", 0xB453F0, 0x0000010

gUnk_08B45400:: @ 08B45400
	.incbin "baserom.gba", 0xB45400, 0x0000014

gUnk_08B45414:: @ 08B45414
	.incbin "baserom.gba", 0xB45414, 0x0000014

gUnk_08B45428:: @ 08B45428
	.incbin "baserom.gba", 0xB45428, 0x0000014

gUnk_08B4543C:: @ 08B4543C
	.incbin "baserom.gba", 0xB4543C, 0x0000018

gUnk_08B45454:: @ 08B45454
	.incbin "baserom.gba", 0xB45454, 0x0000014

gUnk_08B45468:: @ 08B45468
	.incbin "baserom.gba", 0xB45468, 0x0000014

gUnk_08B4547C:: @ 08B4547C
	.incbin "baserom.gba", 0xB4547C, 0x000000C

gUnk_08B45488:: @ 08B45488
	.incbin "baserom.gba", 0xB45488, 0x0000008

gUnk_08B45490:: @ 08B45490
	.incbin "baserom.gba", 0xB45490, 0x000004C

gUnk_08B454DC:: @ 08B454DC
	.incbin "baserom.gba", 0xB454DC, 0x0000010

gUnk_08B454EC:: @ 08B454EC
	.incbin "baserom.gba", 0xB454EC, 0x0000014

gUnk_08B45500:: @ 08B45500
	.incbin "baserom.gba", 0xB45500, 0x0000014

gUnk_08B45514:: @ 08B45514
	.incbin "baserom.gba", 0xB45514, 0x0000014

gUnk_08B45528:: @ 08B45528
	.incbin "baserom.gba", 0xB45528, 0x0000014

gUnk_08B4553C:: @ 08B4553C
	.incbin "baserom.gba", 0xB4553C, 0x0000018

gUnk_08B45554:: @ 08B45554
	.incbin "baserom.gba", 0xB45554, 0x0000010

gUnk_08B45564:: @ 08B45564
	.incbin "baserom.gba", 0xB45564, 0x0000014

gUnk_08B45578:: @ 08B45578
	.incbin "baserom.gba", 0xB45578, 0x0000014

gUnk_08B4558C:: @ 08B4558C
	.incbin "baserom.gba", 0xB4558C, 0x0000014

gUnk_08B455A0:: @ 08B455A0
	.incbin "baserom.gba", 0xB455A0, 0x0000008

gUnk_08B455A8:: @ 08B455A8
	.incbin "baserom.gba", 0xB455A8, 0x0000018

gUnk_08B455C0:: @ 08B455C0
	.incbin "baserom.gba", 0xB455C0, 0x000000C

gUnk_08B455CC:: @ 08B455CC
	.incbin "baserom.gba", 0xB455CC, 0x0000008

gUnk_08B455D4:: @ 08B455D4
	.incbin "baserom.gba", 0xB455D4, 0x0000008

gUnk_08B455DC:: @ 08B455DC
	.incbin "baserom.gba", 0xB455DC, 0x000000C

gUnk_08B455E8:: @ 08B455E8
	.incbin "baserom.gba", 0xB455E8, 0x0000010

gUnk_08B455F8:: @ 08B455F8
	.incbin "baserom.gba", 0xB455F8, 0x0000010

gUnk_08B45608:: @ 08B45608
	.incbin "baserom.gba", 0xB45608, 0x000000C

gUnk_08B45614:: @ 08B45614
	.incbin "baserom.gba", 0xB45614, 0x0000010

gUnk_08B45624:: @ 08B45624
	.incbin "baserom.gba", 0xB45624, 0x000000C

gUnk_08B45630:: @ 08B45630
	.incbin "baserom.gba", 0xB45630, 0x000000C

gUnk_08B4563C:: @ 08B4563C
	.incbin "baserom.gba", 0xB4563C, 0x000000C

gUnk_08B45648:: @ 08B45648
	.incbin "baserom.gba", 0xB45648, 0x0000014

gUnk_08B4565C:: @ 08B4565C
	.incbin "baserom.gba", 0xB4565C, 0x0000018

gUnk_08B45674:: @ 08B45674
	.incbin "baserom.gba", 0xB45674, 0x0000018

gUnk_08B4568C:: @ 08B4568C
	.incbin "baserom.gba", 0xB4568C, 0x000001C

gUnk_08B456A8:: @ 08B456A8
	.incbin "baserom.gba", 0xB456A8, 0x0000010

gUnk_08B456B8:: @ 08B456B8
	.incbin "baserom.gba", 0xB456B8, 0x0000010

gUnk_08B456C8:: @ 08B456C8
	.incbin "baserom.gba", 0xB456C8, 0x0000010

gUnk_08B456D8:: @ 08B456D8
	.incbin "baserom.gba", 0xB456D8, 0x000000C

gUnk_08B456E4:: @ 08B456E4
	.incbin "baserom.gba", 0xB456E4, 0x000004C

gUnk_08B45730:: @ 08B45730
	.incbin "baserom.gba", 0xB45730, 0x000000C

gUnk_08B4573C:: @ 08B4573C
	.incbin "baserom.gba", 0xB4573C, 0x0000014

gUnk_08B45750:: @ 08B45750
	.incbin "baserom.gba", 0xB45750, 0x0000014

gUnk_08B45764:: @ 08B45764
	.incbin "baserom.gba", 0xB45764, 0x0000010

gUnk_08B45774:: @ 08B45774
	.incbin "baserom.gba", 0xB45774, 0x0000014

gUnk_08B45788:: @ 08B45788
	.incbin "baserom.gba", 0xB45788, 0x0000018

gUnk_08B457A0:: @ 08B457A0
	.incbin "baserom.gba", 0xB457A0, 0x0000014

gUnk_08B457B4:: @ 08B457B4
	.incbin "baserom.gba", 0xB457B4, 0x0000014

gUnk_08B457C8:: @ 08B457C8
	.incbin "baserom.gba", 0xB457C8, 0x0000014

gUnk_08B457DC:: @ 08B457DC
	.incbin "baserom.gba", 0xB457DC, 0x0000018

gUnk_08B457F4:: @ 08B457F4
	.incbin "baserom.gba", 0xB457F4, 0x000000C

gUnk_08B45800:: @ 08B45800
	.incbin "baserom.gba", 0xB45800, 0x0000018

gUnk_08B45818:: @ 08B45818
	.incbin "baserom.gba", 0xB45818, 0x000000C

gUnk_08B45824:: @ 08B45824
	.incbin "baserom.gba", 0xB45824, 0x0000008

gUnk_08B4582C:: @ 08B4582C
	.incbin "baserom.gba", 0xB4582C, 0x0000008

gUnk_08B45834:: @ 08B45834
	.incbin "baserom.gba", 0xB45834, 0x000000C

gUnk_08B45840:: @ 08B45840
	.incbin "baserom.gba", 0xB45840, 0x0000010

gUnk_08B45850:: @ 08B45850
	.incbin "baserom.gba", 0xB45850, 0x0000010

gUnk_08B45860:: @ 08B45860
	.incbin "baserom.gba", 0xB45860, 0x0000008

gUnk_08B45868:: @ 08B45868
	.incbin "baserom.gba", 0xB45868, 0x0000010

gUnk_08B45878:: @ 08B45878
	.incbin "baserom.gba", 0xB45878, 0x0000008

gUnk_08B45880:: @ 08B45880
	.incbin "baserom.gba", 0xB45880, 0x000000C

gUnk_08B4588C:: @ 08B4588C
	.incbin "baserom.gba", 0xB4588C, 0x000000C

gUnk_08B45898:: @ 08B45898
	.incbin "baserom.gba", 0xB45898, 0x0000014

gUnk_08B458AC:: @ 08B458AC
	.incbin "baserom.gba", 0xB458AC, 0x0000018

gUnk_08B458C4:: @ 08B458C4
	.incbin "baserom.gba", 0xB458C4, 0x0000018

gUnk_08B458DC:: @ 08B458DC
	.incbin "baserom.gba", 0xB458DC, 0x000001C

gUnk_08B458F8:: @ 08B458F8
	.incbin "baserom.gba", 0xB458F8, 0x0000010

gUnk_08B45908:: @ 08B45908
	.incbin "baserom.gba", 0xB45908, 0x000000C

gUnk_08B45914:: @ 08B45914
	.incbin "baserom.gba", 0xB45914, 0x0000010

gUnk_08B45924:: @ 08B45924
	.incbin "baserom.gba", 0xB45924, 0x0000010

gUnk_08B45934:: @ 08B45934
	.incbin "baserom.gba", 0xB45934, 0x000004C

gUnk_08B45980:: @ 08B45980
	.incbin "baserom.gba", 0xB45980, 0x0000008

gUnk_08B45988:: @ 08B45988
	.incbin "baserom.gba", 0xB45988, 0x0000004

gUnk_08B4598C:: @ 08B4598C
	.incbin "baserom.gba", 0xB4598C, 0x0000004

gUnk_08B45990:: @ 08B45990
	.incbin "baserom.gba", 0xB45990, 0x0000004

gUnk_08B45994:: @ 08B45994
	.incbin "baserom.gba", 0xB45994, 0x0000004

gUnk_08B45998:: @ 08B45998
	.incbin "baserom.gba", 0xB45998, 0x0000004

gUnk_08B4599C:: @ 08B4599C
	.incbin "baserom.gba", 0xB4599C, 0x0000004

gUnk_08B459A0:: @ 08B459A0
	.incbin "baserom.gba", 0xB459A0, 0x0000004

gUnk_08B459A4:: @ 08B459A4
	.incbin "baserom.gba", 0xB459A4, 0x0000004

gUnk_08B459A8:: @ 08B459A8
	.incbin "baserom.gba", 0xB459A8, 0x0000004

gUnk_08B459AC:: @ 08B459AC
	.incbin "baserom.gba", 0xB459AC, 0x0000004

gUnk_08B459B0:: @ 08B459B0
	.incbin "baserom.gba", 0xB459B0, 0x0000004

gUnk_08B459B4:: @ 08B459B4
	.incbin "baserom.gba", 0xB459B4, 0x0000004

gUnk_08B459B8:: @ 08B459B8
	.incbin "baserom.gba", 0xB459B8, 0x0000004

gUnk_08B459BC:: @ 08B459BC
	.incbin "baserom.gba", 0xB459BC, 0x0000004

gUnk_08B459C0:: @ 08B459C0
	.incbin "baserom.gba", 0xB459C0, 0x0000008

gUnk_08B459C8:: @ 08B459C8
	.incbin "baserom.gba", 0xB459C8, 0x000000C

gUnk_08B459D4:: @ 08B459D4
	.incbin "baserom.gba", 0xB459D4, 0x0000004

gUnk_08B459D8:: @ 08B459D8
	.incbin "baserom.gba", 0xB459D8, 0x0000004

gUnk_08B459DC:: @ 08B459DC
	.incbin "baserom.gba", 0xB459DC, 0x0000004

gUnk_08B459E0:: @ 08B459E0
	.incbin "baserom.gba", 0xB459E0, 0x0000004

gUnk_08B459E4:: @ 08B459E4
	.incbin "baserom.gba", 0xB459E4, 0x0000004

gUnk_08B459E8:: @ 08B459E8
	.incbin "baserom.gba", 0xB459E8, 0x0000004

gUnk_08B459EC:: @ 08B459EC
	.incbin "baserom.gba", 0xB459EC, 0x0000004

gUnk_08B459F0:: @ 08B459F0
	.incbin "baserom.gba", 0xB459F0, 0x0000004

gUnk_08B459F4:: @ 08B459F4
	.incbin "baserom.gba", 0xB459F4, 0x0000004

gUnk_08B459F8:: @ 08B459F8
	.incbin "baserom.gba", 0xB459F8, 0x0000004

gUnk_08B459FC:: @ 08B459FC
	.incbin "baserom.gba", 0xB459FC, 0x0000004

gUnk_08B45A00:: @ 08B45A00
	.incbin "baserom.gba", 0xB45A00, 0x0000004

gUnk_08B45A04:: @ 08B45A04
	.incbin "baserom.gba", 0xB45A04, 0x0000004

gUnk_08B45A08:: @ 08B45A08
	.incbin "baserom.gba", 0xB45A08, 0x0000004

gUnk_08B45A0C:: @ 08B45A0C
	.incbin "baserom.gba", 0xB45A0C, 0x000004C

gUnk_08B45A58:: @ 08B45A58
	.incbin "baserom.gba", 0xB45A58, 0x0000004

gUnk_08B45A5C:: @ 08B45A5C
	.incbin "baserom.gba", 0xB45A5C, 0x0000004

gUnk_08B45A60:: @ 08B45A60
	.incbin "baserom.gba", 0xB45A60, 0x0000004

gUnk_08B45A64:: @ 08B45A64
	.incbin "baserom.gba", 0xB45A64, 0x0000004

gUnk_08B45A68:: @ 08B45A68
	.incbin "baserom.gba", 0xB45A68, 0x0000004

gUnk_08B45A6C:: @ 08B45A6C
	.incbin "baserom.gba", 0xB45A6C, 0x0000004

gUnk_08B45A70:: @ 08B45A70
	.incbin "baserom.gba", 0xB45A70, 0x0000004

gUnk_08B45A74:: @ 08B45A74
	.incbin "baserom.gba", 0xB45A74, 0x0000004

gUnk_08B45A78:: @ 08B45A78
	.incbin "baserom.gba", 0xB45A78, 0x0000004

gUnk_08B45A7C:: @ 08B45A7C
	.incbin "baserom.gba", 0xB45A7C, 0x0000004

gUnk_08B45A80:: @ 08B45A80
	.incbin "baserom.gba", 0xB45A80, 0x0000004

gUnk_08B45A84:: @ 08B45A84
	.incbin "baserom.gba", 0xB45A84, 0x0000004

gUnk_08B45A88:: @ 08B45A88
	.incbin "baserom.gba", 0xB45A88, 0x0000004

gUnk_08B45A8C:: @ 08B45A8C
	.incbin "baserom.gba", 0xB45A8C, 0x0000004

gUnk_08B45A90:: @ 08B45A90
	.incbin "baserom.gba", 0xB45A90, 0x0000004

gUnk_08B45A94:: @ 08B45A94
	.incbin "baserom.gba", 0xB45A94, 0x0000004

gUnk_08B45A98:: @ 08B45A98
	.incbin "baserom.gba", 0xB45A98, 0x0000008

gUnk_08B45AA0:: @ 08B45AA0
	.incbin "baserom.gba", 0xB45AA0, 0x0000004

gUnk_08B45AA4:: @ 08B45AA4
	.incbin "baserom.gba", 0xB45AA4, 0x0000004

gUnk_08B45AA8:: @ 08B45AA8
	.incbin "baserom.gba", 0xB45AA8, 0x0000004

gUnk_08B45AAC:: @ 08B45AAC
	.incbin "baserom.gba", 0xB45AAC, 0x0000004

gUnk_08B45AB0:: @ 08B45AB0
	.incbin "baserom.gba", 0xB45AB0, 0x0000004

gUnk_08B45AB4:: @ 08B45AB4
	.incbin "baserom.gba", 0xB45AB4, 0x0000004

gUnk_08B45AB8:: @ 08B45AB8
	.incbin "baserom.gba", 0xB45AB8, 0x0000004

gUnk_08B45ABC:: @ 08B45ABC
	.incbin "baserom.gba", 0xB45ABC, 0x0000004

gUnk_08B45AC0:: @ 08B45AC0
	.incbin "baserom.gba", 0xB45AC0, 0x0000004

gUnk_08B45AC4:: @ 08B45AC4
	.incbin "baserom.gba", 0xB45AC4, 0x0000004

gUnk_08B45AC8:: @ 08B45AC8
	.incbin "baserom.gba", 0xB45AC8, 0x0000004

gUnk_08B45ACC:: @ 08B45ACC
	.incbin "baserom.gba", 0xB45ACC, 0x0000004

gUnk_08B45AD0:: @ 08B45AD0
	.incbin "baserom.gba", 0xB45AD0, 0x0000004

gUnk_08B45AD4:: @ 08B45AD4
	.incbin "baserom.gba", 0xB45AD4, 0x0000004

gUnk_08B45AD8:: @ 08B45AD8
	.incbin "baserom.gba", 0xB45AD8, 0x000004C

gUnk_08B45B24:: @ 08B45B24
	.incbin "baserom.gba", 0xB45B24, 0x0000010

gUnk_08B45B34:: @ 08B45B34
	.incbin "baserom.gba", 0xB45B34, 0x0000014

gUnk_08B45B48:: @ 08B45B48
	.incbin "baserom.gba", 0xB45B48, 0x000000C

gUnk_08B45B54:: @ 08B45B54
	.incbin "baserom.gba", 0xB45B54, 0x0000008

gUnk_08B45B5C:: @ 08B45B5C
	.incbin "baserom.gba", 0xB45B5C, 0x000000C

gUnk_08B45B68:: @ 08B45B68
	.incbin "baserom.gba", 0xB45B68, 0x0000010

gUnk_08B45B78:: @ 08B45B78
	.incbin "baserom.gba", 0xB45B78, 0x0000010

gUnk_08B45B88:: @ 08B45B88
	.incbin "baserom.gba", 0xB45B88, 0x0000010

gUnk_08B45B98:: @ 08B45B98
	.incbin "baserom.gba", 0xB45B98, 0x000000C

gUnk_08B45BA4:: @ 08B45BA4
	.incbin "baserom.gba", 0xB45BA4, 0x0000014

gUnk_08B45BB8:: @ 08B45BB8
	.incbin "baserom.gba", 0xB45BB8, 0x0000010

gUnk_08B45BC8:: @ 08B45BC8
	.incbin "baserom.gba", 0xB45BC8, 0x0000010

gUnk_08B45BD8:: @ 08B45BD8
	.incbin "baserom.gba", 0xB45BD8, 0x000000C

gUnk_08B45BE4:: @ 08B45BE4
	.incbin "baserom.gba", 0xB45BE4, 0x0000010

gUnk_08B45BF4:: @ 08B45BF4
	.incbin "baserom.gba", 0xB45BF4, 0x0000010

gUnk_08B45C04:: @ 08B45C04
	.incbin "baserom.gba", 0xB45C04, 0x0000010

gUnk_08B45C14:: @ 08B45C14
	.incbin "baserom.gba", 0xB45C14, 0x0000014

gUnk_08B45C28:: @ 08B45C28
	.incbin "baserom.gba", 0xB45C28, 0x0000008

gUnk_08B45C30:: @ 08B45C30
	.incbin "baserom.gba", 0xB45C30, 0x000000C

gUnk_08B45C3C:: @ 08B45C3C
	.incbin "baserom.gba", 0xB45C3C, 0x0000010

gUnk_08B45C4C:: @ 08B45C4C
	.incbin "baserom.gba", 0xB45C4C, 0x0000010

gUnk_08B45C5C:: @ 08B45C5C
	.incbin "baserom.gba", 0xB45C5C, 0x0000014

gUnk_08B45C70:: @ 08B45C70
	.incbin "baserom.gba", 0xB45C70, 0x000000C

gUnk_08B45C7C:: @ 08B45C7C
	.incbin "baserom.gba", 0xB45C7C, 0x000000C

gUnk_08B45C88:: @ 08B45C88
	.incbin "baserom.gba", 0xB45C88, 0x0000010

gUnk_08B45C98:: @ 08B45C98
	.incbin "baserom.gba", 0xB45C98, 0x0000010

gUnk_08B45CA8:: @ 08B45CA8
	.incbin "baserom.gba", 0xB45CA8, 0x0000014

gUnk_08B45CBC:: @ 08B45CBC
	.incbin "baserom.gba", 0xB45CBC, 0x000000C

gUnk_08B45CC8:: @ 08B45CC8
	.incbin "baserom.gba", 0xB45CC8, 0x0000008

gUnk_08B45CD0:: @ 08B45CD0
	.incbin "baserom.gba", 0xB45CD0, 0x0000010

gUnk_08B45CE0:: @ 08B45CE0
	.incbin "baserom.gba", 0xB45CE0, 0x0000010

gUnk_08B45CF0:: @ 08B45CF0
	.incbin "baserom.gba", 0xB45CF0, 0x000004C

gUnk_08B45D3C:: @ 08B45D3C
	.incbin "baserom.gba", 0xB45D3C, 0x000000C

gUnk_08B45D48:: @ 08B45D48
	.incbin "baserom.gba", 0xB45D48, 0x0000018

gUnk_08B45D60:: @ 08B45D60
	.incbin "baserom.gba", 0xB45D60, 0x0000010

gUnk_08B45D70:: @ 08B45D70
	.incbin "baserom.gba", 0xB45D70, 0x0000010

gUnk_08B45D80:: @ 08B45D80
	.incbin "baserom.gba", 0xB45D80, 0x0000014

gUnk_08B45D94:: @ 08B45D94
	.incbin "baserom.gba", 0xB45D94, 0x0000014

gUnk_08B45DA8:: @ 08B45DA8
	.incbin "baserom.gba", 0xB45DA8, 0x0000014

gUnk_08B45DBC:: @ 08B45DBC
	.incbin "baserom.gba", 0xB45DBC, 0x0000014

gUnk_08B45DD0:: @ 08B45DD0
	.incbin "baserom.gba", 0xB45DD0, 0x0000014

gUnk_08B45DE4:: @ 08B45DE4
	.incbin "baserom.gba", 0xB45DE4, 0x0000018

gUnk_08B45DFC:: @ 08B45DFC
	.incbin "baserom.gba", 0xB45DFC, 0x000000C

gUnk_08B45E08:: @ 08B45E08
	.incbin "baserom.gba", 0xB45E08, 0x0000018

gUnk_08B45E20:: @ 08B45E20
	.incbin "baserom.gba", 0xB45E20, 0x0000010

gUnk_08B45E30:: @ 08B45E30
	.incbin "baserom.gba", 0xB45E30, 0x000000C

gUnk_08B45E3C:: @ 08B45E3C
	.incbin "baserom.gba", 0xB45E3C, 0x0000008

gUnk_08B45E44:: @ 08B45E44
	.incbin "baserom.gba", 0xB45E44, 0x0000008

gUnk_08B45E4C:: @ 08B45E4C
	.incbin "baserom.gba", 0xB45E4C, 0x000000C

gUnk_08B45E58:: @ 08B45E58
	.incbin "baserom.gba", 0xB45E58, 0x000000C

gUnk_08B45E64:: @ 08B45E64
	.incbin "baserom.gba", 0xB45E64, 0x0000008

gUnk_08B45E6C:: @ 08B45E6C
	.incbin "baserom.gba", 0xB45E6C, 0x0000014

gUnk_08B45E80:: @ 08B45E80
	.incbin "baserom.gba", 0xB45E80, 0x000000C

gUnk_08B45E8C:: @ 08B45E8C
	.incbin "baserom.gba", 0xB45E8C, 0x000000C

gUnk_08B45E98:: @ 08B45E98
	.incbin "baserom.gba", 0xB45E98, 0x0000008

gUnk_08B45EA0:: @ 08B45EA0
	.incbin "baserom.gba", 0xB45EA0, 0x0000010

gUnk_08B45EB0:: @ 08B45EB0
	.incbin "baserom.gba", 0xB45EB0, 0x0000014

gUnk_08B45EC4:: @ 08B45EC4
	.incbin "baserom.gba", 0xB45EC4, 0x0000018

gUnk_08B45EDC:: @ 08B45EDC
	.incbin "baserom.gba", 0xB45EDC, 0x0000018

gUnk_08B45EF4:: @ 08B45EF4
	.incbin "baserom.gba", 0xB45EF4, 0x000000C

gUnk_08B45F00:: @ 08B45F00
	.incbin "baserom.gba", 0xB45F00, 0x000000C

gUnk_08B45F0C:: @ 08B45F0C
	.incbin "baserom.gba", 0xB45F0C, 0x0000014

gUnk_08B45F20:: @ 08B45F20
	.incbin "baserom.gba", 0xB45F20, 0x0000010

gUnk_08B45F30:: @ 08B45F30
	.incbin "baserom.gba", 0xB45F30, 0x000004C

gUnk_08B45F7C:: @ 08B45F7C
	.incbin "baserom.gba", 0xB45F7C, 0x0000014

gUnk_08B45F90:: @ 08B45F90
	.incbin "baserom.gba", 0xB45F90, 0x0000010

gUnk_08B45FA0:: @ 08B45FA0
	.incbin "baserom.gba", 0xB45FA0, 0x0000014

gUnk_08B45FB4:: @ 08B45FB4
	.incbin "baserom.gba", 0xB45FB4, 0x0000014

gUnk_08B45FC8:: @ 08B45FC8
	.incbin "baserom.gba", 0xB45FC8, 0x0000010

gUnk_08B45FD8:: @ 08B45FD8
	.incbin "baserom.gba", 0xB45FD8, 0x0000014

gUnk_08B45FEC:: @ 08B45FEC
	.incbin "baserom.gba", 0xB45FEC, 0x000000C

gUnk_08B45FF8:: @ 08B45FF8
	.incbin "baserom.gba", 0xB45FF8, 0x0000010

gUnk_08B46008:: @ 08B46008
	.incbin "baserom.gba", 0xB46008, 0x0000010

gUnk_08B46018:: @ 08B46018
	.incbin "baserom.gba", 0xB46018, 0x0000010

gUnk_08B46028:: @ 08B46028
	.incbin "baserom.gba", 0xB46028, 0x000000C

gUnk_08B46034:: @ 08B46034
	.incbin "baserom.gba", 0xB46034, 0x0000014

gUnk_08B46048:: @ 08B46048
	.incbin "baserom.gba", 0xB46048, 0x000000C

gUnk_08B46054:: @ 08B46054
	.incbin "baserom.gba", 0xB46054, 0x000000C

gUnk_08B46060:: @ 08B46060
	.incbin "baserom.gba", 0xB46060, 0x0000010

gUnk_08B46070:: @ 08B46070
	.incbin "baserom.gba", 0xB46070, 0x0000014

gUnk_08B46084:: @ 08B46084
	.incbin "baserom.gba", 0xB46084, 0x0000018

gUnk_08B4609C:: @ 08B4609C
	.incbin "baserom.gba", 0xB4609C, 0x0000018

gUnk_08B460B4:: @ 08B460B4
	.incbin "baserom.gba", 0xB460B4, 0x0000010

gUnk_08B460C4:: @ 08B460C4
	.incbin "baserom.gba", 0xB460C4, 0x0000008

gUnk_08B460CC:: @ 08B460CC
	.incbin "baserom.gba", 0xB460CC, 0x0000010

gUnk_08B460DC:: @ 08B460DC
	.incbin "baserom.gba", 0xB460DC, 0x0000014

gUnk_08B460F0:: @ 08B460F0
	.incbin "baserom.gba", 0xB460F0, 0x0000014

gUnk_08B46104:: @ 08B46104
	.incbin "baserom.gba", 0xB46104, 0x0000014

gUnk_08B46118:: @ 08B46118
	.incbin "baserom.gba", 0xB46118, 0x0000014

gUnk_08B4612C:: @ 08B4612C
	.incbin "baserom.gba", 0xB4612C, 0x0000014

gUnk_08B46140:: @ 08B46140
	.incbin "baserom.gba", 0xB46140, 0x0000018

gUnk_08B46158:: @ 08B46158
	.incbin "baserom.gba", 0xB46158, 0x0000018

gUnk_08B46170:: @ 08B46170
	.incbin "baserom.gba", 0xB46170, 0x0000014

gUnk_08B46184:: @ 08B46184
	.incbin "baserom.gba", 0xB46184, 0x000000C

gUnk_08B46190:: @ 08B46190
	.incbin "baserom.gba", 0xB46190, 0x0000008

gUnk_08B46198:: @ 08B46198
	.incbin "baserom.gba", 0xB46198, 0x000004C

gUnk_08B461E4:: @ 08B461E4
	.incbin "baserom.gba", 0xB461E4, 0x0000004

gUnk_08B461E8:: @ 08B461E8
	.incbin "baserom.gba", 0xB461E8, 0x0000004

gUnk_08B461EC:: @ 08B461EC
	.incbin "baserom.gba", 0xB461EC, 0x0000004

gUnk_08B461F0:: @ 08B461F0
	.incbin "baserom.gba", 0xB461F0, 0x0000004

gUnk_08B461F4:: @ 08B461F4
	.incbin "baserom.gba", 0xB461F4, 0x0000004

gUnk_08B461F8:: @ 08B461F8
	.incbin "baserom.gba", 0xB461F8, 0x0000004

gUnk_08B461FC:: @ 08B461FC
	.incbin "baserom.gba", 0xB461FC, 0x0000004

gUnk_08B46200:: @ 08B46200
	.incbin "baserom.gba", 0xB46200, 0x0000004

gUnk_08B46204:: @ 08B46204
	.incbin "baserom.gba", 0xB46204, 0x0000004

gUnk_08B46208:: @ 08B46208
	.incbin "baserom.gba", 0xB46208, 0x0000004

gUnk_08B4620C:: @ 08B4620C
	.incbin "baserom.gba", 0xB4620C, 0x0000004

gUnk_08B46210:: @ 08B46210
	.incbin "baserom.gba", 0xB46210, 0x0000004

gUnk_08B46214:: @ 08B46214
	.incbin "baserom.gba", 0xB46214, 0x0000004

gUnk_08B46218:: @ 08B46218
	.incbin "baserom.gba", 0xB46218, 0x0000004

gUnk_08B4621C:: @ 08B4621C
	.incbin "baserom.gba", 0xB4621C, 0x0000004

gUnk_08B46220:: @ 08B46220
	.incbin "baserom.gba", 0xB46220, 0x0000004

gUnk_08B46224:: @ 08B46224
	.incbin "baserom.gba", 0xB46224, 0x0000004

gUnk_08B46228:: @ 08B46228
	.incbin "baserom.gba", 0xB46228, 0x0000004

gUnk_08B4622C:: @ 08B4622C
	.incbin "baserom.gba", 0xB4622C, 0x0000004

gUnk_08B46230:: @ 08B46230
	.incbin "baserom.gba", 0xB46230, 0x0000004

gUnk_08B46234:: @ 08B46234
	.incbin "baserom.gba", 0xB46234, 0x0000008

gUnk_08B4623C:: @ 08B4623C
	.incbin "baserom.gba", 0xB4623C, 0x0000008

gUnk_08B46244:: @ 08B46244
	.incbin "baserom.gba", 0xB46244, 0x0000004

gUnk_08B46248:: @ 08B46248
	.incbin "baserom.gba", 0xB46248, 0x0000004

gUnk_08B4624C:: @ 08B4624C
	.incbin "baserom.gba", 0xB4624C, 0x0000004

gUnk_08B46250:: @ 08B46250
	.incbin "baserom.gba", 0xB46250, 0x0000004

gUnk_08B46254:: @ 08B46254
	.incbin "baserom.gba", 0xB46254, 0x0000004

gUnk_08B46258:: @ 08B46258
	.incbin "baserom.gba", 0xB46258, 0x0000004

gUnk_08B4625C:: @ 08B4625C
	.incbin "baserom.gba", 0xB4625C, 0x0000004

gUnk_08B46260:: @ 08B46260
	.incbin "baserom.gba", 0xB46260, 0x0000004

gUnk_08B46264:: @ 08B46264
	.incbin "baserom.gba", 0xB46264, 0x0000004

gUnk_08B46268:: @ 08B46268
	.incbin "baserom.gba", 0xB46268, 0x000004C

gUnk_08B462B4:: @ 08B462B4
	.incbin "baserom.gba", 0xB462B4, 0x0000004

gUnk_08B462B8:: @ 08B462B8
	.incbin "baserom.gba", 0xB462B8, 0x0000004

gUnk_08B462BC:: @ 08B462BC
	.incbin "baserom.gba", 0xB462BC, 0x0000004

gUnk_08B462C0:: @ 08B462C0
	.incbin "baserom.gba", 0xB462C0, 0x0000004

gUnk_08B462C4:: @ 08B462C4
	.incbin "baserom.gba", 0xB462C4, 0x0000004

gUnk_08B462C8:: @ 08B462C8
	.incbin "baserom.gba", 0xB462C8, 0x0000004

gUnk_08B462CC:: @ 08B462CC
	.incbin "baserom.gba", 0xB462CC, 0x0000004

gUnk_08B462D0:: @ 08B462D0
	.incbin "baserom.gba", 0xB462D0, 0x0000004

gUnk_08B462D4:: @ 08B462D4
	.incbin "baserom.gba", 0xB462D4, 0x0000004

gUnk_08B462D8:: @ 08B462D8
	.incbin "baserom.gba", 0xB462D8, 0x0000004

gUnk_08B462DC:: @ 08B462DC
	.incbin "baserom.gba", 0xB462DC, 0x0000004

gUnk_08B462E0:: @ 08B462E0
	.incbin "baserom.gba", 0xB462E0, 0x0000004

gUnk_08B462E4:: @ 08B462E4
	.incbin "baserom.gba", 0xB462E4, 0x0000004

gUnk_08B462E8:: @ 08B462E8
	.incbin "baserom.gba", 0xB462E8, 0x0000004

gUnk_08B462EC:: @ 08B462EC
	.incbin "baserom.gba", 0xB462EC, 0x0000004

gUnk_08B462F0:: @ 08B462F0
	.incbin "baserom.gba", 0xB462F0, 0x0000004

gUnk_08B462F4:: @ 08B462F4
	.incbin "baserom.gba", 0xB462F4, 0x0000004

gUnk_08B462F8:: @ 08B462F8
	.incbin "baserom.gba", 0xB462F8, 0x0000004

gUnk_08B462FC:: @ 08B462FC
	.incbin "baserom.gba", 0xB462FC, 0x0000004

gUnk_08B46300:: @ 08B46300
	.incbin "baserom.gba", 0xB46300, 0x0000004

gUnk_08B46304:: @ 08B46304
	.incbin "baserom.gba", 0xB46304, 0x0000004

gUnk_08B46308:: @ 08B46308
	.incbin "baserom.gba", 0xB46308, 0x0000008

gUnk_08B46310:: @ 08B46310
	.incbin "baserom.gba", 0xB46310, 0x0000004

gUnk_08B46314:: @ 08B46314
	.incbin "baserom.gba", 0xB46314, 0x0000004

gUnk_08B46318:: @ 08B46318
	.incbin "baserom.gba", 0xB46318, 0x0000004

gUnk_08B4631C:: @ 08B4631C
	.incbin "baserom.gba", 0xB4631C, 0x0000004

gUnk_08B46320:: @ 08B46320
	.incbin "baserom.gba", 0xB46320, 0x0000004

gUnk_08B46324:: @ 08B46324
	.incbin "baserom.gba", 0xB46324, 0x0000004

gUnk_08B46328:: @ 08B46328
	.incbin "baserom.gba", 0xB46328, 0x0000004

gUnk_08B4632C:: @ 08B4632C
	.incbin "baserom.gba", 0xB4632C, 0x0000004

gUnk_08B46330:: @ 08B46330
	.incbin "baserom.gba", 0xB46330, 0x0000004

gUnk_08B46334:: @ 08B46334
	.incbin "baserom.gba", 0xB46334, 0x000004C

gUnk_08B46380:: @ 08B46380
	.incbin "baserom.gba", 0xB46380, 0x000000C

gUnk_08B4638C:: @ 08B4638C
	.incbin "baserom.gba", 0xB4638C, 0x0000014

gUnk_08B463A0:: @ 08B463A0
	.incbin "baserom.gba", 0xB463A0, 0x0000010

gUnk_08B463B0:: @ 08B463B0
	.incbin "baserom.gba", 0xB463B0, 0x000000C

gUnk_08B463BC:: @ 08B463BC
	.incbin "baserom.gba", 0xB463BC, 0x0000010

gUnk_08B463CC:: @ 08B463CC
	.incbin "baserom.gba", 0xB463CC, 0x0000014

gUnk_08B463E0:: @ 08B463E0
	.incbin "baserom.gba", 0xB463E0, 0x0000014

gUnk_08B463F4:: @ 08B463F4
	.incbin "baserom.gba", 0xB463F4, 0x0000014

gUnk_08B46408:: @ 08B46408
	.incbin "baserom.gba", 0xB46408, 0x0000010

gUnk_08B46418:: @ 08B46418
	.incbin "baserom.gba", 0xB46418, 0x0000018

gUnk_08B46430:: @ 08B46430
	.incbin "baserom.gba", 0xB46430, 0x0000010

gUnk_08B46440:: @ 08B46440
	.incbin "baserom.gba", 0xB46440, 0x0000014

gUnk_08B46454:: @ 08B46454
	.incbin "baserom.gba", 0xB46454, 0x000000C

gUnk_08B46460:: @ 08B46460
	.incbin "baserom.gba", 0xB46460, 0x000000C

gUnk_08B4646C:: @ 08B4646C
	.incbin "baserom.gba", 0xB4646C, 0x000000C

gUnk_08B46478:: @ 08B46478
	.incbin "baserom.gba", 0xB46478, 0x000000C

gUnk_08B46484:: @ 08B46484
	.incbin "baserom.gba", 0xB46484, 0x0000010

gUnk_08B46494:: @ 08B46494
	.incbin "baserom.gba", 0xB46494, 0x000000C

gUnk_08B464A0:: @ 08B464A0
	.incbin "baserom.gba", 0xB464A0, 0x0000008

gUnk_08B464A8:: @ 08B464A8
	.incbin "baserom.gba", 0xB464A8, 0x0000010

gUnk_08B464B8:: @ 08B464B8
	.incbin "baserom.gba", 0xB464B8, 0x000000C

gUnk_08B464C4:: @ 08B464C4
	.incbin "baserom.gba", 0xB464C4, 0x0000010

gUnk_08B464D4:: @ 08B464D4
	.incbin "baserom.gba", 0xB464D4, 0x0000008

gUnk_08B464DC:: @ 08B464DC
	.incbin "baserom.gba", 0xB464DC, 0x0000010

gUnk_08B464EC:: @ 08B464EC
	.incbin "baserom.gba", 0xB464EC, 0x0000014

gUnk_08B46500:: @ 08B46500
	.incbin "baserom.gba", 0xB46500, 0x0000014

gUnk_08B46514:: @ 08B46514
	.incbin "baserom.gba", 0xB46514, 0x0000018

gUnk_08B4652C:: @ 08B4652C
	.incbin "baserom.gba", 0xB4652C, 0x000000C

gUnk_08B46538:: @ 08B46538
	.incbin "baserom.gba", 0xB46538, 0x0000008

gUnk_08B46540:: @ 08B46540
	.incbin "baserom.gba", 0xB46540, 0x0000010

gUnk_08B46550:: @ 08B46550
	.incbin "baserom.gba", 0xB46550, 0x0000010

gUnk_08B46560:: @ 08B46560
	.incbin "baserom.gba", 0xB46560, 0x000004C

gUnk_08B465AC:: @ 08B465AC
	.incbin "baserom.gba", 0xB465AC, 0x0000004

gUnk_08B465B0:: @ 08B465B0
	.incbin "baserom.gba", 0xB465B0, 0x0000008

gUnk_08B465B8:: @ 08B465B8
	.incbin "baserom.gba", 0xB465B8, 0x000000C

gUnk_08B465C4:: @ 08B465C4
	.incbin "baserom.gba", 0xB465C4, 0x0000010

gUnk_08B465D4:: @ 08B465D4
	.incbin "baserom.gba", 0xB465D4, 0x0000004

gUnk_08B465D8:: @ 08B465D8
	.incbin "baserom.gba", 0xB465D8, 0x000000C

gUnk_08B465E4:: @ 08B465E4
	.incbin "baserom.gba", 0xB465E4, 0x0000008

gUnk_08B465EC:: @ 08B465EC
	.incbin "baserom.gba", 0xB465EC, 0x000001C

gUnk_08B46608:: @ 08B46608
	.incbin "baserom.gba", 0xB46608, 0x0000014

gUnk_08B4661C:: @ 08B4661C
	.incbin "baserom.gba", 0xB4661C, 0x0000004

gUnk_08B46620:: @ 08B46620
	.incbin "baserom.gba", 0xB46620, 0x0000004

gUnk_08B46624:: @ 08B46624
	.incbin "baserom.gba", 0xB46624, 0x0000010

gUnk_08B46634:: @ 08B46634
	.incbin "baserom.gba", 0xB46634, 0x0000004

gUnk_08B46638:: @ 08B46638
	.incbin "baserom.gba", 0xB46638, 0x0000004

gUnk_08B4663C:: @ 08B4663C
	.incbin "baserom.gba", 0xB4663C, 0x0000004

gUnk_08B46640:: @ 08B46640
	.incbin "baserom.gba", 0xB46640, 0x0000004

gUnk_08B46644:: @ 08B46644
	.incbin "baserom.gba", 0xB46644, 0x0000004

gUnk_08B46648:: @ 08B46648
	.incbin "baserom.gba", 0xB46648, 0x0000014

gUnk_08B4665C:: @ 08B4665C
	.incbin "baserom.gba", 0xB4665C, 0x0000014

gUnk_08B46670:: @ 08B46670
	.incbin "baserom.gba", 0xB46670, 0x0000018

gUnk_08B46688:: @ 08B46688
	.incbin "baserom.gba", 0xB46688, 0x0000018

gUnk_08B466A0:: @ 08B466A0
	.incbin "baserom.gba", 0xB466A0, 0x000001C

gUnk_08B466BC:: @ 08B466BC
	.incbin "baserom.gba", 0xB466BC, 0x0000018

gUnk_08B466D4:: @ 08B466D4
	.incbin "baserom.gba", 0xB466D4, 0x000004C

gUnk_08B46720:: @ 08B46720
	.incbin "baserom.gba", 0xB46720, 0x0000014

gUnk_08B46734:: @ 08B46734
	.incbin "baserom.gba", 0xB46734, 0x0000010

gUnk_08B46744:: @ 08B46744
	.incbin "baserom.gba", 0xB46744, 0x000000C

gUnk_08B46750:: @ 08B46750
	.incbin "baserom.gba", 0xB46750, 0x0000008

gUnk_08B46758:: @ 08B46758
	.incbin "baserom.gba", 0xB46758, 0x000000C

gUnk_08B46764:: @ 08B46764
	.incbin "baserom.gba", 0xB46764, 0x000000C

gUnk_08B46770:: @ 08B46770
	.incbin "baserom.gba", 0xB46770, 0x000000C

gUnk_08B4677C:: @ 08B4677C
	.incbin "baserom.gba", 0xB4677C, 0x000000C

gUnk_08B46788:: @ 08B46788
	.incbin "baserom.gba", 0xB46788, 0x0000008

gUnk_08B46790:: @ 08B46790
	.incbin "baserom.gba", 0xB46790, 0x0000010

gUnk_08B467A0:: @ 08B467A0
	.incbin "baserom.gba", 0xB467A0, 0x0000010

gUnk_08B467B0:: @ 08B467B0
	.incbin "baserom.gba", 0xB467B0, 0x0000010

gUnk_08B467C0:: @ 08B467C0
	.incbin "baserom.gba", 0xB467C0, 0x0000010

gUnk_08B467D0:: @ 08B467D0
	.incbin "baserom.gba", 0xB467D0, 0x000000C

gUnk_08B467DC:: @ 08B467DC
	.incbin "baserom.gba", 0xB467DC, 0x0000010

gUnk_08B467EC:: @ 08B467EC
	.incbin "baserom.gba", 0xB467EC, 0x0000014

gUnk_08B46800:: @ 08B46800
	.incbin "baserom.gba", 0xB46800, 0x0000018

gUnk_08B46818:: @ 08B46818
	.incbin "baserom.gba", 0xB46818, 0x000000C

gUnk_08B46824:: @ 08B46824
	.incbin "baserom.gba", 0xB46824, 0x0000010

gUnk_08B46834:: @ 08B46834
	.incbin "baserom.gba", 0xB46834, 0x0000010

gUnk_08B46844:: @ 08B46844
	.incbin "baserom.gba", 0xB46844, 0x0000010

gUnk_08B46854:: @ 08B46854
	.incbin "baserom.gba", 0xB46854, 0x0000014

gUnk_08B46868:: @ 08B46868
	.incbin "baserom.gba", 0xB46868, 0x0000010

gUnk_08B46878:: @ 08B46878
	.incbin "baserom.gba", 0xB46878, 0x0000008

gUnk_08B46880:: @ 08B46880
	.incbin "baserom.gba", 0xB46880, 0x000000C

gUnk_08B4688C:: @ 08B4688C
	.incbin "baserom.gba", 0xB4688C, 0x0000010

gUnk_08B4689C:: @ 08B4689C
	.incbin "baserom.gba", 0xB4689C, 0x0000010

gUnk_08B468AC:: @ 08B468AC
	.incbin "baserom.gba", 0xB468AC, 0x0000010

gUnk_08B468BC:: @ 08B468BC
	.incbin "baserom.gba", 0xB468BC, 0x000000C

gUnk_08B468C8:: @ 08B468C8
	.incbin "baserom.gba", 0xB468C8, 0x000000C

gUnk_08B468D4:: @ 08B468D4
	.incbin "baserom.gba", 0xB468D4, 0x000000C

gUnk_08B468E0:: @ 08B468E0
	.incbin "baserom.gba", 0xB468E0, 0x000004C

gUnk_08B4692C:: @ 08B4692C
	.incbin "baserom.gba", 0xB4692C, 0x0000004

gUnk_08B46930:: @ 08B46930
	.incbin "baserom.gba", 0xB46930, 0x0000004

gUnk_08B46934:: @ 08B46934
	.incbin "baserom.gba", 0xB46934, 0x0000004

gUnk_08B46938:: @ 08B46938
	.incbin "baserom.gba", 0xB46938, 0x0000004

gUnk_08B4693C:: @ 08B4693C
	.incbin "baserom.gba", 0xB4693C, 0x0000004

gUnk_08B46940:: @ 08B46940
	.incbin "baserom.gba", 0xB46940, 0x0000004

gUnk_08B46944:: @ 08B46944
	.incbin "baserom.gba", 0xB46944, 0x0000004

gUnk_08B46948:: @ 08B46948
	.incbin "baserom.gba", 0xB46948, 0x0000004

gUnk_08B4694C:: @ 08B4694C
	.incbin "baserom.gba", 0xB4694C, 0x0000004

gUnk_08B46950:: @ 08B46950
	.incbin "baserom.gba", 0xB46950, 0x0000004

gUnk_08B46954:: @ 08B46954
	.incbin "baserom.gba", 0xB46954, 0x0000004

gUnk_08B46958:: @ 08B46958
	.incbin "baserom.gba", 0xB46958, 0x0000004

gUnk_08B4695C:: @ 08B4695C
	.incbin "baserom.gba", 0xB4695C, 0x0000004

gUnk_08B46960:: @ 08B46960
	.incbin "baserom.gba", 0xB46960, 0x0000004

gUnk_08B46964:: @ 08B46964
	.incbin "baserom.gba", 0xB46964, 0x0000004

gUnk_08B46968:: @ 08B46968
	.incbin "baserom.gba", 0xB46968, 0x0000004

gUnk_08B4696C:: @ 08B4696C
	.incbin "baserom.gba", 0xB4696C, 0x0000004

gUnk_08B46970:: @ 08B46970
	.incbin "baserom.gba", 0xB46970, 0x0000004

gUnk_08B46974:: @ 08B46974
	.incbin "baserom.gba", 0xB46974, 0x0000004

gUnk_08B46978:: @ 08B46978
	.incbin "baserom.gba", 0xB46978, 0x0000004

gUnk_08B4697C:: @ 08B4697C
	.incbin "baserom.gba", 0xB4697C, 0x0000004

gUnk_08B46980:: @ 08B46980
	.incbin "baserom.gba", 0xB46980, 0x0000004

gUnk_08B46984:: @ 08B46984
	.incbin "baserom.gba", 0xB46984, 0x0000004

gUnk_08B46988:: @ 08B46988
	.incbin "baserom.gba", 0xB46988, 0x0000004

gUnk_08B4698C:: @ 08B4698C
	.incbin "baserom.gba", 0xB4698C, 0x0000008

gUnk_08B46994:: @ 08B46994
	.incbin "baserom.gba", 0xB46994, 0x0000008

gUnk_08B4699C:: @ 08B4699C
	.incbin "baserom.gba", 0xB4699C, 0x000000C

gUnk_08B469A8:: @ 08B469A8
	.incbin "baserom.gba", 0xB469A8, 0x0000004

gUnk_08B469AC:: @ 08B469AC
	.incbin "baserom.gba", 0xB469AC, 0x0000004

gUnk_08B469B0:: @ 08B469B0
	.incbin "baserom.gba", 0xB469B0, 0x0000004

gUnk_08B469B4:: @ 08B469B4
	.incbin "baserom.gba", 0xB469B4, 0x0000004

gUnk_08B469B8:: @ 08B469B8
	.incbin "baserom.gba", 0xB469B8, 0x000004C

gUnk_08B46A04:: @ 08B46A04
	.incbin "baserom.gba", 0xB46A04, 0x0000004

gUnk_08B46A08:: @ 08B46A08
	.incbin "baserom.gba", 0xB46A08, 0x0000004

gUnk_08B46A0C:: @ 08B46A0C
	.incbin "baserom.gba", 0xB46A0C, 0x0000004

gUnk_08B46A10:: @ 08B46A10
	.incbin "baserom.gba", 0xB46A10, 0x0000004

gUnk_08B46A14:: @ 08B46A14
	.incbin "baserom.gba", 0xB46A14, 0x0000004

gUnk_08B46A18:: @ 08B46A18
	.incbin "baserom.gba", 0xB46A18, 0x0000004

gUnk_08B46A1C:: @ 08B46A1C
	.incbin "baserom.gba", 0xB46A1C, 0x0000004

gUnk_08B46A20:: @ 08B46A20
	.incbin "baserom.gba", 0xB46A20, 0x0000004

gUnk_08B46A24:: @ 08B46A24
	.incbin "baserom.gba", 0xB46A24, 0x0000004

gUnk_08B46A28:: @ 08B46A28
	.incbin "baserom.gba", 0xB46A28, 0x0000004

gUnk_08B46A2C:: @ 08B46A2C
	.incbin "baserom.gba", 0xB46A2C, 0x0000004

gUnk_08B46A30:: @ 08B46A30
	.incbin "baserom.gba", 0xB46A30, 0x0000004

gUnk_08B46A34:: @ 08B46A34
	.incbin "baserom.gba", 0xB46A34, 0x0000004

gUnk_08B46A38:: @ 08B46A38
	.incbin "baserom.gba", 0xB46A38, 0x0000004

gUnk_08B46A3C:: @ 08B46A3C
	.incbin "baserom.gba", 0xB46A3C, 0x0000004

gUnk_08B46A40:: @ 08B46A40
	.incbin "baserom.gba", 0xB46A40, 0x0000004

gUnk_08B46A44:: @ 08B46A44
	.incbin "baserom.gba", 0xB46A44, 0x0000004

gUnk_08B46A48:: @ 08B46A48
	.incbin "baserom.gba", 0xB46A48, 0x0000004

gUnk_08B46A4C:: @ 08B46A4C
	.incbin "baserom.gba", 0xB46A4C, 0x0000004

gUnk_08B46A50:: @ 08B46A50
	.incbin "baserom.gba", 0xB46A50, 0x0000004

gUnk_08B46A54:: @ 08B46A54
	.incbin "baserom.gba", 0xB46A54, 0x0000004

gUnk_08B46A58:: @ 08B46A58
	.incbin "baserom.gba", 0xB46A58, 0x0000004

gUnk_08B46A5C:: @ 08B46A5C
	.incbin "baserom.gba", 0xB46A5C, 0x0000004

gUnk_08B46A60:: @ 08B46A60
	.incbin "baserom.gba", 0xB46A60, 0x0000004

gUnk_08B46A64:: @ 08B46A64
	.incbin "baserom.gba", 0xB46A64, 0x0000004

gUnk_08B46A68:: @ 08B46A68
	.incbin "baserom.gba", 0xB46A68, 0x0000008

gUnk_08B46A70:: @ 08B46A70
	.incbin "baserom.gba", 0xB46A70, 0x0000008

gUnk_08B46A78:: @ 08B46A78
	.incbin "baserom.gba", 0xB46A78, 0x0000004

gUnk_08B46A7C:: @ 08B46A7C
	.incbin "baserom.gba", 0xB46A7C, 0x0000004

gUnk_08B46A80:: @ 08B46A80
	.incbin "baserom.gba", 0xB46A80, 0x0000004

gUnk_08B46A84:: @ 08B46A84
	.incbin "baserom.gba", 0xB46A84, 0x0000004

gUnk_08B46A88:: @ 08B46A88
	.incbin "baserom.gba", 0xB46A88, 0x000004C

gUnk_08B46AD4:: @ 08B46AD4
	.incbin "baserom.gba", 0xB46AD4, 0x0000004

gUnk_08B46AD8:: @ 08B46AD8
	.incbin "baserom.gba", 0xB46AD8, 0x0000004

gUnk_08B46ADC:: @ 08B46ADC
	.incbin "baserom.gba", 0xB46ADC, 0x0000004

gUnk_08B46AE0:: @ 08B46AE0
	.incbin "baserom.gba", 0xB46AE0, 0x0000004

gUnk_08B46AE4:: @ 08B46AE4
	.incbin "baserom.gba", 0xB46AE4, 0x0000004

gUnk_08B46AE8:: @ 08B46AE8
	.incbin "baserom.gba", 0xB46AE8, 0x0000004

gUnk_08B46AEC:: @ 08B46AEC
	.incbin "baserom.gba", 0xB46AEC, 0x0000004

gUnk_08B46AF0:: @ 08B46AF0
	.incbin "baserom.gba", 0xB46AF0, 0x0000004

gUnk_08B46AF4:: @ 08B46AF4
	.incbin "baserom.gba", 0xB46AF4, 0x0000004

gUnk_08B46AF8:: @ 08B46AF8
	.incbin "baserom.gba", 0xB46AF8, 0x0000004

gUnk_08B46AFC:: @ 08B46AFC
	.incbin "baserom.gba", 0xB46AFC, 0x0000004

gUnk_08B46B00:: @ 08B46B00
	.incbin "baserom.gba", 0xB46B00, 0x0000004

gUnk_08B46B04:: @ 08B46B04
	.incbin "baserom.gba", 0xB46B04, 0x0000004

gUnk_08B46B08:: @ 08B46B08
	.incbin "baserom.gba", 0xB46B08, 0x0000004

gUnk_08B46B0C:: @ 08B46B0C
	.incbin "baserom.gba", 0xB46B0C, 0x0000004

gUnk_08B46B10:: @ 08B46B10
	.incbin "baserom.gba", 0xB46B10, 0x0000004

gUnk_08B46B14:: @ 08B46B14
	.incbin "baserom.gba", 0xB46B14, 0x0000004

gUnk_08B46B18:: @ 08B46B18
	.incbin "baserom.gba", 0xB46B18, 0x0000004

gUnk_08B46B1C:: @ 08B46B1C
	.incbin "baserom.gba", 0xB46B1C, 0x0000004

gUnk_08B46B20:: @ 08B46B20
	.incbin "baserom.gba", 0xB46B20, 0x0000004

gUnk_08B46B24:: @ 08B46B24
	.incbin "baserom.gba", 0xB46B24, 0x0000004

gUnk_08B46B28:: @ 08B46B28
	.incbin "baserom.gba", 0xB46B28, 0x0000004

gUnk_08B46B2C:: @ 08B46B2C
	.incbin "baserom.gba", 0xB46B2C, 0x0000004

gUnk_08B46B30:: @ 08B46B30
	.incbin "baserom.gba", 0xB46B30, 0x0000004

gUnk_08B46B34:: @ 08B46B34
	.incbin "baserom.gba", 0xB46B34, 0x0000004

gUnk_08B46B38:: @ 08B46B38
	.incbin "baserom.gba", 0xB46B38, 0x0000004

gUnk_08B46B3C:: @ 08B46B3C
	.incbin "baserom.gba", 0xB46B3C, 0x0000008

gUnk_08B46B44:: @ 08B46B44
	.incbin "baserom.gba", 0xB46B44, 0x0000004

gUnk_08B46B48:: @ 08B46B48
	.incbin "baserom.gba", 0xB46B48, 0x0000004

gUnk_08B46B4C:: @ 08B46B4C
	.incbin "baserom.gba", 0xB46B4C, 0x0000004

gUnk_08B46B50:: @ 08B46B50
	.incbin "baserom.gba", 0xB46B50, 0x0000004

gUnk_08B46B54:: @ 08B46B54
	.incbin "baserom.gba", 0xB46B54, 0x000004C

gUnk_08B46BA0:: @ 08B46BA0
	.incbin "baserom.gba", 0xB46BA0, 0x0000014

gUnk_08B46BB4:: @ 08B46BB4
	.incbin "baserom.gba", 0xB46BB4, 0x0000010

gUnk_08B46BC4:: @ 08B46BC4
	.incbin "baserom.gba", 0xB46BC4, 0x0000014

gUnk_08B46BD8:: @ 08B46BD8
	.incbin "baserom.gba", 0xB46BD8, 0x0000018

gUnk_08B46BF0:: @ 08B46BF0
	.incbin "baserom.gba", 0xB46BF0, 0x0000014

gUnk_08B46C04:: @ 08B46C04
	.incbin "baserom.gba", 0xB46C04, 0x0000014

gUnk_08B46C18:: @ 08B46C18
	.incbin "baserom.gba", 0xB46C18, 0x0000010

gUnk_08B46C28:: @ 08B46C28
	.incbin "baserom.gba", 0xB46C28, 0x0000010

gUnk_08B46C38:: @ 08B46C38
	.incbin "baserom.gba", 0xB46C38, 0x0000014

gUnk_08B46C4C:: @ 08B46C4C
	.incbin "baserom.gba", 0xB46C4C, 0x0000014

gUnk_08B46C60:: @ 08B46C60
	.incbin "baserom.gba", 0xB46C60, 0x000000C

gUnk_08B46C6C:: @ 08B46C6C
	.incbin "baserom.gba", 0xB46C6C, 0x0000018

gUnk_08B46C84:: @ 08B46C84
	.incbin "baserom.gba", 0xB46C84, 0x0000008

gUnk_08B46C8C:: @ 08B46C8C
	.incbin "baserom.gba", 0xB46C8C, 0x000000C

gUnk_08B46C98:: @ 08B46C98
	.incbin "baserom.gba", 0xB46C98, 0x0000010

gUnk_08B46CA8:: @ 08B46CA8
	.incbin "baserom.gba", 0xB46CA8, 0x0000014

gUnk_08B46CBC:: @ 08B46CBC
	.incbin "baserom.gba", 0xB46CBC, 0x0000018

gUnk_08B46CD4:: @ 08B46CD4
	.incbin "baserom.gba", 0xB46CD4, 0x0000018

gUnk_08B46CEC:: @ 08B46CEC
	.incbin "baserom.gba", 0xB46CEC, 0x0000010

gUnk_08B46CFC:: @ 08B46CFC
	.incbin "baserom.gba", 0xB46CFC, 0x000000C

gUnk_08B46D08:: @ 08B46D08
	.incbin "baserom.gba", 0xB46D08, 0x0000010

gUnk_08B46D18:: @ 08B46D18
	.incbin "baserom.gba", 0xB46D18, 0x0000014

gUnk_08B46D2C:: @ 08B46D2C
	.incbin "baserom.gba", 0xB46D2C, 0x0000014

gUnk_08B46D40:: @ 08B46D40
	.incbin "baserom.gba", 0xB46D40, 0x0000014

gUnk_08B46D54:: @ 08B46D54
	.incbin "baserom.gba", 0xB46D54, 0x0000014

gUnk_08B46D68:: @ 08B46D68
	.incbin "baserom.gba", 0xB46D68, 0x0000018

gUnk_08B46D80:: @ 08B46D80
	.incbin "baserom.gba", 0xB46D80, 0x0000018

gUnk_08B46D98:: @ 08B46D98
	.incbin "baserom.gba", 0xB46D98, 0x0000008

gUnk_08B46DA0:: @ 08B46DA0
	.incbin "baserom.gba", 0xB46DA0, 0x0000014

gUnk_08B46DB4:: @ 08B46DB4
	.incbin "baserom.gba", 0xB46DB4, 0x000000C

gUnk_08B46DC0:: @ 08B46DC0
	.incbin "baserom.gba", 0xB46DC0, 0x000000C

gUnk_08B46DCC:: @ 08B46DCC
	.incbin "baserom.gba", 0xB46DCC, 0x000004C

gUnk_08B46E18:: @ 08B46E18
	.incbin "baserom.gba", 0xB46E18, 0x0000010

gUnk_08B46E28:: @ 08B46E28
	.incbin "baserom.gba", 0xB46E28, 0x0000014

gUnk_08B46E3C:: @ 08B46E3C
	.incbin "baserom.gba", 0xB46E3C, 0x000000C

gUnk_08B46E48:: @ 08B46E48
	.incbin "baserom.gba", 0xB46E48, 0x000000C

gUnk_08B46E54:: @ 08B46E54
	.incbin "baserom.gba", 0xB46E54, 0x0000010

gUnk_08B46E64:: @ 08B46E64
	.incbin "baserom.gba", 0xB46E64, 0x0000010

gUnk_08B46E74:: @ 08B46E74
	.incbin "baserom.gba", 0xB46E74, 0x0000010

gUnk_08B46E84:: @ 08B46E84
	.incbin "baserom.gba", 0xB46E84, 0x0000010

gUnk_08B46E94:: @ 08B46E94
	.incbin "baserom.gba", 0xB46E94, 0x0000010

gUnk_08B46EA4:: @ 08B46EA4
	.incbin "baserom.gba", 0xB46EA4, 0x0000014

gUnk_08B46EB8:: @ 08B46EB8
	.incbin "baserom.gba", 0xB46EB8, 0x000000C

gUnk_08B46EC4:: @ 08B46EC4
	.incbin "baserom.gba", 0xB46EC4, 0x0000014

gUnk_08B46ED8:: @ 08B46ED8
	.incbin "baserom.gba", 0xB46ED8, 0x000000C

gUnk_08B46EE4:: @ 08B46EE4
	.incbin "baserom.gba", 0xB46EE4, 0x0000010

gUnk_08B46EF4:: @ 08B46EF4
	.incbin "baserom.gba", 0xB46EF4, 0x000000C

gUnk_08B46F00:: @ 08B46F00
	.incbin "baserom.gba", 0xB46F00, 0x000000C

gUnk_08B46F0C:: @ 08B46F0C
	.incbin "baserom.gba", 0xB46F0C, 0x0000010

gUnk_08B46F1C:: @ 08B46F1C
	.incbin "baserom.gba", 0xB46F1C, 0x0000008

gUnk_08B46F24:: @ 08B46F24
	.incbin "baserom.gba", 0xB46F24, 0x000000C

gUnk_08B46F30:: @ 08B46F30
	.incbin "baserom.gba", 0xB46F30, 0x0000010

gUnk_08B46F40:: @ 08B46F40
	.incbin "baserom.gba", 0xB46F40, 0x0000010

gUnk_08B46F50:: @ 08B46F50
	.incbin "baserom.gba", 0xB46F50, 0x0000010

gUnk_08B46F60:: @ 08B46F60
	.incbin "baserom.gba", 0xB46F60, 0x0000008

gUnk_08B46F68:: @ 08B46F68
	.incbin "baserom.gba", 0xB46F68, 0x000000C

gUnk_08B46F74:: @ 08B46F74
	.incbin "baserom.gba", 0xB46F74, 0x0000010

gUnk_08B46F84:: @ 08B46F84
	.incbin "baserom.gba", 0xB46F84, 0x0000014

gUnk_08B46F98:: @ 08B46F98
	.incbin "baserom.gba", 0xB46F98, 0x0000014

gUnk_08B46FAC:: @ 08B46FAC
	.incbin "baserom.gba", 0xB46FAC, 0x0000008

gUnk_08B46FB4:: @ 08B46FB4
	.incbin "baserom.gba", 0xB46FB4, 0x0000008

gUnk_08B46FBC:: @ 08B46FBC
	.incbin "baserom.gba", 0xB46FBC, 0x0000010

gUnk_08B46FCC:: @ 08B46FCC
	.incbin "baserom.gba", 0xB46FCC, 0x000000C

gUnk_08B46FD8:: @ 08B46FD8
	.incbin "baserom.gba", 0xB46FD8, 0x000004C

gUnk_08B47024:: @ 08B47024
	.incbin "baserom.gba", 0xB47024, 0x0000010

gUnk_08B47034:: @ 08B47034
	.incbin "baserom.gba", 0xB47034, 0x000000C

gUnk_08B47040:: @ 08B47040
	.incbin "baserom.gba", 0xB47040, 0x0000010

gUnk_08B47050:: @ 08B47050
	.incbin "baserom.gba", 0xB47050, 0x0000010

gUnk_08B47060:: @ 08B47060
	.incbin "baserom.gba", 0xB47060, 0x000000C

gUnk_08B4706C:: @ 08B4706C
	.incbin "baserom.gba", 0xB4706C, 0x0000010

gUnk_08B4707C:: @ 08B4707C
	.incbin "baserom.gba", 0xB4707C, 0x0000008

gUnk_08B47084:: @ 08B47084
	.incbin "baserom.gba", 0xB47084, 0x000000C

gUnk_08B47090:: @ 08B47090
	.incbin "baserom.gba", 0xB47090, 0x000000C

gUnk_08B4709C:: @ 08B4709C
	.incbin "baserom.gba", 0xB4709C, 0x000000C

gUnk_08B470A8:: @ 08B470A8
	.incbin "baserom.gba", 0xB470A8, 0x000000C

gUnk_08B470B4:: @ 08B470B4
	.incbin "baserom.gba", 0xB470B4, 0x0000010

gUnk_08B470C4:: @ 08B470C4
	.incbin "baserom.gba", 0xB470C4, 0x000000C

gUnk_08B470D0:: @ 08B470D0
	.incbin "baserom.gba", 0xB470D0, 0x0000008

gUnk_08B470D8:: @ 08B470D8
	.incbin "baserom.gba", 0xB470D8, 0x000000C

gUnk_08B470E4:: @ 08B470E4
	.incbin "baserom.gba", 0xB470E4, 0x0000010

gUnk_08B470F4:: @ 08B470F4
	.incbin "baserom.gba", 0xB470F4, 0x0000014

gUnk_08B47108:: @ 08B47108
	.incbin "baserom.gba", 0xB47108, 0x0000014

gUnk_08B4711C:: @ 08B4711C
	.incbin "baserom.gba", 0xB4711C, 0x000000C

gUnk_08B47128:: @ 08B47128
	.incbin "baserom.gba", 0xB47128, 0x000000C

gUnk_08B47134:: @ 08B47134
	.incbin "baserom.gba", 0xB47134, 0x000000C

gUnk_08B47140:: @ 08B47140
	.incbin "baserom.gba", 0xB47140, 0x0000010

gUnk_08B47150:: @ 08B47150
	.incbin "baserom.gba", 0xB47150, 0x0000010

gUnk_08B47160:: @ 08B47160
	.incbin "baserom.gba", 0xB47160, 0x0000010

gUnk_08B47170:: @ 08B47170
	.incbin "baserom.gba", 0xB47170, 0x0000010

gUnk_08B47180:: @ 08B47180
	.incbin "baserom.gba", 0xB47180, 0x0000010

gUnk_08B47190:: @ 08B47190
	.incbin "baserom.gba", 0xB47190, 0x0000014

gUnk_08B471A4:: @ 08B471A4
	.incbin "baserom.gba", 0xB471A4, 0x0000014

gUnk_08B471B8:: @ 08B471B8
	.incbin "baserom.gba", 0xB471B8, 0x0000010

gUnk_08B471C8:: @ 08B471C8
	.incbin "baserom.gba", 0xB471C8, 0x0000008

gUnk_08B471D0:: @ 08B471D0
	.incbin "baserom.gba", 0xB471D0, 0x0000008

gUnk_08B471D8:: @ 08B471D8
	.incbin "baserom.gba", 0xB471D8, 0x000004C

gUnk_08B47224:: @ 08B47224
	.incbin "baserom.gba", 0xB47224, 0x0000014

gUnk_08B47238:: @ 08B47238
	.incbin "baserom.gba", 0xB47238, 0x000000C

gUnk_08B47244:: @ 08B47244
	.incbin "baserom.gba", 0xB47244, 0x0000010

gUnk_08B47254:: @ 08B47254
	.incbin "baserom.gba", 0xB47254, 0x0000014

gUnk_08B47268:: @ 08B47268
	.incbin "baserom.gba", 0xB47268, 0x0000010

gUnk_08B47278:: @ 08B47278
	.incbin "baserom.gba", 0xB47278, 0x0000010

gUnk_08B47288:: @ 08B47288
	.incbin "baserom.gba", 0xB47288, 0x000000C

gUnk_08B47294:: @ 08B47294
	.incbin "baserom.gba", 0xB47294, 0x000000C

gUnk_08B472A0:: @ 08B472A0
	.incbin "baserom.gba", 0xB472A0, 0x0000010

gUnk_08B472B0:: @ 08B472B0
	.incbin "baserom.gba", 0xB472B0, 0x0000010

gUnk_08B472C0:: @ 08B472C0
	.incbin "baserom.gba", 0xB472C0, 0x000000C

gUnk_08B472CC:: @ 08B472CC
	.incbin "baserom.gba", 0xB472CC, 0x0000014

gUnk_08B472E0:: @ 08B472E0
	.incbin "baserom.gba", 0xB472E0, 0x0000008

gUnk_08B472E8:: @ 08B472E8
	.incbin "baserom.gba", 0xB472E8, 0x000000C

gUnk_08B472F4:: @ 08B472F4
	.incbin "baserom.gba", 0xB472F4, 0x000000C

gUnk_08B47300:: @ 08B47300
	.incbin "baserom.gba", 0xB47300, 0x0000010

gUnk_08B47310:: @ 08B47310
	.incbin "baserom.gba", 0xB47310, 0x0000014

gUnk_08B47324:: @ 08B47324
	.incbin "baserom.gba", 0xB47324, 0x0000014

gUnk_08B47338:: @ 08B47338
	.incbin "baserom.gba", 0xB47338, 0x0000010

gUnk_08B47348:: @ 08B47348
	.incbin "baserom.gba", 0xB47348, 0x0000008

gUnk_08B47350:: @ 08B47350
	.incbin "baserom.gba", 0xB47350, 0x0000010

gUnk_08B47360:: @ 08B47360
	.incbin "baserom.gba", 0xB47360, 0x0000010

gUnk_08B47370:: @ 08B47370
	.incbin "baserom.gba", 0xB47370, 0x0000010

gUnk_08B47380:: @ 08B47380
	.incbin "baserom.gba", 0xB47380, 0x0000010

gUnk_08B47390:: @ 08B47390
	.incbin "baserom.gba", 0xB47390, 0x0000010

gUnk_08B473A0:: @ 08B473A0
	.incbin "baserom.gba", 0xB473A0, 0x0000014

gUnk_08B473B4:: @ 08B473B4
	.incbin "baserom.gba", 0xB473B4, 0x0000014

gUnk_08B473C8:: @ 08B473C8
	.incbin "baserom.gba", 0xB473C8, 0x0000014

gUnk_08B473DC:: @ 08B473DC
	.incbin "baserom.gba", 0xB473DC, 0x0000014

gUnk_08B473F0:: @ 08B473F0
	.incbin "baserom.gba", 0xB473F0, 0x0000008

gUnk_08B473F8:: @ 08B473F8
	.incbin "baserom.gba", 0xB473F8, 0x0000008

gUnk_08B47400:: @ 08B47400
	.incbin "baserom.gba", 0xB47400, 0x000004C

gUnk_08B4744C:: @ 08B4744C
	.incbin "baserom.gba", 0xB4744C, 0x0000008

gUnk_08B47454:: @ 08B47454
	.incbin "baserom.gba", 0xB47454, 0x0000004

gUnk_08B47458:: @ 08B47458
	.incbin "baserom.gba", 0xB47458, 0x0000004

gUnk_08B4745C:: @ 08B4745C
	.incbin "baserom.gba", 0xB4745C, 0x0000004

gUnk_08B47460:: @ 08B47460
	.incbin "baserom.gba", 0xB47460, 0x0000004

gUnk_08B47464:: @ 08B47464
	.incbin "baserom.gba", 0xB47464, 0x0000004

gUnk_08B47468:: @ 08B47468
	.incbin "baserom.gba", 0xB47468, 0x0000004

gUnk_08B4746C:: @ 08B4746C
	.incbin "baserom.gba", 0xB4746C, 0x0000004

gUnk_08B47470:: @ 08B47470
	.incbin "baserom.gba", 0xB47470, 0x0000004

gUnk_08B47474:: @ 08B47474
	.incbin "baserom.gba", 0xB47474, 0x0000004

gUnk_08B47478:: @ 08B47478
	.incbin "baserom.gba", 0xB47478, 0x0000004

gUnk_08B4747C:: @ 08B4747C
	.incbin "baserom.gba", 0xB4747C, 0x0000004

gUnk_08B47480:: @ 08B47480
	.incbin "baserom.gba", 0xB47480, 0x0000004

gUnk_08B47484:: @ 08B47484
	.incbin "baserom.gba", 0xB47484, 0x0000008

gUnk_08B4748C:: @ 08B4748C
	.incbin "baserom.gba", 0xB4748C, 0x0000004

gUnk_08B47490:: @ 08B47490
	.incbin "baserom.gba", 0xB47490, 0x0000004

gUnk_08B47494:: @ 08B47494
	.incbin "baserom.gba", 0xB47494, 0x0000004

gUnk_08B47498:: @ 08B47498
	.incbin "baserom.gba", 0xB47498, 0x0000004

gUnk_08B4749C:: @ 08B4749C
	.incbin "baserom.gba", 0xB4749C, 0x0000004

gUnk_08B474A0:: @ 08B474A0
	.incbin "baserom.gba", 0xB474A0, 0x0000004

gUnk_08B474A4:: @ 08B474A4
	.incbin "baserom.gba", 0xB474A4, 0x0000004

gUnk_08B474A8:: @ 08B474A8
	.incbin "baserom.gba", 0xB474A8, 0x0000004

gUnk_08B474AC:: @ 08B474AC
	.incbin "baserom.gba", 0xB474AC, 0x0000004

gUnk_08B474B0:: @ 08B474B0
	.incbin "baserom.gba", 0xB474B0, 0x0000004

gUnk_08B474B4:: @ 08B474B4
	.incbin "baserom.gba", 0xB474B4, 0x0000004

gUnk_08B474B8:: @ 08B474B8
	.incbin "baserom.gba", 0xB474B8, 0x000004C

gUnk_08B47504:: @ 08B47504
	.incbin "baserom.gba", 0xB47504, 0x0000014

gUnk_08B47518:: @ 08B47518
	.incbin "baserom.gba", 0xB47518, 0x0000008

gUnk_08B47520:: @ 08B47520
	.incbin "baserom.gba", 0xB47520, 0x000000C

gUnk_08B4752C:: @ 08B4752C
	.incbin "baserom.gba", 0xB4752C, 0x0000004

gUnk_08B47530:: @ 08B47530
	.incbin "baserom.gba", 0xB47530, 0x0000004

gUnk_08B47534:: @ 08B47534
	.incbin "baserom.gba", 0xB47534, 0x0000004

gUnk_08B47538:: @ 08B47538
	.incbin "baserom.gba", 0xB47538, 0x0000010

gUnk_08B47548:: @ 08B47548
	.incbin "baserom.gba", 0xB47548, 0x000000C

gUnk_08B47554:: @ 08B47554
	.incbin "baserom.gba", 0xB47554, 0x0000004

gUnk_08B47558:: @ 08B47558
	.incbin "baserom.gba", 0xB47558, 0x0000004

gUnk_08B4755C:: @ 08B4755C
	.incbin "baserom.gba", 0xB4755C, 0x0000008

gUnk_08B47564:: @ 08B47564
	.incbin "baserom.gba", 0xB47564, 0x0000010

gUnk_08B47574:: @ 08B47574
	.incbin "baserom.gba", 0xB47574, 0x0000014

gUnk_08B47588:: @ 08B47588
	.incbin "baserom.gba", 0xB47588, 0x0000018

gUnk_08B475A0:: @ 08B475A0
	.incbin "baserom.gba", 0xB475A0, 0x0000004

gUnk_08B475A4:: @ 08B475A4
	.incbin "baserom.gba", 0xB475A4, 0x0000004

gUnk_08B475A8:: @ 08B475A8
	.incbin "baserom.gba", 0xB475A8, 0x0000008

gUnk_08B475B0:: @ 08B475B0
	.incbin "baserom.gba", 0xB475B0, 0x0000004

gUnk_08B475B4:: @ 08B475B4
	.incbin "baserom.gba", 0xB475B4, 0x0000010

gUnk_08B475C4:: @ 08B475C4
	.incbin "baserom.gba", 0xB475C4, 0x000000C

gUnk_08B475D0:: @ 08B475D0
	.incbin "baserom.gba", 0xB475D0, 0x000000C

gUnk_08B475DC:: @ 08B475DC
	.incbin "baserom.gba", 0xB475DC, 0x000000C

gUnk_08B475E8:: @ 08B475E8
	.incbin "baserom.gba", 0xB475E8, 0x0000004

gUnk_08B475EC:: @ 08B475EC
	.incbin "baserom.gba", 0xB475EC, 0x0000004

gUnk_08B475F0:: @ 08B475F0
	.incbin "baserom.gba", 0xB475F0, 0x0000004

gUnk_08B475F4:: @ 08B475F4
	.incbin "baserom.gba", 0xB475F4, 0x000004C

gUnk_08B47640:: @ 08B47640
	.incbin "baserom.gba", 0xB47640, 0x0000010

gUnk_08B47650:: @ 08B47650
	.incbin "baserom.gba", 0xB47650, 0x0000004

gUnk_08B47654:: @ 08B47654
	.incbin "baserom.gba", 0xB47654, 0x0000008

gUnk_08B4765C:: @ 08B4765C
	.incbin "baserom.gba", 0xB4765C, 0x0000004

gUnk_08B47660:: @ 08B47660
	.incbin "baserom.gba", 0xB47660, 0x0000004

gUnk_08B47664:: @ 08B47664
	.incbin "baserom.gba", 0xB47664, 0x0000004

gUnk_08B47668:: @ 08B47668
	.incbin "baserom.gba", 0xB47668, 0x000000C

gUnk_08B47674:: @ 08B47674
	.incbin "baserom.gba", 0xB47674, 0x0000008

gUnk_08B4767C:: @ 08B4767C
	.incbin "baserom.gba", 0xB4767C, 0x0000004

gUnk_08B47680:: @ 08B47680
	.incbin "baserom.gba", 0xB47680, 0x0000004

gUnk_08B47684:: @ 08B47684
	.incbin "baserom.gba", 0xB47684, 0x0000004

gUnk_08B47688:: @ 08B47688
	.incbin "baserom.gba", 0xB47688, 0x000000C

gUnk_08B47694:: @ 08B47694
	.incbin "baserom.gba", 0xB47694, 0x0000010

gUnk_08B476A4:: @ 08B476A4
	.incbin "baserom.gba", 0xB476A4, 0x0000014

gUnk_08B476B8:: @ 08B476B8
	.incbin "baserom.gba", 0xB476B8, 0x0000004

gUnk_08B476BC:: @ 08B476BC
	.incbin "baserom.gba", 0xB476BC, 0x0000004

gUnk_08B476C0:: @ 08B476C0
	.incbin "baserom.gba", 0xB476C0, 0x0000004

gUnk_08B476C4:: @ 08B476C4
	.incbin "baserom.gba", 0xB476C4, 0x0000004

gUnk_08B476C8:: @ 08B476C8
	.incbin "baserom.gba", 0xB476C8, 0x0000004

gUnk_08B476CC:: @ 08B476CC
	.incbin "baserom.gba", 0xB476CC, 0x0000004

gUnk_08B476D0:: @ 08B476D0
	.incbin "baserom.gba", 0xB476D0, 0x0000004

gUnk_08B476D4:: @ 08B476D4
	.incbin "baserom.gba", 0xB476D4, 0x0000004

gUnk_08B476D8:: @ 08B476D8
	.incbin "baserom.gba", 0xB476D8, 0x0000004

gUnk_08B476DC:: @ 08B476DC
	.incbin "baserom.gba", 0xB476DC, 0x0000004

gUnk_08B476E0:: @ 08B476E0
	.incbin "baserom.gba", 0xB476E0, 0x0000004

gUnk_08B476E4:: @ 08B476E4
	.incbin "baserom.gba", 0xB476E4, 0x000004C

gUnk_08B47730:: @ 08B47730
	.incbin "baserom.gba", 0xB47730, 0x0000004

gUnk_08B47734:: @ 08B47734
	.incbin "baserom.gba", 0xB47734, 0x0000004

gUnk_08B47738:: @ 08B47738
	.incbin "baserom.gba", 0xB47738, 0x0000004

gUnk_08B4773C:: @ 08B4773C
	.incbin "baserom.gba", 0xB4773C, 0x0000008

gUnk_08B47744:: @ 08B47744
	.incbin "baserom.gba", 0xB47744, 0x0000004

gUnk_08B47748:: @ 08B47748
	.incbin "baserom.gba", 0xB47748, 0x0000004

gUnk_08B4774C:: @ 08B4774C
	.incbin "baserom.gba", 0xB4774C, 0x0000004

gUnk_08B47750:: @ 08B47750
	.incbin "baserom.gba", 0xB47750, 0x0000004

gUnk_08B47754:: @ 08B47754
	.incbin "baserom.gba", 0xB47754, 0x0000004

gUnk_08B47758:: @ 08B47758
	.incbin "baserom.gba", 0xB47758, 0x0000004

gUnk_08B4775C:: @ 08B4775C
	.incbin "baserom.gba", 0xB4775C, 0x0000004

gUnk_08B47760:: @ 08B47760
	.incbin "baserom.gba", 0xB47760, 0x0000004

gUnk_08B47764:: @ 08B47764
	.incbin "baserom.gba", 0xB47764, 0x0000004

gUnk_08B47768:: @ 08B47768
	.incbin "baserom.gba", 0xB47768, 0x0000004

gUnk_08B4776C:: @ 08B4776C
	.incbin "baserom.gba", 0xB4776C, 0x0000004

gUnk_08B47770:: @ 08B47770
	.incbin "baserom.gba", 0xB47770, 0x0000004

gUnk_08B47774:: @ 08B47774
	.incbin "baserom.gba", 0xB47774, 0x0000004

gUnk_08B47778:: @ 08B47778
	.incbin "baserom.gba", 0xB47778, 0x0000004

gUnk_08B4777C:: @ 08B4777C
	.incbin "baserom.gba", 0xB4777C, 0x0000004

gUnk_08B47780:: @ 08B47780
	.incbin "baserom.gba", 0xB47780, 0x0000004

gUnk_08B47784:: @ 08B47784
	.incbin "baserom.gba", 0xB47784, 0x0000004

gUnk_08B47788:: @ 08B47788
	.incbin "baserom.gba", 0xB47788, 0x0000004

gUnk_08B4778C:: @ 08B4778C
	.incbin "baserom.gba", 0xB4778C, 0x0000004

gUnk_08B47790:: @ 08B47790
	.incbin "baserom.gba", 0xB47790, 0x0000004

gUnk_08B47794:: @ 08B47794
	.incbin "baserom.gba", 0xB47794, 0x0000004

gUnk_08B47798:: @ 08B47798
	.incbin "baserom.gba", 0xB47798, 0x000004C

gUnk_08B477E4:: @ 08B477E4
	.incbin "baserom.gba", 0xB477E4, 0x0000004

gUnk_08B477E8:: @ 08B477E8
	.incbin "baserom.gba", 0xB477E8, 0x0000004

gUnk_08B477EC:: @ 08B477EC
	.incbin "baserom.gba", 0xB477EC, 0x0000004

gUnk_08B477F0:: @ 08B477F0
	.incbin "baserom.gba", 0xB477F0, 0x0000004

gUnk_08B477F4:: @ 08B477F4
	.incbin "baserom.gba", 0xB477F4, 0x0000008

gUnk_08B477FC:: @ 08B477FC
	.incbin "baserom.gba", 0xB477FC, 0x0000008

gUnk_08B47804:: @ 08B47804
	.incbin "baserom.gba", 0xB47804, 0x0000004

gUnk_08B47808:: @ 08B47808
	.incbin "baserom.gba", 0xB47808, 0x0000004

gUnk_08B4780C:: @ 08B4780C
	.incbin "baserom.gba", 0xB4780C, 0x0000004

gUnk_08B47810:: @ 08B47810
	.incbin "baserom.gba", 0xB47810, 0x0000008

gUnk_08B47818:: @ 08B47818
	.incbin "baserom.gba", 0xB47818, 0x0000004

gUnk_08B4781C:: @ 08B4781C
	.incbin "baserom.gba", 0xB4781C, 0x0000004

gUnk_08B47820:: @ 08B47820
	.incbin "baserom.gba", 0xB47820, 0x0000004

gUnk_08B47824:: @ 08B47824
	.incbin "baserom.gba", 0xB47824, 0x0000004

gUnk_08B47828:: @ 08B47828
	.incbin "baserom.gba", 0xB47828, 0x0000004

gUnk_08B4782C:: @ 08B4782C
	.incbin "baserom.gba", 0xB4782C, 0x000000C

gUnk_08B47838:: @ 08B47838
	.incbin "baserom.gba", 0xB47838, 0x0000004

gUnk_08B4783C:: @ 08B4783C
	.incbin "baserom.gba", 0xB4783C, 0x0000004

gUnk_08B47840:: @ 08B47840
	.incbin "baserom.gba", 0xB47840, 0x0000004

gUnk_08B47844:: @ 08B47844
	.incbin "baserom.gba", 0xB47844, 0x0000004

gUnk_08B47848:: @ 08B47848
	.incbin "baserom.gba", 0xB47848, 0x0000004

gUnk_08B4784C:: @ 08B4784C
	.incbin "baserom.gba", 0xB4784C, 0x0000004

gUnk_08B47850:: @ 08B47850
	.incbin "baserom.gba", 0xB47850, 0x0000004

gUnk_08B47854:: @ 08B47854
	.incbin "baserom.gba", 0xB47854, 0x0000004

gUnk_08B47858:: @ 08B47858
	.incbin "baserom.gba", 0xB47858, 0x0000004

gUnk_08B4785C:: @ 08B4785C
	.incbin "baserom.gba", 0xB4785C, 0x000004C

gUnk_08B478A8:: @ 08B478A8
	.incbin "baserom.gba", 0xB478A8, 0x0000004

gUnk_08B478AC:: @ 08B478AC
	.incbin "baserom.gba", 0xB478AC, 0x0000004

gUnk_08B478B0:: @ 08B478B0
	.incbin "baserom.gba", 0xB478B0, 0x0000004

gUnk_08B478B4:: @ 08B478B4
	.incbin "baserom.gba", 0xB478B4, 0x0000004

gUnk_08B478B8:: @ 08B478B8
	.incbin "baserom.gba", 0xB478B8, 0x0000004

gUnk_08B478BC:: @ 08B478BC
	.incbin "baserom.gba", 0xB478BC, 0x0000008

gUnk_08B478C4:: @ 08B478C4
	.incbin "baserom.gba", 0xB478C4, 0x0000004

gUnk_08B478C8:: @ 08B478C8
	.incbin "baserom.gba", 0xB478C8, 0x0000004

gUnk_08B478CC:: @ 08B478CC
	.incbin "baserom.gba", 0xB478CC, 0x0000004

gUnk_08B478D0:: @ 08B478D0
	.incbin "baserom.gba", 0xB478D0, 0x0000004

gUnk_08B478D4:: @ 08B478D4
	.incbin "baserom.gba", 0xB478D4, 0x0000004

gUnk_08B478D8:: @ 08B478D8
	.incbin "baserom.gba", 0xB478D8, 0x0000004

gUnk_08B478DC:: @ 08B478DC
	.incbin "baserom.gba", 0xB478DC, 0x0000004

gUnk_08B478E0:: @ 08B478E0
	.incbin "baserom.gba", 0xB478E0, 0x0000004

gUnk_08B478E4:: @ 08B478E4
	.incbin "baserom.gba", 0xB478E4, 0x0000004

gUnk_08B478E8:: @ 08B478E8
	.incbin "baserom.gba", 0xB478E8, 0x0000008

gUnk_08B478F0:: @ 08B478F0
	.incbin "baserom.gba", 0xB478F0, 0x0000004

gUnk_08B478F4:: @ 08B478F4
	.incbin "baserom.gba", 0xB478F4, 0x0000004

gUnk_08B478F8:: @ 08B478F8
	.incbin "baserom.gba", 0xB478F8, 0x0000004

gUnk_08B478FC:: @ 08B478FC
	.incbin "baserom.gba", 0xB478FC, 0x0000004

gUnk_08B47900:: @ 08B47900
	.incbin "baserom.gba", 0xB47900, 0x0000004

gUnk_08B47904:: @ 08B47904
	.incbin "baserom.gba", 0xB47904, 0x0000004

gUnk_08B47908:: @ 08B47908
	.incbin "baserom.gba", 0xB47908, 0x0000004

gUnk_08B4790C:: @ 08B4790C
	.incbin "baserom.gba", 0xB4790C, 0x0000004

gUnk_08B47910:: @ 08B47910
	.incbin "baserom.gba", 0xB47910, 0x0000004

gUnk_08B47914:: @ 08B47914
	.incbin "baserom.gba", 0xB47914, 0x000004C

gUnk_08B47960:: @ 08B47960
	.incbin "baserom.gba", 0xB47960, 0x000000C

gUnk_08B4796C:: @ 08B4796C
	.incbin "baserom.gba", 0xB4796C, 0x0000004

gUnk_08B47970:: @ 08B47970
	.incbin "baserom.gba", 0xB47970, 0x0000004

gUnk_08B47974:: @ 08B47974
	.incbin "baserom.gba", 0xB47974, 0x0000004

gUnk_08B47978:: @ 08B47978
	.incbin "baserom.gba", 0xB47978, 0x0000004

gUnk_08B4797C:: @ 08B4797C
	.incbin "baserom.gba", 0xB4797C, 0x0000004

gUnk_08B47980:: @ 08B47980
	.incbin "baserom.gba", 0xB47980, 0x0000008

gUnk_08B47988:: @ 08B47988
	.incbin "baserom.gba", 0xB47988, 0x0000004

gUnk_08B4798C:: @ 08B4798C
	.incbin "baserom.gba", 0xB4798C, 0x0000004

gUnk_08B47990:: @ 08B47990
	.incbin "baserom.gba", 0xB47990, 0x0000004

gUnk_08B47994:: @ 08B47994
	.incbin "baserom.gba", 0xB47994, 0x0000004

gUnk_08B47998:: @ 08B47998
	.incbin "baserom.gba", 0xB47998, 0x0000004

gUnk_08B4799C:: @ 08B4799C
	.incbin "baserom.gba", 0xB4799C, 0x0000008

gUnk_08B479A4:: @ 08B479A4
	.incbin "baserom.gba", 0xB479A4, 0x000000C

gUnk_08B479B0:: @ 08B479B0
	.incbin "baserom.gba", 0xB479B0, 0x0000004

gUnk_08B479B4:: @ 08B479B4
	.incbin "baserom.gba", 0xB479B4, 0x0000004

gUnk_08B479B8:: @ 08B479B8
	.incbin "baserom.gba", 0xB479B8, 0x0000004

gUnk_08B479BC:: @ 08B479BC
	.incbin "baserom.gba", 0xB479BC, 0x0000004

gUnk_08B479C0:: @ 08B479C0
	.incbin "baserom.gba", 0xB479C0, 0x0000004

gUnk_08B479C4:: @ 08B479C4
	.incbin "baserom.gba", 0xB479C4, 0x0000004

gUnk_08B479C8:: @ 08B479C8
	.incbin "baserom.gba", 0xB479C8, 0x0000004

gUnk_08B479CC:: @ 08B479CC
	.incbin "baserom.gba", 0xB479CC, 0x0000004

gUnk_08B479D0:: @ 08B479D0
	.incbin "baserom.gba", 0xB479D0, 0x0000004

gUnk_08B479D4:: @ 08B479D4
	.incbin "baserom.gba", 0xB479D4, 0x0000004

gUnk_08B479D8:: @ 08B479D8
	.incbin "baserom.gba", 0xB479D8, 0x0000004

gUnk_08B479DC:: @ 08B479DC
	.incbin "baserom.gba", 0xB479DC, 0x000004C

gUnk_08B47A28:: @ 08B47A28
	.incbin "baserom.gba", 0xB47A28, 0x0000010

gUnk_08B47A38:: @ 08B47A38
	.incbin "baserom.gba", 0xB47A38, 0x0000004

gUnk_08B47A3C:: @ 08B47A3C
	.incbin "baserom.gba", 0xB47A3C, 0x0000004

gUnk_08B47A40:: @ 08B47A40
	.incbin "baserom.gba", 0xB47A40, 0x0000004

gUnk_08B47A44:: @ 08B47A44
	.incbin "baserom.gba", 0xB47A44, 0x0000004

gUnk_08B47A48:: @ 08B47A48
	.incbin "baserom.gba", 0xB47A48, 0x0000004

gUnk_08B47A4C:: @ 08B47A4C
	.incbin "baserom.gba", 0xB47A4C, 0x000000C

gUnk_08B47A58:: @ 08B47A58
	.incbin "baserom.gba", 0xB47A58, 0x0000008

gUnk_08B47A60:: @ 08B47A60
	.incbin "baserom.gba", 0xB47A60, 0x0000004

gUnk_08B47A64:: @ 08B47A64
	.incbin "baserom.gba", 0xB47A64, 0x0000004

gUnk_08B47A68:: @ 08B47A68
	.incbin "baserom.gba", 0xB47A68, 0x0000004

gUnk_08B47A6C:: @ 08B47A6C
	.incbin "baserom.gba", 0xB47A6C, 0x0000008

gUnk_08B47A74:: @ 08B47A74
	.incbin "baserom.gba", 0xB47A74, 0x000000C

gUnk_08B47A80:: @ 08B47A80
	.incbin "baserom.gba", 0xB47A80, 0x0000010

gUnk_08B47A90:: @ 08B47A90
	.incbin "baserom.gba", 0xB47A90, 0x0000004

gUnk_08B47A94:: @ 08B47A94
	.incbin "baserom.gba", 0xB47A94, 0x0000004

gUnk_08B47A98:: @ 08B47A98
	.incbin "baserom.gba", 0xB47A98, 0x0000004

gUnk_08B47A9C:: @ 08B47A9C
	.incbin "baserom.gba", 0xB47A9C, 0x0000004

gUnk_08B47AA0:: @ 08B47AA0
	.incbin "baserom.gba", 0xB47AA0, 0x0000004

gUnk_08B47AA4:: @ 08B47AA4
	.incbin "baserom.gba", 0xB47AA4, 0x0000004

gUnk_08B47AA8:: @ 08B47AA8
	.incbin "baserom.gba", 0xB47AA8, 0x0000004

gUnk_08B47AAC:: @ 08B47AAC
	.incbin "baserom.gba", 0xB47AAC, 0x0000004

gUnk_08B47AB0:: @ 08B47AB0
	.incbin "baserom.gba", 0xB47AB0, 0x0000004

gUnk_08B47AB4:: @ 08B47AB4
	.incbin "baserom.gba", 0xB47AB4, 0x0000004

gUnk_08B47AB8:: @ 08B47AB8
	.incbin "baserom.gba", 0xB47AB8, 0x0000004

gUnk_08B47ABC:: @ 08B47ABC
	.incbin "baserom.gba", 0xB47ABC, 0x000004C

gUnk_08B47B08:: @ 08B47B08
	.incbin "baserom.gba", 0xB47B08, 0x0000004

gUnk_08B47B0C:: @ 08B47B0C
	.incbin "baserom.gba", 0xB47B0C, 0x0000004

gUnk_08B47B10:: @ 08B47B10
	.incbin "baserom.gba", 0xB47B10, 0x0000004

gUnk_08B47B14:: @ 08B47B14
	.incbin "baserom.gba", 0xB47B14, 0x0000004

gUnk_08B47B18:: @ 08B47B18
	.incbin "baserom.gba", 0xB47B18, 0x0000008

gUnk_08B47B20:: @ 08B47B20
	.incbin "baserom.gba", 0xB47B20, 0x000000C

gUnk_08B47B2C:: @ 08B47B2C
	.incbin "baserom.gba", 0xB47B2C, 0x0000004

gUnk_08B47B30:: @ 08B47B30
	.incbin "baserom.gba", 0xB47B30, 0x0000004

gUnk_08B47B34:: @ 08B47B34
	.incbin "baserom.gba", 0xB47B34, 0x0000008

gUnk_08B47B3C:: @ 08B47B3C
	.incbin "baserom.gba", 0xB47B3C, 0x000000C

gUnk_08B47B48:: @ 08B47B48
	.incbin "baserom.gba", 0xB47B48, 0x0000004

gUnk_08B47B4C:: @ 08B47B4C
	.incbin "baserom.gba", 0xB47B4C, 0x0000004

gUnk_08B47B50:: @ 08B47B50
	.incbin "baserom.gba", 0xB47B50, 0x0000004

gUnk_08B47B54:: @ 08B47B54
	.incbin "baserom.gba", 0xB47B54, 0x0000004

gUnk_08B47B58:: @ 08B47B58
	.incbin "baserom.gba", 0xB47B58, 0x0000004

gUnk_08B47B5C:: @ 08B47B5C
	.incbin "baserom.gba", 0xB47B5C, 0x000000C

gUnk_08B47B68:: @ 08B47B68
	.incbin "baserom.gba", 0xB47B68, 0x0000004

gUnk_08B47B6C:: @ 08B47B6C
	.incbin "baserom.gba", 0xB47B6C, 0x0000004

gUnk_08B47B70:: @ 08B47B70
	.incbin "baserom.gba", 0xB47B70, 0x0000004

gUnk_08B47B74:: @ 08B47B74
	.incbin "baserom.gba", 0xB47B74, 0x0000004

gUnk_08B47B78:: @ 08B47B78
	.incbin "baserom.gba", 0xB47B78, 0x0000004

gUnk_08B47B7C:: @ 08B47B7C
	.incbin "baserom.gba", 0xB47B7C, 0x0000004

gUnk_08B47B80:: @ 08B47B80
	.incbin "baserom.gba", 0xB47B80, 0x0000004

gUnk_08B47B84:: @ 08B47B84
	.incbin "baserom.gba", 0xB47B84, 0x0000004

gUnk_08B47B88:: @ 08B47B88
	.incbin "baserom.gba", 0xB47B88, 0x0000004

gUnk_08B47B8C:: @ 08B47B8C
	.incbin "baserom.gba", 0xB47B8C, 0x000004C

gUnk_08B47BD8:: @ 08B47BD8
	.incbin "baserom.gba", 0xB47BD8, 0x0000004

gUnk_08B47BDC:: @ 08B47BDC
	.incbin "baserom.gba", 0xB47BDC, 0x0000004

gUnk_08B47BE0:: @ 08B47BE0
	.incbin "baserom.gba", 0xB47BE0, 0x0000004

gUnk_08B47BE4:: @ 08B47BE4
	.incbin "baserom.gba", 0xB47BE4, 0x0000004

gUnk_08B47BE8:: @ 08B47BE8
	.incbin "baserom.gba", 0xB47BE8, 0x0000004

gUnk_08B47BEC:: @ 08B47BEC
	.incbin "baserom.gba", 0xB47BEC, 0x0000004

gUnk_08B47BF0:: @ 08B47BF0
	.incbin "baserom.gba", 0xB47BF0, 0x0000004

gUnk_08B47BF4:: @ 08B47BF4
	.incbin "baserom.gba", 0xB47BF4, 0x0000004

gUnk_08B47BF8:: @ 08B47BF8
	.incbin "baserom.gba", 0xB47BF8, 0x0000004

gUnk_08B47BFC:: @ 08B47BFC
	.incbin "baserom.gba", 0xB47BFC, 0x0000008

gUnk_08B47C04:: @ 08B47C04
	.incbin "baserom.gba", 0xB47C04, 0x0000004

gUnk_08B47C08:: @ 08B47C08
	.incbin "baserom.gba", 0xB47C08, 0x0000004

gUnk_08B47C0C:: @ 08B47C0C
	.incbin "baserom.gba", 0xB47C0C, 0x0000004

gUnk_08B47C10:: @ 08B47C10
	.incbin "baserom.gba", 0xB47C10, 0x0000004

gUnk_08B47C14:: @ 08B47C14
	.incbin "baserom.gba", 0xB47C14, 0x0000004

gUnk_08B47C18:: @ 08B47C18
	.incbin "baserom.gba", 0xB47C18, 0x0000004

gUnk_08B47C1C:: @ 08B47C1C
	.incbin "baserom.gba", 0xB47C1C, 0x0000004

gUnk_08B47C20:: @ 08B47C20
	.incbin "baserom.gba", 0xB47C20, 0x0000004

gUnk_08B47C24:: @ 08B47C24
	.incbin "baserom.gba", 0xB47C24, 0x0000004

gUnk_08B47C28:: @ 08B47C28
	.incbin "baserom.gba", 0xB47C28, 0x0000004

gUnk_08B47C2C:: @ 08B47C2C
	.incbin "baserom.gba", 0xB47C2C, 0x0000004

gUnk_08B47C30:: @ 08B47C30
	.incbin "baserom.gba", 0xB47C30, 0x0000004

gUnk_08B47C34:: @ 08B47C34
	.incbin "baserom.gba", 0xB47C34, 0x0000004

gUnk_08B47C38:: @ 08B47C38
	.incbin "baserom.gba", 0xB47C38, 0x0000004

gUnk_08B47C3C:: @ 08B47C3C
	.incbin "baserom.gba", 0xB47C3C, 0x0000004

gUnk_08B47C40:: @ 08B47C40
	.incbin "baserom.gba", 0xB47C40, 0x000004C

gUnk_08B47C8C:: @ 08B47C8C
	.incbin "baserom.gba", 0xB47C8C, 0x0000014

gUnk_08B47CA0:: @ 08B47CA0
	.incbin "baserom.gba", 0xB47CA0, 0x0000004

gUnk_08B47CA4:: @ 08B47CA4
	.incbin "baserom.gba", 0xB47CA4, 0x0000008

gUnk_08B47CAC:: @ 08B47CAC
	.incbin "baserom.gba", 0xB47CAC, 0x0000004

gUnk_08B47CB0:: @ 08B47CB0
	.incbin "baserom.gba", 0xB47CB0, 0x0000004

gUnk_08B47CB4:: @ 08B47CB4
	.incbin "baserom.gba", 0xB47CB4, 0x0000004

gUnk_08B47CB8:: @ 08B47CB8
	.incbin "baserom.gba", 0xB47CB8, 0x0000010

gUnk_08B47CC8:: @ 08B47CC8
	.incbin "baserom.gba", 0xB47CC8, 0x000000C

gUnk_08B47CD4:: @ 08B47CD4
	.incbin "baserom.gba", 0xB47CD4, 0x0000004

gUnk_08B47CD8:: @ 08B47CD8
	.incbin "baserom.gba", 0xB47CD8, 0x0000004

gUnk_08B47CDC:: @ 08B47CDC
	.incbin "baserom.gba", 0xB47CDC, 0x0000008

gUnk_08B47CE4:: @ 08B47CE4
	.incbin "baserom.gba", 0xB47CE4, 0x000000C

gUnk_08B47CF0:: @ 08B47CF0
	.incbin "baserom.gba", 0xB47CF0, 0x0000010

gUnk_08B47D00:: @ 08B47D00
	.incbin "baserom.gba", 0xB47D00, 0x0000014

gUnk_08B47D14:: @ 08B47D14
	.incbin "baserom.gba", 0xB47D14, 0x0000004

gUnk_08B47D18:: @ 08B47D18
	.incbin "baserom.gba", 0xB47D18, 0x0000004

gUnk_08B47D1C:: @ 08B47D1C
	.incbin "baserom.gba", 0xB47D1C, 0x0000004

gUnk_08B47D20:: @ 08B47D20
	.incbin "baserom.gba", 0xB47D20, 0x0000004

gUnk_08B47D24:: @ 08B47D24
	.incbin "baserom.gba", 0xB47D24, 0x0000004

gUnk_08B47D28:: @ 08B47D28
	.incbin "baserom.gba", 0xB47D28, 0x0000004

gUnk_08B47D2C:: @ 08B47D2C
	.incbin "baserom.gba", 0xB47D2C, 0x0000004

gUnk_08B47D30:: @ 08B47D30
	.incbin "baserom.gba", 0xB47D30, 0x0000008

gUnk_08B47D38:: @ 08B47D38
	.incbin "baserom.gba", 0xB47D38, 0x0000004

gUnk_08B47D3C:: @ 08B47D3C
	.incbin "baserom.gba", 0xB47D3C, 0x0000004

gUnk_08B47D40:: @ 08B47D40
	.incbin "baserom.gba", 0xB47D40, 0x0000004

gUnk_08B47D44:: @ 08B47D44
	.incbin "baserom.gba", 0xB47D44, 0x000004C

gUnk_08B47D90:: @ 08B47D90
	.incbin "baserom.gba", 0xB47D90, 0x000000C

gUnk_08B47D9C:: @ 08B47D9C
	.incbin "baserom.gba", 0xB47D9C, 0x0000004

gUnk_08B47DA0:: @ 08B47DA0
	.incbin "baserom.gba", 0xB47DA0, 0x0000004

gUnk_08B47DA4:: @ 08B47DA4
	.incbin "baserom.gba", 0xB47DA4, 0x0000004

gUnk_08B47DA8:: @ 08B47DA8
	.incbin "baserom.gba", 0xB47DA8, 0x0000004

gUnk_08B47DAC:: @ 08B47DAC
	.incbin "baserom.gba", 0xB47DAC, 0x0000004

gUnk_08B47DB0:: @ 08B47DB0
	.incbin "baserom.gba", 0xB47DB0, 0x0000008

gUnk_08B47DB8:: @ 08B47DB8
	.incbin "baserom.gba", 0xB47DB8, 0x0000004

gUnk_08B47DBC:: @ 08B47DBC
	.incbin "baserom.gba", 0xB47DBC, 0x0000004

gUnk_08B47DC0:: @ 08B47DC0
	.incbin "baserom.gba", 0xB47DC0, 0x0000004

gUnk_08B47DC4:: @ 08B47DC4
	.incbin "baserom.gba", 0xB47DC4, 0x0000004

gUnk_08B47DC8:: @ 08B47DC8
	.incbin "baserom.gba", 0xB47DC8, 0x0000008

gUnk_08B47DD0:: @ 08B47DD0
	.incbin "baserom.gba", 0xB47DD0, 0x000000C

gUnk_08B47DDC:: @ 08B47DDC
	.incbin "baserom.gba", 0xB47DDC, 0x0000010

gUnk_08B47DEC:: @ 08B47DEC
	.incbin "baserom.gba", 0xB47DEC, 0x0000004

gUnk_08B47DF0:: @ 08B47DF0
	.incbin "baserom.gba", 0xB47DF0, 0x0000004

gUnk_08B47DF4:: @ 08B47DF4
	.incbin "baserom.gba", 0xB47DF4, 0x0000004

gUnk_08B47DF8:: @ 08B47DF8
	.incbin "baserom.gba", 0xB47DF8, 0x0000004

gUnk_08B47DFC:: @ 08B47DFC
	.incbin "baserom.gba", 0xB47DFC, 0x0000004

gUnk_08B47E00:: @ 08B47E00
	.incbin "baserom.gba", 0xB47E00, 0x0000004

gUnk_08B47E04:: @ 08B47E04
	.incbin "baserom.gba", 0xB47E04, 0x0000004

gUnk_08B47E08:: @ 08B47E08
	.incbin "baserom.gba", 0xB47E08, 0x0000004

gUnk_08B47E0C:: @ 08B47E0C
	.incbin "baserom.gba", 0xB47E0C, 0x0000004

gUnk_08B47E10:: @ 08B47E10
	.incbin "baserom.gba", 0xB47E10, 0x0000004

gUnk_08B47E14:: @ 08B47E14
	.incbin "baserom.gba", 0xB47E14, 0x0000004

gUnk_08B47E18:: @ 08B47E18
	.incbin "baserom.gba", 0xB47E18, 0x000004C

gUnk_08B47E64:: @ 08B47E64
	.incbin "baserom.gba", 0xB47E64, 0x0000008

gUnk_08B47E6C:: @ 08B47E6C
	.incbin "baserom.gba", 0xB47E6C, 0x0000004

gUnk_08B47E70:: @ 08B47E70
	.incbin "baserom.gba", 0xB47E70, 0x0000004

gUnk_08B47E74:: @ 08B47E74
	.incbin "baserom.gba", 0xB47E74, 0x0000004

gUnk_08B47E78:: @ 08B47E78
	.incbin "baserom.gba", 0xB47E78, 0x0000004

gUnk_08B47E7C:: @ 08B47E7C
	.incbin "baserom.gba", 0xB47E7C, 0x0000004

gUnk_08B47E80:: @ 08B47E80
	.incbin "baserom.gba", 0xB47E80, 0x0000004

gUnk_08B47E84:: @ 08B47E84
	.incbin "baserom.gba", 0xB47E84, 0x0000004

gUnk_08B47E88:: @ 08B47E88
	.incbin "baserom.gba", 0xB47E88, 0x0000004

gUnk_08B47E8C:: @ 08B47E8C
	.incbin "baserom.gba", 0xB47E8C, 0x0000004

gUnk_08B47E90:: @ 08B47E90
	.incbin "baserom.gba", 0xB47E90, 0x0000004

gUnk_08B47E94:: @ 08B47E94
	.incbin "baserom.gba", 0xB47E94, 0x0000004

gUnk_08B47E98:: @ 08B47E98
	.incbin "baserom.gba", 0xB47E98, 0x0000008

gUnk_08B47EA0:: @ 08B47EA0
	.incbin "baserom.gba", 0xB47EA0, 0x000000C

gUnk_08B47EAC:: @ 08B47EAC
	.incbin "baserom.gba", 0xB47EAC, 0x0000004

gUnk_08B47EB0:: @ 08B47EB0
	.incbin "baserom.gba", 0xB47EB0, 0x0000004

gUnk_08B47EB4:: @ 08B47EB4
	.incbin "baserom.gba", 0xB47EB4, 0x0000004

gUnk_08B47EB8:: @ 08B47EB8
	.incbin "baserom.gba", 0xB47EB8, 0x0000004

gUnk_08B47EBC:: @ 08B47EBC
	.incbin "baserom.gba", 0xB47EBC, 0x0000004

gUnk_08B47EC0:: @ 08B47EC0
	.incbin "baserom.gba", 0xB47EC0, 0x0000004

gUnk_08B47EC4:: @ 08B47EC4
	.incbin "baserom.gba", 0xB47EC4, 0x0000004

gUnk_08B47EC8:: @ 08B47EC8
	.incbin "baserom.gba", 0xB47EC8, 0x0000004

gUnk_08B47ECC:: @ 08B47ECC
	.incbin "baserom.gba", 0xB47ECC, 0x0000004

gUnk_08B47ED0:: @ 08B47ED0
	.incbin "baserom.gba", 0xB47ED0, 0x0000004

gUnk_08B47ED4:: @ 08B47ED4
	.incbin "baserom.gba", 0xB47ED4, 0x0000004

gUnk_08B47ED8:: @ 08B47ED8
	.incbin "baserom.gba", 0xB47ED8, 0x000004C

gUnk_08B47F24:: @ 08B47F24
	.incbin "baserom.gba", 0xB47F24, 0x0000004

gUnk_08B47F28:: @ 08B47F28
	.incbin "baserom.gba", 0xB47F28, 0x0000004

gUnk_08B47F2C:: @ 08B47F2C
	.incbin "baserom.gba", 0xB47F2C, 0x0000004

gUnk_08B47F30:: @ 08B47F30
	.incbin "baserom.gba", 0xB47F30, 0x0000004

gUnk_08B47F34:: @ 08B47F34
	.incbin "baserom.gba", 0xB47F34, 0x0000004

gUnk_08B47F38:: @ 08B47F38
	.incbin "baserom.gba", 0xB47F38, 0x0000004

gUnk_08B47F3C:: @ 08B47F3C
	.incbin "baserom.gba", 0xB47F3C, 0x0000004

gUnk_08B47F40:: @ 08B47F40
	.incbin "baserom.gba", 0xB47F40, 0x0000004

gUnk_08B47F44:: @ 08B47F44
	.incbin "baserom.gba", 0xB47F44, 0x0000004

gUnk_08B47F48:: @ 08B47F48
	.incbin "baserom.gba", 0xB47F48, 0x0000004

gUnk_08B47F4C:: @ 08B47F4C
	.incbin "baserom.gba", 0xB47F4C, 0x0000004

gUnk_08B47F50:: @ 08B47F50
	.incbin "baserom.gba", 0xB47F50, 0x0000004

gUnk_08B47F54:: @ 08B47F54
	.incbin "baserom.gba", 0xB47F54, 0x0000004

gUnk_08B47F58:: @ 08B47F58
	.incbin "baserom.gba", 0xB47F58, 0x0000008

gUnk_08B47F60:: @ 08B47F60
	.incbin "baserom.gba", 0xB47F60, 0x0000004

gUnk_08B47F64:: @ 08B47F64
	.incbin "baserom.gba", 0xB47F64, 0x0000004

gUnk_08B47F68:: @ 08B47F68
	.incbin "baserom.gba", 0xB47F68, 0x0000004

gUnk_08B47F6C:: @ 08B47F6C
	.incbin "baserom.gba", 0xB47F6C, 0x0000004

gUnk_08B47F70:: @ 08B47F70
	.incbin "baserom.gba", 0xB47F70, 0x0000004

gUnk_08B47F74:: @ 08B47F74
	.incbin "baserom.gba", 0xB47F74, 0x0000004

gUnk_08B47F78:: @ 08B47F78
	.incbin "baserom.gba", 0xB47F78, 0x0000004

gUnk_08B47F7C:: @ 08B47F7C
	.incbin "baserom.gba", 0xB47F7C, 0x0000004

gUnk_08B47F80:: @ 08B47F80
	.incbin "baserom.gba", 0xB47F80, 0x0000004

gUnk_08B47F84:: @ 08B47F84
	.incbin "baserom.gba", 0xB47F84, 0x0000004

gUnk_08B47F88:: @ 08B47F88
	.incbin "baserom.gba", 0xB47F88, 0x0000004

gUnk_08B47F8C:: @ 08B47F8C
	.incbin "baserom.gba", 0xB47F8C, 0x000004C

gUnk_08B47FD8:: @ 08B47FD8
	.incbin "baserom.gba", 0xB47FD8, 0x0000004

gUnk_08B47FDC:: @ 08B47FDC
	.incbin "baserom.gba", 0xB47FDC, 0x0000004

gUnk_08B47FE0:: @ 08B47FE0
	.incbin "baserom.gba", 0xB47FE0, 0x0000004

gUnk_08B47FE4:: @ 08B47FE4
	.incbin "baserom.gba", 0xB47FE4, 0x0000004

gUnk_08B47FE8:: @ 08B47FE8
	.incbin "baserom.gba", 0xB47FE8, 0x000000C

gUnk_08B47FF4:: @ 08B47FF4
	.incbin "baserom.gba", 0xB47FF4, 0x000000C

gUnk_08B48000:: @ 08B48000
	.incbin "baserom.gba", 0xB48000, 0x0000004

gUnk_08B48004:: @ 08B48004
	.incbin "baserom.gba", 0xB48004, 0x0000004

gUnk_08B48008:: @ 08B48008
	.incbin "baserom.gba", 0xB48008, 0x0000008

gUnk_08B48010:: @ 08B48010
	.incbin "baserom.gba", 0xB48010, 0x000000C

gUnk_08B4801C:: @ 08B4801C
	.incbin "baserom.gba", 0xB4801C, 0x0000004

gUnk_08B48020:: @ 08B48020
	.incbin "baserom.gba", 0xB48020, 0x0000004

gUnk_08B48024:: @ 08B48024
	.incbin "baserom.gba", 0xB48024, 0x0000004

gUnk_08B48028:: @ 08B48028
	.incbin "baserom.gba", 0xB48028, 0x0000004

gUnk_08B4802C:: @ 08B4802C
	.incbin "baserom.gba", 0xB4802C, 0x0000008

gUnk_08B48034:: @ 08B48034
	.incbin "baserom.gba", 0xB48034, 0x0000010

gUnk_08B48044:: @ 08B48044
	.incbin "baserom.gba", 0xB48044, 0x0000004

gUnk_08B48048:: @ 08B48048
	.incbin "baserom.gba", 0xB48048, 0x0000004

gUnk_08B4804C:: @ 08B4804C
	.incbin "baserom.gba", 0xB4804C, 0x0000004

gUnk_08B48050:: @ 08B48050
	.incbin "baserom.gba", 0xB48050, 0x0000004

gUnk_08B48054:: @ 08B48054
	.incbin "baserom.gba", 0xB48054, 0x0000004

gUnk_08B48058:: @ 08B48058
	.incbin "baserom.gba", 0xB48058, 0x0000004

gUnk_08B4805C:: @ 08B4805C
	.incbin "baserom.gba", 0xB4805C, 0x0000004

gUnk_08B48060:: @ 08B48060
	.incbin "baserom.gba", 0xB48060, 0x0000004

gUnk_08B48064:: @ 08B48064
	.incbin "baserom.gba", 0xB48064, 0x0000004

gUnk_08B48068:: @ 08B48068
	.incbin "baserom.gba", 0xB48068, 0x000004C

gUnk_08B480B4:: @ 08B480B4
	.incbin "baserom.gba", 0xB480B4, 0x0000004

gUnk_08B480B8:: @ 08B480B8
	.incbin "baserom.gba", 0xB480B8, 0x0000004

gUnk_08B480BC:: @ 08B480BC
	.incbin "baserom.gba", 0xB480BC, 0x0000004

gUnk_08B480C0:: @ 08B480C0
	.incbin "baserom.gba", 0xB480C0, 0x0000004

gUnk_08B480C4:: @ 08B480C4
	.incbin "baserom.gba", 0xB480C4, 0x0000004

gUnk_08B480C8:: @ 08B480C8
	.incbin "baserom.gba", 0xB480C8, 0x0000004

gUnk_08B480CC:: @ 08B480CC
	.incbin "baserom.gba", 0xB480CC, 0x0000004

gUnk_08B480D0:: @ 08B480D0
	.incbin "baserom.gba", 0xB480D0, 0x0000004

gUnk_08B480D4:: @ 08B480D4
	.incbin "baserom.gba", 0xB480D4, 0x0000004

gUnk_08B480D8:: @ 08B480D8
	.incbin "baserom.gba", 0xB480D8, 0x0000004

gUnk_08B480DC:: @ 08B480DC
	.incbin "baserom.gba", 0xB480DC, 0x0000004

gUnk_08B480E0:: @ 08B480E0
	.incbin "baserom.gba", 0xB480E0, 0x0000004

gUnk_08B480E4:: @ 08B480E4
	.incbin "baserom.gba", 0xB480E4, 0x0000004

gUnk_08B480E8:: @ 08B480E8
	.incbin "baserom.gba", 0xB480E8, 0x0000004

gUnk_08B480EC:: @ 08B480EC
	.incbin "baserom.gba", 0xB480EC, 0x0000004

gUnk_08B480F0:: @ 08B480F0
	.incbin "baserom.gba", 0xB480F0, 0x0000008

gUnk_08B480F8:: @ 08B480F8
	.incbin "baserom.gba", 0xB480F8, 0x0000004

gUnk_08B480FC:: @ 08B480FC
	.incbin "baserom.gba", 0xB480FC, 0x0000004

gUnk_08B48100:: @ 08B48100
	.incbin "baserom.gba", 0xB48100, 0x0000004

gUnk_08B48104:: @ 08B48104
	.incbin "baserom.gba", 0xB48104, 0x0000004

gUnk_08B48108:: @ 08B48108
	.incbin "baserom.gba", 0xB48108, 0x0000004

gUnk_08B4810C:: @ 08B4810C
	.incbin "baserom.gba", 0xB4810C, 0x0000004

gUnk_08B48110:: @ 08B48110
	.incbin "baserom.gba", 0xB48110, 0x0000004

gUnk_08B48114:: @ 08B48114
	.incbin "baserom.gba", 0xB48114, 0x0000004

gUnk_08B48118:: @ 08B48118
	.incbin "baserom.gba", 0xB48118, 0x0000004

gUnk_08B4811C:: @ 08B4811C
	.incbin "baserom.gba", 0xB4811C, 0x000004C

gUnk_08B48168:: @ 08B48168
	.incbin "baserom.gba", 0xB48168, 0x0000018

gUnk_08B48180:: @ 08B48180
	.incbin "baserom.gba", 0xB48180, 0x0000008

gUnk_08B48188:: @ 08B48188
	.incbin "baserom.gba", 0xB48188, 0x000000C

gUnk_08B48194:: @ 08B48194
	.incbin "baserom.gba", 0xB48194, 0x0000004

gUnk_08B48198:: @ 08B48198
	.incbin "baserom.gba", 0xB48198, 0x0000004

gUnk_08B4819C:: @ 08B4819C
	.incbin "baserom.gba", 0xB4819C, 0x0000004

gUnk_08B481A0:: @ 08B481A0
	.incbin "baserom.gba", 0xB481A0, 0x0000014

gUnk_08B481B4:: @ 08B481B4
	.incbin "baserom.gba", 0xB481B4, 0x0000010

gUnk_08B481C4:: @ 08B481C4
	.incbin "baserom.gba", 0xB481C4, 0x0000004

gUnk_08B481C8:: @ 08B481C8
	.incbin "baserom.gba", 0xB481C8, 0x0000004

gUnk_08B481CC:: @ 08B481CC
	.incbin "baserom.gba", 0xB481CC, 0x000000C

gUnk_08B481D8:: @ 08B481D8
	.incbin "baserom.gba", 0xB481D8, 0x0000010

gUnk_08B481E8:: @ 08B481E8
	.incbin "baserom.gba", 0xB481E8, 0x0000014

gUnk_08B481FC:: @ 08B481FC
	.incbin "baserom.gba", 0xB481FC, 0x0000018

gUnk_08B48214:: @ 08B48214
	.incbin "baserom.gba", 0xB48214, 0x0000004

gUnk_08B48218:: @ 08B48218
	.incbin "baserom.gba", 0xB48218, 0x0000004

gUnk_08B4821C:: @ 08B4821C
	.incbin "baserom.gba", 0xB4821C, 0x0000008

gUnk_08B48224:: @ 08B48224
	.incbin "baserom.gba", 0xB48224, 0x0000004

gUnk_08B48228:: @ 08B48228
	.incbin "baserom.gba", 0xB48228, 0x000000C

gUnk_08B48234:: @ 08B48234
	.incbin "baserom.gba", 0xB48234, 0x000000C

gUnk_08B48240:: @ 08B48240
	.incbin "baserom.gba", 0xB48240, 0x0000008

gUnk_08B48248:: @ 08B48248
	.incbin "baserom.gba", 0xB48248, 0x000000C

gUnk_08B48254:: @ 08B48254
	.incbin "baserom.gba", 0xB48254, 0x0000004

gUnk_08B48258:: @ 08B48258
	.incbin "baserom.gba", 0xB48258, 0x0000004

gUnk_08B4825C:: @ 08B4825C
	.incbin "baserom.gba", 0xB4825C, 0x0000004

gUnk_08B48260:: @ 08B48260
	.incbin "baserom.gba", 0xB48260, 0x000004C

gUnk_08B482AC:: @ 08B482AC
	.incbin "baserom.gba", 0xB482AC, 0x0000008

gUnk_08B482B4:: @ 08B482B4
	.incbin "baserom.gba", 0xB482B4, 0x0000004

gUnk_08B482B8:: @ 08B482B8
	.incbin "baserom.gba", 0xB482B8, 0x0000004

gUnk_08B482BC:: @ 08B482BC
	.incbin "baserom.gba", 0xB482BC, 0x0000004

gUnk_08B482C0:: @ 08B482C0
	.incbin "baserom.gba", 0xB482C0, 0x0000004

gUnk_08B482C4:: @ 08B482C4
	.incbin "baserom.gba", 0xB482C4, 0x0000004

gUnk_08B482C8:: @ 08B482C8
	.incbin "baserom.gba", 0xB482C8, 0x0000004

gUnk_08B482CC:: @ 08B482CC
	.incbin "baserom.gba", 0xB482CC, 0x0000004

gUnk_08B482D0:: @ 08B482D0
	.incbin "baserom.gba", 0xB482D0, 0x0000004

gUnk_08B482D4:: @ 08B482D4
	.incbin "baserom.gba", 0xB482D4, 0x0000004

gUnk_08B482D8:: @ 08B482D8
	.incbin "baserom.gba", 0xB482D8, 0x0000004

gUnk_08B482DC:: @ 08B482DC
	.incbin "baserom.gba", 0xB482DC, 0x0000004

gUnk_08B482E0:: @ 08B482E0
	.incbin "baserom.gba", 0xB482E0, 0x0000004

gUnk_08B482E4:: @ 08B482E4
	.incbin "baserom.gba", 0xB482E4, 0x0000004

gUnk_08B482E8:: @ 08B482E8
	.incbin "baserom.gba", 0xB482E8, 0x0000004

gUnk_08B482EC:: @ 08B482EC
	.incbin "baserom.gba", 0xB482EC, 0x0000004

gUnk_08B482F0:: @ 08B482F0
	.incbin "baserom.gba", 0xB482F0, 0x0000008

gUnk_08B482F8:: @ 08B482F8
	.incbin "baserom.gba", 0xB482F8, 0x0000004

gUnk_08B482FC:: @ 08B482FC
	.incbin "baserom.gba", 0xB482FC, 0x0000004

gUnk_08B48300:: @ 08B48300
	.incbin "baserom.gba", 0xB48300, 0x0000004

gUnk_08B48304:: @ 08B48304
	.incbin "baserom.gba", 0xB48304, 0x0000004

gUnk_08B48308:: @ 08B48308
	.incbin "baserom.gba", 0xB48308, 0x0000004

gUnk_08B4830C:: @ 08B4830C
	.incbin "baserom.gba", 0xB4830C, 0x0000004

gUnk_08B48310:: @ 08B48310
	.incbin "baserom.gba", 0xB48310, 0x0000004

gUnk_08B48314:: @ 08B48314
	.incbin "baserom.gba", 0xB48314, 0x0000004

gUnk_08B48318:: @ 08B48318
	.incbin "baserom.gba", 0xB48318, 0x0000004

gUnk_08B4831C:: @ 08B4831C
	.incbin "baserom.gba", 0xB4831C, 0x0000004

gUnk_08B48320:: @ 08B48320
	.incbin "baserom.gba", 0xB48320, 0x0000004

gUnk_08B48324:: @ 08B48324
	.incbin "baserom.gba", 0xB48324, 0x000004C

gUnk_08B48370:: @ 08B48370
	.incbin "baserom.gba", 0xB48370, 0x0000020

gUnk_08B48390:: @ 08B48390
	.incbin "baserom.gba", 0xB48390, 0x0000008

gUnk_08B48398:: @ 08B48398
	.incbin "baserom.gba", 0xB48398, 0x0000010

gUnk_08B483A8:: @ 08B483A8
	.incbin "baserom.gba", 0xB483A8, 0x000000C

gUnk_08B483B4:: @ 08B483B4
	.incbin "baserom.gba", 0xB483B4, 0x000000C

gUnk_08B483C0:: @ 08B483C0
	.incbin "baserom.gba", 0xB483C0, 0x0000010

gUnk_08B483D0:: @ 08B483D0
	.incbin "baserom.gba", 0xB483D0, 0x0000004

gUnk_08B483D4:: @ 08B483D4
	.incbin "baserom.gba", 0xB483D4, 0x0000008

gUnk_08B483DC:: @ 08B483DC
	.incbin "baserom.gba", 0xB483DC, 0x0000008

gUnk_08B483E4:: @ 08B483E4
	.incbin "baserom.gba", 0xB483E4, 0x000000C

gUnk_08B483F0:: @ 08B483F0
	.incbin "baserom.gba", 0xB483F0, 0x000000C

gUnk_08B483FC:: @ 08B483FC
	.incbin "baserom.gba", 0xB483FC, 0x0000014

gUnk_08B48410:: @ 08B48410
	.incbin "baserom.gba", 0xB48410, 0x0000014

gUnk_08B48424:: @ 08B48424
	.incbin "baserom.gba", 0xB48424, 0x0000010

gUnk_08B48434:: @ 08B48434
	.incbin "baserom.gba", 0xB48434, 0x0000018

gUnk_08B4844C:: @ 08B4844C
	.incbin "baserom.gba", 0xB4844C, 0x0000020

gUnk_08B4846C:: @ 08B4846C
	.incbin "baserom.gba", 0xB4846C, 0x0000024

gUnk_08B48490:: @ 08B48490
	.incbin "baserom.gba", 0xB48490, 0x0000010

gUnk_08B484A0:: @ 08B484A0
	.incbin "baserom.gba", 0xB484A0, 0x0000014

gUnk_08B484B4:: @ 08B484B4
	.incbin "baserom.gba", 0xB484B4, 0x0000018

gUnk_08B484CC:: @ 08B484CC
	.incbin "baserom.gba", 0xB484CC, 0x000001C

gUnk_08B484E8:: @ 08B484E8
	.incbin "baserom.gba", 0xB484E8, 0x0000018

gUnk_08B48500:: @ 08B48500
	.incbin "baserom.gba", 0xB48500, 0x000001C

gUnk_08B4851C:: @ 08B4851C
	.incbin "baserom.gba", 0xB4851C, 0x000001C

gUnk_08B48538:: @ 08B48538
	.incbin "baserom.gba", 0xB48538, 0x0000010

gUnk_08B48548:: @ 08B48548
	.incbin "baserom.gba", 0xB48548, 0x0000014

gUnk_08B4855C:: @ 08B4855C
	.incbin "baserom.gba", 0xB4855C, 0x000000C

gUnk_08B48568:: @ 08B48568
	.incbin "baserom.gba", 0xB48568, 0x000000C

gUnk_08B48574:: @ 08B48574
	.incbin "baserom.gba", 0xB48574, 0x000004C

gUnk_08B485C0:: @ 08B485C0
	.incbin "baserom.gba", 0xB485C0, 0x0000018

gUnk_08B485D8:: @ 08B485D8
	.incbin "baserom.gba", 0xB485D8, 0x0000004

gUnk_08B485DC:: @ 08B485DC
	.incbin "baserom.gba", 0xB485DC, 0x0000008

gUnk_08B485E4:: @ 08B485E4
	.incbin "baserom.gba", 0xB485E4, 0x0000004

gUnk_08B485E8:: @ 08B485E8
	.incbin "baserom.gba", 0xB485E8, 0x0000004

gUnk_08B485EC:: @ 08B485EC
	.incbin "baserom.gba", 0xB485EC, 0x0000004

gUnk_08B485F0:: @ 08B485F0
	.incbin "baserom.gba", 0xB485F0, 0x0000004

gUnk_08B485F4:: @ 08B485F4
	.incbin "baserom.gba", 0xB485F4, 0x0000004

gUnk_08B485F8:: @ 08B485F8
	.incbin "baserom.gba", 0xB485F8, 0x0000004

gUnk_08B485FC:: @ 08B485FC
	.incbin "baserom.gba", 0xB485FC, 0x0000004

gUnk_08B48600:: @ 08B48600
	.incbin "baserom.gba", 0xB48600, 0x0000004

gUnk_08B48604:: @ 08B48604
	.incbin "baserom.gba", 0xB48604, 0x000000C

gUnk_08B48610:: @ 08B48610
	.incbin "baserom.gba", 0xB48610, 0x0000004

gUnk_08B48614:: @ 08B48614
	.incbin "baserom.gba", 0xB48614, 0x0000004

gUnk_08B48618:: @ 08B48618
	.incbin "baserom.gba", 0xB48618, 0x000000C

gUnk_08B48624:: @ 08B48624
	.incbin "baserom.gba", 0xB48624, 0x0000014

gUnk_08B48638:: @ 08B48638
	.incbin "baserom.gba", 0xB48638, 0x0000018

gUnk_08B48650:: @ 08B48650
	.incbin "baserom.gba", 0xB48650, 0x0000004

gUnk_08B48654:: @ 08B48654
	.incbin "baserom.gba", 0xB48654, 0x0000008

gUnk_08B4865C:: @ 08B4865C
	.incbin "baserom.gba", 0xB4865C, 0x000000C

gUnk_08B48668:: @ 08B48668
	.incbin "baserom.gba", 0xB48668, 0x0000014

gUnk_08B4867C:: @ 08B4867C
	.incbin "baserom.gba", 0xB4867C, 0x0000010

gUnk_08B4868C:: @ 08B4868C
	.incbin "baserom.gba", 0xB4868C, 0x0000010

gUnk_08B4869C:: @ 08B4869C
	.incbin "baserom.gba", 0xB4869C, 0x0000010

gUnk_08B486AC:: @ 08B486AC
	.incbin "baserom.gba", 0xB486AC, 0x0000004

gUnk_08B486B0:: @ 08B486B0
	.incbin "baserom.gba", 0xB486B0, 0x000000C

gUnk_08B486BC:: @ 08B486BC
	.incbin "baserom.gba", 0xB486BC, 0x0000004

gUnk_08B486C0:: @ 08B486C0
	.incbin "baserom.gba", 0xB486C0, 0x0000004

gUnk_08B486C4:: @ 08B486C4
	.incbin "baserom.gba", 0xB486C4, 0x000004C

gUnk_08B48710:: @ 08B48710
	.incbin "baserom.gba", 0xB48710, 0x0000020

gUnk_08B48730:: @ 08B48730
	.incbin "baserom.gba", 0xB48730, 0x000000C

gUnk_08B4873C:: @ 08B4873C
	.incbin "baserom.gba", 0xB4873C, 0x0000010

gUnk_08B4874C:: @ 08B4874C
	.incbin "baserom.gba", 0xB4874C, 0x0000008

gUnk_08B48754:: @ 08B48754
	.incbin "baserom.gba", 0xB48754, 0x0000008

gUnk_08B4875C:: @ 08B4875C
	.incbin "baserom.gba", 0xB4875C, 0x0000008

gUnk_08B48764:: @ 08B48764
	.incbin "baserom.gba", 0xB48764, 0x0000004

gUnk_08B48768:: @ 08B48768
	.incbin "baserom.gba", 0xB48768, 0x000000C

gUnk_08B48774:: @ 08B48774
	.incbin "baserom.gba", 0xB48774, 0x0000010

gUnk_08B48784:: @ 08B48784
	.incbin "baserom.gba", 0xB48784, 0x000000C

gUnk_08B48790:: @ 08B48790
	.incbin "baserom.gba", 0xB48790, 0x000000C

gUnk_08B4879C:: @ 08B4879C
	.incbin "baserom.gba", 0xB4879C, 0x0000014

gUnk_08B487B0:: @ 08B487B0
	.incbin "baserom.gba", 0xB487B0, 0x0000010

gUnk_08B487C0:: @ 08B487C0
	.incbin "baserom.gba", 0xB487C0, 0x0000010

gUnk_08B487D0:: @ 08B487D0
	.incbin "baserom.gba", 0xB487D0, 0x0000014

gUnk_08B487E4:: @ 08B487E4
	.incbin "baserom.gba", 0xB487E4, 0x000001C

gUnk_08B48800:: @ 08B48800
	.incbin "baserom.gba", 0xB48800, 0x0000020

gUnk_08B48820:: @ 08B48820
	.incbin "baserom.gba", 0xB48820, 0x000000C

gUnk_08B4882C:: @ 08B4882C
	.incbin "baserom.gba", 0xB4882C, 0x0000010

gUnk_08B4883C:: @ 08B4883C
	.incbin "baserom.gba", 0xB4883C, 0x0000014

gUnk_08B48850:: @ 08B48850
	.incbin "baserom.gba", 0xB48850, 0x000001C

gUnk_08B4886C:: @ 08B4886C
	.incbin "baserom.gba", 0xB4886C, 0x0000018

gUnk_08B48884:: @ 08B48884
	.incbin "baserom.gba", 0xB48884, 0x0000018

gUnk_08B4889C:: @ 08B4889C
	.incbin "baserom.gba", 0xB4889C, 0x0000018

gUnk_08B488B4:: @ 08B488B4
	.incbin "baserom.gba", 0xB488B4, 0x000000C

gUnk_08B488C0:: @ 08B488C0
	.incbin "baserom.gba", 0xB488C0, 0x0000014

gUnk_08B488D4:: @ 08B488D4
	.incbin "baserom.gba", 0xB488D4, 0x000000C

gUnk_08B488E0:: @ 08B488E0
	.incbin "baserom.gba", 0xB488E0, 0x000000C

gUnk_08B488EC:: @ 08B488EC
	.incbin "baserom.gba", 0xB488EC, 0x000004C

gUnk_08B48938:: @ 08B48938
	.incbin "baserom.gba", 0xB48938, 0x0000020

gUnk_08B48958:: @ 08B48958
	.incbin "baserom.gba", 0xB48958, 0x000000C

gUnk_08B48964:: @ 08B48964
	.incbin "baserom.gba", 0xB48964, 0x0000010

gUnk_08B48974:: @ 08B48974
	.incbin "baserom.gba", 0xB48974, 0x0000008

gUnk_08B4897C:: @ 08B4897C
	.incbin "baserom.gba", 0xB4897C, 0x0000008

gUnk_08B48984:: @ 08B48984
	.incbin "baserom.gba", 0xB48984, 0x000000C

gUnk_08B48990:: @ 08B48990
	.incbin "baserom.gba", 0xB48990, 0x0000004

gUnk_08B48994:: @ 08B48994
	.incbin "baserom.gba", 0xB48994, 0x0000008

gUnk_08B4899C:: @ 08B4899C
	.incbin "baserom.gba", 0xB4899C, 0x000000C

gUnk_08B489A8:: @ 08B489A8
	.incbin "baserom.gba", 0xB489A8, 0x000000C

gUnk_08B489B4:: @ 08B489B4
	.incbin "baserom.gba", 0xB489B4, 0x000000C

gUnk_08B489C0:: @ 08B489C0
	.incbin "baserom.gba", 0xB489C0, 0x0000014

gUnk_08B489D4:: @ 08B489D4
	.incbin "baserom.gba", 0xB489D4, 0x0000014

gUnk_08B489E8:: @ 08B489E8
	.incbin "baserom.gba", 0xB489E8, 0x0000010

gUnk_08B489F8:: @ 08B489F8
	.incbin "baserom.gba", 0xB489F8, 0x0000018

gUnk_08B48A10:: @ 08B48A10
	.incbin "baserom.gba", 0xB48A10, 0x0000020

gUnk_08B48A30:: @ 08B48A30
	.incbin "baserom.gba", 0xB48A30, 0x0000024

gUnk_08B48A54:: @ 08B48A54
	.incbin "baserom.gba", 0xB48A54, 0x0000010

gUnk_08B48A64:: @ 08B48A64
	.incbin "baserom.gba", 0xB48A64, 0x0000014

gUnk_08B48A78:: @ 08B48A78
	.incbin "baserom.gba", 0xB48A78, 0x0000018

gUnk_08B48A90:: @ 08B48A90
	.incbin "baserom.gba", 0xB48A90, 0x000001C

gUnk_08B48AAC:: @ 08B48AAC
	.incbin "baserom.gba", 0xB48AAC, 0x0000018

gUnk_08B48AC4:: @ 08B48AC4
	.incbin "baserom.gba", 0xB48AC4, 0x000001C

gUnk_08B48AE0:: @ 08B48AE0
	.incbin "baserom.gba", 0xB48AE0, 0x000001C

gUnk_08B48AFC:: @ 08B48AFC
	.incbin "baserom.gba", 0xB48AFC, 0x000000C

gUnk_08B48B08:: @ 08B48B08
	.incbin "baserom.gba", 0xB48B08, 0x0000014

gUnk_08B48B1C:: @ 08B48B1C
	.incbin "baserom.gba", 0xB48B1C, 0x0000008

gUnk_08B48B24:: @ 08B48B24
	.incbin "baserom.gba", 0xB48B24, 0x000000C

gUnk_08B48B30:: @ 08B48B30
	.incbin "baserom.gba", 0xB48B30, 0x000004C

gUnk_08B48B7C:: @ 08B48B7C
	.incbin "baserom.gba", 0xB48B7C, 0x000001C

gUnk_08B48B98:: @ 08B48B98
	.incbin "baserom.gba", 0xB48B98, 0x0000010

gUnk_08B48BA8:: @ 08B48BA8
	.incbin "baserom.gba", 0xB48BA8, 0x000000C

gUnk_08B48BB4:: @ 08B48BB4
	.incbin "baserom.gba", 0xB48BB4, 0x0000008

gUnk_08B48BBC:: @ 08B48BBC
	.incbin "baserom.gba", 0xB48BBC, 0x000000C

gUnk_08B48BC8:: @ 08B48BC8
	.incbin "baserom.gba", 0xB48BC8, 0x0000008

gUnk_08B48BD0:: @ 08B48BD0
	.incbin "baserom.gba", 0xB48BD0, 0x0000004

gUnk_08B48BD4:: @ 08B48BD4
	.incbin "baserom.gba", 0xB48BD4, 0x000000C

gUnk_08B48BE0:: @ 08B48BE0
	.incbin "baserom.gba", 0xB48BE0, 0x0000010

gUnk_08B48BF0:: @ 08B48BF0
	.incbin "baserom.gba", 0xB48BF0, 0x0000010

gUnk_08B48C00:: @ 08B48C00
	.incbin "baserom.gba", 0xB48C00, 0x0000008

gUnk_08B48C08:: @ 08B48C08
	.incbin "baserom.gba", 0xB48C08, 0x0000010

gUnk_08B48C18:: @ 08B48C18
	.incbin "baserom.gba", 0xB48C18, 0x0000010

gUnk_08B48C28:: @ 08B48C28
	.incbin "baserom.gba", 0xB48C28, 0x000000C

gUnk_08B48C34:: @ 08B48C34
	.incbin "baserom.gba", 0xB48C34, 0x0000014

gUnk_08B48C48:: @ 08B48C48
	.incbin "baserom.gba", 0xB48C48, 0x000001C

gUnk_08B48C64:: @ 08B48C64
	.incbin "baserom.gba", 0xB48C64, 0x0000020

gUnk_08B48C84:: @ 08B48C84
	.incbin "baserom.gba", 0xB48C84, 0x000000C

gUnk_08B48C90:: @ 08B48C90
	.incbin "baserom.gba", 0xB48C90, 0x0000010

gUnk_08B48CA0:: @ 08B48CA0
	.incbin "baserom.gba", 0xB48CA0, 0x0000014

gUnk_08B48CB4:: @ 08B48CB4
	.incbin "baserom.gba", 0xB48CB4, 0x0000018

gUnk_08B48CCC:: @ 08B48CCC
	.incbin "baserom.gba", 0xB48CCC, 0x0000014

gUnk_08B48CE0:: @ 08B48CE0
	.incbin "baserom.gba", 0xB48CE0, 0x0000018

gUnk_08B48CF8:: @ 08B48CF8
	.incbin "baserom.gba", 0xB48CF8, 0x0000018

gUnk_08B48D10:: @ 08B48D10
	.incbin "baserom.gba", 0xB48D10, 0x0000010

gUnk_08B48D20:: @ 08B48D20
	.incbin "baserom.gba", 0xB48D20, 0x0000010

gUnk_08B48D30:: @ 08B48D30
	.incbin "baserom.gba", 0xB48D30, 0x000000C

gUnk_08B48D3C:: @ 08B48D3C
	.incbin "baserom.gba", 0xB48D3C, 0x000000C

gUnk_08B48D48:: @ 08B48D48
	.incbin "baserom.gba", 0xB48D48, 0x000004C

gUnk_08B48D94:: @ 08B48D94
	.incbin "baserom.gba", 0xB48D94, 0x000004C

gUnk_08B48DE0:: @ 08B48DE0
	.incbin "baserom.gba", 0xB48DE0, 0x0000020

gUnk_08B48E00:: @ 08B48E00
	.incbin "baserom.gba", 0xB48E00, 0x0000008

gUnk_08B48E08:: @ 08B48E08
	.incbin "baserom.gba", 0xB48E08, 0x0000010

gUnk_08B48E18:: @ 08B48E18
	.incbin "baserom.gba", 0xB48E18, 0x000000C

gUnk_08B48E24:: @ 08B48E24
	.incbin "baserom.gba", 0xB48E24, 0x0000008

gUnk_08B48E2C:: @ 08B48E2C
	.incbin "baserom.gba", 0xB48E2C, 0x000000C

gUnk_08B48E38:: @ 08B48E38
	.incbin "baserom.gba", 0xB48E38, 0x0000004

gUnk_08B48E3C:: @ 08B48E3C
	.incbin "baserom.gba", 0xB48E3C, 0x0000008

gUnk_08B48E44:: @ 08B48E44
	.incbin "baserom.gba", 0xB48E44, 0x000000C

gUnk_08B48E50:: @ 08B48E50
	.incbin "baserom.gba", 0xB48E50, 0x000000C

gUnk_08B48E5C:: @ 08B48E5C
	.incbin "baserom.gba", 0xB48E5C, 0x000000C

gUnk_08B48E68:: @ 08B48E68
	.incbin "baserom.gba", 0xB48E68, 0x0000014

gUnk_08B48E7C:: @ 08B48E7C
	.incbin "baserom.gba", 0xB48E7C, 0x0000010

gUnk_08B48E8C:: @ 08B48E8C
	.incbin "baserom.gba", 0xB48E8C, 0x0000010

gUnk_08B48E9C:: @ 08B48E9C
	.incbin "baserom.gba", 0xB48E9C, 0x0000014

gUnk_08B48EB0:: @ 08B48EB0
	.incbin "baserom.gba", 0xB48EB0, 0x000001C

gUnk_08B48ECC:: @ 08B48ECC
	.incbin "baserom.gba", 0xB48ECC, 0x0000020

gUnk_08B48EEC:: @ 08B48EEC
	.incbin "baserom.gba", 0xB48EEC, 0x000000C

gUnk_08B48EF8:: @ 08B48EF8
	.incbin "baserom.gba", 0xB48EF8, 0x0000010

gUnk_08B48F08:: @ 08B48F08
	.incbin "baserom.gba", 0xB48F08, 0x0000014

gUnk_08B48F1C:: @ 08B48F1C
	.incbin "baserom.gba", 0xB48F1C, 0x000001C

gUnk_08B48F38:: @ 08B48F38
	.incbin "baserom.gba", 0xB48F38, 0x0000018

gUnk_08B48F50:: @ 08B48F50
	.incbin "baserom.gba", 0xB48F50, 0x0000018

gUnk_08B48F68:: @ 08B48F68
	.incbin "baserom.gba", 0xB48F68, 0x0000018

gUnk_08B48F80:: @ 08B48F80
	.incbin "baserom.gba", 0xB48F80, 0x000000C

gUnk_08B48F8C:: @ 08B48F8C
	.incbin "baserom.gba", 0xB48F8C, 0x0000014

gUnk_08B48FA0:: @ 08B48FA0
	.incbin "baserom.gba", 0xB48FA0, 0x000000C

gUnk_08B48FAC:: @ 08B48FAC
	.incbin "baserom.gba", 0xB48FAC, 0x0000008

gUnk_08B48FB4:: @ 08B48FB4
	.incbin "baserom.gba", 0xB48FB4, 0x000004C

gUnk_08B49000:: @ 08B49000
	.incbin "baserom.gba", 0xB49000, 0x0000024

gUnk_08B49024:: @ 08B49024
	.incbin "baserom.gba", 0xB49024, 0x0000008

gUnk_08B4902C:: @ 08B4902C
	.incbin "baserom.gba", 0xB4902C, 0x0000014

gUnk_08B49040:: @ 08B49040
	.incbin "baserom.gba", 0xB49040, 0x0000010

gUnk_08B49050:: @ 08B49050
	.incbin "baserom.gba", 0xB49050, 0x000000C

gUnk_08B4905C:: @ 08B4905C
	.incbin "baserom.gba", 0xB4905C, 0x0000010

gUnk_08B4906C:: @ 08B4906C
	.incbin "baserom.gba", 0xB4906C, 0x0000004

gUnk_08B49070:: @ 08B49070
	.incbin "baserom.gba", 0xB49070, 0x000000C

gUnk_08B4907C:: @ 08B4907C
	.incbin "baserom.gba", 0xB4907C, 0x0000008

gUnk_08B49084:: @ 08B49084
	.incbin "baserom.gba", 0xB49084, 0x0000008

gUnk_08B4908C:: @ 08B4908C
	.incbin "baserom.gba", 0xB4908C, 0x0000010

gUnk_08B4909C:: @ 08B4909C
	.incbin "baserom.gba", 0xB4909C, 0x0000018

gUnk_08B490B4:: @ 08B490B4
	.incbin "baserom.gba", 0xB490B4, 0x0000014

gUnk_08B490C8:: @ 08B490C8
	.incbin "baserom.gba", 0xB490C8, 0x0000014

gUnk_08B490DC:: @ 08B490DC
	.incbin "baserom.gba", 0xB490DC, 0x0000018

gUnk_08B490F4:: @ 08B490F4
	.incbin "baserom.gba", 0xB490F4, 0x0000020

gUnk_08B49114:: @ 08B49114
	.incbin "baserom.gba", 0xB49114, 0x0000024

gUnk_08B49138:: @ 08B49138
	.incbin "baserom.gba", 0xB49138, 0x0000010

gUnk_08B49148:: @ 08B49148
	.incbin "baserom.gba", 0xB49148, 0x0000014

gUnk_08B4915C:: @ 08B4915C
	.incbin "baserom.gba", 0xB4915C, 0x0000018

gUnk_08B49174:: @ 08B49174
	.incbin "baserom.gba", 0xB49174, 0x0000020

gUnk_08B49194:: @ 08B49194
	.incbin "baserom.gba", 0xB49194, 0x000001C

gUnk_08B491B0:: @ 08B491B0
	.incbin "baserom.gba", 0xB491B0, 0x000001C

gUnk_08B491CC:: @ 08B491CC
	.incbin "baserom.gba", 0xB491CC, 0x000001C

gUnk_08B491E8:: @ 08B491E8
	.incbin "baserom.gba", 0xB491E8, 0x000000C

gUnk_08B491F4:: @ 08B491F4
	.incbin "baserom.gba", 0xB491F4, 0x0000018

gUnk_08B4920C:: @ 08B4920C
	.incbin "baserom.gba", 0xB4920C, 0x000000C

gUnk_08B49218:: @ 08B49218
	.incbin "baserom.gba", 0xB49218, 0x000000C

gUnk_08B49224:: @ 08B49224
	.incbin "baserom.gba", 0xB49224, 0x000004C

gUnk_08B49270:: @ 08B49270
	.incbin "baserom.gba", 0xB49270, 0x0000024

gUnk_08B49294:: @ 08B49294
	.incbin "baserom.gba", 0xB49294, 0x000000C

gUnk_08B492A0:: @ 08B492A0
	.incbin "baserom.gba", 0xB492A0, 0x0000014

gUnk_08B492B4:: @ 08B492B4
	.incbin "baserom.gba", 0xB492B4, 0x000000C

gUnk_08B492C0:: @ 08B492C0
	.incbin "baserom.gba", 0xB492C0, 0x000000C

gUnk_08B492CC:: @ 08B492CC
	.incbin "baserom.gba", 0xB492CC, 0x0000010

gUnk_08B492DC:: @ 08B492DC
	.incbin "baserom.gba", 0xB492DC, 0x0000004

gUnk_08B492E0:: @ 08B492E0
	.incbin "baserom.gba", 0xB492E0, 0x000000C

gUnk_08B492EC:: @ 08B492EC
	.incbin "baserom.gba", 0xB492EC, 0x0000008

gUnk_08B492F4:: @ 08B492F4
	.incbin "baserom.gba", 0xB492F4, 0x0000008

gUnk_08B492FC:: @ 08B492FC
	.incbin "baserom.gba", 0xB492FC, 0x0000010

gUnk_08B4930C:: @ 08B4930C
	.incbin "baserom.gba", 0xB4930C, 0x0000018

gUnk_08B49324:: @ 08B49324
	.incbin "baserom.gba", 0xB49324, 0x0000018

gUnk_08B4933C:: @ 08B4933C
	.incbin "baserom.gba", 0xB4933C, 0x0000014

gUnk_08B49350:: @ 08B49350
	.incbin "baserom.gba", 0xB49350, 0x000001C

gUnk_08B4936C:: @ 08B4936C
	.incbin "baserom.gba", 0xB4936C, 0x0000024

gUnk_08B49390:: @ 08B49390
	.incbin "baserom.gba", 0xB49390, 0x0000028

gUnk_08B493B8:: @ 08B493B8
	.incbin "baserom.gba", 0xB493B8, 0x0000014

gUnk_08B493CC:: @ 08B493CC
	.incbin "baserom.gba", 0xB493CC, 0x0000018

gUnk_08B493E4:: @ 08B493E4
	.incbin "baserom.gba", 0xB493E4, 0x000001C

gUnk_08B49400:: @ 08B49400
	.incbin "baserom.gba", 0xB49400, 0x0000020

gUnk_08B49420:: @ 08B49420
	.incbin "baserom.gba", 0xB49420, 0x000001C

gUnk_08B4943C:: @ 08B4943C
	.incbin "baserom.gba", 0xB4943C, 0x0000020

gUnk_08B4945C:: @ 08B4945C
	.incbin "baserom.gba", 0xB4945C, 0x0000020

gUnk_08B4947C:: @ 08B4947C
	.incbin "baserom.gba", 0xB4947C, 0x000000C

gUnk_08B49488:: @ 08B49488
	.incbin "baserom.gba", 0xB49488, 0x0000018

gUnk_08B494A0:: @ 08B494A0
	.incbin "baserom.gba", 0xB494A0, 0x0000008

gUnk_08B494A8:: @ 08B494A8
	.incbin "baserom.gba", 0xB494A8, 0x0000010

gUnk_08B494B8:: @ 08B494B8
	.incbin "baserom.gba", 0xB494B8, 0x000004C

gUnk_08B49504:: @ 08B49504
	.incbin "baserom.gba", 0xB49504, 0x000001C

gUnk_08B49520:: @ 08B49520
	.incbin "baserom.gba", 0xB49520, 0x000000C

gUnk_08B4952C:: @ 08B4952C
	.incbin "baserom.gba", 0xB4952C, 0x000000C

gUnk_08B49538:: @ 08B49538
	.incbin "baserom.gba", 0xB49538, 0x000000C

gUnk_08B49544:: @ 08B49544
	.incbin "baserom.gba", 0xB49544, 0x000000C

gUnk_08B49550:: @ 08B49550
	.incbin "baserom.gba", 0xB49550, 0x0000008

gUnk_08B49558:: @ 08B49558
	.incbin "baserom.gba", 0xB49558, 0x0000004

gUnk_08B4955C:: @ 08B4955C
	.incbin "baserom.gba", 0xB4955C, 0x000000C

gUnk_08B49568:: @ 08B49568
	.incbin "baserom.gba", 0xB49568, 0x0000010

gUnk_08B49578:: @ 08B49578
	.incbin "baserom.gba", 0xB49578, 0x0000010

gUnk_08B49588:: @ 08B49588
	.incbin "baserom.gba", 0xB49588, 0x0000008

gUnk_08B49590:: @ 08B49590
	.incbin "baserom.gba", 0xB49590, 0x0000010

gUnk_08B495A0:: @ 08B495A0
	.incbin "baserom.gba", 0xB495A0, 0x000000C

gUnk_08B495AC:: @ 08B495AC
	.incbin "baserom.gba", 0xB495AC, 0x000000C

gUnk_08B495B8:: @ 08B495B8
	.incbin "baserom.gba", 0xB495B8, 0x0000010

gUnk_08B495C8:: @ 08B495C8
	.incbin "baserom.gba", 0xB495C8, 0x0000018

gUnk_08B495E0:: @ 08B495E0
	.incbin "baserom.gba", 0xB495E0, 0x000001C

gUnk_08B495FC:: @ 08B495FC
	.incbin "baserom.gba", 0xB495FC, 0x0000008

gUnk_08B49604:: @ 08B49604
	.incbin "baserom.gba", 0xB49604, 0x000000C

gUnk_08B49610:: @ 08B49610
	.incbin "baserom.gba", 0xB49610, 0x0000010

gUnk_08B49620:: @ 08B49620
	.incbin "baserom.gba", 0xB49620, 0x0000018

gUnk_08B49638:: @ 08B49638
	.incbin "baserom.gba", 0xB49638, 0x0000014

gUnk_08B4964C:: @ 08B4964C
	.incbin "baserom.gba", 0xB4964C, 0x0000014

gUnk_08B49660:: @ 08B49660
	.incbin "baserom.gba", 0xB49660, 0x0000014

gUnk_08B49674:: @ 08B49674
	.incbin "baserom.gba", 0xB49674, 0x0000010

gUnk_08B49684:: @ 08B49684
	.incbin "baserom.gba", 0xB49684, 0x0000010

gUnk_08B49694:: @ 08B49694
	.incbin "baserom.gba", 0xB49694, 0x0000010

gUnk_08B496A4:: @ 08B496A4
	.incbin "baserom.gba", 0xB496A4, 0x0000008

gUnk_08B496AC:: @ 08B496AC
	.incbin "baserom.gba", 0xB496AC, 0x000004C

gUnk_08B496F8:: @ 08B496F8
	.incbin "baserom.gba", 0xB496F8, 0x0000014

gUnk_08B4970C:: @ 08B4970C
	.incbin "baserom.gba", 0xB4970C, 0x0000004

gUnk_08B49710:: @ 08B49710
	.incbin "baserom.gba", 0xB49710, 0x0000004

gUnk_08B49714:: @ 08B49714
	.incbin "baserom.gba", 0xB49714, 0x0000004

gUnk_08B49718:: @ 08B49718
	.incbin "baserom.gba", 0xB49718, 0x0000004

gUnk_08B4971C:: @ 08B4971C
	.incbin "baserom.gba", 0xB4971C, 0x0000004

gUnk_08B49720:: @ 08B49720
	.incbin "baserom.gba", 0xB49720, 0x0000004

gUnk_08B49724:: @ 08B49724
	.incbin "baserom.gba", 0xB49724, 0x0000004

gUnk_08B49728:: @ 08B49728
	.incbin "baserom.gba", 0xB49728, 0x0000004

gUnk_08B4972C:: @ 08B4972C
	.incbin "baserom.gba", 0xB4972C, 0x0000004

gUnk_08B49730:: @ 08B49730
	.incbin "baserom.gba", 0xB49730, 0x0000004

gUnk_08B49734:: @ 08B49734
	.incbin "baserom.gba", 0xB49734, 0x0000008

gUnk_08B4973C:: @ 08B4973C
	.incbin "baserom.gba", 0xB4973C, 0x0000004

gUnk_08B49740:: @ 08B49740
	.incbin "baserom.gba", 0xB49740, 0x0000004

gUnk_08B49744:: @ 08B49744
	.incbin "baserom.gba", 0xB49744, 0x0000008

gUnk_08B4974C:: @ 08B4974C
	.incbin "baserom.gba", 0xB4974C, 0x0000010

gUnk_08B4975C:: @ 08B4975C
	.incbin "baserom.gba", 0xB4975C, 0x0000014

gUnk_08B49770:: @ 08B49770
	.incbin "baserom.gba", 0xB49770, 0x0000004

gUnk_08B49774:: @ 08B49774
	.incbin "baserom.gba", 0xB49774, 0x0000004

gUnk_08B49778:: @ 08B49778
	.incbin "baserom.gba", 0xB49778, 0x0000004

gUnk_08B4977C:: @ 08B4977C
	.incbin "baserom.gba", 0xB4977C, 0x0000010

gUnk_08B4978C:: @ 08B4978C
	.incbin "baserom.gba", 0xB4978C, 0x000000C

gUnk_08B49798:: @ 08B49798
	.incbin "baserom.gba", 0xB49798, 0x000000C

gUnk_08B497A4:: @ 08B497A4
	.incbin "baserom.gba", 0xB497A4, 0x000000C

gUnk_08B497B0:: @ 08B497B0
	.incbin "baserom.gba", 0xB497B0, 0x0000004

gUnk_08B497B4:: @ 08B497B4
	.incbin "baserom.gba", 0xB497B4, 0x0000004

gUnk_08B497B8:: @ 08B497B8
	.incbin "baserom.gba", 0xB497B8, 0x0000004

gUnk_08B497BC:: @ 08B497BC
	.incbin "baserom.gba", 0xB497BC, 0x0000004

gUnk_08B497C0:: @ 08B497C0
	.incbin "baserom.gba", 0xB497C0, 0x000004C

gUnk_08B4980C:: @ 08B4980C
	.incbin "baserom.gba", 0xB4980C, 0x0000004

gUnk_08B49810:: @ 08B49810
	.incbin "baserom.gba", 0xB49810, 0x0000004

gUnk_08B49814:: @ 08B49814
	.incbin "baserom.gba", 0xB49814, 0x0000004

gUnk_08B49818:: @ 08B49818
	.incbin "baserom.gba", 0xB49818, 0x0000004

gUnk_08B4981C:: @ 08B4981C
	.incbin "baserom.gba", 0xB4981C, 0x0000004

gUnk_08B49820:: @ 08B49820
	.incbin "baserom.gba", 0xB49820, 0x0000004

gUnk_08B49824:: @ 08B49824
	.incbin "baserom.gba", 0xB49824, 0x0000004

gUnk_08B49828:: @ 08B49828
	.incbin "baserom.gba", 0xB49828, 0x0000004

gUnk_08B4982C:: @ 08B4982C
	.incbin "baserom.gba", 0xB4982C, 0x0000004

gUnk_08B49830:: @ 08B49830
	.incbin "baserom.gba", 0xB49830, 0x0000004

gUnk_08B49834:: @ 08B49834
	.incbin "baserom.gba", 0xB49834, 0x0000004

gUnk_08B49838:: @ 08B49838
	.incbin "baserom.gba", 0xB49838, 0x0000004

gUnk_08B4983C:: @ 08B4983C
	.incbin "baserom.gba", 0xB4983C, 0x0000008

gUnk_08B49844:: @ 08B49844
	.incbin "baserom.gba", 0xB49844, 0x0000004

gUnk_08B49848:: @ 08B49848
	.incbin "baserom.gba", 0xB49848, 0x0000004

gUnk_08B4984C:: @ 08B4984C
	.incbin "baserom.gba", 0xB4984C, 0x0000004

gUnk_08B49850:: @ 08B49850
	.incbin "baserom.gba", 0xB49850, 0x0000004

gUnk_08B49854:: @ 08B49854
	.incbin "baserom.gba", 0xB49854, 0x0000004

gUnk_08B49858:: @ 08B49858
	.incbin "baserom.gba", 0xB49858, 0x0000004

gUnk_08B4985C:: @ 08B4985C
	.incbin "baserom.gba", 0xB4985C, 0x0000004

gUnk_08B49860:: @ 08B49860
	.incbin "baserom.gba", 0xB49860, 0x0000004

gUnk_08B49864:: @ 08B49864
	.incbin "baserom.gba", 0xB49864, 0x0000004

gUnk_08B49868:: @ 08B49868
	.incbin "baserom.gba", 0xB49868, 0x0000004

gUnk_08B4986C:: @ 08B4986C
	.incbin "baserom.gba", 0xB4986C, 0x0000004

gUnk_08B49870:: @ 08B49870
	.incbin "baserom.gba", 0xB49870, 0x0000004

gUnk_08B49874:: @ 08B49874
	.incbin "baserom.gba", 0xB49874, 0x0000004

gUnk_08B49878:: @ 08B49878
	.incbin "baserom.gba", 0xB49878, 0x0000004

gUnk_08B4987C:: @ 08B4987C
	.incbin "baserom.gba", 0xB4987C, 0x0000004

gUnk_08B49880:: @ 08B49880
	.incbin "baserom.gba", 0xB49880, 0x000004C

gUnk_08B498CC:: @ 08B498CC
	.incbin "baserom.gba", 0xB498CC, 0x0000004

gUnk_08B498D0:: @ 08B498D0
	.incbin "baserom.gba", 0xB498D0, 0x0000004

gUnk_08B498D4:: @ 08B498D4
	.incbin "baserom.gba", 0xB498D4, 0x0000004

gUnk_08B498D8:: @ 08B498D8
	.incbin "baserom.gba", 0xB498D8, 0x0000004

gUnk_08B498DC:: @ 08B498DC
	.incbin "baserom.gba", 0xB498DC, 0x0000004

gUnk_08B498E0:: @ 08B498E0
	.incbin "baserom.gba", 0xB498E0, 0x0000004

gUnk_08B498E4:: @ 08B498E4
	.incbin "baserom.gba", 0xB498E4, 0x0000004

gUnk_08B498E8:: @ 08B498E8
	.incbin "baserom.gba", 0xB498E8, 0x0000004

gUnk_08B498EC:: @ 08B498EC
	.incbin "baserom.gba", 0xB498EC, 0x0000004

gUnk_08B498F0:: @ 08B498F0
	.incbin "baserom.gba", 0xB498F0, 0x0000004

gUnk_08B498F4:: @ 08B498F4
	.incbin "baserom.gba", 0xB498F4, 0x0000004

gUnk_08B498F8:: @ 08B498F8
	.incbin "baserom.gba", 0xB498F8, 0x0000004

gUnk_08B498FC:: @ 08B498FC
	.incbin "baserom.gba", 0xB498FC, 0x0000008

gUnk_08B49904:: @ 08B49904
	.incbin "baserom.gba", 0xB49904, 0x0000008

gUnk_08B4990C:: @ 08B4990C
	.incbin "baserom.gba", 0xB4990C, 0x0000004

gUnk_08B49910:: @ 08B49910
	.incbin "baserom.gba", 0xB49910, 0x0000004

gUnk_08B49914:: @ 08B49914
	.incbin "baserom.gba", 0xB49914, 0x0000004

gUnk_08B49918:: @ 08B49918
	.incbin "baserom.gba", 0xB49918, 0x0000004

gUnk_08B4991C:: @ 08B4991C
	.incbin "baserom.gba", 0xB4991C, 0x0000004

gUnk_08B49920:: @ 08B49920
	.incbin "baserom.gba", 0xB49920, 0x0000004

gUnk_08B49924:: @ 08B49924
	.incbin "baserom.gba", 0xB49924, 0x0000004

gUnk_08B49928:: @ 08B49928
	.incbin "baserom.gba", 0xB49928, 0x0000004

gUnk_08B4992C:: @ 08B4992C
	.incbin "baserom.gba", 0xB4992C, 0x0000004

gUnk_08B49930:: @ 08B49930
	.incbin "baserom.gba", 0xB49930, 0x0000004

gUnk_08B49934:: @ 08B49934
	.incbin "baserom.gba", 0xB49934, 0x0000004

gUnk_08B49938:: @ 08B49938
	.incbin "baserom.gba", 0xB49938, 0x0000004

gUnk_08B4993C:: @ 08B4993C
	.incbin "baserom.gba", 0xB4993C, 0x0000004

gUnk_08B49940:: @ 08B49940
	.incbin "baserom.gba", 0xB49940, 0x0000004

gUnk_08B49944:: @ 08B49944
	.incbin "baserom.gba", 0xB49944, 0x000004C

gUnk_08B49990:: @ 08B49990
	.incbin "baserom.gba", 0xB49990, 0x0000010

gUnk_08B499A0:: @ 08B499A0
	.incbin "baserom.gba", 0xB499A0, 0x0000004

gUnk_08B499A4:: @ 08B499A4
	.incbin "baserom.gba", 0xB499A4, 0x0000004

gUnk_08B499A8:: @ 08B499A8
	.incbin "baserom.gba", 0xB499A8, 0x0000004

gUnk_08B499AC:: @ 08B499AC
	.incbin "baserom.gba", 0xB499AC, 0x0000004

gUnk_08B499B0:: @ 08B499B0
	.incbin "baserom.gba", 0xB499B0, 0x0000004

gUnk_08B499B4:: @ 08B499B4
	.incbin "baserom.gba", 0xB499B4, 0x0000004

gUnk_08B499B8:: @ 08B499B8
	.incbin "baserom.gba", 0xB499B8, 0x0000004

gUnk_08B499BC:: @ 08B499BC
	.incbin "baserom.gba", 0xB499BC, 0x0000004

gUnk_08B499C0:: @ 08B499C0
	.incbin "baserom.gba", 0xB499C0, 0x0000004

gUnk_08B499C4:: @ 08B499C4
	.incbin "baserom.gba", 0xB499C4, 0x0000004

gUnk_08B499C8:: @ 08B499C8
	.incbin "baserom.gba", 0xB499C8, 0x0000004

gUnk_08B499CC:: @ 08B499CC
	.incbin "baserom.gba", 0xB499CC, 0x0000004

gUnk_08B499D0:: @ 08B499D0
	.incbin "baserom.gba", 0xB499D0, 0x0000004

gUnk_08B499D4:: @ 08B499D4
	.incbin "baserom.gba", 0xB499D4, 0x0000008

gUnk_08B499DC:: @ 08B499DC
	.incbin "baserom.gba", 0xB499DC, 0x0000010

gUnk_08B499EC:: @ 08B499EC
	.incbin "baserom.gba", 0xB499EC, 0x0000014

gUnk_08B49A00:: @ 08B49A00
	.incbin "baserom.gba", 0xB49A00, 0x0000004

gUnk_08B49A04:: @ 08B49A04
	.incbin "baserom.gba", 0xB49A04, 0x0000004

gUnk_08B49A08:: @ 08B49A08
	.incbin "baserom.gba", 0xB49A08, 0x0000004

gUnk_08B49A0C:: @ 08B49A0C
	.incbin "baserom.gba", 0xB49A0C, 0x000000C

gUnk_08B49A18:: @ 08B49A18
	.incbin "baserom.gba", 0xB49A18, 0x0000008

gUnk_08B49A20:: @ 08B49A20
	.incbin "baserom.gba", 0xB49A20, 0x000000C

gUnk_08B49A2C:: @ 08B49A2C
	.incbin "baserom.gba", 0xB49A2C, 0x000000C

gUnk_08B49A38:: @ 08B49A38
	.incbin "baserom.gba", 0xB49A38, 0x0000004

gUnk_08B49A3C:: @ 08B49A3C
	.incbin "baserom.gba", 0xB49A3C, 0x0000004

gUnk_08B49A40:: @ 08B49A40
	.incbin "baserom.gba", 0xB49A40, 0x0000004

gUnk_08B49A44:: @ 08B49A44
	.incbin "baserom.gba", 0xB49A44, 0x0000004

gUnk_08B49A48:: @ 08B49A48
	.incbin "baserom.gba", 0xB49A48, 0x000004C

gUnk_08B49A94:: @ 08B49A94
	.incbin "baserom.gba", 0xB49A94, 0x0000008

gUnk_08B49A9C:: @ 08B49A9C
	.incbin "baserom.gba", 0xB49A9C, 0x0000004

gUnk_08B49AA0:: @ 08B49AA0
	.incbin "baserom.gba", 0xB49AA0, 0x0000004

gUnk_08B49AA4:: @ 08B49AA4
	.incbin "baserom.gba", 0xB49AA4, 0x0000004

gUnk_08B49AA8:: @ 08B49AA8
	.incbin "baserom.gba", 0xB49AA8, 0x0000004

gUnk_08B49AAC:: @ 08B49AAC
	.incbin "baserom.gba", 0xB49AAC, 0x0000004

gUnk_08B49AB0:: @ 08B49AB0
	.incbin "baserom.gba", 0xB49AB0, 0x0000004

gUnk_08B49AB4:: @ 08B49AB4
	.incbin "baserom.gba", 0xB49AB4, 0x0000004

gUnk_08B49AB8:: @ 08B49AB8
	.incbin "baserom.gba", 0xB49AB8, 0x0000004

gUnk_08B49ABC:: @ 08B49ABC
	.incbin "baserom.gba", 0xB49ABC, 0x0000004

gUnk_08B49AC0:: @ 08B49AC0
	.incbin "baserom.gba", 0xB49AC0, 0x0000004

gUnk_08B49AC4:: @ 08B49AC4
	.incbin "baserom.gba", 0xB49AC4, 0x0000004

gUnk_08B49AC8:: @ 08B49AC8
	.incbin "baserom.gba", 0xB49AC8, 0x0000004

gUnk_08B49ACC:: @ 08B49ACC
	.incbin "baserom.gba", 0xB49ACC, 0x0000004

gUnk_08B49AD0:: @ 08B49AD0
	.incbin "baserom.gba", 0xB49AD0, 0x0000004

gUnk_08B49AD4:: @ 08B49AD4
	.incbin "baserom.gba", 0xB49AD4, 0x0000008

gUnk_08B49ADC:: @ 08B49ADC
	.incbin "baserom.gba", 0xB49ADC, 0x000000C

gUnk_08B49AE8:: @ 08B49AE8
	.incbin "baserom.gba", 0xB49AE8, 0x0000004

gUnk_08B49AEC:: @ 08B49AEC
	.incbin "baserom.gba", 0xB49AEC, 0x0000004

gUnk_08B49AF0:: @ 08B49AF0
	.incbin "baserom.gba", 0xB49AF0, 0x0000004

gUnk_08B49AF4:: @ 08B49AF4
	.incbin "baserom.gba", 0xB49AF4, 0x0000004

gUnk_08B49AF8:: @ 08B49AF8
	.incbin "baserom.gba", 0xB49AF8, 0x0000004

gUnk_08B49AFC:: @ 08B49AFC
	.incbin "baserom.gba", 0xB49AFC, 0x0000004

gUnk_08B49B00:: @ 08B49B00
	.incbin "baserom.gba", 0xB49B00, 0x0000004

gUnk_08B49B04:: @ 08B49B04
	.incbin "baserom.gba", 0xB49B04, 0x0000004

gUnk_08B49B08:: @ 08B49B08
	.incbin "baserom.gba", 0xB49B08, 0x0000004

gUnk_08B49B0C:: @ 08B49B0C
	.incbin "baserom.gba", 0xB49B0C, 0x0000004

gUnk_08B49B10:: @ 08B49B10
	.incbin "baserom.gba", 0xB49B10, 0x0000004

gUnk_08B49B14:: @ 08B49B14
	.incbin "baserom.gba", 0xB49B14, 0x000004C

gUnk_08B49B60:: @ 08B49B60
	.incbin "baserom.gba", 0xB49B60, 0x0000004

gUnk_08B49B64:: @ 08B49B64
	.incbin "baserom.gba", 0xB49B64, 0x0000004

gUnk_08B49B68:: @ 08B49B68
	.incbin "baserom.gba", 0xB49B68, 0x0000004

gUnk_08B49B6C:: @ 08B49B6C
	.incbin "baserom.gba", 0xB49B6C, 0x0000004

gUnk_08B49B70:: @ 08B49B70
	.incbin "baserom.gba", 0xB49B70, 0x0000004

gUnk_08B49B74:: @ 08B49B74
	.incbin "baserom.gba", 0xB49B74, 0x0000004

gUnk_08B49B78:: @ 08B49B78
	.incbin "baserom.gba", 0xB49B78, 0x0000004

gUnk_08B49B7C:: @ 08B49B7C
	.incbin "baserom.gba", 0xB49B7C, 0x0000004

gUnk_08B49B80:: @ 08B49B80
	.incbin "baserom.gba", 0xB49B80, 0x0000004

gUnk_08B49B84:: @ 08B49B84
	.incbin "baserom.gba", 0xB49B84, 0x0000004

gUnk_08B49B88:: @ 08B49B88
	.incbin "baserom.gba", 0xB49B88, 0x0000004

gUnk_08B49B8C:: @ 08B49B8C
	.incbin "baserom.gba", 0xB49B8C, 0x0000004

gUnk_08B49B90:: @ 08B49B90
	.incbin "baserom.gba", 0xB49B90, 0x0000004

gUnk_08B49B94:: @ 08B49B94
	.incbin "baserom.gba", 0xB49B94, 0x0000004

gUnk_08B49B98:: @ 08B49B98
	.incbin "baserom.gba", 0xB49B98, 0x0000004

gUnk_08B49B9C:: @ 08B49B9C
	.incbin "baserom.gba", 0xB49B9C, 0x0000004

gUnk_08B49BA0:: @ 08B49BA0
	.incbin "baserom.gba", 0xB49BA0, 0x0000008

gUnk_08B49BA8:: @ 08B49BA8
	.incbin "baserom.gba", 0xB49BA8, 0x0000004

gUnk_08B49BAC:: @ 08B49BAC
	.incbin "baserom.gba", 0xB49BAC, 0x0000004

gUnk_08B49BB0:: @ 08B49BB0
	.incbin "baserom.gba", 0xB49BB0, 0x0000004

gUnk_08B49BB4:: @ 08B49BB4
	.incbin "baserom.gba", 0xB49BB4, 0x0000004

gUnk_08B49BB8:: @ 08B49BB8
	.incbin "baserom.gba", 0xB49BB8, 0x0000004

gUnk_08B49BBC:: @ 08B49BBC
	.incbin "baserom.gba", 0xB49BBC, 0x0000004

gUnk_08B49BC0:: @ 08B49BC0
	.incbin "baserom.gba", 0xB49BC0, 0x0000004

gUnk_08B49BC4:: @ 08B49BC4
	.incbin "baserom.gba", 0xB49BC4, 0x0000004

gUnk_08B49BC8:: @ 08B49BC8
	.incbin "baserom.gba", 0xB49BC8, 0x0000004

gUnk_08B49BCC:: @ 08B49BCC
	.incbin "baserom.gba", 0xB49BCC, 0x0000004

gUnk_08B49BD0:: @ 08B49BD0
	.incbin "baserom.gba", 0xB49BD0, 0x0000004

gUnk_08B49BD4:: @ 08B49BD4
	.incbin "baserom.gba", 0xB49BD4, 0x000004C

gUnk_08B49C20:: @ 08B49C20
	.incbin "baserom.gba", 0xB49C20, 0x0000018

gUnk_08B49C38:: @ 08B49C38
	.incbin "baserom.gba", 0xB49C38, 0x0000010

gUnk_08B49C48:: @ 08B49C48
	.incbin "baserom.gba", 0xB49C48, 0x0000008

gUnk_08B49C50:: @ 08B49C50
	.incbin "baserom.gba", 0xB49C50, 0x000000C

gUnk_08B49C5C:: @ 08B49C5C
	.incbin "baserom.gba", 0xB49C5C, 0x0000010

gUnk_08B49C6C:: @ 08B49C6C
	.incbin "baserom.gba", 0xB49C6C, 0x000000C

gUnk_08B49C78:: @ 08B49C78
	.incbin "baserom.gba", 0xB49C78, 0x0000004

gUnk_08B49C7C:: @ 08B49C7C
	.incbin "baserom.gba", 0xB49C7C, 0x000000C

gUnk_08B49C88:: @ 08B49C88
	.incbin "baserom.gba", 0xB49C88, 0x0000010

gUnk_08B49C98:: @ 08B49C98
	.incbin "baserom.gba", 0xB49C98, 0x0000014

gUnk_08B49CAC:: @ 08B49CAC
	.incbin "baserom.gba", 0xB49CAC, 0x0000008

gUnk_08B49CB4:: @ 08B49CB4
	.incbin "baserom.gba", 0xB49CB4, 0x000000C

gUnk_08B49CC0:: @ 08B49CC0
	.incbin "baserom.gba", 0xB49CC0, 0x000000C

gUnk_08B49CCC:: @ 08B49CCC
	.incbin "baserom.gba", 0xB49CCC, 0x0000008

gUnk_08B49CD4:: @ 08B49CD4
	.incbin "baserom.gba", 0xB49CD4, 0x0000010

gUnk_08B49CE4:: @ 08B49CE4
	.incbin "baserom.gba", 0xB49CE4, 0x0000018

gUnk_08B49CFC:: @ 08B49CFC
	.incbin "baserom.gba", 0xB49CFC, 0x000001C

gUnk_08B49D18:: @ 08B49D18
	.incbin "baserom.gba", 0xB49D18, 0x0000008

gUnk_08B49D20:: @ 08B49D20
	.incbin "baserom.gba", 0xB49D20, 0x000000C

gUnk_08B49D2C:: @ 08B49D2C
	.incbin "baserom.gba", 0xB49D2C, 0x0000010

gUnk_08B49D3C:: @ 08B49D3C
	.incbin "baserom.gba", 0xB49D3C, 0x0000014

gUnk_08B49D50:: @ 08B49D50
	.incbin "baserom.gba", 0xB49D50, 0x0000010

gUnk_08B49D60:: @ 08B49D60
	.incbin "baserom.gba", 0xB49D60, 0x0000014

gUnk_08B49D74:: @ 08B49D74
	.incbin "baserom.gba", 0xB49D74, 0x0000014

gUnk_08B49D88:: @ 08B49D88
	.incbin "baserom.gba", 0xB49D88, 0x0000014

gUnk_08B49D9C:: @ 08B49D9C
	.incbin "baserom.gba", 0xB49D9C, 0x000000C

gUnk_08B49DA8:: @ 08B49DA8
	.incbin "baserom.gba", 0xB49DA8, 0x0000010

gUnk_08B49DB8:: @ 08B49DB8
	.incbin "baserom.gba", 0xB49DB8, 0x000000C

gUnk_08B49DC4:: @ 08B49DC4
	.incbin "baserom.gba", 0xB49DC4, 0x000004C

gUnk_08B49E10:: @ 08B49E10
	.incbin "baserom.gba", 0xB49E10, 0x0000014

gUnk_08B49E24:: @ 08B49E24
	.incbin "baserom.gba", 0xB49E24, 0x0000004

gUnk_08B49E28:: @ 08B49E28
	.incbin "baserom.gba", 0xB49E28, 0x0000004

gUnk_08B49E2C:: @ 08B49E2C
	.incbin "baserom.gba", 0xB49E2C, 0x0000004

gUnk_08B49E30:: @ 08B49E30
	.incbin "baserom.gba", 0xB49E30, 0x0000004

gUnk_08B49E34:: @ 08B49E34
	.incbin "baserom.gba", 0xB49E34, 0x0000004

gUnk_08B49E38:: @ 08B49E38
	.incbin "baserom.gba", 0xB49E38, 0x0000004

gUnk_08B49E3C:: @ 08B49E3C
	.incbin "baserom.gba", 0xB49E3C, 0x0000004

gUnk_08B49E40:: @ 08B49E40
	.incbin "baserom.gba", 0xB49E40, 0x0000004

gUnk_08B49E44:: @ 08B49E44
	.incbin "baserom.gba", 0xB49E44, 0x0000004

gUnk_08B49E48:: @ 08B49E48
	.incbin "baserom.gba", 0xB49E48, 0x0000004

gUnk_08B49E4C:: @ 08B49E4C
	.incbin "baserom.gba", 0xB49E4C, 0x0000008

gUnk_08B49E54:: @ 08B49E54
	.incbin "baserom.gba", 0xB49E54, 0x0000004

gUnk_08B49E58:: @ 08B49E58
	.incbin "baserom.gba", 0xB49E58, 0x0000004

gUnk_08B49E5C:: @ 08B49E5C
	.incbin "baserom.gba", 0xB49E5C, 0x000000C

gUnk_08B49E68:: @ 08B49E68
	.incbin "baserom.gba", 0xB49E68, 0x0000014

gUnk_08B49E7C:: @ 08B49E7C
	.incbin "baserom.gba", 0xB49E7C, 0x0000018

gUnk_08B49E94:: @ 08B49E94
	.incbin "baserom.gba", 0xB49E94, 0x0000004

gUnk_08B49E98:: @ 08B49E98
	.incbin "baserom.gba", 0xB49E98, 0x0000008

gUnk_08B49EA0:: @ 08B49EA0
	.incbin "baserom.gba", 0xB49EA0, 0x000000C

gUnk_08B49EAC:: @ 08B49EAC
	.incbin "baserom.gba", 0xB49EAC, 0x0000010

gUnk_08B49EBC:: @ 08B49EBC
	.incbin "baserom.gba", 0xB49EBC, 0x000000C

gUnk_08B49EC8:: @ 08B49EC8
	.incbin "baserom.gba", 0xB49EC8, 0x0000010

gUnk_08B49ED8:: @ 08B49ED8
	.incbin "baserom.gba", 0xB49ED8, 0x0000010

gUnk_08B49EE8:: @ 08B49EE8
	.incbin "baserom.gba", 0xB49EE8, 0x0000004

gUnk_08B49EEC:: @ 08B49EEC
	.incbin "baserom.gba", 0xB49EEC, 0x0000008

gUnk_08B49EF4:: @ 08B49EF4
	.incbin "baserom.gba", 0xB49EF4, 0x0000004

gUnk_08B49EF8:: @ 08B49EF8
	.incbin "baserom.gba", 0xB49EF8, 0x0000004

gUnk_08B49EFC:: @ 08B49EFC
	.incbin "baserom.gba", 0xB49EFC, 0x000004C

gUnk_08B49F48:: @ 08B49F48
	.incbin "baserom.gba", 0xB49F48, 0x0000004

gUnk_08B49F4C:: @ 08B49F4C
	.incbin "baserom.gba", 0xB49F4C, 0x0000004

gUnk_08B49F50:: @ 08B49F50
	.incbin "baserom.gba", 0xB49F50, 0x0000004

gUnk_08B49F54:: @ 08B49F54
	.incbin "baserom.gba", 0xB49F54, 0x0000004

gUnk_08B49F58:: @ 08B49F58
	.incbin "baserom.gba", 0xB49F58, 0x0000004

gUnk_08B49F5C:: @ 08B49F5C
	.incbin "baserom.gba", 0xB49F5C, 0x0000004

gUnk_08B49F60:: @ 08B49F60
	.incbin "baserom.gba", 0xB49F60, 0x0000004

gUnk_08B49F64:: @ 08B49F64
	.incbin "baserom.gba", 0xB49F64, 0x0000004

gUnk_08B49F68:: @ 08B49F68
	.incbin "baserom.gba", 0xB49F68, 0x0000004

gUnk_08B49F6C:: @ 08B49F6C
	.incbin "baserom.gba", 0xB49F6C, 0x0000004

gUnk_08B49F70:: @ 08B49F70
	.incbin "baserom.gba", 0xB49F70, 0x0000004

gUnk_08B49F74:: @ 08B49F74
	.incbin "baserom.gba", 0xB49F74, 0x0000004

gUnk_08B49F78:: @ 08B49F78
	.incbin "baserom.gba", 0xB49F78, 0x0000004

gUnk_08B49F7C:: @ 08B49F7C
	.incbin "baserom.gba", 0xB49F7C, 0x0000004

gUnk_08B49F80:: @ 08B49F80
	.incbin "baserom.gba", 0xB49F80, 0x0000004

gUnk_08B49F84:: @ 08B49F84
	.incbin "baserom.gba", 0xB49F84, 0x0000004

gUnk_08B49F88:: @ 08B49F88
	.incbin "baserom.gba", 0xB49F88, 0x0000004

gUnk_08B49F8C:: @ 08B49F8C
	.incbin "baserom.gba", 0xB49F8C, 0x0000004

gUnk_08B49F90:: @ 08B49F90
	.incbin "baserom.gba", 0xB49F90, 0x0000004

gUnk_08B49F94:: @ 08B49F94
	.incbin "baserom.gba", 0xB49F94, 0x0000008

gUnk_08B49F9C:: @ 08B49F9C
	.incbin "baserom.gba", 0xB49F9C, 0x0000004

gUnk_08B49FA0:: @ 08B49FA0
	.incbin "baserom.gba", 0xB49FA0, 0x0000004

gUnk_08B49FA4:: @ 08B49FA4
	.incbin "baserom.gba", 0xB49FA4, 0x0000004

gUnk_08B49FA8:: @ 08B49FA8
	.incbin "baserom.gba", 0xB49FA8, 0x0000003

gUnk_08B49FAB:: @ 08B49FAB
	.incbin "baserom.gba", 0xB49FAB, 0x0000001

gUnk_08B49FAC:: @ 08B49FAC
	.incbin "baserom.gba", 0xB49FAC, 0x0000004

gUnk_08B49FB0:: @ 08B49FB0
	.incbin "baserom.gba", 0xB49FB0, 0x0000004

gUnk_08B49FB4:: @ 08B49FB4
	.incbin "baserom.gba", 0xB49FB4, 0x0000004

gUnk_08B49FB8:: @ 08B49FB8
	.incbin "baserom.gba", 0xB49FB8, 0x0000004

gUnk_08B49FBC:: @ 08B49FBC
	.incbin "baserom.gba", 0xB49FBC, 0x000004C

gUnk_08B4A008:: @ 08B4A008
	.incbin "baserom.gba", 0xB4A008, 0x000000C

gUnk_08B4A014:: @ 08B4A014
	.incbin "baserom.gba", 0xB4A014, 0x0000004

gUnk_08B4A018:: @ 08B4A018
	.incbin "baserom.gba", 0xB4A018, 0x0000004

gUnk_08B4A01C:: @ 08B4A01C
	.incbin "baserom.gba", 0xB4A01C, 0x0000004

gUnk_08B4A020:: @ 08B4A020
	.incbin "baserom.gba", 0xB4A020, 0x0000004

gUnk_08B4A024:: @ 08B4A024
	.incbin "baserom.gba", 0xB4A024, 0x0000004

gUnk_08B4A028:: @ 08B4A028
	.incbin "baserom.gba", 0xB4A028, 0x0000004

gUnk_08B4A02C:: @ 08B4A02C
	.incbin "baserom.gba", 0xB4A02C, 0x0000004

gUnk_08B4A030:: @ 08B4A030
	.incbin "baserom.gba", 0xB4A030, 0x0000004

gUnk_08B4A034:: @ 08B4A034
	.incbin "baserom.gba", 0xB4A034, 0x0000004

gUnk_08B4A038:: @ 08B4A038
	.incbin "baserom.gba", 0xB4A038, 0x0000004

gUnk_08B4A03C:: @ 08B4A03C
	.incbin "baserom.gba", 0xB4A03C, 0x0000004

gUnk_08B4A040:: @ 08B4A040
	.incbin "baserom.gba", 0xB4A040, 0x0000004

gUnk_08B4A044:: @ 08B4A044
	.incbin "baserom.gba", 0xB4A044, 0x0000004

gUnk_08B4A048:: @ 08B4A048
	.incbin "baserom.gba", 0xB4A048, 0x0000004

gUnk_08B4A04C:: @ 08B4A04C
	.incbin "baserom.gba", 0xB4A04C, 0x0000008

gUnk_08B4A054:: @ 08B4A054
	.incbin "baserom.gba", 0xB4A054, 0x000000C

gUnk_08B4A060:: @ 08B4A060
	.incbin "baserom.gba", 0xB4A060, 0x0000004

gUnk_08B4A064:: @ 08B4A064
	.incbin "baserom.gba", 0xB4A064, 0x0000004

gUnk_08B4A068:: @ 08B4A068
	.incbin "baserom.gba", 0xB4A068, 0x0000004

gUnk_08B4A06C:: @ 08B4A06C
	.incbin "baserom.gba", 0xB4A06C, 0x0000008

gUnk_08B4A074:: @ 08B4A074
	.incbin "baserom.gba", 0xB4A074, 0x0000004

gUnk_08B4A078:: @ 08B4A078
	.incbin "baserom.gba", 0xB4A078, 0x0000004

gUnk_08B4A07C:: @ 08B4A07C
	.incbin "baserom.gba", 0xB4A07C, 0x0000004

gUnk_08B4A080:: @ 08B4A080
	.incbin "baserom.gba", 0xB4A080, 0x0000004

gUnk_08B4A084:: @ 08B4A084
	.incbin "baserom.gba", 0xB4A084, 0x0000004

gUnk_08B4A088:: @ 08B4A088
	.incbin "baserom.gba", 0xB4A088, 0x0000004

gUnk_08B4A08C:: @ 08B4A08C
	.incbin "baserom.gba", 0xB4A08C, 0x0000004

gUnk_08B4A090:: @ 08B4A090
	.incbin "baserom.gba", 0xB4A090, 0x000004C

gUnk_08B4A0DC:: @ 08B4A0DC
	.incbin "baserom.gba", 0xB4A0DC, 0x0000010

gUnk_08B4A0EC:: @ 08B4A0EC
	.incbin "baserom.gba", 0xB4A0EC, 0x0000004

gUnk_08B4A0F0:: @ 08B4A0F0
	.incbin "baserom.gba", 0xB4A0F0, 0x0000004

gUnk_08B4A0F4:: @ 08B4A0F4
	.incbin "baserom.gba", 0xB4A0F4, 0x0000004

gUnk_08B4A0F8:: @ 08B4A0F8
	.incbin "baserom.gba", 0xB4A0F8, 0x0000004

gUnk_08B4A0FC:: @ 08B4A0FC
	.incbin "baserom.gba", 0xB4A0FC, 0x0000004

gUnk_08B4A100:: @ 08B4A100
	.incbin "baserom.gba", 0xB4A100, 0x0000004

gUnk_08B4A104:: @ 08B4A104
	.incbin "baserom.gba", 0xB4A104, 0x0000004

gUnk_08B4A108:: @ 08B4A108
	.incbin "baserom.gba", 0xB4A108, 0x0000004

gUnk_08B4A10C:: @ 08B4A10C
	.incbin "baserom.gba", 0xB4A10C, 0x0000004

gUnk_08B4A110:: @ 08B4A110
	.incbin "baserom.gba", 0xB4A110, 0x0000004

gUnk_08B4A114:: @ 08B4A114
	.incbin "baserom.gba", 0xB4A114, 0x0000004

gUnk_08B4A118:: @ 08B4A118
	.incbin "baserom.gba", 0xB4A118, 0x0000004

gUnk_08B4A11C:: @ 08B4A11C
	.incbin "baserom.gba", 0xB4A11C, 0x0000004

gUnk_08B4A120:: @ 08B4A120
	.incbin "baserom.gba", 0xB4A120, 0x0000004

gUnk_08B4A124:: @ 08B4A124
	.incbin "baserom.gba", 0xB4A124, 0x000000C

gUnk_08B4A130:: @ 08B4A130
	.incbin "baserom.gba", 0xB4A130, 0x0000010

gUnk_08B4A140:: @ 08B4A140
	.incbin "baserom.gba", 0xB4A140, 0x0000004

gUnk_08B4A144:: @ 08B4A144
	.incbin "baserom.gba", 0xB4A144, 0x0000004

gUnk_08B4A148:: @ 08B4A148
	.incbin "baserom.gba", 0xB4A148, 0x0000004

gUnk_08B4A14C:: @ 08B4A14C
	.incbin "baserom.gba", 0xB4A14C, 0x000000C

gUnk_08B4A158:: @ 08B4A158
	.incbin "baserom.gba", 0xB4A158, 0x0000008

gUnk_08B4A160:: @ 08B4A160
	.incbin "baserom.gba", 0xB4A160, 0x0000008

gUnk_08B4A168:: @ 08B4A168
	.incbin "baserom.gba", 0xB4A168, 0x0000008

gUnk_08B4A170:: @ 08B4A170
	.incbin "baserom.gba", 0xB4A170, 0x0000004

gUnk_08B4A174:: @ 08B4A174
	.incbin "baserom.gba", 0xB4A174, 0x0000004

gUnk_08B4A178:: @ 08B4A178
	.incbin "baserom.gba", 0xB4A178, 0x0000004

gUnk_08B4A17C:: @ 08B4A17C
	.incbin "baserom.gba", 0xB4A17C, 0x0000004

gUnk_08B4A180:: @ 08B4A180
	.incbin "baserom.gba", 0xB4A180, 0x000004C

gUnk_08B4A1CC:: @ 08B4A1CC
	.incbin "baserom.gba", 0xB4A1CC, 0x000000C

gUnk_08B4A1D8:: @ 08B4A1D8
	.incbin "baserom.gba", 0xB4A1D8, 0x0000004

gUnk_08B4A1DC:: @ 08B4A1DC
	.incbin "baserom.gba", 0xB4A1DC, 0x0000004

gUnk_08B4A1E0:: @ 08B4A1E0
	.incbin "baserom.gba", 0xB4A1E0, 0x0000004

gUnk_08B4A1E4:: @ 08B4A1E4
	.incbin "baserom.gba", 0xB4A1E4, 0x0000004

gUnk_08B4A1E8:: @ 08B4A1E8
	.incbin "baserom.gba", 0xB4A1E8, 0x0000004

gUnk_08B4A1EC:: @ 08B4A1EC
	.incbin "baserom.gba", 0xB4A1EC, 0x0000004

gUnk_08B4A1F0:: @ 08B4A1F0
	.incbin "baserom.gba", 0xB4A1F0, 0x0000004

gUnk_08B4A1F4:: @ 08B4A1F4
	.incbin "baserom.gba", 0xB4A1F4, 0x0000004

gUnk_08B4A1F8:: @ 08B4A1F8
	.incbin "baserom.gba", 0xB4A1F8, 0x0000004

gUnk_08B4A1FC:: @ 08B4A1FC
	.incbin "baserom.gba", 0xB4A1FC, 0x0000004

gUnk_08B4A200:: @ 08B4A200
	.incbin "baserom.gba", 0xB4A200, 0x0000004

gUnk_08B4A204:: @ 08B4A204
	.incbin "baserom.gba", 0xB4A204, 0x0000004

gUnk_08B4A208:: @ 08B4A208
	.incbin "baserom.gba", 0xB4A208, 0x0000004

gUnk_08B4A20C:: @ 08B4A20C
	.incbin "baserom.gba", 0xB4A20C, 0x0000004

gUnk_08B4A210:: @ 08B4A210
	.incbin "baserom.gba", 0xB4A210, 0x000000C

gUnk_08B4A21C:: @ 08B4A21C
	.incbin "baserom.gba", 0xB4A21C, 0x0000010

gUnk_08B4A22C:: @ 08B4A22C
	.incbin "baserom.gba", 0xB4A22C, 0x0000004

gUnk_08B4A230:: @ 08B4A230
	.incbin "baserom.gba", 0xB4A230, 0x0000004

gUnk_08B4A234:: @ 08B4A234
	.incbin "baserom.gba", 0xB4A234, 0x0000004

gUnk_08B4A238:: @ 08B4A238
	.incbin "baserom.gba", 0xB4A238, 0x0000008

gUnk_08B4A240:: @ 08B4A240
	.incbin "baserom.gba", 0xB4A240, 0x0000004

gUnk_08B4A244:: @ 08B4A244
	.incbin "baserom.gba", 0xB4A244, 0x0000008

gUnk_08B4A24C:: @ 08B4A24C
	.incbin "baserom.gba", 0xB4A24C, 0x0000004

gUnk_08B4A250:: @ 08B4A250
	.incbin "baserom.gba", 0xB4A250, 0x0000004

gUnk_08B4A254:: @ 08B4A254
	.incbin "baserom.gba", 0xB4A254, 0x0000004

gUnk_08B4A258:: @ 08B4A258
	.incbin "baserom.gba", 0xB4A258, 0x0000004

gUnk_08B4A25C:: @ 08B4A25C
	.incbin "baserom.gba", 0xB4A25C, 0x0000004

gUnk_08B4A260:: @ 08B4A260
	.incbin "baserom.gba", 0xB4A260, 0x000004C

gUnk_08B4A2AC:: @ 08B4A2AC
	.incbin "baserom.gba", 0xB4A2AC, 0x0000010

gUnk_08B4A2BC:: @ 08B4A2BC
	.incbin "baserom.gba", 0xB4A2BC, 0x0000004

gUnk_08B4A2C0:: @ 08B4A2C0
	.incbin "baserom.gba", 0xB4A2C0, 0x0000004

gUnk_08B4A2C4:: @ 08B4A2C4
	.incbin "baserom.gba", 0xB4A2C4, 0x0000004

gUnk_08B4A2C8:: @ 08B4A2C8
	.incbin "baserom.gba", 0xB4A2C8, 0x0000004

gUnk_08B4A2CC:: @ 08B4A2CC
	.incbin "baserom.gba", 0xB4A2CC, 0x0000004

gUnk_08B4A2D0:: @ 08B4A2D0
	.incbin "baserom.gba", 0xB4A2D0, 0x0000004

gUnk_08B4A2D4:: @ 08B4A2D4
	.incbin "baserom.gba", 0xB4A2D4, 0x0000004

gUnk_08B4A2D8:: @ 08B4A2D8
	.incbin "baserom.gba", 0xB4A2D8, 0x0000004

gUnk_08B4A2DC:: @ 08B4A2DC
	.incbin "baserom.gba", 0xB4A2DC, 0x0000004

gUnk_08B4A2E0:: @ 08B4A2E0
	.incbin "baserom.gba", 0xB4A2E0, 0x0000004

gUnk_08B4A2E4:: @ 08B4A2E4
	.incbin "baserom.gba", 0xB4A2E4, 0x0000004

gUnk_08B4A2E8:: @ 08B4A2E8
	.incbin "baserom.gba", 0xB4A2E8, 0x0000004

gUnk_08B4A2EC:: @ 08B4A2EC
	.incbin "baserom.gba", 0xB4A2EC, 0x0000004

gUnk_08B4A2F0:: @ 08B4A2F0
	.incbin "baserom.gba", 0xB4A2F0, 0x0000004

gUnk_08B4A2F4:: @ 08B4A2F4
	.incbin "baserom.gba", 0xB4A2F4, 0x0000010

gUnk_08B4A304:: @ 08B4A304
	.incbin "baserom.gba", 0xB4A304, 0x0000014

gUnk_08B4A318:: @ 08B4A318
	.incbin "baserom.gba", 0xB4A318, 0x0000004

gUnk_08B4A31C:: @ 08B4A31C
	.incbin "baserom.gba", 0xB4A31C, 0x0000004

gUnk_08B4A320:: @ 08B4A320
	.incbin "baserom.gba", 0xB4A320, 0x0000004

gUnk_08B4A324:: @ 08B4A324
	.incbin "baserom.gba", 0xB4A324, 0x000000C

gUnk_08B4A330:: @ 08B4A330
	.incbin "baserom.gba", 0xB4A330, 0x0000008

gUnk_08B4A338:: @ 08B4A338
	.incbin "baserom.gba", 0xB4A338, 0x000000C

gUnk_08B4A344:: @ 08B4A344
	.incbin "baserom.gba", 0xB4A344, 0x0000008

gUnk_08B4A34C:: @ 08B4A34C
	.incbin "baserom.gba", 0xB4A34C, 0x0000004

gUnk_08B4A350:: @ 08B4A350
	.incbin "baserom.gba", 0xB4A350, 0x0000004

gUnk_08B4A354:: @ 08B4A354
	.incbin "baserom.gba", 0xB4A354, 0x0000004

gUnk_08B4A358:: @ 08B4A358
	.incbin "baserom.gba", 0xB4A358, 0x0000004

gUnk_08B4A35C:: @ 08B4A35C
	.incbin "baserom.gba", 0xB4A35C, 0x000004C

gUnk_08B4A3A8:: @ 08B4A3A8
	.incbin "baserom.gba", 0xB4A3A8, 0x0000024

gUnk_08B4A3CC:: @ 08B4A3CC
	.incbin "baserom.gba", 0xB4A3CC, 0x0000010

gUnk_08B4A3DC:: @ 08B4A3DC
	.incbin "baserom.gba", 0xB4A3DC, 0x0000014

gUnk_08B4A3F0:: @ 08B4A3F0
	.incbin "baserom.gba", 0xB4A3F0, 0x000000C

gUnk_08B4A3FC:: @ 08B4A3FC
	.incbin "baserom.gba", 0xB4A3FC, 0x000000C

gUnk_08B4A408:: @ 08B4A408
	.incbin "baserom.gba", 0xB4A408, 0x0000010

gUnk_08B4A418:: @ 08B4A418
	.incbin "baserom.gba", 0xB4A418, 0x0000004

gUnk_08B4A41C:: @ 08B4A41C
	.incbin "baserom.gba", 0xB4A41C, 0x000000C

gUnk_08B4A428:: @ 08B4A428
	.incbin "baserom.gba", 0xB4A428, 0x000000C

gUnk_08B4A434:: @ 08B4A434
	.incbin "baserom.gba", 0xB4A434, 0x000000C

gUnk_08B4A440:: @ 08B4A440
	.incbin "baserom.gba", 0xB4A440, 0x0000010

gUnk_08B4A450:: @ 08B4A450
	.incbin "baserom.gba", 0xB4A450, 0x0000018

gUnk_08B4A468:: @ 08B4A468
	.incbin "baserom.gba", 0xB4A468, 0x0000018

gUnk_08B4A480:: @ 08B4A480
	.incbin "baserom.gba", 0xB4A480, 0x0000014

gUnk_08B4A494:: @ 08B4A494
	.incbin "baserom.gba", 0xB4A494, 0x000001C

gUnk_08B4A4B0:: @ 08B4A4B0
	.incbin "baserom.gba", 0xB4A4B0, 0x0000024

gUnk_08B4A4D4:: @ 08B4A4D4
	.incbin "baserom.gba", 0xB4A4D4, 0x0000028

gUnk_08B4A4FC:: @ 08B4A4FC
	.incbin "baserom.gba", 0xB4A4FC, 0x0000014

gUnk_08B4A510:: @ 08B4A510
	.incbin "baserom.gba", 0xB4A510, 0x0000018

gUnk_08B4A528:: @ 08B4A528
	.incbin "baserom.gba", 0xB4A528, 0x000001C

gUnk_08B4A544:: @ 08B4A544
	.incbin "baserom.gba", 0xB4A544, 0x0000020

gUnk_08B4A564:: @ 08B4A564
	.incbin "baserom.gba", 0xB4A564, 0x000001C

gUnk_08B4A580:: @ 08B4A580
	.incbin "baserom.gba", 0xB4A580, 0x0000020

gUnk_08B4A5A0:: @ 08B4A5A0
	.incbin "baserom.gba", 0xB4A5A0, 0x0000020

gUnk_08B4A5C0:: @ 08B4A5C0
	.incbin "baserom.gba", 0xB4A5C0, 0x0000008

gUnk_08B4A5C8:: @ 08B4A5C8
	.incbin "baserom.gba", 0xB4A5C8, 0x0000018

gUnk_08B4A5E0:: @ 08B4A5E0
	.incbin "baserom.gba", 0xB4A5E0, 0x0000008

gUnk_08B4A5E8:: @ 08B4A5E8
	.incbin "baserom.gba", 0xB4A5E8, 0x0000010

gUnk_08B4A5F8:: @ 08B4A5F8
	.incbin "baserom.gba", 0xB4A5F8, 0x000004C

gUnk_08B4A644:: @ 08B4A644
	.incbin "baserom.gba", 0xB4A644, 0x0000004

gUnk_08B4A648:: @ 08B4A648
	.incbin "baserom.gba", 0xB4A648, 0x0000004

gUnk_08B4A64C:: @ 08B4A64C
	.incbin "baserom.gba", 0xB4A64C, 0x0000004

gUnk_08B4A650:: @ 08B4A650
	.incbin "baserom.gba", 0xB4A650, 0x0000004

gUnk_08B4A654:: @ 08B4A654
	.incbin "baserom.gba", 0xB4A654, 0x0000004

gUnk_08B4A658:: @ 08B4A658
	.incbin "baserom.gba", 0xB4A658, 0x0000004

gUnk_08B4A65C:: @ 08B4A65C
	.incbin "baserom.gba", 0xB4A65C, 0x0000004

gUnk_08B4A660:: @ 08B4A660
	.incbin "baserom.gba", 0xB4A660, 0x0000004

gUnk_08B4A664:: @ 08B4A664
	.incbin "baserom.gba", 0xB4A664, 0x0000004

gUnk_08B4A668:: @ 08B4A668
	.incbin "baserom.gba", 0xB4A668, 0x0000004

gUnk_08B4A66C:: @ 08B4A66C
	.incbin "baserom.gba", 0xB4A66C, 0x0000004

gUnk_08B4A670:: @ 08B4A670
	.incbin "baserom.gba", 0xB4A670, 0x0000004

gUnk_08B4A674:: @ 08B4A674
	.incbin "baserom.gba", 0xB4A674, 0x0000004

gUnk_08B4A678:: @ 08B4A678
	.incbin "baserom.gba", 0xB4A678, 0x0000004

gUnk_08B4A67C:: @ 08B4A67C
	.incbin "baserom.gba", 0xB4A67C, 0x0000004

gUnk_08B4A680:: @ 08B4A680
	.incbin "baserom.gba", 0xB4A680, 0x0000004

gUnk_08B4A684:: @ 08B4A684
	.incbin "baserom.gba", 0xB4A684, 0x0000004

gUnk_08B4A688:: @ 08B4A688
	.incbin "baserom.gba", 0xB4A688, 0x0000004

gUnk_08B4A68C:: @ 08B4A68C
	.incbin "baserom.gba", 0xB4A68C, 0x0000004

gUnk_08B4A690:: @ 08B4A690
	.incbin "baserom.gba", 0xB4A690, 0x0000008

gUnk_08B4A698:: @ 08B4A698
	.incbin "baserom.gba", 0xB4A698, 0x0000004

gUnk_08B4A69C:: @ 08B4A69C
	.incbin "baserom.gba", 0xB4A69C, 0x0000004

gUnk_08B4A6A0:: @ 08B4A6A0
	.incbin "baserom.gba", 0xB4A6A0, 0x0000004

gUnk_08B4A6A4:: @ 08B4A6A4
	.incbin "baserom.gba", 0xB4A6A4, 0x0000004

gUnk_08B4A6A8:: @ 08B4A6A8
	.incbin "baserom.gba", 0xB4A6A8, 0x0000004

gUnk_08B4A6AC:: @ 08B4A6AC
	.incbin "baserom.gba", 0xB4A6AC, 0x0000008

gUnk_08B4A6B4:: @ 08B4A6B4
	.incbin "baserom.gba", 0xB4A6B4, 0x0000004

gUnk_08B4A6B8:: @ 08B4A6B8
	.incbin "baserom.gba", 0xB4A6B8, 0x0000004

gUnk_08B4A6BC:: @ 08B4A6BC
	.incbin "baserom.gba", 0xB4A6BC, 0x000004C

gUnk_08B4A708:: @ 08B4A708
	.incbin "baserom.gba", 0xB4A708, 0x0000024

gUnk_08B4A72C:: @ 08B4A72C
	.incbin "baserom.gba", 0xB4A72C, 0x000000C

gUnk_08B4A738:: @ 08B4A738
	.incbin "baserom.gba", 0xB4A738, 0x0000014

gUnk_08B4A74C:: @ 08B4A74C
	.incbin "baserom.gba", 0xB4A74C, 0x000000C

gUnk_08B4A758:: @ 08B4A758
	.incbin "baserom.gba", 0xB4A758, 0x0000008

gUnk_08B4A760:: @ 08B4A760
	.incbin "baserom.gba", 0xB4A760, 0x000000C

gUnk_08B4A76C:: @ 08B4A76C
	.incbin "baserom.gba", 0xB4A76C, 0x0000004

gUnk_08B4A770:: @ 08B4A770
	.incbin "baserom.gba", 0xB4A770, 0x000000C

gUnk_08B4A77C:: @ 08B4A77C
	.incbin "baserom.gba", 0xB4A77C, 0x000000C

gUnk_08B4A788:: @ 08B4A788
	.incbin "baserom.gba", 0xB4A788, 0x0000008

gUnk_08B4A790:: @ 08B4A790
	.incbin "baserom.gba", 0xB4A790, 0x0000010

gUnk_08B4A7A0:: @ 08B4A7A0
	.incbin "baserom.gba", 0xB4A7A0, 0x0000018

gUnk_08B4A7B8:: @ 08B4A7B8
	.incbin "baserom.gba", 0xB4A7B8, 0x0000014

gUnk_08B4A7CC:: @ 08B4A7CC
	.incbin "baserom.gba", 0xB4A7CC, 0x0000014

gUnk_08B4A7E0:: @ 08B4A7E0
	.incbin "baserom.gba", 0xB4A7E0, 0x0000018

gUnk_08B4A7F8:: @ 08B4A7F8
	.incbin "baserom.gba", 0xB4A7F8, 0x0000020

gUnk_08B4A818:: @ 08B4A818
	.incbin "baserom.gba", 0xB4A818, 0x0000024

gUnk_08B4A83C:: @ 08B4A83C
	.incbin "baserom.gba", 0xB4A83C, 0x0000010

gUnk_08B4A84C:: @ 08B4A84C
	.incbin "baserom.gba", 0xB4A84C, 0x0000014

gUnk_08B4A860:: @ 08B4A860
	.incbin "baserom.gba", 0xB4A860, 0x0000018

gUnk_08B4A878:: @ 08B4A878
	.incbin "baserom.gba", 0xB4A878, 0x0000020

gUnk_08B4A898:: @ 08B4A898
	.incbin "baserom.gba", 0xB4A898, 0x000001C

gUnk_08B4A8B4:: @ 08B4A8B4
	.incbin "baserom.gba", 0xB4A8B4, 0x000001C

gUnk_08B4A8D0:: @ 08B4A8D0
	.incbin "baserom.gba", 0xB4A8D0, 0x000001C

gUnk_08B4A8EC:: @ 08B4A8EC
	.incbin "baserom.gba", 0xB4A8EC, 0x0000008

gUnk_08B4A8F4:: @ 08B4A8F4
	.incbin "baserom.gba", 0xB4A8F4, 0x0000018

gUnk_08B4A90C:: @ 08B4A90C
	.incbin "baserom.gba", 0xB4A90C, 0x0000008

gUnk_08B4A914:: @ 08B4A914
	.incbin "baserom.gba", 0xB4A914, 0x000000C

gUnk_08B4A920:: @ 08B4A920
	.incbin "baserom.gba", 0xB4A920, 0x000004C

gUnk_08B4A96C:: @ 08B4A96C
	.incbin "baserom.gba", 0xB4A96C, 0x000001C

gUnk_08B4A988:: @ 08B4A988
	.incbin "baserom.gba", 0xB4A988, 0x000000C

gUnk_08B4A994:: @ 08B4A994
	.incbin "baserom.gba", 0xB4A994, 0x000000C

gUnk_08B4A9A0:: @ 08B4A9A0
	.incbin "baserom.gba", 0xB4A9A0, 0x000000C

gUnk_08B4A9AC:: @ 08B4A9AC
	.incbin "baserom.gba", 0xB4A9AC, 0x000000C

gUnk_08B4A9B8:: @ 08B4A9B8
	.incbin "baserom.gba", 0xB4A9B8, 0x000000C

gUnk_08B4A9C4:: @ 08B4A9C4
	.incbin "baserom.gba", 0xB4A9C4, 0x0000004

gUnk_08B4A9C8:: @ 08B4A9C8
	.incbin "baserom.gba", 0xB4A9C8, 0x0000008

gUnk_08B4A9D0:: @ 08B4A9D0
	.incbin "baserom.gba", 0xB4A9D0, 0x000000C

gUnk_08B4A9DC:: @ 08B4A9DC
	.incbin "baserom.gba", 0xB4A9DC, 0x0000010

gUnk_08B4A9EC:: @ 08B4A9EC
	.incbin "baserom.gba", 0xB4A9EC, 0x0000008

gUnk_08B4A9F4:: @ 08B4A9F4
	.incbin "baserom.gba", 0xB4A9F4, 0x0000010

gUnk_08B4AA04:: @ 08B4AA04
	.incbin "baserom.gba", 0xB4AA04, 0x0000010

gUnk_08B4AA14:: @ 08B4AA14
	.incbin "baserom.gba", 0xB4AA14, 0x000000C

gUnk_08B4AA20:: @ 08B4AA20
	.incbin "baserom.gba", 0xB4AA20, 0x0000014

gUnk_08B4AA34:: @ 08B4AA34
	.incbin "baserom.gba", 0xB4AA34, 0x000001C

gUnk_08B4AA50:: @ 08B4AA50
	.incbin "baserom.gba", 0xB4AA50, 0x0000020

gUnk_08B4AA70:: @ 08B4AA70
	.incbin "baserom.gba", 0xB4AA70, 0x000000C

gUnk_08B4AA7C:: @ 08B4AA7C
	.incbin "baserom.gba", 0xB4AA7C, 0x0000010

gUnk_08B4AA8C:: @ 08B4AA8C
	.incbin "baserom.gba", 0xB4AA8C, 0x0000014

gUnk_08B4AAA0:: @ 08B4AAA0
	.incbin "baserom.gba", 0xB4AAA0, 0x0000018

gUnk_08B4AAB8:: @ 08B4AAB8
	.incbin "baserom.gba", 0xB4AAB8, 0x0000014

gUnk_08B4AACC:: @ 08B4AACC
	.incbin "baserom.gba", 0xB4AACC, 0x0000018

gUnk_08B4AAE4:: @ 08B4AAE4
	.incbin "baserom.gba", 0xB4AAE4, 0x0000018

gUnk_08B4AAFC:: @ 08B4AAFC
	.incbin "baserom.gba", 0xB4AAFC, 0x0000010

gUnk_08B4AB0C:: @ 08B4AB0C
	.incbin "baserom.gba", 0xB4AB0C, 0x0000010

gUnk_08B4AB1C:: @ 08B4AB1C
	.incbin "baserom.gba", 0xB4AB1C, 0x000000C

gUnk_08B4AB28:: @ 08B4AB28
	.incbin "baserom.gba", 0xB4AB28, 0x0000008

gUnk_08B4AB30:: @ 08B4AB30
	.incbin "baserom.gba", 0xB4AB30, 0x000004C

gUnk_08B4AB7C:: @ 08B4AB7C
	.incbin "baserom.gba", 0xB4AB7C, 0x0000004

gUnk_08B4AB80:: @ 08B4AB80
	.incbin "baserom.gba", 0xB4AB80, 0x0000008

gUnk_08B4AB88:: @ 08B4AB88
	.incbin "baserom.gba", 0xB4AB88, 0x0000004

gUnk_08B4AB8C:: @ 08B4AB8C
	.incbin "baserom.gba", 0xB4AB8C, 0x0000004

gUnk_08B4AB90:: @ 08B4AB90
	.incbin "baserom.gba", 0xB4AB90, 0x0000004

gUnk_08B4AB94:: @ 08B4AB94
	.incbin "baserom.gba", 0xB4AB94, 0x0000004

gUnk_08B4AB98:: @ 08B4AB98
	.incbin "baserom.gba", 0xB4AB98, 0x0000004

gUnk_08B4AB9C:: @ 08B4AB9C
	.incbin "baserom.gba", 0xB4AB9C, 0x0000004

gUnk_08B4ABA0:: @ 08B4ABA0
	.incbin "baserom.gba", 0xB4ABA0, 0x0000004

gUnk_08B4ABA4:: @ 08B4ABA4
	.incbin "baserom.gba", 0xB4ABA4, 0x0000004

gUnk_08B4ABA8:: @ 08B4ABA8
	.incbin "baserom.gba", 0xB4ABA8, 0x0000004

gUnk_08B4ABAC:: @ 08B4ABAC
	.incbin "baserom.gba", 0xB4ABAC, 0x0000008

gUnk_08B4ABB4:: @ 08B4ABB4
	.incbin "baserom.gba", 0xB4ABB4, 0x0000004

gUnk_08B4ABB8:: @ 08B4ABB8
	.incbin "baserom.gba", 0xB4ABB8, 0x0000004

gUnk_08B4ABBC:: @ 08B4ABBC
	.incbin "baserom.gba", 0xB4ABBC, 0x0000004

gUnk_08B4ABC0:: @ 08B4ABC0
	.incbin "baserom.gba", 0xB4ABC0, 0x0000004

gUnk_08B4ABC4:: @ 08B4ABC4
	.incbin "baserom.gba", 0xB4ABC4, 0x0000004

gUnk_08B4ABC8:: @ 08B4ABC8
	.incbin "baserom.gba", 0xB4ABC8, 0x0000004

gUnk_08B4ABCC:: @ 08B4ABCC
	.incbin "baserom.gba", 0xB4ABCC, 0x0000004

gUnk_08B4ABD0:: @ 08B4ABD0
	.incbin "baserom.gba", 0xB4ABD0, 0x0000004

gUnk_08B4ABD4:: @ 08B4ABD4
	.incbin "baserom.gba", 0xB4ABD4, 0x0000004

gUnk_08B4ABD8:: @ 08B4ABD8
	.incbin "baserom.gba", 0xB4ABD8, 0x000004C

gUnk_08B4AC24:: @ 08B4AC24
	.incbin "baserom.gba", 0xB4AC24, 0x0000004

gUnk_08B4AC28:: @ 08B4AC28
	.incbin "baserom.gba", 0xB4AC28, 0x000000C

gUnk_08B4AC34:: @ 08B4AC34
	.incbin "baserom.gba", 0xB4AC34, 0x0000008

gUnk_08B4AC3C:: @ 08B4AC3C
	.incbin "baserom.gba", 0xB4AC3C, 0x000000C

gUnk_08B4AC48:: @ 08B4AC48
	.incbin "baserom.gba", 0xB4AC48, 0x000000C

gUnk_08B4AC54:: @ 08B4AC54
	.incbin "baserom.gba", 0xB4AC54, 0x0000008

gUnk_08B4AC5C:: @ 08B4AC5C
	.incbin "baserom.gba", 0xB4AC5C, 0x0000004

gUnk_08B4AC60:: @ 08B4AC60
	.incbin "baserom.gba", 0xB4AC60, 0x0000004

gUnk_08B4AC64:: @ 08B4AC64
	.incbin "baserom.gba", 0xB4AC64, 0x0000008

gUnk_08B4AC6C:: @ 08B4AC6C
	.incbin "baserom.gba", 0xB4AC6C, 0x0000008

gUnk_08B4AC74:: @ 08B4AC74
	.incbin "baserom.gba", 0xB4AC74, 0x000000C

gUnk_08B4AC80:: @ 08B4AC80
	.incbin "baserom.gba", 0xB4AC80, 0x0000010

gUnk_08B4AC90:: @ 08B4AC90
	.incbin "baserom.gba", 0xB4AC90, 0x0000004

gUnk_08B4AC94:: @ 08B4AC94
	.incbin "baserom.gba", 0xB4AC94, 0x0000004

gUnk_08B4AC98:: @ 08B4AC98
	.incbin "baserom.gba", 0xB4AC98, 0x000000C

gUnk_08B4ACA4:: @ 08B4ACA4
	.incbin "baserom.gba", 0xB4ACA4, 0x000000C

gUnk_08B4ACB0:: @ 08B4ACB0
	.incbin "baserom.gba", 0xB4ACB0, 0x0000004

gUnk_08B4ACB4:: @ 08B4ACB4
	.incbin "baserom.gba", 0xB4ACB4, 0x0000004

gUnk_08B4ACB8:: @ 08B4ACB8
	.incbin "baserom.gba", 0xB4ACB8, 0x0000004

gUnk_08B4ACBC:: @ 08B4ACBC
	.incbin "baserom.gba", 0xB4ACBC, 0x0000004

gUnk_08B4ACC0:: @ 08B4ACC0
	.incbin "baserom.gba", 0xB4ACC0, 0x000000C

gUnk_08B4ACCC:: @ 08B4ACCC
	.incbin "baserom.gba", 0xB4ACCC, 0x000004C

gUnk_08B4AD18:: @ 08B4AD18
	.incbin "baserom.gba", 0xB4AD18, 0x0000004

gUnk_08B4AD1C:: @ 08B4AD1C
	.incbin "baserom.gba", 0xB4AD1C, 0x0000004

gUnk_08B4AD20:: @ 08B4AD20
	.incbin "baserom.gba", 0xB4AD20, 0x0000004

gUnk_08B4AD24:: @ 08B4AD24
	.incbin "baserom.gba", 0xB4AD24, 0x0000004

gUnk_08B4AD28:: @ 08B4AD28
	.incbin "baserom.gba", 0xB4AD28, 0x0000008

gUnk_08B4AD30:: @ 08B4AD30
	.incbin "baserom.gba", 0xB4AD30, 0x0000004

gUnk_08B4AD34:: @ 08B4AD34
	.incbin "baserom.gba", 0xB4AD34, 0x0000008

gUnk_08B4AD3C:: @ 08B4AD3C
	.incbin "baserom.gba", 0xB4AD3C, 0x000000C

gUnk_08B4AD48:: @ 08B4AD48
	.incbin "baserom.gba", 0xB4AD48, 0x0000004

gUnk_08B4AD4C:: @ 08B4AD4C
	.incbin "baserom.gba", 0xB4AD4C, 0x0000004

gUnk_08B4AD50:: @ 08B4AD50
	.incbin "baserom.gba", 0xB4AD50, 0x0000004

gUnk_08B4AD54:: @ 08B4AD54
	.incbin "baserom.gba", 0xB4AD54, 0x0000004

gUnk_08B4AD58:: @ 08B4AD58
	.incbin "baserom.gba", 0xB4AD58, 0x0000004

gUnk_08B4AD5C:: @ 08B4AD5C
	.incbin "baserom.gba", 0xB4AD5C, 0x0000004

gUnk_08B4AD60:: @ 08B4AD60
	.incbin "baserom.gba", 0xB4AD60, 0x0000004

gUnk_08B4AD64:: @ 08B4AD64
	.incbin "baserom.gba", 0xB4AD64, 0x0000004

gUnk_08B4AD68:: @ 08B4AD68
	.incbin "baserom.gba", 0xB4AD68, 0x0000004

gUnk_08B4AD6C:: @ 08B4AD6C
	.incbin "baserom.gba", 0xB4AD6C, 0x0000004

gUnk_08B4AD70:: @ 08B4AD70
	.incbin "baserom.gba", 0xB4AD70, 0x0000004

gUnk_08B4AD74:: @ 08B4AD74
	.incbin "baserom.gba", 0xB4AD74, 0x0000004

gUnk_08B4AD78:: @ 08B4AD78
	.incbin "baserom.gba", 0xB4AD78, 0x0000004

gUnk_08B4AD7C:: @ 08B4AD7C
	.incbin "baserom.gba", 0xB4AD7C, 0x0000008

gUnk_08B4AD84:: @ 08B4AD84
	.incbin "baserom.gba", 0xB4AD84, 0x0000004

gUnk_08B4AD88:: @ 08B4AD88
	.incbin "baserom.gba", 0xB4AD88, 0x0000004

gUnk_08B4AD8C:: @ 08B4AD8C
	.incbin "baserom.gba", 0xB4AD8C, 0x0000004

gUnk_08B4AD90:: @ 08B4AD90
	.incbin "baserom.gba", 0xB4AD90, 0x0000004

gUnk_08B4AD94:: @ 08B4AD94
	.incbin "baserom.gba", 0xB4AD94, 0x0000004

gUnk_08B4AD98:: @ 08B4AD98
	.incbin "baserom.gba", 0xB4AD98, 0x0000004

gUnk_08B4AD9C:: @ 08B4AD9C
	.incbin "baserom.gba", 0xB4AD9C, 0x0000004

gUnk_08B4ADA0:: @ 08B4ADA0
	.incbin "baserom.gba", 0xB4ADA0, 0x000004C

gUnk_08B4ADEC:: @ 08B4ADEC
	.incbin "baserom.gba", 0xB4ADEC, 0x0000004

gUnk_08B4ADF0:: @ 08B4ADF0
	.incbin "baserom.gba", 0xB4ADF0, 0x000000C

gUnk_08B4ADFC:: @ 08B4ADFC
	.incbin "baserom.gba", 0xB4ADFC, 0x0000004

gUnk_08B4AE00:: @ 08B4AE00
	.incbin "baserom.gba", 0xB4AE00, 0x0000004

gUnk_08B4AE04:: @ 08B4AE04
	.incbin "baserom.gba", 0xB4AE04, 0x0000004

gUnk_08B4AE08:: @ 08B4AE08
	.incbin "baserom.gba", 0xB4AE08, 0x000000C

gUnk_08B4AE14:: @ 08B4AE14
	.incbin "baserom.gba", 0xB4AE14, 0x0000008

gUnk_08B4AE1C:: @ 08B4AE1C
	.incbin "baserom.gba", 0xB4AE1C, 0x0000018

gUnk_08B4AE34:: @ 08B4AE34
	.incbin "baserom.gba", 0xB4AE34, 0x0000018

gUnk_08B4AE4C:: @ 08B4AE4C
	.incbin "baserom.gba", 0xB4AE4C, 0x0000014

gUnk_08B4AE60:: @ 08B4AE60
	.incbin "baserom.gba", 0xB4AE60, 0x0000014

gUnk_08B4AE74:: @ 08B4AE74
	.incbin "baserom.gba", 0xB4AE74, 0x0000010

gUnk_08B4AE84:: @ 08B4AE84
	.incbin "baserom.gba", 0xB4AE84, 0x0000010

gUnk_08B4AE94:: @ 08B4AE94
	.incbin "baserom.gba", 0xB4AE94, 0x000000C

gUnk_08B4AEA0:: @ 08B4AEA0
	.incbin "baserom.gba", 0xB4AEA0, 0x000000C

gUnk_08B4AEAC:: @ 08B4AEAC
	.incbin "baserom.gba", 0xB4AEAC, 0x0000018

gUnk_08B4AEC4:: @ 08B4AEC4
	.incbin "baserom.gba", 0xB4AEC4, 0x0000018

gUnk_08B4AEDC:: @ 08B4AEDC
	.incbin "baserom.gba", 0xB4AEDC, 0x000000C

gUnk_08B4AEE8:: @ 08B4AEE8
	.incbin "baserom.gba", 0xB4AEE8, 0x0000014

gUnk_08B4AEFC:: @ 08B4AEFC
	.incbin "baserom.gba", 0xB4AEFC, 0x0000010

gUnk_08B4AF0C:: @ 08B4AF0C
	.incbin "baserom.gba", 0xB4AF0C, 0x0000010

gUnk_08B4AF1C:: @ 08B4AF1C
	.incbin "baserom.gba", 0xB4AF1C, 0x0000018

gUnk_08B4AF34:: @ 08B4AF34
	.incbin "baserom.gba", 0xB4AF34, 0x0000018

gUnk_08B4AF4C:: @ 08B4AF4C
	.incbin "baserom.gba", 0xB4AF4C, 0x0000014

gUnk_08B4AF60:: @ 08B4AF60
	.incbin "baserom.gba", 0xB4AF60, 0x0000014

gUnk_08B4AF74:: @ 08B4AF74
	.incbin "baserom.gba", 0xB4AF74, 0x0000018

gUnk_08B4AF8C:: @ 08B4AF8C
	.incbin "baserom.gba", 0xB4AF8C, 0x0000018

gUnk_08B4AFA4:: @ 08B4AFA4
	.incbin "baserom.gba", 0xB4AFA4, 0x000001C

gUnk_08B4AFC0:: @ 08B4AFC0
	.incbin "baserom.gba", 0xB4AFC0, 0x0000018

gUnk_08B4AFD8:: @ 08B4AFD8
	.incbin "baserom.gba", 0xB4AFD8, 0x0000010

gUnk_08B4AFE8:: @ 08B4AFE8
	.incbin "baserom.gba", 0xB4AFE8, 0x0000018

gUnk_08B4B000:: @ 08B4B000
	.incbin "baserom.gba", 0xB4B000, 0x000000C

gUnk_08B4B00C:: @ 08B4B00C
	.incbin "baserom.gba", 0xB4B00C, 0x0000008

gUnk_08B4B014:: @ 08B4B014
	.incbin "baserom.gba", 0xB4B014, 0x0000010

gUnk_08B4B024:: @ 08B4B024
	.incbin "baserom.gba", 0xB4B024, 0x0000008

gUnk_08B4B02C:: @ 08B4B02C
	.incbin "baserom.gba", 0xB4B02C, 0x0000014

gUnk_08B4B040:: @ 08B4B040
	.incbin "baserom.gba", 0xB4B040, 0x0000014

gUnk_08B4B054:: @ 08B4B054
	.incbin "baserom.gba", 0xB4B054, 0x0000018

gUnk_08B4B06C:: @ 08B4B06C
	.incbin "baserom.gba", 0xB4B06C, 0x0000018

gUnk_08B4B084:: @ 08B4B084
	.incbin "baserom.gba", 0xB4B084, 0x000001C

gUnk_08B4B0A0:: @ 08B4B0A0
	.incbin "baserom.gba", 0xB4B0A0, 0x0000018

gUnk_08B4B0B8:: @ 08B4B0B8
	.incbin "baserom.gba", 0xB4B0B8, 0x0000018

gUnk_08B4B0D0:: @ 08B4B0D0
	.incbin "baserom.gba", 0xB4B0D0, 0x0000014

gUnk_08B4B0E4:: @ 08B4B0E4
	.incbin "baserom.gba", 0xB4B0E4, 0x000000C

gUnk_08B4B0F0:: @ 08B4B0F0
	.incbin "baserom.gba", 0xB4B0F0, 0x000000C

gUnk_08B4B0FC:: @ 08B4B0FC
	.incbin "baserom.gba", 0xB4B0FC, 0x0000010

gUnk_08B4B10C:: @ 08B4B10C
	.incbin "baserom.gba", 0xB4B10C, 0x0000010

gUnk_08B4B11C:: @ 08B4B11C
	.incbin "baserom.gba", 0xB4B11C, 0x0000010

gUnk_08B4B12C:: @ 08B4B12C
	.incbin "baserom.gba", 0xB4B12C, 0x0000014

gUnk_08B4B140:: @ 08B4B140
	.incbin "baserom.gba", 0xB4B140, 0x0000014

gUnk_08B4B154:: @ 08B4B154
	.incbin "baserom.gba", 0xB4B154, 0x0000004

gUnk_08B4B158:: @ 08B4B158
	.incbin "baserom.gba", 0xB4B158, 0x000004C

gUnk_08B4B1A4:: @ 08B4B1A4
	.incbin "baserom.gba", 0xB4B1A4, 0x0000004

gUnk_08B4B1A8:: @ 08B4B1A8
	.incbin "baserom.gba", 0xB4B1A8, 0x0000018

gUnk_08B4B1C0:: @ 08B4B1C0
	.incbin "baserom.gba", 0xB4B1C0, 0x0000004

gUnk_08B4B1C4:: @ 08B4B1C4
	.incbin "baserom.gba", 0xB4B1C4, 0x0000004

gUnk_08B4B1C8:: @ 08B4B1C8
	.incbin "baserom.gba", 0xB4B1C8, 0x0000004

gUnk_08B4B1CC:: @ 08B4B1CC
	.incbin "baserom.gba", 0xB4B1CC, 0x0000014

gUnk_08B4B1E0:: @ 08B4B1E0
	.incbin "baserom.gba", 0xB4B1E0, 0x0000014

gUnk_08B4B1F4:: @ 08B4B1F4
	.incbin "baserom.gba", 0xB4B1F4, 0x0000010

gUnk_08B4B204:: @ 08B4B204
	.incbin "baserom.gba", 0xB4B204, 0x000000C

gUnk_08B4B210:: @ 08B4B210
	.incbin "baserom.gba", 0xB4B210, 0x000000C

gUnk_08B4B21C:: @ 08B4B21C
	.incbin "baserom.gba", 0xB4B21C, 0x0000008

gUnk_08B4B224:: @ 08B4B224
	.incbin "baserom.gba", 0xB4B224, 0x0000010

gUnk_08B4B234:: @ 08B4B234
	.incbin "baserom.gba", 0xB4B234, 0x0000008

gUnk_08B4B23C:: @ 08B4B23C
	.incbin "baserom.gba", 0xB4B23C, 0x0000010

gUnk_08B4B24C:: @ 08B4B24C
	.incbin "baserom.gba", 0xB4B24C, 0x000000C

gUnk_08B4B258:: @ 08B4B258
	.incbin "baserom.gba", 0xB4B258, 0x0000018

gUnk_08B4B270:: @ 08B4B270
	.incbin "baserom.gba", 0xB4B270, 0x0000014

gUnk_08B4B284:: @ 08B4B284
	.incbin "baserom.gba", 0xB4B284, 0x0000018

gUnk_08B4B29C:: @ 08B4B29C
	.incbin "baserom.gba", 0xB4B29C, 0x000001C

gUnk_08B4B2B8:: @ 08B4B2B8
	.incbin "baserom.gba", 0xB4B2B8, 0x0000018

gUnk_08B4B2D0:: @ 08B4B2D0
	.incbin "baserom.gba", 0xB4B2D0, 0x000001C

gUnk_08B4B2EC:: @ 08B4B2EC
	.incbin "baserom.gba", 0xB4B2EC, 0x0000010

gUnk_08B4B2FC:: @ 08B4B2FC
	.incbin "baserom.gba", 0xB4B2FC, 0x000000C

gUnk_08B4B308:: @ 08B4B308
	.incbin "baserom.gba", 0xB4B308, 0x000000C

gUnk_08B4B314:: @ 08B4B314
	.incbin "baserom.gba", 0xB4B314, 0x0000008

gUnk_08B4B31C:: @ 08B4B31C
	.incbin "baserom.gba", 0xB4B31C, 0x000000C

gUnk_08B4B328:: @ 08B4B328
	.incbin "baserom.gba", 0xB4B328, 0x0000010

gUnk_08B4B338:: @ 08B4B338
	.incbin "baserom.gba", 0xB4B338, 0x000001C

gUnk_08B4B354:: @ 08B4B354
	.incbin "baserom.gba", 0xB4B354, 0x0000018

gUnk_08B4B36C:: @ 08B4B36C
	.incbin "baserom.gba", 0xB4B36C, 0x0000018

gUnk_08B4B384:: @ 08B4B384
	.incbin "baserom.gba", 0xB4B384, 0x0000010

gUnk_08B4B394:: @ 08B4B394
	.incbin "baserom.gba", 0xB4B394, 0x000000C

gUnk_08B4B3A0:: @ 08B4B3A0
	.incbin "baserom.gba", 0xB4B3A0, 0x0000010

gUnk_08B4B3B0:: @ 08B4B3B0
	.incbin "baserom.gba", 0xB4B3B0, 0x0000008

gUnk_08B4B3B8:: @ 08B4B3B8
	.incbin "baserom.gba", 0xB4B3B8, 0x0000010

gUnk_08B4B3C8:: @ 08B4B3C8
	.incbin "baserom.gba", 0xB4B3C8, 0x0000014

gUnk_08B4B3DC:: @ 08B4B3DC
	.incbin "baserom.gba", 0xB4B3DC, 0x0000018

gUnk_08B4B3F4:: @ 08B4B3F4
	.incbin "baserom.gba", 0xB4B3F4, 0x0000018

gUnk_08B4B40C:: @ 08B4B40C
	.incbin "baserom.gba", 0xB4B40C, 0x0000020

gUnk_08B4B42C:: @ 08B4B42C
	.incbin "baserom.gba", 0xB4B42C, 0x000001C

gUnk_08B4B448:: @ 08B4B448
	.incbin "baserom.gba", 0xB4B448, 0x000001C

gUnk_08B4B464:: @ 08B4B464
	.incbin "baserom.gba", 0xB4B464, 0x000001C

gUnk_08B4B480:: @ 08B4B480
	.incbin "baserom.gba", 0xB4B480, 0x0000020

gUnk_08B4B4A0:: @ 08B4B4A0
	.incbin "baserom.gba", 0xB4B4A0, 0x0000014

gUnk_08B4B4B4:: @ 08B4B4B4
	.incbin "baserom.gba", 0xB4B4B4, 0x0000018

gUnk_08B4B4CC:: @ 08B4B4CC
	.incbin "baserom.gba", 0xB4B4CC, 0x0000018

gUnk_08B4B4E4:: @ 08B4B4E4
	.incbin "baserom.gba", 0xB4B4E4, 0x000001C

gUnk_08B4B500:: @ 08B4B500
	.incbin "baserom.gba", 0xB4B500, 0x0000014

gUnk_08B4B514:: @ 08B4B514
	.incbin "baserom.gba", 0xB4B514, 0x0000014

gUnk_08B4B528:: @ 08B4B528
	.incbin "baserom.gba", 0xB4B528, 0x0000014

gUnk_08B4B53C:: @ 08B4B53C
	.incbin "baserom.gba", 0xB4B53C, 0x0000004

gUnk_08B4B540:: @ 08B4B540
	.incbin "baserom.gba", 0xB4B540, 0x000004C

gUnk_08B4B58C:: @ 08B4B58C
	.incbin "baserom.gba", 0xB4B58C, 0x0000004

gUnk_08B4B590:: @ 08B4B590
	.incbin "baserom.gba", 0xB4B590, 0x0000010

gUnk_08B4B5A0:: @ 08B4B5A0
	.incbin "baserom.gba", 0xB4B5A0, 0x0000004

gUnk_08B4B5A4:: @ 08B4B5A4
	.incbin "baserom.gba", 0xB4B5A4, 0x0000004

gUnk_08B4B5A8:: @ 08B4B5A8
	.incbin "baserom.gba", 0xB4B5A8, 0x0000004

gUnk_08B4B5AC:: @ 08B4B5AC
	.incbin "baserom.gba", 0xB4B5AC, 0x000000C

gUnk_08B4B5B8:: @ 08B4B5B8
	.incbin "baserom.gba", 0xB4B5B8, 0x000000C

gUnk_08B4B5C4:: @ 08B4B5C4
	.incbin "baserom.gba", 0xB4B5C4, 0x0000018

gUnk_08B4B5DC:: @ 08B4B5DC
	.incbin "baserom.gba", 0xB4B5DC, 0x0000014

gUnk_08B4B5F0:: @ 08B4B5F0
	.incbin "baserom.gba", 0xB4B5F0, 0x0000014

gUnk_08B4B604:: @ 08B4B604
	.incbin "baserom.gba", 0xB4B604, 0x0000010

gUnk_08B4B614:: @ 08B4B614
	.incbin "baserom.gba", 0xB4B614, 0x000000C

gUnk_08B4B620:: @ 08B4B620
	.incbin "baserom.gba", 0xB4B620, 0x000000C

gUnk_08B4B62C:: @ 08B4B62C
	.incbin "baserom.gba", 0xB4B62C, 0x000000C

gUnk_08B4B638:: @ 08B4B638
	.incbin "baserom.gba", 0xB4B638, 0x0000008

gUnk_08B4B640:: @ 08B4B640
	.incbin "baserom.gba", 0xB4B640, 0x0000014

gUnk_08B4B654:: @ 08B4B654
	.incbin "baserom.gba", 0xB4B654, 0x0000014

gUnk_08B4B668:: @ 08B4B668
	.incbin "baserom.gba", 0xB4B668, 0x0000010

gUnk_08B4B678:: @ 08B4B678
	.incbin "baserom.gba", 0xB4B678, 0x0000014

gUnk_08B4B68C:: @ 08B4B68C
	.incbin "baserom.gba", 0xB4B68C, 0x0000010

gUnk_08B4B69C:: @ 08B4B69C
	.incbin "baserom.gba", 0xB4B69C, 0x0000014

gUnk_08B4B6B0:: @ 08B4B6B0
	.incbin "baserom.gba", 0xB4B6B0, 0x0000018

gUnk_08B4B6C8:: @ 08B4B6C8
	.incbin "baserom.gba", 0xB4B6C8, 0x0000014

gUnk_08B4B6DC:: @ 08B4B6DC
	.incbin "baserom.gba", 0xB4B6DC, 0x0000014

gUnk_08B4B6F0:: @ 08B4B6F0
	.incbin "baserom.gba", 0xB4B6F0, 0x0000010

gUnk_08B4B700:: @ 08B4B700
	.incbin "baserom.gba", 0xB4B700, 0x0000014

gUnk_08B4B714:: @ 08B4B714
	.incbin "baserom.gba", 0xB4B714, 0x0000018

gUnk_08B4B72C:: @ 08B4B72C
	.incbin "baserom.gba", 0xB4B72C, 0x0000018

gUnk_08B4B744:: @ 08B4B744
	.incbin "baserom.gba", 0xB4B744, 0x0000018

gUnk_08B4B75C:: @ 08B4B75C
	.incbin "baserom.gba", 0xB4B75C, 0x0000010

gUnk_08B4B76C:: @ 08B4B76C
	.incbin "baserom.gba", 0xB4B76C, 0x0000018

gUnk_08B4B784:: @ 08B4B784
	.incbin "baserom.gba", 0xB4B784, 0x000000C

gUnk_08B4B790:: @ 08B4B790
	.incbin "baserom.gba", 0xB4B790, 0x0000008

gUnk_08B4B798:: @ 08B4B798
	.incbin "baserom.gba", 0xB4B798, 0x0000010

gUnk_08B4B7A8:: @ 08B4B7A8
	.incbin "baserom.gba", 0xB4B7A8, 0x0000008

gUnk_08B4B7B0:: @ 08B4B7B0
	.incbin "baserom.gba", 0xB4B7B0, 0x0000014

gUnk_08B4B7C4:: @ 08B4B7C4
	.incbin "baserom.gba", 0xB4B7C4, 0x0000014

gUnk_08B4B7D8:: @ 08B4B7D8
	.incbin "baserom.gba", 0xB4B7D8, 0x0000014

gUnk_08B4B7EC:: @ 08B4B7EC
	.incbin "baserom.gba", 0xB4B7EC, 0x000001C

gUnk_08B4B808:: @ 08B4B808
	.incbin "baserom.gba", 0xB4B808, 0x0000018

gUnk_08B4B820:: @ 08B4B820
	.incbin "baserom.gba", 0xB4B820, 0x0000018

gUnk_08B4B838:: @ 08B4B838
	.incbin "baserom.gba", 0xB4B838, 0x0000018

gUnk_08B4B850:: @ 08B4B850
	.incbin "baserom.gba", 0xB4B850, 0x0000018

gUnk_08B4B868:: @ 08B4B868
	.incbin "baserom.gba", 0xB4B868, 0x000000C

gUnk_08B4B874:: @ 08B4B874
	.incbin "baserom.gba", 0xB4B874, 0x0000010

gUnk_08B4B884:: @ 08B4B884
	.incbin "baserom.gba", 0xB4B884, 0x0000010

gUnk_08B4B894:: @ 08B4B894
	.incbin "baserom.gba", 0xB4B894, 0x0000014

gUnk_08B4B8A8:: @ 08B4B8A8
	.incbin "baserom.gba", 0xB4B8A8, 0x0000010

gUnk_08B4B8B8:: @ 08B4B8B8
	.incbin "baserom.gba", 0xB4B8B8, 0x0000010

gUnk_08B4B8C8:: @ 08B4B8C8
	.incbin "baserom.gba", 0xB4B8C8, 0x0000010

gUnk_08B4B8D8:: @ 08B4B8D8
	.incbin "baserom.gba", 0xB4B8D8, 0x0000004

gUnk_08B4B8DC:: @ 08B4B8DC
	.incbin "baserom.gba", 0xB4B8DC, 0x000004C

gUnk_08B4B928:: @ 08B4B928
	.incbin "baserom.gba", 0xB4B928, 0x0000004

gUnk_08B4B92C:: @ 08B4B92C
	.incbin "baserom.gba", 0xB4B92C, 0x0000010

gUnk_08B4B93C:: @ 08B4B93C
	.incbin "baserom.gba", 0xB4B93C, 0x000000C

gUnk_08B4B948:: @ 08B4B948
	.incbin "baserom.gba", 0xB4B948, 0x0000008

gUnk_08B4B950:: @ 08B4B950
	.incbin "baserom.gba", 0xB4B950, 0x0000008

gUnk_08B4B958:: @ 08B4B958
	.incbin "baserom.gba", 0xB4B958, 0x000000C

gUnk_08B4B964:: @ 08B4B964
	.incbin "baserom.gba", 0xB4B964, 0x0000004

gUnk_08B4B968:: @ 08B4B968
	.incbin "baserom.gba", 0xB4B968, 0x0000004

gUnk_08B4B96C:: @ 08B4B96C
	.incbin "baserom.gba", 0xB4B96C, 0x000000C

gUnk_08B4B978:: @ 08B4B978
	.incbin "baserom.gba", 0xB4B978, 0x0000010

gUnk_08B4B988:: @ 08B4B988
	.incbin "baserom.gba", 0xB4B988, 0x000000C

gUnk_08B4B994:: @ 08B4B994
	.incbin "baserom.gba", 0xB4B994, 0x0000010

gUnk_08B4B9A4:: @ 08B4B9A4
	.incbin "baserom.gba", 0xB4B9A4, 0x0000004

gUnk_08B4B9A8:: @ 08B4B9A8
	.incbin "baserom.gba", 0xB4B9A8, 0x0000004

gUnk_08B4B9AC:: @ 08B4B9AC
	.incbin "baserom.gba", 0xB4B9AC, 0x000000C

gUnk_08B4B9B8:: @ 08B4B9B8
	.incbin "baserom.gba", 0xB4B9B8, 0x0000008

gUnk_08B4B9C0:: @ 08B4B9C0
	.incbin "baserom.gba", 0xB4B9C0, 0x0000004

gUnk_08B4B9C4:: @ 08B4B9C4
	.incbin "baserom.gba", 0xB4B9C4, 0x0000004

gUnk_08B4B9C8:: @ 08B4B9C8
	.incbin "baserom.gba", 0xB4B9C8, 0x0000004

gUnk_08B4B9CC:: @ 08B4B9CC
	.incbin "baserom.gba", 0xB4B9CC, 0x0000004

gUnk_08B4B9D0:: @ 08B4B9D0
	.incbin "baserom.gba", 0xB4B9D0, 0x000000C

gUnk_08B4B9DC:: @ 08B4B9DC
	.incbin "baserom.gba", 0xB4B9DC, 0x000004C

gUnk_08B4BA28:: @ 08B4BA28
	.incbin "baserom.gba", 0xB4BA28, 0x0000004

gUnk_08B4BA2C:: @ 08B4BA2C
	.incbin "baserom.gba", 0xB4BA2C, 0x0000010

gUnk_08B4BA3C:: @ 08B4BA3C
	.incbin "baserom.gba", 0xB4BA3C, 0x000000C

gUnk_08B4BA48:: @ 08B4BA48
	.incbin "baserom.gba", 0xB4BA48, 0x0000008

gUnk_08B4BA50:: @ 08B4BA50
	.incbin "baserom.gba", 0xB4BA50, 0x0000008

gUnk_08B4BA58:: @ 08B4BA58
	.incbin "baserom.gba", 0xB4BA58, 0x0000008

gUnk_08B4BA60:: @ 08B4BA60
	.incbin "baserom.gba", 0xB4BA60, 0x0000004

gUnk_08B4BA64:: @ 08B4BA64
	.incbin "baserom.gba", 0xB4BA64, 0x0000004

gUnk_08B4BA68:: @ 08B4BA68
	.incbin "baserom.gba", 0xB4BA68, 0x000000C

gUnk_08B4BA74:: @ 08B4BA74
	.incbin "baserom.gba", 0xB4BA74, 0x000000C

gUnk_08B4BA80:: @ 08B4BA80
	.incbin "baserom.gba", 0xB4BA80, 0x0000010

gUnk_08B4BA90:: @ 08B4BA90
	.incbin "baserom.gba", 0xB4BA90, 0x0000014

gUnk_08B4BAA4:: @ 08B4BAA4
	.incbin "baserom.gba", 0xB4BAA4, 0x0000004

gUnk_08B4BAA8:: @ 08B4BAA8
	.incbin "baserom.gba", 0xB4BAA8, 0x0000004

gUnk_08B4BAAC:: @ 08B4BAAC
	.incbin "baserom.gba", 0xB4BAAC, 0x000000C

gUnk_08B4BAB8:: @ 08B4BAB8
	.incbin "baserom.gba", 0xB4BAB8, 0x000000C

gUnk_08B4BAC4:: @ 08B4BAC4
	.incbin "baserom.gba", 0xB4BAC4, 0x0000004

gUnk_08B4BAC8:: @ 08B4BAC8
	.incbin "baserom.gba", 0xB4BAC8, 0x0000004

gUnk_08B4BACC:: @ 08B4BACC
	.incbin "baserom.gba", 0xB4BACC, 0x0000004

gUnk_08B4BAD0:: @ 08B4BAD0
	.incbin "baserom.gba", 0xB4BAD0, 0x0000004

gUnk_08B4BAD4:: @ 08B4BAD4
	.incbin "baserom.gba", 0xB4BAD4, 0x000000C

gUnk_08B4BAE0:: @ 08B4BAE0
	.incbin "baserom.gba", 0xB4BAE0, 0x000004C

gUnk_08B4BB2C:: @ 08B4BB2C
	.incbin "baserom.gba", 0xB4BB2C, 0x0000004

gUnk_08B4BB30:: @ 08B4BB30
	.incbin "baserom.gba", 0xB4BB30, 0x0000010

gUnk_08B4BB40:: @ 08B4BB40
	.incbin "baserom.gba", 0xB4BB40, 0x0000008

gUnk_08B4BB48:: @ 08B4BB48
	.incbin "baserom.gba", 0xB4BB48, 0x000000C

gUnk_08B4BB54:: @ 08B4BB54
	.incbin "baserom.gba", 0xB4BB54, 0x0000008

gUnk_08B4BB5C:: @ 08B4BB5C
	.incbin "baserom.gba", 0xB4BB5C, 0x0000008

gUnk_08B4BB64:: @ 08B4BB64
	.incbin "baserom.gba", 0xB4BB64, 0x0000004

gUnk_08B4BB68:: @ 08B4BB68
	.incbin "baserom.gba", 0xB4BB68, 0x0000004

gUnk_08B4BB6C:: @ 08B4BB6C
	.incbin "baserom.gba", 0xB4BB6C, 0x000000C

gUnk_08B4BB78:: @ 08B4BB78
	.incbin "baserom.gba", 0xB4BB78, 0x000000C

gUnk_08B4BB84:: @ 08B4BB84
	.incbin "baserom.gba", 0xB4BB84, 0x000000C

gUnk_08B4BB90:: @ 08B4BB90
	.incbin "baserom.gba", 0xB4BB90, 0x0000010

gUnk_08B4BBA0:: @ 08B4BBA0
	.incbin "baserom.gba", 0xB4BBA0, 0x0000004

gUnk_08B4BBA4:: @ 08B4BBA4
	.incbin "baserom.gba", 0xB4BBA4, 0x0000004

gUnk_08B4BBA8:: @ 08B4BBA8
	.incbin "baserom.gba", 0xB4BBA8, 0x0000010

gUnk_08B4BBB8:: @ 08B4BBB8
	.incbin "baserom.gba", 0xB4BBB8, 0x000000C

gUnk_08B4BBC4:: @ 08B4BBC4
	.incbin "baserom.gba", 0xB4BBC4, 0x0000004

gUnk_08B4BBC8:: @ 08B4BBC8
	.incbin "baserom.gba", 0xB4BBC8, 0x0000004

gUnk_08B4BBCC:: @ 08B4BBCC
	.incbin "baserom.gba", 0xB4BBCC, 0x0000004

gUnk_08B4BBD0:: @ 08B4BBD0
	.incbin "baserom.gba", 0xB4BBD0, 0x0000004

gUnk_08B4BBD4:: @ 08B4BBD4
	.incbin "baserom.gba", 0xB4BBD4, 0x0000010

gUnk_08B4BBE4:: @ 08B4BBE4
	.incbin "baserom.gba", 0xB4BBE4, 0x000004C

gUnk_08B4BC30:: @ 08B4BC30
	.incbin "baserom.gba", 0xB4BC30, 0x0000004

gUnk_08B4BC34:: @ 08B4BC34
	.incbin "baserom.gba", 0xB4BC34, 0x0000004

gUnk_08B4BC38:: @ 08B4BC38
	.incbin "baserom.gba", 0xB4BC38, 0x0000004

gUnk_08B4BC3C:: @ 08B4BC3C
	.incbin "baserom.gba", 0xB4BC3C, 0x0000004

gUnk_08B4BC40:: @ 08B4BC40
	.incbin "baserom.gba", 0xB4BC40, 0x0000004

gUnk_08B4BC44:: @ 08B4BC44
	.incbin "baserom.gba", 0xB4BC44, 0x0000004

gUnk_08B4BC48:: @ 08B4BC48
	.incbin "baserom.gba", 0xB4BC48, 0x0000008

gUnk_08B4BC50:: @ 08B4BC50
	.incbin "baserom.gba", 0xB4BC50, 0x0000004

gUnk_08B4BC54:: @ 08B4BC54
	.incbin "baserom.gba", 0xB4BC54, 0x0000004

gUnk_08B4BC58:: @ 08B4BC58
	.incbin "baserom.gba", 0xB4BC58, 0x0000004

gUnk_08B4BC5C:: @ 08B4BC5C
	.incbin "baserom.gba", 0xB4BC5C, 0x0000004

gUnk_08B4BC60:: @ 08B4BC60
	.incbin "baserom.gba", 0xB4BC60, 0x0000004

gUnk_08B4BC64:: @ 08B4BC64
	.incbin "baserom.gba", 0xB4BC64, 0x0000004

gUnk_08B4BC68:: @ 08B4BC68
	.incbin "baserom.gba", 0xB4BC68, 0x0000004

gUnk_08B4BC6C:: @ 08B4BC6C
	.incbin "baserom.gba", 0xB4BC6C, 0x0000004

gUnk_08B4BC70:: @ 08B4BC70
	.incbin "baserom.gba", 0xB4BC70, 0x0000004

gUnk_08B4BC74:: @ 08B4BC74
	.incbin "baserom.gba", 0xB4BC74, 0x0000004

gUnk_08B4BC78:: @ 08B4BC78
	.incbin "baserom.gba", 0xB4BC78, 0x0000004

gUnk_08B4BC7C:: @ 08B4BC7C
	.incbin "baserom.gba", 0xB4BC7C, 0x0000008

gUnk_08B4BC84:: @ 08B4BC84
	.incbin "baserom.gba", 0xB4BC84, 0x0000004

gUnk_08B4BC88:: @ 08B4BC88
	.incbin "baserom.gba", 0xB4BC88, 0x0000004

gUnk_08B4BC8C:: @ 08B4BC8C
	.incbin "baserom.gba", 0xB4BC8C, 0x000004C

gUnk_08B4BCD8:: @ 08B4BCD8
	.incbin "baserom.gba", 0xB4BCD8, 0x000000C

gUnk_08B4BCE4:: @ 08B4BCE4
	.incbin "baserom.gba", 0xB4BCE4, 0x0000004

gUnk_08B4BCE8:: @ 08B4BCE8
	.incbin "baserom.gba", 0xB4BCE8, 0x0000004

gUnk_08B4BCEC:: @ 08B4BCEC
	.incbin "baserom.gba", 0xB4BCEC, 0x0000004

gUnk_08B4BCF0:: @ 08B4BCF0
	.incbin "baserom.gba", 0xB4BCF0, 0x0000004

gUnk_08B4BCF4:: @ 08B4BCF4
	.incbin "baserom.gba", 0xB4BCF4, 0x0000004

gUnk_08B4BCF8:: @ 08B4BCF8
	.incbin "baserom.gba", 0xB4BCF8, 0x0000008

gUnk_08B4BD00:: @ 08B4BD00
	.incbin "baserom.gba", 0xB4BD00, 0x0000008

gUnk_08B4BD08:: @ 08B4BD08
	.incbin "baserom.gba", 0xB4BD08, 0x0000004

gUnk_08B4BD0C:: @ 08B4BD0C
	.incbin "baserom.gba", 0xB4BD0C, 0x0000004

gUnk_08B4BD10:: @ 08B4BD10
	.incbin "baserom.gba", 0xB4BD10, 0x0000004

gUnk_08B4BD14:: @ 08B4BD14
	.incbin "baserom.gba", 0xB4BD14, 0x0000004

gUnk_08B4BD18:: @ 08B4BD18
	.incbin "baserom.gba", 0xB4BD18, 0x0000004

gUnk_08B4BD1C:: @ 08B4BD1C
	.incbin "baserom.gba", 0xB4BD1C, 0x000000C

gUnk_08B4BD28:: @ 08B4BD28
	.incbin "baserom.gba", 0xB4BD28, 0x0000004

gUnk_08B4BD2C:: @ 08B4BD2C
	.incbin "baserom.gba", 0xB4BD2C, 0x0000004

gUnk_08B4BD30:: @ 08B4BD30
	.incbin "baserom.gba", 0xB4BD30, 0x0000008

gUnk_08B4BD38:: @ 08B4BD38
	.incbin "baserom.gba", 0xB4BD38, 0x000000C

gUnk_08B4BD44:: @ 08B4BD44
	.incbin "baserom.gba", 0xB4BD44, 0x000000C

gUnk_08B4BD50:: @ 08B4BD50
	.incbin "baserom.gba", 0xB4BD50, 0x0000010

gUnk_08B4BD60:: @ 08B4BD60
	.incbin "baserom.gba", 0xB4BD60, 0x0000004

gUnk_08B4BD64:: @ 08B4BD64
	.incbin "baserom.gba", 0xB4BD64, 0x000004C

gUnk_08B4BDB0:: @ 08B4BDB0
	.incbin "baserom.gba", 0xB4BDB0, 0x0000004

gUnk_08B4BDB4:: @ 08B4BDB4
	.incbin "baserom.gba", 0xB4BDB4, 0x000000C

gUnk_08B4BDC0:: @ 08B4BDC0
	.incbin "baserom.gba", 0xB4BDC0, 0x0000008

gUnk_08B4BDC8:: @ 08B4BDC8
	.incbin "baserom.gba", 0xB4BDC8, 0x000000C

gUnk_08B4BDD4:: @ 08B4BDD4
	.incbin "baserom.gba", 0xB4BDD4, 0x0000008

gUnk_08B4BDDC:: @ 08B4BDDC
	.incbin "baserom.gba", 0xB4BDDC, 0x000000C

gUnk_08B4BDE8:: @ 08B4BDE8
	.incbin "baserom.gba", 0xB4BDE8, 0x0000004

gUnk_08B4BDEC:: @ 08B4BDEC
	.incbin "baserom.gba", 0xB4BDEC, 0x0000004

gUnk_08B4BDF0:: @ 08B4BDF0
	.incbin "baserom.gba", 0xB4BDF0, 0x0000008

gUnk_08B4BDF8:: @ 08B4BDF8
	.incbin "baserom.gba", 0xB4BDF8, 0x000000C

gUnk_08B4BE04:: @ 08B4BE04
	.incbin "baserom.gba", 0xB4BE04, 0x0000008

gUnk_08B4BE0C:: @ 08B4BE0C
	.incbin "baserom.gba", 0xB4BE0C, 0x000000C

gUnk_08B4BE18:: @ 08B4BE18
	.incbin "baserom.gba", 0xB4BE18, 0x0000004

gUnk_08B4BE1C:: @ 08B4BE1C
	.incbin "baserom.gba", 0xB4BE1C, 0x0000004

gUnk_08B4BE20:: @ 08B4BE20
	.incbin "baserom.gba", 0xB4BE20, 0x000000C

gUnk_08B4BE2C:: @ 08B4BE2C
	.incbin "baserom.gba", 0xB4BE2C, 0x0000008

gUnk_08B4BE34:: @ 08B4BE34
	.incbin "baserom.gba", 0xB4BE34, 0x0000004

gUnk_08B4BE38:: @ 08B4BE38
	.incbin "baserom.gba", 0xB4BE38, 0x0000004

gUnk_08B4BE3C:: @ 08B4BE3C
	.incbin "baserom.gba", 0xB4BE3C, 0x0000004

gUnk_08B4BE40:: @ 08B4BE40
	.incbin "baserom.gba", 0xB4BE40, 0x0000004

gUnk_08B4BE44:: @ 08B4BE44
	.incbin "baserom.gba", 0xB4BE44, 0x000000C

gUnk_08B4BE50:: @ 08B4BE50
	.incbin "baserom.gba", 0xB4BE50, 0x000004C

gUnk_08B4BE9C:: @ 08B4BE9C
	.incbin "baserom.gba", 0xB4BE9C, 0x0000004

gUnk_08B4BEA0:: @ 08B4BEA0
	.incbin "baserom.gba", 0xB4BEA0, 0x0000010

gUnk_08B4BEB0:: @ 08B4BEB0
	.incbin "baserom.gba", 0xB4BEB0, 0x0000008

gUnk_08B4BEB8:: @ 08B4BEB8
	.incbin "baserom.gba", 0xB4BEB8, 0x0000010

gUnk_08B4BEC8:: @ 08B4BEC8
	.incbin "baserom.gba", 0xB4BEC8, 0x000000C

gUnk_08B4BED4:: @ 08B4BED4
	.incbin "baserom.gba", 0xB4BED4, 0x000000C

gUnk_08B4BEE0:: @ 08B4BEE0
	.incbin "baserom.gba", 0xB4BEE0, 0x0000004

gUnk_08B4BEE4:: @ 08B4BEE4
	.incbin "baserom.gba", 0xB4BEE4, 0x0000004

gUnk_08B4BEE8:: @ 08B4BEE8
	.incbin "baserom.gba", 0xB4BEE8, 0x000000C

gUnk_08B4BEF4:: @ 08B4BEF4
	.incbin "baserom.gba", 0xB4BEF4, 0x0000008

gUnk_08B4BEFC:: @ 08B4BEFC
	.incbin "baserom.gba", 0xB4BEFC, 0x000000C

gUnk_08B4BF08:: @ 08B4BF08
	.incbin "baserom.gba", 0xB4BF08, 0x0000010

gUnk_08B4BF18:: @ 08B4BF18
	.incbin "baserom.gba", 0xB4BF18, 0x0000004

gUnk_08B4BF1C:: @ 08B4BF1C
	.incbin "baserom.gba", 0xB4BF1C, 0x0000004

gUnk_08B4BF20:: @ 08B4BF20
	.incbin "baserom.gba", 0xB4BF20, 0x0000010

gUnk_08B4BF30:: @ 08B4BF30
	.incbin "baserom.gba", 0xB4BF30, 0x000000C

gUnk_08B4BF3C:: @ 08B4BF3C
	.incbin "baserom.gba", 0xB4BF3C, 0x0000004

gUnk_08B4BF40:: @ 08B4BF40
	.incbin "baserom.gba", 0xB4BF40, 0x0000004

gUnk_08B4BF44:: @ 08B4BF44
	.incbin "baserom.gba", 0xB4BF44, 0x0000004

gUnk_08B4BF48:: @ 08B4BF48
	.incbin "baserom.gba", 0xB4BF48, 0x0000004

gUnk_08B4BF4C:: @ 08B4BF4C
	.incbin "baserom.gba", 0xB4BF4C, 0x0000010

gUnk_08B4BF5C:: @ 08B4BF5C
	.incbin "baserom.gba", 0xB4BF5C, 0x000004C

gUnk_08B4BFA8:: @ 08B4BFA8
	.incbin "baserom.gba", 0xB4BFA8, 0x0000004

gUnk_08B4BFAC:: @ 08B4BFAC
	.incbin "baserom.gba", 0xB4BFAC, 0x0000008

gUnk_08B4BFB4:: @ 08B4BFB4
	.incbin "baserom.gba", 0xB4BFB4, 0x000000C

gUnk_08B4BFC0:: @ 08B4BFC0
	.incbin "baserom.gba", 0xB4BFC0, 0x000000C

gUnk_08B4BFCC:: @ 08B4BFCC
	.incbin "baserom.gba", 0xB4BFCC, 0x000000C

gUnk_08B4BFD8:: @ 08B4BFD8
	.incbin "baserom.gba", 0xB4BFD8, 0x000000C

gUnk_08B4BFE4:: @ 08B4BFE4
	.incbin "baserom.gba", 0xB4BFE4, 0x0000004

gUnk_08B4BFE8:: @ 08B4BFE8
	.incbin "baserom.gba", 0xB4BFE8, 0x0000004

gUnk_08B4BFEC:: @ 08B4BFEC
	.incbin "baserom.gba", 0xB4BFEC, 0x0000008

gUnk_08B4BFF4:: @ 08B4BFF4
	.incbin "baserom.gba", 0xB4BFF4, 0x000000C

gUnk_08B4C000:: @ 08B4C000
	.incbin "baserom.gba", 0xB4C000, 0x0000008

gUnk_08B4C008:: @ 08B4C008
	.incbin "baserom.gba", 0xB4C008, 0x000000C

gUnk_08B4C014:: @ 08B4C014
	.incbin "baserom.gba", 0xB4C014, 0x0000004

gUnk_08B4C018:: @ 08B4C018
	.incbin "baserom.gba", 0xB4C018, 0x0000004

gUnk_08B4C01C:: @ 08B4C01C
	.incbin "baserom.gba", 0xB4C01C, 0x000000C

gUnk_08B4C028:: @ 08B4C028
	.incbin "baserom.gba", 0xB4C028, 0x000000C

gUnk_08B4C034:: @ 08B4C034
	.incbin "baserom.gba", 0xB4C034, 0x0000004

gUnk_08B4C038:: @ 08B4C038
	.incbin "baserom.gba", 0xB4C038, 0x0000004

gUnk_08B4C03C:: @ 08B4C03C
	.incbin "baserom.gba", 0xB4C03C, 0x0000004

gUnk_08B4C040:: @ 08B4C040
	.incbin "baserom.gba", 0xB4C040, 0x0000004

gUnk_08B4C044:: @ 08B4C044
	.incbin "baserom.gba", 0xB4C044, 0x000000C

gUnk_08B4C050:: @ 08B4C050
	.incbin "baserom.gba", 0xB4C050, 0x000004C

gUnk_08B4C09C:: @ 08B4C09C
	.incbin "baserom.gba", 0xB4C09C, 0x0000004

gUnk_08B4C0A0:: @ 08B4C0A0
	.incbin "baserom.gba", 0xB4C0A0, 0x0000004

gUnk_08B4C0A4:: @ 08B4C0A4
	.incbin "baserom.gba", 0xB4C0A4, 0x0000004

gUnk_08B4C0A8:: @ 08B4C0A8
	.incbin "baserom.gba", 0xB4C0A8, 0x0000004

gUnk_08B4C0AC:: @ 08B4C0AC
	.incbin "baserom.gba", 0xB4C0AC, 0x0000004

gUnk_08B4C0B0:: @ 08B4C0B0
	.incbin "baserom.gba", 0xB4C0B0, 0x0000004

gUnk_08B4C0B4:: @ 08B4C0B4
	.incbin "baserom.gba", 0xB4C0B4, 0x0000004

gUnk_08B4C0B8:: @ 08B4C0B8
	.incbin "baserom.gba", 0xB4C0B8, 0x0000004

gUnk_08B4C0BC:: @ 08B4C0BC
	.incbin "baserom.gba", 0xB4C0BC, 0x0000004

gUnk_08B4C0C0:: @ 08B4C0C0
	.incbin "baserom.gba", 0xB4C0C0, 0x0000004

gUnk_08B4C0C4:: @ 08B4C0C4
	.incbin "baserom.gba", 0xB4C0C4, 0x0000004

gUnk_08B4C0C8:: @ 08B4C0C8
	.incbin "baserom.gba", 0xB4C0C8, 0x0000008

gUnk_08B4C0D0:: @ 08B4C0D0
	.incbin "baserom.gba", 0xB4C0D0, 0x0000004

gUnk_08B4C0D4:: @ 08B4C0D4
	.incbin "baserom.gba", 0xB4C0D4, 0x0000004

gUnk_08B4C0D8:: @ 08B4C0D8
	.incbin "baserom.gba", 0xB4C0D8, 0x0000004

gUnk_08B4C0DC:: @ 08B4C0DC
	.incbin "baserom.gba", 0xB4C0DC, 0x0000004

gUnk_08B4C0E0:: @ 08B4C0E0
	.incbin "baserom.gba", 0xB4C0E0, 0x0000004

gUnk_08B4C0E4:: @ 08B4C0E4
	.incbin "baserom.gba", 0xB4C0E4, 0x0000004

gUnk_08B4C0E8:: @ 08B4C0E8
	.incbin "baserom.gba", 0xB4C0E8, 0x0000004

gUnk_08B4C0EC:: @ 08B4C0EC
	.incbin "baserom.gba", 0xB4C0EC, 0x0000004

gUnk_08B4C0F0:: @ 08B4C0F0
	.incbin "baserom.gba", 0xB4C0F0, 0x0000004

gUnk_08B4C0F4:: @ 08B4C0F4
	.incbin "baserom.gba", 0xB4C0F4, 0x000004C

gUnk_08B4C140:: @ 08B4C140
	.incbin "baserom.gba", 0xB4C140, 0x000004C

gUnk_08B4C18C:: @ 08B4C18C
	.incbin "baserom.gba", 0xB4C18C, 0x0000008

gUnk_08B4C194:: @ 08B4C194
	.incbin "baserom.gba", 0xB4C194, 0x0000004

gUnk_08B4C198:: @ 08B4C198
	.incbin "baserom.gba", 0xB4C198, 0x0000004

gUnk_08B4C19C:: @ 08B4C19C
	.incbin "baserom.gba", 0xB4C19C, 0x0000004

gUnk_08B4C1A0:: @ 08B4C1A0
	.incbin "baserom.gba", 0xB4C1A0, 0x0000004

gUnk_08B4C1A4:: @ 08B4C1A4
	.incbin "baserom.gba", 0xB4C1A4, 0x0000004

gUnk_08B4C1A8:: @ 08B4C1A8
	.incbin "baserom.gba", 0xB4C1A8, 0x000000C

gUnk_08B4C1B4:: @ 08B4C1B4
	.incbin "baserom.gba", 0xB4C1B4, 0x000000C

gUnk_08B4C1C0:: @ 08B4C1C0
	.incbin "baserom.gba", 0xB4C1C0, 0x0000004

gUnk_08B4C1C4:: @ 08B4C1C4
	.incbin "baserom.gba", 0xB4C1C4, 0x0000004

gUnk_08B4C1C8:: @ 08B4C1C8
	.incbin "baserom.gba", 0xB4C1C8, 0x0000004

gUnk_08B4C1CC:: @ 08B4C1CC
	.incbin "baserom.gba", 0xB4C1CC, 0x0000004

gUnk_08B4C1D0:: @ 08B4C1D0
	.incbin "baserom.gba", 0xB4C1D0, 0x0000004

gUnk_08B4C1D4:: @ 08B4C1D4
	.incbin "baserom.gba", 0xB4C1D4, 0x0000008

gUnk_08B4C1DC:: @ 08B4C1DC
	.incbin "baserom.gba", 0xB4C1DC, 0x0000004

gUnk_08B4C1E0:: @ 08B4C1E0
	.incbin "baserom.gba", 0xB4C1E0, 0x0000004

gUnk_08B4C1E4:: @ 08B4C1E4
	.incbin "baserom.gba", 0xB4C1E4, 0x0000008

gUnk_08B4C1EC:: @ 08B4C1EC
	.incbin "baserom.gba", 0xB4C1EC, 0x0000008

gUnk_08B4C1F4:: @ 08B4C1F4
	.incbin "baserom.gba", 0xB4C1F4, 0x0000010

gUnk_08B4C204:: @ 08B4C204
	.incbin "baserom.gba", 0xB4C204, 0x000000C

gUnk_08B4C210:: @ 08B4C210
	.incbin "baserom.gba", 0xB4C210, 0x0000004

gUnk_08B4C214:: @ 08B4C214
	.incbin "baserom.gba", 0xB4C214, 0x000004C

gUnk_08B4C260:: @ 08B4C260
	.incbin "baserom.gba", 0xB4C260, 0x0000004

gUnk_08B4C264:: @ 08B4C264
	.incbin "baserom.gba", 0xB4C264, 0x0000004

gUnk_08B4C268:: @ 08B4C268
	.incbin "baserom.gba", 0xB4C268, 0x0000004

gUnk_08B4C26C:: @ 08B4C26C
	.incbin "baserom.gba", 0xB4C26C, 0x0000004

gUnk_08B4C270:: @ 08B4C270
	.incbin "baserom.gba", 0xB4C270, 0x0000008

gUnk_08B4C278:: @ 08B4C278
	.incbin "baserom.gba", 0xB4C278, 0x0000008

gUnk_08B4C280:: @ 08B4C280
	.incbin "baserom.gba", 0xB4C280, 0x000000C

gUnk_08B4C28C:: @ 08B4C28C
	.incbin "baserom.gba", 0xB4C28C, 0x000000C

gUnk_08B4C298:: @ 08B4C298
	.incbin "baserom.gba", 0xB4C298, 0x0000004

gUnk_08B4C29C:: @ 08B4C29C
	.incbin "baserom.gba", 0xB4C29C, 0x0000004

gUnk_08B4C2A0:: @ 08B4C2A0
	.incbin "baserom.gba", 0xB4C2A0, 0x0000004

gUnk_08B4C2A4:: @ 08B4C2A4
	.incbin "baserom.gba", 0xB4C2A4, 0x0000004

gUnk_08B4C2A8:: @ 08B4C2A8
	.incbin "baserom.gba", 0xB4C2A8, 0x0000004

gUnk_08B4C2AC:: @ 08B4C2AC
	.incbin "baserom.gba", 0xB4C2AC, 0x0000004

gUnk_08B4C2B0:: @ 08B4C2B0
	.incbin "baserom.gba", 0xB4C2B0, 0x0000004

gUnk_08B4C2B4:: @ 08B4C2B4
	.incbin "baserom.gba", 0xB4C2B4, 0x0000004

gUnk_08B4C2B8:: @ 08B4C2B8
	.incbin "baserom.gba", 0xB4C2B8, 0x0000004

gUnk_08B4C2BC:: @ 08B4C2BC
	.incbin "baserom.gba", 0xB4C2BC, 0x0000004

gUnk_08B4C2C0:: @ 08B4C2C0
	.incbin "baserom.gba", 0xB4C2C0, 0x0000004

gUnk_08B4C2C4:: @ 08B4C2C4
	.incbin "baserom.gba", 0xB4C2C4, 0x0000004

gUnk_08B4C2C8:: @ 08B4C2C8
	.incbin "baserom.gba", 0xB4C2C8, 0x0000004

gUnk_08B4C2CC:: @ 08B4C2CC
	.incbin "baserom.gba", 0xB4C2CC, 0x000000C

gUnk_08B4C2D8:: @ 08B4C2D8
	.incbin "baserom.gba", 0xB4C2D8, 0x0000004

gUnk_08B4C2DC:: @ 08B4C2DC
	.incbin "baserom.gba", 0xB4C2DC, 0x0000004

gUnk_08B4C2E0:: @ 08B4C2E0
	.incbin "baserom.gba", 0xB4C2E0, 0x0000004

gUnk_08B4C2E4:: @ 08B4C2E4
	.incbin "baserom.gba", 0xB4C2E4, 0x0000004

gUnk_08B4C2E8:: @ 08B4C2E8
	.incbin "baserom.gba", 0xB4C2E8, 0x0000004

gUnk_08B4C2EC:: @ 08B4C2EC
	.incbin "baserom.gba", 0xB4C2EC, 0x0000004

gUnk_08B4C2F0:: @ 08B4C2F0
	.incbin "baserom.gba", 0xB4C2F0, 0x0000004

gUnk_08B4C2F4:: @ 08B4C2F4
	.incbin "baserom.gba", 0xB4C2F4, 0x000004C

gUnk_08B4C340:: @ 08B4C340
	.incbin "baserom.gba", 0xB4C340, 0x0000004

gUnk_08B4C344:: @ 08B4C344
	.incbin "baserom.gba", 0xB4C344, 0x0000004

gUnk_08B4C348:: @ 08B4C348
	.incbin "baserom.gba", 0xB4C348, 0x0000004

gUnk_08B4C34C:: @ 08B4C34C
	.incbin "baserom.gba", 0xB4C34C, 0x0000004

gUnk_08B4C350:: @ 08B4C350
	.incbin "baserom.gba", 0xB4C350, 0x0000004

gUnk_08B4C354:: @ 08B4C354
	.incbin "baserom.gba", 0xB4C354, 0x0000004

gUnk_08B4C358:: @ 08B4C358
	.incbin "baserom.gba", 0xB4C358, 0x0000008

gUnk_08B4C360:: @ 08B4C360
	.incbin "baserom.gba", 0xB4C360, 0x0000008

gUnk_08B4C368:: @ 08B4C368
	.incbin "baserom.gba", 0xB4C368, 0x0000004

gUnk_08B4C36C:: @ 08B4C36C
	.incbin "baserom.gba", 0xB4C36C, 0x0000004

gUnk_08B4C370:: @ 08B4C370
	.incbin "baserom.gba", 0xB4C370, 0x0000004

gUnk_08B4C374:: @ 08B4C374
	.incbin "baserom.gba", 0xB4C374, 0x0000004

gUnk_08B4C378:: @ 08B4C378
	.incbin "baserom.gba", 0xB4C378, 0x0000004

gUnk_08B4C37C:: @ 08B4C37C
	.incbin "baserom.gba", 0xB4C37C, 0x0000004

gUnk_08B4C380:: @ 08B4C380
	.incbin "baserom.gba", 0xB4C380, 0x0000004

gUnk_08B4C384:: @ 08B4C384
	.incbin "baserom.gba", 0xB4C384, 0x0000004

gUnk_08B4C388:: @ 08B4C388
	.incbin "baserom.gba", 0xB4C388, 0x0000004

gUnk_08B4C38C:: @ 08B4C38C
	.incbin "baserom.gba", 0xB4C38C, 0x0000004

gUnk_08B4C390:: @ 08B4C390
	.incbin "baserom.gba", 0xB4C390, 0x0000004

gUnk_08B4C394:: @ 08B4C394
	.incbin "baserom.gba", 0xB4C394, 0x0000004

gUnk_08B4C398:: @ 08B4C398
	.incbin "baserom.gba", 0xB4C398, 0x0000004

gUnk_08B4C39C:: @ 08B4C39C
	.incbin "baserom.gba", 0xB4C39C, 0x0000004

gUnk_08B4C3A0:: @ 08B4C3A0
	.incbin "baserom.gba", 0xB4C3A0, 0x0000004

gUnk_08B4C3A4:: @ 08B4C3A4
	.incbin "baserom.gba", 0xB4C3A4, 0x0000004

gUnk_08B4C3A8:: @ 08B4C3A8
	.incbin "baserom.gba", 0xB4C3A8, 0x0000004

gUnk_08B4C3AC:: @ 08B4C3AC
	.incbin "baserom.gba", 0xB4C3AC, 0x0000004

gUnk_08B4C3B0:: @ 08B4C3B0
	.incbin "baserom.gba", 0xB4C3B0, 0x0000004

gUnk_08B4C3B4:: @ 08B4C3B4
	.incbin "baserom.gba", 0xB4C3B4, 0x0000004

gUnk_08B4C3B8:: @ 08B4C3B8
	.incbin "baserom.gba", 0xB4C3B8, 0x0000004

gUnk_08B4C3BC:: @ 08B4C3BC
	.incbin "baserom.gba", 0xB4C3BC, 0x000004C

gUnk_08B4C408:: @ 08B4C408
	.incbin "baserom.gba", 0xB4C408, 0x0000004

gUnk_08B4C40C:: @ 08B4C40C
	.incbin "baserom.gba", 0xB4C40C, 0x0000004

gUnk_08B4C410:: @ 08B4C410
	.incbin "baserom.gba", 0xB4C410, 0x0000004

gUnk_08B4C414:: @ 08B4C414
	.incbin "baserom.gba", 0xB4C414, 0x0000004

gUnk_08B4C418:: @ 08B4C418
	.incbin "baserom.gba", 0xB4C418, 0x0000004

gUnk_08B4C41C:: @ 08B4C41C
	.incbin "baserom.gba", 0xB4C41C, 0x0000004

gUnk_08B4C420:: @ 08B4C420
	.incbin "baserom.gba", 0xB4C420, 0x0000004

gUnk_08B4C424:: @ 08B4C424
	.incbin "baserom.gba", 0xB4C424, 0x0000008

gUnk_08B4C42C:: @ 08B4C42C
	.incbin "baserom.gba", 0xB4C42C, 0x0000004

gUnk_08B4C430:: @ 08B4C430
	.incbin "baserom.gba", 0xB4C430, 0x0000004

gUnk_08B4C434:: @ 08B4C434
	.incbin "baserom.gba", 0xB4C434, 0x0000004

gUnk_08B4C438:: @ 08B4C438
	.incbin "baserom.gba", 0xB4C438, 0x0000004

gUnk_08B4C43C:: @ 08B4C43C
	.incbin "baserom.gba", 0xB4C43C, 0x0000004

gUnk_08B4C440:: @ 08B4C440
	.incbin "baserom.gba", 0xB4C440, 0x0000004

gUnk_08B4C444:: @ 08B4C444
	.incbin "baserom.gba", 0xB4C444, 0x0000004

gUnk_08B4C448:: @ 08B4C448
	.incbin "baserom.gba", 0xB4C448, 0x0000004

gUnk_08B4C44C:: @ 08B4C44C
	.incbin "baserom.gba", 0xB4C44C, 0x0000004

gUnk_08B4C450:: @ 08B4C450
	.incbin "baserom.gba", 0xB4C450, 0x0000004

gUnk_08B4C454:: @ 08B4C454
	.incbin "baserom.gba", 0xB4C454, 0x0000004

gUnk_08B4C458:: @ 08B4C458
	.incbin "baserom.gba", 0xB4C458, 0x0000004

gUnk_08B4C45C:: @ 08B4C45C
	.incbin "baserom.gba", 0xB4C45C, 0x0000004

gUnk_08B4C460:: @ 08B4C460
	.incbin "baserom.gba", 0xB4C460, 0x0000004

gUnk_08B4C464:: @ 08B4C464
	.incbin "baserom.gba", 0xB4C464, 0x0000004

gUnk_08B4C468:: @ 08B4C468
	.incbin "baserom.gba", 0xB4C468, 0x0000004

gUnk_08B4C46C:: @ 08B4C46C
	.incbin "baserom.gba", 0xB4C46C, 0x0000004

gUnk_08B4C470:: @ 08B4C470
	.incbin "baserom.gba", 0xB4C470, 0x0000004

gUnk_08B4C474:: @ 08B4C474
	.incbin "baserom.gba", 0xB4C474, 0x0000004

gUnk_08B4C478:: @ 08B4C478
	.incbin "baserom.gba", 0xB4C478, 0x0000004

gUnk_08B4C47C:: @ 08B4C47C
	.incbin "baserom.gba", 0xB4C47C, 0x0000004

gUnk_08B4C480:: @ 08B4C480
	.incbin "baserom.gba", 0xB4C480, 0x000004C

gUnk_08B4C4CC:: @ 08B4C4CC
	.incbin "baserom.gba", 0xB4C4CC, 0x0000004

gUnk_08B4C4D0:: @ 08B4C4D0
	.incbin "baserom.gba", 0xB4C4D0, 0x000000C

gUnk_08B4C4DC:: @ 08B4C4DC
	.incbin "baserom.gba", 0xB4C4DC, 0x000000C

gUnk_08B4C4E8:: @ 08B4C4E8
	.incbin "baserom.gba", 0xB4C4E8, 0x000000C

gUnk_08B4C4F4:: @ 08B4C4F4
	.incbin "baserom.gba", 0xB4C4F4, 0x000000C

gUnk_08B4C500:: @ 08B4C500
	.incbin "baserom.gba", 0xB4C500, 0x0000010

gUnk_08B4C510:: @ 08B4C510
	.incbin "baserom.gba", 0xB4C510, 0x0000004

gUnk_08B4C514:: @ 08B4C514
	.incbin "baserom.gba", 0xB4C514, 0x0000004

gUnk_08B4C518:: @ 08B4C518
	.incbin "baserom.gba", 0xB4C518, 0x000000C

gUnk_08B4C524:: @ 08B4C524
	.incbin "baserom.gba", 0xB4C524, 0x0000010

gUnk_08B4C534:: @ 08B4C534
	.incbin "baserom.gba", 0xB4C534, 0x0000008

gUnk_08B4C53C:: @ 08B4C53C
	.incbin "baserom.gba", 0xB4C53C, 0x000000C

gUnk_08B4C548:: @ 08B4C548
	.incbin "baserom.gba", 0xB4C548, 0x0000004

gUnk_08B4C54C:: @ 08B4C54C
	.incbin "baserom.gba", 0xB4C54C, 0x0000004

gUnk_08B4C550:: @ 08B4C550
	.incbin "baserom.gba", 0xB4C550, 0x0000008

gUnk_08B4C558:: @ 08B4C558
	.incbin "baserom.gba", 0xB4C558, 0x0000008

gUnk_08B4C560:: @ 08B4C560
	.incbin "baserom.gba", 0xB4C560, 0x0000004

gUnk_08B4C564:: @ 08B4C564
	.incbin "baserom.gba", 0xB4C564, 0x0000004

gUnk_08B4C568:: @ 08B4C568
	.incbin "baserom.gba", 0xB4C568, 0x0000004

gUnk_08B4C56C:: @ 08B4C56C
	.incbin "baserom.gba", 0xB4C56C, 0x0000004

gUnk_08B4C570:: @ 08B4C570
	.incbin "baserom.gba", 0xB4C570, 0x000000C

gUnk_08B4C57C:: @ 08B4C57C
	.incbin "baserom.gba", 0xB4C57C, 0x000004C

gUnk_08B4C5C8:: @ 08B4C5C8
	.incbin "baserom.gba", 0xB4C5C8, 0x0000004

gUnk_08B4C5CC:: @ 08B4C5CC
	.incbin "baserom.gba", 0xB4C5CC, 0x000000C

gUnk_08B4C5D8:: @ 08B4C5D8
	.incbin "baserom.gba", 0xB4C5D8, 0x000000C

gUnk_08B4C5E4:: @ 08B4C5E4
	.incbin "baserom.gba", 0xB4C5E4, 0x0000008

gUnk_08B4C5EC:: @ 08B4C5EC
	.incbin "baserom.gba", 0xB4C5EC, 0x000000C

gUnk_08B4C5F8:: @ 08B4C5F8
	.incbin "baserom.gba", 0xB4C5F8, 0x000000C

gUnk_08B4C604:: @ 08B4C604
	.incbin "baserom.gba", 0xB4C604, 0x0000004

gUnk_08B4C608:: @ 08B4C608
	.incbin "baserom.gba", 0xB4C608, 0x0000004

gUnk_08B4C60C:: @ 08B4C60C
	.incbin "baserom.gba", 0xB4C60C, 0x0000008

gUnk_08B4C614:: @ 08B4C614
	.incbin "baserom.gba", 0xB4C614, 0x000000C

gUnk_08B4C620:: @ 08B4C620
	.incbin "baserom.gba", 0xB4C620, 0x000000C

gUnk_08B4C62C:: @ 08B4C62C
	.incbin "baserom.gba", 0xB4C62C, 0x0000010

gUnk_08B4C63C:: @ 08B4C63C
	.incbin "baserom.gba", 0xB4C63C, 0x0000004

gUnk_08B4C640:: @ 08B4C640
	.incbin "baserom.gba", 0xB4C640, 0x0000004

gUnk_08B4C644:: @ 08B4C644
	.incbin "baserom.gba", 0xB4C644, 0x0000008

gUnk_08B4C64C:: @ 08B4C64C
	.incbin "baserom.gba", 0xB4C64C, 0x0000008

gUnk_08B4C654:: @ 08B4C654
	.incbin "baserom.gba", 0xB4C654, 0x0000004

gUnk_08B4C658:: @ 08B4C658
	.incbin "baserom.gba", 0xB4C658, 0x0000004

gUnk_08B4C65C:: @ 08B4C65C
	.incbin "baserom.gba", 0xB4C65C, 0x0000004

gUnk_08B4C660:: @ 08B4C660
	.incbin "baserom.gba", 0xB4C660, 0x0000004

gUnk_08B4C664:: @ 08B4C664
	.incbin "baserom.gba", 0xB4C664, 0x0000008

gUnk_08B4C66C:: @ 08B4C66C
	.incbin "baserom.gba", 0xB4C66C, 0x000004C

gUnk_08B4C6B8:: @ 08B4C6B8
	.incbin "baserom.gba", 0xB4C6B8, 0x000000C

gUnk_08B4C6C4:: @ 08B4C6C4
	.incbin "baserom.gba", 0xB4C6C4, 0x0000004

gUnk_08B4C6C8:: @ 08B4C6C8
	.incbin "baserom.gba", 0xB4C6C8, 0x0000004

gUnk_08B4C6CC:: @ 08B4C6CC
	.incbin "baserom.gba", 0xB4C6CC, 0x0000004

gUnk_08B4C6D0:: @ 08B4C6D0
	.incbin "baserom.gba", 0xB4C6D0, 0x0000004

gUnk_08B4C6D4:: @ 08B4C6D4
	.incbin "baserom.gba", 0xB4C6D4, 0x0000004

gUnk_08B4C6D8:: @ 08B4C6D8
	.incbin "baserom.gba", 0xB4C6D8, 0x000000C

gUnk_08B4C6E4:: @ 08B4C6E4
	.incbin "baserom.gba", 0xB4C6E4, 0x0000008

gUnk_08B4C6EC:: @ 08B4C6EC
	.incbin "baserom.gba", 0xB4C6EC, 0x0000004

gUnk_08B4C6F0:: @ 08B4C6F0
	.incbin "baserom.gba", 0xB4C6F0, 0x0000004

gUnk_08B4C6F4:: @ 08B4C6F4
	.incbin "baserom.gba", 0xB4C6F4, 0x0000004

gUnk_08B4C6F8:: @ 08B4C6F8
	.incbin "baserom.gba", 0xB4C6F8, 0x0000004

gUnk_08B4C6FC:: @ 08B4C6FC
	.incbin "baserom.gba", 0xB4C6FC, 0x0000004

gUnk_08B4C700:: @ 08B4C700
	.incbin "baserom.gba", 0xB4C700, 0x0000008

gUnk_08B4C708:: @ 08B4C708
	.incbin "baserom.gba", 0xB4C708, 0x0000004

gUnk_08B4C70C:: @ 08B4C70C
	.incbin "baserom.gba", 0xB4C70C, 0x0000004

gUnk_08B4C710:: @ 08B4C710
	.incbin "baserom.gba", 0xB4C710, 0x0000008

gUnk_08B4C718:: @ 08B4C718
	.incbin "baserom.gba", 0xB4C718, 0x000000C

gUnk_08B4C724:: @ 08B4C724
	.incbin "baserom.gba", 0xB4C724, 0x000000C

gUnk_08B4C730:: @ 08B4C730
	.incbin "baserom.gba", 0xB4C730, 0x000000C

gUnk_08B4C73C:: @ 08B4C73C
	.incbin "baserom.gba", 0xB4C73C, 0x0000004

gUnk_08B4C740:: @ 08B4C740
	.incbin "baserom.gba", 0xB4C740, 0x000004C

gUnk_08B4C78C:: @ 08B4C78C
	.incbin "baserom.gba", 0xB4C78C, 0x000000C

gUnk_08B4C798:: @ 08B4C798
	.incbin "baserom.gba", 0xB4C798, 0x0000004

gUnk_08B4C79C:: @ 08B4C79C
	.incbin "baserom.gba", 0xB4C79C, 0x0000004

gUnk_08B4C7A0:: @ 08B4C7A0
	.incbin "baserom.gba", 0xB4C7A0, 0x0000004

gUnk_08B4C7A4:: @ 08B4C7A4
	.incbin "baserom.gba", 0xB4C7A4, 0x0000004

gUnk_08B4C7A8:: @ 08B4C7A8
	.incbin "baserom.gba", 0xB4C7A8, 0x0000004

gUnk_08B4C7AC:: @ 08B4C7AC
	.incbin "baserom.gba", 0xB4C7AC, 0x0000010

gUnk_08B4C7BC:: @ 08B4C7BC
	.incbin "baserom.gba", 0xB4C7BC, 0x000000C

gUnk_08B4C7C8:: @ 08B4C7C8
	.incbin "baserom.gba", 0xB4C7C8, 0x0000004

gUnk_08B4C7CC:: @ 08B4C7CC
	.incbin "baserom.gba", 0xB4C7CC, 0x0000004

gUnk_08B4C7D0:: @ 08B4C7D0
	.incbin "baserom.gba", 0xB4C7D0, 0x0000004

gUnk_08B4C7D4:: @ 08B4C7D4
	.incbin "baserom.gba", 0xB4C7D4, 0x0000004

gUnk_08B4C7D8:: @ 08B4C7D8
	.incbin "baserom.gba", 0xB4C7D8, 0x0000004

gUnk_08B4C7DC:: @ 08B4C7DC
	.incbin "baserom.gba", 0xB4C7DC, 0x0000008

gUnk_08B4C7E4:: @ 08B4C7E4
	.incbin "baserom.gba", 0xB4C7E4, 0x0000004

gUnk_08B4C7E8:: @ 08B4C7E8
	.incbin "baserom.gba", 0xB4C7E8, 0x0000004

gUnk_08B4C7EC:: @ 08B4C7EC
	.incbin "baserom.gba", 0xB4C7EC, 0x000000C

gUnk_08B4C7F8:: @ 08B4C7F8
	.incbin "baserom.gba", 0xB4C7F8, 0x0000008

gUnk_08B4C800:: @ 08B4C800
	.incbin "baserom.gba", 0xB4C800, 0x0000010

gUnk_08B4C810:: @ 08B4C810
	.incbin "baserom.gba", 0xB4C810, 0x0000008

gUnk_08B4C818:: @ 08B4C818
	.incbin "baserom.gba", 0xB4C818, 0x0000004

gUnk_08B4C81C:: @ 08B4C81C
	.incbin "baserom.gba", 0xB4C81C, 0x000004C

gUnk_08B4C868:: @ 08B4C868
	.incbin "baserom.gba", 0xB4C868, 0x0000004

gUnk_08B4C86C:: @ 08B4C86C
	.incbin "baserom.gba", 0xB4C86C, 0x0000004

gUnk_08B4C870:: @ 08B4C870
	.incbin "baserom.gba", 0xB4C870, 0x0000004

gUnk_08B4C874:: @ 08B4C874
	.incbin "baserom.gba", 0xB4C874, 0x0000004

gUnk_08B4C878:: @ 08B4C878
	.incbin "baserom.gba", 0xB4C878, 0x0000004

gUnk_08B4C87C:: @ 08B4C87C
	.incbin "baserom.gba", 0xB4C87C, 0x0000004

gUnk_08B4C880:: @ 08B4C880
	.incbin "baserom.gba", 0xB4C880, 0x0000004

gUnk_08B4C884:: @ 08B4C884
	.incbin "baserom.gba", 0xB4C884, 0x0000004

gUnk_08B4C888:: @ 08B4C888
	.incbin "baserom.gba", 0xB4C888, 0x0000004

gUnk_08B4C88C:: @ 08B4C88C
	.incbin "baserom.gba", 0xB4C88C, 0x0000004

gUnk_08B4C890:: @ 08B4C890
	.incbin "baserom.gba", 0xB4C890, 0x0000004

gUnk_08B4C894:: @ 08B4C894
	.incbin "baserom.gba", 0xB4C894, 0x0000004

gUnk_08B4C898:: @ 08B4C898
	.incbin "baserom.gba", 0xB4C898, 0x0000004

gUnk_08B4C89C:: @ 08B4C89C
	.incbin "baserom.gba", 0xB4C89C, 0x0000004

gUnk_08B4C8A0:: @ 08B4C8A0
	.incbin "baserom.gba", 0xB4C8A0, 0x0000004

gUnk_08B4C8A4:: @ 08B4C8A4
	.incbin "baserom.gba", 0xB4C8A4, 0x0000004

gUnk_08B4C8A8:: @ 08B4C8A8
	.incbin "baserom.gba", 0xB4C8A8, 0x0000004

gUnk_08B4C8AC:: @ 08B4C8AC
	.incbin "baserom.gba", 0xB4C8AC, 0x0000004

gUnk_08B4C8B0:: @ 08B4C8B0
	.incbin "baserom.gba", 0xB4C8B0, 0x0000008

gUnk_08B4C8B8:: @ 08B4C8B8
	.incbin "baserom.gba", 0xB4C8B8, 0x0000004

gUnk_08B4C8BC:: @ 08B4C8BC
	.incbin "baserom.gba", 0xB4C8BC, 0x0000004

gUnk_08B4C8C0:: @ 08B4C8C0
	.incbin "baserom.gba", 0xB4C8C0, 0x000004C

gUnk_08B4C90C:: @ 08B4C90C
	.incbin "baserom.gba", 0xB4C90C, 0x0000004

gUnk_08B4C910:: @ 08B4C910
	.incbin "baserom.gba", 0xB4C910, 0x0000024

gUnk_08B4C934:: @ 08B4C934
	.incbin "baserom.gba", 0xB4C934, 0x0000004

gUnk_08B4C938:: @ 08B4C938
	.incbin "baserom.gba", 0xB4C938, 0x0000004

gUnk_08B4C93C:: @ 08B4C93C
	.incbin "baserom.gba", 0xB4C93C, 0x0000004

gUnk_08B4C940:: @ 08B4C940
	.incbin "baserom.gba", 0xB4C940, 0x0000020

gUnk_08B4C960:: @ 08B4C960
	.incbin "baserom.gba", 0xB4C960, 0x0000020

gUnk_08B4C980:: @ 08B4C980
	.incbin "baserom.gba", 0xB4C980, 0x000000C

gUnk_08B4C98C:: @ 08B4C98C
	.incbin "baserom.gba", 0xB4C98C, 0x0000010

gUnk_08B4C99C:: @ 08B4C99C
	.incbin "baserom.gba", 0xB4C99C, 0x0000010

gUnk_08B4C9AC:: @ 08B4C9AC
	.incbin "baserom.gba", 0xB4C9AC, 0x0000014

gUnk_08B4C9C0:: @ 08B4C9C0
	.incbin "baserom.gba", 0xB4C9C0, 0x0000020

gUnk_08B4C9E0:: @ 08B4C9E0
	.incbin "baserom.gba", 0xB4C9E0, 0x0000018

gUnk_08B4C9F8:: @ 08B4C9F8
	.incbin "baserom.gba", 0xB4C9F8, 0x000001C

gUnk_08B4CA14:: @ 08B4CA14
	.incbin "baserom.gba", 0xB4CA14, 0x000001C

gUnk_08B4CA30:: @ 08B4CA30
	.incbin "baserom.gba", 0xB4CA30, 0x0000008

gUnk_08B4CA38:: @ 08B4CA38
	.incbin "baserom.gba", 0xB4CA38, 0x0000008

gUnk_08B4CA40:: @ 08B4CA40
	.incbin "baserom.gba", 0xB4CA40, 0x0000020

gUnk_08B4CA60:: @ 08B4CA60
	.incbin "baserom.gba", 0xB4CA60, 0x0000018

gUnk_08B4CA78:: @ 08B4CA78
	.incbin "baserom.gba", 0xB4CA78, 0x0000024

gUnk_08B4CA9C:: @ 08B4CA9C
	.incbin "baserom.gba", 0xB4CA9C, 0x000001C

gUnk_08B4CAB8:: @ 08B4CAB8
	.incbin "baserom.gba", 0xB4CAB8, 0x000001C

gUnk_08B4CAD4:: @ 08B4CAD4
	.incbin "baserom.gba", 0xB4CAD4, 0x000001C

gUnk_08B4CAF0:: @ 08B4CAF0
	.incbin "baserom.gba", 0xB4CAF0, 0x0000018

gUnk_08B4CB08:: @ 08B4CB08
	.incbin "baserom.gba", 0xB4CB08, 0x0000018

gUnk_08B4CB20:: @ 08B4CB20
	.incbin "baserom.gba", 0xB4CB20, 0x000001C

gUnk_08B4CB3C:: @ 08B4CB3C
	.incbin "baserom.gba", 0xB4CB3C, 0x000001C

gUnk_08B4CB58:: @ 08B4CB58
	.incbin "baserom.gba", 0xB4CB58, 0x000000C

gUnk_08B4CB64:: @ 08B4CB64
	.incbin "baserom.gba", 0xB4CB64, 0x000000C

gUnk_08B4CB70:: @ 08B4CB70
	.incbin "baserom.gba", 0xB4CB70, 0x000001C

gUnk_08B4CB8C:: @ 08B4CB8C
	.incbin "baserom.gba", 0xB4CB8C, 0x000000C

gUnk_08B4CB98:: @ 08B4CB98
	.incbin "baserom.gba", 0xB4CB98, 0x0000018

gUnk_08B4CBB0:: @ 08B4CBB0
	.incbin "baserom.gba", 0xB4CBB0, 0x0000020

gUnk_08B4CBD0:: @ 08B4CBD0
	.incbin "baserom.gba", 0xB4CBD0, 0x0000014

gUnk_08B4CBE4:: @ 08B4CBE4
	.incbin "baserom.gba", 0xB4CBE4, 0x000001C

gUnk_08B4CC00:: @ 08B4CC00
	.incbin "baserom.gba", 0xB4CC00, 0x0000008

gUnk_08B4CC08:: @ 08B4CC08
	.incbin "baserom.gba", 0xB4CC08, 0x0000010

gUnk_08B4CC18:: @ 08B4CC18
	.incbin "baserom.gba", 0xB4CC18, 0x0000010

gUnk_08B4CC28:: @ 08B4CC28
	.incbin "baserom.gba", 0xB4CC28, 0x0000018

gUnk_08B4CC40:: @ 08B4CC40
	.incbin "baserom.gba", 0xB4CC40, 0x0000014

gUnk_08B4CC54:: @ 08B4CC54
	.incbin "baserom.gba", 0xB4CC54, 0x0000014

gUnk_08B4CC68:: @ 08B4CC68
	.incbin "baserom.gba", 0xB4CC68, 0x0000014

gUnk_08B4CC7C:: @ 08B4CC7C
	.incbin "baserom.gba", 0xB4CC7C, 0x0000018

gUnk_08B4CC94:: @ 08B4CC94
	.incbin "baserom.gba", 0xB4CC94, 0x0000024

gUnk_08B4CCB8:: @ 08B4CCB8
	.incbin "baserom.gba", 0xB4CCB8, 0x0000024

gUnk_08B4CCDC:: @ 08B4CCDC
	.incbin "baserom.gba", 0xB4CCDC, 0x0000028

gUnk_08B4CD04:: @ 08B4CD04
	.incbin "baserom.gba", 0xB4CD04, 0x0000028

gUnk_08B4CD2C:: @ 08B4CD2C
	.incbin "baserom.gba", 0xB4CD2C, 0x000000C

gUnk_08B4CD38:: @ 08B4CD38
	.incbin "baserom.gba", 0xB4CD38, 0x0000008

gUnk_08B4CD40:: @ 08B4CD40
	.incbin "baserom.gba", 0xB4CD40, 0x000000C

gUnk_08B4CD4C:: @ 08B4CD4C
	.incbin "baserom.gba", 0xB4CD4C, 0x0000004

gUnk_08B4CD50:: @ 08B4CD50
	.incbin "baserom.gba", 0xB4CD50, 0x000004C

gUnk_08B4CD9C:: @ 08B4CD9C
	.incbin "baserom.gba", 0xB4CD9C, 0x0000004

gUnk_08B4CDA0:: @ 08B4CDA0
	.incbin "baserom.gba", 0xB4CDA0, 0x0000004

gUnk_08B4CDA4:: @ 08B4CDA4
	.incbin "baserom.gba", 0xB4CDA4, 0x0000004

gUnk_08B4CDA8:: @ 08B4CDA8
	.incbin "baserom.gba", 0xB4CDA8, 0x0000004

gUnk_08B4CDAC:: @ 08B4CDAC
	.incbin "baserom.gba", 0xB4CDAC, 0x000000C

gUnk_08B4CDB8:: @ 08B4CDB8
	.incbin "baserom.gba", 0xB4CDB8, 0x000000C

gUnk_08B4CDC4:: @ 08B4CDC4
	.incbin "baserom.gba", 0xB4CDC4, 0x0000004

gUnk_08B4CDC8:: @ 08B4CDC8
	.incbin "baserom.gba", 0xB4CDC8, 0x0000004

gUnk_08B4CDCC:: @ 08B4CDCC
	.incbin "baserom.gba", 0xB4CDCC, 0x0000008

gUnk_08B4CDD4:: @ 08B4CDD4
	.incbin "baserom.gba", 0xB4CDD4, 0x000000C

gUnk_08B4CDE0:: @ 08B4CDE0
	.incbin "baserom.gba", 0xB4CDE0, 0x0000004

gUnk_08B4CDE4:: @ 08B4CDE4
	.incbin "baserom.gba", 0xB4CDE4, 0x0000004

gUnk_08B4CDE8:: @ 08B4CDE8
	.incbin "baserom.gba", 0xB4CDE8, 0x0000004

gUnk_08B4CDEC:: @ 08B4CDEC
	.incbin "baserom.gba", 0xB4CDEC, 0x0000004

gUnk_08B4CDF0:: @ 08B4CDF0
	.incbin "baserom.gba", 0xB4CDF0, 0x0000008

gUnk_08B4CDF8:: @ 08B4CDF8
	.incbin "baserom.gba", 0xB4CDF8, 0x0000010

gUnk_08B4CE08:: @ 08B4CE08
	.incbin "baserom.gba", 0xB4CE08, 0x0000004

gUnk_08B4CE0C:: @ 08B4CE0C
	.incbin "baserom.gba", 0xB4CE0C, 0x0000008

gUnk_08B4CE14:: @ 08B4CE14
	.incbin "baserom.gba", 0xB4CE14, 0x0000004

gUnk_08B4CE18:: @ 08B4CE18
	.incbin "baserom.gba", 0xB4CE18, 0x0000004

gUnk_08B4CE1C:: @ 08B4CE1C
	.incbin "baserom.gba", 0xB4CE1C, 0x0000004

gUnk_08B4CE20:: @ 08B4CE20
	.incbin "baserom.gba", 0xB4CE20, 0x0000004

gUnk_08B4CE24:: @ 08B4CE24
	.incbin "baserom.gba", 0xB4CE24, 0x0000004

gUnk_08B4CE28:: @ 08B4CE28
	.incbin "baserom.gba", 0xB4CE28, 0x0000004

gUnk_08B4CE2C:: @ 08B4CE2C
	.incbin "baserom.gba", 0xB4CE2C, 0x0000004

gUnk_08B4CE30:: @ 08B4CE30
	.incbin "baserom.gba", 0xB4CE30, 0x000004C

gUnk_08B4CE7C:: @ 08B4CE7C
	.incbin "baserom.gba", 0xB4CE7C, 0x0000004

gUnk_08B4CE80:: @ 08B4CE80
	.incbin "baserom.gba", 0xB4CE80, 0x000001C

gUnk_08B4CE9C:: @ 08B4CE9C
	.incbin "baserom.gba", 0xB4CE9C, 0x0000004

gUnk_08B4CEA0:: @ 08B4CEA0
	.incbin "baserom.gba", 0xB4CEA0, 0x0000004

gUnk_08B4CEA4:: @ 08B4CEA4
	.incbin "baserom.gba", 0xB4CEA4, 0x0000004

gUnk_08B4CEA8:: @ 08B4CEA8
	.incbin "baserom.gba", 0xB4CEA8, 0x0000018

gUnk_08B4CEC0:: @ 08B4CEC0
	.incbin "baserom.gba", 0xB4CEC0, 0x000001C

gUnk_08B4CEDC:: @ 08B4CEDC
	.incbin "baserom.gba", 0xB4CEDC, 0x0000014

gUnk_08B4CEF0:: @ 08B4CEF0
	.incbin "baserom.gba", 0xB4CEF0, 0x0000018

gUnk_08B4CF08:: @ 08B4CF08
	.incbin "baserom.gba", 0xB4CF08, 0x0000018

gUnk_08B4CF20:: @ 08B4CF20
	.incbin "baserom.gba", 0xB4CF20, 0x000001C

gUnk_08B4CF3C:: @ 08B4CF3C
	.incbin "baserom.gba", 0xB4CF3C, 0x0000024

gUnk_08B4CF60:: @ 08B4CF60
	.incbin "baserom.gba", 0xB4CF60, 0x0000020

gUnk_08B4CF80:: @ 08B4CF80
	.incbin "baserom.gba", 0xB4CF80, 0x0000024

gUnk_08B4CFA4:: @ 08B4CFA4
	.incbin "baserom.gba", 0xB4CFA4, 0x0000020

gUnk_08B4CFC4:: @ 08B4CFC4
	.incbin "baserom.gba", 0xB4CFC4, 0x0000010

gUnk_08B4CFD4:: @ 08B4CFD4
	.incbin "baserom.gba", 0xB4CFD4, 0x0000010

gUnk_08B4CFE4:: @ 08B4CFE4
	.incbin "baserom.gba", 0xB4CFE4, 0x0000018

gUnk_08B4CFFC:: @ 08B4CFFC
	.incbin "baserom.gba", 0xB4CFFC, 0x0000010

gUnk_08B4D00C:: @ 08B4D00C
	.incbin "baserom.gba", 0xB4D00C, 0x000001C

gUnk_08B4D028:: @ 08B4D028
	.incbin "baserom.gba", 0xB4D028, 0x0000014

gUnk_08B4D03C:: @ 08B4D03C
	.incbin "baserom.gba", 0xB4D03C, 0x0000024

gUnk_08B4D060:: @ 08B4D060
	.incbin "baserom.gba", 0xB4D060, 0x0000024

gUnk_08B4D084:: @ 08B4D084
	.incbin "baserom.gba", 0xB4D084, 0x0000020

gUnk_08B4D0A4:: @ 08B4D0A4
	.incbin "baserom.gba", 0xB4D0A4, 0x0000020

gUnk_08B4D0C4:: @ 08B4D0C4
	.incbin "baserom.gba", 0xB4D0C4, 0x0000024

gUnk_08B4D0E8:: @ 08B4D0E8
	.incbin "baserom.gba", 0xB4D0E8, 0x0000024

gUnk_08B4D10C:: @ 08B4D10C
	.incbin "baserom.gba", 0xB4D10C, 0x0000014

gUnk_08B4D120:: @ 08B4D120
	.incbin "baserom.gba", 0xB4D120, 0x0000014

gUnk_08B4D134:: @ 08B4D134
	.incbin "baserom.gba", 0xB4D134, 0x0000014

gUnk_08B4D148:: @ 08B4D148
	.incbin "baserom.gba", 0xB4D148, 0x0000014

gUnk_08B4D15C:: @ 08B4D15C
	.incbin "baserom.gba", 0xB4D15C, 0x0000020

gUnk_08B4D17C:: @ 08B4D17C
	.incbin "baserom.gba", 0xB4D17C, 0x000001C

gUnk_08B4D198:: @ 08B4D198
	.incbin "baserom.gba", 0xB4D198, 0x000001C

gUnk_08B4D1B4:: @ 08B4D1B4
	.incbin "baserom.gba", 0xB4D1B4, 0x0000020

gUnk_08B4D1D4:: @ 08B4D1D4
	.incbin "baserom.gba", 0xB4D1D4, 0x0000010

gUnk_08B4D1E4:: @ 08B4D1E4
	.incbin "baserom.gba", 0xB4D1E4, 0x0000008

gUnk_08B4D1EC:: @ 08B4D1EC
	.incbin "baserom.gba", 0xB4D1EC, 0x0000008

gUnk_08B4D1F4:: @ 08B4D1F4
	.incbin "baserom.gba", 0xB4D1F4, 0x0000010

gUnk_08B4D204:: @ 08B4D204
	.incbin "baserom.gba", 0xB4D204, 0x000000C

gUnk_08B4D210:: @ 08B4D210
	.incbin "baserom.gba", 0xB4D210, 0x000000C

gUnk_08B4D21C:: @ 08B4D21C
	.incbin "baserom.gba", 0xB4D21C, 0x000000C

gUnk_08B4D228:: @ 08B4D228
	.incbin "baserom.gba", 0xB4D228, 0x0000010

gUnk_08B4D238:: @ 08B4D238
	.incbin "baserom.gba", 0xB4D238, 0x000001C

gUnk_08B4D254:: @ 08B4D254
	.incbin "baserom.gba", 0xB4D254, 0x0000020

gUnk_08B4D274:: @ 08B4D274
	.incbin "baserom.gba", 0xB4D274, 0x0000020

gUnk_08B4D294:: @ 08B4D294
	.incbin "baserom.gba", 0xB4D294, 0x0000024

gUnk_08B4D2B8:: @ 08B4D2B8
	.incbin "baserom.gba", 0xB4D2B8, 0x000000C

gUnk_08B4D2C4:: @ 08B4D2C4
	.incbin "baserom.gba", 0xB4D2C4, 0x000000C

gUnk_08B4D2D0:: @ 08B4D2D0
	.incbin "baserom.gba", 0xB4D2D0, 0x0000008

gUnk_08B4D2D8:: @ 08B4D2D8
	.incbin "baserom.gba", 0xB4D2D8, 0x0000004

gUnk_08B4D2DC:: @ 08B4D2DC
	.incbin "baserom.gba", 0xB4D2DC, 0x000004C

gUnk_08B4D328:: @ 08B4D328
	.incbin "baserom.gba", 0xB4D328, 0x0000004

gUnk_08B4D32C:: @ 08B4D32C
	.incbin "baserom.gba", 0xB4D32C, 0x0000018

gUnk_08B4D344:: @ 08B4D344
	.incbin "baserom.gba", 0xB4D344, 0x0000004

gUnk_08B4D348:: @ 08B4D348
	.incbin "baserom.gba", 0xB4D348, 0x0000004

gUnk_08B4D34C:: @ 08B4D34C
	.incbin "baserom.gba", 0xB4D34C, 0x0000004

gUnk_08B4D350:: @ 08B4D350
	.incbin "baserom.gba", 0xB4D350, 0x0000018

gUnk_08B4D368:: @ 08B4D368
	.incbin "baserom.gba", 0xB4D368, 0x0000018

gUnk_08B4D380:: @ 08B4D380
	.incbin "baserom.gba", 0xB4D380, 0x0000014

gUnk_08B4D394:: @ 08B4D394
	.incbin "baserom.gba", 0xB4D394, 0x0000018

gUnk_08B4D3AC:: @ 08B4D3AC
	.incbin "baserom.gba", 0xB4D3AC, 0x000001C

gUnk_08B4D3C8:: @ 08B4D3C8
	.incbin "baserom.gba", 0xB4D3C8, 0x000001C

gUnk_08B4D3E4:: @ 08B4D3E4
	.incbin "baserom.gba", 0xB4D3E4, 0x0000024

gUnk_08B4D408:: @ 08B4D408
	.incbin "baserom.gba", 0xB4D408, 0x0000020

gUnk_08B4D428:: @ 08B4D428
	.incbin "baserom.gba", 0xB4D428, 0x0000020

gUnk_08B4D448:: @ 08B4D448
	.incbin "baserom.gba", 0xB4D448, 0x0000020

gUnk_08B4D468:: @ 08B4D468
	.incbin "baserom.gba", 0xB4D468, 0x0000014

gUnk_08B4D47C:: @ 08B4D47C
	.incbin "baserom.gba", 0xB4D47C, 0x0000014

gUnk_08B4D490:: @ 08B4D490
	.incbin "baserom.gba", 0xB4D490, 0x0000014

gUnk_08B4D4A4:: @ 08B4D4A4
	.incbin "baserom.gba", 0xB4D4A4, 0x0000010

gUnk_08B4D4B4:: @ 08B4D4B4
	.incbin "baserom.gba", 0xB4D4B4, 0x000001C

gUnk_08B4D4D0:: @ 08B4D4D0
	.incbin "baserom.gba", 0xB4D4D0, 0x0000010

gUnk_08B4D4E0:: @ 08B4D4E0
	.incbin "baserom.gba", 0xB4D4E0, 0x0000028

gUnk_08B4D508:: @ 08B4D508
	.incbin "baserom.gba", 0xB4D508, 0x0000024

gUnk_08B4D52C:: @ 08B4D52C
	.incbin "baserom.gba", 0xB4D52C, 0x0000024

gUnk_08B4D550:: @ 08B4D550
	.incbin "baserom.gba", 0xB4D550, 0x0000020

gUnk_08B4D570:: @ 08B4D570
	.incbin "baserom.gba", 0xB4D570, 0x0000024

gUnk_08B4D594:: @ 08B4D594
	.incbin "baserom.gba", 0xB4D594, 0x0000028

gUnk_08B4D5BC:: @ 08B4D5BC
	.incbin "baserom.gba", 0xB4D5BC, 0x0000018

gUnk_08B4D5D4:: @ 08B4D5D4
	.incbin "baserom.gba", 0xB4D5D4, 0x0000014

gUnk_08B4D5E8:: @ 08B4D5E8
	.incbin "baserom.gba", 0xB4D5E8, 0x0000014

gUnk_08B4D5FC:: @ 08B4D5FC
	.incbin "baserom.gba", 0xB4D5FC, 0x0000018

gUnk_08B4D614:: @ 08B4D614
	.incbin "baserom.gba", 0xB4D614, 0x0000020

gUnk_08B4D634:: @ 08B4D634
	.incbin "baserom.gba", 0xB4D634, 0x000001C

gUnk_08B4D650:: @ 08B4D650
	.incbin "baserom.gba", 0xB4D650, 0x0000020

gUnk_08B4D670:: @ 08B4D670
	.incbin "baserom.gba", 0xB4D670, 0x000001C

gUnk_08B4D68C:: @ 08B4D68C
	.incbin "baserom.gba", 0xB4D68C, 0x0000010

gUnk_08B4D69C:: @ 08B4D69C
	.incbin "baserom.gba", 0xB4D69C, 0x0000008

gUnk_08B4D6A4:: @ 08B4D6A4
	.incbin "baserom.gba", 0xB4D6A4, 0x0000008

gUnk_08B4D6AC:: @ 08B4D6AC
	.incbin "baserom.gba", 0xB4D6AC, 0x000000C

gUnk_08B4D6B8:: @ 08B4D6B8
	.incbin "baserom.gba", 0xB4D6B8, 0x000000C

gUnk_08B4D6C4:: @ 08B4D6C4
	.incbin "baserom.gba", 0xB4D6C4, 0x0000008

gUnk_08B4D6CC:: @ 08B4D6CC
	.incbin "baserom.gba", 0xB4D6CC, 0x000000C

gUnk_08B4D6D8:: @ 08B4D6D8
	.incbin "baserom.gba", 0xB4D6D8, 0x000000C

gUnk_08B4D6E4:: @ 08B4D6E4
	.incbin "baserom.gba", 0xB4D6E4, 0x000001C

gUnk_08B4D700:: @ 08B4D700
	.incbin "baserom.gba", 0xB4D700, 0x000001C

gUnk_08B4D71C:: @ 08B4D71C
	.incbin "baserom.gba", 0xB4D71C, 0x0000020

gUnk_08B4D73C:: @ 08B4D73C
	.incbin "baserom.gba", 0xB4D73C, 0x0000020

gUnk_08B4D75C:: @ 08B4D75C
	.incbin "baserom.gba", 0xB4D75C, 0x000000C

gUnk_08B4D768:: @ 08B4D768
	.incbin "baserom.gba", 0xB4D768, 0x0000010

gUnk_08B4D778:: @ 08B4D778
	.incbin "baserom.gba", 0xB4D778, 0x000000C

gUnk_08B4D784:: @ 08B4D784
	.incbin "baserom.gba", 0xB4D784, 0x0000004

gUnk_08B4D788:: @ 08B4D788
	.incbin "baserom.gba", 0xB4D788, 0x000004C

gUnk_08B4D7D4:: @ 08B4D7D4
	.incbin "baserom.gba", 0xB4D7D4, 0x0000004

gUnk_08B4D7D8:: @ 08B4D7D8
	.incbin "baserom.gba", 0xB4D7D8, 0x0000018

gUnk_08B4D7F0:: @ 08B4D7F0
	.incbin "baserom.gba", 0xB4D7F0, 0x0000004

gUnk_08B4D7F4:: @ 08B4D7F4
	.incbin "baserom.gba", 0xB4D7F4, 0x0000004

gUnk_08B4D7F8:: @ 08B4D7F8
	.incbin "baserom.gba", 0xB4D7F8, 0x0000004

gUnk_08B4D7FC:: @ 08B4D7FC
	.incbin "baserom.gba", 0xB4D7FC, 0x0000014

gUnk_08B4D810:: @ 08B4D810
	.incbin "baserom.gba", 0xB4D810, 0x0000018

gUnk_08B4D828:: @ 08B4D828
	.incbin "baserom.gba", 0xB4D828, 0x000001C

gUnk_08B4D844:: @ 08B4D844
	.incbin "baserom.gba", 0xB4D844, 0x0000020

gUnk_08B4D864:: @ 08B4D864
	.incbin "baserom.gba", 0xB4D864, 0x0000020

gUnk_08B4D884:: @ 08B4D884
	.incbin "baserom.gba", 0xB4D884, 0x0000024

gUnk_08B4D8A8:: @ 08B4D8A8
	.incbin "baserom.gba", 0xB4D8A8, 0x0000020

gUnk_08B4D8C8:: @ 08B4D8C8
	.incbin "baserom.gba", 0xB4D8C8, 0x0000020

gUnk_08B4D8E8:: @ 08B4D8E8
	.incbin "baserom.gba", 0xB4D8E8, 0x0000020

gUnk_08B4D908:: @ 08B4D908
	.incbin "baserom.gba", 0xB4D908, 0x000001C

gUnk_08B4D924:: @ 08B4D924
	.incbin "baserom.gba", 0xB4D924, 0x0000018

gUnk_08B4D93C:: @ 08B4D93C
	.incbin "baserom.gba", 0xB4D93C, 0x0000018

gUnk_08B4D954:: @ 08B4D954
	.incbin "baserom.gba", 0xB4D954, 0x0000014

gUnk_08B4D968:: @ 08B4D968
	.incbin "baserom.gba", 0xB4D968, 0x000000C

gUnk_08B4D974:: @ 08B4D974
	.incbin "baserom.gba", 0xB4D974, 0x0000018

gUnk_08B4D98C:: @ 08B4D98C
	.incbin "baserom.gba", 0xB4D98C, 0x0000010

gUnk_08B4D99C:: @ 08B4D99C
	.incbin "baserom.gba", 0xB4D99C, 0x000002C

gUnk_08B4D9C8:: @ 08B4D9C8
	.incbin "baserom.gba", 0xB4D9C8, 0x0000028

gUnk_08B4D9F0:: @ 08B4D9F0
	.incbin "baserom.gba", 0xB4D9F0, 0x0000028

gUnk_08B4DA18:: @ 08B4DA18
	.incbin "baserom.gba", 0xB4DA18, 0x0000024

gUnk_08B4DA3C:: @ 08B4DA3C
	.incbin "baserom.gba", 0xB4DA3C, 0x0000028

gUnk_08B4DA64:: @ 08B4DA64
	.incbin "baserom.gba", 0xB4DA64, 0x000002C

gUnk_08B4DA90:: @ 08B4DA90
	.incbin "baserom.gba", 0xB4DA90, 0x000001C

gUnk_08B4DAAC:: @ 08B4DAAC
	.incbin "baserom.gba", 0xB4DAAC, 0x000001C

gUnk_08B4DAC8:: @ 08B4DAC8
	.incbin "baserom.gba", 0xB4DAC8, 0x0000010

gUnk_08B4DAD8:: @ 08B4DAD8
	.incbin "baserom.gba", 0xB4DAD8, 0x000001C

gUnk_08B4DAF4:: @ 08B4DAF4
	.incbin "baserom.gba", 0xB4DAF4, 0x0000020

gUnk_08B4DB14:: @ 08B4DB14
	.incbin "baserom.gba", 0xB4DB14, 0x0000018

gUnk_08B4DB2C:: @ 08B4DB2C
	.incbin "baserom.gba", 0xB4DB2C, 0x0000024

gUnk_08B4DB50:: @ 08B4DB50
	.incbin "baserom.gba", 0xB4DB50, 0x000001C

gUnk_08B4DB6C:: @ 08B4DB6C
	.incbin "baserom.gba", 0xB4DB6C, 0x0000018

gUnk_08B4DB84:: @ 08B4DB84
	.incbin "baserom.gba", 0xB4DB84, 0x0000010

gUnk_08B4DB94:: @ 08B4DB94
	.incbin "baserom.gba", 0xB4DB94, 0x000000C

gUnk_08B4DBA0:: @ 08B4DBA0
	.incbin "baserom.gba", 0xB4DBA0, 0x0000008

gUnk_08B4DBA8:: @ 08B4DBA8
	.incbin "baserom.gba", 0xB4DBA8, 0x0000008

gUnk_08B4DBB0:: @ 08B4DBB0
	.incbin "baserom.gba", 0xB4DBB0, 0x000000C

gUnk_08B4DBBC:: @ 08B4DBBC
	.incbin "baserom.gba", 0xB4DBBC, 0x0000008

gUnk_08B4DBC4:: @ 08B4DBC4
	.incbin "baserom.gba", 0xB4DBC4, 0x000000C

gUnk_08B4DBD0:: @ 08B4DBD0
	.incbin "baserom.gba", 0xB4DBD0, 0x0000018

gUnk_08B4DBE8:: @ 08B4DBE8
	.incbin "baserom.gba", 0xB4DBE8, 0x000001C

gUnk_08B4DC04:: @ 08B4DC04
	.incbin "baserom.gba", 0xB4DC04, 0x000001C

gUnk_08B4DC20:: @ 08B4DC20
	.incbin "baserom.gba", 0xB4DC20, 0x0000020

gUnk_08B4DC40:: @ 08B4DC40
	.incbin "baserom.gba", 0xB4DC40, 0x0000014

gUnk_08B4DC54:: @ 08B4DC54
	.incbin "baserom.gba", 0xB4DC54, 0x0000014

gUnk_08B4DC68:: @ 08B4DC68
	.incbin "baserom.gba", 0xB4DC68, 0x0000010

gUnk_08B4DC78:: @ 08B4DC78
	.incbin "baserom.gba", 0xB4DC78, 0x0000004

gUnk_08B4DC7C:: @ 08B4DC7C
	.incbin "baserom.gba", 0xB4DC7C, 0x000004C

gUnk_08B4DCC8:: @ 08B4DCC8
	.incbin "baserom.gba", 0xB4DCC8, 0x0000004

gUnk_08B4DCCC:: @ 08B4DCCC
	.incbin "baserom.gba", 0xB4DCCC, 0x0000018

gUnk_08B4DCE4:: @ 08B4DCE4
	.incbin "baserom.gba", 0xB4DCE4, 0x0000004

gUnk_08B4DCE8:: @ 08B4DCE8
	.incbin "baserom.gba", 0xB4DCE8, 0x0000004

gUnk_08B4DCEC:: @ 08B4DCEC
	.incbin "baserom.gba", 0xB4DCEC, 0x0000004

gUnk_08B4DCF0:: @ 08B4DCF0
	.incbin "baserom.gba", 0xB4DCF0, 0x0000018

gUnk_08B4DD08:: @ 08B4DD08
	.incbin "baserom.gba", 0xB4DD08, 0x0000018

gUnk_08B4DD20:: @ 08B4DD20
	.incbin "baserom.gba", 0xB4DD20, 0x0000018

gUnk_08B4DD38:: @ 08B4DD38
	.incbin "baserom.gba", 0xB4DD38, 0x000001C

gUnk_08B4DD54:: @ 08B4DD54
	.incbin "baserom.gba", 0xB4DD54, 0x0000020

gUnk_08B4DD74:: @ 08B4DD74
	.incbin "baserom.gba", 0xB4DD74, 0x0000020

gUnk_08B4DD94:: @ 08B4DD94
	.incbin "baserom.gba", 0xB4DD94, 0x0000024

gUnk_08B4DDB8:: @ 08B4DDB8
	.incbin "baserom.gba", 0xB4DDB8, 0x0000024

gUnk_08B4DDDC:: @ 08B4DDDC
	.incbin "baserom.gba", 0xB4DDDC, 0x0000020

gUnk_08B4DDFC:: @ 08B4DDFC
	.incbin "baserom.gba", 0xB4DDFC, 0x0000020

gUnk_08B4DE1C:: @ 08B4DE1C
	.incbin "baserom.gba", 0xB4DE1C, 0x0000018

gUnk_08B4DE34:: @ 08B4DE34
	.incbin "baserom.gba", 0xB4DE34, 0x0000018

gUnk_08B4DE4C:: @ 08B4DE4C
	.incbin "baserom.gba", 0xB4DE4C, 0x0000014

gUnk_08B4DE60:: @ 08B4DE60
	.incbin "baserom.gba", 0xB4DE60, 0x0000010

gUnk_08B4DE70:: @ 08B4DE70
	.incbin "baserom.gba", 0xB4DE70, 0x000001C

gUnk_08B4DE8C:: @ 08B4DE8C
	.incbin "baserom.gba", 0xB4DE8C, 0x0000010

gUnk_08B4DE9C:: @ 08B4DE9C
	.incbin "baserom.gba", 0xB4DE9C, 0x000002C

gUnk_08B4DEC8:: @ 08B4DEC8
	.incbin "baserom.gba", 0xB4DEC8, 0x0000028

gUnk_08B4DEF0:: @ 08B4DEF0
	.incbin "baserom.gba", 0xB4DEF0, 0x0000028

gUnk_08B4DF18:: @ 08B4DF18
	.incbin "baserom.gba", 0xB4DF18, 0x0000024

gUnk_08B4DF3C:: @ 08B4DF3C
	.incbin "baserom.gba", 0xB4DF3C, 0x0000028

gUnk_08B4DF64:: @ 08B4DF64
	.incbin "baserom.gba", 0xB4DF64, 0x000002C

gUnk_08B4DF90:: @ 08B4DF90
	.incbin "baserom.gba", 0xB4DF90, 0x000001C

gUnk_08B4DFAC:: @ 08B4DFAC
	.incbin "baserom.gba", 0xB4DFAC, 0x0000018

gUnk_08B4DFC4:: @ 08B4DFC4
	.incbin "baserom.gba", 0xB4DFC4, 0x0000014

gUnk_08B4DFD8:: @ 08B4DFD8
	.incbin "baserom.gba", 0xB4DFD8, 0x000001C

gUnk_08B4DFF4:: @ 08B4DFF4
	.incbin "baserom.gba", 0xB4DFF4, 0x0000020

gUnk_08B4E014:: @ 08B4E014
	.incbin "baserom.gba", 0xB4E014, 0x000001C

gUnk_08B4E030:: @ 08B4E030
	.incbin "baserom.gba", 0xB4E030, 0x0000024

gUnk_08B4E054:: @ 08B4E054
	.incbin "baserom.gba", 0xB4E054, 0x000001C

gUnk_08B4E070:: @ 08B4E070
	.incbin "baserom.gba", 0xB4E070, 0x0000014

gUnk_08B4E084:: @ 08B4E084
	.incbin "baserom.gba", 0xB4E084, 0x000000C

gUnk_08B4E090:: @ 08B4E090
	.incbin "baserom.gba", 0xB4E090, 0x000000C

gUnk_08B4E09C:: @ 08B4E09C
	.incbin "baserom.gba", 0xB4E09C, 0x0000008

gUnk_08B4E0A4:: @ 08B4E0A4
	.incbin "baserom.gba", 0xB4E0A4, 0x0000008

gUnk_08B4E0AC:: @ 08B4E0AC
	.incbin "baserom.gba", 0xB4E0AC, 0x0000008

gUnk_08B4E0B4:: @ 08B4E0B4
	.incbin "baserom.gba", 0xB4E0B4, 0x000000C

gUnk_08B4E0C0:: @ 08B4E0C0
	.incbin "baserom.gba", 0xB4E0C0, 0x000000C

gUnk_08B4E0CC:: @ 08B4E0CC
	.incbin "baserom.gba", 0xB4E0CC, 0x000001C

gUnk_08B4E0E8:: @ 08B4E0E8
	.incbin "baserom.gba", 0xB4E0E8, 0x000001C

gUnk_08B4E104:: @ 08B4E104
	.incbin "baserom.gba", 0xB4E104, 0x0000020

gUnk_08B4E124:: @ 08B4E124
	.incbin "baserom.gba", 0xB4E124, 0x0000020

gUnk_08B4E144:: @ 08B4E144
	.incbin "baserom.gba", 0xB4E144, 0x0000010

gUnk_08B4E154:: @ 08B4E154
	.incbin "baserom.gba", 0xB4E154, 0x0000014

gUnk_08B4E168:: @ 08B4E168
	.incbin "baserom.gba", 0xB4E168, 0x0000010

gUnk_08B4E178:: @ 08B4E178
	.incbin "baserom.gba", 0xB4E178, 0x0000004

gUnk_08B4E17C:: @ 08B4E17C
	.incbin "baserom.gba", 0xB4E17C, 0x000004C

gUnk_08B4E1C8:: @ 08B4E1C8
	.incbin "baserom.gba", 0xB4E1C8, 0x0000004

gUnk_08B4E1CC:: @ 08B4E1CC
	.incbin "baserom.gba", 0xB4E1CC, 0x0000018

gUnk_08B4E1E4:: @ 08B4E1E4
	.incbin "baserom.gba", 0xB4E1E4, 0x0000004

gUnk_08B4E1E8:: @ 08B4E1E8
	.incbin "baserom.gba", 0xB4E1E8, 0x0000004

gUnk_08B4E1EC:: @ 08B4E1EC
	.incbin "baserom.gba", 0xB4E1EC, 0x0000004

gUnk_08B4E1F0:: @ 08B4E1F0
	.incbin "baserom.gba", 0xB4E1F0, 0x0000014

gUnk_08B4E204:: @ 08B4E204
	.incbin "baserom.gba", 0xB4E204, 0x0000018

gUnk_08B4E21C:: @ 08B4E21C
	.incbin "baserom.gba", 0xB4E21C, 0x0000018

gUnk_08B4E234:: @ 08B4E234
	.incbin "baserom.gba", 0xB4E234, 0x000001C

gUnk_08B4E250:: @ 08B4E250
	.incbin "baserom.gba", 0xB4E250, 0x000001C

gUnk_08B4E26C:: @ 08B4E26C
	.incbin "baserom.gba", 0xB4E26C, 0x0000020

gUnk_08B4E28C:: @ 08B4E28C
	.incbin "baserom.gba", 0xB4E28C, 0x0000020

gUnk_08B4E2AC:: @ 08B4E2AC
	.incbin "baserom.gba", 0xB4E2AC, 0x0000020

gUnk_08B4E2CC:: @ 08B4E2CC
	.incbin "baserom.gba", 0xB4E2CC, 0x0000020

gUnk_08B4E2EC:: @ 08B4E2EC
	.incbin "baserom.gba", 0xB4E2EC, 0x000001C

gUnk_08B4E308:: @ 08B4E308
	.incbin "baserom.gba", 0xB4E308, 0x0000014

gUnk_08B4E31C:: @ 08B4E31C
	.incbin "baserom.gba", 0xB4E31C, 0x0000014

gUnk_08B4E330:: @ 08B4E330
	.incbin "baserom.gba", 0xB4E330, 0x0000014

gUnk_08B4E344:: @ 08B4E344
	.incbin "baserom.gba", 0xB4E344, 0x000000C

gUnk_08B4E350:: @ 08B4E350
	.incbin "baserom.gba", 0xB4E350, 0x0000018

gUnk_08B4E368:: @ 08B4E368
	.incbin "baserom.gba", 0xB4E368, 0x0000010

gUnk_08B4E378:: @ 08B4E378
	.incbin "baserom.gba", 0xB4E378, 0x0000028

gUnk_08B4E3A0:: @ 08B4E3A0
	.incbin "baserom.gba", 0xB4E3A0, 0x0000028

gUnk_08B4E3C8:: @ 08B4E3C8
	.incbin "baserom.gba", 0xB4E3C8, 0x0000024

gUnk_08B4E3EC:: @ 08B4E3EC
	.incbin "baserom.gba", 0xB4E3EC, 0x0000024

gUnk_08B4E410:: @ 08B4E410
	.incbin "baserom.gba", 0xB4E410, 0x0000028

gUnk_08B4E438:: @ 08B4E438
	.incbin "baserom.gba", 0xB4E438, 0x0000028

gUnk_08B4E460:: @ 08B4E460
	.incbin "baserom.gba", 0xB4E460, 0x0000018

gUnk_08B4E478:: @ 08B4E478
	.incbin "baserom.gba", 0xB4E478, 0x0000018

gUnk_08B4E490:: @ 08B4E490
	.incbin "baserom.gba", 0xB4E490, 0x0000010

gUnk_08B4E4A0:: @ 08B4E4A0
	.incbin "baserom.gba", 0xB4E4A0, 0x0000018

gUnk_08B4E4B8:: @ 08B4E4B8
	.incbin "baserom.gba", 0xB4E4B8, 0x0000020

gUnk_08B4E4D8:: @ 08B4E4D8
	.incbin "baserom.gba", 0xB4E4D8, 0x0000018

gUnk_08B4E4F0:: @ 08B4E4F0
	.incbin "baserom.gba", 0xB4E4F0, 0x0000020

gUnk_08B4E510:: @ 08B4E510
	.incbin "baserom.gba", 0xB4E510, 0x000001C

gUnk_08B4E52C:: @ 08B4E52C
	.incbin "baserom.gba", 0xB4E52C, 0x0000014

gUnk_08B4E540:: @ 08B4E540
	.incbin "baserom.gba", 0xB4E540, 0x000000C

gUnk_08B4E54C:: @ 08B4E54C
	.incbin "baserom.gba", 0xB4E54C, 0x0000008

gUnk_08B4E554:: @ 08B4E554
	.incbin "baserom.gba", 0xB4E554, 0x000000C

gUnk_08B4E560:: @ 08B4E560
	.incbin "baserom.gba", 0xB4E560, 0x0000008

gUnk_08B4E568:: @ 08B4E568
	.incbin "baserom.gba", 0xB4E568, 0x0000008

gUnk_08B4E570:: @ 08B4E570
	.incbin "baserom.gba", 0xB4E570, 0x0000008

gUnk_08B4E578:: @ 08B4E578
	.incbin "baserom.gba", 0xB4E578, 0x000000C

gUnk_08B4E584:: @ 08B4E584
	.incbin "baserom.gba", 0xB4E584, 0x0000018

gUnk_08B4E59C:: @ 08B4E59C
	.incbin "baserom.gba", 0xB4E59C, 0x000001C

gUnk_08B4E5B8:: @ 08B4E5B8
	.incbin "baserom.gba", 0xB4E5B8, 0x000001C

gUnk_08B4E5D4:: @ 08B4E5D4
	.incbin "baserom.gba", 0xB4E5D4, 0x0000020

gUnk_08B4E5F4:: @ 08B4E5F4
	.incbin "baserom.gba", 0xB4E5F4, 0x0000010

gUnk_08B4E604:: @ 08B4E604
	.incbin "baserom.gba", 0xB4E604, 0x0000010

gUnk_08B4E614:: @ 08B4E614
	.incbin "baserom.gba", 0xB4E614, 0x000000C

gUnk_08B4E620:: @ 08B4E620
	.incbin "baserom.gba", 0xB4E620, 0x0000004

gUnk_08B4E624:: @ 08B4E624
	.incbin "baserom.gba", 0xB4E624, 0x000004C

gUnk_08B4E670:: @ 08B4E670
	.incbin "baserom.gba", 0xB4E670, 0x000001C

gUnk_08B4E68C:: @ 08B4E68C
	.incbin "baserom.gba", 0xB4E68C, 0x0000010

gUnk_08B4E69C:: @ 08B4E69C
	.incbin "baserom.gba", 0xB4E69C, 0x0000014

gUnk_08B4E6B0:: @ 08B4E6B0
	.incbin "baserom.gba", 0xB4E6B0, 0x0000004

gUnk_08B4E6B4:: @ 08B4E6B4
	.incbin "baserom.gba", 0xB4E6B4, 0x0000004

gUnk_08B4E6B8:: @ 08B4E6B8
	.incbin "baserom.gba", 0xB4E6B8, 0x0000004

gUnk_08B4E6BC:: @ 08B4E6BC
	.incbin "baserom.gba", 0xB4E6BC, 0x0000018

gUnk_08B4E6D4:: @ 08B4E6D4
	.incbin "baserom.gba", 0xB4E6D4, 0x0000014

gUnk_08B4E6E8:: @ 08B4E6E8
	.incbin "baserom.gba", 0xB4E6E8, 0x0000004

gUnk_08B4E6EC:: @ 08B4E6EC
	.incbin "baserom.gba", 0xB4E6EC, 0x0000004

gUnk_08B4E6F0:: @ 08B4E6F0
	.incbin "baserom.gba", 0xB4E6F0, 0x0000010

gUnk_08B4E700:: @ 08B4E700
	.incbin "baserom.gba", 0xB4E700, 0x0000018

gUnk_08B4E718:: @ 08B4E718
	.incbin "baserom.gba", 0xB4E718, 0x000001C

gUnk_08B4E734:: @ 08B4E734
	.incbin "baserom.gba", 0xB4E734, 0x0000020

gUnk_08B4E754:: @ 08B4E754
	.incbin "baserom.gba", 0xB4E754, 0x0000004

gUnk_08B4E758:: @ 08B4E758
	.incbin "baserom.gba", 0xB4E758, 0x0000004

gUnk_08B4E75C:: @ 08B4E75C
	.incbin "baserom.gba", 0xB4E75C, 0x000000C

gUnk_08B4E768:: @ 08B4E768
	.incbin "baserom.gba", 0xB4E768, 0x0000004

gUnk_08B4E76C:: @ 08B4E76C
	.incbin "baserom.gba", 0xB4E76C, 0x0000008

gUnk_08B4E774:: @ 08B4E774
	.incbin "baserom.gba", 0xB4E774, 0x0000008

gUnk_08B4E77C:: @ 08B4E77C
	.incbin "baserom.gba", 0xB4E77C, 0x000000C

gUnk_08B4E788:: @ 08B4E788
	.incbin "baserom.gba", 0xB4E788, 0x0000014

gUnk_08B4E79C:: @ 08B4E79C
	.incbin "baserom.gba", 0xB4E79C, 0x0000004

gUnk_08B4E7A0:: @ 08B4E7A0
	.incbin "baserom.gba", 0xB4E7A0, 0x0000004

gUnk_08B4E7A4:: @ 08B4E7A4
	.incbin "baserom.gba", 0xB4E7A4, 0x0000004

gUnk_08B4E7A8:: @ 08B4E7A8
	.incbin "baserom.gba", 0xB4E7A8, 0x000004C

gUnk_08B4E7F4:: @ 08B4E7F4
	.incbin "baserom.gba", 0xB4E7F4, 0x000001C

gUnk_08B4E810:: @ 08B4E810
	.incbin "baserom.gba", 0xB4E810, 0x000000C

gUnk_08B4E81C:: @ 08B4E81C
	.incbin "baserom.gba", 0xB4E81C, 0x0000010

gUnk_08B4E82C:: @ 08B4E82C
	.incbin "baserom.gba", 0xB4E82C, 0x0000004

gUnk_08B4E830:: @ 08B4E830
	.incbin "baserom.gba", 0xB4E830, 0x0000004

gUnk_08B4E834:: @ 08B4E834
	.incbin "baserom.gba", 0xB4E834, 0x0000004

gUnk_08B4E838:: @ 08B4E838
	.incbin "baserom.gba", 0xB4E838, 0x0000018

gUnk_08B4E850:: @ 08B4E850
	.incbin "baserom.gba", 0xB4E850, 0x0000014

gUnk_08B4E864:: @ 08B4E864
	.incbin "baserom.gba", 0xB4E864, 0x0000004

gUnk_08B4E868:: @ 08B4E868
	.incbin "baserom.gba", 0xB4E868, 0x0000004

gUnk_08B4E86C:: @ 08B4E86C
	.incbin "baserom.gba", 0xB4E86C, 0x0000010

gUnk_08B4E87C:: @ 08B4E87C
	.incbin "baserom.gba", 0xB4E87C, 0x0000014

gUnk_08B4E890:: @ 08B4E890
	.incbin "baserom.gba", 0xB4E890, 0x0000018

gUnk_08B4E8A8:: @ 08B4E8A8
	.incbin "baserom.gba", 0xB4E8A8, 0x000001C

gUnk_08B4E8C4:: @ 08B4E8C4
	.incbin "baserom.gba", 0xB4E8C4, 0x0000004

gUnk_08B4E8C8:: @ 08B4E8C8
	.incbin "baserom.gba", 0xB4E8C8, 0x0000004

gUnk_08B4E8CC:: @ 08B4E8CC
	.incbin "baserom.gba", 0xB4E8CC, 0x000000C

gUnk_08B4E8D8:: @ 08B4E8D8
	.incbin "baserom.gba", 0xB4E8D8, 0x0000004

gUnk_08B4E8DC:: @ 08B4E8DC
	.incbin "baserom.gba", 0xB4E8DC, 0x0000008

gUnk_08B4E8E4:: @ 08B4E8E4
	.incbin "baserom.gba", 0xB4E8E4, 0x0000008

gUnk_08B4E8EC:: @ 08B4E8EC
	.incbin "baserom.gba", 0xB4E8EC, 0x0000008

gUnk_08B4E8F4:: @ 08B4E8F4
	.incbin "baserom.gba", 0xB4E8F4, 0x0000010

gUnk_08B4E904:: @ 08B4E904
	.incbin "baserom.gba", 0xB4E904, 0x0000004

gUnk_08B4E908:: @ 08B4E908
	.incbin "baserom.gba", 0xB4E908, 0x0000004

gUnk_08B4E90C:: @ 08B4E90C
	.incbin "baserom.gba", 0xB4E90C, 0x0000004

gUnk_08B4E910:: @ 08B4E910
	.incbin "baserom.gba", 0xB4E910, 0x000004C

gUnk_08B4E95C:: @ 08B4E95C
	.incbin "baserom.gba", 0xB4E95C, 0x0000018

gUnk_08B4E974:: @ 08B4E974
	.incbin "baserom.gba", 0xB4E974, 0x000000C

gUnk_08B4E980:: @ 08B4E980
	.incbin "baserom.gba", 0xB4E980, 0x0000010

gUnk_08B4E990:: @ 08B4E990
	.incbin "baserom.gba", 0xB4E990, 0x0000004

gUnk_08B4E994:: @ 08B4E994
	.incbin "baserom.gba", 0xB4E994, 0x0000004

gUnk_08B4E998:: @ 08B4E998
	.incbin "baserom.gba", 0xB4E998, 0x0000004

gUnk_08B4E99C:: @ 08B4E99C
	.incbin "baserom.gba", 0xB4E99C, 0x0000014

gUnk_08B4E9B0:: @ 08B4E9B0
	.incbin "baserom.gba", 0xB4E9B0, 0x0000010

gUnk_08B4E9C0:: @ 08B4E9C0
	.incbin "baserom.gba", 0xB4E9C0, 0x0000004

gUnk_08B4E9C4:: @ 08B4E9C4
	.incbin "baserom.gba", 0xB4E9C4, 0x0000004

gUnk_08B4E9C8:: @ 08B4E9C8
	.incbin "baserom.gba", 0xB4E9C8, 0x000000C

gUnk_08B4E9D4:: @ 08B4E9D4
	.incbin "baserom.gba", 0xB4E9D4, 0x0000014

gUnk_08B4E9E8:: @ 08B4E9E8
	.incbin "baserom.gba", 0xB4E9E8, 0x0000018

gUnk_08B4EA00:: @ 08B4EA00
	.incbin "baserom.gba", 0xB4EA00, 0x000001C

gUnk_08B4EA1C:: @ 08B4EA1C
	.incbin "baserom.gba", 0xB4EA1C, 0x0000004

gUnk_08B4EA20:: @ 08B4EA20
	.incbin "baserom.gba", 0xB4EA20, 0x0000004

gUnk_08B4EA24:: @ 08B4EA24
	.incbin "baserom.gba", 0xB4EA24, 0x0000008

gUnk_08B4EA2C:: @ 08B4EA2C
	.incbin "baserom.gba", 0xB4EA2C, 0x0000004

gUnk_08B4EA30:: @ 08B4EA30
	.incbin "baserom.gba", 0xB4EA30, 0x000000C

gUnk_08B4EA3C:: @ 08B4EA3C
	.incbin "baserom.gba", 0xB4EA3C, 0x0000008

gUnk_08B4EA44:: @ 08B4EA44
	.incbin "baserom.gba", 0xB4EA44, 0x0000008

gUnk_08B4EA4C:: @ 08B4EA4C
	.incbin "baserom.gba", 0xB4EA4C, 0x0000010

gUnk_08B4EA5C:: @ 08B4EA5C
	.incbin "baserom.gba", 0xB4EA5C, 0x0000004

gUnk_08B4EA60:: @ 08B4EA60
	.incbin "baserom.gba", 0xB4EA60, 0x0000004

gUnk_08B4EA64:: @ 08B4EA64
	.incbin "baserom.gba", 0xB4EA64, 0x0000004

gUnk_08B4EA68:: @ 08B4EA68
	.incbin "baserom.gba", 0xB4EA68, 0x000004C

gUnk_08B4EAB4:: @ 08B4EAB4
	.incbin "baserom.gba", 0xB4EAB4, 0x0000004

gUnk_08B4EAB8:: @ 08B4EAB8
	.incbin "baserom.gba", 0xB4EAB8, 0x0000014

gUnk_08B4EACC:: @ 08B4EACC
	.incbin "baserom.gba", 0xB4EACC, 0x0000004

gUnk_08B4EAD0:: @ 08B4EAD0
	.incbin "baserom.gba", 0xB4EAD0, 0x0000004

gUnk_08B4EAD4:: @ 08B4EAD4
	.incbin "baserom.gba", 0xB4EAD4, 0x0000004

gUnk_08B4EAD8:: @ 08B4EAD8
	.incbin "baserom.gba", 0xB4EAD8, 0x0000014

gUnk_08B4EAEC:: @ 08B4EAEC
	.incbin "baserom.gba", 0xB4EAEC, 0x0000014

gUnk_08B4EB00:: @ 08B4EB00
	.incbin "baserom.gba", 0xB4EB00, 0x0000018

gUnk_08B4EB18:: @ 08B4EB18
	.incbin "baserom.gba", 0xB4EB18, 0x000001C

gUnk_08B4EB34:: @ 08B4EB34
	.incbin "baserom.gba", 0xB4EB34, 0x0000020

gUnk_08B4EB54:: @ 08B4EB54
	.incbin "baserom.gba", 0xB4EB54, 0x0000020

gUnk_08B4EB74:: @ 08B4EB74
	.incbin "baserom.gba", 0xB4EB74, 0x0000020

gUnk_08B4EB94:: @ 08B4EB94
	.incbin "baserom.gba", 0xB4EB94, 0x0000020

gUnk_08B4EBB4:: @ 08B4EBB4
	.incbin "baserom.gba", 0xB4EBB4, 0x000001C

gUnk_08B4EBD0:: @ 08B4EBD0
	.incbin "baserom.gba", 0xB4EBD0, 0x000001C

gUnk_08B4EBEC:: @ 08B4EBEC
	.incbin "baserom.gba", 0xB4EBEC, 0x0000018

gUnk_08B4EC04:: @ 08B4EC04
	.incbin "baserom.gba", 0xB4EC04, 0x0000018

gUnk_08B4EC1C:: @ 08B4EC1C
	.incbin "baserom.gba", 0xB4EC1C, 0x0000010

gUnk_08B4EC2C:: @ 08B4EC2C
	.incbin "baserom.gba", 0xB4EC2C, 0x000000C

gUnk_08B4EC38:: @ 08B4EC38
	.incbin "baserom.gba", 0xB4EC38, 0x0000018

gUnk_08B4EC50:: @ 08B4EC50
	.incbin "baserom.gba", 0xB4EC50, 0x000000C

gUnk_08B4EC5C:: @ 08B4EC5C
	.incbin "baserom.gba", 0xB4EC5C, 0x0000028

gUnk_08B4EC84:: @ 08B4EC84
	.incbin "baserom.gba", 0xB4EC84, 0x0000028

gUnk_08B4ECAC:: @ 08B4ECAC
	.incbin "baserom.gba", 0xB4ECAC, 0x0000024

gUnk_08B4ECD0:: @ 08B4ECD0
	.incbin "baserom.gba", 0xB4ECD0, 0x0000024

gUnk_08B4ECF4:: @ 08B4ECF4
	.incbin "baserom.gba", 0xB4ECF4, 0x0000028

gUnk_08B4ED1C:: @ 08B4ED1C
	.incbin "baserom.gba", 0xB4ED1C, 0x0000028

gUnk_08B4ED44:: @ 08B4ED44
	.incbin "baserom.gba", 0xB4ED44, 0x000001C

gUnk_08B4ED60:: @ 08B4ED60
	.incbin "baserom.gba", 0xB4ED60, 0x0000018

gUnk_08B4ED78:: @ 08B4ED78
	.incbin "baserom.gba", 0xB4ED78, 0x0000010

gUnk_08B4ED88:: @ 08B4ED88
	.incbin "baserom.gba", 0xB4ED88, 0x000001C

gUnk_08B4EDA4:: @ 08B4EDA4
	.incbin "baserom.gba", 0xB4EDA4, 0x000001C

gUnk_08B4EDC0:: @ 08B4EDC0
	.incbin "baserom.gba", 0xB4EDC0, 0x0000018

gUnk_08B4EDD8:: @ 08B4EDD8
	.incbin "baserom.gba", 0xB4EDD8, 0x0000020

gUnk_08B4EDF8:: @ 08B4EDF8
	.incbin "baserom.gba", 0xB4EDF8, 0x0000018

gUnk_08B4EE10:: @ 08B4EE10
	.incbin "baserom.gba", 0xB4EE10, 0x0000014

gUnk_08B4EE24:: @ 08B4EE24
	.incbin "baserom.gba", 0xB4EE24, 0x000000C

gUnk_08B4EE30:: @ 08B4EE30
	.incbin "baserom.gba", 0xB4EE30, 0x000000C

gUnk_08B4EE3C:: @ 08B4EE3C
	.incbin "baserom.gba", 0xB4EE3C, 0x0000008

gUnk_08B4EE44:: @ 08B4EE44
	.incbin "baserom.gba", 0xB4EE44, 0x000000C

gUnk_08B4EE50:: @ 08B4EE50
	.incbin "baserom.gba", 0xB4EE50, 0x0000008

gUnk_08B4EE58:: @ 08B4EE58
	.incbin "baserom.gba", 0xB4EE58, 0x0000008

gUnk_08B4EE60:: @ 08B4EE60
	.incbin "baserom.gba", 0xB4EE60, 0x0000008

gUnk_08B4EE68:: @ 08B4EE68
	.incbin "baserom.gba", 0xB4EE68, 0x0000018

gUnk_08B4EE80:: @ 08B4EE80
	.incbin "baserom.gba", 0xB4EE80, 0x0000018

gUnk_08B4EE98:: @ 08B4EE98
	.incbin "baserom.gba", 0xB4EE98, 0x000001C

gUnk_08B4EEB4:: @ 08B4EEB4
	.incbin "baserom.gba", 0xB4EEB4, 0x000001C

gUnk_08B4EED0:: @ 08B4EED0
	.incbin "baserom.gba", 0xB4EED0, 0x0000010

gUnk_08B4EEE0:: @ 08B4EEE0
	.incbin "baserom.gba", 0xB4EEE0, 0x0000014

gUnk_08B4EEF4:: @ 08B4EEF4
	.incbin "baserom.gba", 0xB4EEF4, 0x0000010

gUnk_08B4EF04:: @ 08B4EF04
	.incbin "baserom.gba", 0xB4EF04, 0x0000004

gUnk_08B4EF08:: @ 08B4EF08
	.incbin "baserom.gba", 0xB4EF08, 0x000004C

gUnk_08B4EF54:: @ 08B4EF54
	.incbin "baserom.gba", 0xB4EF54, 0x0000004

gUnk_08B4EF58:: @ 08B4EF58
	.incbin "baserom.gba", 0xB4EF58, 0x0000014

gUnk_08B4EF6C:: @ 08B4EF6C
	.incbin "baserom.gba", 0xB4EF6C, 0x0000004

gUnk_08B4EF70:: @ 08B4EF70
	.incbin "baserom.gba", 0xB4EF70, 0x0000004

gUnk_08B4EF74:: @ 08B4EF74
	.incbin "baserom.gba", 0xB4EF74, 0x0000004

gUnk_08B4EF78:: @ 08B4EF78
	.incbin "baserom.gba", 0xB4EF78, 0x0000010

gUnk_08B4EF88:: @ 08B4EF88
	.incbin "baserom.gba", 0xB4EF88, 0x0000014

gUnk_08B4EF9C:: @ 08B4EF9C
	.incbin "baserom.gba", 0xB4EF9C, 0x000001C

gUnk_08B4EFB8:: @ 08B4EFB8
	.incbin "baserom.gba", 0xB4EFB8, 0x0000020

gUnk_08B4EFD8:: @ 08B4EFD8
	.incbin "baserom.gba", 0xB4EFD8, 0x0000020

gUnk_08B4EFF8:: @ 08B4EFF8
	.incbin "baserom.gba", 0xB4EFF8, 0x0000020

gUnk_08B4F018:: @ 08B4F018
	.incbin "baserom.gba", 0xB4F018, 0x000001C

gUnk_08B4F034:: @ 08B4F034
	.incbin "baserom.gba", 0xB4F034, 0x000001C

gUnk_08B4F050:: @ 08B4F050
	.incbin "baserom.gba", 0xB4F050, 0x000001C

gUnk_08B4F06C:: @ 08B4F06C
	.incbin "baserom.gba", 0xB4F06C, 0x0000018

gUnk_08B4F084:: @ 08B4F084
	.incbin "baserom.gba", 0xB4F084, 0x0000018

gUnk_08B4F09C:: @ 08B4F09C
	.incbin "baserom.gba", 0xB4F09C, 0x0000018

gUnk_08B4F0B4:: @ 08B4F0B4
	.incbin "baserom.gba", 0xB4F0B4, 0x0000010

gUnk_08B4F0C4:: @ 08B4F0C4
	.incbin "baserom.gba", 0xB4F0C4, 0x0000008

gUnk_08B4F0CC:: @ 08B4F0CC
	.incbin "baserom.gba", 0xB4F0CC, 0x0000014

gUnk_08B4F0E0:: @ 08B4F0E0
	.incbin "baserom.gba", 0xB4F0E0, 0x000000C

gUnk_08B4F0EC:: @ 08B4F0EC
	.incbin "baserom.gba", 0xB4F0EC, 0x0000028

gUnk_08B4F114:: @ 08B4F114
	.incbin "baserom.gba", 0xB4F114, 0x0000024

gUnk_08B4F138:: @ 08B4F138
	.incbin "baserom.gba", 0xB4F138, 0x0000024

gUnk_08B4F15C:: @ 08B4F15C
	.incbin "baserom.gba", 0xB4F15C, 0x0000020

gUnk_08B4F17C:: @ 08B4F17C
	.incbin "baserom.gba", 0xB4F17C, 0x0000024

gUnk_08B4F1A0:: @ 08B4F1A0
	.incbin "baserom.gba", 0xB4F1A0, 0x0000028

gUnk_08B4F1C8:: @ 08B4F1C8
	.incbin "baserom.gba", 0xB4F1C8, 0x000001C

gUnk_08B4F1E4:: @ 08B4F1E4
	.incbin "baserom.gba", 0xB4F1E4, 0x000001C

gUnk_08B4F200:: @ 08B4F200
	.incbin "baserom.gba", 0xB4F200, 0x000000C

gUnk_08B4F20C:: @ 08B4F20C
	.incbin "baserom.gba", 0xB4F20C, 0x000001C

gUnk_08B4F228:: @ 08B4F228
	.incbin "baserom.gba", 0xB4F228, 0x000001C

gUnk_08B4F244:: @ 08B4F244
	.incbin "baserom.gba", 0xB4F244, 0x0000014

gUnk_08B4F258:: @ 08B4F258
	.incbin "baserom.gba", 0xB4F258, 0x0000020

gUnk_08B4F278:: @ 08B4F278
	.incbin "baserom.gba", 0xB4F278, 0x0000018

gUnk_08B4F290:: @ 08B4F290
	.incbin "baserom.gba", 0xB4F290, 0x0000018

gUnk_08B4F2A8:: @ 08B4F2A8
	.incbin "baserom.gba", 0xB4F2A8, 0x0000010

gUnk_08B4F2B8:: @ 08B4F2B8
	.incbin "baserom.gba", 0xB4F2B8, 0x000000C

gUnk_08B4F2C4:: @ 08B4F2C4
	.incbin "baserom.gba", 0xB4F2C4, 0x000000C

gUnk_08B4F2D0:: @ 08B4F2D0
	.incbin "baserom.gba", 0xB4F2D0, 0x000000C

gUnk_08B4F2DC:: @ 08B4F2DC
	.incbin "baserom.gba", 0xB4F2DC, 0x000000C

gUnk_08B4F2E8:: @ 08B4F2E8
	.incbin "baserom.gba", 0xB4F2E8, 0x0000008

gUnk_08B4F2F0:: @ 08B4F2F0
	.incbin "baserom.gba", 0xB4F2F0, 0x0000008

gUnk_08B4F2F8:: @ 08B4F2F8
	.incbin "baserom.gba", 0xB4F2F8, 0x0000014

gUnk_08B4F30C:: @ 08B4F30C
	.incbin "baserom.gba", 0xB4F30C, 0x0000018

gUnk_08B4F324:: @ 08B4F324
	.incbin "baserom.gba", 0xB4F324, 0x0000018

gUnk_08B4F33C:: @ 08B4F33C
	.incbin "baserom.gba", 0xB4F33C, 0x000001C

gUnk_08B4F358:: @ 08B4F358
	.incbin "baserom.gba", 0xB4F358, 0x0000014

gUnk_08B4F36C:: @ 08B4F36C
	.incbin "baserom.gba", 0xB4F36C, 0x0000014

gUnk_08B4F380:: @ 08B4F380
	.incbin "baserom.gba", 0xB4F380, 0x0000010

gUnk_08B4F390:: @ 08B4F390
	.incbin "baserom.gba", 0xB4F390, 0x0000004

gUnk_08B4F394:: @ 08B4F394
	.incbin "baserom.gba", 0xB4F394, 0x000004C

gUnk_08B4F3E0:: @ 08B4F3E0
	.incbin "baserom.gba", 0xB4F3E0, 0x0000004

gUnk_08B4F3E4:: @ 08B4F3E4
	.incbin "baserom.gba", 0xB4F3E4, 0x0000004

gUnk_08B4F3E8:: @ 08B4F3E8
	.incbin "baserom.gba", 0xB4F3E8, 0x0000004

gUnk_08B4F3EC:: @ 08B4F3EC
	.incbin "baserom.gba", 0xB4F3EC, 0x0000004

gUnk_08B4F3F0:: @ 08B4F3F0
	.incbin "baserom.gba", 0xB4F3F0, 0x0000004

gUnk_08B4F3F4:: @ 08B4F3F4
	.incbin "baserom.gba", 0xB4F3F4, 0x0000004

gUnk_08B4F3F8:: @ 08B4F3F8
	.incbin "baserom.gba", 0xB4F3F8, 0x0000004

gUnk_08B4F3FC:: @ 08B4F3FC
	.incbin "baserom.gba", 0xB4F3FC, 0x0000004

gUnk_08B4F400:: @ 08B4F400
	.incbin "baserom.gba", 0xB4F400, 0x0000004

gUnk_08B4F404:: @ 08B4F404
	.incbin "baserom.gba", 0xB4F404, 0x0000004

gUnk_08B4F408:: @ 08B4F408
	.incbin "baserom.gba", 0xB4F408, 0x0000004

gUnk_08B4F40C:: @ 08B4F40C
	.incbin "baserom.gba", 0xB4F40C, 0x0000004

gUnk_08B4F410:: @ 08B4F410
	.incbin "baserom.gba", 0xB4F410, 0x0000004

gUnk_08B4F414:: @ 08B4F414
	.incbin "baserom.gba", 0xB4F414, 0x0000004

gUnk_08B4F418:: @ 08B4F418
	.incbin "baserom.gba", 0xB4F418, 0x0000004

gUnk_08B4F41C:: @ 08B4F41C
	.incbin "baserom.gba", 0xB4F41C, 0x0000004

gUnk_08B4F420:: @ 08B4F420
	.incbin "baserom.gba", 0xB4F420, 0x0000004

gUnk_08B4F424:: @ 08B4F424
	.incbin "baserom.gba", 0xB4F424, 0x0000004

gUnk_08B4F428:: @ 08B4F428
	.incbin "baserom.gba", 0xB4F428, 0x0000004

gUnk_08B4F42C:: @ 08B4F42C
	.incbin "baserom.gba", 0xB4F42C, 0x0000004

gUnk_08B4F430:: @ 08B4F430
	.incbin "baserom.gba", 0xB4F430, 0x0000004

gUnk_08B4F434:: @ 08B4F434
	.incbin "baserom.gba", 0xB4F434, 0x0000008

gUnk_08B4F43C:: @ 08B4F43C
	.incbin "baserom.gba", 0xB4F43C, 0x0000004

gUnk_08B4F440:: @ 08B4F440
	.incbin "baserom.gba", 0xB4F440, 0x0000004

gUnk_08B4F444:: @ 08B4F444
	.incbin "baserom.gba", 0xB4F444, 0x0000004

gUnk_08B4F448:: @ 08B4F448
	.incbin "baserom.gba", 0xB4F448, 0x000004C

gUnk_08B4F494:: @ 08B4F494
	.incbin "baserom.gba", 0xB4F494, 0x0000018

gUnk_08B4F4AC:: @ 08B4F4AC
	.incbin "baserom.gba", 0xB4F4AC, 0x0000004

gUnk_08B4F4B0:: @ 08B4F4B0
	.incbin "baserom.gba", 0xB4F4B0, 0x000000C

gUnk_08B4F4BC:: @ 08B4F4BC
	.incbin "baserom.gba", 0xB4F4BC, 0x0000004

gUnk_08B4F4C0:: @ 08B4F4C0
	.incbin "baserom.gba", 0xB4F4C0, 0x0000004

gUnk_08B4F4C4:: @ 08B4F4C4
	.incbin "baserom.gba", 0xB4F4C4, 0x0000004

gUnk_08B4F4C8:: @ 08B4F4C8
	.incbin "baserom.gba", 0xB4F4C8, 0x0000014

gUnk_08B4F4DC:: @ 08B4F4DC
	.incbin "baserom.gba", 0xB4F4DC, 0x0000010

gUnk_08B4F4EC:: @ 08B4F4EC
	.incbin "baserom.gba", 0xB4F4EC, 0x0000004

gUnk_08B4F4F0:: @ 08B4F4F0
	.incbin "baserom.gba", 0xB4F4F0, 0x0000004

gUnk_08B4F4F4:: @ 08B4F4F4
	.incbin "baserom.gba", 0xB4F4F4, 0x000000C

gUnk_08B4F500:: @ 08B4F500
	.incbin "baserom.gba", 0xB4F500, 0x0000010

gUnk_08B4F510:: @ 08B4F510
	.incbin "baserom.gba", 0xB4F510, 0x0000014

gUnk_08B4F524:: @ 08B4F524
	.incbin "baserom.gba", 0xB4F524, 0x0000018

gUnk_08B4F53C:: @ 08B4F53C
	.incbin "baserom.gba", 0xB4F53C, 0x0000004

gUnk_08B4F540:: @ 08B4F540
	.incbin "baserom.gba", 0xB4F540, 0x0000004

gUnk_08B4F544:: @ 08B4F544
	.incbin "baserom.gba", 0xB4F544, 0x0000004

gUnk_08B4F548:: @ 08B4F548
	.incbin "baserom.gba", 0xB4F548, 0x0000004

gUnk_08B4F54C:: @ 08B4F54C
	.incbin "baserom.gba", 0xB4F54C, 0x0000004

gUnk_08B4F550:: @ 08B4F550
	.incbin "baserom.gba", 0xB4F550, 0x0000004

gUnk_08B4F554:: @ 08B4F554
	.incbin "baserom.gba", 0xB4F554, 0x0000004

gUnk_08B4F558:: @ 08B4F558
	.incbin "baserom.gba", 0xB4F558, 0x000000C

gUnk_08B4F564:: @ 08B4F564
	.incbin "baserom.gba", 0xB4F564, 0x0000008

gUnk_08B4F56C:: @ 08B4F56C
	.incbin "baserom.gba", 0xB4F56C, 0x0000008

gUnk_08B4F574:: @ 08B4F574
	.incbin "baserom.gba", 0xB4F574, 0x000000C

gUnk_08B4F580:: @ 08B4F580
	.incbin "baserom.gba", 0xB4F580, 0x000004C

gUnk_08B4F5CC:: @ 08B4F5CC
	.incbin "baserom.gba", 0xB4F5CC, 0x0000014

gUnk_08B4F5E0:: @ 08B4F5E0
	.incbin "baserom.gba", 0xB4F5E0, 0x0000004

gUnk_08B4F5E4:: @ 08B4F5E4
	.incbin "baserom.gba", 0xB4F5E4, 0x000000C

gUnk_08B4F5F0:: @ 08B4F5F0
	.incbin "baserom.gba", 0xB4F5F0, 0x0000004

gUnk_08B4F5F4:: @ 08B4F5F4
	.incbin "baserom.gba", 0xB4F5F4, 0x0000004

gUnk_08B4F5F8:: @ 08B4F5F8
	.incbin "baserom.gba", 0xB4F5F8, 0x0000004

gUnk_08B4F5FC:: @ 08B4F5FC
	.incbin "baserom.gba", 0xB4F5FC, 0x0000010

gUnk_08B4F60C:: @ 08B4F60C
	.incbin "baserom.gba", 0xB4F60C, 0x000000C

gUnk_08B4F618:: @ 08B4F618
	.incbin "baserom.gba", 0xB4F618, 0x0000004

gUnk_08B4F61C:: @ 08B4F61C
	.incbin "baserom.gba", 0xB4F61C, 0x0000004

gUnk_08B4F620:: @ 08B4F620
	.incbin "baserom.gba", 0xB4F620, 0x0000008

gUnk_08B4F628:: @ 08B4F628
	.incbin "baserom.gba", 0xB4F628, 0x0000010

gUnk_08B4F638:: @ 08B4F638
	.incbin "baserom.gba", 0xB4F638, 0x0000014

gUnk_08B4F64C:: @ 08B4F64C
	.incbin "baserom.gba", 0xB4F64C, 0x0000018

gUnk_08B4F664:: @ 08B4F664
	.incbin "baserom.gba", 0xB4F664, 0x0000004

gUnk_08B4F668:: @ 08B4F668
	.incbin "baserom.gba", 0xB4F668, 0x0000004

gUnk_08B4F66C:: @ 08B4F66C
	.incbin "baserom.gba", 0xB4F66C, 0x0000004

gUnk_08B4F670:: @ 08B4F670
	.incbin "baserom.gba", 0xB4F670, 0x0000004

gUnk_08B4F674:: @ 08B4F674
	.incbin "baserom.gba", 0xB4F674, 0x0000004

gUnk_08B4F678:: @ 08B4F678
	.incbin "baserom.gba", 0xB4F678, 0x0000004

gUnk_08B4F67C:: @ 08B4F67C
	.incbin "baserom.gba", 0xB4F67C, 0x0000004

gUnk_08B4F680:: @ 08B4F680
	.incbin "baserom.gba", 0xB4F680, 0x000000C

gUnk_08B4F68C:: @ 08B4F68C
	.incbin "baserom.gba", 0xB4F68C, 0x0000004

gUnk_08B4F690:: @ 08B4F690
	.incbin "baserom.gba", 0xB4F690, 0x0000008

gUnk_08B4F698:: @ 08B4F698
	.incbin "baserom.gba", 0xB4F698, 0x0000008

gUnk_08B4F6A0:: @ 08B4F6A0
	.incbin "baserom.gba", 0xB4F6A0, 0x000004C

gUnk_08B4F6EC:: @ 08B4F6EC
	.incbin "baserom.gba", 0xB4F6EC, 0x0000004

gUnk_08B4F6F0:: @ 08B4F6F0
	.incbin "baserom.gba", 0xB4F6F0, 0x0000004

gUnk_08B4F6F4:: @ 08B4F6F4
	.incbin "baserom.gba", 0xB4F6F4, 0x0000004

gUnk_08B4F6F8:: @ 08B4F6F8
	.incbin "baserom.gba", 0xB4F6F8, 0x0000004

gUnk_08B4F6FC:: @ 08B4F6FC
	.incbin "baserom.gba", 0xB4F6FC, 0x0000004

gUnk_08B4F700:: @ 08B4F700
	.incbin "baserom.gba", 0xB4F700, 0x0000004

gUnk_08B4F704:: @ 08B4F704
	.incbin "baserom.gba", 0xB4F704, 0x0000004

gUnk_08B4F708:: @ 08B4F708
	.incbin "baserom.gba", 0xB4F708, 0x0000004

gUnk_08B4F70C:: @ 08B4F70C
	.incbin "baserom.gba", 0xB4F70C, 0x0000004

gUnk_08B4F710:: @ 08B4F710
	.incbin "baserom.gba", 0xB4F710, 0x0000004

gUnk_08B4F714:: @ 08B4F714
	.incbin "baserom.gba", 0xB4F714, 0x0000004

gUnk_08B4F718:: @ 08B4F718
	.incbin "baserom.gba", 0xB4F718, 0x0000004

gUnk_08B4F71C:: @ 08B4F71C
	.incbin "baserom.gba", 0xB4F71C, 0x0000004

gUnk_08B4F720:: @ 08B4F720
	.incbin "baserom.gba", 0xB4F720, 0x0000004

gUnk_08B4F724:: @ 08B4F724
	.incbin "baserom.gba", 0xB4F724, 0x0000004

gUnk_08B4F728:: @ 08B4F728
	.incbin "baserom.gba", 0xB4F728, 0x0000004

gUnk_08B4F72C:: @ 08B4F72C
	.incbin "baserom.gba", 0xB4F72C, 0x0000004

gUnk_08B4F730:: @ 08B4F730
	.incbin "baserom.gba", 0xB4F730, 0x0000004

gUnk_08B4F734:: @ 08B4F734
	.incbin "baserom.gba", 0xB4F734, 0x0000004

gUnk_08B4F738:: @ 08B4F738
	.incbin "baserom.gba", 0xB4F738, 0x0000004

gUnk_08B4F73C:: @ 08B4F73C
	.incbin "baserom.gba", 0xB4F73C, 0x0000004

gUnk_08B4F740:: @ 08B4F740
	.incbin "baserom.gba", 0xB4F740, 0x0000004

gUnk_08B4F744:: @ 08B4F744
	.incbin "baserom.gba", 0xB4F744, 0x0000004

gUnk_08B4F748:: @ 08B4F748
	.incbin "baserom.gba", 0xB4F748, 0x0000004

gUnk_08B4F74C:: @ 08B4F74C
	.incbin "baserom.gba", 0xB4F74C, 0x0000008

gUnk_08B4F754:: @ 08B4F754
	.incbin "baserom.gba", 0xB4F754, 0x000004C

gUnk_08B4F7A0:: @ 08B4F7A0
	.incbin "baserom.gba", 0xB4F7A0, 0x0000004

gUnk_08B4F7A4:: @ 08B4F7A4
	.incbin "baserom.gba", 0xB4F7A4, 0x0000004

gUnk_08B4F7A8:: @ 08B4F7A8
	.incbin "baserom.gba", 0xB4F7A8, 0x0000004

gUnk_08B4F7AC:: @ 08B4F7AC
	.incbin "baserom.gba", 0xB4F7AC, 0x000001C

gUnk_08B4F7C8:: @ 08B4F7C8
	.incbin "baserom.gba", 0xB4F7C8, 0x0000020

gUnk_08B4F7E8:: @ 08B4F7E8
	.incbin "baserom.gba", 0xB4F7E8, 0x0000020

gUnk_08B4F808:: @ 08B4F808
	.incbin "baserom.gba", 0xB4F808, 0x0000008

gUnk_08B4F810:: @ 08B4F810
	.incbin "baserom.gba", 0xB4F810, 0x000000C

gUnk_08B4F81C:: @ 08B4F81C
	.incbin "baserom.gba", 0xB4F81C, 0x0000010

gUnk_08B4F82C:: @ 08B4F82C
	.incbin "baserom.gba", 0xB4F82C, 0x0000018

gUnk_08B4F844:: @ 08B4F844
	.incbin "baserom.gba", 0xB4F844, 0x0000018

gUnk_08B4F85C:: @ 08B4F85C
	.incbin "baserom.gba", 0xB4F85C, 0x0000014

gUnk_08B4F870:: @ 08B4F870
	.incbin "baserom.gba", 0xB4F870, 0x0000010

gUnk_08B4F880:: @ 08B4F880
	.incbin "baserom.gba", 0xB4F880, 0x0000008

gUnk_08B4F888:: @ 08B4F888
	.incbin "baserom.gba", 0xB4F888, 0x0000004

gUnk_08B4F88C:: @ 08B4F88C
	.incbin "baserom.gba", 0xB4F88C, 0x0000004

gUnk_08B4F890:: @ 08B4F890
	.incbin "baserom.gba", 0xB4F890, 0x0000010

gUnk_08B4F8A0:: @ 08B4F8A0
	.incbin "baserom.gba", 0xB4F8A0, 0x0000014

gUnk_08B4F8B4:: @ 08B4F8B4
	.incbin "baserom.gba", 0xB4F8B4, 0x0000018

gUnk_08B4F8CC:: @ 08B4F8CC
	.incbin "baserom.gba", 0xB4F8CC, 0x0000010

gUnk_08B4F8DC:: @ 08B4F8DC
	.incbin "baserom.gba", 0xB4F8DC, 0x0000014

gUnk_08B4F8F0:: @ 08B4F8F0
	.incbin "baserom.gba", 0xB4F8F0, 0x0000004

gUnk_08B4F8F4:: @ 08B4F8F4
	.incbin "baserom.gba", 0xB4F8F4, 0x000001C

gUnk_08B4F910:: @ 08B4F910
	.incbin "baserom.gba", 0xB4F910, 0x0000018

gUnk_08B4F928:: @ 08B4F928
	.incbin "baserom.gba", 0xB4F928, 0x0000010

gUnk_08B4F938:: @ 08B4F938
	.incbin "baserom.gba", 0xB4F938, 0x0000014

gUnk_08B4F94C:: @ 08B4F94C
	.incbin "baserom.gba", 0xB4F94C, 0x0000010

gUnk_08B4F95C:: @ 08B4F95C
	.incbin "baserom.gba", 0xB4F95C, 0x000000C

gUnk_08B4F968:: @ 08B4F968
	.incbin "baserom.gba", 0xB4F968, 0x0000014

gUnk_08B4F97C:: @ 08B4F97C
	.incbin "baserom.gba", 0xB4F97C, 0x000004C

gUnk_08B4F9C8:: @ 08B4F9C8
	.incbin "baserom.gba", 0xB4F9C8, 0x0000004

gUnk_08B4F9CC:: @ 08B4F9CC
	.incbin "baserom.gba", 0xB4F9CC, 0x0000004

gUnk_08B4F9D0:: @ 08B4F9D0
	.incbin "baserom.gba", 0xB4F9D0, 0x0000004

gUnk_08B4F9D4:: @ 08B4F9D4
	.incbin "baserom.gba", 0xB4F9D4, 0x0000018

gUnk_08B4F9EC:: @ 08B4F9EC
	.incbin "baserom.gba", 0xB4F9EC, 0x000001C

gUnk_08B4FA08:: @ 08B4FA08
	.incbin "baserom.gba", 0xB4FA08, 0x000001C

gUnk_08B4FA24:: @ 08B4FA24
	.incbin "baserom.gba", 0xB4FA24, 0x0000010

gUnk_08B4FA34:: @ 08B4FA34
	.incbin "baserom.gba", 0xB4FA34, 0x0000008

gUnk_08B4FA3C:: @ 08B4FA3C
	.incbin "baserom.gba", 0xB4FA3C, 0x000000C

gUnk_08B4FA48:: @ 08B4FA48
	.incbin "baserom.gba", 0xB4FA48, 0x0000014

gUnk_08B4FA5C:: @ 08B4FA5C
	.incbin "baserom.gba", 0xB4FA5C, 0x0000014

gUnk_08B4FA70:: @ 08B4FA70
	.incbin "baserom.gba", 0xB4FA70, 0x0000010

gUnk_08B4FA80:: @ 08B4FA80
	.incbin "baserom.gba", 0xB4FA80, 0x000000C

gUnk_08B4FA8C:: @ 08B4FA8C
	.incbin "baserom.gba", 0xB4FA8C, 0x0000014

gUnk_08B4FAA0:: @ 08B4FAA0
	.incbin "baserom.gba", 0xB4FAA0, 0x0000004

gUnk_08B4FAA4:: @ 08B4FAA4
	.incbin "baserom.gba", 0xB4FAA4, 0x0000004

gUnk_08B4FAA8:: @ 08B4FAA8
	.incbin "baserom.gba", 0xB4FAA8, 0x000000C

gUnk_08B4FAB4:: @ 08B4FAB4
	.incbin "baserom.gba", 0xB4FAB4, 0x0000010

gUnk_08B4FAC4:: @ 08B4FAC4
	.incbin "baserom.gba", 0xB4FAC4, 0x0000014

gUnk_08B4FAD8:: @ 08B4FAD8
	.incbin "baserom.gba", 0xB4FAD8, 0x000000C

gUnk_08B4FAE4:: @ 08B4FAE4
	.incbin "baserom.gba", 0xB4FAE4, 0x0000010

gUnk_08B4FAF4:: @ 08B4FAF4
	.incbin "baserom.gba", 0xB4FAF4, 0x0000004

gUnk_08B4FAF8:: @ 08B4FAF8
	.incbin "baserom.gba", 0xB4FAF8, 0x0000018

gUnk_08B4FB10:: @ 08B4FB10
	.incbin "baserom.gba", 0xB4FB10, 0x0000014

gUnk_08B4FB24:: @ 08B4FB24
	.incbin "baserom.gba", 0xB4FB24, 0x000000C

gUnk_08B4FB30:: @ 08B4FB30
	.incbin "baserom.gba", 0xB4FB30, 0x0000010

gUnk_08B4FB40:: @ 08B4FB40
	.incbin "baserom.gba", 0xB4FB40, 0x000000C

gUnk_08B4FB4C:: @ 08B4FB4C
	.incbin "baserom.gba", 0xB4FB4C, 0x0000008

gUnk_08B4FB54:: @ 08B4FB54
	.incbin "baserom.gba", 0xB4FB54, 0x0000010

gUnk_08B4FB64:: @ 08B4FB64
	.incbin "baserom.gba", 0xB4FB64, 0x000004C

gUnk_08B4FBB0:: @ 08B4FBB0
	.incbin "baserom.gba", 0xB4FBB0, 0x0000004

gUnk_08B4FBB4:: @ 08B4FBB4
	.incbin "baserom.gba", 0xB4FBB4, 0x000000C

gUnk_08B4FBC0:: @ 08B4FBC0
	.incbin "baserom.gba", 0xB4FBC0, 0x0000004

gUnk_08B4FBC4:: @ 08B4FBC4
	.incbin "baserom.gba", 0xB4FBC4, 0x0000004

gUnk_08B4FBC8:: @ 08B4FBC8
	.incbin "baserom.gba", 0xB4FBC8, 0x0000004

gUnk_08B4FBCC:: @ 08B4FBCC
	.incbin "baserom.gba", 0xB4FBCC, 0x000000C

gUnk_08B4FBD8:: @ 08B4FBD8
	.incbin "baserom.gba", 0xB4FBD8, 0x0000008

gUnk_08B4FBE0:: @ 08B4FBE0
	.incbin "baserom.gba", 0xB4FBE0, 0x000001C

gUnk_08B4FBFC:: @ 08B4FBFC
	.incbin "baserom.gba", 0xB4FBFC, 0x000001C

gUnk_08B4FC18:: @ 08B4FC18
	.incbin "baserom.gba", 0xB4FC18, 0x0000018

gUnk_08B4FC30:: @ 08B4FC30
	.incbin "baserom.gba", 0xB4FC30, 0x0000018

gUnk_08B4FC48:: @ 08B4FC48
	.incbin "baserom.gba", 0xB4FC48, 0x0000014

gUnk_08B4FC5C:: @ 08B4FC5C
	.incbin "baserom.gba", 0xB4FC5C, 0x0000014

gUnk_08B4FC70:: @ 08B4FC70
	.incbin "baserom.gba", 0xB4FC70, 0x0000010

gUnk_08B4FC80:: @ 08B4FC80
	.incbin "baserom.gba", 0xB4FC80, 0x0000010

gUnk_08B4FC90:: @ 08B4FC90
	.incbin "baserom.gba", 0xB4FC90, 0x000001C

gUnk_08B4FCAC:: @ 08B4FCAC
	.incbin "baserom.gba", 0xB4FCAC, 0x000001C

gUnk_08B4FCC8:: @ 08B4FCC8
	.incbin "baserom.gba", 0xB4FCC8, 0x000000C

gUnk_08B4FCD4:: @ 08B4FCD4
	.incbin "baserom.gba", 0xB4FCD4, 0x0000014

gUnk_08B4FCE8:: @ 08B4FCE8
	.incbin "baserom.gba", 0xB4FCE8, 0x0000010

gUnk_08B4FCF8:: @ 08B4FCF8
	.incbin "baserom.gba", 0xB4FCF8, 0x0000010

gUnk_08B4FD08:: @ 08B4FD08
	.incbin "baserom.gba", 0xB4FD08, 0x000001C

gUnk_08B4FD24:: @ 08B4FD24
	.incbin "baserom.gba", 0xB4FD24, 0x000001C

gUnk_08B4FD40:: @ 08B4FD40
	.incbin "baserom.gba", 0xB4FD40, 0x0000018

gUnk_08B4FD58:: @ 08B4FD58
	.incbin "baserom.gba", 0xB4FD58, 0x0000018

gUnk_08B4FD70:: @ 08B4FD70
	.incbin "baserom.gba", 0xB4FD70, 0x000001C

gUnk_08B4FD8C:: @ 08B4FD8C
	.incbin "baserom.gba", 0xB4FD8C, 0x000001C

gUnk_08B4FDA8:: @ 08B4FDA8
	.incbin "baserom.gba", 0xB4FDA8, 0x0000020

gUnk_08B4FDC8:: @ 08B4FDC8
	.incbin "baserom.gba", 0xB4FDC8, 0x000001C

gUnk_08B4FDE4:: @ 08B4FDE4
	.incbin "baserom.gba", 0xB4FDE4, 0x0000010

gUnk_08B4FDF4:: @ 08B4FDF4
	.incbin "baserom.gba", 0xB4FDF4, 0x000001C

gUnk_08B4FE10:: @ 08B4FE10
	.incbin "baserom.gba", 0xB4FE10, 0x0000010

gUnk_08B4FE20:: @ 08B4FE20
	.incbin "baserom.gba", 0xB4FE20, 0x000000C

gUnk_08B4FE2C:: @ 08B4FE2C
	.incbin "baserom.gba", 0xB4FE2C, 0x0000014

gUnk_08B4FE40:: @ 08B4FE40
	.incbin "baserom.gba", 0xB4FE40, 0x000000C

gUnk_08B4FE4C:: @ 08B4FE4C
	.incbin "baserom.gba", 0xB4FE4C, 0x0000018

gUnk_08B4FE64:: @ 08B4FE64
	.incbin "baserom.gba", 0xB4FE64, 0x0000018

gUnk_08B4FE7C:: @ 08B4FE7C
	.incbin "baserom.gba", 0xB4FE7C, 0x000001C

gUnk_08B4FE98:: @ 08B4FE98
	.incbin "baserom.gba", 0xB4FE98, 0x0000018

gUnk_08B4FEB0:: @ 08B4FEB0
	.incbin "baserom.gba", 0xB4FEB0, 0x000001C

gUnk_08B4FECC:: @ 08B4FECC
	.incbin "baserom.gba", 0xB4FECC, 0x0000018

gUnk_08B4FEE4:: @ 08B4FEE4
	.incbin "baserom.gba", 0xB4FEE4, 0x0000018

gUnk_08B4FEFC:: @ 08B4FEFC
	.incbin "baserom.gba", 0xB4FEFC, 0x0000014

gUnk_08B4FF10:: @ 08B4FF10
	.incbin "baserom.gba", 0xB4FF10, 0x0000008

gUnk_08B4FF18:: @ 08B4FF18
	.incbin "baserom.gba", 0xB4FF18, 0x0000008

gUnk_08B4FF20:: @ 08B4FF20
	.incbin "baserom.gba", 0xB4FF20, 0x000000C

gUnk_08B4FF2C:: @ 08B4FF2C
	.incbin "baserom.gba", 0xB4FF2C, 0x000000C

gUnk_08B4FF38:: @ 08B4FF38
	.incbin "baserom.gba", 0xB4FF38, 0x0000014

gUnk_08B4FF4C:: @ 08B4FF4C
	.incbin "baserom.gba", 0xB4FF4C, 0x0000018

gUnk_08B4FF64:: @ 08B4FF64
	.incbin "baserom.gba", 0xB4FF64, 0x0000018

gUnk_08B4FF7C:: @ 08B4FF7C
	.incbin "baserom.gba", 0xB4FF7C, 0x0000004

gUnk_08B4FF80:: @ 08B4FF80
	.incbin "baserom.gba", 0xB4FF80, 0x000004C

gUnk_08B4FFCC:: @ 08B4FFCC
	.incbin "baserom.gba", 0xB4FFCC, 0x0000004

gUnk_08B4FFD0:: @ 08B4FFD0
	.incbin "baserom.gba", 0xB4FFD0, 0x0000004

gUnk_08B4FFD4:: @ 08B4FFD4
	.incbin "baserom.gba", 0xB4FFD4, 0x0000004

gUnk_08B4FFD8:: @ 08B4FFD8
	.incbin "baserom.gba", 0xB4FFD8, 0x0000004

gUnk_08B4FFDC:: @ 08B4FFDC
	.incbin "baserom.gba", 0xB4FFDC, 0x0000004

gUnk_08B4FFE0:: @ 08B4FFE0
	.incbin "baserom.gba", 0xB4FFE0, 0x0000004

gUnk_08B4FFE4:: @ 08B4FFE4
	.incbin "baserom.gba", 0xB4FFE4, 0x0000004

gUnk_08B4FFE8:: @ 08B4FFE8
	.incbin "baserom.gba", 0xB4FFE8, 0x0000004

gUnk_08B4FFEC:: @ 08B4FFEC
	.incbin "baserom.gba", 0xB4FFEC, 0x0000004

gUnk_08B4FFF0:: @ 08B4FFF0
	.incbin "baserom.gba", 0xB4FFF0, 0x0000004

gUnk_08B4FFF4:: @ 08B4FFF4
	.incbin "baserom.gba", 0xB4FFF4, 0x0000004

gUnk_08B4FFF8:: @ 08B4FFF8
	.incbin "baserom.gba", 0xB4FFF8, 0x0000004

gUnk_08B4FFFC:: @ 08B4FFFC
	.incbin "baserom.gba", 0xB4FFFC, 0x0000003

gUnk_08B4FFFF:: @ 08B4FFFF
	.incbin "baserom.gba", 0xB4FFFF, 0x0000001

gUnk_08B50000:: @ 08B50000
	.incbin "baserom.gba", 0xB50000, 0x0000004

gUnk_08B50004:: @ 08B50004
	.incbin "baserom.gba", 0xB50004, 0x0000004

gUnk_08B50008:: @ 08B50008
	.incbin "baserom.gba", 0xB50008, 0x0000004

gUnk_08B5000C:: @ 08B5000C
	.incbin "baserom.gba", 0xB5000C, 0x0000004

gUnk_08B50010:: @ 08B50010
	.incbin "baserom.gba", 0xB50010, 0x0000004

gUnk_08B50014:: @ 08B50014
	.incbin "baserom.gba", 0xB50014, 0x0000004

gUnk_08B50018:: @ 08B50018
	.incbin "baserom.gba", 0xB50018, 0x0000004

gUnk_08B5001C:: @ 08B5001C
	.incbin "baserom.gba", 0xB5001C, 0x0000004

gUnk_08B50020:: @ 08B50020
	.incbin "baserom.gba", 0xB50020, 0x0000004

gUnk_08B50024:: @ 08B50024
	.incbin "baserom.gba", 0xB50024, 0x0000004

gUnk_08B50028:: @ 08B50028
	.incbin "baserom.gba", 0xB50028, 0x0000004

gUnk_08B5002C:: @ 08B5002C
	.incbin "baserom.gba", 0xB5002C, 0x0000004

gUnk_08B50030:: @ 08B50030
	.incbin "baserom.gba", 0xB50030, 0x0000004

gUnk_08B50034:: @ 08B50034
	.incbin "baserom.gba", 0xB50034, 0x0000004

gUnk_08B50038:: @ 08B50038
	.incbin "baserom.gba", 0xB50038, 0x0000004

gUnk_08B5003C:: @ 08B5003C
	.incbin "baserom.gba", 0xB5003C, 0x0000004

gUnk_08B50040:: @ 08B50040
	.incbin "baserom.gba", 0xB50040, 0x0000004

gUnk_08B50044:: @ 08B50044
	.incbin "baserom.gba", 0xB50044, 0x0000004

gUnk_08B50048:: @ 08B50048
	.incbin "baserom.gba", 0xB50048, 0x0000004

gUnk_08B5004C:: @ 08B5004C
	.incbin "baserom.gba", 0xB5004C, 0x0000004

gUnk_08B50050:: @ 08B50050
	.incbin "baserom.gba", 0xB50050, 0x0000004

gUnk_08B50054:: @ 08B50054
	.incbin "baserom.gba", 0xB50054, 0x0000004

gUnk_08B50058:: @ 08B50058
	.incbin "baserom.gba", 0xB50058, 0x0000004

gUnk_08B5005C:: @ 08B5005C
	.incbin "baserom.gba", 0xB5005C, 0x0000004

gUnk_08B50060:: @ 08B50060
	.incbin "baserom.gba", 0xB50060, 0x0000004

gUnk_08B50064:: @ 08B50064
	.incbin "baserom.gba", 0xB50064, 0x0000004

gUnk_08B50068:: @ 08B50068
	.incbin "baserom.gba", 0xB50068, 0x0000004

gUnk_08B5006C:: @ 08B5006C
	.incbin "baserom.gba", 0xB5006C, 0x0000004

gUnk_08B50070:: @ 08B50070
	.incbin "baserom.gba", 0xB50070, 0x0000004

gUnk_08B50074:: @ 08B50074
	.incbin "baserom.gba", 0xB50074, 0x0000004

gUnk_08B50078:: @ 08B50078
	.incbin "baserom.gba", 0xB50078, 0x0000004

gUnk_08B5007C:: @ 08B5007C
	.incbin "baserom.gba", 0xB5007C, 0x0000008

gUnk_08B50084:: @ 08B50084
	.incbin "baserom.gba", 0xB50084, 0x0000008

gUnk_08B5008C:: @ 08B5008C
	.incbin "baserom.gba", 0xB5008C, 0x000000C

gUnk_08B50098:: @ 08B50098
	.incbin "baserom.gba", 0xB50098, 0x0000004

gUnk_08B5009C:: @ 08B5009C
	.incbin "baserom.gba", 0xB5009C, 0x0000004

gUnk_08B500A0:: @ 08B500A0
	.incbin "baserom.gba", 0xB500A0, 0x0000004

gUnk_08B500A4:: @ 08B500A4
	.incbin "baserom.gba", 0xB500A4, 0x0000004

gUnk_08B500A8:: @ 08B500A8
	.incbin "baserom.gba", 0xB500A8, 0x000004C

gUnk_08B500F4:: @ 08B500F4
	.incbin "baserom.gba", 0xB500F4, 0x0000004

gUnk_08B500F8:: @ 08B500F8
	.incbin "baserom.gba", 0xB500F8, 0x0000004

gUnk_08B500FC:: @ 08B500FC
	.incbin "baserom.gba", 0xB500FC, 0x0000004

gUnk_08B50100:: @ 08B50100
	.incbin "baserom.gba", 0xB50100, 0x0000004

gUnk_08B50104:: @ 08B50104
	.incbin "baserom.gba", 0xB50104, 0x0000004

gUnk_08B50108:: @ 08B50108
	.incbin "baserom.gba", 0xB50108, 0x0000004

gUnk_08B5010C:: @ 08B5010C
	.incbin "baserom.gba", 0xB5010C, 0x0000004

gUnk_08B50110:: @ 08B50110
	.incbin "baserom.gba", 0xB50110, 0x0000004

gUnk_08B50114:: @ 08B50114
	.incbin "baserom.gba", 0xB50114, 0x0000004

gUnk_08B50118:: @ 08B50118
	.incbin "baserom.gba", 0xB50118, 0x0000004

gUnk_08B5011C:: @ 08B5011C
	.incbin "baserom.gba", 0xB5011C, 0x0000004

gUnk_08B50120:: @ 08B50120
	.incbin "baserom.gba", 0xB50120, 0x0000004

gUnk_08B50124:: @ 08B50124
	.incbin "baserom.gba", 0xB50124, 0x0000004

gUnk_08B50128:: @ 08B50128
	.incbin "baserom.gba", 0xB50128, 0x0000004

gUnk_08B5012C:: @ 08B5012C
	.incbin "baserom.gba", 0xB5012C, 0x0000004

gUnk_08B50130:: @ 08B50130
	.incbin "baserom.gba", 0xB50130, 0x0000004

gUnk_08B50134:: @ 08B50134
	.incbin "baserom.gba", 0xB50134, 0x0000004

gUnk_08B50138:: @ 08B50138
	.incbin "baserom.gba", 0xB50138, 0x0000004

gUnk_08B5013C:: @ 08B5013C
	.incbin "baserom.gba", 0xB5013C, 0x0000004

gUnk_08B50140:: @ 08B50140
	.incbin "baserom.gba", 0xB50140, 0x0000004

gUnk_08B50144:: @ 08B50144
	.incbin "baserom.gba", 0xB50144, 0x0000004

gUnk_08B50148:: @ 08B50148
	.incbin "baserom.gba", 0xB50148, 0x0000004

gUnk_08B5014C:: @ 08B5014C
	.incbin "baserom.gba", 0xB5014C, 0x0000004

gUnk_08B50150:: @ 08B50150
	.incbin "baserom.gba", 0xB50150, 0x0000004

gUnk_08B50154:: @ 08B50154
	.incbin "baserom.gba", 0xB50154, 0x0000004

gUnk_08B50158:: @ 08B50158
	.incbin "baserom.gba", 0xB50158, 0x0000004

gUnk_08B5015C:: @ 08B5015C
	.incbin "baserom.gba", 0xB5015C, 0x0000004

gUnk_08B50160:: @ 08B50160
	.incbin "baserom.gba", 0xB50160, 0x0000004

gUnk_08B50164:: @ 08B50164
	.incbin "baserom.gba", 0xB50164, 0x0000004

gUnk_08B50168:: @ 08B50168
	.incbin "baserom.gba", 0xB50168, 0x0000004

gUnk_08B5016C:: @ 08B5016C
	.incbin "baserom.gba", 0xB5016C, 0x0000004

gUnk_08B50170:: @ 08B50170
	.incbin "baserom.gba", 0xB50170, 0x0000004

gUnk_08B50174:: @ 08B50174
	.incbin "baserom.gba", 0xB50174, 0x0000004

gUnk_08B50178:: @ 08B50178
	.incbin "baserom.gba", 0xB50178, 0x0000004

gUnk_08B5017C:: @ 08B5017C
	.incbin "baserom.gba", 0xB5017C, 0x0000004

gUnk_08B50180:: @ 08B50180
	.incbin "baserom.gba", 0xB50180, 0x0000004

gUnk_08B50184:: @ 08B50184
	.incbin "baserom.gba", 0xB50184, 0x0000004

gUnk_08B50188:: @ 08B50188
	.incbin "baserom.gba", 0xB50188, 0x0000004

gUnk_08B5018C:: @ 08B5018C
	.incbin "baserom.gba", 0xB5018C, 0x0000004

gUnk_08B50190:: @ 08B50190
	.incbin "baserom.gba", 0xB50190, 0x0000004

gUnk_08B50194:: @ 08B50194
	.incbin "baserom.gba", 0xB50194, 0x0000004

gUnk_08B50198:: @ 08B50198
	.incbin "baserom.gba", 0xB50198, 0x0000004

gUnk_08B5019C:: @ 08B5019C
	.incbin "baserom.gba", 0xB5019C, 0x0000004

gUnk_08B501A0:: @ 08B501A0
	.incbin "baserom.gba", 0xB501A0, 0x0000004

gUnk_08B501A4:: @ 08B501A4
	.incbin "baserom.gba", 0xB501A4, 0x0000004

gUnk_08B501A8:: @ 08B501A8
	.incbin "baserom.gba", 0xB501A8, 0x0000008

gUnk_08B501B0:: @ 08B501B0
	.incbin "baserom.gba", 0xB501B0, 0x0000008

gUnk_08B501B8:: @ 08B501B8
	.incbin "baserom.gba", 0xB501B8, 0x0000004

gUnk_08B501BC:: @ 08B501BC
	.incbin "baserom.gba", 0xB501BC, 0x0000004

gUnk_08B501C0:: @ 08B501C0
	.incbin "baserom.gba", 0xB501C0, 0x0000004

gUnk_08B501C4:: @ 08B501C4
	.incbin "baserom.gba", 0xB501C4, 0x0000004

gUnk_08B501C8:: @ 08B501C8
	.incbin "baserom.gba", 0xB501C8, 0x000004C

gUnk_08B50214:: @ 08B50214
	.incbin "baserom.gba", 0xB50214, 0x0000004

gUnk_08B50218:: @ 08B50218
	.incbin "baserom.gba", 0xB50218, 0x0000004

gUnk_08B5021C:: @ 08B5021C
	.incbin "baserom.gba", 0xB5021C, 0x0000004

gUnk_08B50220:: @ 08B50220
	.incbin "baserom.gba", 0xB50220, 0x0000004

gUnk_08B50224:: @ 08B50224
	.incbin "baserom.gba", 0xB50224, 0x0000004

gUnk_08B50228:: @ 08B50228
	.incbin "baserom.gba", 0xB50228, 0x0000004

gUnk_08B5022C:: @ 08B5022C
	.incbin "baserom.gba", 0xB5022C, 0x0000004

gUnk_08B50230:: @ 08B50230
	.incbin "baserom.gba", 0xB50230, 0x0000004

gUnk_08B50234:: @ 08B50234
	.incbin "baserom.gba", 0xB50234, 0x0000004

gUnk_08B50238:: @ 08B50238
	.incbin "baserom.gba", 0xB50238, 0x0000004

gUnk_08B5023C:: @ 08B5023C
	.incbin "baserom.gba", 0xB5023C, 0x0000004

gUnk_08B50240:: @ 08B50240
	.incbin "baserom.gba", 0xB50240, 0x0000004

gUnk_08B50244:: @ 08B50244
	.incbin "baserom.gba", 0xB50244, 0x0000004

gUnk_08B50248:: @ 08B50248
	.incbin "baserom.gba", 0xB50248, 0x0000004

gUnk_08B5024C:: @ 08B5024C
	.incbin "baserom.gba", 0xB5024C, 0x0000004

gUnk_08B50250:: @ 08B50250
	.incbin "baserom.gba", 0xB50250, 0x0000004

gUnk_08B50254:: @ 08B50254
	.incbin "baserom.gba", 0xB50254, 0x0000004

gUnk_08B50258:: @ 08B50258
	.incbin "baserom.gba", 0xB50258, 0x0000004

gUnk_08B5025C:: @ 08B5025C
	.incbin "baserom.gba", 0xB5025C, 0x0000004

gUnk_08B50260:: @ 08B50260
	.incbin "baserom.gba", 0xB50260, 0x0000004

gUnk_08B50264:: @ 08B50264
	.incbin "baserom.gba", 0xB50264, 0x0000004

gUnk_08B50268:: @ 08B50268
	.incbin "baserom.gba", 0xB50268, 0x0000004

gUnk_08B5026C:: @ 08B5026C
	.incbin "baserom.gba", 0xB5026C, 0x0000004

gUnk_08B50270:: @ 08B50270
	.incbin "baserom.gba", 0xB50270, 0x0000004

gUnk_08B50274:: @ 08B50274
	.incbin "baserom.gba", 0xB50274, 0x0000004

gUnk_08B50278:: @ 08B50278
	.incbin "baserom.gba", 0xB50278, 0x0000004

gUnk_08B5027C:: @ 08B5027C
	.incbin "baserom.gba", 0xB5027C, 0x0000004

gUnk_08B50280:: @ 08B50280
	.incbin "baserom.gba", 0xB50280, 0x0000004

gUnk_08B50284:: @ 08B50284
	.incbin "baserom.gba", 0xB50284, 0x0000004

gUnk_08B50288:: @ 08B50288
	.incbin "baserom.gba", 0xB50288, 0x0000004

gUnk_08B5028C:: @ 08B5028C
	.incbin "baserom.gba", 0xB5028C, 0x0000004

gUnk_08B50290:: @ 08B50290
	.incbin "baserom.gba", 0xB50290, 0x0000004

gUnk_08B50294:: @ 08B50294
	.incbin "baserom.gba", 0xB50294, 0x0000004

gUnk_08B50298:: @ 08B50298
	.incbin "baserom.gba", 0xB50298, 0x0000004

gUnk_08B5029C:: @ 08B5029C
	.incbin "baserom.gba", 0xB5029C, 0x0000004

gUnk_08B502A0:: @ 08B502A0
	.incbin "baserom.gba", 0xB502A0, 0x0000004

gUnk_08B502A4:: @ 08B502A4
	.incbin "baserom.gba", 0xB502A4, 0x0000004

gUnk_08B502A8:: @ 08B502A8
	.incbin "baserom.gba", 0xB502A8, 0x0000004

gUnk_08B502AC:: @ 08B502AC
	.incbin "baserom.gba", 0xB502AC, 0x0000004

gUnk_08B502B0:: @ 08B502B0
	.incbin "baserom.gba", 0xB502B0, 0x0000004

gUnk_08B502B4:: @ 08B502B4
	.incbin "baserom.gba", 0xB502B4, 0x0000004

gUnk_08B502B8:: @ 08B502B8
	.incbin "baserom.gba", 0xB502B8, 0x0000004

gUnk_08B502BC:: @ 08B502BC
	.incbin "baserom.gba", 0xB502BC, 0x0000004

gUnk_08B502C0:: @ 08B502C0
	.incbin "baserom.gba", 0xB502C0, 0x0000004

gUnk_08B502C4:: @ 08B502C4
	.incbin "baserom.gba", 0xB502C4, 0x0000004

gUnk_08B502C8:: @ 08B502C8
	.incbin "baserom.gba", 0xB502C8, 0x0000004

gUnk_08B502CC:: @ 08B502CC
	.incbin "baserom.gba", 0xB502CC, 0x0000008

gUnk_08B502D4:: @ 08B502D4
	.incbin "baserom.gba", 0xB502D4, 0x0000004

gUnk_08B502D8:: @ 08B502D8
	.incbin "baserom.gba", 0xB502D8, 0x0000004

gUnk_08B502DC:: @ 08B502DC
	.incbin "baserom.gba", 0xB502DC, 0x0000004

gUnk_08B502E0:: @ 08B502E0
	.incbin "baserom.gba", 0xB502E0, 0x0000004

gUnk_08B502E4:: @ 08B502E4
	.incbin "baserom.gba", 0xB502E4, 0x000004C

gUnk_08B50330:: @ 08B50330
	.incbin "baserom.gba", 0xB50330, 0x0000004

gUnk_08B50334:: @ 08B50334
	.incbin "baserom.gba", 0xB50334, 0x0000020

gUnk_08B50354:: @ 08B50354
	.incbin "baserom.gba", 0xB50354, 0x0000004

gUnk_08B50358:: @ 08B50358
	.incbin "baserom.gba", 0xB50358, 0x0000004

gUnk_08B5035C:: @ 08B5035C
	.incbin "baserom.gba", 0xB5035C, 0x0000004

gUnk_08B50360:: @ 08B50360
	.incbin "baserom.gba", 0xB50360, 0x000001C

gUnk_08B5037C:: @ 08B5037C
	.incbin "baserom.gba", 0xB5037C, 0x0000020

gUnk_08B5039C:: @ 08B5039C
	.incbin "baserom.gba", 0xB5039C, 0x0000010

gUnk_08B503AC:: @ 08B503AC
	.incbin "baserom.gba", 0xB503AC, 0x0000014

gUnk_08B503C0:: @ 08B503C0
	.incbin "baserom.gba", 0xB503C0, 0x0000014

gUnk_08B503D4:: @ 08B503D4
	.incbin "baserom.gba", 0xB503D4, 0x0000018

gUnk_08B503EC:: @ 08B503EC
	.incbin "baserom.gba", 0xB503EC, 0x0000024

gUnk_08B50410:: @ 08B50410
	.incbin "baserom.gba", 0xB50410, 0x000001C

gUnk_08B5042C:: @ 08B5042C
	.incbin "baserom.gba", 0xB5042C, 0x0000020

gUnk_08B5044C:: @ 08B5044C
	.incbin "baserom.gba", 0xB5044C, 0x0000020

gUnk_08B5046C:: @ 08B5046C
	.incbin "baserom.gba", 0xB5046C, 0x000000C

gUnk_08B50478:: @ 08B50478
	.incbin "baserom.gba", 0xB50478, 0x000000C

gUnk_08B50484:: @ 08B50484
	.incbin "baserom.gba", 0xB50484, 0x000001C

gUnk_08B504A0:: @ 08B504A0
	.incbin "baserom.gba", 0xB504A0, 0x0000014

gUnk_08B504B4:: @ 08B504B4
	.incbin "baserom.gba", 0xB504B4, 0x0000020

gUnk_08B504D4:: @ 08B504D4
	.incbin "baserom.gba", 0xB504D4, 0x0000018

gUnk_08B504EC:: @ 08B504EC
	.incbin "baserom.gba", 0xB504EC, 0x0000020

gUnk_08B5050C:: @ 08B5050C
	.incbin "baserom.gba", 0xB5050C, 0x0000020

gUnk_08B5052C:: @ 08B5052C
	.incbin "baserom.gba", 0xB5052C, 0x000001C

gUnk_08B50548:: @ 08B50548
	.incbin "baserom.gba", 0xB50548, 0x000001C

gUnk_08B50564:: @ 08B50564
	.incbin "baserom.gba", 0xB50564, 0x0000020

gUnk_08B50584:: @ 08B50584
	.incbin "baserom.gba", 0xB50584, 0x0000020

gUnk_08B505A4:: @ 08B505A4
	.incbin "baserom.gba", 0xB505A4, 0x0000010

gUnk_08B505B4:: @ 08B505B4
	.incbin "baserom.gba", 0xB505B4, 0x0000010

gUnk_08B505C4:: @ 08B505C4
	.incbin "baserom.gba", 0xB505C4, 0x0000018

gUnk_08B505DC:: @ 08B505DC
	.incbin "baserom.gba", 0xB505DC, 0x0000010

gUnk_08B505EC:: @ 08B505EC
	.incbin "baserom.gba", 0xB505EC, 0x000001C

gUnk_08B50608:: @ 08B50608
	.incbin "baserom.gba", 0xB50608, 0x0000020

gUnk_08B50628:: @ 08B50628
	.incbin "baserom.gba", 0xB50628, 0x0000018

gUnk_08B50640:: @ 08B50640
	.incbin "baserom.gba", 0xB50640, 0x0000020

gUnk_08B50660:: @ 08B50660
	.incbin "baserom.gba", 0xB50660, 0x000000C

gUnk_08B5066C:: @ 08B5066C
	.incbin "baserom.gba", 0xB5066C, 0x000000C

gUnk_08B50678:: @ 08B50678
	.incbin "baserom.gba", 0xB50678, 0x000000C

gUnk_08B50684:: @ 08B50684
	.incbin "baserom.gba", 0xB50684, 0x0000014

gUnk_08B50698:: @ 08B50698
	.incbin "baserom.gba", 0xB50698, 0x0000010

gUnk_08B506A8:: @ 08B506A8
	.incbin "baserom.gba", 0xB506A8, 0x0000010

gUnk_08B506B8:: @ 08B506B8
	.incbin "baserom.gba", 0xB506B8, 0x0000010

gUnk_08B506C8:: @ 08B506C8
	.incbin "baserom.gba", 0xB506C8, 0x0000014

gUnk_08B506DC:: @ 08B506DC
	.incbin "baserom.gba", 0xB506DC, 0x0000020

gUnk_08B506FC:: @ 08B506FC
	.incbin "baserom.gba", 0xB506FC, 0x0000024

gUnk_08B50720:: @ 08B50720
	.incbin "baserom.gba", 0xB50720, 0x0000024

gUnk_08B50744:: @ 08B50744
	.incbin "baserom.gba", 0xB50744, 0x0000028

gUnk_08B5076C:: @ 08B5076C
	.incbin "baserom.gba", 0xB5076C, 0x0000008

gUnk_08B50774:: @ 08B50774
	.incbin "baserom.gba", 0xB50774, 0x0000008

gUnk_08B5077C:: @ 08B5077C
	.incbin "baserom.gba", 0xB5077C, 0x0000008

gUnk_08B50784:: @ 08B50784
	.incbin "baserom.gba", 0xB50784, 0x0000004

gUnk_08B50788:: @ 08B50788
	.incbin "baserom.gba", 0xB50788, 0x000004C

gUnk_08B507D4:: @ 08B507D4
	.incbin "baserom.gba", 0xB507D4, 0x0000004

gUnk_08B507D8:: @ 08B507D8
	.incbin "baserom.gba", 0xB507D8, 0x0000020

gUnk_08B507F8:: @ 08B507F8
	.incbin "baserom.gba", 0xB507F8, 0x0000004

gUnk_08B507FC:: @ 08B507FC
	.incbin "baserom.gba", 0xB507FC, 0x0000004

gUnk_08B50800:: @ 08B50800
	.incbin "baserom.gba", 0xB50800, 0x0000004

gUnk_08B50804:: @ 08B50804
	.incbin "baserom.gba", 0xB50804, 0x0000020

gUnk_08B50824:: @ 08B50824
	.incbin "baserom.gba", 0xB50824, 0x0000020

gUnk_08B50844:: @ 08B50844
	.incbin "baserom.gba", 0xB50844, 0x000000C

gUnk_08B50850:: @ 08B50850
	.incbin "baserom.gba", 0xB50850, 0x0000010

gUnk_08B50860:: @ 08B50860
	.incbin "baserom.gba", 0xB50860, 0x0000014

gUnk_08B50874:: @ 08B50874
	.incbin "baserom.gba", 0xB50874, 0x0000014

gUnk_08B50888:: @ 08B50888
	.incbin "baserom.gba", 0xB50888, 0x0000020

gUnk_08B508A8:: @ 08B508A8
	.incbin "baserom.gba", 0xB508A8, 0x000000C

gUnk_08B508B4:: @ 08B508B4
	.incbin "baserom.gba", 0xB508B4, 0x000000C

gUnk_08B508C0:: @ 08B508C0
	.incbin "baserom.gba", 0xB508C0, 0x0000020

gUnk_08B508E0:: @ 08B508E0
	.incbin "baserom.gba", 0xB508E0, 0x000001C

gUnk_08B508FC:: @ 08B508FC
	.incbin "baserom.gba", 0xB508FC, 0x000000C

gUnk_08B50908:: @ 08B50908
	.incbin "baserom.gba", 0xB50908, 0x000000C

gUnk_08B50914:: @ 08B50914
	.incbin "baserom.gba", 0xB50914, 0x000001C

gUnk_08B50930:: @ 08B50930
	.incbin "baserom.gba", 0xB50930, 0x0000018

gUnk_08B50948:: @ 08B50948
	.incbin "baserom.gba", 0xB50948, 0x0000024

gUnk_08B5096C:: @ 08B5096C
	.incbin "baserom.gba", 0xB5096C, 0x0000018

gUnk_08B50984:: @ 08B50984
	.incbin "baserom.gba", 0xB50984, 0x0000020

gUnk_08B509A4:: @ 08B509A4
	.incbin "baserom.gba", 0xB509A4, 0x000001C

gUnk_08B509C0:: @ 08B509C0
	.incbin "baserom.gba", 0xB509C0, 0x000001C

gUnk_08B509DC:: @ 08B509DC
	.incbin "baserom.gba", 0xB509DC, 0x0000018

gUnk_08B509F4:: @ 08B509F4
	.incbin "baserom.gba", 0xB509F4, 0x000001C

gUnk_08B50A10:: @ 08B50A10
	.incbin "baserom.gba", 0xB50A10, 0x0000020

gUnk_08B50A30:: @ 08B50A30
	.incbin "baserom.gba", 0xB50A30, 0x0000010

gUnk_08B50A40:: @ 08B50A40
	.incbin "baserom.gba", 0xB50A40, 0x000000C

gUnk_08B50A4C:: @ 08B50A4C
	.incbin "baserom.gba", 0xB50A4C, 0x000001C

gUnk_08B50A68:: @ 08B50A68
	.incbin "baserom.gba", 0xB50A68, 0x0000010

gUnk_08B50A78:: @ 08B50A78
	.incbin "baserom.gba", 0xB50A78, 0x000001C

gUnk_08B50A94:: @ 08B50A94
	.incbin "baserom.gba", 0xB50A94, 0x0000020

gUnk_08B50AB4:: @ 08B50AB4
	.incbin "baserom.gba", 0xB50AB4, 0x0000018

gUnk_08B50ACC:: @ 08B50ACC
	.incbin "baserom.gba", 0xB50ACC, 0x0000020

gUnk_08B50AEC:: @ 08B50AEC
	.incbin "baserom.gba", 0xB50AEC, 0x0000008

gUnk_08B50AF4:: @ 08B50AF4
	.incbin "baserom.gba", 0xB50AF4, 0x000000C

gUnk_08B50B00:: @ 08B50B00
	.incbin "baserom.gba", 0xB50B00, 0x0000010

gUnk_08B50B10:: @ 08B50B10
	.incbin "baserom.gba", 0xB50B10, 0x0000014

gUnk_08B50B24:: @ 08B50B24
	.incbin "baserom.gba", 0xB50B24, 0x0000014

gUnk_08B50B38:: @ 08B50B38
	.incbin "baserom.gba", 0xB50B38, 0x0000010

gUnk_08B50B48:: @ 08B50B48
	.incbin "baserom.gba", 0xB50B48, 0x0000014

gUnk_08B50B5C:: @ 08B50B5C
	.incbin "baserom.gba", 0xB50B5C, 0x0000014

gUnk_08B50B70:: @ 08B50B70
	.incbin "baserom.gba", 0xB50B70, 0x0000024

gUnk_08B50B94:: @ 08B50B94
	.incbin "baserom.gba", 0xB50B94, 0x0000024

gUnk_08B50BB8:: @ 08B50BB8
	.incbin "baserom.gba", 0xB50BB8, 0x0000028

gUnk_08B50BE0:: @ 08B50BE0
	.incbin "baserom.gba", 0xB50BE0, 0x0000028

gUnk_08B50C08:: @ 08B50C08
	.incbin "baserom.gba", 0xB50C08, 0x0000008

gUnk_08B50C10:: @ 08B50C10
	.incbin "baserom.gba", 0xB50C10, 0x0000008

gUnk_08B50C18:: @ 08B50C18
	.incbin "baserom.gba", 0xB50C18, 0x000000C

gUnk_08B50C24:: @ 08B50C24
	.incbin "baserom.gba", 0xB50C24, 0x0000004

gUnk_08B50C28:: @ 08B50C28
	.incbin "baserom.gba", 0xB50C28, 0x000004C

gUnk_08B50C74:: @ 08B50C74
	.incbin "baserom.gba", 0xB50C74, 0x0000004

gUnk_08B50C78:: @ 08B50C78
	.incbin "baserom.gba", 0xB50C78, 0x000001C

gUnk_08B50C94:: @ 08B50C94
	.incbin "baserom.gba", 0xB50C94, 0x0000004

gUnk_08B50C98:: @ 08B50C98
	.incbin "baserom.gba", 0xB50C98, 0x0000004

gUnk_08B50C9C:: @ 08B50C9C
	.incbin "baserom.gba", 0xB50C9C, 0x0000004

gUnk_08B50CA0:: @ 08B50CA0
	.incbin "baserom.gba", 0xB50CA0, 0x000001C

gUnk_08B50CBC:: @ 08B50CBC
	.incbin "baserom.gba", 0xB50CBC, 0x000001C

gUnk_08B50CD8:: @ 08B50CD8
	.incbin "baserom.gba", 0xB50CD8, 0x0000010

gUnk_08B50CE8:: @ 08B50CE8
	.incbin "baserom.gba", 0xB50CE8, 0x0000014

gUnk_08B50CFC:: @ 08B50CFC
	.incbin "baserom.gba", 0xB50CFC, 0x0000018

gUnk_08B50D14:: @ 08B50D14
	.incbin "baserom.gba", 0xB50D14, 0x0000018

gUnk_08B50D2C:: @ 08B50D2C
	.incbin "baserom.gba", 0xB50D2C, 0x0000024

gUnk_08B50D50:: @ 08B50D50
	.incbin "baserom.gba", 0xB50D50, 0x000001C

gUnk_08B50D6C:: @ 08B50D6C
	.incbin "baserom.gba", 0xB50D6C, 0x0000024

gUnk_08B50D90:: @ 08B50D90
	.incbin "baserom.gba", 0xB50D90, 0x0000020

gUnk_08B50DB0:: @ 08B50DB0
	.incbin "baserom.gba", 0xB50DB0, 0x0000010

gUnk_08B50DC0:: @ 08B50DC0
	.incbin "baserom.gba", 0xB50DC0, 0x0000010

gUnk_08B50DD0:: @ 08B50DD0
	.incbin "baserom.gba", 0xB50DD0, 0x0000018

gUnk_08B50DE8:: @ 08B50DE8
	.incbin "baserom.gba", 0xB50DE8, 0x0000014

gUnk_08B50DFC:: @ 08B50DFC
	.incbin "baserom.gba", 0xB50DFC, 0x0000020

gUnk_08B50E1C:: @ 08B50E1C
	.incbin "baserom.gba", 0xB50E1C, 0x0000014

gUnk_08B50E30:: @ 08B50E30
	.incbin "baserom.gba", 0xB50E30, 0x0000024

gUnk_08B50E54:: @ 08B50E54
	.incbin "baserom.gba", 0xB50E54, 0x0000020

gUnk_08B50E74:: @ 08B50E74
	.incbin "baserom.gba", 0xB50E74, 0x0000020

gUnk_08B50E94:: @ 08B50E94
	.incbin "baserom.gba", 0xB50E94, 0x000001C

gUnk_08B50EB0:: @ 08B50EB0
	.incbin "baserom.gba", 0xB50EB0, 0x0000020

gUnk_08B50ED0:: @ 08B50ED0
	.incbin "baserom.gba", 0xB50ED0, 0x0000024

gUnk_08B50EF4:: @ 08B50EF4
	.incbin "baserom.gba", 0xB50EF4, 0x0000014

gUnk_08B50F08:: @ 08B50F08
	.incbin "baserom.gba", 0xB50F08, 0x0000010

gUnk_08B50F18:: @ 08B50F18
	.incbin "baserom.gba", 0xB50F18, 0x0000018

gUnk_08B50F30:: @ 08B50F30
	.incbin "baserom.gba", 0xB50F30, 0x0000014

gUnk_08B50F44:: @ 08B50F44
	.incbin "baserom.gba", 0xB50F44, 0x0000020

gUnk_08B50F64:: @ 08B50F64
	.incbin "baserom.gba", 0xB50F64, 0x0000020

gUnk_08B50F84:: @ 08B50F84
	.incbin "baserom.gba", 0xB50F84, 0x000001C

gUnk_08B50FA0:: @ 08B50FA0
	.incbin "baserom.gba", 0xB50FA0, 0x0000020

gUnk_08B50FC0:: @ 08B50FC0
	.incbin "baserom.gba", 0xB50FC0, 0x000000C

gUnk_08B50FCC:: @ 08B50FCC
	.incbin "baserom.gba", 0xB50FCC, 0x0000008

gUnk_08B50FD4:: @ 08B50FD4
	.incbin "baserom.gba", 0xB50FD4, 0x000000C

gUnk_08B50FE0:: @ 08B50FE0
	.incbin "baserom.gba", 0xB50FE0, 0x0000010

gUnk_08B50FF0:: @ 08B50FF0
	.incbin "baserom.gba", 0xB50FF0, 0x0000010

gUnk_08B51000:: @ 08B51000
	.incbin "baserom.gba", 0xB51000, 0x000000C

gUnk_08B5100C:: @ 08B5100C
	.incbin "baserom.gba", 0xB5100C, 0x0000010

gUnk_08B5101C:: @ 08B5101C
	.incbin "baserom.gba", 0xB5101C, 0x0000010

gUnk_08B5102C:: @ 08B5102C
	.incbin "baserom.gba", 0xB5102C, 0x0000020

gUnk_08B5104C:: @ 08B5104C
	.incbin "baserom.gba", 0xB5104C, 0x0000020

gUnk_08B5106C:: @ 08B5106C
	.incbin "baserom.gba", 0xB5106C, 0x0000024

gUnk_08B51090:: @ 08B51090
	.incbin "baserom.gba", 0xB51090, 0x0000024

gUnk_08B510B4:: @ 08B510B4
	.incbin "baserom.gba", 0xB510B4, 0x0000008

gUnk_08B510BC:: @ 08B510BC
	.incbin "baserom.gba", 0xB510BC, 0x000000C

gUnk_08B510C8:: @ 08B510C8
	.incbin "baserom.gba", 0xB510C8, 0x0000008

gUnk_08B510D0:: @ 08B510D0
	.incbin "baserom.gba", 0xB510D0, 0x0000004

gUnk_08B510D4:: @ 08B510D4
	.incbin "baserom.gba", 0xB510D4, 0x000004C

gUnk_08B51120:: @ 08B51120
	.incbin "baserom.gba", 0xB51120, 0x000000C

gUnk_08B5112C:: @ 08B5112C
	.incbin "baserom.gba", 0xB5112C, 0x0000004

gUnk_08B51130:: @ 08B51130
	.incbin "baserom.gba", 0xB51130, 0x0000004

gUnk_08B51134:: @ 08B51134
	.incbin "baserom.gba", 0xB51134, 0x0000004

gUnk_08B51138:: @ 08B51138
	.incbin "baserom.gba", 0xB51138, 0x0000004

gUnk_08B5113C:: @ 08B5113C
	.incbin "baserom.gba", 0xB5113C, 0x0000004

gUnk_08B51140:: @ 08B51140
	.incbin "baserom.gba", 0xB51140, 0x0000010

gUnk_08B51150:: @ 08B51150
	.incbin "baserom.gba", 0xB51150, 0x0000010

gUnk_08B51160:: @ 08B51160
	.incbin "baserom.gba", 0xB51160, 0x0000004

gUnk_08B51164:: @ 08B51164
	.incbin "baserom.gba", 0xB51164, 0x0000004

gUnk_08B51168:: @ 08B51168
	.incbin "baserom.gba", 0xB51168, 0x0000004

gUnk_08B5116C:: @ 08B5116C
	.incbin "baserom.gba", 0xB5116C, 0x0000004

gUnk_08B51170:: @ 08B51170
	.incbin "baserom.gba", 0xB51170, 0x0000004

gUnk_08B51174:: @ 08B51174
	.incbin "baserom.gba", 0xB51174, 0x000000C

gUnk_08B51180:: @ 08B51180
	.incbin "baserom.gba", 0xB51180, 0x0000004

gUnk_08B51184:: @ 08B51184
	.incbin "baserom.gba", 0xB51184, 0x0000004

gUnk_08B51188:: @ 08B51188
	.incbin "baserom.gba", 0xB51188, 0x000000C

gUnk_08B51194:: @ 08B51194
	.incbin "baserom.gba", 0xB51194, 0x0000008

gUnk_08B5119C:: @ 08B5119C
	.incbin "baserom.gba", 0xB5119C, 0x0000014

gUnk_08B511B0:: @ 08B511B0
	.incbin "baserom.gba", 0xB511B0, 0x0000008

gUnk_08B511B8:: @ 08B511B8
	.incbin "baserom.gba", 0xB511B8, 0x0000004

gUnk_08B511BC:: @ 08B511BC
	.incbin "baserom.gba", 0xB511BC, 0x000004C

gUnk_08B51208:: @ 08B51208
	.incbin "baserom.gba", 0xB51208, 0x0000004

gUnk_08B5120C:: @ 08B5120C
	.incbin "baserom.gba", 0xB5120C, 0x0000010

gUnk_08B5121C:: @ 08B5121C
	.incbin "baserom.gba", 0xB5121C, 0x000000C

gUnk_08B51228:: @ 08B51228
	.incbin "baserom.gba", 0xB51228, 0x000000C

gUnk_08B51234:: @ 08B51234
	.incbin "baserom.gba", 0xB51234, 0x000000C

gUnk_08B51240:: @ 08B51240
	.incbin "baserom.gba", 0xB51240, 0x0000010

gUnk_08B51250:: @ 08B51250
	.incbin "baserom.gba", 0xB51250, 0x0000004

gUnk_08B51254:: @ 08B51254
	.incbin "baserom.gba", 0xB51254, 0x0000004

gUnk_08B51258:: @ 08B51258
	.incbin "baserom.gba", 0xB51258, 0x000000C

gUnk_08B51264:: @ 08B51264
	.incbin "baserom.gba", 0xB51264, 0x0000010

gUnk_08B51274:: @ 08B51274
	.incbin "baserom.gba", 0xB51274, 0x000000C

gUnk_08B51280:: @ 08B51280
	.incbin "baserom.gba", 0xB51280, 0x0000010

gUnk_08B51290:: @ 08B51290
	.incbin "baserom.gba", 0xB51290, 0x0000004

gUnk_08B51294:: @ 08B51294
	.incbin "baserom.gba", 0xB51294, 0x0000004

gUnk_08B51298:: @ 08B51298
	.incbin "baserom.gba", 0xB51298, 0x000000C

gUnk_08B512A4:: @ 08B512A4
	.incbin "baserom.gba", 0xB512A4, 0x0000008

gUnk_08B512AC:: @ 08B512AC
	.incbin "baserom.gba", 0xB512AC, 0x0000004

gUnk_08B512B0:: @ 08B512B0
	.incbin "baserom.gba", 0xB512B0, 0x0000004

gUnk_08B512B4:: @ 08B512B4
	.incbin "baserom.gba", 0xB512B4, 0x0000004

gUnk_08B512B8:: @ 08B512B8
	.incbin "baserom.gba", 0xB512B8, 0x0000004

gUnk_08B512BC:: @ 08B512BC
	.incbin "baserom.gba", 0xB512BC, 0x0000008

gUnk_08B512C4:: @ 08B512C4
	.incbin "baserom.gba", 0xB512C4, 0x000004C

gUnk_08B51310:: @ 08B51310
	.incbin "baserom.gba", 0xB51310, 0x0000004

gUnk_08B51314:: @ 08B51314
	.incbin "baserom.gba", 0xB51314, 0x0000004

gUnk_08B51318:: @ 08B51318
	.incbin "baserom.gba", 0xB51318, 0x0000004

gUnk_08B5131C:: @ 08B5131C
	.incbin "baserom.gba", 0xB5131C, 0x0000004

gUnk_08B51320:: @ 08B51320
	.incbin "baserom.gba", 0xB51320, 0x0000004

gUnk_08B51324:: @ 08B51324
	.incbin "baserom.gba", 0xB51324, 0x0000004

gUnk_08B51328:: @ 08B51328
	.incbin "baserom.gba", 0xB51328, 0x0000004

gUnk_08B5132C:: @ 08B5132C
	.incbin "baserom.gba", 0xB5132C, 0x0000008

gUnk_08B51334:: @ 08B51334
	.incbin "baserom.gba", 0xB51334, 0x0000004

gUnk_08B51338:: @ 08B51338
	.incbin "baserom.gba", 0xB51338, 0x0000004

gUnk_08B5133C:: @ 08B5133C
	.incbin "baserom.gba", 0xB5133C, 0x0000004

gUnk_08B51340:: @ 08B51340
	.incbin "baserom.gba", 0xB51340, 0x0000004

gUnk_08B51344:: @ 08B51344
	.incbin "baserom.gba", 0xB51344, 0x0000004

gUnk_08B51348:: @ 08B51348
	.incbin "baserom.gba", 0xB51348, 0x0000004

gUnk_08B5134C:: @ 08B5134C
	.incbin "baserom.gba", 0xB5134C, 0x0000004

gUnk_08B51350:: @ 08B51350
	.incbin "baserom.gba", 0xB51350, 0x0000004

gUnk_08B51354:: @ 08B51354
	.incbin "baserom.gba", 0xB51354, 0x0000004

gUnk_08B51358:: @ 08B51358
	.incbin "baserom.gba", 0xB51358, 0x0000004

gUnk_08B5135C:: @ 08B5135C
	.incbin "baserom.gba", 0xB5135C, 0x0000004

gUnk_08B51360:: @ 08B51360
	.incbin "baserom.gba", 0xB51360, 0x0000004

gUnk_08B51364:: @ 08B51364
	.incbin "baserom.gba", 0xB51364, 0x0000004

gUnk_08B51368:: @ 08B51368
	.incbin "baserom.gba", 0xB51368, 0x0000008

gUnk_08B51370:: @ 08B51370
	.incbin "baserom.gba", 0xB51370, 0x0000004

gUnk_08B51374:: @ 08B51374
	.incbin "baserom.gba", 0xB51374, 0x000004C

gUnk_08B513C0:: @ 08B513C0
	.incbin "baserom.gba", 0xB513C0, 0x000001C

gUnk_08B513DC:: @ 08B513DC
	.incbin "baserom.gba", 0xB513DC, 0x0000018

gUnk_08B513F4:: @ 08B513F4
	.incbin "baserom.gba", 0xB513F4, 0x000001C

gUnk_08B51410:: @ 08B51410
	.incbin "baserom.gba", 0xB51410, 0x0000020

gUnk_08B51430:: @ 08B51430
	.incbin "baserom.gba", 0xB51430, 0x0000018

gUnk_08B51448:: @ 08B51448
	.incbin "baserom.gba", 0xB51448, 0x0000014

gUnk_08B5145C:: @ 08B5145C
	.incbin "baserom.gba", 0xB5145C, 0x0000018

gUnk_08B51474:: @ 08B51474
	.incbin "baserom.gba", 0xB51474, 0x000001C

gUnk_08B51490:: @ 08B51490
	.incbin "baserom.gba", 0xB51490, 0x0000008

gUnk_08B51498:: @ 08B51498
	.incbin "baserom.gba", 0xB51498, 0x000000C

gUnk_08B514A4:: @ 08B514A4
	.incbin "baserom.gba", 0xB514A4, 0x000000C

gUnk_08B514B0:: @ 08B514B0
	.incbin "baserom.gba", 0xB514B0, 0x0000008

gUnk_08B514B8:: @ 08B514B8
	.incbin "baserom.gba", 0xB514B8, 0x000000C

gUnk_08B514C4:: @ 08B514C4
	.incbin "baserom.gba", 0xB514C4, 0x0000010

gUnk_08B514D4:: @ 08B514D4
	.incbin "baserom.gba", 0xB514D4, 0x0000014

gUnk_08B514E8:: @ 08B514E8
	.incbin "baserom.gba", 0xB514E8, 0x000000C

gUnk_08B514F4:: @ 08B514F4
	.incbin "baserom.gba", 0xB514F4, 0x0000008

gUnk_08B514FC:: @ 08B514FC
	.incbin "baserom.gba", 0xB514FC, 0x000000C

gUnk_08B51508:: @ 08B51508
	.incbin "baserom.gba", 0xB51508, 0x0000010

gUnk_08B51518:: @ 08B51518
	.incbin "baserom.gba", 0xB51518, 0x0000014

gUnk_08B5152C:: @ 08B5152C
	.incbin "baserom.gba", 0xB5152C, 0x0000014

gUnk_08B51540:: @ 08B51540
	.incbin "baserom.gba", 0xB51540, 0x0000018

gUnk_08B51558:: @ 08B51558
	.incbin "baserom.gba", 0xB51558, 0x0000018

gUnk_08B51570:: @ 08B51570
	.incbin "baserom.gba", 0xB51570, 0x0000010

gUnk_08B51580:: @ 08B51580
	.incbin "baserom.gba", 0xB51580, 0x0000004

gUnk_08B51584:: @ 08B51584
	.incbin "baserom.gba", 0xB51584, 0x0000004

gUnk_08B51588:: @ 08B51588
	.incbin "baserom.gba", 0xB51588, 0x0000010

gUnk_08B51598:: @ 08B51598
	.incbin "baserom.gba", 0xB51598, 0x0000008

gUnk_08B515A0:: @ 08B515A0
	.incbin "baserom.gba", 0xB515A0, 0x000000C

gUnk_08B515AC:: @ 08B515AC
	.incbin "baserom.gba", 0xB515AC, 0x000004C

gUnk_08B515F8:: @ 08B515F8
	.incbin "baserom.gba", 0xB515F8, 0x000001C

gUnk_08B51614:: @ 08B51614
	.incbin "baserom.gba", 0xB51614, 0x0000018

gUnk_08B5162C:: @ 08B5162C
	.incbin "baserom.gba", 0xB5162C, 0x000001C

gUnk_08B51648:: @ 08B51648
	.incbin "baserom.gba", 0xB51648, 0x0000020

gUnk_08B51668:: @ 08B51668
	.incbin "baserom.gba", 0xB51668, 0x0000018

gUnk_08B51680:: @ 08B51680
	.incbin "baserom.gba", 0xB51680, 0x0000014

gUnk_08B51694:: @ 08B51694
	.incbin "baserom.gba", 0xB51694, 0x0000018

gUnk_08B516AC:: @ 08B516AC
	.incbin "baserom.gba", 0xB516AC, 0x000001C

gUnk_08B516C8:: @ 08B516C8
	.incbin "baserom.gba", 0xB516C8, 0x000000C

gUnk_08B516D4:: @ 08B516D4
	.incbin "baserom.gba", 0xB516D4, 0x0000008

gUnk_08B516DC:: @ 08B516DC
	.incbin "baserom.gba", 0xB516DC, 0x0000008

gUnk_08B516E4:: @ 08B516E4
	.incbin "baserom.gba", 0xB516E4, 0x000000C

gUnk_08B516F0:: @ 08B516F0
	.incbin "baserom.gba", 0xB516F0, 0x000000C

gUnk_08B516FC:: @ 08B516FC
	.incbin "baserom.gba", 0xB516FC, 0x0000010

gUnk_08B5170C:: @ 08B5170C
	.incbin "baserom.gba", 0xB5170C, 0x0000014

gUnk_08B51720:: @ 08B51720
	.incbin "baserom.gba", 0xB51720, 0x0000010

gUnk_08B51730:: @ 08B51730
	.incbin "baserom.gba", 0xB51730, 0x0000008

gUnk_08B51738:: @ 08B51738
	.incbin "baserom.gba", 0xB51738, 0x000000C

gUnk_08B51744:: @ 08B51744
	.incbin "baserom.gba", 0xB51744, 0x0000010

gUnk_08B51754:: @ 08B51754
	.incbin "baserom.gba", 0xB51754, 0x0000014

gUnk_08B51768:: @ 08B51768
	.incbin "baserom.gba", 0xB51768, 0x0000014

gUnk_08B5177C:: @ 08B5177C
	.incbin "baserom.gba", 0xB5177C, 0x0000018

gUnk_08B51794:: @ 08B51794
	.incbin "baserom.gba", 0xB51794, 0x0000018

gUnk_08B517AC:: @ 08B517AC
	.incbin "baserom.gba", 0xB517AC, 0x0000010

gUnk_08B517BC:: @ 08B517BC
	.incbin "baserom.gba", 0xB517BC, 0x0000004

gUnk_08B517C0:: @ 08B517C0
	.incbin "baserom.gba", 0xB517C0, 0x0000004

gUnk_08B517C4:: @ 08B517C4
	.incbin "baserom.gba", 0xB517C4, 0x000000C

gUnk_08B517D0:: @ 08B517D0
	.incbin "baserom.gba", 0xB517D0, 0x000000C

gUnk_08B517DC:: @ 08B517DC
	.incbin "baserom.gba", 0xB517DC, 0x000000C

gUnk_08B517E8:: @ 08B517E8
	.incbin "baserom.gba", 0xB517E8, 0x000004C

gUnk_08B51834:: @ 08B51834
	.incbin "baserom.gba", 0xB51834, 0x000001C

gUnk_08B51850:: @ 08B51850
	.incbin "baserom.gba", 0xB51850, 0x000001C

gUnk_08B5186C:: @ 08B5186C
	.incbin "baserom.gba", 0xB5186C, 0x0000020

gUnk_08B5188C:: @ 08B5188C
	.incbin "baserom.gba", 0xB5188C, 0x0000020

gUnk_08B518AC:: @ 08B518AC
	.incbin "baserom.gba", 0xB518AC, 0x0000018

gUnk_08B518C4:: @ 08B518C4
	.incbin "baserom.gba", 0xB518C4, 0x0000018

gUnk_08B518DC:: @ 08B518DC
	.incbin "baserom.gba", 0xB518DC, 0x000001C

gUnk_08B518F8:: @ 08B518F8
	.incbin "baserom.gba", 0xB518F8, 0x000001C

gUnk_08B51914:: @ 08B51914
	.incbin "baserom.gba", 0xB51914, 0x000000C

gUnk_08B51920:: @ 08B51920
	.incbin "baserom.gba", 0xB51920, 0x0000008

gUnk_08B51928:: @ 08B51928
	.incbin "baserom.gba", 0xB51928, 0x0000008

gUnk_08B51930:: @ 08B51930
	.incbin "baserom.gba", 0xB51930, 0x000000C

gUnk_08B5193C:: @ 08B5193C
	.incbin "baserom.gba", 0xB5193C, 0x0000008

gUnk_08B51944:: @ 08B51944
	.incbin "baserom.gba", 0xB51944, 0x0000010

gUnk_08B51954:: @ 08B51954
	.incbin "baserom.gba", 0xB51954, 0x0000014

gUnk_08B51968:: @ 08B51968
	.incbin "baserom.gba", 0xB51968, 0x000000C

gUnk_08B51974:: @ 08B51974
	.incbin "baserom.gba", 0xB51974, 0x000000C

gUnk_08B51980:: @ 08B51980
	.incbin "baserom.gba", 0xB51980, 0x0000010

gUnk_08B51990:: @ 08B51990
	.incbin "baserom.gba", 0xB51990, 0x0000014

gUnk_08B519A4:: @ 08B519A4
	.incbin "baserom.gba", 0xB519A4, 0x0000018

gUnk_08B519BC:: @ 08B519BC
	.incbin "baserom.gba", 0xB519BC, 0x0000014

gUnk_08B519D0:: @ 08B519D0
	.incbin "baserom.gba", 0xB519D0, 0x000001C

gUnk_08B519EC:: @ 08B519EC
	.incbin "baserom.gba", 0xB519EC, 0x0000018

gUnk_08B51A04:: @ 08B51A04
	.incbin "baserom.gba", 0xB51A04, 0x0000014

gUnk_08B51A18:: @ 08B51A18
	.incbin "baserom.gba", 0xB51A18, 0x0000004

gUnk_08B51A1C:: @ 08B51A1C
	.incbin "baserom.gba", 0xB51A1C, 0x0000004

gUnk_08B51A20:: @ 08B51A20
	.incbin "baserom.gba", 0xB51A20, 0x0000008

gUnk_08B51A28:: @ 08B51A28
	.incbin "baserom.gba", 0xB51A28, 0x0000008

gUnk_08B51A30:: @ 08B51A30
	.incbin "baserom.gba", 0xB51A30, 0x000000C

gUnk_08B51A3C:: @ 08B51A3C
	.incbin "baserom.gba", 0xB51A3C, 0x000004C

gUnk_08B51A88:: @ 08B51A88
	.incbin "baserom.gba", 0xB51A88, 0x000001C

gUnk_08B51AA4:: @ 08B51AA4
	.incbin "baserom.gba", 0xB51AA4, 0x000001C

gUnk_08B51AC0:: @ 08B51AC0
	.incbin "baserom.gba", 0xB51AC0, 0x0000020

gUnk_08B51AE0:: @ 08B51AE0
	.incbin "baserom.gba", 0xB51AE0, 0x0000020

gUnk_08B51B00:: @ 08B51B00
	.incbin "baserom.gba", 0xB51B00, 0x0000018

gUnk_08B51B18:: @ 08B51B18
	.incbin "baserom.gba", 0xB51B18, 0x0000018

gUnk_08B51B30:: @ 08B51B30
	.incbin "baserom.gba", 0xB51B30, 0x000001C

gUnk_08B51B4C:: @ 08B51B4C
	.incbin "baserom.gba", 0xB51B4C, 0x000001C

gUnk_08B51B68:: @ 08B51B68
	.incbin "baserom.gba", 0xB51B68, 0x0000008

gUnk_08B51B70:: @ 08B51B70
	.incbin "baserom.gba", 0xB51B70, 0x000000C

gUnk_08B51B7C:: @ 08B51B7C
	.incbin "baserom.gba", 0xB51B7C, 0x000000C

gUnk_08B51B88:: @ 08B51B88
	.incbin "baserom.gba", 0xB51B88, 0x0000008

gUnk_08B51B90:: @ 08B51B90
	.incbin "baserom.gba", 0xB51B90, 0x0000008

gUnk_08B51B98:: @ 08B51B98
	.incbin "baserom.gba", 0xB51B98, 0x0000010

gUnk_08B51BA8:: @ 08B51BA8
	.incbin "baserom.gba", 0xB51BA8, 0x0000014

gUnk_08B51BBC:: @ 08B51BBC
	.incbin "baserom.gba", 0xB51BBC, 0x0000008

gUnk_08B51BC4:: @ 08B51BC4
	.incbin "baserom.gba", 0xB51BC4, 0x000000C

gUnk_08B51BD0:: @ 08B51BD0
	.incbin "baserom.gba", 0xB51BD0, 0x0000010

gUnk_08B51BE0:: @ 08B51BE0
	.incbin "baserom.gba", 0xB51BE0, 0x0000014

gUnk_08B51BF4:: @ 08B51BF4
	.incbin "baserom.gba", 0xB51BF4, 0x0000018

gUnk_08B51C0C:: @ 08B51C0C
	.incbin "baserom.gba", 0xB51C0C, 0x0000014

gUnk_08B51C20:: @ 08B51C20
	.incbin "baserom.gba", 0xB51C20, 0x000001C

gUnk_08B51C3C:: @ 08B51C3C
	.incbin "baserom.gba", 0xB51C3C, 0x0000018

gUnk_08B51C54:: @ 08B51C54
	.incbin "baserom.gba", 0xB51C54, 0x0000014

gUnk_08B51C68:: @ 08B51C68
	.incbin "baserom.gba", 0xB51C68, 0x0000004

gUnk_08B51C6C:: @ 08B51C6C
	.incbin "baserom.gba", 0xB51C6C, 0x0000004

gUnk_08B51C70:: @ 08B51C70
	.incbin "baserom.gba", 0xB51C70, 0x000000C

gUnk_08B51C7C:: @ 08B51C7C
	.incbin "baserom.gba", 0xB51C7C, 0x000000C

gUnk_08B51C88:: @ 08B51C88
	.incbin "baserom.gba", 0xB51C88, 0x000000C

gUnk_08B51C94:: @ 08B51C94
	.incbin "baserom.gba", 0xB51C94, 0x000004C

gUnk_08B51CE0:: @ 08B51CE0
	.incbin "baserom.gba", 0xB51CE0, 0x0000020

gUnk_08B51D00:: @ 08B51D00
	.incbin "baserom.gba", 0xB51D00, 0x000001C

gUnk_08B51D1C:: @ 08B51D1C
	.incbin "baserom.gba", 0xB51D1C, 0x0000020

gUnk_08B51D3C:: @ 08B51D3C
	.incbin "baserom.gba", 0xB51D3C, 0x0000024

gUnk_08B51D60:: @ 08B51D60
	.incbin "baserom.gba", 0xB51D60, 0x000001C

gUnk_08B51D7C:: @ 08B51D7C
	.incbin "baserom.gba", 0xB51D7C, 0x0000018

gUnk_08B51D94:: @ 08B51D94
	.incbin "baserom.gba", 0xB51D94, 0x000001C

gUnk_08B51DB0:: @ 08B51DB0
	.incbin "baserom.gba", 0xB51DB0, 0x0000020

gUnk_08B51DD0:: @ 08B51DD0
	.incbin "baserom.gba", 0xB51DD0, 0x000000C

gUnk_08B51DDC:: @ 08B51DDC
	.incbin "baserom.gba", 0xB51DDC, 0x000000C

gUnk_08B51DE8:: @ 08B51DE8
	.incbin "baserom.gba", 0xB51DE8, 0x0000008

gUnk_08B51DF0:: @ 08B51DF0
	.incbin "baserom.gba", 0xB51DF0, 0x0000008

gUnk_08B51DF8:: @ 08B51DF8
	.incbin "baserom.gba", 0xB51DF8, 0x0000008

gUnk_08B51E00:: @ 08B51E00
	.incbin "baserom.gba", 0xB51E00, 0x0000014

gUnk_08B51E14:: @ 08B51E14
	.incbin "baserom.gba", 0xB51E14, 0x0000018

gUnk_08B51E2C:: @ 08B51E2C
	.incbin "baserom.gba", 0xB51E2C, 0x000000C

gUnk_08B51E38:: @ 08B51E38
	.incbin "baserom.gba", 0xB51E38, 0x000000C

gUnk_08B51E44:: @ 08B51E44
	.incbin "baserom.gba", 0xB51E44, 0x0000010

gUnk_08B51E54:: @ 08B51E54
	.incbin "baserom.gba", 0xB51E54, 0x0000014

gUnk_08B51E68:: @ 08B51E68
	.incbin "baserom.gba", 0xB51E68, 0x0000018

gUnk_08B51E80:: @ 08B51E80
	.incbin "baserom.gba", 0xB51E80, 0x0000018

gUnk_08B51E98:: @ 08B51E98
	.incbin "baserom.gba", 0xB51E98, 0x000001C

gUnk_08B51EB4:: @ 08B51EB4
	.incbin "baserom.gba", 0xB51EB4, 0x000001C

gUnk_08B51ED0:: @ 08B51ED0
	.incbin "baserom.gba", 0xB51ED0, 0x0000014

gUnk_08B51EE4:: @ 08B51EE4
	.incbin "baserom.gba", 0xB51EE4, 0x0000004

gUnk_08B51EE8:: @ 08B51EE8
	.incbin "baserom.gba", 0xB51EE8, 0x0000004

gUnk_08B51EEC:: @ 08B51EEC
	.incbin "baserom.gba", 0xB51EEC, 0x000000C

gUnk_08B51EF8:: @ 08B51EF8
	.incbin "baserom.gba", 0xB51EF8, 0x000000C

gUnk_08B51F04:: @ 08B51F04
	.incbin "baserom.gba", 0xB51F04, 0x0000010

gUnk_08B51F14:: @ 08B51F14
	.incbin "baserom.gba", 0xB51F14, 0x000004C

gUnk_08B51F60:: @ 08B51F60
	.incbin "baserom.gba", 0xB51F60, 0x0000014

gUnk_08B51F74:: @ 08B51F74
	.incbin "baserom.gba", 0xB51F74, 0x0000010

gUnk_08B51F84:: @ 08B51F84
	.incbin "baserom.gba", 0xB51F84, 0x0000014

gUnk_08B51F98:: @ 08B51F98
	.incbin "baserom.gba", 0xB51F98, 0x0000018

gUnk_08B51FB0:: @ 08B51FB0
	.incbin "baserom.gba", 0xB51FB0, 0x0000010

gUnk_08B51FC0:: @ 08B51FC0
	.incbin "baserom.gba", 0xB51FC0, 0x000000C

gUnk_08B51FCC:: @ 08B51FCC
	.incbin "baserom.gba", 0xB51FCC, 0x0000010

gUnk_08B51FDC:: @ 08B51FDC
	.incbin "baserom.gba", 0xB51FDC, 0x0000014

gUnk_08B51FF0:: @ 08B51FF0
	.incbin "baserom.gba", 0xB51FF0, 0x0000010

gUnk_08B52000:: @ 08B52000
	.incbin "baserom.gba", 0xB52000, 0x0000010

gUnk_08B52010:: @ 08B52010
	.incbin "baserom.gba", 0xB52010, 0x0000010

gUnk_08B52020:: @ 08B52020
	.incbin "baserom.gba", 0xB52020, 0x0000010

gUnk_08B52030:: @ 08B52030
	.incbin "baserom.gba", 0xB52030, 0x0000014

gUnk_08B52044:: @ 08B52044
	.incbin "baserom.gba", 0xB52044, 0x0000008

gUnk_08B5204C:: @ 08B5204C
	.incbin "baserom.gba", 0xB5204C, 0x000000C

gUnk_08B52058:: @ 08B52058
	.incbin "baserom.gba", 0xB52058, 0x0000014

gUnk_08B5206C:: @ 08B5206C
	.incbin "baserom.gba", 0xB5206C, 0x000000C

gUnk_08B52078:: @ 08B52078
	.incbin "baserom.gba", 0xB52078, 0x0000008

gUnk_08B52080:: @ 08B52080
	.incbin "baserom.gba", 0xB52080, 0x0000008

gUnk_08B52088:: @ 08B52088
	.incbin "baserom.gba", 0xB52088, 0x000000C

gUnk_08B52094:: @ 08B52094
	.incbin "baserom.gba", 0xB52094, 0x000000C

gUnk_08B520A0:: @ 08B520A0
	.incbin "baserom.gba", 0xB520A0, 0x0000010

gUnk_08B520B0:: @ 08B520B0
	.incbin "baserom.gba", 0xB520B0, 0x0000010

gUnk_08B520C0:: @ 08B520C0
	.incbin "baserom.gba", 0xB520C0, 0x0000008

gUnk_08B520C8:: @ 08B520C8
	.incbin "baserom.gba", 0xB520C8, 0x0000004

gUnk_08B520CC:: @ 08B520CC
	.incbin "baserom.gba", 0xB520CC, 0x0000004

gUnk_08B520D0:: @ 08B520D0
	.incbin "baserom.gba", 0xB520D0, 0x0000014

gUnk_08B520E4:: @ 08B520E4
	.incbin "baserom.gba", 0xB520E4, 0x0000010

gUnk_08B520F4:: @ 08B520F4
	.incbin "baserom.gba", 0xB520F4, 0x000000C

gUnk_08B52100:: @ 08B52100
	.incbin "baserom.gba", 0xB52100, 0x000004C

gUnk_08B5214C:: @ 08B5214C
	.incbin "baserom.gba", 0xB5214C, 0x0000010

gUnk_08B5215C:: @ 08B5215C
	.incbin "baserom.gba", 0xB5215C, 0x000000C

gUnk_08B52168:: @ 08B52168
	.incbin "baserom.gba", 0xB52168, 0x0000010

gUnk_08B52178:: @ 08B52178
	.incbin "baserom.gba", 0xB52178, 0x0000014

gUnk_08B5218C:: @ 08B5218C
	.incbin "baserom.gba", 0xB5218C, 0x0000004

gUnk_08B52190:: @ 08B52190
	.incbin "baserom.gba", 0xB52190, 0x0000004

gUnk_08B52194:: @ 08B52194
	.incbin "baserom.gba", 0xB52194, 0x0000004

gUnk_08B52198:: @ 08B52198
	.incbin "baserom.gba", 0xB52198, 0x0000004

gUnk_08B5219C:: @ 08B5219C
	.incbin "baserom.gba", 0xB5219C, 0x0000004

gUnk_08B521A0:: @ 08B521A0
	.incbin "baserom.gba", 0xB521A0, 0x0000004

gUnk_08B521A4:: @ 08B521A4
	.incbin "baserom.gba", 0xB521A4, 0x0000004

gUnk_08B521A8:: @ 08B521A8
	.incbin "baserom.gba", 0xB521A8, 0x0000004

gUnk_08B521AC:: @ 08B521AC
	.incbin "baserom.gba", 0xB521AC, 0x0000004

gUnk_08B521B0:: @ 08B521B0
	.incbin "baserom.gba", 0xB521B0, 0x0000004

gUnk_08B521B4:: @ 08B521B4
	.incbin "baserom.gba", 0xB521B4, 0x0000008

gUnk_08B521BC:: @ 08B521BC
	.incbin "baserom.gba", 0xB521BC, 0x0000004

gUnk_08B521C0:: @ 08B521C0
	.incbin "baserom.gba", 0xB521C0, 0x0000004

gUnk_08B521C4:: @ 08B521C4
	.incbin "baserom.gba", 0xB521C4, 0x0000004

gUnk_08B521C8:: @ 08B521C8
	.incbin "baserom.gba", 0xB521C8, 0x0000004

gUnk_08B521CC:: @ 08B521CC
	.incbin "baserom.gba", 0xB521CC, 0x0000008

gUnk_08B521D4:: @ 08B521D4
	.incbin "baserom.gba", 0xB521D4, 0x0000004

gUnk_08B521D8:: @ 08B521D8
	.incbin "baserom.gba", 0xB521D8, 0x0000004

gUnk_08B521DC:: @ 08B521DC
	.incbin "baserom.gba", 0xB521DC, 0x000000C

gUnk_08B521E8:: @ 08B521E8
	.incbin "baserom.gba", 0xB521E8, 0x0000004

gUnk_08B521EC:: @ 08B521EC
	.incbin "baserom.gba", 0xB521EC, 0x0000004

gUnk_08B521F0:: @ 08B521F0
	.incbin "baserom.gba", 0xB521F0, 0x0000004

gUnk_08B521F4:: @ 08B521F4
	.incbin "baserom.gba", 0xB521F4, 0x0000004

gUnk_08B521F8:: @ 08B521F8
	.incbin "baserom.gba", 0xB521F8, 0x0000004

gUnk_08B521FC:: @ 08B521FC
	.incbin "baserom.gba", 0xB521FC, 0x0000004

gUnk_08B52200:: @ 08B52200
	.incbin "baserom.gba", 0xB52200, 0x000004C

gUnk_08B5224C:: @ 08B5224C
	.incbin "baserom.gba", 0xB5224C, 0x000001C

gUnk_08B52268:: @ 08B52268
	.incbin "baserom.gba", 0xB52268, 0x0000018

gUnk_08B52280:: @ 08B52280
	.incbin "baserom.gba", 0xB52280, 0x000001C

gUnk_08B5229C:: @ 08B5229C
	.incbin "baserom.gba", 0xB5229C, 0x0000020

gUnk_08B522BC:: @ 08B522BC
	.incbin "baserom.gba", 0xB522BC, 0x0000018

gUnk_08B522D4:: @ 08B522D4
	.incbin "baserom.gba", 0xB522D4, 0x0000014

gUnk_08B522E8:: @ 08B522E8
	.incbin "baserom.gba", 0xB522E8, 0x0000018

gUnk_08B52300:: @ 08B52300
	.incbin "baserom.gba", 0xB52300, 0x000001C

gUnk_08B5231C:: @ 08B5231C
	.incbin "baserom.gba", 0xB5231C, 0x000000C

gUnk_08B52328:: @ 08B52328
	.incbin "baserom.gba", 0xB52328, 0x000000C

gUnk_08B52334:: @ 08B52334
	.incbin "baserom.gba", 0xB52334, 0x000000C

gUnk_08B52340:: @ 08B52340
	.incbin "baserom.gba", 0xB52340, 0x000000C

gUnk_08B5234C:: @ 08B5234C
	.incbin "baserom.gba", 0xB5234C, 0x0000010

gUnk_08B5235C:: @ 08B5235C
	.incbin "baserom.gba", 0xB5235C, 0x0000010

gUnk_08B5236C:: @ 08B5236C
	.incbin "baserom.gba", 0xB5236C, 0x0000014

gUnk_08B52380:: @ 08B52380
	.incbin "baserom.gba", 0xB52380, 0x0000008

gUnk_08B52388:: @ 08B52388
	.incbin "baserom.gba", 0xB52388, 0x0000008

gUnk_08B52390:: @ 08B52390
	.incbin "baserom.gba", 0xB52390, 0x000000C

gUnk_08B5239C:: @ 08B5239C
	.incbin "baserom.gba", 0xB5239C, 0x0000010

gUnk_08B523AC:: @ 08B523AC
	.incbin "baserom.gba", 0xB523AC, 0x0000014

gUnk_08B523C0:: @ 08B523C0
	.incbin "baserom.gba", 0xB523C0, 0x0000014

gUnk_08B523D4:: @ 08B523D4
	.incbin "baserom.gba", 0xB523D4, 0x0000018

gUnk_08B523EC:: @ 08B523EC
	.incbin "baserom.gba", 0xB523EC, 0x0000018

gUnk_08B52404:: @ 08B52404
	.incbin "baserom.gba", 0xB52404, 0x0000010

gUnk_08B52414:: @ 08B52414
	.incbin "baserom.gba", 0xB52414, 0x0000004

gUnk_08B52418:: @ 08B52418
	.incbin "baserom.gba", 0xB52418, 0x0000004

gUnk_08B5241C:: @ 08B5241C
	.incbin "baserom.gba", 0xB5241C, 0x0000010

gUnk_08B5242C:: @ 08B5242C
	.incbin "baserom.gba", 0xB5242C, 0x000000C

gUnk_08B52438:: @ 08B52438
	.incbin "baserom.gba", 0xB52438, 0x000000C

gUnk_08B52444:: @ 08B52444
	.incbin "baserom.gba", 0xB52444, 0x000004C

gUnk_08B52490:: @ 08B52490
	.incbin "baserom.gba", 0xB52490, 0x0000018

gUnk_08B524A8:: @ 08B524A8
	.incbin "baserom.gba", 0xB524A8, 0x0000018

gUnk_08B524C0:: @ 08B524C0
	.incbin "baserom.gba", 0xB524C0, 0x000001C

gUnk_08B524DC:: @ 08B524DC
	.incbin "baserom.gba", 0xB524DC, 0x000001C

gUnk_08B524F8:: @ 08B524F8
	.incbin "baserom.gba", 0xB524F8, 0x0000014

gUnk_08B5250C:: @ 08B5250C
	.incbin "baserom.gba", 0xB5250C, 0x0000014

gUnk_08B52520:: @ 08B52520
	.incbin "baserom.gba", 0xB52520, 0x0000018

gUnk_08B52538:: @ 08B52538
	.incbin "baserom.gba", 0xB52538, 0x0000018

gUnk_08B52550:: @ 08B52550
	.incbin "baserom.gba", 0xB52550, 0x0000008

gUnk_08B52558:: @ 08B52558
	.incbin "baserom.gba", 0xB52558, 0x0000008

gUnk_08B52560:: @ 08B52560
	.incbin "baserom.gba", 0xB52560, 0x000000C

gUnk_08B5256C:: @ 08B5256C
	.incbin "baserom.gba", 0xB5256C, 0x000000C

gUnk_08B52578:: @ 08B52578
	.incbin "baserom.gba", 0xB52578, 0x000000C

gUnk_08B52584:: @ 08B52584
	.incbin "baserom.gba", 0xB52584, 0x000000C

gUnk_08B52590:: @ 08B52590
	.incbin "baserom.gba", 0xB52590, 0x0000010

gUnk_08B525A0:: @ 08B525A0
	.incbin "baserom.gba", 0xB525A0, 0x000000C

gUnk_08B525AC:: @ 08B525AC
	.incbin "baserom.gba", 0xB525AC, 0x0000008

gUnk_08B525B4:: @ 08B525B4
	.incbin "baserom.gba", 0xB525B4, 0x000000C

gUnk_08B525C0:: @ 08B525C0
	.incbin "baserom.gba", 0xB525C0, 0x0000010

gUnk_08B525D0:: @ 08B525D0
	.incbin "baserom.gba", 0xB525D0, 0x0000014

gUnk_08B525E4:: @ 08B525E4
	.incbin "baserom.gba", 0xB525E4, 0x0000010

gUnk_08B525F4:: @ 08B525F4
	.incbin "baserom.gba", 0xB525F4, 0x0000018

gUnk_08B5260C:: @ 08B5260C
	.incbin "baserom.gba", 0xB5260C, 0x0000014

gUnk_08B52620:: @ 08B52620
	.incbin "baserom.gba", 0xB52620, 0x0000010

gUnk_08B52630:: @ 08B52630
	.incbin "baserom.gba", 0xB52630, 0x0000004

gUnk_08B52634:: @ 08B52634
	.incbin "baserom.gba", 0xB52634, 0x0000004

gUnk_08B52638:: @ 08B52638
	.incbin "baserom.gba", 0xB52638, 0x000000C

gUnk_08B52644:: @ 08B52644
	.incbin "baserom.gba", 0xB52644, 0x000000C

gUnk_08B52650:: @ 08B52650
	.incbin "baserom.gba", 0xB52650, 0x0000008

gUnk_08B52658:: @ 08B52658
	.incbin "baserom.gba", 0xB52658, 0x000004C

gUnk_08B526A4:: @ 08B526A4
	.incbin "baserom.gba", 0xB526A4, 0x0000014

gUnk_08B526B8:: @ 08B526B8
	.incbin "baserom.gba", 0xB526B8, 0x0000014

gUnk_08B526CC:: @ 08B526CC
	.incbin "baserom.gba", 0xB526CC, 0x0000018

gUnk_08B526E4:: @ 08B526E4
	.incbin "baserom.gba", 0xB526E4, 0x0000018

gUnk_08B526FC:: @ 08B526FC
	.incbin "baserom.gba", 0xB526FC, 0x0000010

gUnk_08B5270C:: @ 08B5270C
	.incbin "baserom.gba", 0xB5270C, 0x0000010

gUnk_08B5271C:: @ 08B5271C
	.incbin "baserom.gba", 0xB5271C, 0x0000014

gUnk_08B52730:: @ 08B52730
	.incbin "baserom.gba", 0xB52730, 0x0000014

gUnk_08B52744:: @ 08B52744
	.incbin "baserom.gba", 0xB52744, 0x000000C

gUnk_08B52750:: @ 08B52750
	.incbin "baserom.gba", 0xB52750, 0x000000C

gUnk_08B5275C:: @ 08B5275C
	.incbin "baserom.gba", 0xB5275C, 0x0000010

gUnk_08B5276C:: @ 08B5276C
	.incbin "baserom.gba", 0xB5276C, 0x0000010

gUnk_08B5277C:: @ 08B5277C
	.incbin "baserom.gba", 0xB5277C, 0x0000010

gUnk_08B5278C:: @ 08B5278C
	.incbin "baserom.gba", 0xB5278C, 0x0000008

gUnk_08B52794:: @ 08B52794
	.incbin "baserom.gba", 0xB52794, 0x000000C

gUnk_08B527A0:: @ 08B527A0
	.incbin "baserom.gba", 0xB527A0, 0x0000010

gUnk_08B527B0:: @ 08B527B0
	.incbin "baserom.gba", 0xB527B0, 0x000000C

gUnk_08B527BC:: @ 08B527BC
	.incbin "baserom.gba", 0xB527BC, 0x0000008

gUnk_08B527C4:: @ 08B527C4
	.incbin "baserom.gba", 0xB527C4, 0x000000C

gUnk_08B527D0:: @ 08B527D0
	.incbin "baserom.gba", 0xB527D0, 0x0000010

gUnk_08B527E0:: @ 08B527E0
	.incbin "baserom.gba", 0xB527E0, 0x000000C

gUnk_08B527EC:: @ 08B527EC
	.incbin "baserom.gba", 0xB527EC, 0x0000014

gUnk_08B52800:: @ 08B52800
	.incbin "baserom.gba", 0xB52800, 0x0000010

gUnk_08B52810:: @ 08B52810
	.incbin "baserom.gba", 0xB52810, 0x000000C

gUnk_08B5281C:: @ 08B5281C
	.incbin "baserom.gba", 0xB5281C, 0x0000004

gUnk_08B52820:: @ 08B52820
	.incbin "baserom.gba", 0xB52820, 0x0000004

gUnk_08B52824:: @ 08B52824
	.incbin "baserom.gba", 0xB52824, 0x0000010

gUnk_08B52834:: @ 08B52834
	.incbin "baserom.gba", 0xB52834, 0x0000010

gUnk_08B52844:: @ 08B52844
	.incbin "baserom.gba", 0xB52844, 0x0000008

gUnk_08B5284C:: @ 08B5284C
	.incbin "baserom.gba", 0xB5284C, 0x000004C

gUnk_08B52898:: @ 08B52898
	.incbin "baserom.gba", 0xB52898, 0x0000010

gUnk_08B528A8:: @ 08B528A8
	.incbin "baserom.gba", 0xB528A8, 0x0000010

gUnk_08B528B8:: @ 08B528B8
	.incbin "baserom.gba", 0xB528B8, 0x0000014

gUnk_08B528CC:: @ 08B528CC
	.incbin "baserom.gba", 0xB528CC, 0x0000014

gUnk_08B528E0:: @ 08B528E0
	.incbin "baserom.gba", 0xB528E0, 0x000000C

gUnk_08B528EC:: @ 08B528EC
	.incbin "baserom.gba", 0xB528EC, 0x000000C

gUnk_08B528F8:: @ 08B528F8
	.incbin "baserom.gba", 0xB528F8, 0x0000010

gUnk_08B52908:: @ 08B52908
	.incbin "baserom.gba", 0xB52908, 0x0000010

gUnk_08B52918:: @ 08B52918
	.incbin "baserom.gba", 0xB52918, 0x0000004

gUnk_08B5291C:: @ 08B5291C
	.incbin "baserom.gba", 0xB5291C, 0x0000004

gUnk_08B52920:: @ 08B52920
	.incbin "baserom.gba", 0xB52920, 0x0000004

gUnk_08B52924:: @ 08B52924
	.incbin "baserom.gba", 0xB52924, 0x0000004

gUnk_08B52928:: @ 08B52928
	.incbin "baserom.gba", 0xB52928, 0x0000004

gUnk_08B5292C:: @ 08B5292C
	.incbin "baserom.gba", 0xB5292C, 0x0000004

gUnk_08B52930:: @ 08B52930
	.incbin "baserom.gba", 0xB52930, 0x0000008

gUnk_08B52938:: @ 08B52938
	.incbin "baserom.gba", 0xB52938, 0x0000004

gUnk_08B5293C:: @ 08B5293C
	.incbin "baserom.gba", 0xB5293C, 0x0000004

gUnk_08B52940:: @ 08B52940
	.incbin "baserom.gba", 0xB52940, 0x0000004

gUnk_08B52944:: @ 08B52944
	.incbin "baserom.gba", 0xB52944, 0x0000008

gUnk_08B5294C:: @ 08B5294C
	.incbin "baserom.gba", 0xB5294C, 0x000000C

gUnk_08B52958:: @ 08B52958
	.incbin "baserom.gba", 0xB52958, 0x0000008

gUnk_08B52960:: @ 08B52960
	.incbin "baserom.gba", 0xB52960, 0x0000010

gUnk_08B52970:: @ 08B52970
	.incbin "baserom.gba", 0xB52970, 0x000000C

gUnk_08B5297C:: @ 08B5297C
	.incbin "baserom.gba", 0xB5297C, 0x0000004

gUnk_08B52980:: @ 08B52980
	.incbin "baserom.gba", 0xB52980, 0x0000004

gUnk_08B52984:: @ 08B52984
	.incbin "baserom.gba", 0xB52984, 0x0000004

gUnk_08B52988:: @ 08B52988
	.incbin "baserom.gba", 0xB52988, 0x0000004

gUnk_08B5298C:: @ 08B5298C
	.incbin "baserom.gba", 0xB5298C, 0x0000004

gUnk_08B52990:: @ 08B52990
	.incbin "baserom.gba", 0xB52990, 0x0000004

gUnk_08B52994:: @ 08B52994
	.incbin "baserom.gba", 0xB52994, 0x000004C

gUnk_08B529E0:: @ 08B529E0
	.incbin "baserom.gba", 0xB529E0, 0x000000C

gUnk_08B529EC:: @ 08B529EC
	.incbin "baserom.gba", 0xB529EC, 0x000000C

gUnk_08B529F8:: @ 08B529F8
	.incbin "baserom.gba", 0xB529F8, 0x0000010

gUnk_08B52A08:: @ 08B52A08
	.incbin "baserom.gba", 0xB52A08, 0x0000010

gUnk_08B52A18:: @ 08B52A18
	.incbin "baserom.gba", 0xB52A18, 0x0000004

gUnk_08B52A1C:: @ 08B52A1C
	.incbin "baserom.gba", 0xB52A1C, 0x0000004

gUnk_08B52A20:: @ 08B52A20
	.incbin "baserom.gba", 0xB52A20, 0x0000004

gUnk_08B52A24:: @ 08B52A24
	.incbin "baserom.gba", 0xB52A24, 0x0000004

gUnk_08B52A28:: @ 08B52A28
	.incbin "baserom.gba", 0xB52A28, 0x0000004

gUnk_08B52A2C:: @ 08B52A2C
	.incbin "baserom.gba", 0xB52A2C, 0x0000004

gUnk_08B52A30:: @ 08B52A30
	.incbin "baserom.gba", 0xB52A30, 0x0000004

gUnk_08B52A34:: @ 08B52A34
	.incbin "baserom.gba", 0xB52A34, 0x0000004

gUnk_08B52A38:: @ 08B52A38
	.incbin "baserom.gba", 0xB52A38, 0x0000004

gUnk_08B52A3C:: @ 08B52A3C
	.incbin "baserom.gba", 0xB52A3C, 0x0000004

gUnk_08B52A40:: @ 08B52A40
	.incbin "baserom.gba", 0xB52A40, 0x0000004

gUnk_08B52A44:: @ 08B52A44
	.incbin "baserom.gba", 0xB52A44, 0x0000004

gUnk_08B52A48:: @ 08B52A48
	.incbin "baserom.gba", 0xB52A48, 0x0000004

gUnk_08B52A4C:: @ 08B52A4C
	.incbin "baserom.gba", 0xB52A4C, 0x0000004

gUnk_08B52A50:: @ 08B52A50
	.incbin "baserom.gba", 0xB52A50, 0x0000004

gUnk_08B52A54:: @ 08B52A54
	.incbin "baserom.gba", 0xB52A54, 0x0000008

gUnk_08B52A5C:: @ 08B52A5C
	.incbin "baserom.gba", 0xB52A5C, 0x0000004

gUnk_08B52A60:: @ 08B52A60
	.incbin "baserom.gba", 0xB52A60, 0x0000004

gUnk_08B52A64:: @ 08B52A64
	.incbin "baserom.gba", 0xB52A64, 0x0000008

gUnk_08B52A6C:: @ 08B52A6C
	.incbin "baserom.gba", 0xB52A6C, 0x0000004

gUnk_08B52A70:: @ 08B52A70
	.incbin "baserom.gba", 0xB52A70, 0x0000004

gUnk_08B52A74:: @ 08B52A74
	.incbin "baserom.gba", 0xB52A74, 0x0000004

gUnk_08B52A78:: @ 08B52A78
	.incbin "baserom.gba", 0xB52A78, 0x0000004

gUnk_08B52A7C:: @ 08B52A7C
	.incbin "baserom.gba", 0xB52A7C, 0x0000004

gUnk_08B52A80:: @ 08B52A80
	.incbin "baserom.gba", 0xB52A80, 0x0000004

gUnk_08B52A84:: @ 08B52A84
	.incbin "baserom.gba", 0xB52A84, 0x000004C

gUnk_08B52AD0:: @ 08B52AD0
	.incbin "baserom.gba", 0xB52AD0, 0x0000004

gUnk_08B52AD4:: @ 08B52AD4
	.incbin "baserom.gba", 0xB52AD4, 0x0000004

gUnk_08B52AD8:: @ 08B52AD8
	.incbin "baserom.gba", 0xB52AD8, 0x0000004

gUnk_08B52ADC:: @ 08B52ADC
	.incbin "baserom.gba", 0xB52ADC, 0x0000004

gUnk_08B52AE0:: @ 08B52AE0
	.incbin "baserom.gba", 0xB52AE0, 0x000000C

gUnk_08B52AEC:: @ 08B52AEC
	.incbin "baserom.gba", 0xB52AEC, 0x0000008

gUnk_08B52AF4:: @ 08B52AF4
	.incbin "baserom.gba", 0xB52AF4, 0x000000C

gUnk_08B52B00:: @ 08B52B00
	.incbin "baserom.gba", 0xB52B00, 0x0000010

gUnk_08B52B10:: @ 08B52B10
	.incbin "baserom.gba", 0xB52B10, 0x0000004

gUnk_08B52B14:: @ 08B52B14
	.incbin "baserom.gba", 0xB52B14, 0x0000004

gUnk_08B52B18:: @ 08B52B18
	.incbin "baserom.gba", 0xB52B18, 0x0000004

gUnk_08B52B1C:: @ 08B52B1C
	.incbin "baserom.gba", 0xB52B1C, 0x0000004

gUnk_08B52B20:: @ 08B52B20
	.incbin "baserom.gba", 0xB52B20, 0x0000004

gUnk_08B52B24:: @ 08B52B24
	.incbin "baserom.gba", 0xB52B24, 0x0000004

gUnk_08B52B28:: @ 08B52B28
	.incbin "baserom.gba", 0xB52B28, 0x0000004

gUnk_08B52B2C:: @ 08B52B2C
	.incbin "baserom.gba", 0xB52B2C, 0x0000004

gUnk_08B52B30:: @ 08B52B30
	.incbin "baserom.gba", 0xB52B30, 0x0000004

gUnk_08B52B34:: @ 08B52B34
	.incbin "baserom.gba", 0xB52B34, 0x0000004

gUnk_08B52B38:: @ 08B52B38
	.incbin "baserom.gba", 0xB52B38, 0x0000004

gUnk_08B52B3C:: @ 08B52B3C
	.incbin "baserom.gba", 0xB52B3C, 0x0000004

gUnk_08B52B40:: @ 08B52B40
	.incbin "baserom.gba", 0xB52B40, 0x0000008

gUnk_08B52B48:: @ 08B52B48
	.incbin "baserom.gba", 0xB52B48, 0x000000C

gUnk_08B52B54:: @ 08B52B54
	.incbin "baserom.gba", 0xB52B54, 0x0000004

gUnk_08B52B58:: @ 08B52B58
	.incbin "baserom.gba", 0xB52B58, 0x0000004

gUnk_08B52B5C:: @ 08B52B5C
	.incbin "baserom.gba", 0xB52B5C, 0x0000004

gUnk_08B52B60:: @ 08B52B60
	.incbin "baserom.gba", 0xB52B60, 0x0000004

gUnk_08B52B64:: @ 08B52B64
	.incbin "baserom.gba", 0xB52B64, 0x0000004

gUnk_08B52B68:: @ 08B52B68
	.incbin "baserom.gba", 0xB52B68, 0x0000004

gUnk_08B52B6C:: @ 08B52B6C
	.incbin "baserom.gba", 0xB52B6C, 0x0000004

gUnk_08B52B70:: @ 08B52B70
	.incbin "baserom.gba", 0xB52B70, 0x000004C

gUnk_08B52BBC:: @ 08B52BBC
	.incbin "baserom.gba", 0xB52BBC, 0x0000004

gUnk_08B52BC0:: @ 08B52BC0
	.incbin "baserom.gba", 0xB52BC0, 0x0000004

gUnk_08B52BC4:: @ 08B52BC4
	.incbin "baserom.gba", 0xB52BC4, 0x0000004

gUnk_08B52BC8:: @ 08B52BC8
	.incbin "baserom.gba", 0xB52BC8, 0x0000004

gUnk_08B52BCC:: @ 08B52BCC
	.incbin "baserom.gba", 0xB52BCC, 0x0000008

gUnk_08B52BD4:: @ 08B52BD4
	.incbin "baserom.gba", 0xB52BD4, 0x0000004

gUnk_08B52BD8:: @ 08B52BD8
	.incbin "baserom.gba", 0xB52BD8, 0x000000C

gUnk_08B52BE4:: @ 08B52BE4
	.incbin "baserom.gba", 0xB52BE4, 0x000000C

gUnk_08B52BF0:: @ 08B52BF0
	.incbin "baserom.gba", 0xB52BF0, 0x0000004

gUnk_08B52BF4:: @ 08B52BF4
	.incbin "baserom.gba", 0xB52BF4, 0x0000004

gUnk_08B52BF8:: @ 08B52BF8
	.incbin "baserom.gba", 0xB52BF8, 0x0000004

gUnk_08B52BFC:: @ 08B52BFC
	.incbin "baserom.gba", 0xB52BFC, 0x0000004

gUnk_08B52C00:: @ 08B52C00
	.incbin "baserom.gba", 0xB52C00, 0x0000004

gUnk_08B52C04:: @ 08B52C04
	.incbin "baserom.gba", 0xB52C04, 0x0000004

gUnk_08B52C08:: @ 08B52C08
	.incbin "baserom.gba", 0xB52C08, 0x0000004

gUnk_08B52C0C:: @ 08B52C0C
	.incbin "baserom.gba", 0xB52C0C, 0x0000004

gUnk_08B52C10:: @ 08B52C10
	.incbin "baserom.gba", 0xB52C10, 0x0000004

gUnk_08B52C14:: @ 08B52C14
	.incbin "baserom.gba", 0xB52C14, 0x0000004

gUnk_08B52C18:: @ 08B52C18
	.incbin "baserom.gba", 0xB52C18, 0x0000004

gUnk_08B52C1C:: @ 08B52C1C
	.incbin "baserom.gba", 0xB52C1C, 0x0000004

gUnk_08B52C20:: @ 08B52C20
	.incbin "baserom.gba", 0xB52C20, 0x0000004

gUnk_08B52C24:: @ 08B52C24
	.incbin "baserom.gba", 0xB52C24, 0x0000008

gUnk_08B52C2C:: @ 08B52C2C
	.incbin "baserom.gba", 0xB52C2C, 0x0000004

gUnk_08B52C30:: @ 08B52C30
	.incbin "baserom.gba", 0xB52C30, 0x0000004

gUnk_08B52C34:: @ 08B52C34
	.incbin "baserom.gba", 0xB52C34, 0x0000004

gUnk_08B52C38:: @ 08B52C38
	.incbin "baserom.gba", 0xB52C38, 0x0000004

gUnk_08B52C3C:: @ 08B52C3C
	.incbin "baserom.gba", 0xB52C3C, 0x0000004

gUnk_08B52C40:: @ 08B52C40
	.incbin "baserom.gba", 0xB52C40, 0x0000004

gUnk_08B52C44:: @ 08B52C44
	.incbin "baserom.gba", 0xB52C44, 0x0000004

gUnk_08B52C48:: @ 08B52C48
	.incbin "baserom.gba", 0xB52C48, 0x000004C

gUnk_08B52C94:: @ 08B52C94
	.incbin "baserom.gba", 0xB52C94, 0x000000C

gUnk_08B52CA0:: @ 08B52CA0
	.incbin "baserom.gba", 0xB52CA0, 0x0000008

gUnk_08B52CA8:: @ 08B52CA8
	.incbin "baserom.gba", 0xB52CA8, 0x000000C

gUnk_08B52CB4:: @ 08B52CB4
	.incbin "baserom.gba", 0xB52CB4, 0x0000010

gUnk_08B52CC4:: @ 08B52CC4
	.incbin "baserom.gba", 0xB52CC4, 0x0000004

gUnk_08B52CC8:: @ 08B52CC8
	.incbin "baserom.gba", 0xB52CC8, 0x0000004

gUnk_08B52CCC:: @ 08B52CCC
	.incbin "baserom.gba", 0xB52CCC, 0x0000004

gUnk_08B52CD0:: @ 08B52CD0
	.incbin "baserom.gba", 0xB52CD0, 0x0000004

gUnk_08B52CD4:: @ 08B52CD4
	.incbin "baserom.gba", 0xB52CD4, 0x0000004

gUnk_08B52CD8:: @ 08B52CD8
	.incbin "baserom.gba", 0xB52CD8, 0x0000004

gUnk_08B52CDC:: @ 08B52CDC
	.incbin "baserom.gba", 0xB52CDC, 0x0000004

gUnk_08B52CE0:: @ 08B52CE0
	.incbin "baserom.gba", 0xB52CE0, 0x0000004

gUnk_08B52CE4:: @ 08B52CE4
	.incbin "baserom.gba", 0xB52CE4, 0x0000004

gUnk_08B52CE8:: @ 08B52CE8
	.incbin "baserom.gba", 0xB52CE8, 0x0000004

gUnk_08B52CEC:: @ 08B52CEC
	.incbin "baserom.gba", 0xB52CEC, 0x0000004

gUnk_08B52CF0:: @ 08B52CF0
	.incbin "baserom.gba", 0xB52CF0, 0x0000004

gUnk_08B52CF4:: @ 08B52CF4
	.incbin "baserom.gba", 0xB52CF4, 0x0000004

gUnk_08B52CF8:: @ 08B52CF8
	.incbin "baserom.gba", 0xB52CF8, 0x0000004

gUnk_08B52CFC:: @ 08B52CFC
	.incbin "baserom.gba", 0xB52CFC, 0x0000004

gUnk_08B52D00:: @ 08B52D00
	.incbin "baserom.gba", 0xB52D00, 0x0000004

gUnk_08B52D04:: @ 08B52D04
	.incbin "baserom.gba", 0xB52D04, 0x0000004

gUnk_08B52D08:: @ 08B52D08
	.incbin "baserom.gba", 0xB52D08, 0x0000004

gUnk_08B52D0C:: @ 08B52D0C
	.incbin "baserom.gba", 0xB52D0C, 0x0000008

gUnk_08B52D14:: @ 08B52D14
	.incbin "baserom.gba", 0xB52D14, 0x0000004

gUnk_08B52D18:: @ 08B52D18
	.incbin "baserom.gba", 0xB52D18, 0x0000004

gUnk_08B52D1C:: @ 08B52D1C
	.incbin "baserom.gba", 0xB52D1C, 0x0000004

gUnk_08B52D20:: @ 08B52D20
	.incbin "baserom.gba", 0xB52D20, 0x0000004

gUnk_08B52D24:: @ 08B52D24
	.incbin "baserom.gba", 0xB52D24, 0x0000004

gUnk_08B52D28:: @ 08B52D28
	.incbin "baserom.gba", 0xB52D28, 0x0000004

gUnk_08B52D2C:: @ 08B52D2C
	.incbin "baserom.gba", 0xB52D2C, 0x000004C

gUnk_08B52D78:: @ 08B52D78
	.incbin "baserom.gba", 0xB52D78, 0x0000014

gUnk_08B52D8C:: @ 08B52D8C
	.incbin "baserom.gba", 0xB52D8C, 0x0000014

gUnk_08B52DA0:: @ 08B52DA0
	.incbin "baserom.gba", 0xB52DA0, 0x0000018

gUnk_08B52DB8:: @ 08B52DB8
	.incbin "baserom.gba", 0xB52DB8, 0x0000018

gUnk_08B52DD0:: @ 08B52DD0
	.incbin "baserom.gba", 0xB52DD0, 0x0000010

gUnk_08B52DE0:: @ 08B52DE0
	.incbin "baserom.gba", 0xB52DE0, 0x0000010

gUnk_08B52DF0:: @ 08B52DF0
	.incbin "baserom.gba", 0xB52DF0, 0x0000014

gUnk_08B52E04:: @ 08B52E04
	.incbin "baserom.gba", 0xB52E04, 0x0000014

gUnk_08B52E18:: @ 08B52E18
	.incbin "baserom.gba", 0xB52E18, 0x0000010

gUnk_08B52E28:: @ 08B52E28
	.incbin "baserom.gba", 0xB52E28, 0x0000010

gUnk_08B52E38:: @ 08B52E38
	.incbin "baserom.gba", 0xB52E38, 0x0000014

gUnk_08B52E4C:: @ 08B52E4C
	.incbin "baserom.gba", 0xB52E4C, 0x0000014

gUnk_08B52E60:: @ 08B52E60
	.incbin "baserom.gba", 0xB52E60, 0x0000014

gUnk_08B52E74:: @ 08B52E74
	.incbin "baserom.gba", 0xB52E74, 0x0000008

gUnk_08B52E7C:: @ 08B52E7C
	.incbin "baserom.gba", 0xB52E7C, 0x000000C

gUnk_08B52E88:: @ 08B52E88
	.incbin "baserom.gba", 0xB52E88, 0x0000014

gUnk_08B52E9C:: @ 08B52E9C
	.incbin "baserom.gba", 0xB52E9C, 0x0000010

gUnk_08B52EAC:: @ 08B52EAC
	.incbin "baserom.gba", 0xB52EAC, 0x000000C

gUnk_08B52EB8:: @ 08B52EB8
	.incbin "baserom.gba", 0xB52EB8, 0x000000C

gUnk_08B52EC4:: @ 08B52EC4
	.incbin "baserom.gba", 0xB52EC4, 0x0000010

gUnk_08B52ED4:: @ 08B52ED4
	.incbin "baserom.gba", 0xB52ED4, 0x000000C

gUnk_08B52EE0:: @ 08B52EE0
	.incbin "baserom.gba", 0xB52EE0, 0x0000014

gUnk_08B52EF4:: @ 08B52EF4
	.incbin "baserom.gba", 0xB52EF4, 0x0000010

gUnk_08B52F04:: @ 08B52F04
	.incbin "baserom.gba", 0xB52F04, 0x0000008

gUnk_08B52F0C:: @ 08B52F0C
	.incbin "baserom.gba", 0xB52F0C, 0x0000004

gUnk_08B52F10:: @ 08B52F10
	.incbin "baserom.gba", 0xB52F10, 0x0000004

gUnk_08B52F14:: @ 08B52F14
	.incbin "baserom.gba", 0xB52F14, 0x0000014

gUnk_08B52F28:: @ 08B52F28
	.incbin "baserom.gba", 0xB52F28, 0x0000014

gUnk_08B52F3C:: @ 08B52F3C
	.incbin "baserom.gba", 0xB52F3C, 0x000000C

gUnk_08B52F48:: @ 08B52F48
	.incbin "baserom.gba", 0xB52F48, 0x000004C

gUnk_08B52F94:: @ 08B52F94
	.incbin "baserom.gba", 0xB52F94, 0x0000020

gUnk_08B52FB4:: @ 08B52FB4
	.incbin "baserom.gba", 0xB52FB4, 0x0000020

gUnk_08B52FD4:: @ 08B52FD4
	.incbin "baserom.gba", 0xB52FD4, 0x0000024

gUnk_08B52FF8:: @ 08B52FF8
	.incbin "baserom.gba", 0xB52FF8, 0x0000024

gUnk_08B5301C:: @ 08B5301C
	.incbin "baserom.gba", 0xB5301C, 0x000001C

gUnk_08B53038:: @ 08B53038
	.incbin "baserom.gba", 0xB53038, 0x000001C

gUnk_08B53054:: @ 08B53054
	.incbin "baserom.gba", 0xB53054, 0x0000020

gUnk_08B53074:: @ 08B53074
	.incbin "baserom.gba", 0xB53074, 0x0000020

gUnk_08B53094:: @ 08B53094
	.incbin "baserom.gba", 0xB53094, 0x000000C

gUnk_08B530A0:: @ 08B530A0
	.incbin "baserom.gba", 0xB530A0, 0x0000010

gUnk_08B530B0:: @ 08B530B0
	.incbin "baserom.gba", 0xB530B0, 0x0000010

gUnk_08B530C0:: @ 08B530C0
	.incbin "baserom.gba", 0xB530C0, 0x000000C

gUnk_08B530CC:: @ 08B530CC
	.incbin "baserom.gba", 0xB530CC, 0x000000C

gUnk_08B530D8:: @ 08B530D8
	.incbin "baserom.gba", 0xB530D8, 0x0000014

gUnk_08B530EC:: @ 08B530EC
	.incbin "baserom.gba", 0xB530EC, 0x0000018

gUnk_08B53104:: @ 08B53104
	.incbin "baserom.gba", 0xB53104, 0x000000C

gUnk_08B53110:: @ 08B53110
	.incbin "baserom.gba", 0xB53110, 0x0000010

gUnk_08B53120:: @ 08B53120
	.incbin "baserom.gba", 0xB53120, 0x0000014

gUnk_08B53134:: @ 08B53134
	.incbin "baserom.gba", 0xB53134, 0x0000018

gUnk_08B5314C:: @ 08B5314C
	.incbin "baserom.gba", 0xB5314C, 0x000001C

gUnk_08B53168:: @ 08B53168
	.incbin "baserom.gba", 0xB53168, 0x0000018

gUnk_08B53180:: @ 08B53180
	.incbin "baserom.gba", 0xB53180, 0x0000020

gUnk_08B531A0:: @ 08B531A0
	.incbin "baserom.gba", 0xB531A0, 0x000001C

gUnk_08B531BC:: @ 08B531BC
	.incbin "baserom.gba", 0xB531BC, 0x0000018

gUnk_08B531D4:: @ 08B531D4
	.incbin "baserom.gba", 0xB531D4, 0x0000008

gUnk_08B531DC:: @ 08B531DC
	.incbin "baserom.gba", 0xB531DC, 0x0000008

gUnk_08B531E4:: @ 08B531E4
	.incbin "baserom.gba", 0xB531E4, 0x0000010

gUnk_08B531F4:: @ 08B531F4
	.incbin "baserom.gba", 0xB531F4, 0x0000010

gUnk_08B53204:: @ 08B53204
	.incbin "baserom.gba", 0xB53204, 0x0000010

gUnk_08B53214:: @ 08B53214
	.incbin "baserom.gba", 0xB53214, 0x000004C

gUnk_08B53260:: @ 08B53260
	.incbin "baserom.gba", 0xB53260, 0x0000020

gUnk_08B53280:: @ 08B53280
	.incbin "baserom.gba", 0xB53280, 0x000001C

gUnk_08B5329C:: @ 08B5329C
	.incbin "baserom.gba", 0xB5329C, 0x0000020

gUnk_08B532BC:: @ 08B532BC
	.incbin "baserom.gba", 0xB532BC, 0x0000024

gUnk_08B532E0:: @ 08B532E0
	.incbin "baserom.gba", 0xB532E0, 0x000001C

gUnk_08B532FC:: @ 08B532FC
	.incbin "baserom.gba", 0xB532FC, 0x0000018

gUnk_08B53314:: @ 08B53314
	.incbin "baserom.gba", 0xB53314, 0x000001C

gUnk_08B53330:: @ 08B53330
	.incbin "baserom.gba", 0xB53330, 0x0000020

gUnk_08B53350:: @ 08B53350
	.incbin "baserom.gba", 0xB53350, 0x000000C

gUnk_08B5335C:: @ 08B5335C
	.incbin "baserom.gba", 0xB5335C, 0x0000010

gUnk_08B5336C:: @ 08B5336C
	.incbin "baserom.gba", 0xB5336C, 0x000000C

gUnk_08B53378:: @ 08B53378
	.incbin "baserom.gba", 0xB53378, 0x0000008

gUnk_08B53380:: @ 08B53380
	.incbin "baserom.gba", 0xB53380, 0x000000C

gUnk_08B5338C:: @ 08B5338C
	.incbin "baserom.gba", 0xB5338C, 0x0000014

gUnk_08B533A0:: @ 08B533A0
	.incbin "baserom.gba", 0xB533A0, 0x0000018

gUnk_08B533B8:: @ 08B533B8
	.incbin "baserom.gba", 0xB533B8, 0x000000C

gUnk_08B533C4:: @ 08B533C4
	.incbin "baserom.gba", 0xB533C4, 0x000000C

gUnk_08B533D0:: @ 08B533D0
	.incbin "baserom.gba", 0xB533D0, 0x0000010

gUnk_08B533E0:: @ 08B533E0
	.incbin "baserom.gba", 0xB533E0, 0x0000014

gUnk_08B533F4:: @ 08B533F4
	.incbin "baserom.gba", 0xB533F4, 0x0000018

gUnk_08B5340C:: @ 08B5340C
	.incbin "baserom.gba", 0xB5340C, 0x0000018

gUnk_08B53424:: @ 08B53424
	.incbin "baserom.gba", 0xB53424, 0x000001C

gUnk_08B53440:: @ 08B53440
	.incbin "baserom.gba", 0xB53440, 0x000001C

gUnk_08B5345C:: @ 08B5345C
	.incbin "baserom.gba", 0xB5345C, 0x0000014

gUnk_08B53470:: @ 08B53470
	.incbin "baserom.gba", 0xB53470, 0x0000004

gUnk_08B53474:: @ 08B53474
	.incbin "baserom.gba", 0xB53474, 0x0000008

gUnk_08B5347C:: @ 08B5347C
	.incbin "baserom.gba", 0xB5347C, 0x0000010

gUnk_08B5348C:: @ 08B5348C
	.incbin "baserom.gba", 0xB5348C, 0x000000C

gUnk_08B53498:: @ 08B53498
	.incbin "baserom.gba", 0xB53498, 0x0000010

gUnk_08B534A8:: @ 08B534A8
	.incbin "baserom.gba", 0xB534A8, 0x000004C

gUnk_08B534F4:: @ 08B534F4
	.incbin "baserom.gba", 0xB534F4, 0x0000004

gUnk_08B534F8:: @ 08B534F8
	.incbin "baserom.gba", 0xB534F8, 0x0000004

gUnk_08B534FC:: @ 08B534FC
	.incbin "baserom.gba", 0xB534FC, 0x0000004

gUnk_08B53500:: @ 08B53500
	.incbin "baserom.gba", 0xB53500, 0x0000004

gUnk_08B53504:: @ 08B53504
	.incbin "baserom.gba", 0xB53504, 0x0000004

gUnk_08B53508:: @ 08B53508
	.incbin "baserom.gba", 0xB53508, 0x0000004

gUnk_08B5350C:: @ 08B5350C
	.incbin "baserom.gba", 0xB5350C, 0x0000004

gUnk_08B53510:: @ 08B53510
	.incbin "baserom.gba", 0xB53510, 0x0000004

gUnk_08B53514:: @ 08B53514
	.incbin "baserom.gba", 0xB53514, 0x0000004

gUnk_08B53518:: @ 08B53518
	.incbin "baserom.gba", 0xB53518, 0x0000004

gUnk_08B5351C:: @ 08B5351C
	.incbin "baserom.gba", 0xB5351C, 0x0000004

gUnk_08B53520:: @ 08B53520
	.incbin "baserom.gba", 0xB53520, 0x0000004

gUnk_08B53524:: @ 08B53524
	.incbin "baserom.gba", 0xB53524, 0x0000004

gUnk_08B53528:: @ 08B53528
	.incbin "baserom.gba", 0xB53528, 0x0000004

gUnk_08B5352C:: @ 08B5352C
	.incbin "baserom.gba", 0xB5352C, 0x0000004

gUnk_08B53530:: @ 08B53530
	.incbin "baserom.gba", 0xB53530, 0x0000004

gUnk_08B53534:: @ 08B53534
	.incbin "baserom.gba", 0xB53534, 0x0000004

gUnk_08B53538:: @ 08B53538
	.incbin "baserom.gba", 0xB53538, 0x0000004

gUnk_08B5353C:: @ 08B5353C
	.incbin "baserom.gba", 0xB5353C, 0x0000004

gUnk_08B53540:: @ 08B53540
	.incbin "baserom.gba", 0xB53540, 0x0000004

gUnk_08B53544:: @ 08B53544
	.incbin "baserom.gba", 0xB53544, 0x0000004

gUnk_08B53548:: @ 08B53548
	.incbin "baserom.gba", 0xB53548, 0x0000004

gUnk_08B5354C:: @ 08B5354C
	.incbin "baserom.gba", 0xB5354C, 0x0000004

gUnk_08B53550:: @ 08B53550
	.incbin "baserom.gba", 0xB53550, 0x0000004

gUnk_08B53554:: @ 08B53554
	.incbin "baserom.gba", 0xB53554, 0x0000004

gUnk_08B53558:: @ 08B53558
	.incbin "baserom.gba", 0xB53558, 0x0000004

gUnk_08B5355C:: @ 08B5355C
	.incbin "baserom.gba", 0xB5355C, 0x0000008

gUnk_08B53564:: @ 08B53564
	.incbin "baserom.gba", 0xB53564, 0x0000004

gUnk_08B53568:: @ 08B53568
	.incbin "baserom.gba", 0xB53568, 0x0000004

gUnk_08B5356C:: @ 08B5356C
	.incbin "baserom.gba", 0xB5356C, 0x000004C

gUnk_08B535B8:: @ 08B535B8
	.incbin "baserom.gba", 0xB535B8, 0x000001C

gUnk_08B535D4:: @ 08B535D4
	.incbin "baserom.gba", 0xB535D4, 0x000001C

gUnk_08B535F0:: @ 08B535F0
	.incbin "baserom.gba", 0xB535F0, 0x0000020

gUnk_08B53610:: @ 08B53610
	.incbin "baserom.gba", 0xB53610, 0x0000020

gUnk_08B53630:: @ 08B53630
	.incbin "baserom.gba", 0xB53630, 0x0000018

gUnk_08B53648:: @ 08B53648
	.incbin "baserom.gba", 0xB53648, 0x0000018

gUnk_08B53660:: @ 08B53660
	.incbin "baserom.gba", 0xB53660, 0x000001C

gUnk_08B5367C:: @ 08B5367C
	.incbin "baserom.gba", 0xB5367C, 0x000001C

gUnk_08B53698:: @ 08B53698
	.incbin "baserom.gba", 0xB53698, 0x0000008

gUnk_08B536A0:: @ 08B536A0
	.incbin "baserom.gba", 0xB536A0, 0x000000C

gUnk_08B536AC:: @ 08B536AC
	.incbin "baserom.gba", 0xB536AC, 0x000000C

gUnk_08B536B8:: @ 08B536B8
	.incbin "baserom.gba", 0xB536B8, 0x000000C

gUnk_08B536C4:: @ 08B536C4
	.incbin "baserom.gba", 0xB536C4, 0x0000008

gUnk_08B536CC:: @ 08B536CC
	.incbin "baserom.gba", 0xB536CC, 0x0000010

gUnk_08B536DC:: @ 08B536DC
	.incbin "baserom.gba", 0xB536DC, 0x0000014

gUnk_08B536F0:: @ 08B536F0
	.incbin "baserom.gba", 0xB536F0, 0x000000C

gUnk_08B536FC:: @ 08B536FC
	.incbin "baserom.gba", 0xB536FC, 0x000000C

gUnk_08B53708:: @ 08B53708
	.incbin "baserom.gba", 0xB53708, 0x0000010

gUnk_08B53718:: @ 08B53718
	.incbin "baserom.gba", 0xB53718, 0x0000014

gUnk_08B5372C:: @ 08B5372C
	.incbin "baserom.gba", 0xB5372C, 0x0000018

gUnk_08B53744:: @ 08B53744
	.incbin "baserom.gba", 0xB53744, 0x0000014

gUnk_08B53758:: @ 08B53758
	.incbin "baserom.gba", 0xB53758, 0x000001C

gUnk_08B53774:: @ 08B53774
	.incbin "baserom.gba", 0xB53774, 0x0000018

gUnk_08B5378C:: @ 08B5378C
	.incbin "baserom.gba", 0xB5378C, 0x0000014

gUnk_08B537A0:: @ 08B537A0
	.incbin "baserom.gba", 0xB537A0, 0x0000004

gUnk_08B537A4:: @ 08B537A4
	.incbin "baserom.gba", 0xB537A4, 0x0000004

gUnk_08B537A8:: @ 08B537A8
	.incbin "baserom.gba", 0xB537A8, 0x000000C

gUnk_08B537B4:: @ 08B537B4
	.incbin "baserom.gba", 0xB537B4, 0x0000008

gUnk_08B537BC:: @ 08B537BC
	.incbin "baserom.gba", 0xB537BC, 0x000000C

gUnk_08B537C8:: @ 08B537C8
	.incbin "baserom.gba", 0xB537C8, 0x000004C

gUnk_08B53814:: @ 08B53814
	.incbin "baserom.gba", 0xB53814, 0x0000018

gUnk_08B5382C:: @ 08B5382C
	.incbin "baserom.gba", 0xB5382C, 0x0000014

gUnk_08B53840:: @ 08B53840
	.incbin "baserom.gba", 0xB53840, 0x0000018

gUnk_08B53858:: @ 08B53858
	.incbin "baserom.gba", 0xB53858, 0x000001C

gUnk_08B53874:: @ 08B53874
	.incbin "baserom.gba", 0xB53874, 0x0000014

gUnk_08B53888:: @ 08B53888
	.incbin "baserom.gba", 0xB53888, 0x0000010

gUnk_08B53898:: @ 08B53898
	.incbin "baserom.gba", 0xB53898, 0x0000014

gUnk_08B538AC:: @ 08B538AC
	.incbin "baserom.gba", 0xB538AC, 0x0000018

gUnk_08B538C4:: @ 08B538C4
	.incbin "baserom.gba", 0xB538C4, 0x000000C

gUnk_08B538D0:: @ 08B538D0
	.incbin "baserom.gba", 0xB538D0, 0x000000C

gUnk_08B538DC:: @ 08B538DC
	.incbin "baserom.gba", 0xB538DC, 0x000000C

gUnk_08B538E8:: @ 08B538E8
	.incbin "baserom.gba", 0xB538E8, 0x000000C

gUnk_08B538F4:: @ 08B538F4
	.incbin "baserom.gba", 0xB538F4, 0x0000010

gUnk_08B53904:: @ 08B53904
	.incbin "baserom.gba", 0xB53904, 0x000000C

gUnk_08B53910:: @ 08B53910
	.incbin "baserom.gba", 0xB53910, 0x0000010

gUnk_08B53920:: @ 08B53920
	.incbin "baserom.gba", 0xB53920, 0x0000010

gUnk_08B53930:: @ 08B53930
	.incbin "baserom.gba", 0xB53930, 0x0000008

gUnk_08B53938:: @ 08B53938
	.incbin "baserom.gba", 0xB53938, 0x0000008

gUnk_08B53940:: @ 08B53940
	.incbin "baserom.gba", 0xB53940, 0x000000C

gUnk_08B5394C:: @ 08B5394C
	.incbin "baserom.gba", 0xB5394C, 0x0000010

gUnk_08B5395C:: @ 08B5395C
	.incbin "baserom.gba", 0xB5395C, 0x0000010

gUnk_08B5396C:: @ 08B5396C
	.incbin "baserom.gba", 0xB5396C, 0x0000014

gUnk_08B53980:: @ 08B53980
	.incbin "baserom.gba", 0xB53980, 0x0000014

gUnk_08B53994:: @ 08B53994
	.incbin "baserom.gba", 0xB53994, 0x000000C

gUnk_08B539A0:: @ 08B539A0
	.incbin "baserom.gba", 0xB539A0, 0x0000004

gUnk_08B539A4:: @ 08B539A4
	.incbin "baserom.gba", 0xB539A4, 0x0000004

gUnk_08B539A8:: @ 08B539A8
	.incbin "baserom.gba", 0xB539A8, 0x0000010

gUnk_08B539B8:: @ 08B539B8
	.incbin "baserom.gba", 0xB539B8, 0x000000C

gUnk_08B539C4:: @ 08B539C4
	.incbin "baserom.gba", 0xB539C4, 0x0000008

gUnk_08B539CC:: @ 08B539CC
	.incbin "baserom.gba", 0xB539CC, 0x000004C

gUnk_08B53A18:: @ 08B53A18
	.incbin "baserom.gba", 0xB53A18, 0x0000004

gUnk_08B53A1C:: @ 08B53A1C
	.incbin "baserom.gba", 0xB53A1C, 0x0000004

gUnk_08B53A20:: @ 08B53A20
	.incbin "baserom.gba", 0xB53A20, 0x0000004

gUnk_08B53A24:: @ 08B53A24
	.incbin "baserom.gba", 0xB53A24, 0x0000004

gUnk_08B53A28:: @ 08B53A28
	.incbin "baserom.gba", 0xB53A28, 0x0000004

gUnk_08B53A2C:: @ 08B53A2C
	.incbin "baserom.gba", 0xB53A2C, 0x0000004

gUnk_08B53A30:: @ 08B53A30
	.incbin "baserom.gba", 0xB53A30, 0x0000004

gUnk_08B53A34:: @ 08B53A34
	.incbin "baserom.gba", 0xB53A34, 0x0000004

gUnk_08B53A38:: @ 08B53A38
	.incbin "baserom.gba", 0xB53A38, 0x0000008

gUnk_08B53A40:: @ 08B53A40
	.incbin "baserom.gba", 0xB53A40, 0x0000004

gUnk_08B53A44:: @ 08B53A44
	.incbin "baserom.gba", 0xB53A44, 0x0000004

gUnk_08B53A48:: @ 08B53A48
	.incbin "baserom.gba", 0xB53A48, 0x0000004

gUnk_08B53A4C:: @ 08B53A4C
	.incbin "baserom.gba", 0xB53A4C, 0x0000004

gUnk_08B53A50:: @ 08B53A50
	.incbin "baserom.gba", 0xB53A50, 0x0000004

gUnk_08B53A54:: @ 08B53A54
	.incbin "baserom.gba", 0xB53A54, 0x0000004

gUnk_08B53A58:: @ 08B53A58
	.incbin "baserom.gba", 0xB53A58, 0x0000004

gUnk_08B53A5C:: @ 08B53A5C
	.incbin "baserom.gba", 0xB53A5C, 0x0000008

gUnk_08B53A64:: @ 08B53A64
	.incbin "baserom.gba", 0xB53A64, 0x0000004

gUnk_08B53A68:: @ 08B53A68
	.incbin "baserom.gba", 0xB53A68, 0x0000004

gUnk_08B53A6C:: @ 08B53A6C
	.incbin "baserom.gba", 0xB53A6C, 0x0000004

gUnk_08B53A70:: @ 08B53A70
	.incbin "baserom.gba", 0xB53A70, 0x0000004

gUnk_08B53A74:: @ 08B53A74
	.incbin "baserom.gba", 0xB53A74, 0x0000004

gUnk_08B53A78:: @ 08B53A78
	.incbin "baserom.gba", 0xB53A78, 0x0000004

gUnk_08B53A7C:: @ 08B53A7C
	.incbin "baserom.gba", 0xB53A7C, 0x0000004

gUnk_08B53A80:: @ 08B53A80
	.incbin "baserom.gba", 0xB53A80, 0x0000004

gUnk_08B53A84:: @ 08B53A84
	.incbin "baserom.gba", 0xB53A84, 0x0000004

gUnk_08B53A88:: @ 08B53A88
	.incbin "baserom.gba", 0xB53A88, 0x000004C

gUnk_08B53AD4:: @ 08B53AD4
	.incbin "baserom.gba", 0xB53AD4, 0x0000004

gUnk_08B53AD8:: @ 08B53AD8
	.incbin "baserom.gba", 0xB53AD8, 0x0000004

gUnk_08B53ADC:: @ 08B53ADC
	.incbin "baserom.gba", 0xB53ADC, 0x0000004

gUnk_08B53AE0:: @ 08B53AE0
	.incbin "baserom.gba", 0xB53AE0, 0x0000004

gUnk_08B53AE4:: @ 08B53AE4
	.incbin "baserom.gba", 0xB53AE4, 0x0000004

gUnk_08B53AE8:: @ 08B53AE8
	.incbin "baserom.gba", 0xB53AE8, 0x0000004

gUnk_08B53AEC:: @ 08B53AEC
	.incbin "baserom.gba", 0xB53AEC, 0x0000004

gUnk_08B53AF0:: @ 08B53AF0
	.incbin "baserom.gba", 0xB53AF0, 0x0000004

gUnk_08B53AF4:: @ 08B53AF4
	.incbin "baserom.gba", 0xB53AF4, 0x0000010

gUnk_08B53B04:: @ 08B53B04
	.incbin "baserom.gba", 0xB53B04, 0x0000008

gUnk_08B53B0C:: @ 08B53B0C
	.incbin "baserom.gba", 0xB53B0C, 0x000000C

gUnk_08B53B18:: @ 08B53B18
	.incbin "baserom.gba", 0xB53B18, 0x0000014

gUnk_08B53B2C:: @ 08B53B2C
	.incbin "baserom.gba", 0xB53B2C, 0x0000004

gUnk_08B53B30:: @ 08B53B30
	.incbin "baserom.gba", 0xB53B30, 0x000000C

gUnk_08B53B3C:: @ 08B53B3C
	.incbin "baserom.gba", 0xB53B3C, 0x0000004

gUnk_08B53B40:: @ 08B53B40
	.incbin "baserom.gba", 0xB53B40, 0x0000008

gUnk_08B53B48:: @ 08B53B48
	.incbin "baserom.gba", 0xB53B48, 0x0000010

gUnk_08B53B58:: @ 08B53B58
	.incbin "baserom.gba", 0xB53B58, 0x000000C

gUnk_08B53B64:: @ 08B53B64
	.incbin "baserom.gba", 0xB53B64, 0x000000C

gUnk_08B53B70:: @ 08B53B70
	.incbin "baserom.gba", 0xB53B70, 0x0000004

gUnk_08B53B74:: @ 08B53B74
	.incbin "baserom.gba", 0xB53B74, 0x0000010

gUnk_08B53B84:: @ 08B53B84
	.incbin "baserom.gba", 0xB53B84, 0x0000010

gUnk_08B53B94:: @ 08B53B94
	.incbin "baserom.gba", 0xB53B94, 0x0000004

gUnk_08B53B98:: @ 08B53B98
	.incbin "baserom.gba", 0xB53B98, 0x0000008

gUnk_08B53BA0:: @ 08B53BA0
	.incbin "baserom.gba", 0xB53BA0, 0x000000C

gUnk_08B53BAC:: @ 08B53BAC
	.incbin "baserom.gba", 0xB53BAC, 0x0000004

gUnk_08B53BB0:: @ 08B53BB0
	.incbin "baserom.gba", 0xB53BB0, 0x000004C

gUnk_08B53BFC:: @ 08B53BFC
	.incbin "baserom.gba", 0xB53BFC, 0x0000004

gUnk_08B53C00:: @ 08B53C00
	.incbin "baserom.gba", 0xB53C00, 0x0000004

gUnk_08B53C04:: @ 08B53C04
	.incbin "baserom.gba", 0xB53C04, 0x0000004

gUnk_08B53C08:: @ 08B53C08
	.incbin "baserom.gba", 0xB53C08, 0x0000004

gUnk_08B53C0C:: @ 08B53C0C
	.incbin "baserom.gba", 0xB53C0C, 0x0000004

gUnk_08B53C10:: @ 08B53C10
	.incbin "baserom.gba", 0xB53C10, 0x0000004

gUnk_08B53C14:: @ 08B53C14
	.incbin "baserom.gba", 0xB53C14, 0x0000004

gUnk_08B53C18:: @ 08B53C18
	.incbin "baserom.gba", 0xB53C18, 0x0000004

gUnk_08B53C1C:: @ 08B53C1C
	.incbin "baserom.gba", 0xB53C1C, 0x000000C

gUnk_08B53C28:: @ 08B53C28
	.incbin "baserom.gba", 0xB53C28, 0x000000C

gUnk_08B53C34:: @ 08B53C34
	.incbin "baserom.gba", 0xB53C34, 0x0000008

gUnk_08B53C3C:: @ 08B53C3C
	.incbin "baserom.gba", 0xB53C3C, 0x0000014

gUnk_08B53C50:: @ 08B53C50
	.incbin "baserom.gba", 0xB53C50, 0x0000004

gUnk_08B53C54:: @ 08B53C54
	.incbin "baserom.gba", 0xB53C54, 0x000000C

gUnk_08B53C60:: @ 08B53C60
	.incbin "baserom.gba", 0xB53C60, 0x0000004

gUnk_08B53C64:: @ 08B53C64
	.incbin "baserom.gba", 0xB53C64, 0x0000008

gUnk_08B53C6C:: @ 08B53C6C
	.incbin "baserom.gba", 0xB53C6C, 0x000000C

gUnk_08B53C78:: @ 08B53C78
	.incbin "baserom.gba", 0xB53C78, 0x0000008

gUnk_08B53C80:: @ 08B53C80
	.incbin "baserom.gba", 0xB53C80, 0x000000C

gUnk_08B53C8C:: @ 08B53C8C
	.incbin "baserom.gba", 0xB53C8C, 0x0000004

gUnk_08B53C90:: @ 08B53C90
	.incbin "baserom.gba", 0xB53C90, 0x0000010

gUnk_08B53CA0:: @ 08B53CA0
	.incbin "baserom.gba", 0xB53CA0, 0x0000010

gUnk_08B53CB0:: @ 08B53CB0
	.incbin "baserom.gba", 0xB53CB0, 0x0000004

gUnk_08B53CB4:: @ 08B53CB4
	.incbin "baserom.gba", 0xB53CB4, 0x000000C

gUnk_08B53CC0:: @ 08B53CC0
	.incbin "baserom.gba", 0xB53CC0, 0x0000010

gUnk_08B53CD0:: @ 08B53CD0
	.incbin "baserom.gba", 0xB53CD0, 0x0000004

gUnk_08B53CD4:: @ 08B53CD4
	.incbin "baserom.gba", 0xB53CD4, 0x000004C

gUnk_08B53D20:: @ 08B53D20
	.incbin "baserom.gba", 0xB53D20, 0x0000004

gUnk_08B53D24:: @ 08B53D24
	.incbin "baserom.gba", 0xB53D24, 0x0000004

gUnk_08B53D28:: @ 08B53D28
	.incbin "baserom.gba", 0xB53D28, 0x0000004

gUnk_08B53D2C:: @ 08B53D2C
	.incbin "baserom.gba", 0xB53D2C, 0x0000004

gUnk_08B53D30:: @ 08B53D30
	.incbin "baserom.gba", 0xB53D30, 0x0000004

gUnk_08B53D34:: @ 08B53D34
	.incbin "baserom.gba", 0xB53D34, 0x0000004

gUnk_08B53D38:: @ 08B53D38
	.incbin "baserom.gba", 0xB53D38, 0x0000004

gUnk_08B53D3C:: @ 08B53D3C
	.incbin "baserom.gba", 0xB53D3C, 0x0000004

gUnk_08B53D40:: @ 08B53D40
	.incbin "baserom.gba", 0xB53D40, 0x0000004

gUnk_08B53D44:: @ 08B53D44
	.incbin "baserom.gba", 0xB53D44, 0x0000004

gUnk_08B53D48:: @ 08B53D48
	.incbin "baserom.gba", 0xB53D48, 0x0000004

gUnk_08B53D4C:: @ 08B53D4C
	.incbin "baserom.gba", 0xB53D4C, 0x0000008

gUnk_08B53D54:: @ 08B53D54
	.incbin "baserom.gba", 0xB53D54, 0x0000004

gUnk_08B53D58:: @ 08B53D58
	.incbin "baserom.gba", 0xB53D58, 0x0000004

gUnk_08B53D5C:: @ 08B53D5C
	.incbin "baserom.gba", 0xB53D5C, 0x0000004

gUnk_08B53D60:: @ 08B53D60
	.incbin "baserom.gba", 0xB53D60, 0x0000004

gUnk_08B53D64:: @ 08B53D64
	.incbin "baserom.gba", 0xB53D64, 0x0000004

gUnk_08B53D68:: @ 08B53D68
	.incbin "baserom.gba", 0xB53D68, 0x0000004

gUnk_08B53D6C:: @ 08B53D6C
	.incbin "baserom.gba", 0xB53D6C, 0x0000004

gUnk_08B53D70:: @ 08B53D70
	.incbin "baserom.gba", 0xB53D70, 0x0000004

gUnk_08B53D74:: @ 08B53D74
	.incbin "baserom.gba", 0xB53D74, 0x0000004

gUnk_08B53D78:: @ 08B53D78
	.incbin "baserom.gba", 0xB53D78, 0x0000004

gUnk_08B53D7C:: @ 08B53D7C
	.incbin "baserom.gba", 0xB53D7C, 0x0000004

gUnk_08B53D80:: @ 08B53D80
	.incbin "baserom.gba", 0xB53D80, 0x0000004

gUnk_08B53D84:: @ 08B53D84
	.incbin "baserom.gba", 0xB53D84, 0x0000004

gUnk_08B53D88:: @ 08B53D88
	.incbin "baserom.gba", 0xB53D88, 0x0000004

gUnk_08B53D8C:: @ 08B53D8C
	.incbin "baserom.gba", 0xB53D8C, 0x000004C

gUnk_08B53DD8:: @ 08B53DD8
	.incbin "baserom.gba", 0xB53DD8, 0x0000004

gUnk_08B53DDC:: @ 08B53DDC
	.incbin "baserom.gba", 0xB53DDC, 0x0000004

gUnk_08B53DE0:: @ 08B53DE0
	.incbin "baserom.gba", 0xB53DE0, 0x0000004

gUnk_08B53DE4:: @ 08B53DE4
	.incbin "baserom.gba", 0xB53DE4, 0x0000004

gUnk_08B53DE8:: @ 08B53DE8
	.incbin "baserom.gba", 0xB53DE8, 0x0000004

gUnk_08B53DEC:: @ 08B53DEC
	.incbin "baserom.gba", 0xB53DEC, 0x0000004

gUnk_08B53DF0:: @ 08B53DF0
	.incbin "baserom.gba", 0xB53DF0, 0x0000010

gUnk_08B53E00:: @ 08B53E00
	.incbin "baserom.gba", 0xB53E00, 0x0000004

gUnk_08B53E04:: @ 08B53E04
	.incbin "baserom.gba", 0xB53E04, 0x0000010

gUnk_08B53E14:: @ 08B53E14
	.incbin "baserom.gba", 0xB53E14, 0x0000008

gUnk_08B53E1C:: @ 08B53E1C
	.incbin "baserom.gba", 0xB53E1C, 0x000000C

gUnk_08B53E28:: @ 08B53E28
	.incbin "baserom.gba", 0xB53E28, 0x0000010

gUnk_08B53E38:: @ 08B53E38
	.incbin "baserom.gba", 0xB53E38, 0x0000008

gUnk_08B53E40:: @ 08B53E40
	.incbin "baserom.gba", 0xB53E40, 0x0000008

gUnk_08B53E48:: @ 08B53E48
	.incbin "baserom.gba", 0xB53E48, 0x000000C

gUnk_08B53E54:: @ 08B53E54
	.incbin "baserom.gba", 0xB53E54, 0x000000C

gUnk_08B53E60:: @ 08B53E60
	.incbin "baserom.gba", 0xB53E60, 0x0000010

gUnk_08B53E70:: @ 08B53E70
	.incbin "baserom.gba", 0xB53E70, 0x000000C

gUnk_08B53E7C:: @ 08B53E7C
	.incbin "baserom.gba", 0xB53E7C, 0x000000C

gUnk_08B53E88:: @ 08B53E88
	.incbin "baserom.gba", 0xB53E88, 0x000000C

gUnk_08B53E94:: @ 08B53E94
	.incbin "baserom.gba", 0xB53E94, 0x000000C

gUnk_08B53EA0:: @ 08B53EA0
	.incbin "baserom.gba", 0xB53EA0, 0x0000010

gUnk_08B53EB0:: @ 08B53EB0
	.incbin "baserom.gba", 0xB53EB0, 0x0000010

gUnk_08B53EC0:: @ 08B53EC0
	.incbin "baserom.gba", 0xB53EC0, 0x000000C

gUnk_08B53ECC:: @ 08B53ECC
	.incbin "baserom.gba", 0xB53ECC, 0x000000C

gUnk_08B53ED8:: @ 08B53ED8
	.incbin "baserom.gba", 0xB53ED8, 0x0000008

gUnk_08B53EE0:: @ 08B53EE0
	.incbin "baserom.gba", 0xB53EE0, 0x000004C

gUnk_08B53F2C:: @ 08B53F2C
	.incbin "baserom.gba", 0xB53F2C, 0x0000004

gUnk_08B53F30:: @ 08B53F30
	.incbin "baserom.gba", 0xB53F30, 0x0000004

gUnk_08B53F34:: @ 08B53F34
	.incbin "baserom.gba", 0xB53F34, 0x0000004

gUnk_08B53F38:: @ 08B53F38
	.incbin "baserom.gba", 0xB53F38, 0x0000004

gUnk_08B53F3C:: @ 08B53F3C
	.incbin "baserom.gba", 0xB53F3C, 0x0000004

gUnk_08B53F40:: @ 08B53F40
	.incbin "baserom.gba", 0xB53F40, 0x0000004

gUnk_08B53F44:: @ 08B53F44
	.incbin "baserom.gba", 0xB53F44, 0x0000004

gUnk_08B53F48:: @ 08B53F48
	.incbin "baserom.gba", 0xB53F48, 0x0000004

gUnk_08B53F4C:: @ 08B53F4C
	.incbin "baserom.gba", 0xB53F4C, 0x000000C

gUnk_08B53F58:: @ 08B53F58
	.incbin "baserom.gba", 0xB53F58, 0x000000C

gUnk_08B53F64:: @ 08B53F64
	.incbin "baserom.gba", 0xB53F64, 0x0000008

gUnk_08B53F6C:: @ 08B53F6C
	.incbin "baserom.gba", 0xB53F6C, 0x0000010

gUnk_08B53F7C:: @ 08B53F7C
	.incbin "baserom.gba", 0xB53F7C, 0x0000004

gUnk_08B53F80:: @ 08B53F80
	.incbin "baserom.gba", 0xB53F80, 0x0000008

gUnk_08B53F88:: @ 08B53F88
	.incbin "baserom.gba", 0xB53F88, 0x0000004

gUnk_08B53F8C:: @ 08B53F8C
	.incbin "baserom.gba", 0xB53F8C, 0x0000008

gUnk_08B53F94:: @ 08B53F94
	.incbin "baserom.gba", 0xB53F94, 0x0000010

gUnk_08B53FA4:: @ 08B53FA4
	.incbin "baserom.gba", 0xB53FA4, 0x000000C

gUnk_08B53FB0:: @ 08B53FB0
	.incbin "baserom.gba", 0xB53FB0, 0x0000008

gUnk_08B53FB8:: @ 08B53FB8
	.incbin "baserom.gba", 0xB53FB8, 0x0000004

gUnk_08B53FBC:: @ 08B53FBC
	.incbin "baserom.gba", 0xB53FBC, 0x000000C

gUnk_08B53FC8:: @ 08B53FC8
	.incbin "baserom.gba", 0xB53FC8, 0x000000C

gUnk_08B53FD4:: @ 08B53FD4
	.incbin "baserom.gba", 0xB53FD4, 0x0000004

gUnk_08B53FD8:: @ 08B53FD8
	.incbin "baserom.gba", 0xB53FD8, 0x000000C

gUnk_08B53FE4:: @ 08B53FE4
	.incbin "baserom.gba", 0xB53FE4, 0x0000010

gUnk_08B53FF4:: @ 08B53FF4
	.incbin "baserom.gba", 0xB53FF4, 0x0000004

gUnk_08B53FF8:: @ 08B53FF8
	.incbin "baserom.gba", 0xB53FF8, 0x000004C

gUnk_08B54044:: @ 08B54044
	.incbin "baserom.gba", 0xB54044, 0x0000004

gUnk_08B54048:: @ 08B54048
	.incbin "baserom.gba", 0xB54048, 0x0000004

gUnk_08B5404C:: @ 08B5404C
	.incbin "baserom.gba", 0xB5404C, 0x0000004

gUnk_08B54050:: @ 08B54050
	.incbin "baserom.gba", 0xB54050, 0x0000004

gUnk_08B54054:: @ 08B54054
	.incbin "baserom.gba", 0xB54054, 0x0000004

gUnk_08B54058:: @ 08B54058
	.incbin "baserom.gba", 0xB54058, 0x0000004

gUnk_08B5405C:: @ 08B5405C
	.incbin "baserom.gba", 0xB5405C, 0x000000C

gUnk_08B54068:: @ 08B54068
	.incbin "baserom.gba", 0xB54068, 0x0000004

gUnk_08B5406C:: @ 08B5406C
	.incbin "baserom.gba", 0xB5406C, 0x0000010

gUnk_08B5407C:: @ 08B5407C
	.incbin "baserom.gba", 0xB5407C, 0x000000C

gUnk_08B54088:: @ 08B54088
	.incbin "baserom.gba", 0xB54088, 0x000000C

gUnk_08B54094:: @ 08B54094
	.incbin "baserom.gba", 0xB54094, 0x0000014

gUnk_08B540A8:: @ 08B540A8
	.incbin "baserom.gba", 0xB540A8, 0x0000008

gUnk_08B540B0:: @ 08B540B0
	.incbin "baserom.gba", 0xB540B0, 0x000000C

gUnk_08B540BC:: @ 08B540BC
	.incbin "baserom.gba", 0xB540BC, 0x0000008

gUnk_08B540C4:: @ 08B540C4
	.incbin "baserom.gba", 0xB540C4, 0x000000C

gUnk_08B540D0:: @ 08B540D0
	.incbin "baserom.gba", 0xB540D0, 0x0000014

gUnk_08B540E4:: @ 08B540E4
	.incbin "baserom.gba", 0xB540E4, 0x0000010

gUnk_08B540F4:: @ 08B540F4
	.incbin "baserom.gba", 0xB540F4, 0x000000C

gUnk_08B54100:: @ 08B54100
	.incbin "baserom.gba", 0xB54100, 0x0000008

gUnk_08B54108:: @ 08B54108
	.incbin "baserom.gba", 0xB54108, 0x0000010

gUnk_08B54118:: @ 08B54118
	.incbin "baserom.gba", 0xB54118, 0x0000010

gUnk_08B54128:: @ 08B54128
	.incbin "baserom.gba", 0xB54128, 0x0000008

gUnk_08B54130:: @ 08B54130
	.incbin "baserom.gba", 0xB54130, 0x000000C

gUnk_08B5413C:: @ 08B5413C
	.incbin "baserom.gba", 0xB5413C, 0x0000010

gUnk_08B5414C:: @ 08B5414C
	.incbin "baserom.gba", 0xB5414C, 0x000000C

gUnk_08B54158:: @ 08B54158
	.incbin "baserom.gba", 0xB54158, 0x000004C

gUnk_08B541A4:: @ 08B541A4
	.incbin "baserom.gba", 0xB541A4, 0x0000004

gUnk_08B541A8:: @ 08B541A8
	.incbin "baserom.gba", 0xB541A8, 0x0000004

gUnk_08B541AC:: @ 08B541AC
	.incbin "baserom.gba", 0xB541AC, 0x0000004

gUnk_08B541B0:: @ 08B541B0
	.incbin "baserom.gba", 0xB541B0, 0x0000004

gUnk_08B541B4:: @ 08B541B4
	.incbin "baserom.gba", 0xB541B4, 0x0000004

gUnk_08B541B8:: @ 08B541B8
	.incbin "baserom.gba", 0xB541B8, 0x0000004

gUnk_08B541BC:: @ 08B541BC
	.incbin "baserom.gba", 0xB541BC, 0x0000004

gUnk_08B541C0:: @ 08B541C0
	.incbin "baserom.gba", 0xB541C0, 0x0000004

gUnk_08B541C4:: @ 08B541C4
	.incbin "baserom.gba", 0xB541C4, 0x000000C

gUnk_08B541D0:: @ 08B541D0
	.incbin "baserom.gba", 0xB541D0, 0x0000008

gUnk_08B541D8:: @ 08B541D8
	.incbin "baserom.gba", 0xB541D8, 0x0000008

gUnk_08B541E0:: @ 08B541E0
	.incbin "baserom.gba", 0xB541E0, 0x0000010

gUnk_08B541F0:: @ 08B541F0
	.incbin "baserom.gba", 0xB541F0, 0x0000004

gUnk_08B541F4:: @ 08B541F4
	.incbin "baserom.gba", 0xB541F4, 0x0000008

gUnk_08B541FC:: @ 08B541FC
	.incbin "baserom.gba", 0xB541FC, 0x0000004

gUnk_08B54200:: @ 08B54200
	.incbin "baserom.gba", 0xB54200, 0x0000008

gUnk_08B54208:: @ 08B54208
	.incbin "baserom.gba", 0xB54208, 0x0000010

gUnk_08B54218:: @ 08B54218
	.incbin "baserom.gba", 0xB54218, 0x000000C

gUnk_08B54224:: @ 08B54224
	.incbin "baserom.gba", 0xB54224, 0x000000C

gUnk_08B54230:: @ 08B54230
	.incbin "baserom.gba", 0xB54230, 0x0000004

gUnk_08B54234:: @ 08B54234
	.incbin "baserom.gba", 0xB54234, 0x000000C

gUnk_08B54240:: @ 08B54240
	.incbin "baserom.gba", 0xB54240, 0x0000010

gUnk_08B54250:: @ 08B54250
	.incbin "baserom.gba", 0xB54250, 0x0000004

gUnk_08B54254:: @ 08B54254
	.incbin "baserom.gba", 0xB54254, 0x000000C

gUnk_08B54260:: @ 08B54260
	.incbin "baserom.gba", 0xB54260, 0x000000C

gUnk_08B5426C:: @ 08B5426C
	.incbin "baserom.gba", 0xB5426C, 0x0000004

gUnk_08B54270:: @ 08B54270
	.incbin "baserom.gba", 0xB54270, 0x000004C

gUnk_08B542BC:: @ 08B542BC
	.incbin "baserom.gba", 0xB542BC, 0x0000004

gUnk_08B542C0:: @ 08B542C0
	.incbin "baserom.gba", 0xB542C0, 0x0000004

gUnk_08B542C4:: @ 08B542C4
	.incbin "baserom.gba", 0xB542C4, 0x0000004

gUnk_08B542C8:: @ 08B542C8
	.incbin "baserom.gba", 0xB542C8, 0x0000004

gUnk_08B542CC:: @ 08B542CC
	.incbin "baserom.gba", 0xB542CC, 0x0000004

gUnk_08B542D0:: @ 08B542D0
	.incbin "baserom.gba", 0xB542D0, 0x0000004

gUnk_08B542D4:: @ 08B542D4
	.incbin "baserom.gba", 0xB542D4, 0x0000004

gUnk_08B542D8:: @ 08B542D8
	.incbin "baserom.gba", 0xB542D8, 0x0000004

gUnk_08B542DC:: @ 08B542DC
	.incbin "baserom.gba", 0xB542DC, 0x0000004

gUnk_08B542E0:: @ 08B542E0
	.incbin "baserom.gba", 0xB542E0, 0x0000004

gUnk_08B542E4:: @ 08B542E4
	.incbin "baserom.gba", 0xB542E4, 0x0000004

gUnk_08B542E8:: @ 08B542E8
	.incbin "baserom.gba", 0xB542E8, 0x0000004

gUnk_08B542EC:: @ 08B542EC
	.incbin "baserom.gba", 0xB542EC, 0x0000004

gUnk_08B542F0:: @ 08B542F0
	.incbin "baserom.gba", 0xB542F0, 0x0000004

gUnk_08B542F4:: @ 08B542F4
	.incbin "baserom.gba", 0xB542F4, 0x0000004

gUnk_08B542F8:: @ 08B542F8
	.incbin "baserom.gba", 0xB542F8, 0x0000004

gUnk_08B542FC:: @ 08B542FC
	.incbin "baserom.gba", 0xB542FC, 0x0000008

gUnk_08B54304:: @ 08B54304
	.incbin "baserom.gba", 0xB54304, 0x0000004

gUnk_08B54308:: @ 08B54308
	.incbin "baserom.gba", 0xB54308, 0x0000004

gUnk_08B5430C:: @ 08B5430C
	.incbin "baserom.gba", 0xB5430C, 0x0000004

gUnk_08B54310:: @ 08B54310
	.incbin "baserom.gba", 0xB54310, 0x0000004

gUnk_08B54314:: @ 08B54314
	.incbin "baserom.gba", 0xB54314, 0x0000004

gUnk_08B54318:: @ 08B54318
	.incbin "baserom.gba", 0xB54318, 0x0000004

gUnk_08B5431C:: @ 08B5431C
	.incbin "baserom.gba", 0xB5431C, 0x0000004

gUnk_08B54320:: @ 08B54320
	.incbin "baserom.gba", 0xB54320, 0x0000004

gUnk_08B54324:: @ 08B54324
	.incbin "baserom.gba", 0xB54324, 0x0000004

gUnk_08B54328:: @ 08B54328
	.incbin "baserom.gba", 0xB54328, 0x000004C

gUnk_08B54374:: @ 08B54374
	.incbin "baserom.gba", 0xB54374, 0x0000004

gUnk_08B54378:: @ 08B54378
	.incbin "baserom.gba", 0xB54378, 0x0000004

gUnk_08B5437C:: @ 08B5437C
	.incbin "baserom.gba", 0xB5437C, 0x0000004

gUnk_08B54380:: @ 08B54380
	.incbin "baserom.gba", 0xB54380, 0x0000004

gUnk_08B54384:: @ 08B54384
	.incbin "baserom.gba", 0xB54384, 0x0000004

gUnk_08B54388:: @ 08B54388
	.incbin "baserom.gba", 0xB54388, 0x0000004

gUnk_08B5438C:: @ 08B5438C
	.incbin "baserom.gba", 0xB5438C, 0x0000004

gUnk_08B54390:: @ 08B54390
	.incbin "baserom.gba", 0xB54390, 0x0000004

gUnk_08B54394:: @ 08B54394
	.incbin "baserom.gba", 0xB54394, 0x0000008

gUnk_08B5439C:: @ 08B5439C
	.incbin "baserom.gba", 0xB5439C, 0x0000004

gUnk_08B543A0:: @ 08B543A0
	.incbin "baserom.gba", 0xB543A0, 0x0000004

gUnk_08B543A4:: @ 08B543A4
	.incbin "baserom.gba", 0xB543A4, 0x0000004

gUnk_08B543A8:: @ 08B543A8
	.incbin "baserom.gba", 0xB543A8, 0x0000004

gUnk_08B543AC:: @ 08B543AC
	.incbin "baserom.gba", 0xB543AC, 0x0000004

gUnk_08B543B0:: @ 08B543B0
	.incbin "baserom.gba", 0xB543B0, 0x0000004

gUnk_08B543B4:: @ 08B543B4
	.incbin "baserom.gba", 0xB543B4, 0x0000004

gUnk_08B543B8:: @ 08B543B8
	.incbin "baserom.gba", 0xB543B8, 0x000000C

gUnk_08B543C4:: @ 08B543C4
	.incbin "baserom.gba", 0xB543C4, 0x0000008

gUnk_08B543CC:: @ 08B543CC
	.incbin "baserom.gba", 0xB543CC, 0x0000004

gUnk_08B543D0:: @ 08B543D0
	.incbin "baserom.gba", 0xB543D0, 0x0000004

gUnk_08B543D4:: @ 08B543D4
	.incbin "baserom.gba", 0xB543D4, 0x0000004

gUnk_08B543D8:: @ 08B543D8
	.incbin "baserom.gba", 0xB543D8, 0x0000004

gUnk_08B543DC:: @ 08B543DC
	.incbin "baserom.gba", 0xB543DC, 0x0000004

gUnk_08B543E0:: @ 08B543E0
	.incbin "baserom.gba", 0xB543E0, 0x0000004

gUnk_08B543E4:: @ 08B543E4
	.incbin "baserom.gba", 0xB543E4, 0x0000004

gUnk_08B543E8:: @ 08B543E8
	.incbin "baserom.gba", 0xB543E8, 0x0000004

gUnk_08B543EC:: @ 08B543EC
	.incbin "baserom.gba", 0xB543EC, 0x000004C

gUnk_08B54438:: @ 08B54438
	.incbin "baserom.gba", 0xB54438, 0x0000004

gUnk_08B5443C:: @ 08B5443C
	.incbin "baserom.gba", 0xB5443C, 0x0000004

gUnk_08B54440:: @ 08B54440
	.incbin "baserom.gba", 0xB54440, 0x0000004

gUnk_08B54444:: @ 08B54444
	.incbin "baserom.gba", 0xB54444, 0x0000004

gUnk_08B54448:: @ 08B54448
	.incbin "baserom.gba", 0xB54448, 0x0000004

gUnk_08B5444C:: @ 08B5444C
	.incbin "baserom.gba", 0xB5444C, 0x0000004

gUnk_08B54450:: @ 08B54450
	.incbin "baserom.gba", 0xB54450, 0x0000004

gUnk_08B54454:: @ 08B54454
	.incbin "baserom.gba", 0xB54454, 0x0000004

gUnk_08B54458:: @ 08B54458
	.incbin "baserom.gba", 0xB54458, 0x0000004

gUnk_08B5445C:: @ 08B5445C
	.incbin "baserom.gba", 0xB5445C, 0x0000004

gUnk_08B54460:: @ 08B54460
	.incbin "baserom.gba", 0xB54460, 0x0000004

gUnk_08B54464:: @ 08B54464
	.incbin "baserom.gba", 0xB54464, 0x000000C

gUnk_08B54470:: @ 08B54470
	.incbin "baserom.gba", 0xB54470, 0x0000004

gUnk_08B54474:: @ 08B54474
	.incbin "baserom.gba", 0xB54474, 0x0000004

gUnk_08B54478:: @ 08B54478
	.incbin "baserom.gba", 0xB54478, 0x0000004

gUnk_08B5447C:: @ 08B5447C
	.incbin "baserom.gba", 0xB5447C, 0x0000004

gUnk_08B54480:: @ 08B54480
	.incbin "baserom.gba", 0xB54480, 0x0000004

gUnk_08B54484:: @ 08B54484
	.incbin "baserom.gba", 0xB54484, 0x0000004

gUnk_08B54488:: @ 08B54488
	.incbin "baserom.gba", 0xB54488, 0x0000008

gUnk_08B54490:: @ 08B54490
	.incbin "baserom.gba", 0xB54490, 0x0000004

gUnk_08B54494:: @ 08B54494
	.incbin "baserom.gba", 0xB54494, 0x0000008

gUnk_08B5449C:: @ 08B5449C
	.incbin "baserom.gba", 0xB5449C, 0x000000C

gUnk_08B544A8:: @ 08B544A8
	.incbin "baserom.gba", 0xB544A8, 0x0000004

gUnk_08B544AC:: @ 08B544AC
	.incbin "baserom.gba", 0xB544AC, 0x0000004

gUnk_08B544B0:: @ 08B544B0
	.incbin "baserom.gba", 0xB544B0, 0x0000004

gUnk_08B544B4:: @ 08B544B4
	.incbin "baserom.gba", 0xB544B4, 0x0000004

gUnk_08B544B8:: @ 08B544B8
	.incbin "baserom.gba", 0xB544B8, 0x000004C

gUnk_08B54504:: @ 08B54504
	.incbin "baserom.gba", 0xB54504, 0x0000004

gUnk_08B54508:: @ 08B54508
	.incbin "baserom.gba", 0xB54508, 0x0000004

gUnk_08B5450C:: @ 08B5450C
	.incbin "baserom.gba", 0xB5450C, 0x0000004

gUnk_08B54510:: @ 08B54510
	.incbin "baserom.gba", 0xB54510, 0x0000004

gUnk_08B54514:: @ 08B54514
	.incbin "baserom.gba", 0xB54514, 0x0000004

gUnk_08B54518:: @ 08B54518
	.incbin "baserom.gba", 0xB54518, 0x0000004

gUnk_08B5451C:: @ 08B5451C
	.incbin "baserom.gba", 0xB5451C, 0x0000004

gUnk_08B54520:: @ 08B54520
	.incbin "baserom.gba", 0xB54520, 0x0000010

gUnk_08B54530:: @ 08B54530
	.incbin "baserom.gba", 0xB54530, 0x0000008

gUnk_08B54538:: @ 08B54538
	.incbin "baserom.gba", 0xB54538, 0x0000004

gUnk_08B5453C:: @ 08B5453C
	.incbin "baserom.gba", 0xB5453C, 0x0000004

gUnk_08B54540:: @ 08B54540
	.incbin "baserom.gba", 0xB54540, 0x0000004

gUnk_08B54544:: @ 08B54544
	.incbin "baserom.gba", 0xB54544, 0x0000004

gUnk_08B54548:: @ 08B54548
	.incbin "baserom.gba", 0xB54548, 0x0000004

gUnk_08B5454C:: @ 08B5454C
	.incbin "baserom.gba", 0xB5454C, 0x0000004

gUnk_08B54550:: @ 08B54550
	.incbin "baserom.gba", 0xB54550, 0x0000004

gUnk_08B54554:: @ 08B54554
	.incbin "baserom.gba", 0xB54554, 0x0000004

gUnk_08B54558:: @ 08B54558
	.incbin "baserom.gba", 0xB54558, 0x0000004

gUnk_08B5455C:: @ 08B5455C
	.incbin "baserom.gba", 0xB5455C, 0x0000008

gUnk_08B54564:: @ 08B54564
	.incbin "baserom.gba", 0xB54564, 0x000000C

gUnk_08B54570:: @ 08B54570
	.incbin "baserom.gba", 0xB54570, 0x000000C

gUnk_08B5457C:: @ 08B5457C
	.incbin "baserom.gba", 0xB5457C, 0x0000010

gUnk_08B5458C:: @ 08B5458C
	.incbin "baserom.gba", 0xB5458C, 0x000000C

gUnk_08B54598:: @ 08B54598
	.incbin "baserom.gba", 0xB54598, 0x000004C

gUnk_08B545E4:: @ 08B545E4
	.incbin "baserom.gba", 0xB545E4, 0x0000004

gUnk_08B545E8:: @ 08B545E8
	.incbin "baserom.gba", 0xB545E8, 0x0000004

gUnk_08B545EC:: @ 08B545EC
	.incbin "baserom.gba", 0xB545EC, 0x0000004

gUnk_08B545F0:: @ 08B545F0
	.incbin "baserom.gba", 0xB545F0, 0x0000004

gUnk_08B545F4:: @ 08B545F4
	.incbin "baserom.gba", 0xB545F4, 0x0000004

gUnk_08B545F8:: @ 08B545F8
	.incbin "baserom.gba", 0xB545F8, 0x0000004

gUnk_08B545FC:: @ 08B545FC
	.incbin "baserom.gba", 0xB545FC, 0x0000004

gUnk_08B54600:: @ 08B54600
	.incbin "baserom.gba", 0xB54600, 0x0000004

gUnk_08B54604:: @ 08B54604
	.incbin "baserom.gba", 0xB54604, 0x0000004

gUnk_08B54608:: @ 08B54608
	.incbin "baserom.gba", 0xB54608, 0x0000008

gUnk_08B54610:: @ 08B54610
	.incbin "baserom.gba", 0xB54610, 0x0000004

gUnk_08B54614:: @ 08B54614
	.incbin "baserom.gba", 0xB54614, 0x0000004

gUnk_08B54618:: @ 08B54618
	.incbin "baserom.gba", 0xB54618, 0x0000004

gUnk_08B5461C:: @ 08B5461C
	.incbin "baserom.gba", 0xB5461C, 0x0000004

gUnk_08B54620:: @ 08B54620
	.incbin "baserom.gba", 0xB54620, 0x0000008

gUnk_08B54628:: @ 08B54628
	.incbin "baserom.gba", 0xB54628, 0x0000004

gUnk_08B5462C:: @ 08B5462C
	.incbin "baserom.gba", 0xB5462C, 0x0000004

gUnk_08B54630:: @ 08B54630
	.incbin "baserom.gba", 0xB54630, 0x0000004

gUnk_08B54634:: @ 08B54634
	.incbin "baserom.gba", 0xB54634, 0x0000004

gUnk_08B54638:: @ 08B54638
	.incbin "baserom.gba", 0xB54638, 0x0000004

gUnk_08B5463C:: @ 08B5463C
	.incbin "baserom.gba", 0xB5463C, 0x0000004

gUnk_08B54640:: @ 08B54640
	.incbin "baserom.gba", 0xB54640, 0x0000004

gUnk_08B54644:: @ 08B54644
	.incbin "baserom.gba", 0xB54644, 0x0000004

gUnk_08B54648:: @ 08B54648
	.incbin "baserom.gba", 0xB54648, 0x000004C

gUnk_08B54694:: @ 08B54694
	.incbin "baserom.gba", 0xB54694, 0x0000004

gUnk_08B54698:: @ 08B54698
	.incbin "baserom.gba", 0xB54698, 0x0000004

gUnk_08B5469C:: @ 08B5469C
	.incbin "baserom.gba", 0xB5469C, 0x0000004

gUnk_08B546A0:: @ 08B546A0
	.incbin "baserom.gba", 0xB546A0, 0x0000004

gUnk_08B546A4:: @ 08B546A4
	.incbin "baserom.gba", 0xB546A4, 0x0000004

gUnk_08B546A8:: @ 08B546A8
	.incbin "baserom.gba", 0xB546A8, 0x0000004

gUnk_08B546AC:: @ 08B546AC
	.incbin "baserom.gba", 0xB546AC, 0x0000004

gUnk_08B546B0:: @ 08B546B0
	.incbin "baserom.gba", 0xB546B0, 0x0000004

gUnk_08B546B4:: @ 08B546B4
	.incbin "baserom.gba", 0xB546B4, 0x0000004

gUnk_08B546B8:: @ 08B546B8
	.incbin "baserom.gba", 0xB546B8, 0x0000008

gUnk_08B546C0:: @ 08B546C0
	.incbin "baserom.gba", 0xB546C0, 0x0000008

gUnk_08B546C8:: @ 08B546C8
	.incbin "baserom.gba", 0xB546C8, 0x0000004

gUnk_08B546CC:: @ 08B546CC
	.incbin "baserom.gba", 0xB546CC, 0x0000004

gUnk_08B546D0:: @ 08B546D0
	.incbin "baserom.gba", 0xB546D0, 0x0000004

gUnk_08B546D4:: @ 08B546D4
	.incbin "baserom.gba", 0xB546D4, 0x000000C

gUnk_08B546E0:: @ 08B546E0
	.incbin "baserom.gba", 0xB546E0, 0x0000004

gUnk_08B546E4:: @ 08B546E4
	.incbin "baserom.gba", 0xB546E4, 0x0000004

gUnk_08B546E8:: @ 08B546E8
	.incbin "baserom.gba", 0xB546E8, 0x0000004

gUnk_08B546EC:: @ 08B546EC
	.incbin "baserom.gba", 0xB546EC, 0x0000004

gUnk_08B546F0:: @ 08B546F0
	.incbin "baserom.gba", 0xB546F0, 0x0000004

gUnk_08B546F4:: @ 08B546F4
	.incbin "baserom.gba", 0xB546F4, 0x0000004

gUnk_08B546F8:: @ 08B546F8
	.incbin "baserom.gba", 0xB546F8, 0x0000004

gUnk_08B546FC:: @ 08B546FC
	.incbin "baserom.gba", 0xB546FC, 0x0000004

gUnk_08B54700:: @ 08B54700
	.incbin "baserom.gba", 0xB54700, 0x000004C

gUnk_08B5474C:: @ 08B5474C
	.incbin "baserom.gba", 0xB5474C, 0x0000004

gUnk_08B54750:: @ 08B54750
	.incbin "baserom.gba", 0xB54750, 0x0000004

gUnk_08B54754:: @ 08B54754
	.incbin "baserom.gba", 0xB54754, 0x0000004

gUnk_08B54758:: @ 08B54758
	.incbin "baserom.gba", 0xB54758, 0x0000004

gUnk_08B5475C:: @ 08B5475C
	.incbin "baserom.gba", 0xB5475C, 0x0000004

gUnk_08B54760:: @ 08B54760
	.incbin "baserom.gba", 0xB54760, 0x0000004

gUnk_08B54764:: @ 08B54764
	.incbin "baserom.gba", 0xB54764, 0x0000004

gUnk_08B54768:: @ 08B54768
	.incbin "baserom.gba", 0xB54768, 0x0000010

gUnk_08B54778:: @ 08B54778
	.incbin "baserom.gba", 0xB54778, 0x0000008

gUnk_08B54780:: @ 08B54780
	.incbin "baserom.gba", 0xB54780, 0x0000004

gUnk_08B54784:: @ 08B54784
	.incbin "baserom.gba", 0xB54784, 0x0000004

gUnk_08B54788:: @ 08B54788
	.incbin "baserom.gba", 0xB54788, 0x0000008

gUnk_08B54790:: @ 08B54790
	.incbin "baserom.gba", 0xB54790, 0x0000004

gUnk_08B54794:: @ 08B54794
	.incbin "baserom.gba", 0xB54794, 0x0000004

gUnk_08B54798:: @ 08B54798
	.incbin "baserom.gba", 0xB54798, 0x0000004

gUnk_08B5479C:: @ 08B5479C
	.incbin "baserom.gba", 0xB5479C, 0x0000004

gUnk_08B547A0:: @ 08B547A0
	.incbin "baserom.gba", 0xB547A0, 0x0000004

gUnk_08B547A4:: @ 08B547A4
	.incbin "baserom.gba", 0xB547A4, 0x0000008

gUnk_08B547AC:: @ 08B547AC
	.incbin "baserom.gba", 0xB547AC, 0x000000C

gUnk_08B547B8:: @ 08B547B8
	.incbin "baserom.gba", 0xB547B8, 0x000000C

gUnk_08B547C4:: @ 08B547C4
	.incbin "baserom.gba", 0xB547C4, 0x0000010

gUnk_08B547D4:: @ 08B547D4
	.incbin "baserom.gba", 0xB547D4, 0x0000014

gUnk_08B547E8:: @ 08B547E8
	.incbin "baserom.gba", 0xB547E8, 0x0000010

gUnk_08B547F8:: @ 08B547F8
	.incbin "baserom.gba", 0xB547F8, 0x000004C

gUnk_08B54844:: @ 08B54844
	.incbin "baserom.gba", 0xB54844, 0x000004C

gUnk_08B54890:: @ 08B54890
	.incbin "baserom.gba", 0xB54890, 0x0000004

gUnk_08B54894:: @ 08B54894
	.incbin "baserom.gba", 0xB54894, 0x0000004

gUnk_08B54898:: @ 08B54898
	.incbin "baserom.gba", 0xB54898, 0x0000004

gUnk_08B5489C:: @ 08B5489C
	.incbin "baserom.gba", 0xB5489C, 0x0000004

gUnk_08B548A0:: @ 08B548A0
	.incbin "baserom.gba", 0xB548A0, 0x0000004

gUnk_08B548A4:: @ 08B548A4
	.incbin "baserom.gba", 0xB548A4, 0x0000004

gUnk_08B548A8:: @ 08B548A8
	.incbin "baserom.gba", 0xB548A8, 0x0000004

gUnk_08B548AC:: @ 08B548AC
	.incbin "baserom.gba", 0xB548AC, 0x0000010

gUnk_08B548BC:: @ 08B548BC
	.incbin "baserom.gba", 0xB548BC, 0x0000004

gUnk_08B548C0:: @ 08B548C0
	.incbin "baserom.gba", 0xB548C0, 0x000000C

gUnk_08B548CC:: @ 08B548CC
	.incbin "baserom.gba", 0xB548CC, 0x0000008

gUnk_08B548D4:: @ 08B548D4
	.incbin "baserom.gba", 0xB548D4, 0x0000004

gUnk_08B548D8:: @ 08B548D8
	.incbin "baserom.gba", 0xB548D8, 0x0000004

gUnk_08B548DC:: @ 08B548DC
	.incbin "baserom.gba", 0xB548DC, 0x0000008

gUnk_08B548E4:: @ 08B548E4
	.incbin "baserom.gba", 0xB548E4, 0x000000C

gUnk_08B548F0:: @ 08B548F0
	.incbin "baserom.gba", 0xB548F0, 0x0000004

gUnk_08B548F4:: @ 08B548F4
	.incbin "baserom.gba", 0xB548F4, 0x0000008

gUnk_08B548FC:: @ 08B548FC
	.incbin "baserom.gba", 0xB548FC, 0x0000004

gUnk_08B54900:: @ 08B54900
	.incbin "baserom.gba", 0xB54900, 0x000000C

gUnk_08B5490C:: @ 08B5490C
	.incbin "baserom.gba", 0xB5490C, 0x000000C

gUnk_08B54918:: @ 08B54918
	.incbin "baserom.gba", 0xB54918, 0x0000010

gUnk_08B54928:: @ 08B54928
	.incbin "baserom.gba", 0xB54928, 0x0000014

gUnk_08B5493C:: @ 08B5493C
	.incbin "baserom.gba", 0xB5493C, 0x0000010

gUnk_08B5494C:: @ 08B5494C
	.incbin "baserom.gba", 0xB5494C, 0x000004C

gUnk_08B54998:: @ 08B54998
	.incbin "baserom.gba", 0xB54998, 0x0000004

gUnk_08B5499C:: @ 08B5499C
	.incbin "baserom.gba", 0xB5499C, 0x0000004

gUnk_08B549A0:: @ 08B549A0
	.incbin "baserom.gba", 0xB549A0, 0x0000004

gUnk_08B549A4:: @ 08B549A4
	.incbin "baserom.gba", 0xB549A4, 0x0000004

gUnk_08B549A8:: @ 08B549A8
	.incbin "baserom.gba", 0xB549A8, 0x0000004

gUnk_08B549AC:: @ 08B549AC
	.incbin "baserom.gba", 0xB549AC, 0x0000004

gUnk_08B549B0:: @ 08B549B0
	.incbin "baserom.gba", 0xB549B0, 0x0000004

gUnk_08B549B4:: @ 08B549B4
	.incbin "baserom.gba", 0xB549B4, 0x0000004

gUnk_08B549B8:: @ 08B549B8
	.incbin "baserom.gba", 0xB549B8, 0x0000004

gUnk_08B549BC:: @ 08B549BC
	.incbin "baserom.gba", 0xB549BC, 0x0000004

gUnk_08B549C0:: @ 08B549C0
	.incbin "baserom.gba", 0xB549C0, 0x0000004

gUnk_08B549C4:: @ 08B549C4
	.incbin "baserom.gba", 0xB549C4, 0x0000004

gUnk_08B549C8:: @ 08B549C8
	.incbin "baserom.gba", 0xB549C8, 0x0000004

gUnk_08B549CC:: @ 08B549CC
	.incbin "baserom.gba", 0xB549CC, 0x0000004

gUnk_08B549D0:: @ 08B549D0
	.incbin "baserom.gba", 0xB549D0, 0x0000008

gUnk_08B549D8:: @ 08B549D8
	.incbin "baserom.gba", 0xB549D8, 0x0000004

gUnk_08B549DC:: @ 08B549DC
	.incbin "baserom.gba", 0xB549DC, 0x0000004

gUnk_08B549E0:: @ 08B549E0
	.incbin "baserom.gba", 0xB549E0, 0x0000004

gUnk_08B549E4:: @ 08B549E4
	.incbin "baserom.gba", 0xB549E4, 0x0000004

gUnk_08B549E8:: @ 08B549E8
	.incbin "baserom.gba", 0xB549E8, 0x0000004

gUnk_08B549EC:: @ 08B549EC
	.incbin "baserom.gba", 0xB549EC, 0x0000004

gUnk_08B549F0:: @ 08B549F0
	.incbin "baserom.gba", 0xB549F0, 0x0000004

gUnk_08B549F4:: @ 08B549F4
	.incbin "baserom.gba", 0xB549F4, 0x0000004

gUnk_08B549F8:: @ 08B549F8
	.incbin "baserom.gba", 0xB549F8, 0x000004C

gUnk_08B54A44:: @ 08B54A44
	.incbin "baserom.gba", 0xB54A44, 0x0000004

gUnk_08B54A48:: @ 08B54A48
	.incbin "baserom.gba", 0xB54A48, 0x0000004

gUnk_08B54A4C:: @ 08B54A4C
	.incbin "baserom.gba", 0xB54A4C, 0x0000004

gUnk_08B54A50:: @ 08B54A50
	.incbin "baserom.gba", 0xB54A50, 0x0000004

gUnk_08B54A54:: @ 08B54A54
	.incbin "baserom.gba", 0xB54A54, 0x0000004

gUnk_08B54A58:: @ 08B54A58
	.incbin "baserom.gba", 0xB54A58, 0x0000004

gUnk_08B54A5C:: @ 08B54A5C
	.incbin "baserom.gba", 0xB54A5C, 0x0000004

gUnk_08B54A60:: @ 08B54A60
	.incbin "baserom.gba", 0xB54A60, 0x0000008

gUnk_08B54A68:: @ 08B54A68
	.incbin "baserom.gba", 0xB54A68, 0x0000004

gUnk_08B54A6C:: @ 08B54A6C
	.incbin "baserom.gba", 0xB54A6C, 0x0000004

gUnk_08B54A70:: @ 08B54A70
	.incbin "baserom.gba", 0xB54A70, 0x0000004

gUnk_08B54A74:: @ 08B54A74
	.incbin "baserom.gba", 0xB54A74, 0x0000004

gUnk_08B54A78:: @ 08B54A78
	.incbin "baserom.gba", 0xB54A78, 0x0000004

gUnk_08B54A7C:: @ 08B54A7C
	.incbin "baserom.gba", 0xB54A7C, 0x0000004

gUnk_08B54A80:: @ 08B54A80
	.incbin "baserom.gba", 0xB54A80, 0x0000004

gUnk_08B54A84:: @ 08B54A84
	.incbin "baserom.gba", 0xB54A84, 0x0000008

gUnk_08B54A8C:: @ 08B54A8C
	.incbin "baserom.gba", 0xB54A8C, 0x0000004

gUnk_08B54A90:: @ 08B54A90
	.incbin "baserom.gba", 0xB54A90, 0x0000004

gUnk_08B54A94:: @ 08B54A94
	.incbin "baserom.gba", 0xB54A94, 0x0000004

gUnk_08B54A98:: @ 08B54A98
	.incbin "baserom.gba", 0xB54A98, 0x0000004

gUnk_08B54A9C:: @ 08B54A9C
	.incbin "baserom.gba", 0xB54A9C, 0x0000004

gUnk_08B54AA0:: @ 08B54AA0
	.incbin "baserom.gba", 0xB54AA0, 0x000000C

gUnk_08B54AAC:: @ 08B54AAC
	.incbin "baserom.gba", 0xB54AAC, 0x0000004

gUnk_08B54AB0:: @ 08B54AB0
	.incbin "baserom.gba", 0xB54AB0, 0x000004C

gUnk_08B54AFC:: @ 08B54AFC
	.incbin "baserom.gba", 0xB54AFC, 0x0000004

gUnk_08B54B00:: @ 08B54B00
	.incbin "baserom.gba", 0xB54B00, 0x0000004

gUnk_08B54B04:: @ 08B54B04
	.incbin "baserom.gba", 0xB54B04, 0x0000004

gUnk_08B54B08:: @ 08B54B08
	.incbin "baserom.gba", 0xB54B08, 0x0000004

gUnk_08B54B0C:: @ 08B54B0C
	.incbin "baserom.gba", 0xB54B0C, 0x0000004

gUnk_08B54B10:: @ 08B54B10
	.incbin "baserom.gba", 0xB54B10, 0x0000004

gUnk_08B54B14:: @ 08B54B14
	.incbin "baserom.gba", 0xB54B14, 0x0000004

gUnk_08B54B18:: @ 08B54B18
	.incbin "baserom.gba", 0xB54B18, 0x0000010

gUnk_08B54B28:: @ 08B54B28
	.incbin "baserom.gba", 0xB54B28, 0x0000004

gUnk_08B54B2C:: @ 08B54B2C
	.incbin "baserom.gba", 0xB54B2C, 0x0000004

gUnk_08B54B30:: @ 08B54B30
	.incbin "baserom.gba", 0xB54B30, 0x0000004

gUnk_08B54B34:: @ 08B54B34
	.incbin "baserom.gba", 0xB54B34, 0x0000004

gUnk_08B54B38:: @ 08B54B38
	.incbin "baserom.gba", 0xB54B38, 0x0000004

gUnk_08B54B3C:: @ 08B54B3C
	.incbin "baserom.gba", 0xB54B3C, 0x0000004

gUnk_08B54B40:: @ 08B54B40
	.incbin "baserom.gba", 0xB54B40, 0x0000004

gUnk_08B54B44:: @ 08B54B44
	.incbin "baserom.gba", 0xB54B44, 0x0000004

gUnk_08B54B48:: @ 08B54B48
	.incbin "baserom.gba", 0xB54B48, 0x0000008

gUnk_08B54B50:: @ 08B54B50
	.incbin "baserom.gba", 0xB54B50, 0x0000004

gUnk_08B54B54:: @ 08B54B54
	.incbin "baserom.gba", 0xB54B54, 0x0000008

gUnk_08B54B5C:: @ 08B54B5C
	.incbin "baserom.gba", 0xB54B5C, 0x000000C

gUnk_08B54B68:: @ 08B54B68
	.incbin "baserom.gba", 0xB54B68, 0x000000C

gUnk_08B54B74:: @ 08B54B74
	.incbin "baserom.gba", 0xB54B74, 0x0000010

gUnk_08B54B84:: @ 08B54B84
	.incbin "baserom.gba", 0xB54B84, 0x000000C

gUnk_08B54B90:: @ 08B54B90
	.incbin "baserom.gba", 0xB54B90, 0x000004C

gUnk_08B54BDC:: @ 08B54BDC
	.incbin "baserom.gba", 0xB54BDC, 0x0000004

gUnk_08B54BE0:: @ 08B54BE0
	.incbin "baserom.gba", 0xB54BE0, 0x0000004

gUnk_08B54BE4:: @ 08B54BE4
	.incbin "baserom.gba", 0xB54BE4, 0x0000004

gUnk_08B54BE8:: @ 08B54BE8
	.incbin "baserom.gba", 0xB54BE8, 0x0000004

gUnk_08B54BEC:: @ 08B54BEC
	.incbin "baserom.gba", 0xB54BEC, 0x0000004

gUnk_08B54BF0:: @ 08B54BF0
	.incbin "baserom.gba", 0xB54BF0, 0x0000004

gUnk_08B54BF4:: @ 08B54BF4
	.incbin "baserom.gba", 0xB54BF4, 0x0000004

gUnk_08B54BF8:: @ 08B54BF8
	.incbin "baserom.gba", 0xB54BF8, 0x0000014

gUnk_08B54C0C:: @ 08B54C0C
	.incbin "baserom.gba", 0xB54C0C, 0x000000C

gUnk_08B54C18:: @ 08B54C18
	.incbin "baserom.gba", 0xB54C18, 0x0000004

gUnk_08B54C1C:: @ 08B54C1C
	.incbin "baserom.gba", 0xB54C1C, 0x0000004

gUnk_08B54C20:: @ 08B54C20
	.incbin "baserom.gba", 0xB54C20, 0x0000008

gUnk_08B54C28:: @ 08B54C28
	.incbin "baserom.gba", 0xB54C28, 0x0000004

gUnk_08B54C2C:: @ 08B54C2C
	.incbin "baserom.gba", 0xB54C2C, 0x0000004

gUnk_08B54C30:: @ 08B54C30
	.incbin "baserom.gba", 0xB54C30, 0x0000004

gUnk_08B54C34:: @ 08B54C34
	.incbin "baserom.gba", 0xB54C34, 0x0000004

gUnk_08B54C38:: @ 08B54C38
	.incbin "baserom.gba", 0xB54C38, 0x0000004

gUnk_08B54C3C:: @ 08B54C3C
	.incbin "baserom.gba", 0xB54C3C, 0x0000008

gUnk_08B54C44:: @ 08B54C44
	.incbin "baserom.gba", 0xB54C44, 0x000000C

gUnk_08B54C50:: @ 08B54C50
	.incbin "baserom.gba", 0xB54C50, 0x0000010

gUnk_08B54C60:: @ 08B54C60
	.incbin "baserom.gba", 0xB54C60, 0x0000010

gUnk_08B54C70:: @ 08B54C70
	.incbin "baserom.gba", 0xB54C70, 0x0000014

gUnk_08B54C84:: @ 08B54C84
	.incbin "baserom.gba", 0xB54C84, 0x0000010

gUnk_08B54C94:: @ 08B54C94
	.incbin "baserom.gba", 0xB54C94, 0x000004C

gUnk_08B54CE0:: @ 08B54CE0
	.incbin "baserom.gba", 0xB54CE0, 0x0000004

gUnk_08B54CE4:: @ 08B54CE4
	.incbin "baserom.gba", 0xB54CE4, 0x0000004

gUnk_08B54CE8:: @ 08B54CE8
	.incbin "baserom.gba", 0xB54CE8, 0x0000004

gUnk_08B54CEC:: @ 08B54CEC
	.incbin "baserom.gba", 0xB54CEC, 0x0000004

gUnk_08B54CF0:: @ 08B54CF0
	.incbin "baserom.gba", 0xB54CF0, 0x0000004

gUnk_08B54CF4:: @ 08B54CF4
	.incbin "baserom.gba", 0xB54CF4, 0x0000004

gUnk_08B54CF8:: @ 08B54CF8
	.incbin "baserom.gba", 0xB54CF8, 0x0000004

gUnk_08B54CFC:: @ 08B54CFC
	.incbin "baserom.gba", 0xB54CFC, 0x000000C

gUnk_08B54D08:: @ 08B54D08
	.incbin "baserom.gba", 0xB54D08, 0x0000004

gUnk_08B54D0C:: @ 08B54D0C
	.incbin "baserom.gba", 0xB54D0C, 0x0000004

gUnk_08B54D10:: @ 08B54D10
	.incbin "baserom.gba", 0xB54D10, 0x0000004

gUnk_08B54D14:: @ 08B54D14
	.incbin "baserom.gba", 0xB54D14, 0x0000004

gUnk_08B54D18:: @ 08B54D18
	.incbin "baserom.gba", 0xB54D18, 0x0000004

gUnk_08B54D1C:: @ 08B54D1C
	.incbin "baserom.gba", 0xB54D1C, 0x0000004

gUnk_08B54D20:: @ 08B54D20
	.incbin "baserom.gba", 0xB54D20, 0x0000004

gUnk_08B54D24:: @ 08B54D24
	.incbin "baserom.gba", 0xB54D24, 0x0000004

gUnk_08B54D28:: @ 08B54D28
	.incbin "baserom.gba", 0xB54D28, 0x0000004

gUnk_08B54D2C:: @ 08B54D2C
	.incbin "baserom.gba", 0xB54D2C, 0x0000004

gUnk_08B54D30:: @ 08B54D30
	.incbin "baserom.gba", 0xB54D30, 0x0000008

gUnk_08B54D38:: @ 08B54D38
	.incbin "baserom.gba", 0xB54D38, 0x0000008

gUnk_08B54D40:: @ 08B54D40
	.incbin "baserom.gba", 0xB54D40, 0x000000C

gUnk_08B54D4C:: @ 08B54D4C
	.incbin "baserom.gba", 0xB54D4C, 0x0000010

gUnk_08B54D5C:: @ 08B54D5C
	.incbin "baserom.gba", 0xB54D5C, 0x000000C

gUnk_08B54D68:: @ 08B54D68
	.incbin "baserom.gba", 0xB54D68, 0x000004C

gUnk_08B54DB4:: @ 08B54DB4
	.incbin "baserom.gba", 0xB54DB4, 0x0000004

gUnk_08B54DB8:: @ 08B54DB8
	.incbin "baserom.gba", 0xB54DB8, 0x0000004

gUnk_08B54DBC:: @ 08B54DBC
	.incbin "baserom.gba", 0xB54DBC, 0x0000004

gUnk_08B54DC0:: @ 08B54DC0
	.incbin "baserom.gba", 0xB54DC0, 0x0000004

gUnk_08B54DC4:: @ 08B54DC4
	.incbin "baserom.gba", 0xB54DC4, 0x0000004

gUnk_08B54DC8:: @ 08B54DC8
	.incbin "baserom.gba", 0xB54DC8, 0x0000004

gUnk_08B54DCC:: @ 08B54DCC
	.incbin "baserom.gba", 0xB54DCC, 0x0000004

gUnk_08B54DD0:: @ 08B54DD0
	.incbin "baserom.gba", 0xB54DD0, 0x000000C

gUnk_08B54DDC:: @ 08B54DDC
	.incbin "baserom.gba", 0xB54DDC, 0x0000004

gUnk_08B54DE0:: @ 08B54DE0
	.incbin "baserom.gba", 0xB54DE0, 0x0000004

gUnk_08B54DE4:: @ 08B54DE4
	.incbin "baserom.gba", 0xB54DE4, 0x0000004

gUnk_08B54DE8:: @ 08B54DE8
	.incbin "baserom.gba", 0xB54DE8, 0x0000004

gUnk_08B54DEC:: @ 08B54DEC
	.incbin "baserom.gba", 0xB54DEC, 0x0000004

gUnk_08B54DF0:: @ 08B54DF0
	.incbin "baserom.gba", 0xB54DF0, 0x0000004

gUnk_08B54DF4:: @ 08B54DF4
	.incbin "baserom.gba", 0xB54DF4, 0x0000004

gUnk_08B54DF8:: @ 08B54DF8
	.incbin "baserom.gba", 0xB54DF8, 0x0000004

gUnk_08B54DFC:: @ 08B54DFC
	.incbin "baserom.gba", 0xB54DFC, 0x0000004

gUnk_08B54E00:: @ 08B54E00
	.incbin "baserom.gba", 0xB54E00, 0x0000004

gUnk_08B54E04:: @ 08B54E04
	.incbin "baserom.gba", 0xB54E04, 0x0000004

gUnk_08B54E08:: @ 08B54E08
	.incbin "baserom.gba", 0xB54E08, 0x0000008

gUnk_08B54E10:: @ 08B54E10
	.incbin "baserom.gba", 0xB54E10, 0x0000008

gUnk_08B54E18:: @ 08B54E18
	.incbin "baserom.gba", 0xB54E18, 0x000000C

gUnk_08B54E24:: @ 08B54E24
	.incbin "baserom.gba", 0xB54E24, 0x0000008

gUnk_08B54E2C:: @ 08B54E2C
	.incbin "baserom.gba", 0xB54E2C, 0x000004C

gUnk_08B54E78:: @ 08B54E78
	.incbin "baserom.gba", 0xB54E78, 0x0000004

gUnk_08B54E7C:: @ 08B54E7C
	.incbin "baserom.gba", 0xB54E7C, 0x0000004

gUnk_08B54E80:: @ 08B54E80
	.incbin "baserom.gba", 0xB54E80, 0x0000004

gUnk_08B54E84:: @ 08B54E84
	.incbin "baserom.gba", 0xB54E84, 0x0000004

gUnk_08B54E88:: @ 08B54E88
	.incbin "baserom.gba", 0xB54E88, 0x0000004

gUnk_08B54E8C:: @ 08B54E8C
	.incbin "baserom.gba", 0xB54E8C, 0x0000004

gUnk_08B54E90:: @ 08B54E90
	.incbin "baserom.gba", 0xB54E90, 0x0000004

gUnk_08B54E94:: @ 08B54E94
	.incbin "baserom.gba", 0xB54E94, 0x0000008

gUnk_08B54E9C:: @ 08B54E9C
	.incbin "baserom.gba", 0xB54E9C, 0x0000004

gUnk_08B54EA0:: @ 08B54EA0
	.incbin "baserom.gba", 0xB54EA0, 0x0000004

gUnk_08B54EA4:: @ 08B54EA4
	.incbin "baserom.gba", 0xB54EA4, 0x0000004

gUnk_08B54EA8:: @ 08B54EA8
	.incbin "baserom.gba", 0xB54EA8, 0x0000004

gUnk_08B54EAC:: @ 08B54EAC
	.incbin "baserom.gba", 0xB54EAC, 0x0000004

gUnk_08B54EB0:: @ 08B54EB0
	.incbin "baserom.gba", 0xB54EB0, 0x0000004

gUnk_08B54EB4:: @ 08B54EB4
	.incbin "baserom.gba", 0xB54EB4, 0x0000004

gUnk_08B54EB8:: @ 08B54EB8
	.incbin "baserom.gba", 0xB54EB8, 0x0000004

gUnk_08B54EBC:: @ 08B54EBC
	.incbin "baserom.gba", 0xB54EBC, 0x0000004

gUnk_08B54EC0:: @ 08B54EC0
	.incbin "baserom.gba", 0xB54EC0, 0x0000004

gUnk_08B54EC4:: @ 08B54EC4
	.incbin "baserom.gba", 0xB54EC4, 0x0000004

gUnk_08B54EC8:: @ 08B54EC8
	.incbin "baserom.gba", 0xB54EC8, 0x0000004

gUnk_08B54ECC:: @ 08B54ECC
	.incbin "baserom.gba", 0xB54ECC, 0x0000008

gUnk_08B54ED4:: @ 08B54ED4
	.incbin "baserom.gba", 0xB54ED4, 0x000000C

gUnk_08B54EE0:: @ 08B54EE0
	.incbin "baserom.gba", 0xB54EE0, 0x0000004

gUnk_08B54EE4:: @ 08B54EE4
	.incbin "baserom.gba", 0xB54EE4, 0x000004C

gUnk_08B54F30:: @ 08B54F30
	.incbin "baserom.gba", 0xB54F30, 0x0000004

gUnk_08B54F34:: @ 08B54F34
	.incbin "baserom.gba", 0xB54F34, 0x0000004

gUnk_08B54F38:: @ 08B54F38
	.incbin "baserom.gba", 0xB54F38, 0x0000004

gUnk_08B54F3C:: @ 08B54F3C
	.incbin "baserom.gba", 0xB54F3C, 0x0000004

gUnk_08B54F40:: @ 08B54F40
	.incbin "baserom.gba", 0xB54F40, 0x0000004

gUnk_08B54F44:: @ 08B54F44
	.incbin "baserom.gba", 0xB54F44, 0x0000004

gUnk_08B54F48:: @ 08B54F48
	.incbin "baserom.gba", 0xB54F48, 0x0000004

gUnk_08B54F4C:: @ 08B54F4C
	.incbin "baserom.gba", 0xB54F4C, 0x0000004

gUnk_08B54F50:: @ 08B54F50
	.incbin "baserom.gba", 0xB54F50, 0x0000004

gUnk_08B54F54:: @ 08B54F54
	.incbin "baserom.gba", 0xB54F54, 0x0000004

gUnk_08B54F58:: @ 08B54F58
	.incbin "baserom.gba", 0xB54F58, 0x0000004

gUnk_08B54F5C:: @ 08B54F5C
	.incbin "baserom.gba", 0xB54F5C, 0x0000004

gUnk_08B54F60:: @ 08B54F60
	.incbin "baserom.gba", 0xB54F60, 0x0000004

gUnk_08B54F64:: @ 08B54F64
	.incbin "baserom.gba", 0xB54F64, 0x0000004

gUnk_08B54F68:: @ 08B54F68
	.incbin "baserom.gba", 0xB54F68, 0x0000004

gUnk_08B54F6C:: @ 08B54F6C
	.incbin "baserom.gba", 0xB54F6C, 0x0000004

gUnk_08B54F70:: @ 08B54F70
	.incbin "baserom.gba", 0xB54F70, 0x0000004

gUnk_08B54F74:: @ 08B54F74
	.incbin "baserom.gba", 0xB54F74, 0x0000004

gUnk_08B54F78:: @ 08B54F78
	.incbin "baserom.gba", 0xB54F78, 0x0000004

gUnk_08B54F7C:: @ 08B54F7C
	.incbin "baserom.gba", 0xB54F7C, 0x0000004

gUnk_08B54F80:: @ 08B54F80
	.incbin "baserom.gba", 0xB54F80, 0x0000004

gUnk_08B54F84:: @ 08B54F84
	.incbin "baserom.gba", 0xB54F84, 0x0000008

gUnk_08B54F8C:: @ 08B54F8C
	.incbin "baserom.gba", 0xB54F8C, 0x0000004

gUnk_08B54F90:: @ 08B54F90
	.incbin "baserom.gba", 0xB54F90, 0x000004C

gUnk_08B54FDC:: @ 08B54FDC
	.incbin "baserom.gba", 0xB54FDC, 0x0000004

gUnk_08B54FE0:: @ 08B54FE0
	.incbin "baserom.gba", 0xB54FE0, 0x0000004

gUnk_08B54FE4:: @ 08B54FE4
	.incbin "baserom.gba", 0xB54FE4, 0x0000004

gUnk_08B54FE8:: @ 08B54FE8
	.incbin "baserom.gba", 0xB54FE8, 0x0000004

gUnk_08B54FEC:: @ 08B54FEC
	.incbin "baserom.gba", 0xB54FEC, 0x0000004

gUnk_08B54FF0:: @ 08B54FF0
	.incbin "baserom.gba", 0xB54FF0, 0x0000004

gUnk_08B54FF4:: @ 08B54FF4
	.incbin "baserom.gba", 0xB54FF4, 0x0000004

gUnk_08B54FF8:: @ 08B54FF8
	.incbin "baserom.gba", 0xB54FF8, 0x000000C

gUnk_08B55004:: @ 08B55004
	.incbin "baserom.gba", 0xB55004, 0x0000004

gUnk_08B55008:: @ 08B55008
	.incbin "baserom.gba", 0xB55008, 0x0000004

gUnk_08B5500C:: @ 08B5500C
	.incbin "baserom.gba", 0xB5500C, 0x0000004

gUnk_08B55010:: @ 08B55010
	.incbin "baserom.gba", 0xB55010, 0x0000004

gUnk_08B55014:: @ 08B55014
	.incbin "baserom.gba", 0xB55014, 0x0000004

gUnk_08B55018:: @ 08B55018
	.incbin "baserom.gba", 0xB55018, 0x0000004

gUnk_08B5501C:: @ 08B5501C
	.incbin "baserom.gba", 0xB5501C, 0x0000004

gUnk_08B55020:: @ 08B55020
	.incbin "baserom.gba", 0xB55020, 0x0000004

gUnk_08B55024:: @ 08B55024
	.incbin "baserom.gba", 0xB55024, 0x0000004

gUnk_08B55028:: @ 08B55028
	.incbin "baserom.gba", 0xB55028, 0x0000004

gUnk_08B5502C:: @ 08B5502C
	.incbin "baserom.gba", 0xB5502C, 0x0000004

gUnk_08B55030:: @ 08B55030
	.incbin "baserom.gba", 0xB55030, 0x0000008

gUnk_08B55038:: @ 08B55038
	.incbin "baserom.gba", 0xB55038, 0x000000C

gUnk_08B55044:: @ 08B55044
	.incbin "baserom.gba", 0xB55044, 0x0000010

gUnk_08B55054:: @ 08B55054
	.incbin "baserom.gba", 0xB55054, 0x0000008

gUnk_08B5505C:: @ 08B5505C
	.incbin "baserom.gba", 0xB5505C, 0x000004C

gUnk_08B550A8:: @ 08B550A8
	.incbin "baserom.gba", 0xB550A8, 0x0000004

gUnk_08B550AC:: @ 08B550AC
	.incbin "baserom.gba", 0xB550AC, 0x0000004

gUnk_08B550B0:: @ 08B550B0
	.incbin "baserom.gba", 0xB550B0, 0x0000004

gUnk_08B550B4:: @ 08B550B4
	.incbin "baserom.gba", 0xB550B4, 0x0000004

gUnk_08B550B8:: @ 08B550B8
	.incbin "baserom.gba", 0xB550B8, 0x0000004

gUnk_08B550BC:: @ 08B550BC
	.incbin "baserom.gba", 0xB550BC, 0x0000004

gUnk_08B550C0:: @ 08B550C0
	.incbin "baserom.gba", 0xB550C0, 0x000000C

gUnk_08B550CC:: @ 08B550CC
	.incbin "baserom.gba", 0xB550CC, 0x0000004

gUnk_08B550D0:: @ 08B550D0
	.incbin "baserom.gba", 0xB550D0, 0x0000014

gUnk_08B550E4:: @ 08B550E4
	.incbin "baserom.gba", 0xB550E4, 0x000000C

gUnk_08B550F0:: @ 08B550F0
	.incbin "baserom.gba", 0xB550F0, 0x0000010

gUnk_08B55100:: @ 08B55100
	.incbin "baserom.gba", 0xB55100, 0x0000014

gUnk_08B55114:: @ 08B55114
	.incbin "baserom.gba", 0xB55114, 0x000000C

gUnk_08B55120:: @ 08B55120
	.incbin "baserom.gba", 0xB55120, 0x000000C

gUnk_08B5512C:: @ 08B5512C
	.incbin "baserom.gba", 0xB5512C, 0x0000008

gUnk_08B55134:: @ 08B55134
	.incbin "baserom.gba", 0xB55134, 0x0000010

gUnk_08B55144:: @ 08B55144
	.incbin "baserom.gba", 0xB55144, 0x0000014

gUnk_08B55158:: @ 08B55158
	.incbin "baserom.gba", 0xB55158, 0x0000010

gUnk_08B55168:: @ 08B55168
	.incbin "baserom.gba", 0xB55168, 0x0000010

gUnk_08B55178:: @ 08B55178
	.incbin "baserom.gba", 0xB55178, 0x0000008

gUnk_08B55180:: @ 08B55180
	.incbin "baserom.gba", 0xB55180, 0x0000010

gUnk_08B55190:: @ 08B55190
	.incbin "baserom.gba", 0xB55190, 0x0000014

gUnk_08B551A4:: @ 08B551A4
	.incbin "baserom.gba", 0xB551A4, 0x000000C

gUnk_08B551B0:: @ 08B551B0
	.incbin "baserom.gba", 0xB551B0, 0x0000010

gUnk_08B551C0:: @ 08B551C0
	.incbin "baserom.gba", 0xB551C0, 0x0000010

gUnk_08B551D0:: @ 08B551D0
	.incbin "baserom.gba", 0xB551D0, 0x0000008

gUnk_08B551D8:: @ 08B551D8
	.incbin "baserom.gba", 0xB551D8, 0x000004C

gUnk_08B55224:: @ 08B55224
	.incbin "baserom.gba", 0xB55224, 0x0000004

gUnk_08B55228:: @ 08B55228
	.incbin "baserom.gba", 0xB55228, 0x0000004

gUnk_08B5522C:: @ 08B5522C
	.incbin "baserom.gba", 0xB5522C, 0x0000004

gUnk_08B55230:: @ 08B55230
	.incbin "baserom.gba", 0xB55230, 0x0000004

gUnk_08B55234:: @ 08B55234
	.incbin "baserom.gba", 0xB55234, 0x0000004

gUnk_08B55238:: @ 08B55238
	.incbin "baserom.gba", 0xB55238, 0x0000004

gUnk_08B5523C:: @ 08B5523C
	.incbin "baserom.gba", 0xB5523C, 0x0000004

gUnk_08B55240:: @ 08B55240
	.incbin "baserom.gba", 0xB55240, 0x0000004

gUnk_08B55244:: @ 08B55244
	.incbin "baserom.gba", 0xB55244, 0x0000004

gUnk_08B55248:: @ 08B55248
	.incbin "baserom.gba", 0xB55248, 0x0000004

gUnk_08B5524C:: @ 08B5524C
	.incbin "baserom.gba", 0xB5524C, 0x0000004

gUnk_08B55250:: @ 08B55250
	.incbin "baserom.gba", 0xB55250, 0x000000C

gUnk_08B5525C:: @ 08B5525C
	.incbin "baserom.gba", 0xB5525C, 0x0000004

gUnk_08B55260:: @ 08B55260
	.incbin "baserom.gba", 0xB55260, 0x0000004

gUnk_08B55264:: @ 08B55264
	.incbin "baserom.gba", 0xB55264, 0x0000004

gUnk_08B55268:: @ 08B55268
	.incbin "baserom.gba", 0xB55268, 0x0000004

gUnk_08B5526C:: @ 08B5526C
	.incbin "baserom.gba", 0xB5526C, 0x0000004

gUnk_08B55270:: @ 08B55270
	.incbin "baserom.gba", 0xB55270, 0x0000004

gUnk_08B55274:: @ 08B55274
	.incbin "baserom.gba", 0xB55274, 0x0000004

gUnk_08B55278:: @ 08B55278
	.incbin "baserom.gba", 0xB55278, 0x0000004

gUnk_08B5527C:: @ 08B5527C
	.incbin "baserom.gba", 0xB5527C, 0x0000008

gUnk_08B55284:: @ 08B55284
	.incbin "baserom.gba", 0xB55284, 0x0000008

gUnk_08B5528C:: @ 08B5528C
	.incbin "baserom.gba", 0xB5528C, 0x0000004

gUnk_08B55290:: @ 08B55290
	.incbin "baserom.gba", 0xB55290, 0x0000004

gUnk_08B55294:: @ 08B55294
	.incbin "baserom.gba", 0xB55294, 0x0000004

gUnk_08B55298:: @ 08B55298
	.incbin "baserom.gba", 0xB55298, 0x0000004

gUnk_08B5529C:: @ 08B5529C
	.incbin "baserom.gba", 0xB5529C, 0x000004C

gUnk_08B552E8:: @ 08B552E8
	.incbin "baserom.gba", 0xB552E8, 0x0000004

gUnk_08B552EC:: @ 08B552EC
	.incbin "baserom.gba", 0xB552EC, 0x0000004

gUnk_08B552F0:: @ 08B552F0
	.incbin "baserom.gba", 0xB552F0, 0x0000004

gUnk_08B552F4:: @ 08B552F4
	.incbin "baserom.gba", 0xB552F4, 0x0000004

gUnk_08B552F8:: @ 08B552F8
	.incbin "baserom.gba", 0xB552F8, 0x0000004

gUnk_08B552FC:: @ 08B552FC
	.incbin "baserom.gba", 0xB552FC, 0x0000004

gUnk_08B55300:: @ 08B55300
	.incbin "baserom.gba", 0xB55300, 0x0000004

gUnk_08B55304:: @ 08B55304
	.incbin "baserom.gba", 0xB55304, 0x0000004

gUnk_08B55308:: @ 08B55308
	.incbin "baserom.gba", 0xB55308, 0x0000004

gUnk_08B5530C:: @ 08B5530C
	.incbin "baserom.gba", 0xB5530C, 0x0000004

gUnk_08B55310:: @ 08B55310
	.incbin "baserom.gba", 0xB55310, 0x0000004

gUnk_08B55314:: @ 08B55314
	.incbin "baserom.gba", 0xB55314, 0x0000008

gUnk_08B5531C:: @ 08B5531C
	.incbin "baserom.gba", 0xB5531C, 0x0000004

gUnk_08B55320:: @ 08B55320
	.incbin "baserom.gba", 0xB55320, 0x0000004

gUnk_08B55324:: @ 08B55324
	.incbin "baserom.gba", 0xB55324, 0x0000004

gUnk_08B55328:: @ 08B55328
	.incbin "baserom.gba", 0xB55328, 0x0000004

gUnk_08B5532C:: @ 08B5532C
	.incbin "baserom.gba", 0xB5532C, 0x0000004

gUnk_08B55330:: @ 08B55330
	.incbin "baserom.gba", 0xB55330, 0x0000004

gUnk_08B55334:: @ 08B55334
	.incbin "baserom.gba", 0xB55334, 0x0000004

gUnk_08B55338:: @ 08B55338
	.incbin "baserom.gba", 0xB55338, 0x0000004

gUnk_08B5533C:: @ 08B5533C
	.incbin "baserom.gba", 0xB5533C, 0x0000004

gUnk_08B55340:: @ 08B55340
	.incbin "baserom.gba", 0xB55340, 0x0000008

gUnk_08B55348:: @ 08B55348
	.incbin "baserom.gba", 0xB55348, 0x0000004

gUnk_08B5534C:: @ 08B5534C
	.incbin "baserom.gba", 0xB5534C, 0x0000004

gUnk_08B55350:: @ 08B55350
	.incbin "baserom.gba", 0xB55350, 0x0000004

gUnk_08B55354:: @ 08B55354
	.incbin "baserom.gba", 0xB55354, 0x0000004

gUnk_08B55358:: @ 08B55358
	.incbin "baserom.gba", 0xB55358, 0x000004C

gUnk_08B553A4:: @ 08B553A4
	.incbin "baserom.gba", 0xB553A4, 0x0000004

gUnk_08B553A8:: @ 08B553A8
	.incbin "baserom.gba", 0xB553A8, 0x0000004

gUnk_08B553AC:: @ 08B553AC
	.incbin "baserom.gba", 0xB553AC, 0x0000004

gUnk_08B553B0:: @ 08B553B0
	.incbin "baserom.gba", 0xB553B0, 0x0000004

gUnk_08B553B4:: @ 08B553B4
	.incbin "baserom.gba", 0xB553B4, 0x0000004

gUnk_08B553B8:: @ 08B553B8
	.incbin "baserom.gba", 0xB553B8, 0x0000004

gUnk_08B553BC:: @ 08B553BC
	.incbin "baserom.gba", 0xB553BC, 0x0000008

gUnk_08B553C4:: @ 08B553C4
	.incbin "baserom.gba", 0xB553C4, 0x0000004

gUnk_08B553C8:: @ 08B553C8
	.incbin "baserom.gba", 0xB553C8, 0x0000014

gUnk_08B553DC:: @ 08B553DC
	.incbin "baserom.gba", 0xB553DC, 0x000000C

gUnk_08B553E8:: @ 08B553E8
	.incbin "baserom.gba", 0xB553E8, 0x0000010

gUnk_08B553F8:: @ 08B553F8
	.incbin "baserom.gba", 0xB553F8, 0x0000014

gUnk_08B5540C:: @ 08B5540C
	.incbin "baserom.gba", 0xB5540C, 0x000000C

gUnk_08B55418:: @ 08B55418
	.incbin "baserom.gba", 0xB55418, 0x000000C

gUnk_08B55424:: @ 08B55424
	.incbin "baserom.gba", 0xB55424, 0x0000008

gUnk_08B5542C:: @ 08B5542C
	.incbin "baserom.gba", 0xB5542C, 0x0000010

gUnk_08B5543C:: @ 08B5543C
	.incbin "baserom.gba", 0xB5543C, 0x0000014

gUnk_08B55450:: @ 08B55450
	.incbin "baserom.gba", 0xB55450, 0x0000010

gUnk_08B55460:: @ 08B55460
	.incbin "baserom.gba", 0xB55460, 0x0000010

gUnk_08B55470:: @ 08B55470
	.incbin "baserom.gba", 0xB55470, 0x000000C

gUnk_08B5547C:: @ 08B5547C
	.incbin "baserom.gba", 0xB5547C, 0x0000010

gUnk_08B5548C:: @ 08B5548C
	.incbin "baserom.gba", 0xB5548C, 0x0000014

gUnk_08B554A0:: @ 08B554A0
	.incbin "baserom.gba", 0xB554A0, 0x0000008

gUnk_08B554A8:: @ 08B554A8
	.incbin "baserom.gba", 0xB554A8, 0x0000010

gUnk_08B554B8:: @ 08B554B8
	.incbin "baserom.gba", 0xB554B8, 0x0000010

gUnk_08B554C8:: @ 08B554C8
	.incbin "baserom.gba", 0xB554C8, 0x000000C

gUnk_08B554D4:: @ 08B554D4
	.incbin "baserom.gba", 0xB554D4, 0x000004C

gUnk_08B55520:: @ 08B55520
	.incbin "baserom.gba", 0xB55520, 0x0000004

gUnk_08B55524:: @ 08B55524
	.incbin "baserom.gba", 0xB55524, 0x0000004

gUnk_08B55528:: @ 08B55528
	.incbin "baserom.gba", 0xB55528, 0x0000004

gUnk_08B5552C:: @ 08B5552C
	.incbin "baserom.gba", 0xB5552C, 0x0000004

gUnk_08B55530:: @ 08B55530
	.incbin "baserom.gba", 0xB55530, 0x0000004

gUnk_08B55534:: @ 08B55534
	.incbin "baserom.gba", 0xB55534, 0x0000004

gUnk_08B55538:: @ 08B55538
	.incbin "baserom.gba", 0xB55538, 0x0000004

gUnk_08B5553C:: @ 08B5553C
	.incbin "baserom.gba", 0xB5553C, 0x0000004

gUnk_08B55540:: @ 08B55540
	.incbin "baserom.gba", 0xB55540, 0x0000004

gUnk_08B55544:: @ 08B55544
	.incbin "baserom.gba", 0xB55544, 0x0000004

gUnk_08B55548:: @ 08B55548
	.incbin "baserom.gba", 0xB55548, 0x0000004

gUnk_08B5554C:: @ 08B5554C
	.incbin "baserom.gba", 0xB5554C, 0x0000004

gUnk_08B55550:: @ 08B55550
	.incbin "baserom.gba", 0xB55550, 0x0000004

gUnk_08B55554:: @ 08B55554
	.incbin "baserom.gba", 0xB55554, 0x0000004

gUnk_08B55558:: @ 08B55558
	.incbin "baserom.gba", 0xB55558, 0x0000004

gUnk_08B5555C:: @ 08B5555C
	.incbin "baserom.gba", 0xB5555C, 0x0000004

gUnk_08B55560:: @ 08B55560
	.incbin "baserom.gba", 0xB55560, 0x0000004

gUnk_08B55564:: @ 08B55564
	.incbin "baserom.gba", 0xB55564, 0x0000004

gUnk_08B55568:: @ 08B55568
	.incbin "baserom.gba", 0xB55568, 0x0000004

gUnk_08B5556C:: @ 08B5556C
	.incbin "baserom.gba", 0xB5556C, 0x0000004

gUnk_08B55570:: @ 08B55570
	.incbin "baserom.gba", 0xB55570, 0x0000004

gUnk_08B55574:: @ 08B55574
	.incbin "baserom.gba", 0xB55574, 0x0000004

gUnk_08B55578:: @ 08B55578
	.incbin "baserom.gba", 0xB55578, 0x0000004

gUnk_08B5557C:: @ 08B5557C
	.incbin "baserom.gba", 0xB5557C, 0x0000008

gUnk_08B55584:: @ 08B55584
	.incbin "baserom.gba", 0xB55584, 0x0000008

gUnk_08B5558C:: @ 08B5558C
	.incbin "baserom.gba", 0xB5558C, 0x0000004

gUnk_08B55590:: @ 08B55590
	.incbin "baserom.gba", 0xB55590, 0x000004C

gUnk_08B555DC:: @ 08B555DC
	.incbin "baserom.gba", 0xB555DC, 0x0000004

gUnk_08B555E0:: @ 08B555E0
	.incbin "baserom.gba", 0xB555E0, 0x0000004

gUnk_08B555E4:: @ 08B555E4
	.incbin "baserom.gba", 0xB555E4, 0x0000004

gUnk_08B555E8:: @ 08B555E8
	.incbin "baserom.gba", 0xB555E8, 0x0000004

gUnk_08B555EC:: @ 08B555EC
	.incbin "baserom.gba", 0xB555EC, 0x0000004

gUnk_08B555F0:: @ 08B555F0
	.incbin "baserom.gba", 0xB555F0, 0x0000004

gUnk_08B555F4:: @ 08B555F4
	.incbin "baserom.gba", 0xB555F4, 0x0000004

gUnk_08B555F8:: @ 08B555F8
	.incbin "baserom.gba", 0xB555F8, 0x0000004

gUnk_08B555FC:: @ 08B555FC
	.incbin "baserom.gba", 0xB555FC, 0x0000004

gUnk_08B55600:: @ 08B55600
	.incbin "baserom.gba", 0xB55600, 0x0000004

gUnk_08B55604:: @ 08B55604
	.incbin "baserom.gba", 0xB55604, 0x0000004

gUnk_08B55608:: @ 08B55608
	.incbin "baserom.gba", 0xB55608, 0x0000004

gUnk_08B5560C:: @ 08B5560C
	.incbin "baserom.gba", 0xB5560C, 0x0000004

gUnk_08B55610:: @ 08B55610
	.incbin "baserom.gba", 0xB55610, 0x0000004

gUnk_08B55614:: @ 08B55614
	.incbin "baserom.gba", 0xB55614, 0x0000004

gUnk_08B55618:: @ 08B55618
	.incbin "baserom.gba", 0xB55618, 0x0000004

gUnk_08B5561C:: @ 08B5561C
	.incbin "baserom.gba", 0xB5561C, 0x0000004

gUnk_08B55620:: @ 08B55620
	.incbin "baserom.gba", 0xB55620, 0x0000004

gUnk_08B55624:: @ 08B55624
	.incbin "baserom.gba", 0xB55624, 0x0000004

gUnk_08B55628:: @ 08B55628
	.incbin "baserom.gba", 0xB55628, 0x0000004

gUnk_08B5562C:: @ 08B5562C
	.incbin "baserom.gba", 0xB5562C, 0x0000004

gUnk_08B55630:: @ 08B55630
	.incbin "baserom.gba", 0xB55630, 0x0000004

gUnk_08B55634:: @ 08B55634
	.incbin "baserom.gba", 0xB55634, 0x0000004

gUnk_08B55638:: @ 08B55638
	.incbin "baserom.gba", 0xB55638, 0x0000004

gUnk_08B5563C:: @ 08B5563C
	.incbin "baserom.gba", 0xB5563C, 0x0000008

gUnk_08B55644:: @ 08B55644
	.incbin "baserom.gba", 0xB55644, 0x0000004

gUnk_08B55648:: @ 08B55648
	.incbin "baserom.gba", 0xB55648, 0x000004C

gUnk_08B55694:: @ 08B55694
	.incbin "baserom.gba", 0xB55694, 0x0000004

gUnk_08B55698:: @ 08B55698
	.incbin "baserom.gba", 0xB55698, 0x0000004

gUnk_08B5569C:: @ 08B5569C
	.incbin "baserom.gba", 0xB5569C, 0x0000004

gUnk_08B556A0:: @ 08B556A0
	.incbin "baserom.gba", 0xB556A0, 0x0000004

gUnk_08B556A4:: @ 08B556A4
	.incbin "baserom.gba", 0xB556A4, 0x0000004

gUnk_08B556A8:: @ 08B556A8
	.incbin "baserom.gba", 0xB556A8, 0x0000004

gUnk_08B556AC:: @ 08B556AC
	.incbin "baserom.gba", 0xB556AC, 0x0000010

gUnk_08B556BC:: @ 08B556BC
	.incbin "baserom.gba", 0xB556BC, 0x0000004

gUnk_08B556C0:: @ 08B556C0
	.incbin "baserom.gba", 0xB556C0, 0x0000010

gUnk_08B556D0:: @ 08B556D0
	.incbin "baserom.gba", 0xB556D0, 0x000000C

gUnk_08B556DC:: @ 08B556DC
	.incbin "baserom.gba", 0xB556DC, 0x000000C

gUnk_08B556E8:: @ 08B556E8
	.incbin "baserom.gba", 0xB556E8, 0x0000014

gUnk_08B556FC:: @ 08B556FC
	.incbin "baserom.gba", 0xB556FC, 0x0000008

gUnk_08B55704:: @ 08B55704
	.incbin "baserom.gba", 0xB55704, 0x000000C

gUnk_08B55710:: @ 08B55710
	.incbin "baserom.gba", 0xB55710, 0x000000C

gUnk_08B5571C:: @ 08B5571C
	.incbin "baserom.gba", 0xB5571C, 0x000000C

gUnk_08B55728:: @ 08B55728
	.incbin "baserom.gba", 0xB55728, 0x0000014

gUnk_08B5573C:: @ 08B5573C
	.incbin "baserom.gba", 0xB5573C, 0x0000010

gUnk_08B5574C:: @ 08B5574C
	.incbin "baserom.gba", 0xB5574C, 0x000000C

gUnk_08B55758:: @ 08B55758
	.incbin "baserom.gba", 0xB55758, 0x0000008

gUnk_08B55760:: @ 08B55760
	.incbin "baserom.gba", 0xB55760, 0x0000010

gUnk_08B55770:: @ 08B55770
	.incbin "baserom.gba", 0xB55770, 0x0000010

gUnk_08B55780:: @ 08B55780
	.incbin "baserom.gba", 0xB55780, 0x000000C

gUnk_08B5578C:: @ 08B5578C
	.incbin "baserom.gba", 0xB5578C, 0x000000C

gUnk_08B55798:: @ 08B55798
	.incbin "baserom.gba", 0xB55798, 0x0000010

gUnk_08B557A8:: @ 08B557A8
	.incbin "baserom.gba", 0xB557A8, 0x0000008

gUnk_08B557B0:: @ 08B557B0
	.incbin "baserom.gba", 0xB557B0, 0x000004C

gUnk_08B557FC:: @ 08B557FC
	.incbin "baserom.gba", 0xB557FC, 0x0000004

gUnk_08B55800:: @ 08B55800
	.incbin "baserom.gba", 0xB55800, 0x0000004

gUnk_08B55804:: @ 08B55804
	.incbin "baserom.gba", 0xB55804, 0x0000004

gUnk_08B55808:: @ 08B55808
	.incbin "baserom.gba", 0xB55808, 0x0000004

gUnk_08B5580C:: @ 08B5580C
	.incbin "baserom.gba", 0xB5580C, 0x0000004

gUnk_08B55810:: @ 08B55810
	.incbin "baserom.gba", 0xB55810, 0x0000004

gUnk_08B55814:: @ 08B55814
	.incbin "baserom.gba", 0xB55814, 0x0000004

gUnk_08B55818:: @ 08B55818
	.incbin "baserom.gba", 0xB55818, 0x0000004

gUnk_08B5581C:: @ 08B5581C
	.incbin "baserom.gba", 0xB5581C, 0x0000008

gUnk_08B55824:: @ 08B55824
	.incbin "baserom.gba", 0xB55824, 0x0000004

gUnk_08B55828:: @ 08B55828
	.incbin "baserom.gba", 0xB55828, 0x0000004

gUnk_08B5582C:: @ 08B5582C
	.incbin "baserom.gba", 0xB5582C, 0x0000004

gUnk_08B55830:: @ 08B55830
	.incbin "baserom.gba", 0xB55830, 0x0000004

gUnk_08B55834:: @ 08B55834
	.incbin "baserom.gba", 0xB55834, 0x0000004

gUnk_08B55838:: @ 08B55838
	.incbin "baserom.gba", 0xB55838, 0x0000004

gUnk_08B5583C:: @ 08B5583C
	.incbin "baserom.gba", 0xB5583C, 0x0000004

gUnk_08B55840:: @ 08B55840
	.incbin "baserom.gba", 0xB55840, 0x0000004

gUnk_08B55844:: @ 08B55844
	.incbin "baserom.gba", 0xB55844, 0x0000008

gUnk_08B5584C:: @ 08B5584C
	.incbin "baserom.gba", 0xB5584C, 0x0000004

gUnk_08B55850:: @ 08B55850
	.incbin "baserom.gba", 0xB55850, 0x0000004

gUnk_08B55854:: @ 08B55854
	.incbin "baserom.gba", 0xB55854, 0x0000004

gUnk_08B55858:: @ 08B55858
	.incbin "baserom.gba", 0xB55858, 0x0000004

gUnk_08B5585C:: @ 08B5585C
	.incbin "baserom.gba", 0xB5585C, 0x0000004

gUnk_08B55860:: @ 08B55860
	.incbin "baserom.gba", 0xB55860, 0x0000004

gUnk_08B55864:: @ 08B55864
	.incbin "baserom.gba", 0xB55864, 0x0000004

gUnk_08B55868:: @ 08B55868
	.incbin "baserom.gba", 0xB55868, 0x0000004

gUnk_08B5586C:: @ 08B5586C
	.incbin "baserom.gba", 0xB5586C, 0x0000004

gUnk_08B55870:: @ 08B55870
	.incbin "baserom.gba", 0xB55870, 0x0000004

gUnk_08B55874:: @ 08B55874
	.incbin "baserom.gba", 0xB55874, 0x0000004

gUnk_08B55878:: @ 08B55878
	.incbin "baserom.gba", 0xB55878, 0x000004C

gUnk_08B558C4:: @ 08B558C4
	.incbin "baserom.gba", 0xB558C4, 0x0000008

gUnk_08B558CC:: @ 08B558CC
	.incbin "baserom.gba", 0xB558CC, 0x0000010

gUnk_08B558DC:: @ 08B558DC
	.incbin "baserom.gba", 0xB558DC, 0x0000010

gUnk_08B558EC:: @ 08B558EC
	.incbin "baserom.gba", 0xB558EC, 0x000000C

gUnk_08B558F8:: @ 08B558F8
	.incbin "baserom.gba", 0xB558F8, 0x000000C

gUnk_08B55904:: @ 08B55904
	.incbin "baserom.gba", 0xB55904, 0x0000010

gUnk_08B55914:: @ 08B55914
	.incbin "baserom.gba", 0xB55914, 0x000000C

gUnk_08B55920:: @ 08B55920
	.incbin "baserom.gba", 0xB55920, 0x0000010

gUnk_08B55930:: @ 08B55930
	.incbin "baserom.gba", 0xB55930, 0x000000C

gUnk_08B5593C:: @ 08B5593C
	.incbin "baserom.gba", 0xB5593C, 0x000000C

gUnk_08B55948:: @ 08B55948
	.incbin "baserom.gba", 0xB55948, 0x0000008

gUnk_08B55950:: @ 08B55950
	.incbin "baserom.gba", 0xB55950, 0x0000010

gUnk_08B55960:: @ 08B55960
	.incbin "baserom.gba", 0xB55960, 0x000000C

gUnk_08B5596C:: @ 08B5596C
	.incbin "baserom.gba", 0xB5596C, 0x000000C

gUnk_08B55978:: @ 08B55978
	.incbin "baserom.gba", 0xB55978, 0x000000C

gUnk_08B55984:: @ 08B55984
	.incbin "baserom.gba", 0xB55984, 0x0000018

gUnk_08B5599C:: @ 08B5599C
	.incbin "baserom.gba", 0xB5599C, 0x0000014

gUnk_08B559B0:: @ 08B559B0
	.incbin "baserom.gba", 0xB559B0, 0x0000010

gUnk_08B559C0:: @ 08B559C0
	.incbin "baserom.gba", 0xB559C0, 0x0000018

gUnk_08B559D8:: @ 08B559D8
	.incbin "baserom.gba", 0xB559D8, 0x0000014

gUnk_08B559EC:: @ 08B559EC
	.incbin "baserom.gba", 0xB559EC, 0x0000014

gUnk_08B55A00:: @ 08B55A00
	.incbin "baserom.gba", 0xB55A00, 0x0000014

gUnk_08B55A14:: @ 08B55A14
	.incbin "baserom.gba", 0xB55A14, 0x0000010

gUnk_08B55A24:: @ 08B55A24
	.incbin "baserom.gba", 0xB55A24, 0x0000010

gUnk_08B55A34:: @ 08B55A34
	.incbin "baserom.gba", 0xB55A34, 0x000000C

gUnk_08B55A40:: @ 08B55A40
	.incbin "baserom.gba", 0xB55A40, 0x0000010

gUnk_08B55A50:: @ 08B55A50
	.incbin "baserom.gba", 0xB55A50, 0x0000014

gUnk_08B55A64:: @ 08B55A64
	.incbin "baserom.gba", 0xB55A64, 0x000001C

gUnk_08B55A80:: @ 08B55A80
	.incbin "baserom.gba", 0xB55A80, 0x0000018

gUnk_08B55A98:: @ 08B55A98
	.incbin "baserom.gba", 0xB55A98, 0x0000014

gUnk_08B55AAC:: @ 08B55AAC
	.incbin "baserom.gba", 0xB55AAC, 0x0000010

gUnk_08B55ABC:: @ 08B55ABC
	.incbin "baserom.gba", 0xB55ABC, 0x000000C

gUnk_08B55AC8:: @ 08B55AC8
	.incbin "baserom.gba", 0xB55AC8, 0x000000C

gUnk_08B55AD4:: @ 08B55AD4
	.incbin "baserom.gba", 0xB55AD4, 0x000000C

gUnk_08B55AE0:: @ 08B55AE0
	.incbin "baserom.gba", 0xB55AE0, 0x0000008

gUnk_08B55AE8:: @ 08B55AE8
	.incbin "baserom.gba", 0xB55AE8, 0x0000014

gUnk_08B55AFC:: @ 08B55AFC
	.incbin "baserom.gba", 0xB55AFC, 0x0000014

gUnk_08B55B10:: @ 08B55B10
	.incbin "baserom.gba", 0xB55B10, 0x0000018

gUnk_08B55B28:: @ 08B55B28
	.incbin "baserom.gba", 0xB55B28, 0x000001C

gUnk_08B55B44:: @ 08B55B44
	.incbin "baserom.gba", 0xB55B44, 0x000001C

gUnk_08B55B60:: @ 08B55B60
	.incbin "baserom.gba", 0xB55B60, 0x0000018

gUnk_08B55B78:: @ 08B55B78
	.incbin "baserom.gba", 0xB55B78, 0x000001C

gUnk_08B55B94:: @ 08B55B94
	.incbin "baserom.gba", 0xB55B94, 0x0000018

gUnk_08B55BAC:: @ 08B55BAC
	.incbin "baserom.gba", 0xB55BAC, 0x0000010

gUnk_08B55BBC:: @ 08B55BBC
	.incbin "baserom.gba", 0xB55BBC, 0x0000010

gUnk_08B55BCC:: @ 08B55BCC
	.incbin "baserom.gba", 0xB55BCC, 0x0000014

gUnk_08B55BE0:: @ 08B55BE0
	.incbin "baserom.gba", 0xB55BE0, 0x0000014

gUnk_08B55BF4:: @ 08B55BF4
	.incbin "baserom.gba", 0xB55BF4, 0x0000010

gUnk_08B55C04:: @ 08B55C04
	.incbin "baserom.gba", 0xB55C04, 0x0000014

gUnk_08B55C18:: @ 08B55C18
	.incbin "baserom.gba", 0xB55C18, 0x0000014

gUnk_08B55C2C:: @ 08B55C2C
	.incbin "baserom.gba", 0xB55C2C, 0x0000008

gUnk_08B55C34:: @ 08B55C34
	.incbin "baserom.gba", 0xB55C34, 0x000004C

gUnk_08B55C80:: @ 08B55C80
	.incbin "baserom.gba", 0xB55C80, 0x0000004

gUnk_08B55C84:: @ 08B55C84
	.incbin "baserom.gba", 0xB55C84, 0x0000004

gUnk_08B55C88:: @ 08B55C88
	.incbin "baserom.gba", 0xB55C88, 0x0000004

gUnk_08B55C8C:: @ 08B55C8C
	.incbin "baserom.gba", 0xB55C8C, 0x0000004

gUnk_08B55C90:: @ 08B55C90
	.incbin "baserom.gba", 0xB55C90, 0x0000004

gUnk_08B55C94:: @ 08B55C94
	.incbin "baserom.gba", 0xB55C94, 0x0000004

gUnk_08B55C98:: @ 08B55C98
	.incbin "baserom.gba", 0xB55C98, 0x0000004

gUnk_08B55C9C:: @ 08B55C9C
	.incbin "baserom.gba", 0xB55C9C, 0x0000004

gUnk_08B55CA0:: @ 08B55CA0
	.incbin "baserom.gba", 0xB55CA0, 0x0000004

gUnk_08B55CA4:: @ 08B55CA4
	.incbin "baserom.gba", 0xB55CA4, 0x0000008

gUnk_08B55CAC:: @ 08B55CAC
	.incbin "baserom.gba", 0xB55CAC, 0x0000004

gUnk_08B55CB0:: @ 08B55CB0
	.incbin "baserom.gba", 0xB55CB0, 0x0000004

gUnk_08B55CB4:: @ 08B55CB4
	.incbin "baserom.gba", 0xB55CB4, 0x0000004

gUnk_08B55CB8:: @ 08B55CB8
	.incbin "baserom.gba", 0xB55CB8, 0x0000004

gUnk_08B55CBC:: @ 08B55CBC
	.incbin "baserom.gba", 0xB55CBC, 0x0000004

gUnk_08B55CC0:: @ 08B55CC0
	.incbin "baserom.gba", 0xB55CC0, 0x0000004

gUnk_08B55CC4:: @ 08B55CC4
	.incbin "baserom.gba", 0xB55CC4, 0x0000004

gUnk_08B55CC8:: @ 08B55CC8
	.incbin "baserom.gba", 0xB55CC8, 0x0000004

gUnk_08B55CCC:: @ 08B55CCC
	.incbin "baserom.gba", 0xB55CCC, 0x0000004

gUnk_08B55CD0:: @ 08B55CD0
	.incbin "baserom.gba", 0xB55CD0, 0x0000004

gUnk_08B55CD4:: @ 08B55CD4
	.incbin "baserom.gba", 0xB55CD4, 0x0000004

gUnk_08B55CD8:: @ 08B55CD8
	.incbin "baserom.gba", 0xB55CD8, 0x0000004

gUnk_08B55CDC:: @ 08B55CDC
	.incbin "baserom.gba", 0xB55CDC, 0x0000004

gUnk_08B55CE0:: @ 08B55CE0
	.incbin "baserom.gba", 0xB55CE0, 0x0000004

gUnk_08B55CE4:: @ 08B55CE4
	.incbin "baserom.gba", 0xB55CE4, 0x0000004

gUnk_08B55CE8:: @ 08B55CE8
	.incbin "baserom.gba", 0xB55CE8, 0x0000004

gUnk_08B55CEC:: @ 08B55CEC
	.incbin "baserom.gba", 0xB55CEC, 0x0000004

gUnk_08B55CF0:: @ 08B55CF0
	.incbin "baserom.gba", 0xB55CF0, 0x0000004

gUnk_08B55CF4:: @ 08B55CF4
	.incbin "baserom.gba", 0xB55CF4, 0x0000004

gUnk_08B55CF8:: @ 08B55CF8
	.incbin "baserom.gba", 0xB55CF8, 0x000004C

gUnk_08B55D44:: @ 08B55D44
	.incbin "baserom.gba", 0xB55D44, 0x0000008

gUnk_08B55D4C:: @ 08B55D4C
	.incbin "baserom.gba", 0xB55D4C, 0x0000008

gUnk_08B55D54:: @ 08B55D54
	.incbin "baserom.gba", 0xB55D54, 0x000000C

gUnk_08B55D60:: @ 08B55D60
	.incbin "baserom.gba", 0xB55D60, 0x000004C

gUnk_08B55DAC:: @ 08B55DAC
	.incbin "baserom.gba", 0xB55DAC, 0x0000008

gUnk_08B55DB4:: @ 08B55DB4
	.incbin "baserom.gba", 0xB55DB4, 0x0000008

gUnk_08B55DBC:: @ 08B55DBC
	.incbin "baserom.gba", 0xB55DBC, 0x0000008

gUnk_08B55DC4:: @ 08B55DC4
	.incbin "baserom.gba", 0xB55DC4, 0x000004C

gUnk_08B55E10:: @ 08B55E10
	.incbin "baserom.gba", 0xB55E10, 0x000000C

gUnk_08B55E1C:: @ 08B55E1C
	.incbin "baserom.gba", 0xB55E1C, 0x0000008

gUnk_08B55E24:: @ 08B55E24
	.incbin "baserom.gba", 0xB55E24, 0x0000008

gUnk_08B55E2C:: @ 08B55E2C
	.incbin "baserom.gba", 0xB55E2C, 0x000004C

gUnk_08B55E78:: @ 08B55E78
	.incbin "baserom.gba", 0xB55E78, 0x0000004

gUnk_08B55E7C:: @ 08B55E7C
	.incbin "baserom.gba", 0xB55E7C, 0x0000004

gUnk_08B55E80:: @ 08B55E80
	.incbin "baserom.gba", 0xB55E80, 0x0000004

gUnk_08B55E84:: @ 08B55E84
	.incbin "baserom.gba", 0xB55E84, 0x0000004

gUnk_08B55E88:: @ 08B55E88
	.incbin "baserom.gba", 0xB55E88, 0x0000004

gUnk_08B55E8C:: @ 08B55E8C
	.incbin "baserom.gba", 0xB55E8C, 0x0000004

gUnk_08B55E90:: @ 08B55E90
	.incbin "baserom.gba", 0xB55E90, 0x0000004

gUnk_08B55E94:: @ 08B55E94
	.incbin "baserom.gba", 0xB55E94, 0x0000004

gUnk_08B55E98:: @ 08B55E98
	.incbin "baserom.gba", 0xB55E98, 0x0000004

gUnk_08B55E9C:: @ 08B55E9C
	.incbin "baserom.gba", 0xB55E9C, 0x0000008

gUnk_08B55EA4:: @ 08B55EA4
	.incbin "baserom.gba", 0xB55EA4, 0x0000008

gUnk_08B55EAC:: @ 08B55EAC
	.incbin "baserom.gba", 0xB55EAC, 0x0000004

gUnk_08B55EB0:: @ 08B55EB0
	.incbin "baserom.gba", 0xB55EB0, 0x0000004

gUnk_08B55EB4:: @ 08B55EB4
	.incbin "baserom.gba", 0xB55EB4, 0x0000004

gUnk_08B55EB8:: @ 08B55EB8
	.incbin "baserom.gba", 0xB55EB8, 0x0000004

gUnk_08B55EBC:: @ 08B55EBC
	.incbin "baserom.gba", 0xB55EBC, 0x0000004

gUnk_08B55EC0:: @ 08B55EC0
	.incbin "baserom.gba", 0xB55EC0, 0x0000004

gUnk_08B55EC4:: @ 08B55EC4
	.incbin "baserom.gba", 0xB55EC4, 0x0000004

gUnk_08B55EC8:: @ 08B55EC8
	.incbin "baserom.gba", 0xB55EC8, 0x0000004

gUnk_08B55ECC:: @ 08B55ECC
	.incbin "baserom.gba", 0xB55ECC, 0x0000004

gUnk_08B55ED0:: @ 08B55ED0
	.incbin "baserom.gba", 0xB55ED0, 0x0000004

gUnk_08B55ED4:: @ 08B55ED4
	.incbin "baserom.gba", 0xB55ED4, 0x0000004

gUnk_08B55ED8:: @ 08B55ED8
	.incbin "baserom.gba", 0xB55ED8, 0x0000004

gUnk_08B55EDC:: @ 08B55EDC
	.incbin "baserom.gba", 0xB55EDC, 0x0000004

gUnk_08B55EE0:: @ 08B55EE0
	.incbin "baserom.gba", 0xB55EE0, 0x0000004

gUnk_08B55EE4:: @ 08B55EE4
	.incbin "baserom.gba", 0xB55EE4, 0x0000004

gUnk_08B55EE8:: @ 08B55EE8
	.incbin "baserom.gba", 0xB55EE8, 0x0000004

gUnk_08B55EEC:: @ 08B55EEC
	.incbin "baserom.gba", 0xB55EEC, 0x0000004

gUnk_08B55EF0:: @ 08B55EF0
	.incbin "baserom.gba", 0xB55EF0, 0x0000004

gUnk_08B55EF4:: @ 08B55EF4
	.incbin "baserom.gba", 0xB55EF4, 0x000004C

gUnk_08B55F40:: @ 08B55F40
	.incbin "baserom.gba", 0xB55F40, 0x0000004

gUnk_08B55F44:: @ 08B55F44
	.incbin "baserom.gba", 0xB55F44, 0x0000004

gUnk_08B55F48:: @ 08B55F48
	.incbin "baserom.gba", 0xB55F48, 0x0000004

gUnk_08B55F4C:: @ 08B55F4C
	.incbin "baserom.gba", 0xB55F4C, 0x0000010

gUnk_08B55F5C:: @ 08B55F5C
	.incbin "baserom.gba", 0xB55F5C, 0x0000014

gUnk_08B55F70:: @ 08B55F70
	.incbin "baserom.gba", 0xB55F70, 0x0000014

gUnk_08B55F84:: @ 08B55F84
	.incbin "baserom.gba", 0xB55F84, 0x0000008

gUnk_08B55F8C:: @ 08B55F8C
	.incbin "baserom.gba", 0xB55F8C, 0x000000C

gUnk_08B55F98:: @ 08B55F98
	.incbin "baserom.gba", 0xB55F98, 0x0000010

gUnk_08B55FA8:: @ 08B55FA8
	.incbin "baserom.gba", 0xB55FA8, 0x000000C

gUnk_08B55FB4:: @ 08B55FB4
	.incbin "baserom.gba", 0xB55FB4, 0x000000C

gUnk_08B55FC0:: @ 08B55FC0
	.incbin "baserom.gba", 0xB55FC0, 0x0000008

gUnk_08B55FC8:: @ 08B55FC8
	.incbin "baserom.gba", 0xB55FC8, 0x000000C

gUnk_08B55FD4:: @ 08B55FD4
	.incbin "baserom.gba", 0xB55FD4, 0x000000C

gUnk_08B55FE0:: @ 08B55FE0
	.incbin "baserom.gba", 0xB55FE0, 0x0000004

gUnk_08B55FE4:: @ 08B55FE4
	.incbin "baserom.gba", 0xB55FE4, 0x0000004

gUnk_08B55FE8:: @ 08B55FE8
	.incbin "baserom.gba", 0xB55FE8, 0x0000010

gUnk_08B55FF8:: @ 08B55FF8
	.incbin "baserom.gba", 0xB55FF8, 0x0000014

gUnk_08B5600C:: @ 08B5600C
	.incbin "baserom.gba", 0xB5600C, 0x000000C

gUnk_08B56018:: @ 08B56018
	.incbin "baserom.gba", 0xB56018, 0x000000C

gUnk_08B56024:: @ 08B56024
	.incbin "baserom.gba", 0xB56024, 0x0000010

gUnk_08B56034:: @ 08B56034
	.incbin "baserom.gba", 0xB56034, 0x0000004

gUnk_08B56038:: @ 08B56038
	.incbin "baserom.gba", 0xB56038, 0x0000010

gUnk_08B56048:: @ 08B56048
	.incbin "baserom.gba", 0xB56048, 0x000000C

gUnk_08B56054:: @ 08B56054
	.incbin "baserom.gba", 0xB56054, 0x0000008

gUnk_08B5605C:: @ 08B5605C
	.incbin "baserom.gba", 0xB5605C, 0x0000008

gUnk_08B56064:: @ 08B56064
	.incbin "baserom.gba", 0xB56064, 0x000000C

gUnk_08B56070:: @ 08B56070
	.incbin "baserom.gba", 0xB56070, 0x000000C

gUnk_08B5607C:: @ 08B5607C
	.incbin "baserom.gba", 0xB5607C, 0x0000008

gUnk_08B56084:: @ 08B56084
	.incbin "baserom.gba", 0xB56084, 0x000004C

gUnk_08B560D0:: @ 08B560D0
	.incbin "baserom.gba", 0xB560D0, 0x0000004

gUnk_08B560D4:: @ 08B560D4
	.incbin "baserom.gba", 0xB560D4, 0x0000004

gUnk_08B560D8:: @ 08B560D8
	.incbin "baserom.gba", 0xB560D8, 0x0000004

gUnk_08B560DC:: @ 08B560DC
	.incbin "baserom.gba", 0xB560DC, 0x0000014

gUnk_08B560F0:: @ 08B560F0
	.incbin "baserom.gba", 0xB560F0, 0x0000018

gUnk_08B56108:: @ 08B56108
	.incbin "baserom.gba", 0xB56108, 0x0000018

gUnk_08B56120:: @ 08B56120
	.incbin "baserom.gba", 0xB56120, 0x000000C

gUnk_08B5612C:: @ 08B5612C
	.incbin "baserom.gba", 0xB5612C, 0x0000010

gUnk_08B5613C:: @ 08B5613C
	.incbin "baserom.gba", 0xB5613C, 0x000000C

gUnk_08B56148:: @ 08B56148
	.incbin "baserom.gba", 0xB56148, 0x0000010

gUnk_08B56158:: @ 08B56158
	.incbin "baserom.gba", 0xB56158, 0x0000010

gUnk_08B56168:: @ 08B56168
	.incbin "baserom.gba", 0xB56168, 0x000000C

gUnk_08B56174:: @ 08B56174
	.incbin "baserom.gba", 0xB56174, 0x0000008

gUnk_08B5617C:: @ 08B5617C
	.incbin "baserom.gba", 0xB5617C, 0x0000010

gUnk_08B5618C:: @ 08B5618C
	.incbin "baserom.gba", 0xB5618C, 0x0000004

gUnk_08B56190:: @ 08B56190
	.incbin "baserom.gba", 0xB56190, 0x0000004

gUnk_08B56194:: @ 08B56194
	.incbin "baserom.gba", 0xB56194, 0x000000C

gUnk_08B561A0:: @ 08B561A0
	.incbin "baserom.gba", 0xB561A0, 0x0000010

gUnk_08B561B0:: @ 08B561B0
	.incbin "baserom.gba", 0xB561B0, 0x0000010

gUnk_08B561C0:: @ 08B561C0
	.incbin "baserom.gba", 0xB561C0, 0x0000008

gUnk_08B561C8:: @ 08B561C8
	.incbin "baserom.gba", 0xB561C8, 0x000000C

gUnk_08B561D4:: @ 08B561D4
	.incbin "baserom.gba", 0xB561D4, 0x0000004

gUnk_08B561D8:: @ 08B561D8
	.incbin "baserom.gba", 0xB561D8, 0x0000014

gUnk_08B561EC:: @ 08B561EC
	.incbin "baserom.gba", 0xB561EC, 0x0000010

gUnk_08B561FC:: @ 08B561FC
	.incbin "baserom.gba", 0xB561FC, 0x0000008

gUnk_08B56204:: @ 08B56204
	.incbin "baserom.gba", 0xB56204, 0x000000C

gUnk_08B56210:: @ 08B56210
	.incbin "baserom.gba", 0xB56210, 0x0000008

gUnk_08B56218:: @ 08B56218
	.incbin "baserom.gba", 0xB56218, 0x0000008

gUnk_08B56220:: @ 08B56220
	.incbin "baserom.gba", 0xB56220, 0x000000C

gUnk_08B5622C:: @ 08B5622C
	.incbin "baserom.gba", 0xB5622C, 0x000004C

gUnk_08B56278:: @ 08B56278
	.incbin "baserom.gba", 0xB56278, 0x0000004

gUnk_08B5627C:: @ 08B5627C
	.incbin "baserom.gba", 0xB5627C, 0x0000004

gUnk_08B56280:: @ 08B56280
	.incbin "baserom.gba", 0xB56280, 0x0000004

gUnk_08B56284:: @ 08B56284
	.incbin "baserom.gba", 0xB56284, 0x000001C

gUnk_08B562A0:: @ 08B562A0
	.incbin "baserom.gba", 0xB562A0, 0x000001C

gUnk_08B562BC:: @ 08B562BC
	.incbin "baserom.gba", 0xB562BC, 0x0000020

gUnk_08B562DC:: @ 08B562DC
	.incbin "baserom.gba", 0xB562DC, 0x0000014

gUnk_08B562F0:: @ 08B562F0
	.incbin "baserom.gba", 0xB562F0, 0x0000008

gUnk_08B562F8:: @ 08B562F8
	.incbin "baserom.gba", 0xB562F8, 0x0000010

gUnk_08B56308:: @ 08B56308
	.incbin "baserom.gba", 0xB56308, 0x0000018

gUnk_08B56320:: @ 08B56320
	.incbin "baserom.gba", 0xB56320, 0x0000014

gUnk_08B56334:: @ 08B56334
	.incbin "baserom.gba", 0xB56334, 0x0000010

gUnk_08B56344:: @ 08B56344
	.incbin "baserom.gba", 0xB56344, 0x000000C

gUnk_08B56350:: @ 08B56350
	.incbin "baserom.gba", 0xB56350, 0x0000008

gUnk_08B56358:: @ 08B56358
	.incbin "baserom.gba", 0xB56358, 0x0000004

gUnk_08B5635C:: @ 08B5635C
	.incbin "baserom.gba", 0xB5635C, 0x0000004

gUnk_08B56360:: @ 08B56360
	.incbin "baserom.gba", 0xB56360, 0x000000C

gUnk_08B5636C:: @ 08B5636C
	.incbin "baserom.gba", 0xB5636C, 0x0000010

gUnk_08B5637C:: @ 08B5637C
	.incbin "baserom.gba", 0xB5637C, 0x0000014

gUnk_08B56390:: @ 08B56390
	.incbin "baserom.gba", 0xB56390, 0x0000010

gUnk_08B563A0:: @ 08B563A0
	.incbin "baserom.gba", 0xB563A0, 0x0000010

gUnk_08B563B0:: @ 08B563B0
	.incbin "baserom.gba", 0xB563B0, 0x0000004

gUnk_08B563B4:: @ 08B563B4
	.incbin "baserom.gba", 0xB563B4, 0x0000018

gUnk_08B563CC:: @ 08B563CC
	.incbin "baserom.gba", 0xB563CC, 0x0000018

gUnk_08B563E4:: @ 08B563E4
	.incbin "baserom.gba", 0xB563E4, 0x0000010

gUnk_08B563F4:: @ 08B563F4
	.incbin "baserom.gba", 0xB563F4, 0x0000014

gUnk_08B56408:: @ 08B56408
	.incbin "baserom.gba", 0xB56408, 0x0000010

gUnk_08B56418:: @ 08B56418
	.incbin "baserom.gba", 0xB56418, 0x000000C

gUnk_08B56424:: @ 08B56424
	.incbin "baserom.gba", 0xB56424, 0x0000014

gUnk_08B56438:: @ 08B56438
	.incbin "baserom.gba", 0xB56438, 0x000004C

gUnk_08B56484:: @ 08B56484
	.incbin "baserom.gba", 0xB56484, 0x000004C

gUnk_08B564D0:: @ 08B564D0
	.incbin "baserom.gba", 0xB564D0, 0x0000004

gUnk_08B564D4:: @ 08B564D4
	.incbin "baserom.gba", 0xB564D4, 0x0000004

gUnk_08B564D8:: @ 08B564D8
	.incbin "baserom.gba", 0xB564D8, 0x0000004

gUnk_08B564DC:: @ 08B564DC
	.incbin "baserom.gba", 0xB564DC, 0x0000004

gUnk_08B564E0:: @ 08B564E0
	.incbin "baserom.gba", 0xB564E0, 0x0000004

gUnk_08B564E4:: @ 08B564E4
	.incbin "baserom.gba", 0xB564E4, 0x0000004

gUnk_08B564E8:: @ 08B564E8
	.incbin "baserom.gba", 0xB564E8, 0x0000004

gUnk_08B564EC:: @ 08B564EC
	.incbin "baserom.gba", 0xB564EC, 0x0000004

gUnk_08B564F0:: @ 08B564F0
	.incbin "baserom.gba", 0xB564F0, 0x000000C

gUnk_08B564FC:: @ 08B564FC
	.incbin "baserom.gba", 0xB564FC, 0x0000004

gUnk_08B56500:: @ 08B56500
	.incbin "baserom.gba", 0xB56500, 0x0000004

gUnk_08B56504:: @ 08B56504
	.incbin "baserom.gba", 0xB56504, 0x0000004

gUnk_08B56508:: @ 08B56508
	.incbin "baserom.gba", 0xB56508, 0x0000004

gUnk_08B5650C:: @ 08B5650C
	.incbin "baserom.gba", 0xB5650C, 0x0000004

gUnk_08B56510:: @ 08B56510
	.incbin "baserom.gba", 0xB56510, 0x0000004

gUnk_08B56514:: @ 08B56514
	.incbin "baserom.gba", 0xB56514, 0x0000008

gUnk_08B5651C:: @ 08B5651C
	.incbin "baserom.gba", 0xB5651C, 0x0000008

gUnk_08B56524:: @ 08B56524
	.incbin "baserom.gba", 0xB56524, 0x000000C

gUnk_08B56530:: @ 08B56530
	.incbin "baserom.gba", 0xB56530, 0x0000004

gUnk_08B56534:: @ 08B56534
	.incbin "baserom.gba", 0xB56534, 0x0000004

gUnk_08B56538:: @ 08B56538
	.incbin "baserom.gba", 0xB56538, 0x0000004

gUnk_08B5653C:: @ 08B5653C
	.incbin "baserom.gba", 0xB5653C, 0x0000004

gUnk_08B56540:: @ 08B56540
	.incbin "baserom.gba", 0xB56540, 0x0000004

gUnk_08B56544:: @ 08B56544
	.incbin "baserom.gba", 0xB56544, 0x0000004

gUnk_08B56548:: @ 08B56548
	.incbin "baserom.gba", 0xB56548, 0x0000004

gUnk_08B5654C:: @ 08B5654C
	.incbin "baserom.gba", 0xB5654C, 0x0000004

gUnk_08B56550:: @ 08B56550
	.incbin "baserom.gba", 0xB56550, 0x0000004

gUnk_08B56554:: @ 08B56554
	.incbin "baserom.gba", 0xB56554, 0x0000004

gUnk_08B56558:: @ 08B56558
	.incbin "baserom.gba", 0xB56558, 0x0000004

gUnk_08B5655C:: @ 08B5655C
	.incbin "baserom.gba", 0xB5655C, 0x000004C

gUnk_08B565A8:: @ 08B565A8
	.incbin "baserom.gba", 0xB565A8, 0x0000004

gUnk_08B565AC:: @ 08B565AC
	.incbin "baserom.gba", 0xB565AC, 0x0000004

gUnk_08B565B0:: @ 08B565B0
	.incbin "baserom.gba", 0xB565B0, 0x0000004

gUnk_08B565B4:: @ 08B565B4
	.incbin "baserom.gba", 0xB565B4, 0x0000004

gUnk_08B565B8:: @ 08B565B8
	.incbin "baserom.gba", 0xB565B8, 0x0000004

gUnk_08B565BC:: @ 08B565BC
	.incbin "baserom.gba", 0xB565BC, 0x0000004

gUnk_08B565C0:: @ 08B565C0
	.incbin "baserom.gba", 0xB565C0, 0x0000004

gUnk_08B565C4:: @ 08B565C4
	.incbin "baserom.gba", 0xB565C4, 0x0000004

gUnk_08B565C8:: @ 08B565C8
	.incbin "baserom.gba", 0xB565C8, 0x0000008

gUnk_08B565D0:: @ 08B565D0
	.incbin "baserom.gba", 0xB565D0, 0x0000004

gUnk_08B565D4:: @ 08B565D4
	.incbin "baserom.gba", 0xB565D4, 0x0000004

gUnk_08B565D8:: @ 08B565D8
	.incbin "baserom.gba", 0xB565D8, 0x0000004

gUnk_08B565DC:: @ 08B565DC
	.incbin "baserom.gba", 0xB565DC, 0x0000004

gUnk_08B565E0:: @ 08B565E0
	.incbin "baserom.gba", 0xB565E0, 0x0000004

gUnk_08B565E4:: @ 08B565E4
	.incbin "baserom.gba", 0xB565E4, 0x0000004

gUnk_08B565E8:: @ 08B565E8
	.incbin "baserom.gba", 0xB565E8, 0x0000004

gUnk_08B565EC:: @ 08B565EC
	.incbin "baserom.gba", 0xB565EC, 0x0000008

gUnk_08B565F4:: @ 08B565F4
	.incbin "baserom.gba", 0xB565F4, 0x000000C

gUnk_08B56600:: @ 08B56600
	.incbin "baserom.gba", 0xB56600, 0x0000004

gUnk_08B56604:: @ 08B56604
	.incbin "baserom.gba", 0xB56604, 0x0000004

gUnk_08B56608:: @ 08B56608
	.incbin "baserom.gba", 0xB56608, 0x0000004

gUnk_08B5660C:: @ 08B5660C
	.incbin "baserom.gba", 0xB5660C, 0x0000004

gUnk_08B56610:: @ 08B56610
	.incbin "baserom.gba", 0xB56610, 0x0000004

gUnk_08B56614:: @ 08B56614
	.incbin "baserom.gba", 0xB56614, 0x0000004

gUnk_08B56618:: @ 08B56618
	.incbin "baserom.gba", 0xB56618, 0x0000004

gUnk_08B5661C:: @ 08B5661C
	.incbin "baserom.gba", 0xB5661C, 0x0000004

gUnk_08B56620:: @ 08B56620
	.incbin "baserom.gba", 0xB56620, 0x0000004

gUnk_08B56624:: @ 08B56624
	.incbin "baserom.gba", 0xB56624, 0x0000004

gUnk_08B56628:: @ 08B56628
	.incbin "baserom.gba", 0xB56628, 0x0000004

gUnk_08B5662C:: @ 08B5662C
	.incbin "baserom.gba", 0xB5662C, 0x000004C

gUnk_08B56678:: @ 08B56678
	.incbin "baserom.gba", 0xB56678, 0x0000004

gUnk_08B5667C:: @ 08B5667C
	.incbin "baserom.gba", 0xB5667C, 0x0000004

gUnk_08B56680:: @ 08B56680
	.incbin "baserom.gba", 0xB56680, 0x0000004

gUnk_08B56684:: @ 08B56684
	.incbin "baserom.gba", 0xB56684, 0x0000004

gUnk_08B56688:: @ 08B56688
	.incbin "baserom.gba", 0xB56688, 0x0000004

gUnk_08B5668C:: @ 08B5668C
	.incbin "baserom.gba", 0xB5668C, 0x0000004

gUnk_08B56690:: @ 08B56690
	.incbin "baserom.gba", 0xB56690, 0x0000004

gUnk_08B56694:: @ 08B56694
	.incbin "baserom.gba", 0xB56694, 0x0000004

gUnk_08B56698:: @ 08B56698
	.incbin "baserom.gba", 0xB56698, 0x0000004

gUnk_08B5669C:: @ 08B5669C
	.incbin "baserom.gba", 0xB5669C, 0x0000004

gUnk_08B566A0:: @ 08B566A0
	.incbin "baserom.gba", 0xB566A0, 0x0000004

gUnk_08B566A4:: @ 08B566A4
	.incbin "baserom.gba", 0xB566A4, 0x0000004

gUnk_08B566A8:: @ 08B566A8
	.incbin "baserom.gba", 0xB566A8, 0x0000004

gUnk_08B566AC:: @ 08B566AC
	.incbin "baserom.gba", 0xB566AC, 0x0000004

gUnk_08B566B0:: @ 08B566B0
	.incbin "baserom.gba", 0xB566B0, 0x0000004

gUnk_08B566B4:: @ 08B566B4
	.incbin "baserom.gba", 0xB566B4, 0x0000004

gUnk_08B566B8:: @ 08B566B8
	.incbin "baserom.gba", 0xB566B8, 0x0000004

gUnk_08B566BC:: @ 08B566BC
	.incbin "baserom.gba", 0xB566BC, 0x0000008

gUnk_08B566C4:: @ 08B566C4
	.incbin "baserom.gba", 0xB566C4, 0x0000004

gUnk_08B566C8:: @ 08B566C8
	.incbin "baserom.gba", 0xB566C8, 0x0000004

gUnk_08B566CC:: @ 08B566CC
	.incbin "baserom.gba", 0xB566CC, 0x0000004

gUnk_08B566D0:: @ 08B566D0
	.incbin "baserom.gba", 0xB566D0, 0x0000004

gUnk_08B566D4:: @ 08B566D4
	.incbin "baserom.gba", 0xB566D4, 0x0000004

gUnk_08B566D8:: @ 08B566D8
	.incbin "baserom.gba", 0xB566D8, 0x0000004

gUnk_08B566DC:: @ 08B566DC
	.incbin "baserom.gba", 0xB566DC, 0x0000004

gUnk_08B566E0:: @ 08B566E0
	.incbin "baserom.gba", 0xB566E0, 0x0000004

gUnk_08B566E4:: @ 08B566E4
	.incbin "baserom.gba", 0xB566E4, 0x0000004

gUnk_08B566E8:: @ 08B566E8
	.incbin "baserom.gba", 0xB566E8, 0x0000004

gUnk_08B566EC:: @ 08B566EC
	.incbin "baserom.gba", 0xB566EC, 0x0000004

gUnk_08B566F0:: @ 08B566F0
	.incbin "baserom.gba", 0xB566F0, 0x000004C

gUnk_08B5673C:: @ 08B5673C
	.incbin "baserom.gba", 0xB5673C, 0x0000004

gUnk_08B56740:: @ 08B56740
	.incbin "baserom.gba", 0xB56740, 0x0000004

gUnk_08B56744:: @ 08B56744
	.incbin "baserom.gba", 0xB56744, 0x0000004

gUnk_08B56748:: @ 08B56748
	.incbin "baserom.gba", 0xB56748, 0x000000C

gUnk_08B56754:: @ 08B56754
	.incbin "baserom.gba", 0xB56754, 0x0000010

gUnk_08B56764:: @ 08B56764
	.incbin "baserom.gba", 0xB56764, 0x0000010

gUnk_08B56774:: @ 08B56774
	.incbin "baserom.gba", 0xB56774, 0x000000C

gUnk_08B56780:: @ 08B56780
	.incbin "baserom.gba", 0xB56780, 0x0000010

gUnk_08B56790:: @ 08B56790
	.incbin "baserom.gba", 0xB56790, 0x0000014

gUnk_08B567A4:: @ 08B567A4
	.incbin "baserom.gba", 0xB567A4, 0x0000010

gUnk_08B567B4:: @ 08B567B4
	.incbin "baserom.gba", 0xB567B4, 0x0000010

gUnk_08B567C4:: @ 08B567C4
	.incbin "baserom.gba", 0xB567C4, 0x000000C

gUnk_08B567D0:: @ 08B567D0
	.incbin "baserom.gba", 0xB567D0, 0x0000010

gUnk_08B567E0:: @ 08B567E0
	.incbin "baserom.gba", 0xB567E0, 0x0000010

gUnk_08B567F0:: @ 08B567F0
	.incbin "baserom.gba", 0xB567F0, 0x0000004

gUnk_08B567F4:: @ 08B567F4
	.incbin "baserom.gba", 0xB567F4, 0x0000004

gUnk_08B567F8:: @ 08B567F8
	.incbin "baserom.gba", 0xB567F8, 0x0000014

gUnk_08B5680C:: @ 08B5680C
	.incbin "baserom.gba", 0xB5680C, 0x0000018

gUnk_08B56824:: @ 08B56824
	.incbin "baserom.gba", 0xB56824, 0x0000008

gUnk_08B5682C:: @ 08B5682C
	.incbin "baserom.gba", 0xB5682C, 0x0000010

gUnk_08B5683C:: @ 08B5683C
	.incbin "baserom.gba", 0xB5683C, 0x0000014

gUnk_08B56850:: @ 08B56850
	.incbin "baserom.gba", 0xB56850, 0x0000004

gUnk_08B56854:: @ 08B56854
	.incbin "baserom.gba", 0xB56854, 0x000000C

gUnk_08B56860:: @ 08B56860
	.incbin "baserom.gba", 0xB56860, 0x0000008

gUnk_08B56868:: @ 08B56868
	.incbin "baserom.gba", 0xB56868, 0x000000C

gUnk_08B56874:: @ 08B56874
	.incbin "baserom.gba", 0xB56874, 0x000000C

gUnk_08B56880:: @ 08B56880
	.incbin "baserom.gba", 0xB56880, 0x0000010

gUnk_08B56890:: @ 08B56890
	.incbin "baserom.gba", 0xB56890, 0x0000010

gUnk_08B568A0:: @ 08B568A0
	.incbin "baserom.gba", 0xB568A0, 0x0000008

gUnk_08B568A8:: @ 08B568A8
	.incbin "baserom.gba", 0xB568A8, 0x000004C

gUnk_08B568F4:: @ 08B568F4
	.incbin "baserom.gba", 0xB568F4, 0x0000004

gUnk_08B568F8:: @ 08B568F8
	.incbin "baserom.gba", 0xB568F8, 0x0000004

gUnk_08B568FC:: @ 08B568FC
	.incbin "baserom.gba", 0xB568FC, 0x0000004

gUnk_08B56900:: @ 08B56900
	.incbin "baserom.gba", 0xB56900, 0x0000018

gUnk_08B56918:: @ 08B56918
	.incbin "baserom.gba", 0xB56918, 0x0000018

gUnk_08B56930:: @ 08B56930
	.incbin "baserom.gba", 0xB56930, 0x000001C

gUnk_08B5694C:: @ 08B5694C
	.incbin "baserom.gba", 0xB5694C, 0x0000010

gUnk_08B5695C:: @ 08B5695C
	.incbin "baserom.gba", 0xB5695C, 0x0000014

gUnk_08B56970:: @ 08B56970
	.incbin "baserom.gba", 0xB56970, 0x0000010

gUnk_08B56980:: @ 08B56980
	.incbin "baserom.gba", 0xB56980, 0x0000014

gUnk_08B56994:: @ 08B56994
	.incbin "baserom.gba", 0xB56994, 0x0000010

gUnk_08B569A4:: @ 08B569A4
	.incbin "baserom.gba", 0xB569A4, 0x000000C

gUnk_08B569B0:: @ 08B569B0
	.incbin "baserom.gba", 0xB569B0, 0x0000008

gUnk_08B569B8:: @ 08B569B8
	.incbin "baserom.gba", 0xB569B8, 0x0000010

gUnk_08B569C8:: @ 08B569C8
	.incbin "baserom.gba", 0xB569C8, 0x0000004

gUnk_08B569CC:: @ 08B569CC
	.incbin "baserom.gba", 0xB569CC, 0x0000004

gUnk_08B569D0:: @ 08B569D0
	.incbin "baserom.gba", 0xB569D0, 0x000000C

gUnk_08B569DC:: @ 08B569DC
	.incbin "baserom.gba", 0xB569DC, 0x0000010

gUnk_08B569EC:: @ 08B569EC
	.incbin "baserom.gba", 0xB569EC, 0x0000010

gUnk_08B569FC:: @ 08B569FC
	.incbin "baserom.gba", 0xB569FC, 0x0000008

gUnk_08B56A04:: @ 08B56A04
	.incbin "baserom.gba", 0xB56A04, 0x000000C

gUnk_08B56A10:: @ 08B56A10
	.incbin "baserom.gba", 0xB56A10, 0x0000004

gUnk_08B56A14:: @ 08B56A14
	.incbin "baserom.gba", 0xB56A14, 0x0000014

gUnk_08B56A28:: @ 08B56A28
	.incbin "baserom.gba", 0xB56A28, 0x0000014

gUnk_08B56A3C:: @ 08B56A3C
	.incbin "baserom.gba", 0xB56A3C, 0x000000C

gUnk_08B56A48:: @ 08B56A48
	.incbin "baserom.gba", 0xB56A48, 0x0000010

gUnk_08B56A58:: @ 08B56A58
	.incbin "baserom.gba", 0xB56A58, 0x000000C

gUnk_08B56A64:: @ 08B56A64
	.incbin "baserom.gba", 0xB56A64, 0x000000C

gUnk_08B56A70:: @ 08B56A70
	.incbin "baserom.gba", 0xB56A70, 0x0000010

gUnk_08B56A80:: @ 08B56A80
	.incbin "baserom.gba", 0xB56A80, 0x000004C

gUnk_08B56ACC:: @ 08B56ACC
	.incbin "baserom.gba", 0xB56ACC, 0x0000004

gUnk_08B56AD0:: @ 08B56AD0
	.incbin "baserom.gba", 0xB56AD0, 0x0000004

gUnk_08B56AD4:: @ 08B56AD4
	.incbin "baserom.gba", 0xB56AD4, 0x0000004

gUnk_08B56AD8:: @ 08B56AD8
	.incbin "baserom.gba", 0xB56AD8, 0x0000004

gUnk_08B56ADC:: @ 08B56ADC
	.incbin "baserom.gba", 0xB56ADC, 0x0000004

gUnk_08B56AE0:: @ 08B56AE0
	.incbin "baserom.gba", 0xB56AE0, 0x0000004

gUnk_08B56AE4:: @ 08B56AE4
	.incbin "baserom.gba", 0xB56AE4, 0x0000004

gUnk_08B56AE8:: @ 08B56AE8
	.incbin "baserom.gba", 0xB56AE8, 0x0000004

gUnk_08B56AEC:: @ 08B56AEC
	.incbin "baserom.gba", 0xB56AEC, 0x0000004

gUnk_08B56AF0:: @ 08B56AF0
	.incbin "baserom.gba", 0xB56AF0, 0x0000004

gUnk_08B56AF4:: @ 08B56AF4
	.incbin "baserom.gba", 0xB56AF4, 0x0000004

gUnk_08B56AF8:: @ 08B56AF8
	.incbin "baserom.gba", 0xB56AF8, 0x0000004

gUnk_08B56AFC:: @ 08B56AFC
	.incbin "baserom.gba", 0xB56AFC, 0x0000004

gUnk_08B56B00:: @ 08B56B00
	.incbin "baserom.gba", 0xB56B00, 0x0000004

gUnk_08B56B04:: @ 08B56B04
	.incbin "baserom.gba", 0xB56B04, 0x0000004

gUnk_08B56B08:: @ 08B56B08
	.incbin "baserom.gba", 0xB56B08, 0x0000004

gUnk_08B56B0C:: @ 08B56B0C
	.incbin "baserom.gba", 0xB56B0C, 0x0000004

gUnk_08B56B10:: @ 08B56B10
	.incbin "baserom.gba", 0xB56B10, 0x0000004

gUnk_08B56B14:: @ 08B56B14
	.incbin "baserom.gba", 0xB56B14, 0x0000004

gUnk_08B56B18:: @ 08B56B18
	.incbin "baserom.gba", 0xB56B18, 0x0000004

gUnk_08B56B1C:: @ 08B56B1C
	.incbin "baserom.gba", 0xB56B1C, 0x0000008

gUnk_08B56B24:: @ 08B56B24
	.incbin "baserom.gba", 0xB56B24, 0x0000004

gUnk_08B56B28:: @ 08B56B28
	.incbin "baserom.gba", 0xB56B28, 0x0000004

gUnk_08B56B2C:: @ 08B56B2C
	.incbin "baserom.gba", 0xB56B2C, 0x0000004

gUnk_08B56B30:: @ 08B56B30
	.incbin "baserom.gba", 0xB56B30, 0x0000004

gUnk_08B56B34:: @ 08B56B34
	.incbin "baserom.gba", 0xB56B34, 0x0000004

gUnk_08B56B38:: @ 08B56B38
	.incbin "baserom.gba", 0xB56B38, 0x0000004

gUnk_08B56B3C:: @ 08B56B3C
	.incbin "baserom.gba", 0xB56B3C, 0x0000004

gUnk_08B56B40:: @ 08B56B40
	.incbin "baserom.gba", 0xB56B40, 0x0000004

gUnk_08B56B44:: @ 08B56B44
	.incbin "baserom.gba", 0xB56B44, 0x000004C

gUnk_08B56B90:: @ 08B56B90
	.incbin "baserom.gba", 0xB56B90, 0x000000C

gUnk_08B56B9C:: @ 08B56B9C
	.incbin "baserom.gba", 0xB56B9C, 0x0000008

gUnk_08B56BA4:: @ 08B56BA4
	.incbin "baserom.gba", 0xB56BA4, 0x000000C

gUnk_08B56BB0:: @ 08B56BB0
	.incbin "baserom.gba", 0xB56BB0, 0x000000C

gUnk_08B56BBC:: @ 08B56BBC
	.incbin "baserom.gba", 0xB56BBC, 0x0000010

gUnk_08B56BCC:: @ 08B56BCC
	.incbin "baserom.gba", 0xB56BCC, 0x0000010

gUnk_08B56BDC:: @ 08B56BDC
	.incbin "baserom.gba", 0xB56BDC, 0x0000018

gUnk_08B56BF4:: @ 08B56BF4
	.incbin "baserom.gba", 0xB56BF4, 0x000001C

gUnk_08B56C10:: @ 08B56C10
	.incbin "baserom.gba", 0xB56C10, 0x0000020

gUnk_08B56C30:: @ 08B56C30
	.incbin "baserom.gba", 0xB56C30, 0x000001C

gUnk_08B56C4C:: @ 08B56C4C
	.incbin "baserom.gba", 0xB56C4C, 0x000001C

gUnk_08B56C68:: @ 08B56C68
	.incbin "baserom.gba", 0xB56C68, 0x0000018

gUnk_08B56C80:: @ 08B56C80
	.incbin "baserom.gba", 0xB56C80, 0x000001C

gUnk_08B56C9C:: @ 08B56C9C
	.incbin "baserom.gba", 0xB56C9C, 0x000001C

gUnk_08B56CB8:: @ 08B56CB8
	.incbin "baserom.gba", 0xB56CB8, 0x0000004

gUnk_08B56CBC:: @ 08B56CBC
	.incbin "baserom.gba", 0xB56CBC, 0x0000004

gUnk_08B56CC0:: @ 08B56CC0
	.incbin "baserom.gba", 0xB56CC0, 0x0000020

gUnk_08B56CE0:: @ 08B56CE0
	.incbin "baserom.gba", 0xB56CE0, 0x0000024

gUnk_08B56D04:: @ 08B56D04
	.incbin "baserom.gba", 0xB56D04, 0x0000014

gUnk_08B56D18:: @ 08B56D18
	.incbin "baserom.gba", 0xB56D18, 0x000001C

gUnk_08B56D34:: @ 08B56D34
	.incbin "baserom.gba", 0xB56D34, 0x0000020

gUnk_08B56D54:: @ 08B56D54
	.incbin "baserom.gba", 0xB56D54, 0x0000008

gUnk_08B56D5C:: @ 08B56D5C
	.incbin "baserom.gba", 0xB56D5C, 0x0000010

gUnk_08B56D6C:: @ 08B56D6C
	.incbin "baserom.gba", 0xB56D6C, 0x0000010

gUnk_08B56D7C:: @ 08B56D7C
	.incbin "baserom.gba", 0xB56D7C, 0x0000018

gUnk_08B56D94:: @ 08B56D94
	.incbin "baserom.gba", 0xB56D94, 0x0000018

gUnk_08B56DAC:: @ 08B56DAC
	.incbin "baserom.gba", 0xB56DAC, 0x000001C

gUnk_08B56DC8:: @ 08B56DC8
	.incbin "baserom.gba", 0xB56DC8, 0x000001C

gUnk_08B56DE4:: @ 08B56DE4
	.incbin "baserom.gba", 0xB56DE4, 0x0000014

gUnk_08B56DF8:: @ 08B56DF8
	.incbin "baserom.gba", 0xB56DF8, 0x000004C

gUnk_08B56E44:: @ 08B56E44
	.incbin "baserom.gba", 0xB56E44, 0x0000004

gUnk_08B56E48:: @ 08B56E48
	.incbin "baserom.gba", 0xB56E48, 0x0000004

gUnk_08B56E4C:: @ 08B56E4C
	.incbin "baserom.gba", 0xB56E4C, 0x0000004

gUnk_08B56E50:: @ 08B56E50
	.incbin "baserom.gba", 0xB56E50, 0x0000008

gUnk_08B56E58:: @ 08B56E58
	.incbin "baserom.gba", 0xB56E58, 0x000000C

gUnk_08B56E64:: @ 08B56E64
	.incbin "baserom.gba", 0xB56E64, 0x000000C

gUnk_08B56E70:: @ 08B56E70
	.incbin "baserom.gba", 0xB56E70, 0x0000010

gUnk_08B56E80:: @ 08B56E80
	.incbin "baserom.gba", 0xB56E80, 0x0000014

gUnk_08B56E94:: @ 08B56E94
	.incbin "baserom.gba", 0xB56E94, 0x0000018

gUnk_08B56EAC:: @ 08B56EAC
	.incbin "baserom.gba", 0xB56EAC, 0x0000014

gUnk_08B56EC0:: @ 08B56EC0
	.incbin "baserom.gba", 0xB56EC0, 0x0000014

gUnk_08B56ED4:: @ 08B56ED4
	.incbin "baserom.gba", 0xB56ED4, 0x0000010

gUnk_08B56EE4:: @ 08B56EE4
	.incbin "baserom.gba", 0xB56EE4, 0x0000014

gUnk_08B56EF8:: @ 08B56EF8
	.incbin "baserom.gba", 0xB56EF8, 0x0000014

gUnk_08B56F0C:: @ 08B56F0C
	.incbin "baserom.gba", 0xB56F0C, 0x0000004

gUnk_08B56F10:: @ 08B56F10
	.incbin "baserom.gba", 0xB56F10, 0x0000004

gUnk_08B56F14:: @ 08B56F14
	.incbin "baserom.gba", 0xB56F14, 0x0000018

gUnk_08B56F2C:: @ 08B56F2C
	.incbin "baserom.gba", 0xB56F2C, 0x000001C

gUnk_08B56F48:: @ 08B56F48
	.incbin "baserom.gba", 0xB56F48, 0x000000C

gUnk_08B56F54:: @ 08B56F54
	.incbin "baserom.gba", 0xB56F54, 0x0000014

gUnk_08B56F68:: @ 08B56F68
	.incbin "baserom.gba", 0xB56F68, 0x0000018

gUnk_08B56F80:: @ 08B56F80
	.incbin "baserom.gba", 0xB56F80, 0x0000004

gUnk_08B56F84:: @ 08B56F84
	.incbin "baserom.gba", 0xB56F84, 0x0000008

gUnk_08B56F8C:: @ 08B56F8C
	.incbin "baserom.gba", 0xB56F8C, 0x0000008

gUnk_08B56F94:: @ 08B56F94
	.incbin "baserom.gba", 0xB56F94, 0x0000010

gUnk_08B56FA4:: @ 08B56FA4
	.incbin "baserom.gba", 0xB56FA4, 0x0000010

gUnk_08B56FB4:: @ 08B56FB4
	.incbin "baserom.gba", 0xB56FB4, 0x0000014

gUnk_08B56FC8:: @ 08B56FC8
	.incbin "baserom.gba", 0xB56FC8, 0x0000014

gUnk_08B56FDC:: @ 08B56FDC
	.incbin "baserom.gba", 0xB56FDC, 0x000000C

gUnk_08B56FE8:: @ 08B56FE8
	.incbin "baserom.gba", 0xB56FE8, 0x000004C

gUnk_08B57034:: @ 08B57034
	.incbin "baserom.gba", 0xB57034, 0x0000004

gUnk_08B57038:: @ 08B57038
	.incbin "baserom.gba", 0xB57038, 0x0000004

gUnk_08B5703C:: @ 08B5703C
	.incbin "baserom.gba", 0xB5703C, 0x0000004

gUnk_08B57040:: @ 08B57040
	.incbin "baserom.gba", 0xB57040, 0x000000C

gUnk_08B5704C:: @ 08B5704C
	.incbin "baserom.gba", 0xB5704C, 0x000000C

gUnk_08B57058:: @ 08B57058
	.incbin "baserom.gba", 0xB57058, 0x0000010

gUnk_08B57068:: @ 08B57068
	.incbin "baserom.gba", 0xB57068, 0x0000010

gUnk_08B57078:: @ 08B57078
	.incbin "baserom.gba", 0xB57078, 0x0000014

gUnk_08B5708C:: @ 08B5708C
	.incbin "baserom.gba", 0xB5708C, 0x0000018

gUnk_08B570A4:: @ 08B570A4
	.incbin "baserom.gba", 0xB570A4, 0x0000014

gUnk_08B570B8:: @ 08B570B8
	.incbin "baserom.gba", 0xB570B8, 0x0000010

gUnk_08B570C8:: @ 08B570C8
	.incbin "baserom.gba", 0xB570C8, 0x000000C

gUnk_08B570D4:: @ 08B570D4
	.incbin "baserom.gba", 0xB570D4, 0x0000010

gUnk_08B570E4:: @ 08B570E4
	.incbin "baserom.gba", 0xB570E4, 0x0000010

gUnk_08B570F4:: @ 08B570F4
	.incbin "baserom.gba", 0xB570F4, 0x0000004

gUnk_08B570F8:: @ 08B570F8
	.incbin "baserom.gba", 0xB570F8, 0x0000004

gUnk_08B570FC:: @ 08B570FC
	.incbin "baserom.gba", 0xB570FC, 0x0000014

gUnk_08B57110:: @ 08B57110
	.incbin "baserom.gba", 0xB57110, 0x0000018

gUnk_08B57128:: @ 08B57128
	.incbin "baserom.gba", 0xB57128, 0x0000008

gUnk_08B57130:: @ 08B57130
	.incbin "baserom.gba", 0xB57130, 0x0000014

gUnk_08B57144:: @ 08B57144
	.incbin "baserom.gba", 0xB57144, 0x0000014

gUnk_08B57158:: @ 08B57158
	.incbin "baserom.gba", 0xB57158, 0x0000004

gUnk_08B5715C:: @ 08B5715C
	.incbin "baserom.gba", 0xB5715C, 0x0000008

gUnk_08B57164:: @ 08B57164
	.incbin "baserom.gba", 0xB57164, 0x0000008

gUnk_08B5716C:: @ 08B5716C
	.incbin "baserom.gba", 0xB5716C, 0x0000010

gUnk_08B5717C:: @ 08B5717C
	.incbin "baserom.gba", 0xB5717C, 0x0000010

gUnk_08B5718C:: @ 08B5718C
	.incbin "baserom.gba", 0xB5718C, 0x0000014

gUnk_08B571A0:: @ 08B571A0
	.incbin "baserom.gba", 0xB571A0, 0x0000014

gUnk_08B571B4:: @ 08B571B4
	.incbin "baserom.gba", 0xB571B4, 0x000000C

gUnk_08B571C0:: @ 08B571C0
	.incbin "baserom.gba", 0xB571C0, 0x000004C

gUnk_08B5720C:: @ 08B5720C
	.incbin "baserom.gba", 0xB5720C, 0x0000004

gUnk_08B57210:: @ 08B57210
	.incbin "baserom.gba", 0xB57210, 0x0000004

gUnk_08B57214:: @ 08B57214
	.incbin "baserom.gba", 0xB57214, 0x0000004

gUnk_08B57218:: @ 08B57218
	.incbin "baserom.gba", 0xB57218, 0x0000014

gUnk_08B5722C:: @ 08B5722C
	.incbin "baserom.gba", 0xB5722C, 0x0000014

gUnk_08B57240:: @ 08B57240
	.incbin "baserom.gba", 0xB57240, 0x0000018

gUnk_08B57258:: @ 08B57258
	.incbin "baserom.gba", 0xB57258, 0x000000C

gUnk_08B57264:: @ 08B57264
	.incbin "baserom.gba", 0xB57264, 0x0000010

gUnk_08B57274:: @ 08B57274
	.incbin "baserom.gba", 0xB57274, 0x0000010

gUnk_08B57284:: @ 08B57284
	.incbin "baserom.gba", 0xB57284, 0x0000010

gUnk_08B57294:: @ 08B57294
	.incbin "baserom.gba", 0xB57294, 0x000000C

gUnk_08B572A0:: @ 08B572A0
	.incbin "baserom.gba", 0xB572A0, 0x0000008

gUnk_08B572A8:: @ 08B572A8
	.incbin "baserom.gba", 0xB572A8, 0x0000008

gUnk_08B572B0:: @ 08B572B0
	.incbin "baserom.gba", 0xB572B0, 0x000000C

gUnk_08B572BC:: @ 08B572BC
	.incbin "baserom.gba", 0xB572BC, 0x0000004

gUnk_08B572C0:: @ 08B572C0
	.incbin "baserom.gba", 0xB572C0, 0x0000004

gUnk_08B572C4:: @ 08B572C4
	.incbin "baserom.gba", 0xB572C4, 0x000000C

gUnk_08B572D0:: @ 08B572D0
	.incbin "baserom.gba", 0xB572D0, 0x0000010

gUnk_08B572E0:: @ 08B572E0
	.incbin "baserom.gba", 0xB572E0, 0x000000C

gUnk_08B572EC:: @ 08B572EC
	.incbin "baserom.gba", 0xB572EC, 0x000000C

gUnk_08B572F8:: @ 08B572F8
	.incbin "baserom.gba", 0xB572F8, 0x000000C

gUnk_08B57304:: @ 08B57304
	.incbin "baserom.gba", 0xB57304, 0x0000004

gUnk_08B57308:: @ 08B57308
	.incbin "baserom.gba", 0xB57308, 0x0000010

gUnk_08B57318:: @ 08B57318
	.incbin "baserom.gba", 0xB57318, 0x0000010

gUnk_08B57328:: @ 08B57328
	.incbin "baserom.gba", 0xB57328, 0x0000008

gUnk_08B57330:: @ 08B57330
	.incbin "baserom.gba", 0xB57330, 0x000000C

gUnk_08B5733C:: @ 08B5733C
	.incbin "baserom.gba", 0xB5733C, 0x000000C

gUnk_08B57348:: @ 08B57348
	.incbin "baserom.gba", 0xB57348, 0x000000C

gUnk_08B57354:: @ 08B57354
	.incbin "baserom.gba", 0xB57354, 0x000000C

gUnk_08B57360:: @ 08B57360
	.incbin "baserom.gba", 0xB57360, 0x000004C

gUnk_08B573AC:: @ 08B573AC
	.incbin "baserom.gba", 0xB573AC, 0x0000004

gUnk_08B573B0:: @ 08B573B0
	.incbin "baserom.gba", 0xB573B0, 0x0000004

gUnk_08B573B4:: @ 08B573B4
	.incbin "baserom.gba", 0xB573B4, 0x0000004

gUnk_08B573B8:: @ 08B573B8
	.incbin "baserom.gba", 0xB573B8, 0x0000004

gUnk_08B573BC:: @ 08B573BC
	.incbin "baserom.gba", 0xB573BC, 0x0000004

gUnk_08B573C0:: @ 08B573C0
	.incbin "baserom.gba", 0xB573C0, 0x0000004

gUnk_08B573C4:: @ 08B573C4
	.incbin "baserom.gba", 0xB573C4, 0x0000004

gUnk_08B573C8:: @ 08B573C8
	.incbin "baserom.gba", 0xB573C8, 0x0000004

gUnk_08B573CC:: @ 08B573CC
	.incbin "baserom.gba", 0xB573CC, 0x0000004

gUnk_08B573D0:: @ 08B573D0
	.incbin "baserom.gba", 0xB573D0, 0x000000C

gUnk_08B573DC:: @ 08B573DC
	.incbin "baserom.gba", 0xB573DC, 0x0000008

gUnk_08B573E4:: @ 08B573E4
	.incbin "baserom.gba", 0xB573E4, 0x0000004

gUnk_08B573E8:: @ 08B573E8
	.incbin "baserom.gba", 0xB573E8, 0x0000004

gUnk_08B573EC:: @ 08B573EC
	.incbin "baserom.gba", 0xB573EC, 0x0000004

gUnk_08B573F0:: @ 08B573F0
	.incbin "baserom.gba", 0xB573F0, 0x0000004

gUnk_08B573F4:: @ 08B573F4
	.incbin "baserom.gba", 0xB573F4, 0x0000004

gUnk_08B573F8:: @ 08B573F8
	.incbin "baserom.gba", 0xB573F8, 0x0000004

gUnk_08B573FC:: @ 08B573FC
	.incbin "baserom.gba", 0xB573FC, 0x0000004

gUnk_08B57400:: @ 08B57400
	.incbin "baserom.gba", 0xB57400, 0x0000004

gUnk_08B57404:: @ 08B57404
	.incbin "baserom.gba", 0xB57404, 0x0000004

gUnk_08B57408:: @ 08B57408
	.incbin "baserom.gba", 0xB57408, 0x0000004

gUnk_08B5740C:: @ 08B5740C
	.incbin "baserom.gba", 0xB5740C, 0x0000004

gUnk_08B57410:: @ 08B57410
	.incbin "baserom.gba", 0xB57410, 0x0000004

gUnk_08B57414:: @ 08B57414
	.incbin "baserom.gba", 0xB57414, 0x0000004

gUnk_08B57418:: @ 08B57418
	.incbin "baserom.gba", 0xB57418, 0x0000004

gUnk_08B5741C:: @ 08B5741C
	.incbin "baserom.gba", 0xB5741C, 0x0000008

gUnk_08B57424:: @ 08B57424
	.incbin "baserom.gba", 0xB57424, 0x0000004

gUnk_08B57428:: @ 08B57428
	.incbin "baserom.gba", 0xB57428, 0x0000004

gUnk_08B5742C:: @ 08B5742C
	.incbin "baserom.gba", 0xB5742C, 0x0000004

gUnk_08B57430:: @ 08B57430
	.incbin "baserom.gba", 0xB57430, 0x000004C

gUnk_08B5747C:: @ 08B5747C
	.incbin "baserom.gba", 0xB5747C, 0x0000004

gUnk_08B57480:: @ 08B57480
	.incbin "baserom.gba", 0xB57480, 0x0000004

gUnk_08B57484:: @ 08B57484
	.incbin "baserom.gba", 0xB57484, 0x0000004

gUnk_08B57488:: @ 08B57488
	.incbin "baserom.gba", 0xB57488, 0x0000004

gUnk_08B5748C:: @ 08B5748C
	.incbin "baserom.gba", 0xB5748C, 0x0000004

gUnk_08B57490:: @ 08B57490
	.incbin "baserom.gba", 0xB57490, 0x0000004

gUnk_08B57494:: @ 08B57494
	.incbin "baserom.gba", 0xB57494, 0x0000004

gUnk_08B57498:: @ 08B57498
	.incbin "baserom.gba", 0xB57498, 0x0000004

gUnk_08B5749C:: @ 08B5749C
	.incbin "baserom.gba", 0xB5749C, 0x0000004

gUnk_08B574A0:: @ 08B574A0
	.incbin "baserom.gba", 0xB574A0, 0x0000004

gUnk_08B574A4:: @ 08B574A4
	.incbin "baserom.gba", 0xB574A4, 0x0000004

gUnk_08B574A8:: @ 08B574A8
	.incbin "baserom.gba", 0xB574A8, 0x0000004

gUnk_08B574AC:: @ 08B574AC
	.incbin "baserom.gba", 0xB574AC, 0x0000004

gUnk_08B574B0:: @ 08B574B0
	.incbin "baserom.gba", 0xB574B0, 0x0000004

gUnk_08B574B4:: @ 08B574B4
	.incbin "baserom.gba", 0xB574B4, 0x0000004

gUnk_08B574B8:: @ 08B574B8
	.incbin "baserom.gba", 0xB574B8, 0x0000004

gUnk_08B574BC:: @ 08B574BC
	.incbin "baserom.gba", 0xB574BC, 0x0000004

gUnk_08B574C0:: @ 08B574C0
	.incbin "baserom.gba", 0xB574C0, 0x0000004

gUnk_08B574C4:: @ 08B574C4
	.incbin "baserom.gba", 0xB574C4, 0x0000004

gUnk_08B574C8:: @ 08B574C8
	.incbin "baserom.gba", 0xB574C8, 0x0000004

gUnk_08B574CC:: @ 08B574CC
	.incbin "baserom.gba", 0xB574CC, 0x0000008

gUnk_08B574D4:: @ 08B574D4
	.incbin "baserom.gba", 0xB574D4, 0x0000004

gUnk_08B574D8:: @ 08B574D8
	.incbin "baserom.gba", 0xB574D8, 0x0000004

gUnk_08B574DC:: @ 08B574DC
	.incbin "baserom.gba", 0xB574DC, 0x0000004

gUnk_08B574E0:: @ 08B574E0
	.incbin "baserom.gba", 0xB574E0, 0x0000004

gUnk_08B574E4:: @ 08B574E4
	.incbin "baserom.gba", 0xB574E4, 0x0000004

gUnk_08B574E8:: @ 08B574E8
	.incbin "baserom.gba", 0xB574E8, 0x0000008

gUnk_08B574F0:: @ 08B574F0
	.incbin "baserom.gba", 0xB574F0, 0x0000004

gUnk_08B574F4:: @ 08B574F4
	.incbin "baserom.gba", 0xB574F4, 0x0000004

gUnk_08B574F8:: @ 08B574F8
	.incbin "baserom.gba", 0xB574F8, 0x000004C

gUnk_08B57544:: @ 08B57544
	.incbin "baserom.gba", 0xB57544, 0x0000004

gUnk_08B57548:: @ 08B57548
	.incbin "baserom.gba", 0xB57548, 0x0000004

gUnk_08B5754C:: @ 08B5754C
	.incbin "baserom.gba", 0xB5754C, 0x0000004

gUnk_08B57550:: @ 08B57550
	.incbin "baserom.gba", 0xB57550, 0x0000018

gUnk_08B57568:: @ 08B57568
	.incbin "baserom.gba", 0xB57568, 0x0000018

gUnk_08B57580:: @ 08B57580
	.incbin "baserom.gba", 0xB57580, 0x000001C

gUnk_08B5759C:: @ 08B5759C
	.incbin "baserom.gba", 0xB5759C, 0x0000010

gUnk_08B575AC:: @ 08B575AC
	.incbin "baserom.gba", 0xB575AC, 0x0000014

gUnk_08B575C0:: @ 08B575C0
	.incbin "baserom.gba", 0xB575C0, 0x000000C

gUnk_08B575CC:: @ 08B575CC
	.incbin "baserom.gba", 0xB575CC, 0x0000014

gUnk_08B575E0:: @ 08B575E0
	.incbin "baserom.gba", 0xB575E0, 0x0000010

gUnk_08B575F0:: @ 08B575F0
	.incbin "baserom.gba", 0xB575F0, 0x000000C

gUnk_08B575FC:: @ 08B575FC
	.incbin "baserom.gba", 0xB575FC, 0x0000008

gUnk_08B57604:: @ 08B57604
	.incbin "baserom.gba", 0xB57604, 0x0000010

gUnk_08B57614:: @ 08B57614
	.incbin "baserom.gba", 0xB57614, 0x0000004

gUnk_08B57618:: @ 08B57618
	.incbin "baserom.gba", 0xB57618, 0x0000004

gUnk_08B5761C:: @ 08B5761C
	.incbin "baserom.gba", 0xB5761C, 0x0000008

gUnk_08B57624:: @ 08B57624
	.incbin "baserom.gba", 0xB57624, 0x000000C

gUnk_08B57630:: @ 08B57630
	.incbin "baserom.gba", 0xB57630, 0x0000010

gUnk_08B57640:: @ 08B57640
	.incbin "baserom.gba", 0xB57640, 0x000000C

gUnk_08B5764C:: @ 08B5764C
	.incbin "baserom.gba", 0xB5764C, 0x000000C

gUnk_08B57658:: @ 08B57658
	.incbin "baserom.gba", 0xB57658, 0x0000004

gUnk_08B5765C:: @ 08B5765C
	.incbin "baserom.gba", 0xB5765C, 0x0000014

gUnk_08B57670:: @ 08B57670
	.incbin "baserom.gba", 0xB57670, 0x0000014

gUnk_08B57684:: @ 08B57684
	.incbin "baserom.gba", 0xB57684, 0x000000C

gUnk_08B57690:: @ 08B57690
	.incbin "baserom.gba", 0xB57690, 0x0000010

gUnk_08B576A0:: @ 08B576A0
	.incbin "baserom.gba", 0xB576A0, 0x000000C

gUnk_08B576AC:: @ 08B576AC
	.incbin "baserom.gba", 0xB576AC, 0x0000008

gUnk_08B576B4:: @ 08B576B4
	.incbin "baserom.gba", 0xB576B4, 0x0000010

gUnk_08B576C4:: @ 08B576C4
	.incbin "baserom.gba", 0xB576C4, 0x000004C

gUnk_08B57710:: @ 08B57710
	.incbin "baserom.gba", 0xB57710, 0x0000004

gUnk_08B57714:: @ 08B57714
	.incbin "baserom.gba", 0xB57714, 0x0000004

gUnk_08B57718:: @ 08B57718
	.incbin "baserom.gba", 0xB57718, 0x0000004

gUnk_08B5771C:: @ 08B5771C
	.incbin "baserom.gba", 0xB5771C, 0x0000010

gUnk_08B5772C:: @ 08B5772C
	.incbin "baserom.gba", 0xB5772C, 0x0000010

gUnk_08B5773C:: @ 08B5773C
	.incbin "baserom.gba", 0xB5773C, 0x0000014

gUnk_08B57750:: @ 08B57750
	.incbin "baserom.gba", 0xB57750, 0x000000C

gUnk_08B5775C:: @ 08B5775C
	.incbin "baserom.gba", 0xB5775C, 0x0000010

gUnk_08B5776C:: @ 08B5776C
	.incbin "baserom.gba", 0xB5776C, 0x0000014

gUnk_08B57780:: @ 08B57780
	.incbin "baserom.gba", 0xB57780, 0x0000010

gUnk_08B57790:: @ 08B57790
	.incbin "baserom.gba", 0xB57790, 0x000000C

gUnk_08B5779C:: @ 08B5779C
	.incbin "baserom.gba", 0xB5779C, 0x0000008

gUnk_08B577A4:: @ 08B577A4
	.incbin "baserom.gba", 0xB577A4, 0x000000C

gUnk_08B577B0:: @ 08B577B0
	.incbin "baserom.gba", 0xB577B0, 0x000000C

gUnk_08B577BC:: @ 08B577BC
	.incbin "baserom.gba", 0xB577BC, 0x0000004

gUnk_08B577C0:: @ 08B577C0
	.incbin "baserom.gba", 0xB577C0, 0x0000004

gUnk_08B577C4:: @ 08B577C4
	.incbin "baserom.gba", 0xB577C4, 0x0000010

gUnk_08B577D4:: @ 08B577D4
	.incbin "baserom.gba", 0xB577D4, 0x0000014

gUnk_08B577E8:: @ 08B577E8
	.incbin "baserom.gba", 0xB577E8, 0x0000008

gUnk_08B577F0:: @ 08B577F0
	.incbin "baserom.gba", 0xB577F0, 0x0000010

gUnk_08B57800:: @ 08B57800
	.incbin "baserom.gba", 0xB57800, 0x0000010

gUnk_08B57810:: @ 08B57810
	.incbin "baserom.gba", 0xB57810, 0x0000004

gUnk_08B57814:: @ 08B57814
	.incbin "baserom.gba", 0xB57814, 0x000000C

gUnk_08B57820:: @ 08B57820
	.incbin "baserom.gba", 0xB57820, 0x000000C

gUnk_08B5782C:: @ 08B5782C
	.incbin "baserom.gba", 0xB5782C, 0x000000C

gUnk_08B57838:: @ 08B57838
	.incbin "baserom.gba", 0xB57838, 0x000000C

gUnk_08B57844:: @ 08B57844
	.incbin "baserom.gba", 0xB57844, 0x0000010

gUnk_08B57854:: @ 08B57854
	.incbin "baserom.gba", 0xB57854, 0x0000010

gUnk_08B57864:: @ 08B57864
	.incbin "baserom.gba", 0xB57864, 0x0000008

gUnk_08B5786C:: @ 08B5786C
	.incbin "baserom.gba", 0xB5786C, 0x000004C

gUnk_08B578B8:: @ 08B578B8
	.incbin "baserom.gba", 0xB578B8, 0x000004C

gUnk_08B57904:: @ 08B57904
	.incbin "baserom.gba", 0xB57904, 0x000004C

gUnk_08B57950:: @ 08B57950
	.incbin "baserom.gba", 0xB57950, 0x000004C

gUnk_08B5799C:: @ 08B5799C
	.incbin "baserom.gba", 0xB5799C, 0x000004C

gUnk_08B579E8:: @ 08B579E8
	.incbin "baserom.gba", 0xB579E8, 0x000004C

gUnk_08B57A34:: @ 08B57A34
	.incbin "baserom.gba", 0xB57A34, 0x000004C

gUnk_08B57A80:: @ 08B57A80
	.incbin "baserom.gba", 0xB57A80, 0x000004C

gUnk_08B57ACC:: @ 08B57ACC
	.incbin "baserom.gba", 0xB57ACC, 0x000004C

gUnk_08B57B18:: @ 08B57B18
	.incbin "baserom.gba", 0xB57B18, 0x000004C

gUnk_08B57B64:: @ 08B57B64
	.incbin "baserom.gba", 0xB57B64, 0x000004C

gUnk_08B57BB0:: @ 08B57BB0
	.incbin "baserom.gba", 0xB57BB0, 0x0000004

gUnk_08B57BB4:: @ 08B57BB4
	.incbin "baserom.gba", 0xB57BB4, 0x0000004

gUnk_08B57BB8:: @ 08B57BB8
	.incbin "baserom.gba", 0xB57BB8, 0x0000004

gUnk_08B57BBC:: @ 08B57BBC
	.incbin "baserom.gba", 0xB57BBC, 0x0000004

gUnk_08B57BC0:: @ 08B57BC0
	.incbin "baserom.gba", 0xB57BC0, 0x0000004

gUnk_08B57BC4:: @ 08B57BC4
	.incbin "baserom.gba", 0xB57BC4, 0x0000004

gUnk_08B57BC8:: @ 08B57BC8
	.incbin "baserom.gba", 0xB57BC8, 0x0000004

gUnk_08B57BCC:: @ 08B57BCC
	.incbin "baserom.gba", 0xB57BCC, 0x0000004

gUnk_08B57BD0:: @ 08B57BD0
	.incbin "baserom.gba", 0xB57BD0, 0x0000004

gUnk_08B57BD4:: @ 08B57BD4
	.incbin "baserom.gba", 0xB57BD4, 0x0000004

gUnk_08B57BD8:: @ 08B57BD8
	.incbin "baserom.gba", 0xB57BD8, 0x0000008

gUnk_08B57BE0:: @ 08B57BE0
	.incbin "baserom.gba", 0xB57BE0, 0x0000004

gUnk_08B57BE4:: @ 08B57BE4
	.incbin "baserom.gba", 0xB57BE4, 0x0000004

gUnk_08B57BE8:: @ 08B57BE8
	.incbin "baserom.gba", 0xB57BE8, 0x0000004

gUnk_08B57BEC:: @ 08B57BEC
	.incbin "baserom.gba", 0xB57BEC, 0x0000004

gUnk_08B57BF0:: @ 08B57BF0
	.incbin "baserom.gba", 0xB57BF0, 0x0000004

gUnk_08B57BF4:: @ 08B57BF4
	.incbin "baserom.gba", 0xB57BF4, 0x0000004

gUnk_08B57BF8:: @ 08B57BF8
	.incbin "baserom.gba", 0xB57BF8, 0x0000004

gUnk_08B57BFC:: @ 08B57BFC
	.incbin "baserom.gba", 0xB57BFC, 0x0000004

gUnk_08B57C00:: @ 08B57C00
	.incbin "baserom.gba", 0xB57C00, 0x0000004

gUnk_08B57C04:: @ 08B57C04
	.incbin "baserom.gba", 0xB57C04, 0x000004C

gUnk_08B57C50:: @ 08B57C50
	.incbin "baserom.gba", 0xB57C50, 0x0000004

gUnk_08B57C54:: @ 08B57C54
	.incbin "baserom.gba", 0xB57C54, 0x0000004

gUnk_08B57C58:: @ 08B57C58
	.incbin "baserom.gba", 0xB57C58, 0x0000004

gUnk_08B57C5C:: @ 08B57C5C
	.incbin "baserom.gba", 0xB57C5C, 0x0000004

gUnk_08B57C60:: @ 08B57C60
	.incbin "baserom.gba", 0xB57C60, 0x0000004

gUnk_08B57C64:: @ 08B57C64
	.incbin "baserom.gba", 0xB57C64, 0x0000004

gUnk_08B57C68:: @ 08B57C68
	.incbin "baserom.gba", 0xB57C68, 0x0000004

gUnk_08B57C6C:: @ 08B57C6C
	.incbin "baserom.gba", 0xB57C6C, 0x0000004

gUnk_08B57C70:: @ 08B57C70
	.incbin "baserom.gba", 0xB57C70, 0x0000004

gUnk_08B57C74:: @ 08B57C74
	.incbin "baserom.gba", 0xB57C74, 0x0000004

gUnk_08B57C78:: @ 08B57C78
	.incbin "baserom.gba", 0xB57C78, 0x0000004

gUnk_08B57C7C:: @ 08B57C7C
	.incbin "baserom.gba", 0xB57C7C, 0x0000008

gUnk_08B57C84:: @ 08B57C84
	.incbin "baserom.gba", 0xB57C84, 0x0000004

gUnk_08B57C88:: @ 08B57C88
	.incbin "baserom.gba", 0xB57C88, 0x0000004

gUnk_08B57C8C:: @ 08B57C8C
	.incbin "baserom.gba", 0xB57C8C, 0x0000004

gUnk_08B57C90:: @ 08B57C90
	.incbin "baserom.gba", 0xB57C90, 0x0000004

gUnk_08B57C94:: @ 08B57C94
	.incbin "baserom.gba", 0xB57C94, 0x0000004

gUnk_08B57C98:: @ 08B57C98
	.incbin "baserom.gba", 0xB57C98, 0x0000004

gUnk_08B57C9C:: @ 08B57C9C
	.incbin "baserom.gba", 0xB57C9C, 0x0000004

gUnk_08B57CA0:: @ 08B57CA0
	.incbin "baserom.gba", 0xB57CA0, 0x0000004

gUnk_08B57CA4:: @ 08B57CA4
	.incbin "baserom.gba", 0xB57CA4, 0x000004C

gUnk_08B57CF0:: @ 08B57CF0
	.incbin "baserom.gba", 0xB57CF0, 0x0000004

gUnk_08B57CF4:: @ 08B57CF4
	.incbin "baserom.gba", 0xB57CF4, 0x0000004

gUnk_08B57CF8:: @ 08B57CF8
	.incbin "baserom.gba", 0xB57CF8, 0x0000004

gUnk_08B57CFC:: @ 08B57CFC
	.incbin "baserom.gba", 0xB57CFC, 0x0000004

gUnk_08B57D00:: @ 08B57D00
	.incbin "baserom.gba", 0xB57D00, 0x0000004

gUnk_08B57D04:: @ 08B57D04
	.incbin "baserom.gba", 0xB57D04, 0x0000004

gUnk_08B57D08:: @ 08B57D08
	.incbin "baserom.gba", 0xB57D08, 0x0000004

gUnk_08B57D0C:: @ 08B57D0C
	.incbin "baserom.gba", 0xB57D0C, 0x0000004

gUnk_08B57D10:: @ 08B57D10
	.incbin "baserom.gba", 0xB57D10, 0x0000004

gUnk_08B57D14:: @ 08B57D14
	.incbin "baserom.gba", 0xB57D14, 0x0000004

gUnk_08B57D18:: @ 08B57D18
	.incbin "baserom.gba", 0xB57D18, 0x0000004

gUnk_08B57D1C:: @ 08B57D1C
	.incbin "baserom.gba", 0xB57D1C, 0x0000004

gUnk_08B57D20:: @ 08B57D20
	.incbin "baserom.gba", 0xB57D20, 0x0000008

gUnk_08B57D28:: @ 08B57D28
	.incbin "baserom.gba", 0xB57D28, 0x0000004

gUnk_08B57D2C:: @ 08B57D2C
	.incbin "baserom.gba", 0xB57D2C, 0x0000004

gUnk_08B57D30:: @ 08B57D30
	.incbin "baserom.gba", 0xB57D30, 0x0000004

gUnk_08B57D34:: @ 08B57D34
	.incbin "baserom.gba", 0xB57D34, 0x0000004

gUnk_08B57D38:: @ 08B57D38
	.incbin "baserom.gba", 0xB57D38, 0x0000004

gUnk_08B57D3C:: @ 08B57D3C
	.incbin "baserom.gba", 0xB57D3C, 0x0000004

gUnk_08B57D40:: @ 08B57D40
	.incbin "baserom.gba", 0xB57D40, 0x0000004

gUnk_08B57D44:: @ 08B57D44
	.incbin "baserom.gba", 0xB57D44, 0x000004C

gUnk_08B57D90:: @ 08B57D90
	.incbin "baserom.gba", 0xB57D90, 0x0000004

gUnk_08B57D94:: @ 08B57D94
	.incbin "baserom.gba", 0xB57D94, 0x0000004

gUnk_08B57D98:: @ 08B57D98
	.incbin "baserom.gba", 0xB57D98, 0x0000004

gUnk_08B57D9C:: @ 08B57D9C
	.incbin "baserom.gba", 0xB57D9C, 0x0000004

gUnk_08B57DA0:: @ 08B57DA0
	.incbin "baserom.gba", 0xB57DA0, 0x0000004

gUnk_08B57DA4:: @ 08B57DA4
	.incbin "baserom.gba", 0xB57DA4, 0x0000004

gUnk_08B57DA8:: @ 08B57DA8
	.incbin "baserom.gba", 0xB57DA8, 0x0000004

gUnk_08B57DAC:: @ 08B57DAC
	.incbin "baserom.gba", 0xB57DAC, 0x0000004

gUnk_08B57DB0:: @ 08B57DB0
	.incbin "baserom.gba", 0xB57DB0, 0x0000004

gUnk_08B57DB4:: @ 08B57DB4
	.incbin "baserom.gba", 0xB57DB4, 0x0000004

gUnk_08B57DB8:: @ 08B57DB8
	.incbin "baserom.gba", 0xB57DB8, 0x0000004

gUnk_08B57DBC:: @ 08B57DBC
	.incbin "baserom.gba", 0xB57DBC, 0x0000004

gUnk_08B57DC0:: @ 08B57DC0
	.incbin "baserom.gba", 0xB57DC0, 0x0000004

gUnk_08B57DC4:: @ 08B57DC4
	.incbin "baserom.gba", 0xB57DC4, 0x0000008

gUnk_08B57DCC:: @ 08B57DCC
	.incbin "baserom.gba", 0xB57DCC, 0x0000004

gUnk_08B57DD0:: @ 08B57DD0
	.incbin "baserom.gba", 0xB57DD0, 0x0000004

gUnk_08B57DD4:: @ 08B57DD4
	.incbin "baserom.gba", 0xB57DD4, 0x0000004

gUnk_08B57DD8:: @ 08B57DD8
	.incbin "baserom.gba", 0xB57DD8, 0x0000004

gUnk_08B57DDC:: @ 08B57DDC
	.incbin "baserom.gba", 0xB57DDC, 0x0000004

gUnk_08B57DE0:: @ 08B57DE0
	.incbin "baserom.gba", 0xB57DE0, 0x0000004

gUnk_08B57DE4:: @ 08B57DE4
	.incbin "baserom.gba", 0xB57DE4, 0x000004C

gUnk_08B57E30:: @ 08B57E30
	.incbin "baserom.gba", 0xB57E30, 0x0000004

gUnk_08B57E34:: @ 08B57E34
	.incbin "baserom.gba", 0xB57E34, 0x0000004

gUnk_08B57E38:: @ 08B57E38
	.incbin "baserom.gba", 0xB57E38, 0x0000004

gUnk_08B57E3C:: @ 08B57E3C
	.incbin "baserom.gba", 0xB57E3C, 0x0000004

gUnk_08B57E40:: @ 08B57E40
	.incbin "baserom.gba", 0xB57E40, 0x0000004

gUnk_08B57E44:: @ 08B57E44
	.incbin "baserom.gba", 0xB57E44, 0x0000004

gUnk_08B57E48:: @ 08B57E48
	.incbin "baserom.gba", 0xB57E48, 0x0000004

gUnk_08B57E4C:: @ 08B57E4C
	.incbin "baserom.gba", 0xB57E4C, 0x0000004

gUnk_08B57E50:: @ 08B57E50
	.incbin "baserom.gba", 0xB57E50, 0x0000004

gUnk_08B57E54:: @ 08B57E54
	.incbin "baserom.gba", 0xB57E54, 0x0000004

gUnk_08B57E58:: @ 08B57E58
	.incbin "baserom.gba", 0xB57E58, 0x0000004

gUnk_08B57E5C:: @ 08B57E5C
	.incbin "baserom.gba", 0xB57E5C, 0x0000004

gUnk_08B57E60:: @ 08B57E60
	.incbin "baserom.gba", 0xB57E60, 0x0000004

gUnk_08B57E64:: @ 08B57E64
	.incbin "baserom.gba", 0xB57E64, 0x0000004

gUnk_08B57E68:: @ 08B57E68
	.incbin "baserom.gba", 0xB57E68, 0x0000008

gUnk_08B57E70:: @ 08B57E70
	.incbin "baserom.gba", 0xB57E70, 0x0000004

gUnk_08B57E74:: @ 08B57E74
	.incbin "baserom.gba", 0xB57E74, 0x0000004

gUnk_08B57E78:: @ 08B57E78
	.incbin "baserom.gba", 0xB57E78, 0x0000004

gUnk_08B57E7C:: @ 08B57E7C
	.incbin "baserom.gba", 0xB57E7C, 0x0000004

gUnk_08B57E80:: @ 08B57E80
	.incbin "baserom.gba", 0xB57E80, 0x0000004

gUnk_08B57E84:: @ 08B57E84
	.incbin "baserom.gba", 0xB57E84, 0x000004C

gUnk_08B57ED0:: @ 08B57ED0
	.incbin "baserom.gba", 0xB57ED0, 0x0000004

gUnk_08B57ED4:: @ 08B57ED4
	.incbin "baserom.gba", 0xB57ED4, 0x0000004

gUnk_08B57ED8:: @ 08B57ED8
	.incbin "baserom.gba", 0xB57ED8, 0x0000004

gUnk_08B57EDC:: @ 08B57EDC
	.incbin "baserom.gba", 0xB57EDC, 0x0000004

gUnk_08B57EE0:: @ 08B57EE0
	.incbin "baserom.gba", 0xB57EE0, 0x0000004

gUnk_08B57EE4:: @ 08B57EE4
	.incbin "baserom.gba", 0xB57EE4, 0x0000004

gUnk_08B57EE8:: @ 08B57EE8
	.incbin "baserom.gba", 0xB57EE8, 0x0000004

gUnk_08B57EEC:: @ 08B57EEC
	.incbin "baserom.gba", 0xB57EEC, 0x0000004

gUnk_08B57EF0:: @ 08B57EF0
	.incbin "baserom.gba", 0xB57EF0, 0x0000004

gUnk_08B57EF4:: @ 08B57EF4
	.incbin "baserom.gba", 0xB57EF4, 0x0000004

gUnk_08B57EF8:: @ 08B57EF8
	.incbin "baserom.gba", 0xB57EF8, 0x0000004

gUnk_08B57EFC:: @ 08B57EFC
	.incbin "baserom.gba", 0xB57EFC, 0x0000004

gUnk_08B57F00:: @ 08B57F00
	.incbin "baserom.gba", 0xB57F00, 0x0000004

gUnk_08B57F04:: @ 08B57F04
	.incbin "baserom.gba", 0xB57F04, 0x0000004

gUnk_08B57F08:: @ 08B57F08
	.incbin "baserom.gba", 0xB57F08, 0x0000004

gUnk_08B57F0C:: @ 08B57F0C
	.incbin "baserom.gba", 0xB57F0C, 0x0000008

gUnk_08B57F14:: @ 08B57F14
	.incbin "baserom.gba", 0xB57F14, 0x0000004

gUnk_08B57F18:: @ 08B57F18
	.incbin "baserom.gba", 0xB57F18, 0x0000004

gUnk_08B57F1C:: @ 08B57F1C
	.incbin "baserom.gba", 0xB57F1C, 0x0000004

gUnk_08B57F20:: @ 08B57F20
	.incbin "baserom.gba", 0xB57F20, 0x0000004

gUnk_08B57F24:: @ 08B57F24
	.incbin "baserom.gba", 0xB57F24, 0x000004C

gUnk_08B57F70:: @ 08B57F70
	.incbin "baserom.gba", 0xB57F70, 0x0000004

gUnk_08B57F74:: @ 08B57F74
	.incbin "baserom.gba", 0xB57F74, 0x0000004

gUnk_08B57F78:: @ 08B57F78
	.incbin "baserom.gba", 0xB57F78, 0x0000004

gUnk_08B57F7C:: @ 08B57F7C
	.incbin "baserom.gba", 0xB57F7C, 0x0000004

gUnk_08B57F80:: @ 08B57F80
	.incbin "baserom.gba", 0xB57F80, 0x0000004

gUnk_08B57F84:: @ 08B57F84
	.incbin "baserom.gba", 0xB57F84, 0x0000004

gUnk_08B57F88:: @ 08B57F88
	.incbin "baserom.gba", 0xB57F88, 0x0000004

gUnk_08B57F8C:: @ 08B57F8C
	.incbin "baserom.gba", 0xB57F8C, 0x0000004

gUnk_08B57F90:: @ 08B57F90
	.incbin "baserom.gba", 0xB57F90, 0x0000004

gUnk_08B57F94:: @ 08B57F94
	.incbin "baserom.gba", 0xB57F94, 0x0000004

gUnk_08B57F98:: @ 08B57F98
	.incbin "baserom.gba", 0xB57F98, 0x0000004

gUnk_08B57F9C:: @ 08B57F9C
	.incbin "baserom.gba", 0xB57F9C, 0x0000004

gUnk_08B57FA0:: @ 08B57FA0
	.incbin "baserom.gba", 0xB57FA0, 0x0000004

gUnk_08B57FA4:: @ 08B57FA4
	.incbin "baserom.gba", 0xB57FA4, 0x0000004

gUnk_08B57FA8:: @ 08B57FA8
	.incbin "baserom.gba", 0xB57FA8, 0x0000004

gUnk_08B57FAC:: @ 08B57FAC
	.incbin "baserom.gba", 0xB57FAC, 0x0000004

gUnk_08B57FB0:: @ 08B57FB0
	.incbin "baserom.gba", 0xB57FB0, 0x0000008

gUnk_08B57FB8:: @ 08B57FB8
	.incbin "baserom.gba", 0xB57FB8, 0x0000004

gUnk_08B57FBC:: @ 08B57FBC
	.incbin "baserom.gba", 0xB57FBC, 0x0000004

gUnk_08B57FC0:: @ 08B57FC0
	.incbin "baserom.gba", 0xB57FC0, 0x0000004

gUnk_08B57FC4:: @ 08B57FC4
	.incbin "baserom.gba", 0xB57FC4, 0x000004C

gUnk_08B58010:: @ 08B58010
	.incbin "baserom.gba", 0xB58010, 0x000004C

gUnk_08B5805C:: @ 08B5805C
	.incbin "baserom.gba", 0xB5805C, 0x000004C

gUnk_08B580A8:: @ 08B580A8
	.incbin "baserom.gba", 0xB580A8, 0x000004C

gUnk_08B580F4:: @ 08B580F4
	.incbin "baserom.gba", 0xB580F4, 0x0000064

gUnk_08B58158:: @ 08B58158
	.incbin "baserom.gba", 0xB58158, 0x0000008

gUnk_08B58160:: @ 08B58160
	.incbin "baserom.gba", 0xB58160, 0x0000010

gUnk_08B58170:: @ 08B58170
	.incbin "baserom.gba", 0xB58170, 0x0000008

gUnk_08B58178:: @ 08B58178
	.incbin "baserom.gba", 0xB58178, 0x0000018

gUnk_08B58190:: @ 08B58190
	.incbin "baserom.gba", 0xB58190, 0x0000008

gUnk_08B58198:: @ 08B58198
	.incbin "baserom.gba", 0xB58198, 0x000001C

gUnk_08B581B4:: @ 08B581B4
	.incbin "baserom.gba", 0xB581B4, 0x0000008

gUnk_08B581BC:: @ 08B581BC
	.incbin "baserom.gba", 0xB581BC, 0x000001C

gUnk_08B581D8:: @ 08B581D8
	.incbin "baserom.gba", 0xB581D8, 0x0000008

gUnk_08B581E0:: @ 08B581E0
	.incbin "baserom.gba", 0xB581E0, 0x000000C

gUnk_08B581EC:: @ 08B581EC
	.incbin "baserom.gba", 0xB581EC, 0x0000008

gUnk_08B581F4:: @ 08B581F4
	.incbin "baserom.gba", 0xB581F4, 0x000000C

gUnk_08B58200:: @ 08B58200
	.incbin "baserom.gba", 0xB58200, 0x0000008

gUnk_08B58208:: @ 08B58208
	.incbin "baserom.gba", 0xB58208, 0x000000C

gUnk_08B58214:: @ 08B58214
	.incbin "baserom.gba", 0xB58214, 0x0000008

gUnk_08B5821C:: @ 08B5821C
	.incbin "baserom.gba", 0xB5821C, 0x0000004

gUnk_08B58220:: @ 08B58220
	.incbin "baserom.gba", 0xB58220, 0x0000008

gUnk_08B58228:: @ 08B58228
	.incbin "baserom.gba", 0xB58228, 0x0000004

gUnk_08B5822C:: @ 08B5822C
	.incbin "baserom.gba", 0xB5822C, 0x0000008

gUnk_08B58234:: @ 08B58234
	.incbin "baserom.gba", 0xB58234, 0x0000008

gUnk_08B5823C:: @ 08B5823C
	.incbin "baserom.gba", 0xB5823C, 0x0000008

gUnk_08B58244:: @ 08B58244
	.incbin "baserom.gba", 0xB58244, 0x0000068

gUnk_08B582AC:: @ 08B582AC
	.incbin "baserom.gba", 0xB582AC, 0x0000034

gUnk_08B582E0:: @ 08B582E0
	.incbin "baserom.gba", 0xB582E0, 0x000002C

gUnk_08B5830C:: @ 08B5830C
	.incbin "baserom.gba", 0xB5830C, 0x0000034

gUnk_08B58340:: @ 08B58340
	.incbin "baserom.gba", 0xB58340, 0x0000030

gUnk_08B58370:: @ 08B58370
	.incbin "baserom.gba", 0xB58370, 0x000003C

gUnk_08B583AC:: @ 08B583AC
	.incbin "baserom.gba", 0xB583AC, 0x0000040

gUnk_08B583EC:: @ 08B583EC
	.incbin "baserom.gba", 0xB583EC, 0x000003C

gUnk_08B58428:: @ 08B58428
	.incbin "baserom.gba", 0xB58428, 0x0000038

gUnk_08B58460:: @ 08B58460
	.incbin "baserom.gba", 0xB58460, 0x0000008

gUnk_08B58468:: @ 08B58468
	.incbin "baserom.gba", 0xB58468, 0x0000028
