return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- Enable Tree-sitter modules
            highlight = {
                enable = true, -- Enable Tree-sitter syntax highlighting
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true, -- Enable Tree-sitter based indentation
            },
            -- Language parsers to install
            ensure_installed = {
                "lua", "javascript", "typescript", "python", "html", "css", "bash", "json", "hcl",
            },
            -- Auto install missing parsers
            auto_install = true,
        })
    end,
}
