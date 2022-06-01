local completion = {}
local conf = require("modules.completion.config")

require('modules.completion.keymap')

-- nvim官方提供的LSP快速配置
completion["neovim/nvim-lspconfig"] = {
	opt = true,
	event = "BufReadPre",
	config = conf.nvim_lsp,
	commit = "0da0023374a2acbab25e538383006f1404bf3c0d"
}
-- 使用 :LspInstall 来快速安装LSP服务器
completion["williamboman/nvim-lsp-installer"] = {
	opt = true,
	after = "nvim-lspconfig",
	commit = "1dd5a25a61c38d3b5c72f74a3358d97764ad79e1"
}
-- LSP增强，修改一些行为让其更加人性化
completion["RishabhRD/nvim-lsputils"] = {
	opt = true,
	after = "nvim-lspconfig",
	config = conf.nvim_lsputils,
	commit = "ae1a4a62449863ad82c70713d5b6108f3a07917c"
}
-- 用于自定义LSP相关的UI
completion["tami5/lspsaga.nvim"] = {
	opt = true,
	after = "nvim-lspconfig",
	commit = "0da0023374a2acbab25e538383006f1404bf3c0d"
}
-- 当某些语言的LSP不支持函数签名实时展示时，需要通过这个插件来支持
completion["ray-x/lsp_signature.nvim"] = {
	opt = true,
	after = "nvim-lspconfig",
	commit = "ee290010800a5af43ca7b59987718b540a0b2b38"
}
-- nvim lua补全插件
completion["hrsh7th/nvim-cmp"] = {
	config = conf.cmp,
	event = "InsertEnter",
	requires = {
		{ "lukas-reineke/cmp-under-comparator" },
		{ "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
		{ "hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp" },
		{ "andersevenrud/cmp-tmux", after = "cmp-nvim-lua" },
		{ "hrsh7th/cmp-path", after = "cmp-tmux" },
		{ "f3fora/cmp-spell", after = "cmp-path" },
		{ "hrsh7th/cmp-buffer", after = "cmp-spell" },
		{ "kdheepak/cmp-latex-symbols", after = "cmp-buffer" },
		-- {
		--     'tzachar/cmp-tabnine',
		--     run = './install.sh',
		--     after = 'cmp-spell',
		--     config = conf.tabnine
		-- }
	},
	commit = "ba47440a97710d0f4f63eea2bc196fe17297e4ae"
}
-- snip支持
completion["L3MON4D3/LuaSnip"] = {
	after = "nvim-cmp",
	config = conf.luasnip,
	requires = "rafamadriz/friendly-snippets",
	commit = "c1d07078dce0c9631e89a299e4b4a93334650a7b"
}
-- 自动补齐括号
completion["windwp/nvim-autopairs"] = {
	after = "nvim-cmp",
	config = conf.autopairs,
	commit = "784398a8f184431fd4329f20b0e4f52e87707bbd"
}

return completion
