require("nord").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	diff = { mode = "bg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
	borders = true, -- Enable the border between verticaly split windows visible
	errors = { mode = "bg" }, -- Display mode for errors and diagnostics
	-- values : [bg|fg|none]
	search = { theme = "vim" }, -- theme for highlighting search results
	-- values : [vim|vscode]
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true, bold=true },
		functions = {italic = true, bold = true},
		variables = {bold = true},

		-- To customize lualine/bufferline
		bufferline = {
			current = {},
			modified = { italic = true },
		},
	},

	-- colorblind mode
	-- see https://github.com/EdenEast/nightfox.nvim#colorblind
	-- simulation mode has not been implemented yet.
	colorblind = {
		enable = false,
		preserve_background = false,
		severity = {
			protan = 0.0,
			deutan = 0.0,
			tritan = 0.0,
		},
	},

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with all highlights and the colorScheme table
	on_highlights = function(highlights, colors) end,
})
