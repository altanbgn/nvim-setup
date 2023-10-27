vim.g.mapleader = " "

vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "K", "mzJ`z")
vim.keymap.set("n", "<C-n>", "<C-d>zz")
vim.keymap.set("n", "<C-e>", "<C-u>zz")
vim.keymap.set("n", "m", "nzzzv")
vim.keymap.set("n", "M", "Nzzzv")

-- greatest remap ever (Paste something without copying the selected visual)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>fn", "<cmd>enew<CR>");
vim.keymap.set("n", "<leader>fp", "<cmd>e ~/.config/nvim/lua/res0nance/packer.lua<CR>");
vim.keymap.set("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader>c", "<cmd>nohl<CR>")
vim.keymap.set("n", "<leader>fe", "<cmd>Ex<CR>")

-- Colemak Mod HNEI motion
vim.keymap.set("", "n", "j")
vim.keymap.set("", "e", "k")
vim.keymap.set("", "i", "l")
vim.keymap.set("", "f", "e")
vim.keymap.set("", "k", "n")
vim.keymap.set("", "l", "i")

vim.keymap.set("", "I", "L")
vim.keymap.set("", "F", "E")
vim.keymap.set("", "K", "N")
vim.keymap.set("", "L", "I")
