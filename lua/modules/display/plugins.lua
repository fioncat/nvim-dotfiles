local display = {}
local conf = require("modules.display.config")

-- devicons，需要NERD字体的支持
display["kyazdani42/nvim-web-devicons"] = {
	opt = false,
	commit = "e3294f687626b40754bb40ac2d636d166098b2fb"
}

-- 主题：https://github.com/sainnhe/edge
display["sainnhe/edge"] = {
	opt = false, config = conf.edge,
	commit = "8203d4e3ba2d586fdc652da586cfdb03fa83d3c9"
}
-- 主题：https://github.com/rebelot/kanagawa.nvim
display["rebelot/kanagawa.nvim"] = {
	opt = false,
	config = conf.kanagawa,
	commit = "e3a1037905c27a04b1725dc4d4006c4408bcd198"
}
-- 主题：https://github.com/catppuccin/nvim
display["catppuccin/nvim"] = {
	opt = false,
	as = "catppuccin",
	config = conf.catppuccin,
	commit = "406fdf2f2d2372df52d503e9f7bef96d89901c9f"
}
-- airline的替代品，纯LUA编写的statusline
display["hoob3rt/lualine.nvim"] = {
	opt = true,
	-- 展示LSP相关进度
	after = "lualine-lsp-progress",
	config = conf.lualine,
	commit = "6a3d367449fac10ed9d9ee356e8f02ba1ca941f6"
}

-- 在statusline展示LSP相关进度
display["arkav/lualine-lsp-progress"] = {
	opt = true,
	after = "nvim-gps",
	commit = "56842d097245a08d77912edf5f2a69ba29f275d7",
}
-- 定制化nvim开始菜单
-- display["glepnir/dashboard-nvim"] = {
-- 	opt = true,
-- 	event = "BufWinEnter",
-- 	commit = "ba98ab86487b8eda3b0934b5423759944b5f7ebd"
-- }

-- 文件树插件
display["kyazdani42/nvim-tree.lua"] = {
	opt = true,
	event = "VimEnter",
	config = conf.nvim_tree,
	commit = "3f4ed9b6c2598ab8304186486a05ae7a328b8d49",
}

-- 缩进标识，在每个缩进前用'|'标识
display["lukas-reineke/indent-blankline.nvim"] = {
	opt = true,
	event = "BufRead",
	config = conf.indent_blankline,
	commit = "2e35f7dcdc72f39b37c21e43cdb538d7a41c7e07",
}

-- 在上方显示Buffer Line。需要NERD字体支持
display["akinsho/nvim-bufferline.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.nvim_bufferline,
	commit = "305d4fd693b6ebcb9ac95cf16c0693ce64960162",
}
-- 实时显示git blamer信息
display["APZelos/blamer.nvim"] = {
	opt = true,
	config = conf.blamer,
	event = "BufEnter",
	commit = "f4eb22a9013642c411725fdda945ae45f8d93181",
}
return display
