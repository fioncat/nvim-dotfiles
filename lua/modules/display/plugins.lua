local display = {}
local conf = require("modules.display.config")

-- devicons，需要NERD字体的支持
display["kyazdani42/nvim-web-devicons"] = { opt = false }

-- 主题：https://github.com/sainnhe/edge
display["sainnhe/edge"] = { opt = false, config = conf.edge }
-- 主题：https://github.com/rebelot/kanagawa.nvim
display["rebelot/kanagawa.nvim"] = { opt = false, config = conf.kanagawa }
-- 主题：https://github.com/catppuccin/nvim
display["catppuccin/nvim"] = {
	opt = false,
	as = "catppuccin",
	config = conf.catppuccin,
}
-- airline的替代品，纯LUA编写的statusline
display["hoob3rt/lualine.nvim"] = {
	opt = true,
	-- 展示LSP相关进度
	after = "lualine-lsp-progress",
	config = conf.lualine,
}

-- 在statusline展示LSP相关进度
display["arkav/lualine-lsp-progress"] = { opt = true, after = "nvim-gps" }
-- 定制化nvim开始菜单
display["glepnir/dashboard-nvim"] = { opt = true, event = "BufWinEnter" }

-- 文件树插件
display["kyazdani42/nvim-tree.lua"] = {
	opt = true,
	event = "VimEnter",
	config = conf.nvim_tree,
}

-- 缩进标识，在每个缩进前用'|'标识
display["lukas-reineke/indent-blankline.nvim"] = {
	opt = true,
	event = "BufRead",
	config = conf.indent_blankline,
}

-- 在上方显示Buffer Line。需要NERD字体支持
display["akinsho/nvim-bufferline.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.nvim_bufferline,
}
-- 实时显示git blamer信息
display["APZelos/blamer.nvim"] = {
	opt = true,
	event = "BufRead",
	config = conf.blamer,
}
return display
