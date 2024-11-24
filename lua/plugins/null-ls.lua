return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.isort, -- 先に isort を適用
        null_ls.builtins.formatting.black, -- 次に black を適用
      },
    })
  end,
}

