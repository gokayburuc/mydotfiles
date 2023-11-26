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

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		-- or , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	--
	use({ "nvim-telescope/telescope-ui-select.nvim" })

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

	-- LSP fuzzy finder
	use({ "ojroques/nvim-lspfuzzy" })

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

	-- vscode bulb
	use({ "kosayoda/nvim-lightbulb" })

	require("nvim-lightbulb").setup({
		autocmd = { enabled = true },
	})
	-- formatter
	use({ "mhartington/formatter.nvim" })

	-- color
	use("tjdevries/colorbuddy.nvim")

	-- gitsigns
	use("lewis6991/gitsigns.nvim")

	use({
		"aurum77/live-server.nvim",
		run = function()
			require("live_server.util").install()
		end,
		cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
	})

	-- vista
	use("liuchengxu/vista.vim")

	-- COLORSCHEMES
	use("rebelot/kanagawa.nvim")
	use("Mofiqul/dracula.nvim")
	use("marko-cerovac/material.nvim")
	use("gbprod/nord.nvim")
	use("folke/tokyonight.nvim")
	use({ "metalelf0/jellybeans-nvim", requires = { "rktjmp/lush.nvim" } })
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
	use("craftzdog/solarized-osaka.nvim")
	use({
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end,
	})
	use({
		"xiantang/darcula-dark.nvim",
		requires = { "nvim-treesitter/nvim-treesitter" },
	})

	use({ "kartikp10/noctis.nvim", requires = { "rktjmp/lush.nvim" } })
	use({ "miikanissi/modus-themes.nvim" })
	use({ "cesarsl/neo-hybrid.nvim" })
	use("BoilingSoup/fruitypebbles.nvim")

	use("doums/darcula")
	use({ "zootedb0t/citruszest.nvim" })
	use({ "rose-pine/neovim", as = "rose-pine" })
end)
