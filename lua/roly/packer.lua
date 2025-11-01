-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescopee
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- theme
  use "olimorris/onedarkpro.nvim"

  -- treesitter parser
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- harpoon
  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')

  -- undo tree
  use('mbbill/undotree')

  -- git wrapper
  use('tpope/vim-fugitive')

  -- file explorer
  use({
	  "nvim-neo-tree/neo-tree.nvim",
	  branch = "v3.x",
	  requires = {
		  "nvim-lua/plenary.nvim",
		  "MunifTanjim/nui.nvim",
		  "nvim-tree/nvim-web-devicons", 
	  }
  })

  use {
	  'vyfor/cord.nvim',
	  run = ':Cord update',
  }

end)
