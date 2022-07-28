-- Packer Configurations and Plugins.
-- @see https://github.com/wbthomason/packer.nvim

-- Bootstrap Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Load the Packer plugin package.
vim.cmd([[packadd packer.nvim]])

-- configure packer and specify plugins from GitHub.
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'dense-analysis/ale'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ajmwagar/vim-deus'
  use 'aserebryakov/vim-todo-lists'
  use 'dhruvasagar/vim-table-mode'
  use 'hashivim/vim-terraform'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'junegunn/goyo.vim'
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'liuchengxu/graphviz.vim'
  use 'ludovicchabant/vim-gutentags'
  use 'mzlogin/vim-markdown-toc'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'OmniSharp/omnisharp-vim'
  use 'preservim/tagbar'
  use 'ryanoasis/vim-devicons'
  use 'sotte/presenting.vim'
  use 'towolf/vim-helm'
  use 'tpope/vim-endwise'
  use 'tpope/vim-fugitive'
  -- use 'vim-airline/vim-airline'
  use 'williamboman/nvim-lsp-installer'

  -- part of the packer initial setup.
  if packer_bootstrap then
    require('packer').sync()
  end
end)
