return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup()

		-- local capabilities
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lconf = require("lspconfig")

		-- LUA
		lconf.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		-- GO
		lconf.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
					gofumpt = true,
				},
			},
		})

		-- EMMET
		lconf.emmet_language_server.setup({ capabilities = capabilities })

		-- JAVASCRIPT
		lconf.eslint.setup({ capabilities = capabilities })

		-- HTML
		lconf.html.setup({ capabilities = capabilities })

		-- CSS
		lconf.cssls.setup({ capabilities = capabilities })

		-- BASH
		lconf.bashls.setup({ capabilities = capabilities })

		-- PYTHON
		lconf.pylsp.setup({ capabilities = capabilities })

		-- VIM
		lconf.vimls.setup({ capabilities = capabilities })

		-- JSON
		lconf.jsonls.setup({ capabilities = capabilities })

		-- ELIXIR
        -- FIX: elixir config log error fix 
		lconf.elixirls.setup({ capabilities = capabilities })

		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
