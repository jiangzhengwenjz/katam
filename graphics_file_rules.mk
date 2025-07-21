graphics/corrupted_save/tileset.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 97 -Wnum_tiles

graphics/rooms/backgrounds/dimension_mirror_3/tileset.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 900 -Wnum_tiles
