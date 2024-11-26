return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
      vim.keymap.set('n', '<leader>ss', require("luasnip.loaders").edit_snippet_files, { desc = "Edit snippets" })
      require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/snippets" })
    end,
}
