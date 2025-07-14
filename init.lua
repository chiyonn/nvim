
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.cmd([[filetype plugin indent on]])

require('settings')
require('keymaps')
require('config.lazy')
