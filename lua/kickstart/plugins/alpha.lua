-- Alpha neovim plugin - creates a start page
-- https://github.com/goolord/alpha-nvim

return {
    'goolord/alpha-nvim',
    config = function()
        local dashboard = require 'alpha.themes.dashboard'
        require('alpha').setup(require('alpha.themes.dashboard').config)

        dashboard.section.buttons.val = {
            dashboard.button('f', ' ' .. ' Find File', ':Telescope find_files <cr>'),
            dashboard.button('n', ' ' .. ' New File', ':new <cr>'),
            dashboard.button('r', ' ' .. ' Recent Files', ':Telescope oldfiles <cr>'),
            dashboard.button('o', ' ' .. ' Open Project', ':Telescope projects <cr>'),
            -- dashboard.button('s', '󰦛 ' .. ' Restore Session', ''),
            dashboard.button('g', '󰦨 ' .. ' Find Text', ':Telescope live_grep <cr>'),
            dashboard.button('l', '󰒲 ' .. ' Lazy', ':Lazy <cr>'),
            dashboard.button('q', ' ' .. ' Quit', ':qall <cr>'),
        }
    end,
}
