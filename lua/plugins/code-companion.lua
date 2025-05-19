return {
    "olimorris/codecompanion.nvim",
    keys = {
        {
            "<Leader>cc",
            ":CodeCompanionChat<CR>",
            mode = { "n", "v" },
            silent = true,
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        language = "Japanese",
        display = {
            chat = {
                auto_scroll = false,
                show_header_separator = true,
            },
        },
        strategies = {
            chat = {
                adapter = "qwen3",
                keymaps = {
                    send = {
                        modes = { n = "<C-s>", i = "<C-s>" },
                    },
                },
            },
            inline = {
                adapter = "qwen3",
            },
            cmd = {
                adapter = "qwen3",
            },
        },
        adapters = {
            qwen3 = function()
                return require("codecompanion.adapters").extend("ollama", {
                    name = "qwen3",
                    schema = {
                        model = {
                            default = "qwen3:32b",
                        },
                    },
                    env = {
                        url = "http://192.168.40.100:11434",
                    },
                    headers = {
                        ["Content-Type"] = "application/json",
                    },
                    parameters = {
                        sync = true,
                    },
                })
            end,
        },
    },
}
