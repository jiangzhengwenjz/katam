TITLE       := AGB KIRBY AM
GAME_CODE   := B8KE
MAKER_CODE  := 01
REVISION    := 0
GAME_LANGUAGE := ENGLISH
MODERN      ?= 0
KEEP_TEMPS  ?= 0

# `File name`.gba ('_modern' will be appended to the modern builds)
FILE_NAME := speed_eaters
BUILD_DIR := build
ROOT_DIR := $(abspath ../../)

# Builds the ROM using a modern compiler
MODERN      ?= 0
# Compares the ROM to a checksum of the original - only makes sense using when non-modern
COMPARE     ?= 0

ifeq (modern,$(MAKECMDGOALS))
  $(error Modern compilers are not supported yet in katam)
endif
ifeq (compare,$(MAKECMDGOALS))
  COMPARE := 1
endif

# Default make rule
all: rom

# Toolchain selection
TOOLCHAIN := $(DEVKITARM)
# don't use dkP's base_tools anymore
# because the redefinition of $(CC) conflicts
# with when we want to use $(CC) to preprocess files
# thus, manually create the variables for the bin
# files, or use arm-none-eabi binaries on the system
# if dkP is not installed on this system
ifneq (,$(TOOLCHAIN))
  ifneq ($(wildcard $(TOOLCHAIN)/bin),)
    export PATH := $(TOOLCHAIN)/bin:$(PATH)
  endif
endif

PREFIX := arm-none-eabi-
OBJCOPY := $(PREFIX)objcopy
OBJDUMP := $(PREFIX)objdump
AS := $(PREFIX)as
LD := $(PREFIX)ld

EXE :=
ifeq ($(OS),Windows_NT)
  EXE := .exe
endif

# use arm-none-eabi-cpp for macOS
# as macOS's default compiler is clang
# and clang's preprocessor will warn on \u
# when preprocessing asm files, expecting a unicode literal
# we can't unconditionally use arm-none-eabi-cpp
# as installations which install binutils-arm-none-eabi
# don't come with it
ifneq ($(MODERN),1)
  ifeq ($(shell uname -s),Darwin)
    CPP := $(PREFIX)cpp
  else
    CPP := $(CC) -E
  endif
else
  CPP := $(PREFIX)cpp
endif

ROM_NAME := $(FILE_NAME).gba
OBJ_DIR_NAME := $(BUILD_DIR)/$(FILE_NAME)
MODERN_ROM_NAME := $(FILE_NAME)_modern.gba
MODERN_OBJ_DIR_NAME := $(BUILD_DIR)/modern

ELF_NAME := $(ROM_NAME:.gba=.elf)
MAP_NAME := $(ROM_NAME:.gba=.map)
MODERN_ELF_NAME := $(MODERN_ROM_NAME:.gba=.elf)
MODERN_MAP_NAME := $(MODERN_ROM_NAME:.gba=.map)

# Pick our active variables
ifeq ($(MODERN),0)
  ROM := $(ROM_NAME)
  OBJ_DIR := $(OBJ_DIR_NAME)
else
  ROM := $(MODERN_ROM_NAME)
  OBJ_DIR := $(MODERN_OBJ_DIR_NAME)
endif
ELF := $(ROM:.gba=.elf)
MAP := $(ROM:.gba=.map)
SYM := $(ROM:.gba=.sym)

# Commonly used directories
C_SUBDIR = src
ASM_SUBDIR = asm
DATA_SRC_SUBDIR = src/data
DATA_ASM_SUBDIR = data

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_ASM_SUBDIR)

SHELL := bash -o pipefail

# Set flags for tools
ASFLAGS := -mcpu=arm7tdmi --defsym REVISION=$(REVISION) --defsym $(GAME_LANGUAGE)=1

INCLUDE_DIRS := include
INCLUDE_CPP_ARGS := $(INCLUDE_DIRS:%=-iquote %)
INCLUDE_SCANINC_ARGS := $(INCLUDE_DIRS:%=-I %)

