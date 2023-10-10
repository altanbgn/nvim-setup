-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("nvim-treesitter/nvim-treesitter-context")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("nvim-lualine/lualine.nvim")

  -- Indent lines and indicators
  use({
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  })

  -- Colorscheme
  use({ "rose-pine/neovim", as = "rose-pine" })
  use("nyoom-engineering/oxocarbon.nvim")

  -- Dependant
  use("nvim-lua/plenary.nvim")

  -- Git
  use("tpope/vim-fugitive")
  use("lewis6991/gitsigns.nvim")

  -- Utility
  use("nvim-tree/nvim-web-devicons")
  use("folke/trouble.nvim")
  use("numToStr/Comment.nvim")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2"
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end
  })

  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
      { "neovim/nvim-lspconfig" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    }
  })
end)
