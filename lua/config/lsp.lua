local vim = vim

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
lspconfig.tsserver.setup{
  cmd = {"docker", "exec", "-i", "vx-development-fe", "npx", "tsserver"},
  root_dir = require'lspconfig'.util.root_pattern("package.json"),
}

-- Go
lspconfig.gopls.setup {
  settings = {
    gopls = {
      -- フォーマッタの設定
      gofumpt = false,  -- `gofumpt` を無効にして `goimports` を使用
      format = {
        command = "goimports",  -- `goimports` を明示的に設定
      },
      -- その他の設定
      usePlaceholders = true,
      staticcheck = true,
      analyses = {
        unusedparams = true,  -- 未使用のパラメータのチェック
      },
      codelenses = {
        gc_details = true,  -- ガベージコレクションの詳細を表示するための設定
      },
    },
  },
  on_attach = function(client, bufnr)
    -- フォーマット機能の設定
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = false }
        end
      })
    end
  end,
}

-- Lspsaga setup
require('lspsaga').setup({})

-- Trouble setup
require("trouble").setup {}
