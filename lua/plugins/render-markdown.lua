return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "lukas-reineke/indent-blankline.nvim",
    },
    ft = { "markdown", "codecompanion" }, -- ここで filetypes を追加
    config = function()
        require("render-markdown").setup({
            -- filetypes を明示することで拡張 filetype をカバー
            filetypes = { "markdown", "codecompanion" },
            headings = {
                "█", "▓", "▒", "░", "∙", "·",
            },
            bullets = { "•", "◦", "▪", "▫" },
            highlights = {
                heading = {
                    H1 = "markdownH1",
                    H2 = "markdownH2",
                    H3 = "markdownH3",
                    H4 = "markdownH4",
                    H5 = "markdownH5",
                    H6 = "markdownH6",
                },
                code = "markdownCode",
                blockquote = "Comment",
            },
            conceal = true,
            auto_enable = true,
        })
    end,
}
