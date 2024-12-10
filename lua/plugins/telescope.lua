return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Required dependency
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin') -- Import 'telescope.builtin'

    telescope.setup({
      defaults = {
        prompt_prefix = "🔍 ",
        selection_caret = "➤ ",
        path_display = { "truncate" },
      },
    })

    -- Keymap for <leader>f to open Telescope find_files
    vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = "Telescope Find Files" })

    -- Keymap for <leader>fw to search for words in the project
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "Telescope Live Grep (Search Words)" })
  end
}
