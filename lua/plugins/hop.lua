return {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
        keys = "sadfjklewcmpgh",
        jump_on_sole_occurrence = true,
    },
    config = function(_, opts)
        local hop = require("hop")
        hop.setup(opts)

        local map = vim.keymap.set

        map("n", "<leader>j", function()
            hop.hint_words()
        end, { desc = "Hop to Word" })
    end,
}
