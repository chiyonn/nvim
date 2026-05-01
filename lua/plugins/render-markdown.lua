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
                body = function(ctx)
                    -- [[link|alias]] 形式ならaliasをそのまま表示
                    if ctx.alias then return ctx.alias end
                    -- alias無しの場合はパスを整形
                    local dest = ctx.destination or ""
                    dest = dest:gsub("^.*/", "")
                    dest = dest:gsub("%-", " ")
                    return dest
                end,
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
