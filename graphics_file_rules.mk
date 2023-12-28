graphics/corrupted_save/tileset.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 97 -Wnum_tiles