O_LEVEL ?= 2
DINFO ?= 1
CPPFLAGS := $(INCLUDE_CPP_ARGS) -Wno-trigraphs -DMODERN=$(MODERN)
ifeq ($(MODERN),0)
  CPPFLAGS += -I tools/agbcc/include -I tools/agbcc -nostdinc -iquote include -DREVISION=$(REVISION) -D$(GAME_LANGUAGE)
  CC1 := tools/agbcc/bin/agbcc$(EXE)
  override CFLAGS += -mthumb-interwork -Wimplicit -Wparentheses -Werror -O$(O_LEVEL) -fhex-asm -f2003-patch -ffix-debug-line
  LIBPATH := -L $(ROOT_DIR)/tools/agbcc/lib
  LIB := $(LIBPATH) -lgcc -lc
else
  # Note: The makefile must be set up to not call these if modern == 0
  MODERNCC := $(PREFIX)gcc
  PATH_MODERNCC := PATH="$(PATH)" $(MODERNCC)
  CC1 := $(shell $(PATH_MODERNCC) --print-prog-name=cc1) -quiet
  override CFLAGS += -mthumb -mthumb-interwork -O$(O_LEVEL) -mabi=apcs-gnu -mtune=arm7tdmi -march=armv4t -fno-toplevel-reorder -Wno-pointer-to-int-cast
  LIBPATH := -L "$(dir $(shell $(PATH_MODERNCC) -mthumb -print-file-name=libgcc.a))" -L "$(dir $(shell $(PATH_MODERNCC) -mthumb -print-file-name=libnosys.a))" -L "$(dir $(shell $(PATH_MODERNCC) -mthumb -print-file-name=libc.a))"
endif
# Enable debug info if set
ifeq ($(DINFO),1)
  override CFLAGS += -g
endif

# Variable filled out in other make files
AUTO_GEN_TARGETS :=
include $(ROOT_DIR)/make_tools.mk
# Tool executables
GFX       := $(TOOLS_DIR)/gbagfx/gbagfx$(EXE)
AIF       := $(TOOLS_DIR)/aif2pcm/aif2pcm$(EXE)
SCANINC   := $(TOOLS_DIR)/scaninc/scaninc$(EXE)
PREPROC   := $(TOOLS_DIR)/preproc/preproc$(EXE)
FIX       := $(TOOLS_DIR)/gbafix/gbafix$(EXE)

PERL := perl
SHA1 := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c

MAKEFLAGS += --no-print-directory

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

#RULES_NO_SCAN += libagbsyscall clean clean-assets tidy tidymodern tidynonmodern generated clean-generated
RULES_NO_SCAN += clean clean-assets tidy tidymodern tidynonmodern generated clean-generated
.PHONY: all rom modern compare
.PHONY: $(RULES_NO_SCAN)

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

# Check if we need to scan dependencies based on the chosen rule OR user preference
NODEP ?= 0
# Check if we need to pre-build tools and generate assets based on the chosen rule.
SETUP_PREREQS ?= 1
# Disable dependency scanning for rules that don't need it.
ifneq (,$(MAKECMDGOALS))
  ifeq (,$(filter-out $(RULES_NO_SCAN),$(MAKECMDGOALS)))
    NODEP := 1
    SETUP_PREREQS := 0
  endif
endif

.SHELLSTATUS ?= 0

ifeq ($(SETUP_PREREQS),1)
  # If set on: Default target or a rule requiring a scan
  # Forcibly execute `make tools` since we need them for what we are doing.
  $(foreach line, $(shell $(MAKE) -f $(ROOT_DIR)/make_tools.mk | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))
  ifneq ($(.SHELLSTATUS),0)
    $(error Errors occurred while building tools. See error messages above for more details)
  endif
  # Oh and also generate mapjson sources before we use `SCANINC`.
  $(foreach line, $(shell $(MAKE) generated | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))
  ifneq ($(.SHELLSTATUS),0)
    $(error Errors occurred while generating map-related sources. See error messages above for more details)
  endif
