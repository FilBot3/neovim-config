-- Telescope Keybindings
vim.api.nvim_exec([[
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
]], true)

-- Telescope Configurations
require('telescope').setup({
  defaults = {
    layout_config = {},
    -- other default configs.
  },
  pickers = {},
  extensions = {},
  -- other configuration values here
})
