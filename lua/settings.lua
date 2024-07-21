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

vim.api.nvim_create_augroup("FileTypeIndent", {})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "python",
  command = "setlocal tabstop=4 shiftwidth=4 expandtab",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "javascript",
  command = "setlocal tabstop=2 shiftwidth=2 expandtab",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "html",
  command = "setlocal tabstop=2 shiftwidth=2 expandtab",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "css",
  command = "setlocal tabstop=2 shiftwidth=2 expandtab",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "typescript",
  command = "setlocal tabstop=2 shiftwidth=2 expandtab",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "tsx",
  command = "setlocal tabstop=2 shiftwidth=2 expandtab",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "go",
  command = "setlocal tabstop=4 shiftwidth=4 noexpandtab",
})
