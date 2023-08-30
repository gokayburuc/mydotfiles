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
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	--
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

	-- melange colorscheme
	use("savq/melange-nvim")

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

	-- rainbow csv
	use("mechatroner/rainbow_csv")

	-- gruvbox colorscheme
	use("ellisonleao/gruvbox.nvim")

	-- solarized colorscheme
	use("Tsuzat/NeoSolarized.nvim")

	-- LSP fuzzy finder
	use({ "ojroques/nvim-lspfuzzy" })

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

	--one dark colorscheme
	use("navarasu/onedark.nvim")

	-- nord colorscheme
	use("shaunsingh/nord.nvim")

	-- monokai pro
	use({
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end,
	})

	-- arctic colorscheme
	use({ "rockyzhang24/arctic.nvim", requires = { "rktjmp/lush.nvim" } })

	-- citruszest colorscheme
	use({ "zootedb0t/citruszest.nvim" })

	-- github colorscheme
	use({ "projekt0n/github-nvim-theme" })

	-- catppuccin colorscheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- color highlight
	use("brenoprata10/nvim-highlight-colors")

	-- kanagawa colorscheme
	use("rebelot/kanagawa.nvim")

	-- autotag
	use("windwp/nvim-ts-autotag")

	-- abstract colorscheme
	use("Abstract-IDE/Abstract-cs")

	-- rose pine colorscheme
	use("rose-pine/neovim")

	-- dracula colorscheme
	use("Mofiqul/dracula.nvim")

	-- midnight colorscheme
	use("dasupradyumna/midnight.nvim")

	-- todo comments
	use({
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
		},
	})

	-- folke zen mode
	use("folke/zen-mode.nvim")
    

    -- formatter 
	use({ "mhartington/formatter.nvim" })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
