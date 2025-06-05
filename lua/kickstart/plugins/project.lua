-- Project Manager
-- https://github.com/ahmedkhalf/project.nvim

return
{
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    config = function()
        require("project_nvim").setup({

            detection_methods = { "lsp", "pattern" },

            patterns = {
                ".git",
                "_darcs",
                ".hg",
                ".bzr",
                ".svn",
                "Makefile",
                "CMakeLists.txt",
                "package.json",
                "pom.xml",  -- Java
                "Rakefile", -- Ruby
            },
            manual_mode = false,
            show_hidden = false,
            silent_chdir = true,
        })

        -- Project Keymaps
        local wk = require 'which-key'
        wk.add { 'p', group = '[P]roject' }

        vim.keymap.set("n", "<leader>po", "<cmd>Telescope projects<cr>",
            { silent = true, noremap = true, desc = "[O]pen Project" })
    end
}
