CXX := g++

CXXFLAGS := -std=gnu++11 -O3 -flto -Wall -Wno-switch -Werror

SRCS := agb.cpp error.cpp main.cpp midi.cpp tables.cpp

HEADERS := agb.h error.h main.h midi.h tables.h

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

.PHONY: all clean

all: mid2agb$(EXE)
	@:

mid2agb$(EXE): $(SRCS) $(HEADERS)
	$(CXX) $(CXXFLAGS) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) mid2agb mid2agb.exe
