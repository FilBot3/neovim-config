-- nvim-cmp Configs
require('cmp').setup({
  sources = {
    { name = 'buffer' },
    { name = 'nvim_lsp' },
    { name = 'path' },
  },
})
require'cmp'.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})
