return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    local function on_attach(client, bufnr)
      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ async = false })
          end,
        })
      end

      local opts = { buffer = bufnr, silent = true }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    end

    -- Python 用 (pyright)
    lspconfig.pyright.setup({
      on_attach = on_attach,
    })

    -- TypeScript/JavaScript 用
    lspconfig.ts_ls.setup({
      on_attach = on_attach,
    })

    -- Lua 用 (lua_ls)
    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT", -- Neovim で使用されている Lua のバージョン
          },
          diagnostics = {
            globals = { "vim" }, -- Neovim API を認識させる
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true), -- Neovim の Lua API を使用
            checkThirdParty = false, -- サードパーティのコードチェックを無効化（必要に応じて）
          },
          telemetry = {
            enable = false, -- 適宜、テレメトリを無効化
          },
        },
      },
    })

    -- Go 用 (gopls)
    lspconfig.gopls.setup({
      on_attach = on_attach,
      settings = {
        gopls = {
          gofumpt = true, -- gofumpt によるフォーマットを有効化
          analyses = {
            unusedparams = true, -- 未使用パラメータの警告を有効化
          },
          staticcheck = true, -- staticcheck を有効化
        },
      },
    })
  end,
}
