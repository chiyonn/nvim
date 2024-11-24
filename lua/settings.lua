-- Enable syntax highlighting
vim.cmd("syntax on")

-- Encoding settings
local encoding = "utf-8"
vim.scriptencoding = encoding
vim.opt.encoding = encoding
vim.opt.fileencoding = encoding

-- Row number settings
vim.wo.number = true
vim.wo.relativenumber = true

-- Editor behavior
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"

-- Search behavior
vim.opt.hlsearch = true
vim.opt.ignorecase = false

-- Tab and indentation settings
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- Appearance and interface
vim.opt.cursorline = true
vim.opt.colorcolumn = "81"
vim.opt.termguicolors = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 7
vim.opt.inccommand = "split"
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.background = "dark"

-- Shell settings
vim.opt.shell = "/bin/zsh"

-- NOTE:
-- サブディレクトリも再帰的に検索可能。
-- vim.opt.path:append({ "**" })
-- 自動的にコメントのリスト記号を継続。
-- vim.opt.formatoptions:append({ "r" })
-- パス補完時にnode_modulesディレクトリを無視。
-- vim.opt.wildignore:append({ "*/node_modules/*" })


-- History
if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand("~/.config/nvim/undodir")
    if vim.fn.isdirectory(target_path) == 0 then
        vim.fn.mkdir(target_path, "p", "0700")
    end
    vim.opt.undodir = target_path
    vim.opt.undofile = true
end
vim.opt.viminfo = "'100,<1000,s10,h"


vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

