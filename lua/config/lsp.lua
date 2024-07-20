-- Mason setup
require("mason").setup()

-- Mason LSPconfig setup
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "pyright", "tsserver", "gopls" } -- インストールしたいLSPサーバを指定
}

-- LSP configurations
local lspconfig = require('lspconfig')

-- Lua
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Python
lspconfig.pyright.setup {}

-- TypeScript/JavaScript
lspconfig.tsserver.setup {}

-- Go
lspconfig.gopls.setup {}

-- Lspsaga setup
require('lspsaga').setup({})

-- Trouble setup
require("trouble").setup {}
