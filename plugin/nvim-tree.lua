require("nvim-tree").setup({
  on_attach = "default",
  hijack_cursor = true,
  hijack_netrw = true,
  disable_netrw = true,
  prefer_startup_root = false,
  reload_on_bufenter = true,
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 40,
  },
  git = {
    enable = true,
    ignore = false,
  },
  filters = {
    dotfiles = false,
  },
})