endif

# Collect sources
C_SRCS_IN := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_SRCS := $(foreach src,$(C_SRCS_IN),$(if $(findstring .inc.c,$(src)),,$(src)))
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

C_ASM_SRCS := $(wildcard $(C_SUBDIR)/*.s $(C_SUBDIR)/*/*.s $(C_SUBDIR)/*/*/*.s)
C_ASM_OBJS := $(patsubst $(C_SUBDIR)/%.s,$(C_BUILDDIR)/%.o,$(C_ASM_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

# get all the data/*.s files EXCEPT the ones with specific rules
REGULAR_DATA_ASM_SRCS := $(filter-out $(DATA_ASM_SUBDIR)/maps.s $(DATA_ASM_SUBDIR)/map_events.s, $(wildcard $(DATA_ASM_SUBDIR)/*.s))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

OBJS     := $(C_OBJS) $(C_ASM_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS) $(SONG_OBJS) $(MID_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

SUBDIRS  := $(sort $(dir $(OBJS)))
$(shell mkdir -p $(SUBDIRS))

# Pretend rules that are actually flags defer to `make all`
modern: all
compare: all

# Other rules
rom: $(ROM)
ifeq ($(COMPARE),1)
	@$(MAKE) -C payload compare
	@$(SHA1) $(FILE_NAME).sha1
endif

syms: $(SYM)

clean: tidy clean-tools clean-generated clean-assets

clean-assets:
	rm -f $(MID_SUBDIR)/*.s
	rm -f $(DATA_ASM_SUBDIR)/layouts/layouts.inc $(DATA_ASM_SUBDIR)/layouts/layouts_table.inc
	rm -f $(DATA_ASM_SUBDIR)/maps/connections.inc $(DATA_ASM_SUBDIR)/maps/events.inc $(DATA_ASM_SUBDIR)/maps/groups.inc $(DATA_ASM_SUBDIR)/maps/headers.inc
	find . \( -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.rl' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' \) -exec rm {} +

tidy: tidynonmodern tidymodern
	@$(MAKE) -C payload $@

tidynonmodern:
	rm -f $(ROM_NAME) $(ELF_NAME) $(MAP_NAME)
	rm -rf $(OBJ_DIR_NAME)

tidymodern:
	rm -f $(MODERN_ROM_NAME) $(MODERN_ELF_NAME) $(MODERN_MAP_NAME)
	rm -rf $(MODERN_OBJ_DIR_NAME)

# Other rules

# NOTE: Tools must have been built prior (FIXME)
# so you can't really call this rule directly
generated: $(AUTO_GEN_TARGETS)
	@: # Silence the "Nothing to be done for `generated'" message, which some people were confusing for an error.


%.s:   ;
%.png: ;
%.pal: ;
%.aif: ;

%.1bpp:   %.png  ; $(GFX) $< $@
%.4bpp:   %.png  ; $(GFX) $< $@
%.8bpp:   %.png  ; $(GFX) $< $@
%.gbapal: %.pal  ; $(GFX) $< $@
%.gbapal: %.png  ; $(GFX) $< $@
%.lz:     %      ; $(GFX) $< $@
%.rl:     %      ; $(GFX) $< $@

clean-generated:
	@rm -f $(AUTO_GEN_TARGETS)
	@echo "rm -f <AUTO_GEN_TARGETS>"

payload: ;

payload/payload.gba: payload
	@$(MAKE) -C payload COMPARE=$(COMPARE)

data/payload.gba.lz: payload/payload.gba
	$(GFX) $< $@
# Dependency rules (for the *.c & *.s sources to .o files)
# Have to be explicit or else missing files won't be reported.

# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way (Icedude_907: there is soon).

$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.c
ifneq ($(KEEP_TEMPS),1)
	@echo "$(CC1) <flags> -o $@ $<"
	@$(CPP) $(CPPFLAGS) $< | $(PREPROC) -i $< | $(CC1) $(CFLAGS) -o - - | cat - <(echo -e ".text\n\t.align\t2, 0") | $(AS) $(ASFLAGS) -o $@ -
else
	@$(CPP) $(CPPFLAGS) $< -o $*.i
	@$(PREPROC) $*.i | $(CC1) $(CFLAGS) -o $*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $*.s
	$(AS) $(ASFLAGS) -o $@ $*.s
endif

$(C_BUILDDIR)/%.d: $(C_SUBDIR)/%.c
	$(SCANINC) -M $@ $(INCLUDE_SCANINC_ARGS) -I tools/agbcc/include $<

ifneq ($(NODEP),1)
-include $(addprefix $(OBJ_DIR)/,$(C_SRCS:.c=.d))
endif

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(ASM_BUILDDIR)/%.d: $(ASM_SUBDIR)/%.s
	$(SCANINC) -M $@ $(INCLUDE_SCANINC_ARGS) -I "" $<

ifneq ($(NODEP),1)
-include $(addprefix $(OBJ_DIR)/,$(ASM_SRCS:.s=.d))
endif

$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.s
	$(PREPROC) $< | $(CPP) $(INCLUDE_SCANINC_ARGS) -nostdinc -undef -Wno-unicode - | $(PREPROC) -ie $< | $(AS) $(ASFLAGS) -o $@

$(C_BUILDDIR)/%.d: $(C_SUBDIR)/%.s
	$(SCANINC) -M $@ $(INCLUDE_SCANINC_ARGS) -I "" $<

ifneq ($(NODEP),1)
-include $(addprefix $(OBJ_DIR)/,$(C_ASM_SRCS:.s=.d))
endif

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s
	$(PREPROC) $< | $(CPP) $(INCLUDE_SCANINC_ARGS) -nostdinc -undef -Wno-unicode - | $(PREPROC) -ie $< | $(AS) $(ASFLAGS) -o $@

$(DATA_ASM_BUILDDIR)/%.d: $(DATA_ASM_SUBDIR)/%.s
	$(SCANINC) -M $@ $(INCLUDE_SCANINC_ARGS) -I "" $<

ifneq ($(NODEP),1)
-include $(addprefix $(OBJ_DIR)/,$(REGULAR_DATA_ASM_SRCS:.s=.d))
endif

$(OBJ_DIR)/sym_bss.ld: sym_bss.txt
	$(RAMSCRGEN) .bss $< ENGLISH > $@

$(OBJ_DIR)/sym_common.ld: sym_common.txt $(C_OBJS) $(wildcard common_syms/*.txt)
	$(RAMSCRGEN) COMMON $< ENGLISH -c $(C_BUILDDIR),common_syms > $@

$(OBJ_DIR)/sym_ewram.ld: sym_ewram.txt
	$(RAMSCRGEN) ewram_data $< ENGLISH > $@

# Linker script
ifeq ($(MODERN),0)
LD_SCRIPT := linker.ld
else
LD_SCRIPT := ld_script_modern.ld
endif

# Final rules

# Elf from object files
LDFLAGS = -Map ../../$(MAP)
$(ELF): $(LD_SCRIPT) $(OBJS)
	@cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -T ../../$< --print-memory-usage -o ../../$@ $(OBJS_REL) $(LIB) | cat
	@echo "cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -T ../../$< --print-memory-usage -o ../../$@ <objs> <libs> | cat"

# Builds the rom from the elf file
$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@
	$(FIX) $@ -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent

# Symbol file (`make syms`)
$(SYM): $(ELF)
	$(OBJDUMP) -t $< | sort -u | grep -E "^0[2389]" | $(PERL) -p -e 's/^(\w{8}) (\w).{6} \S+\t(\w{8}) (\S+)$$/\1 \2 \3 \4/g' > $@
