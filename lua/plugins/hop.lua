return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {
    keys = "etovxqpdygfblzhckisuran",
    jump_on_sole_occurrence = true,
  },
  config = function(_, opts)
    local hop = require("hop")
    hop.setup(opts)

    local map = vim.keymap.set

    map("n", "gw", function()
      hop.hint_words()
    end, { desc = "Hop to Word" })

    -- リーダーキー派の例
    -- map("n", "<leader>w", function()
    --   hop.hint_words()
    -- end, { desc = "Hop to Word" })
  end,
}
