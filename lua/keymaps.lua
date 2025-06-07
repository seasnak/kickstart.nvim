-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Personal Keymaps
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Toggle comment on line
-- vim.keymap.set({ 'n', 'v' }, '<C-/>', function()
--   require('Comment.api').toggle.linewise.current()
-- end, { noremap = true, silent = true })

vim.keymap.set({ 'n', 'v' }, '<Space><Space>', '<cmd>Telescope files<cr>', { silent = true })

-- Save buffer
vim.keymap.set({ 'i', 'n' }, '<C-s>', '<cmd>write<cr>', { silent = true, noremap = true, desc = '[S]ave Buffer' })
vim.keymap.set({ 'n', 'v' }, '<leader>bs', '<cmd>write<cr>', { silent = true, noremap = true, desc = '[S]ave Buffer' })

-- Close buffer
vim.keymap.set({ 'n', 'i' }, '<C-w>', '<cmd>BufferClose<cr>', { silent = true, noremap = true, desc = '[C]lose Buffer' })
vim.keymap.set({ 'n', 'v' }, '<leader>bc', '<cmd>close<cr>', { silent = true, noremap = true, desc = '[C]lose Buffer' })

-- New buffer
vim.keymap.set({ 'n', 'v' }, '<leader>bn', '<cmd>tabnew<cr>', { silent = true, noremap = true, desc = '[N]ew Buffer' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- File Keymaps
vim.keymap.set('n', '<leader>ef', '<cmd>Telescope find_files<cr>',
    { desc = '[F]ind Files', silent = true, noremap = true })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>t', vim.diagnostic.setloclist, { desc = '[T]erminal Commands' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Diagnostics
-- vim.keymap.set('n', '<leader>d', "<cmd>lua vim.diagnostic.open_float()<cr>", { desc = "Toggle [D]iagnostic float" })
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- Toggle Comments
-- vim.keymap.set({ 'i', 'n' }, '<C-/>', '<cmd>CommentToggle<cr>', { noremap = true, desc = 'Toggle Comment' })
-- vim.keymap.set('v', '<C-/>', '<cmd>\'<,\'>CommentToggle', { noremap = true, desc = 'Toggle Comment Block' })

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
