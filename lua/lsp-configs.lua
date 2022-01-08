-- nvim-lspconfig.
-- Requires NodeJS and npm to be available in your PATH.
-- @see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md


require'lspconfig'.bashls.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.yamlls.setup{}
