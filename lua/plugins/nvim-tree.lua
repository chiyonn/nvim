return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional for file icons
  config = function()
    -- Setup nvim-tree
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      git = {
        enable = true,
        ignore = false,
      },
      filters = {
        dotfiles = true,            -- 隠しファイルを非表示
        custom = { "__pycache__" }, -- __pycache__ を非表示
      },
    })

    -- Keybindings for nvim-tree
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
