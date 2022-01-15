-- nvim-lspconfig.
-- Requires NodeJS and npm to be available in your PATH.
-- @see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

-- Make the Diagnostics show up in a floating window.
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

require'lspconfig'.ansiblels.setup{}
require'lspconfig'.bashls.setup{}
--require'lspconfig'.bashls.setup{
--  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/bash/node_modules/.bin/bash-language-server", "start" }
--}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.terraformls.setup{}
require'lspconfig'.yamlls.setup{}
