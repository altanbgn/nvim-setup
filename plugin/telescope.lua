local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>tf", builtin.find_files, {})
vim.keymap.set("n", "<leader>to", builtin.oldfiles, {})

vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
vim.keymap.set("n", "<leader>td", function()
  builtin.grep_string({ search = vim.fn.input("Search (Grep) > ") })
end)
