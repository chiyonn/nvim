-- nvim-treesitter settings
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "lua", "python", "javascript", "typescript", "html", "css", "tsx", "go" }, -- 必要な言語を指定
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
}
