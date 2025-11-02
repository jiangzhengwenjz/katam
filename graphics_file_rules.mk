graphics/corrupted_save/tileset.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 97 -Wnum_tiles

graphics/rooms/backgrounds/dimension_mirror_3/tileset.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 900 -Wnum_tiles

graphics/pause_menu/map_ui/areatitle_tilesets/%.4bpp: graphics/pause_menu/map_ui/areatitle_tilesets/%.png
	$(GFX) $< $@ -num_tiles 44 -Wnum_tiles
