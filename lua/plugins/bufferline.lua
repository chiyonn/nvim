return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp", -- LSP診断情報を表示
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
          },
        },
        separator_style = "slant", -- タブ間のスタイル
      },
    })

    -- バッファの移動用キーマッピングを設定
    vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
  end,
}
