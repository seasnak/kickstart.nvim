-- Barbar is a tabline plugin
-- https://github.com/romgrk/barbar.nvim

return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released

  -- keybinds
  vim.keymap.set('n', '<leader>b', '<Nop>', { noremap = true, desc = 'Buffer/Tab Control' }),

  -- Move to previous/next
  vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { noremap = true }),
  vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', { noremap = true }),
  -- Close buffer
  vim.keymap.set('n', '<A-w>', '<Cmd>BufferClose<CR>', { noremap = true }),
  vim.keymap.set('n', '<leader>bc', '<Cmd>BufferClose<CR>', { noremap = true }),
}
