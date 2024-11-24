return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- Python 用 (pyright)
    lspconfig.pyright.setup({})

    -- TypeScript/JavaScript 用 (tsserver)
    lspconfig.tsserver.setup({})

    -- Lua 用 (lua_ls)
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT", -- Neovim で使用されている Lua のバージョン
          },
          diagnostics = {
            globals = { "vim" }, -- Neovim API を認識させる
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true), -- Neovim の Lua API を使用
            checkThirdParty = false, -- サードパーティのコードチェックを無効化（必要に応じて）
          },
          telemetry = {
            enable = false, -- 適宜、テレメトリを無効化
          },
        },
      },
    })
  end,
}
