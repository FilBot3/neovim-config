# C# Development in Neovim

## Overview

With this Neovim configuration, a person can develop in C# (C Sharp) almost as
easily. Just launch `nvim` from the root of the project and open a `.cs` file.

## Requirements

* `dotnet` to be available in the PATH for your shell.
* Neovim 0.6.1 or newer
* Git SCM
* NodeJS for LSP support

You may want other things, but this is all you need.

## Setup

Clone the `neovim-config` repository. Then launch Neovim sourcing the init.lua
that comes with it, or land it into your `~/.config/nvim` on Linux and MacOS.
Windows is something like `$env:LOCALAPPDATA/nvim` or something. Launch Neovim
at least once. Then the Packer Plugins will install, and LSP's will install.
Then relaunch Neovim. There will be one error about deus missing, ignore it for
the first run.

## Usage

Simply open a `.cs` file from the root of the project. Then Neovim will launch
OmniSharp and start up 2 instances of Roslyn. I don't know how to get around it
because if I do not launch both omnisharp-vim and omnisharp-roslyn, then I only
get half the functionality that I think I need/want.
