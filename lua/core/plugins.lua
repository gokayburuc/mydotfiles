local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		-- or , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- telescope file browser
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})

    -- DAP 
    use "mfussenegger/nvim-dap"

    use "nvim-telescope/telescope-dap.nvim"

	use("junegunn/vim-easy-align")

	-- nvimtree
	use("nvim-tree/nvim-tree.lua")

	-- nvim web devicons
	use("nvim-tree/nvim-web-devicons")

	-- tpope plugins
	use("tpope/vim-fugitive")

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

	-- zephyr colorscheme
	use({
		"glepnir/zephyr-nvim",
		requires = { "nvim-treesitter/nvim-treesitter", opt = true },
	})

	-- markdown preview
	use({ "toppair/peek.nvim", run = "deno task --quiet build:fast" })

	-- Auto Pairs
	use({ "jiangmiao/auto-pairs" }) -- autopairs

	-- Bufferline
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	-- Harpoon
	use("ThePrimeagen/harpoon")

	-- LSP fuzzy finder
	use({ "ojroques/nvim-lspfuzzy" })

	use("nvimdev/lspsaga.nvim")

	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

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

	-- indent-blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- color highlight
	use("brenoprata10/nvim-highlight-colors")

	-- autotag
	use("windwp/nvim-ts-autotag")

	-- midnight colorscheme

	-- todo comments
	use({
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	})

	-- folke zen mode
	use("folke/zen-mode.nvim")

	-- formatter
	use({ "mhartington/formatter.nvim" })

	-- color
	use("tjdevries/colorbuddy.nvim")

	use("folke/trouble.nvim")

	use("lewis6991/gitsigns.nvim")
	use("rcarriga/nvim-notify")

	-- COLORSCHEMES
	use("metalelf0/jellybeans-nvim")
	use("rafamadriz/neon")
	use("savq/melange-nvim")
	use("edmondburnett/leeward.nvim")
	use("rebelot/kanagawa.nvim")
	use("Mofiqul/adwaita.nvim")
	use("Yagua/nebulous.nvim")
	use("Mofiqul/dracula.nvim")
	use("marko-cerovac/material.nvim")
	use("heraldofsolace/nisha-vim")
	use("yorik1984/newpaper.nvim")
	use("AlexvZyl/nordic.nvim")
	use("gbprod/nord.nvim")
	use("folke/tokyonight.nvim")
	use("luisiacc/the-matrix.nvim")
	use("numToStr/Sakura.nvim")
	use({ "rockyzhang24/arctic.nvim", requires = { "rktjmp/lush.nvim" } })
	use("dasupradyumna/midnight.nvim")
	use("Tsuzat/NeoSolarized.nvim")
	use("ellisonleao/gruvbox.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
