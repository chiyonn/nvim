return {
    "hrsh7th/nvim-cmp",             -- 補完エンジン
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",     -- LSP補完
        "hrsh7th/cmp-buffer",       -- バッファ補完
        "hrsh7th/cmp-path",         -- ファイルパス補完
        "hrsh7th/cmp-cmdline",      -- コマンドライン補完
        "L3MON4D3/LuaSnip",         -- スニペットエンジン（必須）
        "saadparwaiz1/cmp_luasnip", -- LuaSnip補完ソース
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body) -- LuaSnipを補完エンジンとして設定
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.confirm({ select = true })
                    else
                        fallback()
                    end
                end),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
            sources = cmp.config.sources({
                { name = "luasnip" },
                { name = "copilot" },
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "path" },
            }),
        })
    end,
}
