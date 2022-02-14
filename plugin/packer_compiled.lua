-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/wenqian/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/wenqian/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/wenqian/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/wenqian/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/wenqian/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["DAPInstall.nvim"] = {
    commands = { "DIInstall", "DIUninstall", "DIList" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  ["FTerm.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/FTerm.nvim",
    url = "https://github.com/numtostr/FTerm.nvim"
  },
  ["accelerated-jk"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/accelerated-jk",
    url = "https://github.com/rhysd/accelerated-jk"
  },
  ["auto-session"] = {
    commands = { "SaveSession", "RestoreSession", "DeleteSession" },
    config = { "\27LJ\2\nÕ\1\0\0\4\1\5\0\n5\0\0\0-\1\0\0=\1\1\0006\1\2\0'\3\3\0B\1\2\0029\1\4\1\18\3\0\0B\1\2\1K\0\1\0\2À\nsetup\17auto-session\frequire\26auto_session_root_dir\1\0\5\25auto_session_enabled\2%auto_session_enable_last_session\2\14log_level\tinfo\25auto_restore_enabled\2\22auto_save_enabled\2\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["better-escape.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/better-escape.vim",
    url = "https://github.com/jdhao/better-escape.vim"
  },
  ["bufdelete.nvim"] = {
    commands = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nÆ\5\0\0\6\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\17integrations\21indent_blankline\1\0\2\26colored_indent_levels\1\fenabled\2\rnvimtree\1\0\2\14show_root\2\fenabled\2\15native_lsp\15underlines\1\0\4\rwarnings\14underline\nhints\14underline\verrors\14underline\16information\14underline\17virtual_text\1\0\4\rwarnings\vitalic\nhints\vitalic\verrors\vitalic\16information\vitalic\1\0\1\fenabled\2\1\0\17\15treesitter\2\bhop\2\15ts_rainbow\2\15lightspeed\1\rmarkdown\2\15bufferline\2\vbarbar\1\tfern\1\14vim_sneak\1\vneogit\1\14dashboard\2\14which_key\2\14telescope\2\rgitsigns\2\14gitgutter\1\rlsp_saga\2\16lsp_trouble\2\vstyles\1\0\5\rkeywords\vitalic\rcomments\vitalic\fstrings\tNONE\14functions\16italic,bold\14variables\tNONE\1\0\2\16term_colors\2\27transparent_background\1\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["dashboard-nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  edge = {
    config = { "\27LJ\2\nš\2\0\0\3\0\v\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0'\1\5\0=\1\4\0006\0\0\0009\0\3\0)\1\1\0=\1\6\0006\0\0\0009\0\3\0)\1\1\0=\1\a\0006\0\0\0009\0\3\0)\1\1\0=\1\b\0006\0\0\0009\0\3\0)\1\1\0=\1\t\0006\0\0\0009\0\3\0)\1\1\0=\1\n\0K\0\1\0 edge_transparent_background\28edge_better_performance\18edge_show_eob edge_disable_italic_comment\23edge_enable_italic\taura\15edge_style\6g\24set background=dark\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["gitsigns.nvim"] = {
    after = { "plenary.nvim" },
    config = { "\27LJ\2\n³\f\0\0\5\0\28\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\2B\0\2\1K\0\1\0\14diff_opts\1\0\1\rinternal\2\28current_line_blame_opts\1\0\2\21virtual_text_pos\beol\ndelay\3è\a\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3è\a\fkeymaps\tn [g\1\2\1\0@&diff ? '[g' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]g\1\2\1\0@&diff ? ']g' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>hb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\vbuffer\2\nsigns\1\0\4\23current_line_blame\2\14word_diff\1\20update_debounce\3d\18sign_priority\3\6\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\6~\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\bâ€¾\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\6_\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\bâ”‚\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\ttext\bâ”‚\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    commands = { "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1", "HopChar2" },
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n¨\5\0\0\4\0\16\0\0256\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0005\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\0\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0001autocmd CursorMoved * IndentBlanklineRefresh\bcmd\21context_patterns\1\15\0\0\nclass\rfunction\vmethod\nblock\17list_literal\rselector\b^if\v^table\17if_statement\nwhile\bfor\ttype\bvar\vimport\20buftype_exclude\1\3\0\0\rterminal\vnofile\21filetype_exclude\1\22\0\0\rstartify\14dashboard\16dotooagenda\blog\rfugitive\14gitcommit\vpacker\fvimwiki\rmarkdown\tjson\btxt\nvista\thelp\ftodoist\rNvimTree\rpeekaboo\bgit\20TelescopePrompt\rundotree\24flutterToolsOutline\5\1\0\5\28show_first_indent_level\2#show_trailing_blankline_indent\1\25space_char_blankline\6 \25show_current_context\2\tchar\bâ”‚\nsetup\21indent_blankline\frequire\tlist\18termguicolors\bopt\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n¥\2\0\0\4\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\1K\0\1\0\14overrides\vcolors\1\0\v\25variablebuiltinStyle\vitalic\14typeStyle\tNONE\19statementStyle\tbold\17keywordStyle\vitalic\18functionStyle\16bold,italic\17commentStyle\vitalic\14undercurl\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lualine-lsp-progress"] = {
    after = { "lualine.nvim" },
    load_after = {
      ["nvim-gps"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nT\0\0\2\1\3\0\f-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0009\0\1\0D\0\1\0X\0\2€'\0\2\0L\0\2\0K\0\1\0\0À\5\17get_location\17is_available¿\t\1\0\15\0;\0q6\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0024\3\0\0=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\2\14\0035\4\15\0=\4\16\0035\4\17\0=\2\14\0045\5\18\0=\5\16\0045\5\19\0=\2\14\0055\6\20\0=\6\16\0055\6\21\0=\2\14\0065\a\22\0=\a\16\0065\a\23\0=\2\14\a5\b\24\0=\b\16\a6\b\0\0'\n\25\0B\b\2\0029\b\26\b5\n!\0005\v\27\0004\f\0\0=\f\28\v5\f\29\0=\f\30\v5\f\31\0=\f \v=\v\"\n5\v$\0005\f#\0=\f\5\v4\f\3\0005\r%\0>\r\1\f5\r&\0>\r\2\f=\f\a\v4\f\3\0005\r'\0>\r\1\f5\r)\0>\1\1\r9\14(\0=\14*\r>\r\2\f=\f\b\v4\f\3\0005\r+\0005\14,\0=\14-\r5\14.\0=\14/\r>\r\1\f=\f\t\v4\f\3\0005\r0\0>\r\1\f5\r1\0005\0142\0=\14/\r>\r\2\f=\f\n\v5\f3\0=\f\f\v=\v\14\n5\v4\0004\f\0\0=\f\5\v4\f\0\0=\f\a\v5\f5\0=\f\b\v5\f6\0=\f\t\v4\f\0\0=\f\n\v4\f\0\0=\f\f\v=\v7\n4\v\0\0=\v8\n5\v9\0>\3\5\v>\4\6\v>\5\a\v>\6\b\v>\a\t\v=\v:\nB\b\2\0012\0\0€K\0\1\0\15extensions\1\5\0\0\rquickfix\14nvim-tree\15toggleterm\rfugitive\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\1\3\0\0\rprogress\rlocation\1\0\3\bdos\tCRLF\tunix\aLF\bmac\aCR\1\2\1\0\15fileformat\18icons_enabled\2\1\3\0\0\rfiletype\rencoding\fsymbols\1\0\3\nerror\6E\twarn\6W\tinfo\6I\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\tcond\1\0\0\17is_available\1\2\0\0\17lsp_progress\1\2\0\0\tdiff\1\2\0\0\vbranch\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\23disabled_filetypes\1\0\2\ntheme\15catppuccin\18icons_enabled\1\nsetup\flualine\1\2\0\0\18dapui_watches\1\0\0\1\2\0\0\17dapui_stacks\1\0\0\1\2\0\0\22dapui_breakpoints\1\0\0\1\2\0\0\17dapui_scopes\1\0\0\14filetypes\1\2\0\0\fOutline\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\14lualine_c\14lualine_b\1\2\0\0\rfiletype\14lualine_a\1\0\0\1\2\0\0\tmode\0\rnvim-gps\frequire\0" },
    load_after = {
      ["lualine-lsp-progress"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nÕ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\rmappings\1\0\5\22respect_scrolloff\1\24use_local_scrolloff\1\rstop_eof\2\16hide_cursor\2\25cursor_scrolls_alone\2\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n½\3\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\15text_align\vcenter\fpadding\3\1\rfiletype\rNvimTree\1\0\14\28show_buffer_close_icons\2\rtab_size\3\20\22max_prefix_length\3\r\20max_name_length\3\14\23right_trunc_marker\6m\22left_trunc_marker\6m\22buffer_close_icon\6x\27always_show_bufferline\2\18modified_icon\bâœ¥\16diagnostics\rnvim_lsp\20separator_style\tthin\vnumber\tnone\24show_tab_indicators\2\22show_buffer_icons\2\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\ncloseg\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvimi\0\1\5\2\3\1\15-\1\0\0\18\3\1\0009\1\0\1B\1\2\1-\1\1\0\18\3\1\0009\1\0\1B\1\2\1\b\0\0\0X\1\4€6\1\1\0'\3\2\0\18\4\0\0B\1\3\1K\0\1\0\2À\3€\25dlv exited with code\nprint\nclose\0=\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\1À\vappend\rdap.repl\frequireL\1\2\6\0\4\0\f6\2\0\0\19\4\0\0\18\5\0\0B\2\3\1\15\0\1\0X\2\4€6\2\1\0009\2\2\0023\4\3\0B\2\2\0012\0\0€K\0\1\0\0\rschedule\bvim\vassertF\0\0\4\2\2\0\6-\0\0\0005\2\0\0-\3\1\0=\3\1\2B\0\2\1K\0\1\0\0À\5À\tport\1\0\2\thost\014127.0.0.1\ttype\vserverÆ\2\1\2\14\0\19\1-6\2\0\0009\2\1\0029\2\2\2+\4\1\0B\2\2\2,\3\4\0*\5\0\0005\6\4\0005\a\3\0>\2\2\a=\a\5\0065\a\6\0'\b\a\0\18\t\5\0&\b\t\b>\b\3\a=\a\b\0066\a\0\0009\a\1\a9\a\t\a'\t\n\0\18\n\6\0003\v\v\0B\a\4\3\18\4\b\0\18\3\a\0006\a\f\0\18\t\3\0'\n\r\0006\v\14\0\18\r\4\0B\v\2\2&\n\v\nB\a\3\1\18\t\2\0009\a\15\0023\n\16\0B\a\3\0016\a\0\0009\a\17\a3\t\18\0)\nd\0B\a\3\0012\0\0€K\0\1\0\0\rdefer_fn\0\15read_start\rtostring\24Error running dlv: \vassert\0\bdlv\nspawn\targs\015127.0.0.1:\1\3\0\0\bdap\a-l\nstdio\1\0\1\rdetached\2\1\0\0\rnew_pipe\tloop\bvimÒÜ\4à\1\0\0\5\0\a\1#6\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\4\0&\3\4\3B\1\2\2\t\1\0\0X\1\5€\18\1\0\0'\2\4\0&\1\2\1L\1\2\0X\1\16€6\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\5\0&\3\4\3B\1\2\2\t\1\0\0X\1\5€\18\1\0\0'\2\5\0&\1\2\1L\1\2\0X\1\2€'\1\6\0L\1\2\0K\0\1\0\20/usr/bin/python\22/.venv/bin/python\21/venv/bin/python\15executable\vgetcwd\afn\bvim\2Î\b\1\0\a\0+\0P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\2\4\0029\2\5\0023\3\6\0=\3\2\0029\2\3\0009\2\4\0029\2\a\0023\3\b\0=\3\2\0029\2\3\0009\2\4\0029\2\t\0023\3\n\0=\3\2\0026\2\v\0009\2\f\0029\2\r\2'\4\14\0005\5\15\0B\2\3\0019\2\16\0005\3\18\0=\3\17\0029\2\19\0004\3\3\0005\4\21\0003\5\22\0=\5\23\0044\5\0\0=\5\24\4>\4\1\3=\3\20\0029\2\19\0009\3\19\0009\3\20\3=\3\25\0029\2\19\0009\3\19\0009\3\20\3=\3\26\0029\2\16\0003\3\28\0=\3\27\0029\2\19\0004\3\4\0005\4\29\0>\4\1\0035\4\30\0>\4\2\0035\4\31\0>\4\3\3=\3\27\0029\2\16\0005\3!\0006\4\"\0009\4#\4'\6$\0B\4\2\2'\5%\0&\4\5\4=\4&\0035\4'\0=\4\24\3=\3 \0029\2\19\0004\3\3\0005\4(\0003\5)\0=\5*\4>\4\1\3=\3 \0022\0\0€K\0\1\0\15pythonPath\0\1\0\4\tname\16Launch file\frequest\vlaunch\ttype\vpython\fprogram\f${file}\1\3\0\0\a-m\20debugpy.adapter\fcommand8/.local/share/nvim/dapinstall/python_dbg/bin/python\tHOME\vgetenv\aos\1\0\1\ttype\15executable\vpython\1\0\5\frequest\vlaunch\tmode\ttest\tname\24Debug test (go.mod)\ttype\ago\fprogram\29./${relativeFileDirname}\1\0\5\frequest\vlaunch\tmode\ttest\tname\15Debug test\ttype\ago\fprogram\f${file}\1\0\4\tname\nDebug\frequest\vlaunch\fprogram\f${file}\ttype\ago\0\ago\trust\6c\targs\fprogram\0\1\0\6\frequest\vlaunch\tname\vLaunch\16stopOnEntry\1\ttype\tlldb\18runInTerminal\1\bcwd\23${workspaceFolder}\bcpp\19configurations\1\0\3\tname\tlldb\fcommand\25/usr/bin/lldb-vscode\ttype\15executable\tlldb\radapters\1\0\4\vlinehl\5\vtexthl\5\nnumhl\5\ttext\tðŸ›‘\18DapBreakpoint\16sign_define\afn\bvim\0\17event_exited\0\21event_terminated\0\22event_initialized\nafter\14listeners\ndapui\bdap\frequire\0" },
    loaded = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\nŽ\4\0\0\6\0\27\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\14\0004\4\5\0005\5\n\0>\5\1\0045\5\v\0>\5\2\0045\5\f\0>\5\3\0045\5\r\0>\5\4\4=\4\15\3=\3\16\0025\3\18\0005\4\17\0=\4\15\3=\3\19\0025\3\20\0005\4\22\0005\5\21\0=\5\23\4=\4\t\3=\3\24\0025\3\25\0=\3\26\2B\0\2\1K\0\1\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\0\ttray\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\aid\fwatches\tsize\4\0€€Àþ\3\1\0\2\aid\vstacks\tsize\4\0€€Àþ\3\1\0\2\aid\16breakpoints\tsize\4\0€€Àþ\3\1\0\2\aid\vscopes\tsize\4\0€€Àþ\3\rmappings\vexpand\1\0\4\tedit\6e\trepl\6r\vremove\6d\topen\6o\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\bâ–¸\rexpanded\bâ–¾\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-gps"] = {
    after = { "lualine-lsp-progress" },
    config = { "\27LJ\2\nÖ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14languages\1\0\b\6c\2\15javascript\2\trust\2\blua\2\ago\2\tjava\2\bcpp\2\vpython\2\nicons\1\0\1\14separator\b > \1\0\3\16method-name\tïš¦ \15class-name\tï – \18function-name\tïž” \nsetup\rnvim-gps\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-scrollview"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-scrollview",
    url = "https://github.com/dstein64/nvim-scrollview"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3€)\1\15\0L\1\2\0X\1\b€9\1\0\0\a\1\2\0X\1\5€6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµæÌ™\19™³æþ\3˜\2\1\0\4\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\2B\0\2\1K\0\1\0\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\14direction\15horizontal\17persist_size\2\20shade_terminals\1\20start_in_insert\2\18close_on_exit\2\19shading_factor\0061\20insert_mappings\2\17hide_numbers\2\17open_mapping\n<c-\\>\0\nsetup\15toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÅ\5\0\0\6\0\29\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0005\4\b\0=\4\t\3=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0005\4\23\0004\5\0\0=\5\24\4=\4\25\3=\3\26\0025\3\27\0=\3\28\2B\0\2\1K\0\1\0\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\21hide_root_folder\1\vnumber\1\19relativenumber\1\15signcolumn\byes\vheight\3\30\nwidth\3\30\16auto_resize\1\tside\tleft\bgit\1\0\3\ftimeout\3ô\3\venable\2\vignore\2\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\16diagnostics\nicons\1\0\4\tinfo\6I\fwarning\6W\thint\6H\nerror\6E\1\0\1\venable\1\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\a\16open_on_tab\1\15auto_close\2\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\15update_cwd\1\18hijack_cursor\2\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "vim-matchup", "nvim-ts-hint-textobject", "nvim-treesitter-textobjects", "nvim-ts-rainbow", "nvim-ts-context-commentstring", "nvim-gps" },
    config = { "\27LJ\2\næ\b\0\0\f\0/\0F6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0B\0\2\0016\0\5\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0005\3\t\0005\4\n\0=\4\v\3=\3\f\0025\3\16\0005\4\r\0005\5\14\0=\5\15\4=\4\17\0035\4\18\0005\5\19\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0045\5\25\0=\5\26\4=\4\27\3=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\2B\0\2\0016\0\5\0'\2%\0B\0\2\2+\1\2\0=\1&\0006\0\5\0'\2'\0B\0\2\0029\0(\0B\0\1\0026\1)\0\18\3\0\0B\1\2\4H\4\t€9\6*\0059\a*\0059\a+\a\18\t\a\0009\a,\a'\n-\0'\v.\0B\a\4\2=\a+\6F\4\3\3R\4õK\0\1\0\20git@github.com:\24https://github.com/\tgsub\burl\17install_info\npairs\23get_parser_configs\28nvim-treesitter.parsers\15prefer_git\28nvim-treesitter.install\fcontext\1\0\2\rthrottle\2\venable\2\fmatchup\1\0\1\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\frainbow\1\0\3\18extended_mode\2\venable\2\19max_file_lines\3è\a\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\17@class.outer\a[]\20@function.outer\24goto_previous_start\1\0\2\a[[\20@function.outer\a[m\17@class.outer\18goto_next_end\1\0\2\a]M\17@class.outer\a]]\20@function.outer\20goto_next_start\1\0\2\a][\20@function.outer\a]m\17@class.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\0\fkeymaps\1\0\4\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\1\0\1\venable\2\14highlight\fdisable\1\2\0\0\bvim\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire,set foldexpr=nvim_treesitter#foldexpr()\24set foldmethod=expr\17nvim_command\bapi\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n’\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14filetypes\1\0\0\1\a\0\0\thtml\bxml\15javascript\20typescriptreact\20javascriptreact\bvue\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-hint-textobject"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-ts-hint-textobject",
    url = "https://github.com/mfussenegger/nvim-ts-hint-textobject"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    load_after = {
      ["gitsigns.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\2\nŸ\2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\16pulse_fader\1\0\5\rdelay_ms\3\0\nblend\3\n\nwidth\3\n\nwinhl\nPMenu\vinc_ms\3\n\1\0\2\rmin_jump\3\n\15show_jumps\2\nsetup\nspecs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["split-term.vim"] = {
    commands = { "Term", "VTerm" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/split-term.vim",
    url = "https://github.com/vimlab/split-term.vim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOutlineOpen" },
    config = { "\27LJ\2\n•\v\0\0\5\0=\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\3=\3<\2B\0\2\1K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\16TSParameter\ticon\tð™\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\vTSType\ticon\5\vStruct\1\0\2\ahl\vTSType\ticon\tð“¢\15EnumMember\1\0\2\ahl\fTSField\ticon\bï…\tNull\1\0\2\ahl\vTSType\ticon\tNULL\bKey\1\0\2\ahl\vTSType\ticon\tðŸ”\vObject\1\0\2\ahl\vTSType\ticon\bâ¦¿\nArray\1\0\2\ahl\15TSConstant\ticon\bï™©\fBoolean\1\0\2\ahl\14TSBoolean\ticon\bâŠ¨\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\rTSString\ticon\tð“\rConstant\1\0\2\ahl\15TSConstant\ticon\bîˆ¬\rVariable\1\0\2\ahl\15TSConstant\ticon\bîž›\rFunction\1\0\2\ahl\15TSFunction\ticon\bï‚š\14Interface\1\0\2\ahl\vTSType\ticon\bï°®\tEnum\1\0\2\ahl\vTSType\ticon\bâ„°\16Constructor\1\0\2\ahl\18TSConstructor\ticon\bîˆ\nField\1\0\2\ahl\fTSField\ticon\bïš§\rProperty\1\0\2\ahl\rTSMethod\ticon\bî˜¤\vMethod\1\0\2\ahl\rTSMethod\ticon\aÆ’\nClass\1\0\2\ahl\vTSType\ticon\tð“’\fPackage\1\0\2\ahl\16TSNamespace\ticon\bï£–\14Namespace\1\0\2\ahl\16TSNamespace\ticon\bï™©\vModule\1\0\2\ahl\16TSNamespace\ticon\bïš¦\tFile\1\0\0\1\0\2\ahl\nTSURI\ticon\bïœ“\18lsp_blacklist\fkeymaps\1\0\6\18goto_location\t<Cr>\17code_actions\6a\18rename_symbol\6r\nclose\n<Esc>\17hover_symbol\14<C-space>\19focus_location\6o\1\0\t\25preview_bg_highlight\nPmenu\24show_symbol_details\2\26show_relative_numbers\2\17show_numbers\2\rposition\nright\17auto_preview\2\16show_guides\2\27highlight_hovered_item\2\nwidth\3<\nsetup\20symbols-outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["vim-cool"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-cursorword"] = {
    config = { "\27LJ\2\nÀ\3\0\0\3\0\n\0$6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0B\0\2\1K\0\1\0\16augroup END/autocmd InsertLeave * let b:cursorword = 1/autocmd InsertEnter * let b:cursorword = 0Gautocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endifKautocmd FileType NvimTree,lspsagafinder,dashboard let b:cursorword = 0\rautocmd!#augroup user_plugin_cursorword\17nvim_command\bapi\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/vim-cursorword",
    url = "https://github.com/itchyny/vim-cursorword"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-eft"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/vim-eft",
    url = "https://github.com/hrsh7th/vim-eft"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "G" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-matchup"] = {
    after_files = { "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    config = { "\27LJ\2\n\\\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0=let g:matchup_matchparen_offscreen = {'method': 'popup'}\bcmd\bvim\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/wenqian/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\2\nš\2\0\0\3\0\v\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0'\1\5\0=\1\4\0006\0\0\0009\0\3\0)\1\1\0=\1\6\0006\0\0\0009\0\3\0)\1\1\0=\1\a\0006\0\0\0009\0\3\0)\1\1\0=\1\b\0006\0\0\0009\0\3\0)\1\1\0=\1\t\0006\0\0\0009\0\3\0)\1\1\0=\1\n\0K\0\1\0 edge_transparent_background\28edge_better_performance\18edge_show_eob edge_disable_italic_comment\23edge_enable_italic\taura\15edge_style\6g\24set background=dark\bcmd\bvim\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\ncloseg\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvimi\0\1\5\2\3\1\15-\1\0\0\18\3\1\0009\1\0\1B\1\2\1-\1\1\0\18\3\1\0009\1\0\1B\1\2\1\b\0\0\0X\1\4€6\1\1\0'\3\2\0\18\4\0\0B\1\3\1K\0\1\0\2À\3€\25dlv exited with code\nprint\nclose\0=\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\1À\vappend\rdap.repl\frequireL\1\2\6\0\4\0\f6\2\0\0\19\4\0\0\18\5\0\0B\2\3\1\15\0\1\0X\2\4€6\2\1\0009\2\2\0023\4\3\0B\2\2\0012\0\0€K\0\1\0\0\rschedule\bvim\vassertF\0\0\4\2\2\0\6-\0\0\0005\2\0\0-\3\1\0=\3\1\2B\0\2\1K\0\1\0\0À\5À\tport\1\0\2\thost\014127.0.0.1\ttype\vserverÆ\2\1\2\14\0\19\1-6\2\0\0009\2\1\0029\2\2\2+\4\1\0B\2\2\2,\3\4\0*\5\0\0005\6\4\0005\a\3\0>\2\2\a=\a\5\0065\a\6\0'\b\a\0\18\t\5\0&\b\t\b>\b\3\a=\a\b\0066\a\0\0009\a\1\a9\a\t\a'\t\n\0\18\n\6\0003\v\v\0B\a\4\3\18\4\b\0\18\3\a\0006\a\f\0\18\t\3\0'\n\r\0006\v\14\0\18\r\4\0B\v\2\2&\n\v\nB\a\3\1\18\t\2\0009\a\15\0023\n\16\0B\a\3\0016\a\0\0009\a\17\a3\t\18\0)\nd\0B\a\3\0012\0\0€K\0\1\0\0\rdefer_fn\0\15read_start\rtostring\24Error running dlv: \vassert\0\bdlv\nspawn\targs\015127.0.0.1:\1\3\0\0\bdap\a-l\nstdio\1\0\1\rdetached\2\1\0\0\rnew_pipe\tloop\bvimÒÜ\4à\1\0\0\5\0\a\1#6\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\4\0&\3\4\3B\1\2\2\t\1\0\0X\1\5€\18\1\0\0'\2\4\0&\1\2\1L\1\2\0X\1\16€6\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\5\0&\3\4\3B\1\2\2\t\1\0\0X\1\5€\18\1\0\0'\2\5\0&\1\2\1L\1\2\0X\1\2€'\1\6\0L\1\2\0K\0\1\0\20/usr/bin/python\22/.venv/bin/python\21/venv/bin/python\15executable\vgetcwd\afn\bvim\2Î\b\1\0\a\0+\0P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\2\4\0029\2\5\0023\3\6\0=\3\2\0029\2\3\0009\2\4\0029\2\a\0023\3\b\0=\3\2\0029\2\3\0009\2\4\0029\2\t\0023\3\n\0=\3\2\0026\2\v\0009\2\f\0029\2\r\2'\4\14\0005\5\15\0B\2\3\0019\2\16\0005\3\18\0=\3\17\0029\2\19\0004\3\3\0005\4\21\0003\5\22\0=\5\23\0044\5\0\0=\5\24\4>\4\1\3=\3\20\0029\2\19\0009\3\19\0009\3\20\3=\3\25\0029\2\19\0009\3\19\0009\3\20\3=\3\26\0029\2\16\0003\3\28\0=\3\27\0029\2\19\0004\3\4\0005\4\29\0>\4\1\0035\4\30\0>\4\2\0035\4\31\0>\4\3\3=\3\27\0029\2\16\0005\3!\0006\4\"\0009\4#\4'\6$\0B\4\2\2'\5%\0&\4\5\4=\4&\0035\4'\0=\4\24\3=\3 \0029\2\19\0004\3\3\0005\4(\0003\5)\0=\5*\4>\4\1\3=\3 \0022\0\0€K\0\1\0\15pythonPath\0\1\0\4\tname\16Launch file\frequest\vlaunch\ttype\vpython\fprogram\f${file}\1\3\0\0\a-m\20debugpy.adapter\fcommand8/.local/share/nvim/dapinstall/python_dbg/bin/python\tHOME\vgetenv\aos\1\0\1\ttype\15executable\vpython\1\0\5\frequest\vlaunch\tmode\ttest\tname\24Debug test (go.mod)\ttype\ago\fprogram\29./${relativeFileDirname}\1\0\5\frequest\vlaunch\tmode\ttest\tname\15Debug test\ttype\ago\fprogram\f${file}\1\0\4\tname\nDebug\frequest\vlaunch\fprogram\f${file}\ttype\ago\0\ago\trust\6c\targs\fprogram\0\1\0\6\frequest\vlaunch\tname\vLaunch\16stopOnEntry\1\ttype\tlldb\18runInTerminal\1\bcwd\23${workspaceFolder}\bcpp\19configurations\1\0\3\tname\tlldb\fcommand\25/usr/bin/lldb-vscode\ttype\15executable\tlldb\radapters\1\0\4\vlinehl\5\vtexthl\5\nnumhl\5\ttext\tðŸ›‘\18DapBreakpoint\16sign_define\afn\bvim\0\17event_exited\0\21event_terminated\0\22event_initialized\nafter\14listeners\ndapui\bdap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nÆ\5\0\0\6\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\17integrations\21indent_blankline\1\0\2\26colored_indent_levels\1\fenabled\2\rnvimtree\1\0\2\14show_root\2\fenabled\2\15native_lsp\15underlines\1\0\4\rwarnings\14underline\nhints\14underline\verrors\14underline\16information\14underline\17virtual_text\1\0\4\rwarnings\vitalic\nhints\vitalic\verrors\vitalic\16information\vitalic\1\0\1\fenabled\2\1\0\17\15treesitter\2\bhop\2\15ts_rainbow\2\15lightspeed\1\rmarkdown\2\15bufferline\2\vbarbar\1\tfern\1\14vim_sneak\1\vneogit\1\14dashboard\2\14which_key\2\14telescope\2\rgitsigns\2\14gitgutter\1\rlsp_saga\2\16lsp_trouble\2\vstyles\1\0\5\rkeywords\vitalic\rcomments\vitalic\fstrings\tNONE\14functions\16italic,bold\14variables\tNONE\1\0\2\16term_colors\2\27transparent_background\1\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\nŽ\4\0\0\6\0\27\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\14\0004\4\5\0005\5\n\0>\5\1\0045\5\v\0>\5\2\0045\5\f\0>\5\3\0045\5\r\0>\5\4\4=\4\15\3=\3\16\0025\3\18\0005\4\17\0=\4\15\3=\3\19\0025\3\20\0005\4\22\0005\5\21\0=\5\23\4=\4\t\3=\3\24\0025\3\25\0=\3\26\2B\0\2\1K\0\1\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\0\ttray\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\aid\fwatches\tsize\4\0€€Àþ\3\1\0\2\aid\vstacks\tsize\4\0€€Àþ\3\1\0\2\aid\16breakpoints\tsize\4\0€€Àþ\3\1\0\2\aid\vscopes\tsize\4\0€€Àþ\3\rmappings\vexpand\1\0\4\tedit\6e\trepl\6r\vremove\6d\topen\6o\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\bâ–¸\rexpanded\bâ–¾\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n¥\2\0\0\4\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\1K\0\1\0\14overrides\vcolors\1\0\v\25variablebuiltinStyle\vitalic\14typeStyle\tNONE\19statementStyle\tbold\17keywordStyle\vitalic\18functionStyle\16bold,italic\17commentStyle\vitalic\14undercurl\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DIList lua require("packer.load")({'DAPInstall.nvim'}, { cmd = "DIList", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLineStart lua require("packer.load")({'hop.nvim'}, { cmd = "HopLineStart", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar1", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar2 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar2", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bwipeout lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bwipeout", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined Bdelete! ++once lua require"packer.load"({'bufdelete.nvim'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined Bwipeout! ++once lua require"packer.load"({'bufdelete.nvim'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Term lua require("packer.load")({'split-term.vim'}, { cmd = "Term", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file VTerm lua require("packer.load")({'split-term.vim'}, { cmd = "VTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SaveSession lua require("packer.load")({'auto-session'}, { cmd = "SaveSession", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file RestoreSession lua require("packer.load")({'auto-session'}, { cmd = "RestoreSession", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DeleteSession lua require("packer.load")({'auto-session'}, { cmd = "DeleteSession", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bdelete lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bdelete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DIInstall lua require("packer.load")({'DAPInstall.nvim'}, { cmd = "DIInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutlineOpen lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopPattern lua require("packer.load")({'hop.nvim'}, { cmd = "HopPattern", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DIUninstall lua require("packer.load")({'DAPInstall.nvim'}, { cmd = "DIUninstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType xml ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "xml" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "html" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'vim-cool', 'specs.nvim', 'accelerated-jk'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'vim-eft'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-bufferline.lua', 'nvim-colorizer.lua', 'gitsigns.nvim', 'nvim-toggleterm.lua', 'indent-blankline.nvim', 'nvim-tree.lua', 'nvim-ts-rainbow', 'FTerm.nvim', 'nvim-treesitter', 'nvim-scrollview'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'vim-cursorword'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'better-escape.vim', 'vim-cool'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au WinScrolled * ++once lua require("packer.load")({'neoscroll.nvim'}, { event = "WinScrolled *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'vim-cursorword', 'gitsigns.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
