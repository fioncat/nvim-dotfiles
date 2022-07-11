local lang = {}

-- Go支持
lang["fioncat/vim-minigo"] = {
	branch = "neovim",
	config = function ()
		vim.api.nvim_command([[autocmd FileType go nnoremap gat :GoAddTags ]])
		vim.api.nvim_command([[autocmd FileType go nnoremap grt :GoRemoveTags ]])
		vim.api.nvim_command([[autocmd FileType go nnoremap gfs :GoFillStruct<CR>]])
		vim.api.nvim_command([[autocmd BufWriteCmd *.go call go#fmt#Format(1)]])
	end,
}

-- Delve 调试工具
lang["sebdah/vim-delve"] = {
	config = function ()
		vim.api.nvim_command([[autocmd FileType go nnoremap geb :DlvToggleBreakpoint<CR>]])
		vim.api.nvim_command([[autocmd FileType go nnoremap ger :DlvToggleTracepoint<CR>]])
		vim.api.nvim_command([[autocmd FileType go nnoremap gec :DlvClearAll<CR>]])
		vim.api.nvim_command([[autocmd FileType go nnoremap ged :DlvDebug -- ]])
		vim.api.nvim_command([[autocmd FileType go nnoremap get :DlvTest -- -test.run]])
	end,
}

return lang
