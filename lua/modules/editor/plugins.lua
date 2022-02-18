local editor = {}
local conf = require("modules.editor.config")

-- 用于代码的快速对齐
editor["junegunn/vim-easy-align"] = { opt = true, cmd = "EasyAlign" }
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
}
-- 语法高亮支持对象识别
editor["nvim-treesitter/nvim-treesitter-textobjects"] = {
	opt = true,
	after = "nvim-treesitter",
}
-- 在statusline中显示当前光标所处的代码结构位置
-- 就像它的名字一样，GPS定位
editor["SmiteshP/nvim-gps"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.nvim_gps,
}
-- 在编写HTML或XML时自动补齐close tag
editor["windwp/nvim-ts-autotag"] = {
	opt = true,
	ft = { "html", "xml" },
	config = conf.autotag,
}
-- ts注释支持
editor["JoosepAlviste/nvim-ts-context-commentstring"] = {
	opt = true,
	after = "nvim-treesitter",
}
-- 扩展vim的%，使其可以匹配一些脚本语言的关键词对
-- 例如if, elif, else等
editor["andymass/vim-matchup"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.matchup,
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
}
-- 丝滑地进行滑动，这会影响到屏幕滚动命令，例如<C-d> <C-u>
editor["karb94/neoscroll.nvim"] = {
	opt = true,
	event = "WinScrolled",
	config = conf.neoscroll,
}
-- 通过 :Term 和 :VTerm 来分屏打开内置终端
editor["vimlab/split-term.vim"] = { opt = true, cmd = { "Term", "VTerm" } }
-- 内置终端增强，可以定义内置终端的各种行为，需要在配置函数中定义
editor["akinsho/nvim-toggleterm.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.toggleterm,
}
-- 终端悬浮插件，可以让终端悬浮在屏幕中央
-- 需要通过 require("FTerm").toggle() 触发
editor["numtostr/FTerm.nvim"] = { opt = true, event = "BufRead" }
-- 编写CSS用，可以显示颜色
editor["norcalli/nvim-colorizer.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.nvim_colorizer,
}

-- 快速地离开InsertMode，防止因为键盘输入字符过快导致的延迟
editor["jdhao/better-escape.vim"] = { opt = true, event = "InsertEnter" }
-- Git管理工具
editor["tpope/vim-fugitive"] = { opt = true, cmd = { "Git", "G" } }
-- 快速删除buffer，但是不影响当前打开的窗口
editor["famiu/bufdelete.nvim"] = {
	opt = true,
	cmd = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
}

return editor
