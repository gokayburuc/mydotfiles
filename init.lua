-- CORE CONFIGURATIONS

require("core.options") -- core options
require("core.plugins") -- plugins
require("core.keymaps") -- keymaps

--PLUGINS
require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.telescope")
require("core.plugin_config.treesitter")

-- Comments
require("Comment").setup()

-- LSP
require("core.plugin_config.lspkind")
require("core.plugin_config.lsp_config")
require("core.plugin_config.autocomplete")

-- snippets
require("core.plugin_config.snippets")

-- peek
require("core.plugin_config.peek")

-- harpoon
require("core.plugin_config.harpoon")

-- COLORS
require("core.plugin_config.colors")

-- bufferline
require("bufferline").setup({})

-- highlight colors
require("nvim-highlight-colors").setup({})

-- autotag
require("nvim-ts-autotag").setup()

-- TODO COMMENTS
require("todo-comments").setup({})

-- FORMATTER
require("core.plugin_config.formatter")

require("notify")

-- neo solarized 
-- require('core.plugin_config.neo_solarized')
