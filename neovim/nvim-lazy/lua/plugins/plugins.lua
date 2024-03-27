return {
	{ "frazrepo/vim-rainbow" },
	{ "luochen1990/rainbow" },
	{
		"stevearc/aerial.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"ellisonleao/carbon-now.nvim",
		lazy = false,
		cmd = "CarbonNow",
		config = function()
			local carbon = require("carbon-now")
			carbon.setup({
				open_cmd = "chromium-browser",
				base_url = "https://carbon.now.sh/",
				options = {
					font_family = "Monoid",
					theme = "verminal",
					bg = "midnightblue",
					drop_shadow = true, -- true, false
					drop_shadow_blur = "68px",
					drop_shadow_offset_y = "20px",
					font_size = "18px",
					line_height = "133%",
					line_numbers = true, -- true,false
					titlebar = "@gokayburuc",
					watermark = false, -- true, false
					window_theme = "boxy", -- sharp, none, boxy, bw
				},
			})
		end,
	},
	{
		"maxmx03/dracula.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local dracula = require("dracula")
			dracula.setup({
				transparent = true,
				plugins = {
					["nvim-treesitter"] = true,
					["nvim-lspconfig"] = true,
					["nvim-navic"] = true,
					["nvim-cmp"] = true,
					["indent-blankline.nvim"] = true,
					["neo-tree.nvim"] = true,
					["nvim-tree.lua"] = true,
					["which-key.nvim"] = true,
					["dashboard-nvim"] = true,
					["gitsigns.nvim"] = true,
					["neogit"] = true,
					["todo-comments.nvim"] = true,
					["lazy.nvim"] = true,
					["telescope.nvim"] = true,
					["noice.nvim"] = true,
					["hop.nvim"] = true,
					["mini.statusline"] = true,
					["mini.tabline"] = true,
					["mini.starter"] = true,
					["mini.cursorword"] = true,
					["mason"] = true,
				},
			})

			-- vim.cmd.colorscheme("dracula")
			vim.cmd.colorscheme("dracula-soft")
		end,
	},

	-- {
	-- 	"Mofiqul/dracula.nvim",
	--
	-- 	-- configuration
	-- 	config = function()
	-- 		local dracula = require("dracula")
	-- 		dracula.setup({
	-- 			-- customize dracula color palette
	-- 			-- colors = {
	-- 			-- 	bg = "#282A36",
	-- 			-- 	fg = "#F8F8F2",
	-- 			-- 	selection = "#44475A",
	-- 			-- 	comment = "#6272A4",
	-- 			-- 	red = "#FF5555",
	-- 			-- 	orange = "#FFB86C",
	-- 			-- 	yellow = "#F1FA8C",
	-- 			-- 	green = "#50fa7b",
	-- 			-- 	purple = "#BD93F9",
	-- 			-- 	cyan = "#8BE9FD",
	-- 			-- 	pink = "#FF79C6",
	-- 			-- 	bright_red = "#FF6E6E",
	-- 			-- 	bright_green = "#69FF94",
	-- 			-- 	bright_yellow = "#FFFFA5",
	-- 			-- 	bright_blue = "#D6ACFF",
	-- 			-- 	bright_magenta = "#FF92DF",
	-- 			-- 	bright_cyan = "#A4FFFF",
	-- 			-- 	bright_white = "#FFFFFF",
	-- 			-- 	menu = "#21222C",
	-- 			-- 	visual = "#3E4452",
	-- 			-- 	gutter_fg = "#4B5263",
	-- 			-- 	nontext = "#3B4048",
	-- 			-- 	white = "#ABB2BF",
	-- 			-- 	black = "#191A21",
	-- 			-- },
	-- 			-- show the '~' characters after the end of buffers
	-- 			-- show_end_of_buffer = true, -- default false
	-- 			-- use transparent background
	-- 			transparent_bg = true, -- default false
	-- 			-- set custom lualine background color
	-- 			-- lualine_bg_color = "#44475a", -- default nil
	-- 			-- set italic comment
	-- 			-- italic_comment = true, -- default false
	-- 			-- overrides the default highlights with table see `:h synIDattr`
	-- 			-- overrides = {},
	-- 			-- You can use overrides as table like this
	-- 			overrides = {
	-- 				--   NonText = { fg = "white" }, -- set NonText fg to white
	-- 				--   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
	-- 				Nothing = {}, -- clear highlight of Nothing
	-- 			},
	-- 			-- Or you can also use it like a function to get color from theme
	-- 			-- overrides = function (colors)
	-- 			--   return {
	-- 			--     NonText = { fg = colors.white }, -- set NonText fg to white of theme
	-- 			--   }
	-- 			-- end,
	-- 		})
	--
	-- 		require("lualine").setup({
	-- 			options = {
	-- 				-- ...
	-- 				theme = "dracula-nvim",
	-- 				-- ...
	-- 			},
	-- 		})
	--
	-- 		vim.cmd.colorscheme("dracula")
	-- 	end,
	-- },

	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.o.background = "dark" -- or 'light'
			-- default config
			require("solarized").setup({
				transparent = true, -- enable transparent background
				palette = "solarized", -- or selenized, solarized
				styles = {
					comments = { italic = true },
					functions = { bold = true },
					variables = { bold = true },
					numbers = { bold = true },
					constants = { bold = true },
					parameters = { bold = true },
					keywords = { bold = true },
					types = { bold = true },
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

			-- vim.cmd.colorscheme("solarized")
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
				markdown = { "markdownlint" },
				vim = { "vint" },
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
				-- INFO: telescope symbols
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
				-- INFO: telescope extension configs
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

			-- INFO: snippets customization
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
					{ name = "buffer" },
					{ name = "luasnip" },
					{ name = "nvim_lsp" },
					{ name = "nvim_lsp_document_symbol" },
					{ name = "nvim_lsp_signature_help" },
					{ name = "nvim_lua" },
					{ name = "path" },
				}),
			})
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			local on_attach_vim = function(client)
				require("completion").on_attach(client)
			end

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
				on_attach = on_attach_vim,
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
				on_attach = on_attach_vim,
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
			lconf.vimls.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- EMMET
			lconf.emmet_ls.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- JAVASCRIPT
			lconf.eslint.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- TYPESCRIPT
			lconf.tsserver.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- HTML
			lconf.html.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- CSS
			lconf.cssls.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- BASH
			lconf.bashls.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- PYTHON
			lconf.pylsp.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- VIM
			lconf.vimls.setup({ capabilities = capabilities, on_attach = on_attach_vim })

			-- RUST
			lconf.rust_analyzer.setup({
				capabilities = capabilities,
				on_attach = on_attach_vim,
				cmd = {
					"rustup",
					"run",
					"stable",
					"rust-analyzer",
				},
			})

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

					markdown = {
						require("formatter.filetypes.markdown").markdown_toc,
					},

					-- markdown = {
					-- 	require("formatter.filetypes.markdown").markdown_toc,
					-- },
					--

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
	{
		"ThePrimeagen/harpoon",
		config = function()
			require("harpoon").setup()
		end,
	},

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
		opts = {
			plugins = {
				marks = true, -- shows a list of your marks on ' and `
				registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
				-- the presets plugin, adds help for a bunch of default keybindings in Neovim
				-- No actual key bindings are created
				spelling = {
					enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
					suggestions = 20, -- how many suggestions should be shown in the list?
				},
				presets = {
					operators = true, -- adds help for operators like d, y, ...
					motions = true, -- adds help for motions
					text_objects = true, -- help for text objects triggered after entering an operator
					windows = true, -- default bindings on <c-w>
					nav = true, -- misc bindings to work with windows
					z = true, -- bindings for folds, spelling and others prefixed with z
					g = true, -- bindings for prefixed with g
				},
			},
			-- add operators that will trigger motion and text object completion
			-- to enable all native operators, set the preset / operators plugin above
			operators = { gc = "Comments" },
			key_labels = {
				-- override the label used to display some keys. It doesn't effect WK in any other way.
				-- For example:
				-- ["<space>"] = "SPC",
				-- ["<cr>"] = "RET",
				-- ["<tab>"] = "TAB",
			},
			motions = {
				count = true,
			},
			icons = {
				breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
				separator = "➜", -- symbol used between a key and it's label
				group = "+", -- symbol prepended to a group
			},
			popup_mappings = {
				scroll_down = "<c-d>", -- binding to scroll down inside the popup
				scroll_up = "<c-u>", -- binding to scroll up inside the popup
			},
			window = {
				border = "single", -- none, single, double, shadow
				position = "bottom", -- bottom, top
				margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
				padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
				winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
				zindex = 1000, -- positive value to position WhichKey above other floating windows.
			},
			layout = {
				height = { min = 4, max = 25 }, -- min and max height of the columns
				width = { min = 20, max = 50 }, -- min and max width of the columns
				spacing = 3, -- spacing between columns
				align = "left", -- align columns left, center or right
			},
			ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
			hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
			show_help = true, -- show a help message in the command line for using WhichKey
			show_keys = true, -- show the currently pressed key and its label as a message in the command line
			triggers = "auto", -- automatically setup triggers
			-- triggers = {"<leader>"} -- or specifiy a list manually
			-- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
			triggers_nowait = {
				-- marks
				"`",
				"'",
				"g`",
				"g'",
				-- registers
				'"',
				"<c-r>",
				-- spelling
				"z=",
			},
			triggers_blacklist = {
				-- list of mode / prefixes that should never be hooked by WhichKey
				-- this is mostly relevant for keymaps that start with a native binding
				i = { "j", "k" },
				v = { "j", "k" },
			},
			-- disable the WhichKey popup for certain buf types and file types.
			-- Disabled by default for Telescope
			disable = {
				buftypes = {},
				filetypes = {},
			},
		},
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
