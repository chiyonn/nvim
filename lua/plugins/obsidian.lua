return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  event = {
    "BufReadPre path/to/my-vault/*.md",
    "BufNewFile path/to/my-vault/*.md",
  },
  cmd = {
      "ObsidianBacklinks",
      "ObsidianCheck",
      "ObsidianFollowLink",
      "ObsidianLink",
      "ObsidianLinkNew",
      "ObsidianNew",
      "ObsidianOpen",
      "ObsidianPasteImg",
      "ObsidianQuickSwitch",
      "ObsidianRename",
      "ObsidianSearch",
      "ObsidianTemplate",
      "ObsidianToday",
      "ObsidianTomorrow",
      "ObsidianWorkspace",
      "ObsidianYesterday",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    "hrsh7th/nvim-cmp",
    'nvim-telescope/telescope.nvim',
  },
  opts = {
    workspaces = {
      {
        name = "default",
        path = "~/Obsidian",
      },
    },
    notes_subdir = "000_Inbox",
    templates = {
        subdir = "999_Templates"
    }
  },
}
