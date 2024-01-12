return {

	-- git
	{
		"tpope/vim-fugitive",
		"lewis6991/gitsigns.nvim",
	},

	{
		"mbbill/undotree",

		vim.keymap.set("n", "<leader><F6>", ":UndotreeShow<CR>"),
		vim.keymap.set("n", "<leader><F7>", ":UndotreeHide<CR>"),
	},

	-- dressing
	{ "stevearc/dressing.nvim" },

	-- symbols-outline
	{ "simrat39/symbols-outline.nvim" },

	-- harpoon
	{ "ThePrimeagen/harpoon" },

	-- nvim surround
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	-- using lazy.nvim
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({})
		end,
	},

	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	{
		"jiangmiao/auto-pairs",
	},
}
