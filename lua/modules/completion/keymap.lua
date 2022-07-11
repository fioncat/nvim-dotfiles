local bind = require("keybind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

local key_mapping = {}

local function load_keymap()
	vim.g.mapleader = " "
	bind.nvim_load_mapping(key_mapping)
end

load_keymap()
