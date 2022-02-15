-- Require: git clone --depth 1 https://github.com/wbthomason/packer.nvim\
--           ~/.local/share/nvim/site/pack/packer/start/packer.nvim

local packer = require('packer')

return packer.startup(function ()
	packer.init({
		git = { clone_timeout = 60, default_url_format = "git@github.com:%s" },
		disable_commands = true,
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	})
	local all_plugins = {}

	local add_plugins = function (mod)
		mod = 'modules.' .. mod .. '.plugins'
		local plugins = require(mod)
		for k, v in pairs(plugins) do
			all_plugins[k] = v
		end
	end

	add_plugins('display')
	add_plugins('editor')
	add_plugins('tools')
	-- add_plugins('coc')
	add_plugins('completion')

	use({ "wbthomason/packer.nvim", opt = true })
	for name, conf in pairs(all_plugins) do
		use(vim.tbl_extend("force", { name }, conf))
	end
end)
