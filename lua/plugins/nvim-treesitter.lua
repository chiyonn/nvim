return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- 有効化するモジュール
            highlight = {
                enable = true, -- Tree-sitter によるハイライトを有効化
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true, -- Tree-sitter ベースのインデントを有効化
            },
            -- インストールする言語パーサー
            ensure_installed = {
                "lua", "javascript", "typescript", "python", "html", "css", "bash", "json", "hcl",
            },
            -- 未インストールのパーサーを自動インストール
            auto_install = true,
        })
    end,
}
