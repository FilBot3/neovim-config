# Phil's Neovim Configurations

## Overview

Using Neovim's Lua interface, download and manage plugins, and configure Neovim.

## Requirements

* Git SCM
* NodeJS with NPM and Yarnpkg
* Neovim 0.6.0 or newer
* ripgrep
* fd-find
  * Windows doesn't seem to need this?

For other languages, you'll need to have the various runtimes and other tools in
your PATH so that Neovim can start them up for the language servers and other
tools.

### References

* [Neovim :h lua](https://neovim.io/doc/user/lua.html)
* [nanotee/nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
* [packer.nvim](https://github.com/wbthomason/packer.nvim)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [GitHub: albingroen/quick.nvim](https://github.com/albingroen/quick.nvim)
* [GitHub: LunarVim/LunarVim](https://github.com/LunarVim/LunarVim)
* [SpaceVim.org](https://spacevim.org/)

## Setup

### Clone the Neovim Config

Clone the repository into your `$XDG_CONFIG_DIR/nvim` for Linux or
`$env:LOCALAPPDATA/nvim` for Windows.

```bash
git clone git@github.com/FilBot3/neovim-config \
  ~/.config/nvim
```

### Setup packer.nvim

Upon first run, if Packer for Neovim is not found, it will automatically
bootstrap/download the plugin. Then you should be able to run

```vimscript
:PackerInstall
```

Otherwise install using the instructions listed on the GitHub Page. Which will
download all the plugins. I exit Neovim and restart just to be safe.

### Setup Neovim lsps

A plugin called `williamboman/nvim-lsp-installer` will allow ther user to
install various language servers. They have a list on their GitHub README, so
check that out.

## Usage

Now that this has all been setup. Simply execute `nvim` and all the
configurations should be available. You'll need to install the various language
servers still.

I think if you want to use this without technically impacting your current
setup, you could probably clone this into a different repository and then
specify the init.lua to load.

```bash
nvim -S ~/.phil/init.lua
```
