local vim = vim

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Appearance
vim.opt.nowrap = true
vim.opt.colorcolumn = "81"
vim.cmd('syntax enable')
vim.opt.background = 'dark'
vim.cmd('colorscheme default')

vim.opt.scrolloff = 7

-- Clipboard
vim.opt.clipboard:append('unnamedplus')


-- Tab and indentation settings
vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.shiftwidth = 2       -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 2          -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 2      -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.smartindent = true   -- Makes indenting smart

-- Sign column (always show)
vim.opt.signcolumn = 'yes'

vim.api.nvim_create_augroup("FileTypeIndent", {})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "python,go",
  command = "setlocal tabstop=4 shiftwidth=4 expandtab",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "go",
  command = "setlocal noexpandtab",
})

-- コマンド履歴の保存
if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand("~/.config/nvim/undodir")
    if vim.fn.isdirectory(target_path) == 0 then
        vim.fn.mkdir(target_path, "p", "0700")
    end
    vim.opt.undodir = target_path
    vim.opt.undofile = true
end

-- 検索履歴とコマンド履歴の保存
vim.opt.viminfo = "'100,<1000,s10,h"

