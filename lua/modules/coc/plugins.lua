local coc = {}

coc["neoclide/coc.nvim"] = {
	opt = true,
	event = "BufRead",
    branch = "release",
	config = function()
		vim.api.nvim_exec(
			[[source ~/.config/nvim/lua/modules/coc/config.vim]],
			false)
	end
}

return coc
