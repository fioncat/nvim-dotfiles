# SpaceNeovim

现代化的NeoVim配置，[ayamir/nvimdots](https://github.com/ayamir/nvimdots)的私人定制版。

- 使用Space作为leader
- 完全使用LUA进行配置，舍弃VimScript
- 尽量完全使用LUA编写的插件，除了少数几个还是用的vim插件
- 使用[treesitter](https://github.com/nvim-treesitter/nvim-treesitter)作为语法高亮器，极其高效
- 使用nvim的原生LSP进行代码补全
- 模块化管理插件
- ...

因为使用了[packer](https://github.com/wbthomason/packer.nvim)作为打包工具，所在在开始前，先执行：

```shell
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

使用原生LSP进行补全，需要通过`:LspInstall`来安装不同语言的LSP支持：

```bash
:LspInstall gopls       # Go语言
:LspInstall dockerls    # Dockerfile
...
```

通过`:LspInstallInfo`可以查看可供安装的语言列表。

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