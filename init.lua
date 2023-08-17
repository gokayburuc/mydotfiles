-- CORE CONFIGURATIONS 

require('core.options')
require('core.plugins')
require('core.keymaps')


--PLUGINS 
require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.telescope")
require("core.plugin_config.treesitter")

-- Comments
require('Comment').setup()

-- LSP 
require("core.plugin_config.lspkind")
require("core.plugin_config.lsp_config")
require("core.plugin_config.autocomplete")

-- Aerial 
require('core.plugin_config.aerial')

-- snippets 
require('core.plugin_config.snippets')

-- peek 
require('core.plugin_config.peek')

-- harpoon 
require("core.plugin_config.harpoon")

-- COLORS 
require('core.plugin_config.colors')

-- bufferline 
require("bufferline").setup{}

-- highlight colors
require('nvim-highlight-colors').setup {}

-- autotag 
require('nvim-ts-autotag').setup()
