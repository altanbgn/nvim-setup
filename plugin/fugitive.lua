vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gc", function()
  vim.cmd.Git("commit")
end)
vim.keymap.set("n", "<leader>gd", function()
  vim.cmd.Git("diff")
end)
vim.keymap.set("n", "<leader>gb", function()
  vim.cmd.Git("blame")
end)
vim.keymap.set("n", "<leader>ga", "<cmd>Git add .<CR>")

local fugitiveGroup = vim.api.nvim_create_augroup("fugitiveGroup", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
  group = fugitiveGroup,
  pattern = "*",
  callback = function()
    print(vim.bo.ft)
    if vim.bo.ft ~= "fugitive" then
      return
    end

    local currentBuffer = vim.api.nvim_get_current_buf()
    local opts = { buffer = currentBuffer, remap = false }

    vim.keymap.set("n", "<leader>gps", function()
      vim.cmd.Git("push")
    end, opts)

    vim.keymap.set("n", "<leader>gpo", function()
      vim.cmd.Git({ "push", "-u", "origin" })
    end, opts)

    vim.keymap.set("n", "<leader>gpl", function()
      vim.cmd.Git({ "pull", "--rebase" })
    end, opts)
  end,
})
