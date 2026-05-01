return {
  "zk-org/zk-nvim",
  config = function()
    require("zk").setup({
      picker = "telescope",

      lsp = {
        config = {
          name = "zk",
          cmd = { "zk", "lsp" },
          filetypes = { "markdown" },
        },

        auto_attach = {
          enabled = true,
        },

        on_attach = function(client, bufnr)
          local opts = { buffer = bufnr, silent = true }

          -- ホバーでタイトル・プレビュー表示
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

          -- リンク先にジャンプ（gd = go to definition）
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

          -- ノート検索・作成
          vim.keymap.set("n", "<leader>zn", "<cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)
          vim.keymap.set("n", "<leader>zf", "<cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
          vim.keymap.set("n", "<leader>zt", "<cmd>ZkTags<CR>", opts)

          -- バックリンク（このノートを参照してるノート一覧）
          vim.keymap.set("n", "<leader>zb", "<cmd>ZkBacklinks<CR>", opts)

          -- リンク先一覧
          vim.keymap.set("n", "<leader>zl", "<cmd>ZkLinks<CR>", opts)

          -- 選択範囲からノート作成（ビジュアルモード）
          vim.keymap.set("v", "<leader>zn", ":'<,'>ZkNewFromTitleSelection<CR>", opts)

          -- 選択テキストでノート検索（ビジュアルモード）
          vim.keymap.set("v", "<leader>zf", ":'<,'>ZkMatch<CR>", opts)
        end,
      },
    })
  end,
}
