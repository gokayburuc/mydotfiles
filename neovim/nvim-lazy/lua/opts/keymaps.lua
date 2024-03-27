local builtin = require("telescope.builtin")
local opts = { noremap = true }
local vk = vim.keymap

-- OIL
-- vim.keymap.set("n", "<leader><F4>", ":Oil<CR>", { desc = "Oil" }, opts)
vk.set("n", "<leader><F4>", ":Oil<CR>", { desc = "Oil" }, opts)

-- AERIAL
vk.set("n", "<leader>a", ":AerialToggle<CR>", { desc = "AerialToggle" }, opts)

-- FIXME: format keymap : change key
-- FORMAT
vk.set("n", "<leader><c-s>", ":FormatWrite<CR>", { desc = "FormatWrite" }, opts)
vk.set("n", "<leader><c-t>", ":Format<CR>", { desc = "Format" }, opts)

-- NVIM TREE
vk.set("n", "<leader>nt", ":NvimTreeToggle<CR>", { desc = "NvimTreeToggle" }, opts)

-- UNDOTREE
vk.set("n", "<leader><F6>", ":UndotreeShow<CR>", { desc = "UndoTree - Show" })
vk.set("n", "<leader><F7>", ":UndotreeHide<CR>", { desc = "UndoTree - Hide" })

-- INFO: TODO keymaps
vk.set("n", "<leader>td", ":TodoTelescope<CR>", { desc = " TodoTelescope - Show" })
vk.set("n", "<leader>tdf", ":TodoTelescope keywords=FIX,FIXME,FIXIT<CR>", { desc = " TodoTelescope - FIX " })
vk.set("n", "<leader>tdt", ":TodoTelescope keywords=TODO<CR>", { desc = " TodoTelescope - TODO " })
vk.set("n", "<leader>tdw", ":TodoTelescope keywords=WARN,XXX<CR>", { desc = " TodoTelescope - WARN " })
vk.set("n", "<leader>tdn", ":TodoTelescope keywords=NOTE,INFO<CR>", { desc = " TodoTelescope - NOTE " })

-- TELESCOPE DIAGNOSTICS
vk.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope - Diagnostics" })

-- file management
vk.set("n", "<c-f>", builtin.find_files, { desc = "Telescope - File Finder" })

-- grep
vk.set("n", "<Space>fg", builtin.live_grep, { desc = "Telescope - Live Grep" })
vk.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "Telescope - Current File Fuzzy Finder" })

-- FIXME: git files
-- git
vk.set("n", "<leader>gf", builtin.git_files, { desc = "Telescope - Git Files" })
vk.set("n", "<leader>gb", builtin.git_branches, { desc = "Telescope - Git Branches" })
vk.set("n", "<leader>gc", builtin.git_branches, { desc = "Telescope - Git Commits" })

-- FIXME: lazygit
vk.set("n", "<leader><F5>", ":LazyGit<CR>", { desc = "LazyGit" }, opts)

-- commands
vk.set("n", "<leader>fc", builtin.commands, { desc = "Telescope - Commands" })

-- help tags
vk.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope - Help Tags" })

-- symbols
vk.set("n", "<leader>ft", builtin.treesitter, { desc = "Telescope - Treesitter Symbols" })
vk.set("n", "<leader>fls", builtin.lsp_document_symbols, { desc = "Telescope - LSP Document Symbols" })
vk.set("n", "<leader>fld", builtin.lsp_definitions, { desc = "Telescope - LSP Definitions" })

-- colorscheme
vk.set("n", "<leader>fv", builtin.colorscheme, { desc = "Telescope - Colorschemes" })

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- FIXME: harpoon keymaps
-- harpoon keymaps
vk.set("n", "<leader>ha", mark.add_file, { desc = "Harpoon - Quick Add" })
vk.set("n", "<leader>hq", ui.toggle_quick_menu, { desc = "Harpoon - Toggle Quick Menu" })
vk.set("n", "<leader>ht", ":Telescope harpoon marks<CR>", { desc = "Harpoon - Telescope Marks" })

-- harpoon navigation keys
vk.set("n", "<leader>q", function()
	ui.nav_prev()
end, { desc = "Harpoon - Previous Mark" })
vk.set("n", "<leader>w", function()
	ui.nav_next()
end, { desc = "Harpoon - Next Mark" })

-- carbonnow
vk.set("v", "<leader>cn", ":CarbonNow<CR>", { silent = true })

-- lazy
vk.set("n", "<leader>l", ":Lazy<CR>", { desc = "Lazy Dashboard" })
