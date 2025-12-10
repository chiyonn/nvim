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

    local servers = {
      pyright = {},
      ts_ls = {},
      lua_ls = {
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
      },
      gopls = {
        settings = {
          gopls = {
            gofumpt = true,
            analyses = { unusedparams = true },
            staticcheck = true,
          },
        },
      },
      cssls = {
        settings = {
          css = { validate = true },
          scss = { validate = true },
          less = { validate = true },
        },
      },
      ruby_lsp = {},
    }

    -- Configure and enable LSP servers using vim.lsp.config (Neovim 0.11+)
    for name, config in pairs(servers) do
      config.on_attach = on_attach
      config.capabilities = capabilities
      vim.lsp.config(name, config)
    end

    vim.lsp.enable(vim.tbl_keys(servers))
  end,
}
