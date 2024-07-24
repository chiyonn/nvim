-- Set leader key
vim.g.mapleader = ' '

-- Window navigation keybindings
local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

keymap('n', 'j', 'gj', options)
keymap('n', 'k', 'gk', options)
keymap('n', '<C-h>', '<C-w>h', options)
keymap('n', '<C-j>', '<C-w>j', options)
keymap('n', '<C-k>', '<C-w>k', options)
keymap('n', '<C-l>', '<C-w>l', options)
keymap('n', '<Esc><Esc>', ':nohlsearch<CR>', options)

-- 行選択モードでインデント後にビジュアルモードを維持する設定
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })

-- NvimTree toggle keybinding
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', options)

