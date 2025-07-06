CC ?= gcc
.PHONY: all clean

SRCS = gbafix.c

HEADERS := elf.h

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

all: gbafix$(EXE)
	@:

gbafix$(EXE): $(SRCS) $(HEADERS)
	$(CC) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) gbafix gbafix.exe
