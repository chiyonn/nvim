-- Core Neovim options

-- Enable filetype detection
vim.cmd([[filetype plugin indent on]])

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
vim.opt.writebackup = false
vim.opt.updatetime = 2000
vim.opt.autowrite = false
vim.opt.autoread = true
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"

-- SMB filesystem optimization
vim.opt.fsync = true

-- Search behavior
vim.opt.hlsearch = true
vim.opt.ignorecase = false

-- Tab and indentation settings
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

-- Appearance and interface
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 7
vim.opt.inccommand = "split"
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.background = "dark"

-- Concealment settings for markdown links
vim.opt.conceallevel = 2
vim.opt.concealcursor = ""

-- Shell settings
vim.opt.shell = "/bin/zsh"

-- Persistent undo configuration
if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand("~/.config/nvim/undodir")
    if vim.fn.isdirectory(target_path) == 0 then
        vim.fn.mkdir(target_path, "p", "0700")
    end
    vim.opt.undodir = target_path
    vim.opt.undofile = true
end
vim.opt.viminfo = "'100,<1000,s10,h"