return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20, -- デフォルトの高さ/幅
      open_mapping = [[<leader>t]], -- トグル用のキーマッピング
      direction = "horizontal", -- horizontal, vertical, float から選択
      shell = vim.o.shell, -- 使用するシェル
    })
  end,
}
