-- Load plugins (Packer plugin manager and plugins setup)
require('plugins')

-- Load general settings (basic Neovim settings)
require('settings')

-- Load plugin configurations
-- nvim-tree configuration (file explorer)
require('config.nvim-tree')

-- nvim-autopairs configuration (automatic pairs completion)
require('config.nvim-autopairs')

-- nvim-treesitter configuration (syntax highlighting and code parsing)
require('config.nvim-treesitter')

-- Load LSP and related configurations
require('config.lsp')

-- Load completion configurations
require('config.completion')

-- Load keybindings (custom key mappings)
require('keybindings')
