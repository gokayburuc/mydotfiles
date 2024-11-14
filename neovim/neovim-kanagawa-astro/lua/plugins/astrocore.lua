-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- : We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>

        -- colorcolumn = "80", -- sets vim.opt.colorcolumn
        autoindent = true, --sets vim.opt.autoindent
        backup = false, -- sets vim.opt.backup
        conceallevel = 1, -- sets vim.opt.conceallevel
        cursorcolumn = false, -- sets vim.opt.cursorcolumn
        cursorline = false, -- sets vim.opt.cursorline
        hlsearch = true, -- sets vim.opt.hlsearch
        ignorecase = true, -- sets vim.opt.ignorecase
        incsearch = true, -- sets vim.opt.incsearch
        number = true, -- sets vim.opt.number
        relativenumber = true, -- sets vim.opt.relativenumber
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        smartcase = true, -- sets vim.opt.smartcase
        smartindent = true, -- sets vim.opt.smartindent
        spell = false, -- sets vim.opt.spell
        swapfile = false, -- sets vim.opt.swapfile
        termguicolors = true, --- sets vim.opt.termguicolors
        wildmenu = true, -- sets vim.opt.wildmenu
        wildoptions = "pum", -- sets vim.opt.wildoptions
        winblend = 10, -- sets vim.opt.winblend  : Transparency for float windows
        wrap = false, -- sets vim.opt.wrap
        writebackup = false, -- sets vim.opt.writebackup
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- : `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- : keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,

        -- :  Trouble todo filter = {tag = {TODO,FIX,FIXME}}
        ["<leader>fe"] = {
          ":Trouble todo filter = {tag = {TODO,FIX,FIXME}}<CR>",
          desc = "Todo Trouble - TODO,FIX",
          silent = true,
          noremap = true,
          nowait = true,
        },

        ["<leader>fd"] = {
          ":TodoTelescope keywords=TODO,FIX,FIXIT,FIXME<CR>",
          desc = "Find TODOs - FIX, TODO",
          noremap = true,
          nowait = true,
          silent = true,
        },

        -- Telescope Treesitter
        ["<leader>fs"] = {
          -- FIX: Telescope treesitter => key
          ":Telescope treesitter<CR>",
          desc = "Telescope - Treesitter",
          noremap = true,
          nowait = true,
          silent = true,
        },

        -- Telescope Highlights
        ["<leader>fH"] = {
          ":Telescope highlights<CR>",
          desc = "Find Highlights",
          noremap = true,
          nowait = true,
          silent = true,
        },

        -- :  undotree
        ["<leader><leader>u"] = { ":UndotreeToggle<cr>", desc = "Undotree", silent = true, noremap = true },

        --FIX: oil => change oil keymap
        -- : Oil (better explorer)
        ["<leader><leader>o"] = { ":Oil<cr>", desc = "Oil", silent = true, noremap = true },

        --  : TELESCOPE - current_buffer_fuzzy_find
        ["<leader>fz"] = {
          function() require("telescope.builtin").current_buffer_fuzzy_find() end,
          desc = "Telescope - Fuzzy Find",
          silent = true,
          noremap = true,
        },

        -- : split resize
        ["<M-,>"] = { "<c-w>5<" },
        ["<M-.>"] = { "<c-w>5>" },
        ["<M-t>"] = { "<c-w>+" },
        ["<M-s>"] = { "<c-w>-" },

        --: select all
        ["<leader><leader>ca"] = { "<Esc>gg<S-v>G<CR>", desc = "Select All" },

        -- : harpoon
        -- Harpoon : Quick Menu
        ["<leader>m"] = {
          ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
          noremap = false,
          silent = true,
          desc = "Harpoon - Quick Menu",
        },
        -- Harpoon : Add
        ["<leader>mb"] = {
          ':lua require("harpoon.mark").add_file()<CR>',
          noremap = true,
          silent = true,
          desc = "Harpoon - Add (Bookmark)",
        },
        -- Harpoon : Previous
        ["<leader><leader>1"] = {
          ':lua require("harpoon.ui").nav_prev()<CR>',
          noremap = true,
          silent = true,
          desc = "Harpoon - Previous ",
        },
        -- Harpoon : Next
        ["<leader><leader>2"] = {
          ':lua require("harpoon.ui").nav_next()<CR>',
          noremap = true,
          silent = true,
          desc = "Harpoon - Next ",
        },
        -- Harpoon : Navigage 1
        ["<leader>1"] = {
          ": lua require('harpoon.ui').nav_file(1)<CR>",
          silent = true,
          noremap = true,
          desc = "Harpoon - Navigate File 1",
        },
        -- Harpoon : Navigage 2

        ["<leader>2"] = {
          ": lua require('harpoon.ui').nav_file(2)<CR>",
          silent = true,
          noremap = true,
          desc = "Harpoon - Navigate File 2",
        },

        -- Harpoon : Navigage 3

        ["<leader>3"] = {
          ": lua require('harpoon.ui').nav_file(3)<CR>",
          silent = true,
          noremap = true,
          desc = "Harpoon - Navigate File 3",
        },
        -- Harpoon : Navigage 4

        ["<leader>4"] = {
          ": lua require('harpoon.ui').nav_file(4)<CR>",
          silent = true,
          noremap = true,
          desc = "Harpoon - Navigate File 4",
        },
        -- Harpoon : Navigage 5

        ["<leader>5"] = {
          ": lua require('harpoon.ui').nav_file(5)<CR>",
          silent = true,
          noremap = true,
          desc = "Harpoon - Navigate File 5",
        },
        --
        -- Telescope Emoji
        ["<leader><leader>te"] = {
          ":Telescope emoji<cr>",
          noremap = true,
          silent = true,
          desc = "Telescope - Emoji ",
        },
      },
      v = {
        -- : CarbonNow
        ["<leader><leader><F12>"] = {
          ":CarbonNow<cr>",
          desc = "Carbon Now",
          silent = true,
          noremap = true,
        },
      },
    },
  },
}
