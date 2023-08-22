vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
vim.keymap.set('n','<leader><F6>',":so<CR>:PackerClean<CR>:PackerSync<Enter><CR>")
vim.keymap.set('n','<leader><F4>', ':w<CR>:!go run %<CR>')


