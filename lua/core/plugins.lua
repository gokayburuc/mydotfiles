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

    -- nightwing colorscheme
    use { "jadnw/nightwing.nvim" }

    -- catpuccin colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }

    use 'shaunsingh/nord.nvim' -- nord colorscheme    
    use "rafamadriz/neon" -- neon colorscheme 

    -- github colorscheme 
    use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
    
    -- melange colorscheme 
    use "savq/melange-nvim"

    -- monokai colorscheme 
    use 'tanvirtin/monokai.nvim'

    -- nordic colorscheme
    use 'AlexvZyl/nordic.nvim'

    use 'Yagua/nebulous.nvim'

    use { "jadnw/gemstones.nvim" }

    use "VDuchauffour/neodark.nvim"

    use {"adisen99/codeschool.nvim", requires = {"rktjmp/lush.nvim"}}

    -- jellybeans colorscheme 
    use { 'rktjmp/lush.nvim'}
    use { 'metalelf0/jellybeans-nvim' }

    -- markdown preview
    use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

    --kanagawaw colorscheme
    use {"rebelot/kanagawa.nvim"}

    use {'stevearc/aerial.nvim'} -- aerial

    -- autopep8 
    use {'tell-k/vim-autopep8'} -- autopep8 

    -- Auto Pairs 
    use {'jiangmiao/auto-pairs'} -- autopairs

    -- Bufferline
    use 'akinsho/nvim-bufferline.lua' --bufferline  

    -- Harpoon 
    use 'ThePrimeagen/harpoon' -- harpoon setup 

    -- rainbow csv
    use 'mechatroner/rainbow_csv'

    -- Material Colorscheme 
    use 'marko-cerovac/material.nvim'

    -- colorscheme : gruvbox
    use  'ellisonleao/gruvbox.nvim'

    -- oh lucy colorscheme
    use 'yazeed1s/oh-lucy.nvim'
    -- colorscheme : rose - pine
    use ("rose-pine/neovim")
    -- dracula 
    use 'Mofiqul/dracula.nvim'
    -- colorscheme : toknonight
    use 'folke/tokyonight.nvim'
    -- solarized 
    use ('Tsuzat/NeoSolarized.nvim')

    -- LSP fuzzy finder 
    use {'ojroques/nvim-lspfuzzy'}

    -- MARKDOWN PREVIEW
    use {'davidgranstrom/nvim-markdown-preview'}


  if packer_bootstrap then
    require('packer').sync()
  end
end)
