CC = gcc

CFLAGS = -Wall -Wextra -std=gnu11 -O3 -DPNG_SKIP_SETJMP_CHECK

LIBS = -lpng -lz

SRCS = main.c convert_png.c util.c font.c

.PHONY: all clean

all: rsfont
	@:

rsfont: $(SRCS) convert_png.h gfx.h global.h util.h font.h
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS) $(LIBS)

clean:
	$(RM) rsfont rsfont.exe
