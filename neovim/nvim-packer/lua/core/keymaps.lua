local builtin = require("telescope.builtin")
local opts = {noremap = true}

-- NVIM TREE 
vim.keymap.set("n", "<C-n>",":NvimTreeToggle<CR>")

-- TOGGLE TERM 
vim.keymap.set("n", "<leader><leader>t",":ToggleTerm<CR>", opts)

-- UNDOTREE 
vim.keymap.set("n", "<leader><F6>",":UndotreeShow<CR>")
vim.keymap.set("n", "<leader><F7>",":UndotreeHide<CR>")

-- SYMBOLS OUTLINE

vim.keymap.set("n", "<leader><F8>",":SymbolsOutlineOpen<CR>")
vim.keymap.set("n", "<leader><F9>",":SymbolsOutlineClose<CR>")

-- TODO 
vim.keymap.set("n","<leader><F5>", ":TodoTelescope<CR>")

-- TROUBLE 
vim.keymap.set("n","<leader><F3>",":Trouble<CR>")
vim.keymap.set("n","<leader><F4>",":TroubleClose<CR>")

-- telescope main 
vim.keymap.set("n","<leader><F10>",":Telescope<CR>")

-- file management 
vim.keymap.set("n", "<c-f>", builtin.find_files, {})

-- grep 
vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<Space>fs", builtin.grep_string, {})
vim.keymap.set("n","<leader><leader>fg",builtin.current_buffer_fuzzy_find,opts)

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
