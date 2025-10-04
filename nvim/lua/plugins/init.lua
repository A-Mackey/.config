-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Initialize lazy.nvim with some plugins
require("lazy").setup({
  -- Colorscheme
  { "EdenEast/nightfox.nvim", lazy = false },
  -- Syntax Highlighting
  { "nvim-treesitter/nvim-treesitter" },
  -- Java Language Server
  { "mfussenegger/nvim-jdtls" },

  -- FuzzyFinder
  { "nvim-telescope/telescope.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  -- File Explorere
  { "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
})
