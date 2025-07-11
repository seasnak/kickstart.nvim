-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = false

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Manage Indents
vim.opt.smartindent = true
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('CindentGroup', { clear = true }),
  pattern = {
    'c',
    'cpp',
    'java',
    'javascript',
    'typescript',
    'rust', -- benefits from cindent-like behavior
    'go',
    'cs',
    'zig',
  },
  callback = function()
    vim.opt_local.cindent = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
    vim.opt_local.autoindent = true
  end,
})

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = {
  -- tab = '» ',
  -- trail = '·',
  -- nbsp = '␣'
}

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true

-- Tabsize
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- Indent Guide
vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"
-- vim.opt.listchars:append "space:·"
vim.opt.listchars:append 'tab:» '

require('ibl').setup {
  -- Customize indent lines
  indent = {
    char = '│', -- character used for indent line
    tab_char = '│', -- character used for tab indent lines
  },
  scope = {
    enabled = true,
    char = '▎', -- character for the scope line
    highlight = 'IblScope', -- Highlight group for the scope line
  },
  exclude = {
    filetypes = {
      'help',
      'terminal',
      'lazy',
      'mason',
      'NVimTree',
      'Trouble',
    },
  },
}

-- Optional: Define custom highlight group for the scope
vim.cmd [[highlight IblScope guifg=#666666]]
