-- Terminal extension
-- https://github.com/akinsho/toggleterm.nvim

return {
    'akinsho/toggleterm.nvim',
    tag = '*', -- use latest stable version
    config = function()
        require('toggleterm').setup {
            size = 15,
            direction = 'horizontal',
            close_on_exit = true,
            hide_numbers = true,
            start_in_insert = true,
            persist_size = true,
            persist_mode = false,

            -- appearance
            float_opts = {
                border = 'curved', -- opts: 'single', 'double', 'shadow', 'curved', 'rounded', 'none'
            },
        }

        -- Toggleterm Keymaps
        local wk = require 'which-key'
        wk.add { 't', group = '[T]erminal' }
        -- Control Hotkey
        -- vim.keymap.set({ 'i', 'n' }, '<C-j>', '<cmd>ToggleTerm<cr>',
        --     { silent = true, noremap = true, desc = 'Toggle: Terminal' })
        -- Leader Keymaps
        vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>',
            { silent = true, noremap = true, desc = 'Toggle: [T]erminal' })
        vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>',
            { silent = true, noremap = true, desc = '[H]orizontal Terminal' })
        vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>',
            { silent = true, noremap = true, desc = '[F]loating Terminal' })
        vim.keymap.set('t', '<C-j>', '<C-\\><C-n><cmd>ToggleTerm<cr>',
            { silent = true, noremap = true, desc = 'Toggle Terminal' })

        -- Exit terminal mode easier shortcut
        vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit Terminal Mode' })
    end,
}
