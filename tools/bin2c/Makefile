CC = gcc

CFLAGS = -Wall -Wextra -std=gnu11 -O3

.PHONY: all clean

SRCS = bin2c.c

all: bin2c
	@:

bin2c: $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) bin2c bin2c.exe
