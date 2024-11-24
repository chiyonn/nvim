return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local none_ls = require("null-ls")

    none_ls.setup({
      sources = {
        none_ls.builtins.formatting.isort, -- 先に isort を適用
        none_ls.builtins.formatting.black, -- 次に black を適用
      },
    })
  end,
}

