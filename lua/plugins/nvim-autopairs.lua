return {
  "windwp/nvim-autopairs",
  dependencies = { "hrsh7th/nvim-cmp" }, -- nvim-cmp に依存関係を追加
  config = function()
    local npairs = require("nvim-autopairs")

    npairs.setup({
      check_ts = true, -- Treesitterと連携
    })

    -- cmp補完と連携
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
