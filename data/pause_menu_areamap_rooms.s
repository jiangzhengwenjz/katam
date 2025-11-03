    .include "asm/macros.inc"
    .include "constants/constants.inc"

    .section .rodata

gAreaMapRoomsTilemapOffsets::
    .word gAreaMapRoomsTilemapTutorial - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapRainbowRoute - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapMoonlightMansion - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapCabbageCavern - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapMustardMountain - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapCarrotCastle - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapOliveOcean - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapPeppermintPalace - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapRadishRuins - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapCandyConstellation - gAreaMapRoomsTilemaps
    .word gAreaMapRoomsTilemapDimensionMirror - gAreaMapRoomsTilemaps

    .balign 4, 0
gAreaMapRoomsTilemaps::

    .balign 4, 0
gAreaMapRoomsTilemapTutorial::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/empty.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapRainbowRoute::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/rainbow_route.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapMoonlightMansion::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/moonlight_mansion.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapCabbageCavern::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/cabbage_cavern.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapMustardMountain::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/mustard_mountain.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapCarrotCastle::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/carrot_castle.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapOliveOcean::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/olive_ocean.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapPeppermintPalace::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/peppermint_palace.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapRadishRuins::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/radish_ruins.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapCandyConstellation::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/candy_constellation.bin.rl"

    .balign 4, 0
gAreaMapRoomsTilemapDimensionMirror::
    .incbin "graphics/pause_menu/areamap_rooms/area_tilemaps/empty.bin.rl"

@ Unused
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x40
    .byte 0x82
    .byte 0x00
    .byte 0x02
    .byte 0x00
    .byte 0x64
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x02
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x00
    .byte 0x02
    .byte 0x06
    .byte 0x06
    .byte 0x05
    .byte 0x04
    .byte 0x04
    .byte 0x06
    .byte 0x00
    .byte 0x02
    .byte 0x05
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x00
    .byte 0x04
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x05
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x02
    .byte 0x04
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x05
    .byte 0x06
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x05
    .byte 0x06
    .byte 0x06
    .byte 0x04
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x04
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x05
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x04
    .byte 0x02
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x05
    .byte 0x02
    .byte 0x64
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x05
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x00
    .byte 0x04
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x02
    .byte 0x05
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x00
    .byte 0x02
    .byte 0x06
    .byte 0x06
    .byte 0x05
    .byte 0x04
    .byte 0x04
    .byte 0x06
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x02
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x05
    .byte 0x02
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x04
    .byte 0x02
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x05
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x06
    .byte 0x06
    .byte 0x06
    .byte 0x04
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x05
    .byte 0x06
    .byte 0x06
    .byte 0x04
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x05
    .byte 0x06
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x02
    .byte 0x04
    .byte 0x02
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .byte 0x00
