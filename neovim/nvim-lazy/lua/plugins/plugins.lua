return {

	{
		"Yazeed1s/minimal.nvim",
		lazy = false,
		config = function()
			-- vim.g.minimal_transparent_background = true
			-- vim.cmd.colorscheme("minimal")
		end,
	},

	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.o.background = "dark" -- or 'light'
			-- default config
			require("solarized").setup({
				transparent = true, -- enable transparent background
				palette = "solarized", -- or selenized
				styles = {
					comments = {},
					functions = {},
					variables = {},
					numbers = {},
					constants = {},
					parameters = {},
					keywords = {},
					types = {},
				},
				enables = {
					bufferline = true,
					cmp = true,
					diagnostic = true,
					dashboard = true,
					editor = true,
					gitsign = true,
					hop = true,
					indentblankline = true,
					lsp = true,
					lspsaga = true,
					navic = true,
					neogit = true,
					neotree = true,
					notify = true,
					noice = true,
					semantic = true,
					syntax = true,
					telescope = true,
					tree = true,
					treesitter = true,
					todo = true,
					whichkey = true,
					mini = true,
				},
				-- highlights = {},
				-- colors = {},
				theme = "neo", -- or 'neo' 'default'
				autocmd = false,
			})

			vim.cmd.colorscheme("solarized")
		end,
	},

	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("onedark").setup({
				-- Main options --
				style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
				transparent = true, -- Show/hide background
				term_colors = true, -- Change terminal color as per the selected theme style
				ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
				cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

				-- toggle theme style ---
				toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
				toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

				-- Change code style ---
				-- Options are italic, bold, underline, none
				-- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
				code_style = {
					comments = "italic",
					keywords = "none",
					functions = "none",
					strings = "none",
					variables = "none",
				},

				-- Lualine options --
				lualine = {
					transparent = false, -- lualine center bar transparency
				},

				-- Custom Highlights --
				colors = {}, -- Override default colors
				highlights = {}, -- Override highlight groups

				-- Plugins Config --
				diagnostics = {
					darker = true, -- darker colors for diagnostic
					undercurl = true, -- use undercurl instead of underline for diagnostics
					background = true, -- use background color for virtual text
				},
			})
			-- require("onedark").load()
			-- vim.cmd.colorscheme("onedark")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup()
		end,
	},

	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"marko-cerovac/material.nvim",
		config = function()
			local material = require("material")

			material.setup({
				contrast = {
					sidebars = true,
					floating_windows = false,
					cursor_line = false,
					popup_menu = true,
					filetypes = {
						"qf",
					},
				},
				plugins = {
					"gitsigns",
					"nvim-cmp",
					"nvim-tree",
					"nvim-web-devicons",
					"telescope",
					"which-key",
				},
				styles = {
					comments = { italic = true },
					functions = { italic = true },
				},
				disable = {
					colored_cursor = false,
					borders = true,
					background = true,
					term_colors = false,
					eob_lines = false,
				},
				high_visibility = {
					lighter = false,
					darker = true,
				},

				lualine_style = "stealth",
				async_loading = true,
			})

			-- Apply the colorscheme
			-- vim.cmd("colorscheme material-deep-ocean")
		end,
	},

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "hard", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = true,
			})
			-- vim.cmd("colorscheme gruvbox")
		end,
	},

	{
		"aurum77/live-server.nvim",
		build = function()
			require("live_server.util").install()
		end,
		cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
	},

	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linter_by_ft = {
				javascript = { "eslint_d" },
				lua = { "luacheck" },
				python = { "flake8" },
			}
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		config = function()
			local opts = {
				theme = "dropdown",
				initial = "normal",
				layout_strategy = "flex",
				border = true,
				path_display = "truncate",
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
				defaults = {
					prompt_prefix = "🔎 ",
					selection_caret = "🔥 ",
					entry_prefix = "🔹 ",
					color_devicons = true,
				},
				pickers = {
					find_files = opts,
					keymaps = opts,
					diagnostics = opts,
					colorschemes = {
						enable_preview = true,
						theme = "dropdown",
						layout_config = { prompt_position = "top" },
					},
					commands = opts,
					current_buffer_fuzzy_find = opts,
					lsp_document_symbols = opts,
					treesitter = opts,
					live_grep = opts,
					fd = opts,
					autocommands = opts,
					vim_options = opts,
				},
				extensions = {
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			})

			require("telescope").load_extension("harpoon")
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/nvim-cmp" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
			{ "saadparwaiz1/cmp_luasnip" },

			-- Pictograms
			{ "onsails/lspkind.nvim" },

			-- signature help
			{ "hrsh7th/cmp-nvim-lsp-signature-help" },
			{ "hrsh7th/cmp-nvim-lsp-document-symbol" },
		},

		config = function()
			require("lsp-zero")

			local cmp = require("cmp")
			local luasnip = require("luasnip")

			require("snippets.snippets")
			require("luasnip.loaders.from_vscode").lazy_load()

			-- own snippets
			require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })

			-- INFO: lspkind config
			local lspkind = require("lspkind")
			cmp.setup({
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol_text", -- show only symbol annotations
						maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
						-- can also be a function to dynamically calculate max width such as
						-- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
						ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
						show_labelDetails = true, -- show labelDetails in menu. Disabled by default

						-- The function below will be called before any actual modifications from lspkind
						-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
						-- before = function(entry, vim_item)
						-- 	return vim_item
						-- end,
					}),
				},
			})

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},

				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),

				-- window border options
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},

				--source config
				sources = cmp.config.sources({
					{ name = "buffer", priority = 6 },
					{ name = "luasnip", priority = 3 },
					{ name = "nvim_lsp", priority = 1 },
					{ name = "nvim_lua", priority = 2 },
					{ name = "nvim_lsp_document_symbol", priority = 4 },
					{ name = "nvim_lsp_signature_help", priority = 5 },
				}),
			})
		end,
	},

	{
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

			-- VIM
			lconf.vimls.setup({ capabilities = capabilities })

			-- EMMET
			lconf.emmet_ls.setup({ capabilities = capabilities })

			-- JAVASCRIPT
			lconf.eslint.setup({ capabilities = capabilities })

			-- TYPESCRIPT
			lconf.tsserver.setup({ capabilities = capabilities })

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

			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},

	{
		"mhartington/formatter.nvim",
		config = function()
			require("formatter").setup({
				logging = false,
				log_level = vim.log.levels.WARN,
				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
					},

					html = {
						require("formatter.filetypes.html").prettier,
					},
					css = {
						require("formatter.filetypes.css").prettier,
					},
					bash = {
						require("formatter.filetypes.sh").beautysh,
					},
					json = {
						require("formatter.filetypes.json").prettier,
					},
					go = {
						require("formatter.filetypes.go").goimports,
					},
					python = {
						require("formatter.filetypes.python").autopep8,
					},

					-- any filetype
					["*"] = {
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				},
			})
		end,
	},

	{
		"lewis6991/gitsigns.nvim",

		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "+" },
					change = { text = "|" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
				numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
				linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
				word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
				watch_gitdir = {
					follow_files = true,
				},
				auto_attach = true,
				attach_to_untracked = true,
				current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
					delay = 1000,
					ignore_whitespace = false,
					virt_text_priority = 100,
				},
				current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
				sign_priority = 6,
				update_debounce = 100,
				status_formatter = nil, -- Use default
				max_file_length = 40000, -- Disable if file is longer than this (in lines)
				preview_config = {
					-- Options passed to nvim_open_win
					border = "single",
					style = "minimal",
					relative = "cursor",
					row = 0,
					col = 1,
				},
				yadm = {
					enable = false,
				},
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c",
					"lua",
					"luadoc",
					"vim",
					"vimdoc",
					"query",
					"elixir",
					"heex",
					"javascript",
					"html",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto", -- DEFAULT: auto
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
	{
		"mbbill/undotree",
	},

	-- dressing
	{
		"stevearc/dressing.nvim",

		config = function()
			require("dressing").setup()
		end,
	},

	-- harpoon
	{ "ThePrimeagen/harpoon" },

	-- nvim surround
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	{ "jiangmiao/auto-pairs" },

	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup()
		end,
	},
	{ "junegunn/vim-easy-align" },
	{
		"mechatroner/rainbow_csv",
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},

	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},
}
