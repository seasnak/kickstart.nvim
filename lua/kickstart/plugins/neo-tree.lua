-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
        { '\\', '<cmd>Neotree toggle position=float<cr>', desc = 'NeoTree reveal', silent = true },
        -- { '<C-b>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
        filesystem = {
            window = {
                mappings = {
                    ['\\'] = 'close_window',
                    -- ['<C-b>'] = 'close_window',
                },
            },
        },

    },
    config = function()
        vim.keymap.set({ 'n', 'i' }, '<C-b>', '<cmd>Neotree toggle<cr>',
            { silent = true, noremap = true, desc = "Toggle NeoTree" })

        local wk = require('which-key')
        wk.add { 'e', group = '[E]xplorer' }

        vim.keymap.set('n', '<leader>et', '<cmd>Neotree toggle<cr>',
            { desc = '[E]xplorer [T]oggle', noremap = true, silent = true })
        vim.keymap.set('n', '<leader>ef', '<cmd> Neotree toggle position=float <cr>',
            { desc = "[E]xplorer Toggle [F]loating", noremap = true, silent = true })
        vim.keymap.set('n', '<leader>er', '<cmd> Neotree toggle position=left <cr>',
            { desc = "[E]xplorer Toggle [R]ight", noremap = true, silent = true })
    end
}
