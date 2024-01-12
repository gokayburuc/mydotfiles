return
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,



        -- keymap for nvim-tree
        vim.keymap.set("n", "<C-n>",":NvimTreeToggle<CR>")
    } 

