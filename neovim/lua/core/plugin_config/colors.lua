function ColorMe(color)
	color = color or "night-owl"
    require("night-owl").setup({

    })
	-- require("core.plugin_config.themes.osaka")
	-- require("core.plugin_config.themes.nord")
	-- require("core.plugin_config.themes.material")

	-- test item
	vim.o.background = "dark"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMe()
