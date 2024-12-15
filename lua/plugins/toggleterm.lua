return { "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20, -- デフォルトの高さ/幅
      direction = "horizontal", -- horizontal, vertical, float から選択
      shell = vim.o.shell, -- 使用するシェル
    })

    -- Normalモード専用のキーマッピング
    vim.keymap.set("n", "<leader>t", function()
      require("toggleterm").toggle()
    end, { noremap = true, silent = true })
  end,
}
