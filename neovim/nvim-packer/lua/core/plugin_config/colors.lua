function ColorMe(color)
	-- =========================================
	color = color or "cyberdream"

    require("core.plugin_config.themes.cyberdream")

	-- truerequire("cyberdream").setup({
	-- 	transparent = true,
	-- 	italic_comments = true,
	-- 	hide_fillchars = true,
	-- 	borderless_telescope = false,
	-- })
	-- =====================================
	-- color = color or "onedarkhc"

	-- =======================================

	vim.o.background = "dark"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMe()
