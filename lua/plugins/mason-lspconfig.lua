return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
        ensure_installed = {
            "lua_ls",
            "pyright",
            "ts_ls",
            "gopls",
            "cssls",
            "ruby_lsp",
        },
        automatic_installation = true,
    },
}
