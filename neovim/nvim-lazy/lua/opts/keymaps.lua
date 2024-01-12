local builtin = require("telescope.builtin")
local opts = { noremap = true }

-- NVIM TREE
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- TOGGLE TERM
vim.keymap.set("n", "<leader><leader>t", ":ToggleTerm<CR>", opts)

-- UNDOTREE
vim.keymap.set("n", "<leader><F6>", ":UndotreeShow<CR>")
vim.keymap.set("n", "<leader><F7>", ":UndotreeHide<CR>")

-- SYMBOLS OUTLINE
vim.keymap.set("n", "<leader><F8>", ":SymbolsOutlineOpen<CR>")
vim.keymap.set("n", "<leader><F9>", ":SymbolsOutlineClose<CR>")

-- TODO
vim.keymap.set("n", "<leader><F5>", ":TodoTelescope<CR>")

-- TROUBLE
-- vim.keymap.set("n","<leader><F3>",":Trouble<CR>")
-- vim.keymap.set("n","<leader><F4>",":TroubleClose<CR>")

-- telescope main
vim.keymap.set("n", "<leader><F10>", ":Telescope<CR>")

-- file management
vim.keymap.set("n", "<c-f>", builtin.find_files, {})

-- grep
vim.keymap.set("n", "<Space>lg", builtin.live_grep, {})
vim.keymap.set("n", "<Space>gs", builtin.grep_string, {})
vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, opts)

-- help
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- git
-- vim.keymap.set("n", "<leader>gf", builtin.git_files, {})

-- commands
-- vim.keymap.set("n", "<leader>fc", builtin.commands, {})

-- symbols
vim.keymap.set("n", "<leader>ft", builtin.treesitter, {})
vim.keymap.set("n", "<leader>fl", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, {})

-- keymaps
-- vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- harpoon keymaps
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- navigation keys <F6>
vim.keymap.set("n", "<leader>q", function()
	ui.nav_prev()
end)
vim.keymap.set("n", "<leader>w", function()
	ui.nav_next()
end)
