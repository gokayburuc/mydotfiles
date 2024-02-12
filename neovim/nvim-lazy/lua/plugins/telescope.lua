return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},

	config = function()
		local opts = {
			theme = "dropdown",
			initial = "normal",
			layout_strategy = "flex",
			border = true,
			layout_config = {
				horizontal = {
					prompt_position = "top",
					height = 0.95,
					width = 0.90,
				},
				vertical = { prompt_position = "top" },
			},
		}

		require("telescope").setup({
			pickers = {
				find_files = opts,
				keymaps = opts,
				diagnostics = opts,
				colorschemes = opts,
				commands = opts,
				current_buffer_fuzzy_find = opts,
				lsp_document_symbols = opts,
				treesitter = opts,
				live_grep = opts,
			},
		})

		require("telescope").load_extension("harpoon")
		require("telescope").load_extension("fzf")
	end,
}
