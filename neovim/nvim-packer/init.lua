
-- CORE CONFIGURATIONS
require("core.options")
require("core.plugins")
require("core.keymaps")

-- PLUGINS
require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.telescope")
require("core.plugin_config.treesitter")

-- COMMENTS
require("Comment").setup()

-- LSP
require("core.plugin_config.lspkind")
require("core.plugin_config.mason_config")
require("core.plugin_config.autocomplete")

-- HARPOON
require("core.plugin_config.harpoon")

-- COLORS
require("core.plugin_config.colors")

-- BUFFERLINE
require("bufferline").setup({})

-- HIGHLIGHT COLORS
require("nvim-highlight-colors").setup({})

-- AUTOTAG
require("nvim-ts-autotag").setup()

-- TODO-COMMENTS
require("todo-comments").setup({})

-- FORMATTER
require("core.plugin_config.formatter")

-- TOGGLETERM
require("toggleterm").setup({
	direction = "float",
	float_opts = {
		border = "curved",
		width = 100,
		height = 5,
	},
})

require("symbols-outline").setup()
require('overseer').setup()
