-- CORE CONFIGURATIONS 
--

require('core.options')
require('core.plugins')
require('core.keymaps')


--PLUGINS 
require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.telescope")
require("core.plugin_config.treesitter")

-- TRANSPARENT COLORSCHEME 
-- require("core.plugin_config.colors")

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
require'colorizer'.setup()


-- bufferline 
require('core.plugin_config.bufferline')


-- require("core.plugin_config.tokyonight")
-- require('core.plugin_config.rose_pine')
-- require('core.plugin_config.gruvbox')
-- require("core.plugin_config.catppuccin")
