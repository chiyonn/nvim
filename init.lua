-- Add mise shims to PATH for Mason
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH

-- Python provider
vim.g.python3_host_prog = vim.env.HOME .. "/.local/share/nvim/python-env/bin/python"

-- Leader key configuration
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load core configuration
require('core.options')
require('core.keymaps')
require('config.autocmds')
require('config.lazy')

-- Load colorscheme from ~/.config/nvim/theme (one line: colorscheme name)
local theme_file = vim.fn.stdpath("config") .. "/theme"
local ok, lines = pcall(vim.fn.readfile, theme_file)
local colorscheme = (ok and lines[1] and lines[1] ~= "") and lines[1] or "carbonfox"
vim.cmd("colorscheme " .. colorscheme)
