local editor = {}
local conf = require("modules.editor.config")

-- 用于代码的快速对齐
editor["junegunn/vim-easy-align"] = {
	opt = true, cmd = "EasyAlign",
	commit = "12dd6316974f71ce333e360c0260b4e1f81169c3"
}
-- 快速注释/取消注释，:CommentToggle
editor["terrortylor/nvim-comment"] = {
	opt = false,
	config = function()
		require("nvim_comment").setup({
			hook = function()
				require("ts_context_commentstring.internal").update_commentstring()
			end,
		})
	end,
	commit = "f670649da497de12aa3d5afc0a693d5d50b17d85"
}

-- 语法高亮大杀器，性能比原生正则要大大的好
-- 使用 :TSInstall <language> 来安装语言的高亮
-- 使用 :TSUpdaate 来更新语言的高亮
-- https://github.com/nvim-treesitter/nvim-treesitter
editor["nvim-treesitter/nvim-treesitter"] = {
	opt = true,
	run = ":TSUpdate",
	event = "BufRead",
	config = conf.nvim_treesitter,
	commit = "3e99302082489b36480e3b1eeceed763331e790f",
}
-- 语法高亮支持对象识别
editor["nvim-treesitter/nvim-treesitter-textobjects"] = {
	opt = true,
	after = "nvim-treesitter",
	commit = "fea609aa58b3390a09e8df0e96902fd4b094d8b7",
}
-- 在statusline中显示当前光标所处的代码结构位置
-- 就像它的名字一样，GPS定位
editor["SmiteshP/nvim-gps"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.nvim_gps,
	commit = "6afd8f7a69e7008dabe048d4fb1ee8e467a72fdf",
}
-- 在编写HTML或XML时自动补齐close tag
editor["windwp/nvim-ts-autotag"] = {
	opt = true,
	ft = { "html", "xml" },
	config = conf.autotag,
	commit = "5149f0c6557fa4a492d82895a564f4cd4a9c7715",
}
-- ts注释支持
editor["JoosepAlviste/nvim-ts-context-commentstring"] = {
	opt = true,
	after = "nvim-treesitter",
	commit = "097df33c9ef5bbd3828105e4bee99965b758dc3f",
}
-- 扩展vim的%，使其可以匹配一些脚本语言的关键词对
-- 例如if, elif, else等
editor["andymass/vim-matchup"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.matchup,
	commit = "71739b54228eaa79344b02d46a61d88c2be1b234",
}
-- 通过关键字快速跳转到文档的任意位置
-- 使用各种Hop命令
editor["phaazon/hop.nvim"] = {
	opt = true,
	branch = "v1",
	cmd = {
		"HopLine",
		"HopLineStart",
		"HopWord",
		"HopPattern",
		"HopChar1",
		"HopChar2",
	},
	config = function()
		require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
	end,
	commit = "e3c9fc3ab1e1db6bfb4f19377c53d0e457e0e2e9",
}
-- 丝滑地进行滑动，这会影响到屏幕滚动命令，例如<C-d> <C-u>
editor["karb94/neoscroll.nvim"] = {
	opt = true,
	event = "WinScrolled",
	config = conf.neoscroll,
	commit = "07242b9c29eed0367cb305d41851b2e04de9052e"
}
-- 通过 :Term 和 :VTerm 来分屏打开内置终端
editor["vimlab/split-term.vim"] = {
	opt = true,
	cmd = { "Term", "VTerm" },
	commit = "a4e28cab77ad07fc8a0ebb62a982768c02eb287c"
}
-- 内置终端增强，可以定义内置终端的各种行为，需要在配置函数中定义
editor["akinsho/nvim-toggleterm.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.toggleterm,
	commit = "d2ceb2ca3268d09db3033b133c0ee4642e07f059"
}
-- 终端悬浮插件，可以让终端悬浮在屏幕中央
-- 需要通过 require("FTerm").toggle() 触发
editor["numtostr/FTerm.nvim"] = {
	opt = true,
	event = "BufRead",
	commit = "eabb65f23ba48ec9e8abb9a2514f99b77b3bc6f2"
}
-- 编写CSS用，可以显示颜色
editor["norcalli/nvim-colorizer.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.nvim_colorizer,
	commit = "36c610a9717cc9ec426a07c8e6bf3b3abcb139d6"
}

-- 快速地离开InsertMode，防止因为键盘输入字符过快导致的延迟
editor["jdhao/better-escape.vim"] = {
	opt = true,
	event = "InsertEnter",
	commit = "6b16a45a839727977277f6ab11bded63e9ed86bb"
}
-- Git管理工具
editor["tpope/vim-fugitive"] = {
	opt = true,
	cmd = { "Git", "G" },
	commit = "c29ef11cd6478da675678265e76f9e527843876f"
}
-- 快速删除buffer，但是不影响当前打开的窗口
editor["famiu/bufdelete.nvim"] = {
	opt = true,
	cmd = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
	commit = "1c59b784c53afaf7b9ca63186da99e5d46e3e429"
}

return editor
