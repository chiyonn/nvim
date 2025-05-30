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
        },
        automatic_installation = true,
    },
}
