-- undotree
vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)

-- go file execute
vim.keymap.set("n", "<leader><F4>", ":w<CR>:!go run %<CR>")

-- Todo.nvim
vim.keymap.set("n", "<leader><F6>", ":TodoQuickFix<CR>")
vim.keymap.set("n", "<leader>xc", ":TodoTelescope<CR>")

-- FIXME: run any file with one key . Currently works only python
vim.keymap.set("n", "<leader><F7>", ":w<CR>:Format<CR>:!python3 %<CR>")
