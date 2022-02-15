local lang = {}

lang["fioncat/vim-minigo"] = {
	branch = "neovim",
	config = function ()
		vim.api.nvim_command([[autocmd FileType go nnoremap gat :GoAddTags]])
		vim.api.nvim_command([[autocmd FileType go nnoremap grt :GoRemoveTags]])
		vim.api.nvim_command([[autocmd FileType go nnoremap gi  :GoImports<CR>]])
		vim.api.nvim_command([[autocmd FileType go nnoremap gfs :GoFillStruct<CR>]])
		vim.api.nvim_command([[autocmd BufWriteCmd *.go call go#fmt#Format(1)]])
	end,
}

return lang
