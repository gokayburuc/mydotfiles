vim.g.loaded_netrw = 1 --explore settings 
vim.g.loaded_netrwPlugin = 1 -- explore plugin settings 
vim.opt.termguicolors = true -- termguicolor support

require("nvim-tree").setup()

-- KEYMAP 
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
