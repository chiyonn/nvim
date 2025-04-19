return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local none_ls = require("null-ls")

    none_ls.setup({
      sources = {
        -- Pythonの整形ツール
        none_ls.builtins.formatting.isort, -- 先に isort を適用
        none_ls.builtins.formatting.black, -- 次に black を適用

        -- HTMLの整形ツール
        none_ls.builtins.formatting.prettier.with({
          filetypes = { "html" }, -- HTML用
        }),

        -- CSSの整形ツール
        none_ls.builtins.formatting.prettier.with({
          filetypes = { "css", "scss", "less" }, -- CSS用
        }),

        -- Jinja2の整形ツール（djlint）
        none_ls.builtins.formatting.djlint.with({
          extra_args = { "--indent", "4" }, -- インデント幅の指定
          filetypes = { "htmldjango" }, -- Jinja2ファイルに限定
        }),

        -- Jinja2の整形ツール（djhtml）
        none_ls.builtins.formatting.djhtml.with({
          extra_args = { "--indent", "4" }, -- インデント幅の指定
          filetypes = { "htmldjango" }, -- Jinja2ファイルに限定
        }),

        -- TypeScript/JavaScript (React) の整形ツール
        none_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }, -- React/TypeScript 用
          extra_args = { "--print-width", "80", "--single-quote", "--jsx-single-quote", "--tab-width", "4" }, -- プリティア設定にタブ幅を追加
        }),
      },
    })

    -- 保存時に自動でフォーマットを実行
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("AutoFormat", { clear = true }),
      pattern = { "*.html", "*.jinja", "*.jinja2", "*.css", "*.scss", "*.less", "*.ts", "*.tsx", "*.js", "*.jsx", "*.py" },
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
