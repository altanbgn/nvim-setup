require("rose-pine").setup({
	variant = "moon",
	dark_variant = "moon",
  dim_inactive_windows = false,
  extend_background_behind_borders = true,
  styles = {
    bold = true,
    italic = true,
    transparency = true,
  },
})

-- Set colorscheme after options
vim.cmd.colorscheme "rose-pine"
