# Phil's Neovim Configurations

## Overview

Using Neovim's Lua interface, download and manage plugins, and configure Neovim.

### References

* [Neovim :h lua](https://neovim.io/doc/user/lua.html)
* [nanotee/nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
* [packer.nvim](https://github.com/wbthomason/packer.nvim)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [GitHub: albingroen/quick.nvim](https://github.com/albingroen/quick.nvim)
* [GitHub: LunarVim/LunarVim](https://github.com/LunarVim/LunarVim)
* [SpaceVim.org](https://spacevim.org/)

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

You'll also want to setup a patched Nerd Font. I generally use Source Code Pro
Nerd Font.

* [Nerd Fonts](https://www.nerdfonts.com)
* ["Suace Code Pro Nerd Font"](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip)

## Setup

### Clone the Neovim Config

Clone the repository into your `$XDG_CONFIG_DIR/nvim` for Linux or
`$env:LOCALAPPDATA/nvim` for Windows.

```bash
git clone git@github.com/FilBot3/neovim-config \
  ~/.config/nvim
```

## Usage

With the configurations in the default location Neovim looks for, simply start
Neovim, it will download the Neovim plugins using packer. Then source the
`$MYVIMRC` with `:source $MYVIMRC` to install all the LSP's. This will take
about 2-5min depending on how many you have.

I think if you want to use this without technically impacting your current
setup, you could probably clone this into a different repository and then
specify the init.lua to load.

```bash
nvim -u ~/.phil/init.lua
```
