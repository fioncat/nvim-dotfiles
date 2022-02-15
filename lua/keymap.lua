local bind = require("keybind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

local key_mapping = {
	-- 分屏
	["n|<leader>w/"] = map_cr("vs"):with_noremap():with_silent(),
	["n|<leader>w-"] = map_cr("sv"):with_noremap():with_silent(),

	-- 内置终端
	['n|<leader>"'] = map_cr("VTerm"):with_noremap():with_silent(),
	["n|<leader>'"] = map_cr("Term"):with_noremap():with_silent(),
	["n|<leader>`"] = map_cr('lua require("FTerm").toggle()'):with_noremap():with_silent(),

	-- 打开当前文件的FileTree
	["n|<leader>ff"] = map_cr("NvimTreeFindFile"):with_noremap():with_silent(),
	["n|<leader>tt"] = map_cr("NvimTreeToggle"):with_noremap():with_silent(),

	-- 搜索相关命令
	["n|<leader>sf"] = map_cr("Telescope find_files"):with_noremap():with_silent(),
	["n|<leader>sg"] = map_cr("Telescope live_grep"):with_noremap():with_silent(),
	["n|<leader>sb"] = map_cr("Telescope buffers"):with_noremap():with_silent(),

	-- 快速注释
	["n|<leader>ci"] = map_cr("CommentToggle"):with_noremap():with_silent(),
	["v|<leader>ci"] = map_cr("CommentToggle"):with_silent(),

	-- 显示Git blame
	["n|<leader>gb"] = map_cr("Git blame"):with_noremap():with_silent(),

	-- Buffer 快速跳转
	["n|<leader>bb"] = map_cr("BufferLinePick"):with_noremap():with_silent(),
	["n|<leader>bn"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent(),
	["n|<leader>bp"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent(),
	["n|<leader>b1"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent(),
	["n|<leader>b2"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent(),
	["n|<leader>b3"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent(),
	["n|<leader>b4"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent(),
	["n|<leader>b5"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent(),
	["n|<leader>b6"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent(),
	["n|<leader>b7"] = map_cr("BufferLineGoToBuffer 7"):with_noremap():with_silent(),
	["n|<leader>b8"] = map_cr("BufferLineGoToBuffer 8"):with_noremap():with_silent(),
	["n|<leader>b9"] = map_cr("BufferLineGoToBuffer 9"):with_noremap():with_silent(),
	-- 删除buffer
	["n|<leader>bd"] = map_cr("Bdelete"):with_noremap():with_silent(),

	-- Hop: 快速跳转
	["n|<leader>hl"] = map_cr("HopLine"):with_noremap():with_silent(),
	["n|<leader>hw"] = map_cr("HopWord"):with_noremap():with_silent(),
}

local function load_keymap()
	vim.g.mapleader = " "
	bind.nvim_load_mapping(key_mapping)
end

load_keymap()
