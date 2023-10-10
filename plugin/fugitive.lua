vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

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

    vim.keymap.set("n", "<leader>ps", function()
      vim.cmd.Git("push")
    end, opts)

    vim.keymap.set("n", "<leader>pl", function()
      vim.cmd.Git({ "pull", "--rebase" })
    end, opts)

    vim.keymap.set("n", "<leader>gp", "<cmd>Git push -u origin<CR>", opts);
    vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", opts);
  end,
})
