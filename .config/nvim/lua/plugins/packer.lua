require("plugins.configs.themes.catppuccin")
require("plugins.configs.dashboard")
require("plugins.configs.treesitter")
require("plugins.configs.lsp-installer")
require("plugins.configs.nvim-tree")
require("plugins.configs.feline")
require("plugins.configs.presence")
require("plugins.configs.cmp")
require("plugins.configs.which-key")
require("plugins.configs.autopairs")
require("plugins.configs.toggleterm")
require("plugins.configs.rust-tools")

local packer = require("packer")

packer.startup(function()
  use "jdhao/better-escape.vim"
  use "wbthomason/packer.nvim"
  use {
    "catppuccin/nvim",
    as = "catppuccin"
  }
  use "glepnir/dashboard-nvim"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim"
    }
  }
  use "nvim-treesitter/nvim-treesitter"
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"
  use "feline-nvim/feline.nvim"
  use "romgrk/barbar.nvim"
  use "andweeb/presence.nvim"
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use "hrsh7th/cmp-path"
  use "folke/which-key.nvim"
  use "windwp/nvim-autopairs"
  use "akinsho/toggleterm.nvim"
  use "simrat39/rust-tools.nvim"
end)
