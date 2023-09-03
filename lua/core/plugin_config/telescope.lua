local builtin = require('telescope.builtin')

-- telescope 
vim.keymap.set('n', '<c-f>',       builtin.find_files,           {})
vim.keymap.set('n', '<Space>fg',   builtin.live_grep,            {})
vim.keymap.set('n', '<leader>fb',  builtin.buffers,              {})
vim.keymap.set('n', '<leader>fh',  builtin.help_tags,            {})
vim.keymap.set('n', '<leader>fgi', builtin.git_files,            {})
vim.keymap.set('n', '<leader>fi',  builtin.colorscheme,          {})
vim.keymap.set('n', '<leader>ft',  builtin.treesitter,           {})
vim.keymap.set('n', '<leader>fl',  builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fc',  builtin.commands,             {})


