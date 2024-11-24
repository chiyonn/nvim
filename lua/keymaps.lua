
local map = vim.keymap
local options = { noremap = true, silent = true }

map.set('n', 'j', 'gj', options)
map.set('n', 'k', 'gk', options)
map.set('n', '<C-h>', '<C-w>h', options)
map.set('n', '<C-j>', '<C-w>j', options)
map.set('n', '<C-k>', '<C-w>k', options)
map.set('n', '<C-l>', '<C-w>l', options)
map.set('n', '<Esc><Esc>', ':nohlsearch<CR>', options)

map.set('v', '>', '>gv', options)
map.set('v', '<', '<gv', options)
