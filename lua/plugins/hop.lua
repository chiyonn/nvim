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

    map("n", "<leader>f", function()
      hop.hint_words()
    end, { desc = "Hop to Word" })
  end,
}
