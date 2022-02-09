-- nvim-lspconfig.
-- Requires NodeJS and npm to be available in your PATH.
-- @see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

-- Make the Diagnostics show up in a floating window.
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

require'lspconfig'.ansiblels.setup{}
require'lspconfig'.bashls.setup{
  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/bash/node_modules/.bin/bash-language-server", "start" }
}
require'lspconfig'.dockerls.setup{
  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/dockerfile/node_modules/.bin/docker-langserver", "start" }
}
require'lspconfig'.eslint.setup{
  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/vscode-eslint/node_modules/.bin/vscode-eslint-language-server", "start" }
}
require'lspconfig'.jsonls.setup{
  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/jsonls/node_modules/.bin/vscode-json-language-server", "start" }
}
require'lspconfig'.pyright.setup{
  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/python/node_modules/.bin/pyright-langserver", "--stdio" }
}
require'lspconfig'.terraformls.setup{
  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/terraform/terraform-ls/terraform-ls", "serve" }
}
require'lspconfig'.yamlls.setup{
  cmd = { vim.fn.stdpath('data') .. "/lsp_servers/yaml/node_modules/.bin/yaml-language-server", "--stdio" }
}
