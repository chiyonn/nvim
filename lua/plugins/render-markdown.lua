return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    ft = { "markdown", "codecompanion" },
    opts = {
        file_types = { "markdown", "codecompanion" },
        heading = {
            icons = { "█ ", "▓ ", "▒ ", "░ ", "∙ ", "· " },
        },
        bullet = {
            icons = { "•", "◦", "▪", "▫" },
        },
        link = {
            enabled = true,
            wiki = {
                icon = "󰌹 ",
                highlight = "RenderMarkdownWikiLink",
            },
        },
        win_options = {
            conceallevel = {
                default = vim.o.conceallevel,
                rendered = 3,
            },
            concealcursor = {
                default = vim.o.concealcursor,
                rendered = "",
            },
        },
    },
}
