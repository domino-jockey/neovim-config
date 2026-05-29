NVIM_CONFIG := $(HOME)/.config/nvim
NVIM_CACHE  := $(HOME)/.cache/nvim
NVIM_STATE  := $(HOME)/.local/state/nvim
NVIM_DATA   := $(HOME)/.local/share/nvim

.PHONY: install clean

install:
	mkdir -p $(NVIM_CONFIG)
	cp init.lua $(NVIM_CONFIG)/init.lua
	cp -r lua $(NVIM_CONFIG)/lua

clean:
	rm -rf $(NVIM_CACHE)/* $(NVIM_CONFIG)/* $(NVIM_STATE)/* $(NVIM_DATA)/*

pull:
	rm -f init.lua
	rm -rf lua
	cp $(NVIM_CONFIG)/init.lua init.lua
	cp -r $(NVIM_CONFIG)/lua ./lua
