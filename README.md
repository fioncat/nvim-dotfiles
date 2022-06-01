# SpaceNeovim

现代化的NeoVim配置，[ayamir/nvimdots](https://github.com/ayamir/nvimdots)的私人定制版。

- 使用Space作为leader
- 完全使用LUA进行配置，舍弃VimScript
- 尽量使用LUA编写的插件，除了少数几个还是用的vim插件
- 使用[treesitter](https://github.com/nvim-treesitter/nvim-treesitter)作为语法高亮器，极其高效
- 使用nvim的原生LSP进行代码补全
- 模块化管理插件
- ...

## Install

[NeoVim](https://neovim.io/)当然是必不可少的。可以在[Installing Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)找到各种系统的安装教程。

因为使用了[packer](https://github.com/wbthomason/packer.nvim)作为打包工具，所在在开始前，先执行：

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

安装配置并进入：

```shell
$ mv ~/.config/nvim ~/.config/nvim-bak
$ git clone https://github.com/fioncat/nvim-dotfiles.git ~/.config/nvim
$ cd ~/.config/nvim
```

修改init.lua，暂时只保留`require('plugins')`：

```lua
if not vim.g.vscode then
	require('plugins')
end
```

完成之后，打开neovim，执行`:PackerInstall`和`:PackerCompile`。注意第一个选项要选`N`。

最后，将`init.lua`改回来，即可完成安装：

```lua
if not vim.g.vscode then
	require('options')
	require('plugins')
	require('keymap')
	require('dashboard')
end
```

## Plugins

**插件列表：**

- [展示插件](./lua/modules/display/plugins.lua)
- [编辑插件](./lua/modules/editor/plugins.lua)
- [工具插件](./lua/modules/tools/plugins.lua)
- [补全插件](./lua/modules/completion/plugins.lua)
- [语言插件](./lua/modules/lang/plugins.lua)

**快捷键**

- [基础快捷键](./lua/keymap.lua)
- [LSP相关快捷键](./lua/modules/completion/keymap.lua)
- [语言相关快捷键](./lua/modules/lang/plugins.lua)
