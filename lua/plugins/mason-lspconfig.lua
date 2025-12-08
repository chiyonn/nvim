return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            -- gopls is installed via `go install` (mise manages go)
            ensure_installed = {
                "lua_ls",
                "pyright",
                "ts_ls",
                "cssls",
                "ruby_lsp",
            },
            automatic_installation = true,
        })
    end,
}
