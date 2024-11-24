return {
  "hrsh7th/nvim-cmp", -- 補完エンジン
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- LSP補完
    "hrsh7th/cmp-buffer",   -- バッファ補完
    "hrsh7th/cmp-path",     -- ファイルパス補完
    "hrsh7th/cmp-cmdline",  -- コマンドライン補完
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- 必要ならSnippetsを設定
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
      }),
    })
  end,
}

