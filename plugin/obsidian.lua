require("obsidian").setup({
  dir = "~/Documents/Obsidian"
})

vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>")
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>fo", "<cmd>ObsidianQuickSwitch<CR>")
