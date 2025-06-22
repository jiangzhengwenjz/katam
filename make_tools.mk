# This controls building executables in the `tools` folder.
# Can be invoked through the `Makefile` or standalone.

MAKEFLAGS += --no-print-directory

# Inclusive list. If you don't want a tool to be built, don't add it here.
# Use path relative to this makefile, in order fo Makefiles in subdirectory to work
MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
TOOLS_DIR := $(dir $(MKFILE_PATH))/tools
TOOL_NAMES := aif2pcm bin2c gbafix gbagfx mid2agb preproc scaninc

TOOLDIRS := $(TOOL_NAMES:%=$(TOOLS_DIR)/%)

# Tool making doesnt require a pokeemerald dependency scan.
RULES_NO_SCAN += tools check-tools clean-tools $(TOOLDIRS)
.PHONY: $(RULES_NO_SCAN)

tools: $(TOOLDIRS)

$(TOOLDIRS):
	@$(MAKE) -C $@

clean-tools:
	@$(foreach tooldir,$(TOOLDIRS),$(MAKE) clean -C $(tooldir);)
