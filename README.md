# SpaceNeovim

现代化的NeoVim配置，[ayamir/nvimdots](https://github.com/ayamir/nvimdots)的私人定制版。

- 使用Space作为leader
- 完全使用LUA进行配置，完全舍弃VimScript
- 尽量使用LUA编写的插件，除了少数几个还是用的vim插件
- 使用[treesitter](https://github.com/nvim-treesitter/nvim-treesitter)作为语法高亮器，极其高效
- 使用nvim的原生LSP进行代码补全
- 模块化管理插件
- ...

## Install

首先需要安装最新版本的NeoVim：

```shell
brew install neovim
```

有插件会依赖Rust，因此需要事先安装好：

```shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

另外还有一些额外的依赖：

```shell
brew install sqlite3
brew install fzf
brew install rg
brew install lua
brew install luakit
brew install node
```

执行下面的命令开始安装插件：

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/fioncat/nvim-dotfiles/master/install-0.sh)"
```

执行完毕之后，进入NeoVim，输入：

```shell
:PackerInstall
:PackerCompile
```

Install有大概率会失败，可以多执行几次。

结束之后，执行：

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/fioncat/nvim-dotfiles/master/install-1.sh)"
```

这样插件就安装完毕了。

## QuickStart

在初次启动时，需要安装很多个treesitter parser，过程可能会失败，建议开代理多尝试几次。

进入nvim，输入下面的命令安装不同语言的LSP支持

```shell
:LspInstall gopls                # golang
:LspInstall golangci_lint_ls     # golang lint检查
:LspInstall efm                  # lua
:LspInstall bashls               # Bash
:LspInstall dockerls             # Dockerfile
:LspInstall eslint               # js, ts
:LspInstall intelephense         # php
:LspInstall html                 # html
:LspInstall jsonls               # json
:LspInstall jedi_language_server # python
:LspInstall yamlls               # yaml
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
