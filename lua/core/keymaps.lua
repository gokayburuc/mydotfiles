
-- undotree 
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)

-- go file execute 
vim.keymap.set('n','<leader><F4>', ':w<CR>:!go run %<CR>')

-- Todo.nvim 
vim.keymap.set('n','<leader><F6>', ':TodoTelescope <CR>')
