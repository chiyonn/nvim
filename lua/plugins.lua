-- Packer initialization
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'windwp/nvim-autopairs'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'williamboman/mason.nvim' -- LSP manager
  use 'williamboman/mason-lspconfig.nvim' -- Mason LSP config integration
  use 'nvimdev/lspsaga.nvim' -- LSP UI enhancements
  use 'folke/trouble.nvim' -- Diagnostics list UI

  -- Completion plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- Theme plugins
  use 'projekt0n/github-nvim-theme'

  -- Viewer
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
end)
