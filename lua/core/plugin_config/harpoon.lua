local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

-- visual mode 
-- /mark/ui/g 
-- change all mark to ui
--

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<F7>",function()  ui.nav_prev() end)
vim.keymap.set("n", "<F8>",function() ui.nav_next() end)


