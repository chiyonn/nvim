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

    -- Keymaps for Telescope
    local keymap_opts = { desc = "Telescope", noremap = true, silent = true }

    -- <leader>ff: Find files in the current project
    vim.keymap.set('n', '<leader>ff', builtin.find_files, vim.tbl_extend('force', keymap_opts, { desc = "Telescope Find Files" }))

    -- <leader>fw: Search for a string in the current project
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, vim.tbl_extend('force', keymap_opts, { desc = "Telescope Live Grep" }))
  end
}
