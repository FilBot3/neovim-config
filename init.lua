-- Neovim init.lua

-- Load Packer.nvim plugins.
require('packer-plugins')

-- Enable Spell Checking
vim.opt.spell = true
-- Set default Spelling Language
vim.opt.spelllang = 'en_us'
-- Show line numbers.
vim.opt.number = true
-- Show the number relative to the cursor.
vim.opt.relativenumber = true
-- Horizontal Splits go below
vim.opt.splitbelow = true
-- Vertical Splits go to the right
vim.opt.splitright = true
-- stop vi compatibility.
vim.cmd([[set nocompatible]])
-- Set the ruler at 80 characters.
vim.opt.colorcolumn = {80}
-- When pressing tab, default to 2 presses of either tab or space.
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- Make tabs spaces.
vim.opt.expandtab = true
-- When moving or shifting lines, how far to shift them in spaces.
vim.opt.shiftwidth = 2
-- Netrw configuration. Use menu style 3.
vim.cmd([[let g:netrw_liststyle = 3]])
vim.cmd([[filetype indent plugin on]])
-- Enable Syntax Highlighting
vim.opt.syntax = "on"
-- Show the Vim Commands in the bottom statusline
vim.opt.showcmd = true
-- Highlight the currently line the cursor is on.
vim.opt.cursorline = true
-- Set the colortheme.
vim.cmd([[colorscheme deus]])
-- make vim-deus' background none or transparent.
vim.cmd([[hi Normal cterm=NONE ctermbg=NONE]]) -- Transparent Background.
-- Enable folding. Just don't set the foldmethod
vim.opt.foldenable = true
-- When a line is broken, follow indent.
vim.opt.breakindent = true
-- Show matching characters, like () and [] for example.
vim.opt.showmatch = true
-- Perform increment searches.
vim.opt.incsearch = true
-- Highlight the searches.
vim.opt.hlsearch = true
-- Ignore case when searching.
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- This enables the menu when issuing a Neovim command.
vim.opt.wildmenu = true
-- ALE must be installed. I'll figure out some sort of logic for this so it
-- doesn't fail.
-- Press \aj to go to the next issue ALE has detected.
vim.api.nvim_set_keymap('n', '<leader>aj', ':ALENext<cr>', {noremap = true, silent = true})
-- Press \ak to go to the previous issue ALE has detected.
vim.api.nvim_set_keymap('n', '<leader>ak', ':ALEPrevious<cr>', {noremap = true, silent = true})
-- Goyo's max width.
vim.cmd([[let g:goyo_width = 90]])
--[[ Configure vim-airline
vim.cmd([[
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
--]]
--)
-- Remove any trailing spaces before writing a file.
vim.api.nvim_exec([[
autocmd BufWritePre * %s/\s\+$//e
]], true)

require('telescope-configs')
require('lsp-configs')
require('nvim-cmp-configs')
require('lualine-configs')
require'nvim-web-devicons'.get_icons()
