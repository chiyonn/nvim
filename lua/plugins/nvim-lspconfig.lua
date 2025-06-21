return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },

  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- Diagnostic UI settings
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = true,
      severity_sort = true,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Format on save if server supports it
    local function setup_format_on_save(client, bufnr)
      if client.name == "gopls" and client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("GoFormatOnSave", { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ async = false })
          end,
        })
      end
    end

    -- LSP attach handler
    local function on_attach(client, bufnr)
      setup_format_on_save(client, bufnr)

      local opts = { buffer = bufnr, silent = true }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    end

    -- Language servers
    local servers = {
      pyright = {},
      tsserver = {},
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
    }

    for name, config in pairs(servers) do
      config.on_attach = on_attach
      config.capabilities = capabilities
      lspconfig[name].setup(config)
    end
  end,
}
