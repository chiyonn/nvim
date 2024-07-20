-- nvim-tree settings
require'nvim-tree'.setup {
  auto_reload_on_write = true,
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  update_cwd = true,
  view = {
    width = 30,
    side = 'left'
  },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
      }
    }
  }
}
