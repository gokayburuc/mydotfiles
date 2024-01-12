vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

    -- overseer.nvim 
    use {
        'stevearc/overseer.nvim',
        config = function() require('overseer').setup() end
    }


	-- dap
	use("mfussenegger/nvim-dap")

	-- symbols-outline
	use("simrat39/symbols-outline.nvim")

	-- emoji picker
	use({
		"ziontee113/icon-picker.nvim",
		config = function()
			require("icon-picker").setup({
				disable_legacy_commands = true,
			})
		end,
	})

	-- git fugitive
	use("tpope/vim-fugitive")

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		-- or , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- toggleterm
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- dressing
	use("stevearc/dressing.nvim")

	-- easy align
	use("junegunn/vim-easy-align")

	-- nvimtree
	use("nvim-tree/nvim-tree.lua")

	-- nvim web devicons
	use("nvim-tree/nvim-web-devicons")

	-- LUALINE
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	--COMMENTS
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- undotree
	use("mbbill/undotree")

	-- lsp & autocompletion
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
			{ "saadparwaiz1/cmp_luasnip" },

			-- Pictograms
			{ "onsails/lspkind.nvim" },

			-- signature help
			{ "hrsh7th/cmp-nvim-lsp-signature-help" },
			{ "hrsh7th/cmp-nvim-lsp-document-symbol" },
		},
	})

	-- colorizer - hex colors
	use("norcalli/nvim-colorizer.lua")

	-- Auto Pairs
	use({ "jiangmiao/auto-pairs" }) -- autopairs

	-- Bufferline
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	-- Harpoon
	use("ThePrimeagen/harpoon")

	-- nvim surround
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	-- iamco markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	-- trouble
	use({
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	})

	-- color highlight
	use("brenoprata10/nvim-highlight-colors")

	-- autotag
	use("windwp/nvim-ts-autotag")

	-- todo comments
	use({
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	})

	-- formatter
	use({ "mhartington/formatter.nvim" })

	-- color
	use("tjdevries/colorbuddy.nvim")

	-- gitsigns
	use("lewis6991/gitsigns.nvim")

	-- live server
	use({
		"aurum77/live-server.nvim",
		run = function()
			require("live_server.util").install()
		end,
		cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
	})

	-- COLORSCHEMES
	use("rebelot/kanagawa.nvim")
	use("Mofiqul/dracula.nvim")
	use("marko-cerovac/material.nvim")
	use("gbprod/nord.nvim")
	use("folke/tokyonight.nvim")
	use({ "rockyzhang24/arctic.nvim", requires = { "rktjmp/lush.nvim" } })
	use("dasupradyumna/midnight.nvim")
	use("Tsuzat/NeoSolarized.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("oxfist/night-owl.nvim")
	use({
		"glepnir/zephyr-nvim",
		requires = { "nvim-treesitter/nvim-treesitter", opt = true },
	})
	use("navarasu/onedark.nvim")
	use({ "kartikp10/noctis.nvim", requires = { "rktjmp/lush.nvim" } })
	use("BoilingSoup/fruitypebbles.nvim")
	use({ "zootedb0t/citruszest.nvim" })
	use("Abstract-IDE/Abstract-cs")
	use("Yazeed1s/oh-lucy.nvim")
	use("NTBBloodbath/doom-one.nvim")
	use("pacokwon/onedarkhc.vim")
	use({ "scottmckendry/cyberdream.nvim" })
end)
