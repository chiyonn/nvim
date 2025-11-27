
local map = vim.keymap
local options = { noremap = true, silent = true }

map.set('n', 'j', 'gj', options)
map.set('n', 'k', 'gk', options)
map.set('n', '<C-h>', '<C-w>h', options)
map.set('n', '<C-j>', '<C-w>j', options)
map.set('n', '<C-k>', '<C-w>k', options)
map.set('n', '<C-l>', '<C-w>l', options)
map.set('n', '<Esc><Esc>', ':nohlsearch<CR>', options)
map.set('n', '!!', ':q!<CR>', options)
map.set('n', 'YY', ':let @+ = expand("%:p")<CR>', options)

map.set('v', '>', '>gv', options)
map.set('v', '<', '<gv', options)
map.set('v', 'T', [[:s/\<\(\w\)\(\w*\)\>/\u\1\L\2/g<CR>]], options)

-- LSP keymaps (applied when LSP attaches to buffer)
local function setup_lsp_keymaps(bufnr)
    local opts = { buffer = bufnr, silent = true }
    map.set("n", "gd", vim.lsp.buf.definition, opts)
    map.set("n", "gr", vim.lsp.buf.references, opts)
    map.set("n", "K", vim.lsp.buf.hover, opts)
    map.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end

-- Export function for use in LSP configuration
_G.setup_lsp_keymaps = setup_lsp_keymaps

