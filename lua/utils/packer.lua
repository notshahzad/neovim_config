vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use({
    "oncomouse/lushwal",
    requires = { { "rktjmp/lush.nvim", opt = true }, { "rktjmp/shipwright.nvim", opt = true } },
  })
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
  })
  use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      {
        -- Optional
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },     -- Required
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "L3MON4D3/LuaSnip" },     -- Required
    },
  })
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  })
  use("dylanaraps/wal.vim")

  use({ "terryma/vim-multiple-cursors" })
  use("mrjones2014/smart-splits.nvim")
  use({ "nvim-treesitter/playground" })
  use({ "jose-elias-alvarez/null-ls.nvim" })
  use({ "jay-babu/mason-null-ls.nvim" })
  use({ "akinsho/toggleterm.nvim", tag = "*" })
  use({ "willothy/flatten.nvim", config = true })
  use({ "catppuccin/nvim" })
  use({ "ellisonleao/gruvbox.nvim" })
  use("shaunsingh/nord.nvim")
  use("nvim-tree/nvim-web-devicons") -- optional dependency
  use("lukas-reineke/indent-blankline.nvim")
  use("folke/trouble.nvim")
  use({
    "stevearc/aerial.nvim",
    config = function()
      require("aerial").setup()
    end,
  })
  use({
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup({})
    end,
  })
  use({
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
  })
  use({
    "stevearc/oil.nvim",
  })
  use({ "lewis6991/gitsigns.nvim" })
end)
