-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use { 'ojroques/nvim-bufdel' }

        use 'voldikss/vim-floaterm'

        -- Auto tag
        use {
            "windwp/nvim-ts-autotag",
            wants = "nvim-treesitter",
            event = "InsertEnter",
            config = function()
                require("nvim-ts-autotag").setup { enable = true }
            end,
        }

        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }

        use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

        use {
            'VonHeikemen/fine-cmdline.nvim',
            requires = {
                { 'MunifTanjim/nui.nvim' }
            }
        }

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }

        use { "catppuccin/nvim", as = "catppuccin" }

        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

        use('nvim-treesitter/playground')

        use('theprimeagen/harpoon')

        use('mbbill/undotree')

        use('tpope/vim-fugitive')

        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v1.x',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' }, -- Required
                { 'williamboman/mason.nvim' }, -- Optional
                { 'williamboman/mason-lspconfig.nvim' }, -- Optional

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' }, -- Required
                { 'hrsh7th/cmp-nvim-lsp' }, -- Required
                { 'hrsh7th/cmp-buffer' }, -- Optional
                { 'hrsh7th/cmp-path' }, -- Optional
                { 'saadparwaiz1/cmp_luasnip' }, -- Optional
                { 'hrsh7th/cmp-nvim-lua' }, -- Optional

                -- Snippets
                { 'L3MON4D3/LuaSnip' }, -- Required
                { 'rafamadriz/friendly-snippets' }, -- Optional
            }
        }

        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
            tag = 'nightly'
        } -- optional, updated every week. (see issue #1193)
    end)