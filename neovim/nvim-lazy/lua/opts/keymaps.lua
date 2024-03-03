local builtin = require("telescope.builtin")
local opts = { noremap = true }

-- NVIM TREE
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>", { desc = "NvimTreeToggle" }, opts)

-- SYMBOLS OUTLINE
vim.keymap.set("n", "<leader><F8>", ":SymbolsOutlineOpen<CR>", { desc = "Symbols Outline - Open" })
vim.keymap.set("n", "<leader><F9>", ":SymbolsOutlineClose<CR>", { desc = "Symbols Outline - Close" })

-- UNDOTREE
vim.keymap.set("n", "<leader><F6>", ":UndotreeShow<CR>", { desc = "UndoTree - Show" })
vim.keymap.set("n", "<leader><F7>", ":UndotreeHide<CR>", { desc = "UndoTree - Hide" })

-- INFO: TODO keymaps
vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>",                           { desc = " TodoTelescope - Show" })
vim.keymap.set("n", "<leader>tdf", ":TodoTelescope keywords=FIX,FIXME,FIXIT<CR>", { desc = " TodoTelescope - FIX " })
vim.keymap.set("n", "<leader>tdt", ":TodoTelescope keywords=TODO<CR>",            { desc = " TodoTelescope - TODO " })
vim.keymap.set("n", "<leader>tdw", ":TodoTelescope keywords=WARN,XXX<CR>",        { desc = " TodoTelescope - WARN " })
vim.keymap.set("n", "<leader>tdn", ":TodoTelescope keywords=NOTE,INFO<CR>",       { desc = " TodoTelescope - NOTE " })


-- LSP Saga 
vim.keymap.set("n", "<leader>tr", ":Lspsaga term_toggle<CR>", {desc = "LSPSaga - Toggle Term"})


-- TELESCOPE DIAGNOSTICS
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope - Diagnostics" })

-- file management
vim.keymap.set("n", "<c-f>", builtin.find_files, { desc = "Telescope - File Finder" })

-- grep
vim.keymap.set("n", "<Space>fg", builtin.live_grep, { desc = "Telescope - Live Grep" })
vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "Telescope - Current File Fuzzy Finder" })

-- git
vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Telescope - Git Files" })
vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Telescope - Git Branches" })
vim.keymap.set("n", "<leader>gc", builtin.git_branches, { desc = "Telescope - Git Commits" })

-- commands
vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Telescope - Commands" })

-- help tags
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope - Help Tags" })

-- symbols
vim.keymap.set("n", "<leader>ft", builtin.treesitter, { desc = "Telescope - Treesitter Symbols" })
vim.keymap.set("n", "<leader>fls", builtin.lsp_document_symbols, { desc = "Telescope - LSP Document Symbols" })
vim.keymap.set("n", "<leader>fld", builtin.lsp_definitions, { desc = "Telescope - LSP Definitions" })

-- colorscheme
vim.keymap.set("n", "<leader>fv", builtin.colorscheme, { desc = "Telescope - Colorschemes" })

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- harpoon keymaps
vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Harpoon - Quick Add" })
vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu, { desc = "Harpoon - Toggle Quick Menu" })

vim.keymap.set("n", "<leader>ht", ":Telescope harpoon marks<CR>", { desc = "Harpoon - Telescope Marks" })

-- harpoon navigation keys
vim.keymap.set("n", "<leader>q", function()
	ui.nav_prev()
end, { desc = "Harpoon - Previous Mark" })
vim.keymap.set("n", "<leader>w", function()
	ui.nav_next()
end, { desc = "Harpoon - Next Mark" })


-- lazy 
vim.keymap.set('n', '<leader>l', ':Lazy<CR>', {desc = "Lazy Dashboard"})
