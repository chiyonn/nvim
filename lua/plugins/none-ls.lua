return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local none_ls = require("null-ls")

    none_ls.setup({
      sources = {
        none_ls.builtins.formatting.isort,
        none_ls.builtins.formatting.black,
        none_ls.builtins.formatting.prettier.with({
          filetypes = { "html", "css", "scss", "less", "javascript", "javascriptreact", "typescript", "typescriptreact" },
          extra_args = { "--print-width", "80", "--single-quote", "--jsx-single-quote", "--tab-width", "4" },
        }),
        none_ls.builtins.formatting.djlint.with({
          extra_args = { "--indent", "4" },
          filetypes = { "htmldjango" },
        }),
        none_ls.builtins.formatting.djhtml.with({
          extra_args = { "--indent", "4" },
          filetypes = { "htmldjango" },
        }),
        none_ls.builtins.formatting.goimports,
      },
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("AutoFormatNoneLS", { clear = true }),
      pattern = { "*.go", "*.py", "*.html", "*.jinja", "*.jinja2", "*.css", "*.scss", "*.less", "*.ts", "*.tsx", "*.js", "*.jsx" },
      callback = function()
        vim.lsp.buf.format({
          async = false,
          filter = function(client) return client.name == "null-ls" end,
        })
      end,
    })
  end,
}
