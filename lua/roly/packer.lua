-- This file can be loaded by calling `lua require('plugins')` from your init.vim
require('feline').setup()

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescopee
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- autocomplete icons
    use "onsails/lspkind.nvim"

    -- cattpuccin integrated theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- onedark for syntax highlighting
    use "olimorris/onedarkpro.nvim"

    -- status bar
    use "famiu/feline.nvim"

    -- treesitter parser
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    -- harpoon
    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')

    -- undo tree
    use('mbbill/undotree')

    -- git visuals
    use "lewis6991/gitsigns.nvim"

    -- git wrapper
    use('tpope/vim-fugitive')

    -- git intergration
    use "NeogitOrg/neogit"

    -- comment stuff out
    use "tpope/vim-commentary"

    -- beatiful diffs
    use "sindrets/diffview.nvim"

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

    -- formatting
    use 'stevearc/conform.nvim'

    use 'rachartier/tiny-inline-diagnostic.nvim'

    use {
        'vyfor/cord.nvim',
        run = ':Cord update',
    }

    use("neovim/nvim-lspconfig")

    use {
        "folke/lazydev.nvim",
        ft = "lua",
        config = function()
            require("lazydev").setup({
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            })
        end,
    }

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use "hrsh7th/cmp-nvim-lsp-signature-help"

    -- notification
    use 'rcarriga/nvim-notify'

    -- terminal
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- autoclose
    use 'nvim-mini/mini.pairs'

    -- gh copilot
    use 'github/copilot.vim'
end)
