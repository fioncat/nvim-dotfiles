local global = require('global')

local options = {
	-- 关闭兼容模式
	nocompatible = true,

	-- 编码集，某些插件需要这个配置
	encoding = 'UTF-8',

	-- 显示相对行号
	number = true,
	relativenumber = true,

	-- 突出显示当前行
	cursorline = true,

	-- 突出显示搜索匹配项
	showmatch = true,

	-- tab占用4空格
	ts = 4,
	shiftwidth = 4,

	-- TODO: 开启之后，使用spaces代替tab进行插入
	-- expandtab = true,

	-- 自动对齐
	autoindent = true,

	-- 分屏在右边和下面打开
	splitright = true,
	splitbelow = true,

	-- 实时搜索模式
	incsearch = true,
	-- 搜索高亮，需要通过:noh关闭
	hlsearch = true,

	-- 搜索忽略大小写
	ignorecase = true,

	-- 不生成中间临时文件
	noswapfile = true,

	-- 命令行高度
	cmdheight = 1,

	-- vim自带的命令行补全
	wildmenu = true,
	wildmode = "longest,list",

	-- 文件有变更时，自动重新加载
	autoread = true,

	-- 关闭响铃
	noeb = true,
	vb = true,
	t_vb = '',

	laststatus = 2,
	display = "lastline",

	-- 主题相关配置
	background = 'dark',
	termguicolors = true,

	wildignorecase = true,
	wildignore = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**",

	history = 2000,
	errorbells = true,
	visualbell = true,
	hidden = true,
	fileformats = "unix,mac,dos",
	magic = true,
	virtualedit = "block",
}

local function bind_option()
	for k, v in pairs(options) do
		if v == true then
			vim.cmd("set " .. k)
		elseif v == false then
			vim.cmd("set no" .. k)
		else
			vim.cmd("set " .. k .. "=" .. v)
		end
	end
end

-- 加载配置
local function load_options()
	if global.is_mac then
		vim.g.clipboard = {
			name = "macOS-clipboard",
			copy = { ["+"] = "pbcopy", ["*"] = "pbcopy" },
			paste = { ["+"] = "pbpaste", ["*"] = "pbpaste" },
			cache_enabled = 0,
		}
		vim.g.python_host_prog = "/usr/bin/python"
		vim.g.python3_host_prog = "/usr/local/bin/python3"
	end
	bind_option()
	vim.cmd([[colorscheme catppuccin]])
end

load_options()