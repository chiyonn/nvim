-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Tab and indentation settings
vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.shiftwidth = 4       -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 4          -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4      -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.smartindent = true   -- Makes indenting smart

-- Sign column (always show)
vim.opt.signcolumn = 'yes'
