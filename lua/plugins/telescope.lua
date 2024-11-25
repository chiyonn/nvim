return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Required dependency
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      defaults = {
        prompt_prefix = "🔍 ",
        selection_caret = "➤ ",
        path_display = { "truncate" },
      },
    })

    -- Keymap for <leader>f to open Telescope find_files
    vim.keymap.set('n', '<leader>f', telescope.builtin.find_files, { desc = "Telescope Find Files" })
  end
}
