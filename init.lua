
-- Leader key configuration
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load core configuration
require('core.options')
require('core.keymaps')
require('config.autocmds')
require('config.lazy')
