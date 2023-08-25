local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

-- visual mode 
-- /mark/ui/g 
-- change all mark to ui

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>",     ui.toggle_quick_menu)

-- navigation keys <F6> 
vim.keymap.set("n", "<leader>q",      function() ui.nav_prev() end)
vim.keymap.set("n", "<leader>w",      function() ui.nav_next() end)


