local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'jacoborus/tender.vim'
    use 'junegunn/vim-easy-align'

    -- nvim-tree 
    use  'nvim-tree/nvim-tree.lua'
    use  'nvim-tree/nvim-web-devicons'


    -- tpope plugins 
    use  'tpope/vim-fugitive'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --comments 
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- undotree 
    use 'mbbill/undotree'

    -- LSP & AUTOCOMPLETION
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
            {'saadparwaiz1/cmp_luasnip'},

            -- Pictograms
            {'onsails/lspkind.nvim'},

            -- signature help 
            {'hrsh7th/cmp-nvim-lsp-signature-help'},
            {'hrsh7th/cmp-nvim-lsp-document-symbol'}
        }
    }


    -- colorizer - hex colors 
    use 'norcalli/nvim-colorizer.lua'

    -- melange colorscheme 
    use "savq/melange-nvim"

    -- zephyr colorscheme 
    use({
        'glepnir/zephyr-nvim',
        requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
    })

    -- markdown preview
    use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })


    use {'stevearc/aerial.nvim'} -- aerial

    -- autopep8 
    use {'tell-k/vim-autopep8'} -- autopep8 

    -- Auto Pairs 
    use {'jiangmiao/auto-pairs'} -- autopairs

    -- Bufferline
    use 'akinsho/nvim-bufferline.lua' --bufferline  

    -- Harpoon 
    use 'ThePrimeagen/harpoon' 

    -- rainbow csv
    use 'mechatroner/rainbow_csv'

    -- Material Colorscheme 
    use 'marko-cerovac/material.nvim'

    -- colorscheme : gruvbox
    use  'ellisonleao/gruvbox.nvim'

    -- solarized 
    use ('Tsuzat/NeoSolarized.nvim')

    -- LSP fuzzy finder 
    use {'ojroques/nvim-lspfuzzy'}

    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- nvim surround 
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- indent-blankline 
    use "lukas-reineke/indent-blankline.nvim"

    -- midnight colorscheme
    use 'dasupradyumna/midnight.nvim'

    --one dark colorscheme
    use 'navarasu/onedark.nvim'

    -- balance colorscheme
    use 'MetriC-DT/balance-theme.nvim'

    -- NEON COLORSCHEME 
    use "rafamadriz/neon"

    -- NORD COLORSCHEMe
    use 'shaunsingh/nord.nvim'

    -- NEBULOUS COLORSCHEME
    use 'Yagua/nebulous.nvim'

    -- monokai pro 
    use {
        "loctvl842/monokai-pro.nvim",
        config = function()
            require("monokai-pro").setup()
        end
    }
    -- packer.nvim
    use {"akinsho/horizon.nvim", tag = "*"}

    -- arctic colorscheme
    use {"rockyzhang24/arctic.nvim", requires = {"rktjmp/lush.nvim"}}

    -- nova colorscheme 
    use 'zanglg/nova.nvim'

    use { "zootedb0t/citruszest.nvim" }

    use "yorik1984/newpaper.nvim"

    use "Alexis12119/nightly.nvim"

    use 'mhartington/oceanic-next'

    use { 'projekt0n/github-nvim-theme' }

    -- sainnhe gruvbox material colorscheme 
    use 'sainnhe/gruvbox-material'

    -- SAINNHE SONOKAI COLORSCHEME 
    use 'sainnhe/sonokai'

    use 'maxmx03/fluoromachine.nvim'

    use { "catppuccin/nvim", as = "catppuccin" }

    use { 'kaiuri/nvim-juliana',
    config = function()
        require 'nvim-juliana'.setup { --[=[ configuration --]=] }
    end
}
    -- ONE DARKER COLORSCHEME
    use 'AlphaTechnolog/onedarker.nvim'

    use 'AxelGard/oneokai.nvim'

if packer_bootstrap then
    require('packer').sync()
end
end)
