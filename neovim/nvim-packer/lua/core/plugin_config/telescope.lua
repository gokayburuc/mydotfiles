
require("telescope").setup({
	defaults = {
		-- ...
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
		live_grep = {
			theme = "dropdown",
		},
		lsp_document_symbols = {
			theme = "dropdown",
		},
		help_tags = {
			theme = "dropdown",
		},
	},

	extensions = {
        harpoon = {

        }

	},
})

-- harpoon as extension
require("telescope").load_extension('harpoon')
