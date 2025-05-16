-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Personal Keymaps
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Control Keybinds

-- Toggle comment on line
-- vim.keymap.set({ 'n', 'v' }, '<C-/>', function()
--   require('Comment.api').toggle.linewise.current()
-- end, { noremap = true, silent = true })

-- Accept LSP Suggestions
vim.keymap.set('i', '<C-Enter>', '<C-y>', { silent = true })

-- Shortcut save to ctrl-s
vim.keymap.set('n', '<C-s>', ':w<cr>', { silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<cr>i', { silent = true })

-- Shortcut to close
vim.keymap.set('n', '<C-w>', ':BufferClose<cr>', { silent = true, noremap = true })
vim.keymap.set('i', '<C-w>', '<Esc>:BufferClose<cr>', { silent = true, noremap = true })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Toggle terminal
vim.keymap.set('n', '<C-j>', ':ToggleTerm<cr>', { silent = true })
vim.keymap.set('i', '<C-j>', '<Esc>:ToggleTerm<cr>', { silent = true })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n>:ToggleTerm<cr>', { silent = true })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
