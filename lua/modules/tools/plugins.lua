local tools = {}
local conf = require("modules.tools.config")

-- pop窗口的LUA函数库
tools["RishabhRD/popfix"] = { opt = false }
-- 一些LUA工具函数库
tools["nvim-lua/plenary.nvim"] = { opt = false }

-- 搜索插件，支持文件，buffer等多种搜索，类似fzf
-- 常用的搜索：
--   Telescope find_files 搜索文件
--   Telescope live_grep  当前项目的全局搜索
--   Telescope buffers    搜索buffer
--   Telescope help_tags  搜索帮助文档
tools["nvim-telescope/telescope.nvim"] = {
	opt = true,
	module = "telescope",
	cmd = "Telescope",
	config = conf.telescope,
	requires = {
		{ "nvim-lua/plenary.nvim", opt = false },
		{ "nvim-lua/popup.nvim", opt = true },
	},
}
-- telescope增强，fzf C语言实现，可以加快搜索速度
tools["nvim-telescope/telescope-fzf-native.nvim"] = {
	opt = true,
	run = "make",
	after = "telescope.nvim",
}
-- telescope增强，可以在不同项目之间切换搜索
tools["nvim-telescope/telescope-project.nvim"] = {
	opt = true,
	after = "telescope-fzf-native.nvim",
}
-- telescope增强
tools["nvim-telescope/telescope-frecency.nvim"] = {
	opt = true,
	after = "telescope-project.nvim",
	requires = { { "tami5/sqlite.lua", opt = true } },
}
-- Snip执行器，用于生成代码片段
tools["michaelb/sniprun"] = {
	opt = true,
	run = "bash ./install.sh",
	cmd = { "SnipRun", "'<,'>SnipRun" },
}
-- 展示当前项目的所有错误列表
tools["folke/trouble.nvim"] = {
	opt = true,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = conf.trouble,
}
-- 展示nvim各个脚本或插件的加载速度，用于性能测试
tools["dstein64/vim-startuptime"] = { opt = true, cmd = "StartupTime" }
-- 加快某些文件的打开速度
tools["nathom/filetype.nvim"] = {
	opt = false,
	config = conf.filetype,
}

-- 快速多个删除buffers
tools["fioncat/vim-bufclean"] = {
	opt = true,
	cmd = { "BufClean" }
}

return tools
