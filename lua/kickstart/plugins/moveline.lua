-- Move Highlighted Lines Up and Down
-- https://github.com/willothy/moveline.nvim

return {
    "willothy/moveline.nvim",
    build = 'make',
    config = function()
        -- keys = {
        --     { "<M-j>", "<Plug>(move_lines_down)", mode = { "n", "v" }, desc = "Move line(s) down" },
        --     { "<M-k>", "<Plug>(move_lines_up)",   mode = { "n", "v" }, desc = "Move line(s) up" },
        -- }
        local moveline = require('moveline')
        vim.keymap.set('n', '<M-k>', moveline.up)
        vim.keymap.set('n', '<M-j>', moveline.down)
        vim.keymap.set('v', '<M-k>', moveline.block_up)
        vim.keymap.set('v', '<M-j>', moveline.block_down)
    end
}
