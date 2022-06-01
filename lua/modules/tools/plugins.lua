local tools = {}
local conf = require("modules.tools.config")

-- pop窗口的LUA函数库
tools["RishabhRD/popfix"] = {
	opt = false,
	commit = "f3571e676739208871bd38f9fa0fddf554b6a7a8",
}
-- 一些LUA工具函数库
tools["nvim-lua/plenary.nvim"] = {
	opt = false,
	commit = "66472128c3191b786966798fc956a689705ab1be"
}

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
	commit = "88229d5afd23c2325544e8625b111093fed6554b",
}
-- telescope增强，fzf C语言实现，可以加快搜索速度
tools["nvim-telescope/telescope-fzf-native.nvim"] = {
	opt = true,
	run = "make",
	after = "telescope.nvim",
	commit = "b8662b076175e75e6497c59f3e2799b879d7b954"
}
-- telescope增强，可以在不同项目之间切换搜索
tools["nvim-telescope/telescope-project.nvim"] = {
	opt = true,
	after = "telescope-fzf-native.nvim",
	commit = "d317c3cef6917d650d9a638c627b54d3e1173031"
}
-- telescope增强
tools["nvim-telescope/telescope-frecency.nvim"] = {
	opt = true,
	after = "telescope-project.nvim",
	requires = { { "tami5/sqlite.lua", opt = true } },
	commit = "979a6f3d882b7b5352cc6a751faa9c9427d40e74"
}
-- Snip执行器，用于生成代码片段
tools["michaelb/sniprun"] = {
	opt = true,
	run = "bash ./install.sh",
	cmd = { "SnipRun", "'<,'>SnipRun" },
	commit = "91653fcad4cd89e9f625848339772392183357d9"
}
-- 展示当前项目的所有错误列表
tools["folke/trouble.nvim"] = {
	opt = true,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = conf.trouble,
	commit = "20469be985143d024c460d95326ebeff9971d714"
}
-- 展示nvim各个脚本或插件的加载速度，用于性能测试
tools["dstein64/vim-startuptime"] = {
	opt = true,
	cmd = "StartupTime",
	commit = "ffa385847ac5e289a8167727251c09e7ff9d86e8"
}
-- 加快某些文件的打开速度
tools["nathom/filetype.nvim"] = {
	opt = false,
	config = conf.filetype,
	commit = "4d2c0d4488a05f9b0d18a7e2004c0182e350bb45"
}

-- 快速多个删除buffers
tools["fioncat/vim-bufclean"] = {
	opt = true,
	cmd = { "BufClean" }
}

return tools
