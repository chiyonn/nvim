return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = true,
      severity_sort = true,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    local function on_attach(client, bufnr)
      if client.name == "gopls" then
        client.server_capabilities.documentFormattingProvider = false
      end

      -- Setup LSP keymaps (defined in core/keymaps.lua)
      if _G.setup_lsp_keymaps then
        _G.setup_lsp_keymaps(bufnr)
      end
    end

    -- Server configurations using vim.lsp.config (Neovim 0.11+)
    vim.lsp.config("pyright", {
      capabilities = capabilities,
      on_attach = on_attach,
    })

    vim.lsp.config("ts_ls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })

    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          diagnostics = { globals = { "vim" } },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = { enable = false },
        },
      },
    })

    vim.lsp.config("gopls", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        gopls = {
          gofumpt = true,
          analyses = { unusedparams = true },
          staticcheck = true,
        },
      },
    })

    vim.lsp.config("cssls", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        css = { validate = true },
        scss = { validate = true },
        less = { validate = true },
      },
    })

    vim.lsp.config("ruby_lsp", {
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- Enable configured servers
    vim.lsp.enable({ "pyright", "ts_ls", "lua_ls", "gopls", "cssls", "ruby_lsp" })
  end,
}
