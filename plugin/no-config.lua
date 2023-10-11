require("gitsigns").setup()
require("Comment").setup()
require("ibl").setup()
require("ibl").overwrite({
  exclude = {
    filetypes = {
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      "man",
      "gitcommit",
      "TelescopePrompt",
      "TelescopeResults",
      "Trouble",
      "dashboard"
    }
  }
})
