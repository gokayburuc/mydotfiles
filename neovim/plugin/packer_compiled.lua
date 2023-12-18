-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function("has", { "nvim-0.5" }) ~= 1 then
	vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
	return
end

vim.api.nvim_command("packadd packer.nvim")

local no_errors, error_msg = pcall(function()
	_G._packer = _G._packer or {}
	_G._packer.inside_compile = true

	local time
	local profile_info
	local should_profile = false
	if should_profile then
		local hrtime = vim.loop.hrtime
		profile_info = {}
		time = function(chunk, start)
			if start then
				profile_info[chunk] = hrtime()
			else
				profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
			end
		end
	else
		time = function(chunk, start) end
	end

	local function save_profiles(threshold)
		local sorted_times = {}
		for chunk_name, time_taken in pairs(profile_info) do
			sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
		end
		table.sort(sorted_times, function(a, b)
			return a[2] > b[2]
		end)
		local results = {}
		for i, elem in ipairs(sorted_times) do
			if not threshold or threshold and elem[2] > threshold then
				results[i] = elem[1] .. " took " .. elem[2] .. "ms"
			end
		end
		if threshold then
			table.insert(results, "(Only showing plugins that took longer than " .. threshold .. " ms " .. "to load)")
		end

		_G._packer.profile_output = results
	end

	time([[Luarocks path setup]], true)
	local package_path_str =
		"/home/gokayburuc/.cache/nvim/packer_hererocks/2.1.1699198486/share/lua/5.1/?.lua;/home/gokayburuc/.cache/nvim/packer_hererocks/2.1.1699198486/share/lua/5.1/?/init.lua;/home/gokayburuc/.cache/nvim/packer_hererocks/2.1.1699198486/lib/luarocks/rocks-5.1/?.lua;/home/gokayburuc/.cache/nvim/packer_hererocks/2.1.1699198486/lib/luarocks/rocks-5.1/?/init.lua"
	local install_cpath_pattern = "/home/gokayburuc/.cache/nvim/packer_hererocks/2.1.1699198486/lib/lua/5.1/?.so"
	if not string.find(package.path, package_path_str, 1, true) then
		package.path = package.path .. ";" .. package_path_str
	end

	if not string.find(package.cpath, install_cpath_pattern, 1, true) then
		package.cpath = package.cpath .. ";" .. install_cpath_pattern
	end

	time([[Luarocks path setup]], false)
	time([[try_loadstring definition]], true)
	local function try_loadstring(s, component, name)
		local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
		if not success then
			vim.schedule(function()
				vim.api.nvim_notify(
					"packer.nvim: Error running " .. component .. " for " .. name .. ": " .. result,
					vim.log.levels.ERROR,
					{}
				)
			end)
		end
		return result
	end

	time([[try_loadstring definition]], false)
	time([[Defining packer_plugins]], true)
	_G.packer_plugins = {
		["Comment.nvim"] = {
			config = {
				"\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0",
			},
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/Comment.nvim",
			url = "https://github.com/numToStr/Comment.nvim",
		},
		LuaSnip = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/LuaSnip",
			url = "https://github.com/L3MON4D3/LuaSnip",
		},
		["NeoSolarized.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/NeoSolarized.nvim",
			url = "https://github.com/Tsuzat/NeoSolarized.nvim",
		},
		["arctic.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/arctic.nvim",
			url = "https://github.com/rockyzhang24/arctic.nvim",
		},
		["auto-pairs"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/auto-pairs",
			url = "https://github.com/jiangmiao/auto-pairs",
		},
		["balance-theme.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/balance-theme.nvim",
			url = "https://github.com/MetriC-DT/balance-theme.nvim",
		},
		["bufferline.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
			url = "https://github.com/akinsho/bufferline.nvim",
		},
		["citruszest.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/citruszest.nvim",
			url = "https://github.com/zootedb0t/citruszest.nvim",
		},
		["cmp-buffer"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/cmp-buffer",
			url = "https://github.com/hrsh7th/cmp-buffer",
		},
		["cmp-nvim-lsp"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
			url = "https://github.com/hrsh7th/cmp-nvim-lsp",
		},
		["cmp-nvim-lsp-document-symbol"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
			url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol",
		},
		["cmp-nvim-lsp-signature-help"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
			url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help",
		},
		["cmp-nvim-lua"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
			url = "https://github.com/hrsh7th/cmp-nvim-lua",
		},
		["cmp-path"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/cmp-path",
			url = "https://github.com/hrsh7th/cmp-path",
		},
		cmp_luasnip = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
			url = "https://github.com/saadparwaiz1/cmp_luasnip",
		},
		["colorbuddy.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
			url = "https://github.com/tjdevries/colorbuddy.nvim",
		},
		["darcula-dark.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/darcula-dark.nvim",
			url = "https://github.com/xiantang/darcula-dark.nvim",
		},
		["darcula-solid.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/darcula-solid.nvim",
			url = "https://github.com/briones-gabriel/darcula-solid.nvim",
		},
		["dracula.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/dracula.nvim",
			url = "https://github.com/Mofiqul/dracula.nvim",
		},
		["dressing.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/dressing.nvim",
			url = "https://github.com/stevearc/dressing.nvim",
		},
		["formatter.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/formatter.nvim",
			url = "https://github.com/mhartington/formatter.nvim",
		},
		["friendly-snippets"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/friendly-snippets",
			url = "https://github.com/rafamadriz/friendly-snippets",
		},
		["gitsigns.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
			url = "https://github.com/lewis6991/gitsigns.nvim",
		},
		["gruv-vsassist.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/gruv-vsassist.nvim",
			url = "https://github.com/bartekprtc/gruv-vsassist.nvim",
		},
		["gruvbox.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
			url = "https://github.com/ellisonleao/gruvbox.nvim",
		},
		harpoon = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/harpoon",
			url = "https://github.com/ThePrimeagen/harpoon",
		},
		["kanagawa.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
			url = "https://github.com/rebelot/kanagawa.nvim",
		},
		["live-server.nvim"] = {
			commands = { "LiveServer", "LiveServerStart", "LiveServerStop" },
			loaded = false,
			needs_bufread = false,
			only_cond = false,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/opt/live-server.nvim",
			url = "https://github.com/aurum77/live-server.nvim",
		},
		["lsp-zero.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
			url = "https://github.com/VonHeikemen/lsp-zero.nvim",
		},
		["lspkind.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
			url = "https://github.com/onsails/lspkind.nvim",
		},
		["lualine.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/lualine.nvim",
			url = "https://github.com/nvim-lualine/lualine.nvim",
		},
		["lush.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/lush.nvim",
			url = "https://github.com/rktjmp/lush.nvim",
		},
		["marmot.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/marmot.nvim",
			url = "https://github.com/mattrudder/marmot.nvim",
		},
		["mason-lspconfig.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
			url = "https://github.com/williamboman/mason-lspconfig.nvim",
		},
		["mason.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/mason.nvim",
			url = "https://github.com/williamboman/mason.nvim",
		},
		["material.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/material.nvim",
			url = "https://github.com/marko-cerovac/material.nvim",
		},
		["midnight.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/midnight.nvim",
			url = "https://github.com/dasupradyumna/midnight.nvim",
		},
		["monokai-pro.nvim"] = {
			config = {
				"\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0",
			},
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/monokai-pro.nvim",
			url = "https://github.com/loctvl842/monokai-pro.nvim",
		},
		["night-owl.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/night-owl.nvim",
			url = "https://github.com/oxfist/night-owl.nvim",
		},
		["nord.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nord.nvim",
			url = "https://github.com/gbprod/nord.nvim",
		},
		["nvim-cmp"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-cmp",
			url = "https://github.com/hrsh7th/nvim-cmp",
		},
		["nvim-colorizer.lua"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
			url = "https://github.com/norcalli/nvim-colorizer.lua",
		},
		["nvim-highlight-colors"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-highlight-colors",
			url = "https://github.com/brenoprata10/nvim-highlight-colors",
		},
		["nvim-lspconfig"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
			url = "https://github.com/neovim/nvim-lspconfig",
		},
		["nvim-lspfuzzy"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy",
			url = "https://github.com/ojroques/nvim-lspfuzzy",
		},
		["nvim-surround"] = {
			config = {
				"\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0",
			},
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-surround",
			url = "https://github.com/kylechui/nvim-surround",
		},
		["nvim-tree.lua"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
			url = "https://github.com/nvim-tree/nvim-tree.lua",
		},
		["nvim-treesitter"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
			url = "https://github.com/nvim-treesitter/nvim-treesitter",
		},
		["nvim-ts-autotag"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
			url = "https://github.com/windwp/nvim-ts-autotag",
		},
		["nvim-web-devicons"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
			url = "https://github.com/nvim-tree/nvim-web-devicons",
		},
		["onedark.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/onedark.nvim",
			url = "https://github.com/navarasu/onedark.nvim",
		},
		["packer.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/packer.nvim",
			url = "https://github.com/wbthomason/packer.nvim",
		},
		["plenary.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/plenary.nvim",
			url = "https://github.com/nvim-lua/plenary.nvim",
		},
		["rose-pine"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/rose-pine",
			url = "https://github.com/rose-pine/neovim",
		},
		["solarized-osaka.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/solarized-osaka.nvim",
			url = "https://github.com/craftzdog/solarized-osaka.nvim",
		},
		["telescope-ui-select.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
			url = "https://github.com/nvim-telescope/telescope-ui-select.nvim",
		},
		["telescope.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/telescope.nvim",
			url = "https://github.com/nvim-telescope/telescope.nvim",
		},
		["todo-comments.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
			url = "https://github.com/folke/todo-comments.nvim",
		},
		["tokyonight.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
			url = "https://github.com/folke/tokyonight.nvim",
		},
		["trouble.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/trouble.nvim",
			url = "https://github.com/folke/trouble.nvim",
		},
		undotree = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/undotree",
			url = "https://github.com/mbbill/undotree",
		},
		["vim-colors-lucid"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/vim-colors-lucid",
			url = "https://github.com/cseelus/vim-colors-lucid",
		},
		["vim-easy-align"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/vim-easy-align",
			url = "https://github.com/junegunn/vim-easy-align",
		},
		["vista.vim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/vista.vim",
			url = "https://github.com/liuchengxu/vista.vim",
		},
		["wombat.nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/wombat.nvim",
			url = "https://github.com/ViViDboarder/wombat.nvim",
		},
		["zephyr-nvim"] = {
			loaded = true,
			path = "/home/gokayburuc/.local/share/nvim/site/pack/packer/start/zephyr-nvim",
			url = "https://github.com/glepnir/zephyr-nvim",
		},
	}

	time([[Defining packer_plugins]], false)
	-- Config for: nvim-surround
	time([[Config for nvim-surround]], true)
	try_loadstring(
		"\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0",
		"config",
		"nvim-surround"
	)
	time([[Config for nvim-surround]], false)
	-- Config for: Comment.nvim
	time([[Config for Comment.nvim]], true)
	try_loadstring(
		"\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0",
		"config",
		"Comment.nvim"
	)
	time([[Config for Comment.nvim]], false)
	-- Config for: monokai-pro.nvim
	time([[Config for monokai-pro.nvim]], true)
	try_loadstring(
		"\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0",
		"config",
		"monokai-pro.nvim"
	)
	time([[Config for monokai-pro.nvim]], false)

	-- Command lazy-loads
	time([[Defining lazy-load commands]], true)
	pcall(vim.api.nvim_create_user_command, "LiveServer", function(cmdargs)
		require("packer.load")({ "live-server.nvim" }, {
			cmd = "LiveServer",
			l1 = cmdargs.line1,
			l2 = cmdargs.line2,
			bang = cmdargs.bang,
			args = cmdargs.args,
			mods = cmdargs.mods,
		}, _G.packer_plugins)
	end, {
		nargs = "*",
		range = true,
		bang = true,
		complete = function()
			require("packer.load")({ "live-server.nvim" }, {}, _G.packer_plugins)
			return vim.fn.getcompletion("LiveServer ", "cmdline")
		end,
	})
	pcall(vim.api.nvim_create_user_command, "LiveServerStart", function(cmdargs)
		require("packer.load")({ "live-server.nvim" }, {
			cmd = "LiveServerStart",
			l1 = cmdargs.line1,
			l2 = cmdargs.line2,
			bang = cmdargs.bang,
			args = cmdargs.args,
			mods = cmdargs.mods,
		}, _G.packer_plugins)
	end, {
		nargs = "*",
		range = true,
		bang = true,
		complete = function()
			require("packer.load")({ "live-server.nvim" }, {}, _G.packer_plugins)
			return vim.fn.getcompletion("LiveServerStart ", "cmdline")
		end,
	})
	pcall(vim.api.nvim_create_user_command, "LiveServerStop", function(cmdargs)
		require("packer.load")({ "live-server.nvim" }, {
			cmd = "LiveServerStop",
			l1 = cmdargs.line1,
			l2 = cmdargs.line2,
			bang = cmdargs.bang,
			args = cmdargs.args,
			mods = cmdargs.mods,
		}, _G.packer_plugins)
	end, {
		nargs = "*",
		range = true,
		bang = true,
		complete = function()
			require("packer.load")({ "live-server.nvim" }, {}, _G.packer_plugins)
			return vim.fn.getcompletion("LiveServerStop ", "cmdline")
		end,
	})
	time([[Defining lazy-load commands]], false)

	_G._packer.inside_compile = false
	if _G._packer.needs_bufread == true then
		vim.cmd("doautocmd BufRead")
	end
	_G._packer.needs_bufread = false

	if should_profile then
		save_profiles()
	end
end)

if not no_errors then
	error_msg = error_msg:gsub('"', '\\"')
	vim.api.nvim_command(
		'echohl ErrorMsg | echom "Error in packer_compiled: '
			.. error_msg
			.. '" | echom "Please check your config for correctness" | echohl None'
	)
end
