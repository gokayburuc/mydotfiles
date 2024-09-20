-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
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
        incsearch = true, -- sets vim.opt.incsearch
        number = true, -- sets vim.opt.number
        relativenumber = true, -- sets vim.opt.relativenumber
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        smartindent = true, -- sets vim.opt.smartindent
        spell = false, -- sets vim.opt.spell
        swapfile = false, -- sets vim.opt.swapfile
        termguicolors = true, --- sets vim.opt.termguicolors
        wildmenu = true, -- sets vim.opt.wildmenu
        wildoptions = "pum", -- sets vim.opt.wildoptions
        winblend = 10, -- sets vim.opt.winblend  : Transparency for float windows
        wrap = false, -- sets vim.opt.wrap
        writebackup = false, -- sets vim.opt.writebackup
        smartcase = true, -- sets vim.opt.smartcase
        ignorecase = true, -- sets vim.opt.ignorecase
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
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

        -- FIX: todo trouble fix
        -- NOTE: todo - fix
        ["<leader><leader>tf"] = {
          ":Telescope todo-comments keywords=FIX,FIXME<cr>",
          desc = "Todo Telescope - FIX",
          silent = true,
          noremap = true,
        },

        -- FIX: todo trouble todo
        -- NOTE: todo - todo
        ["<leader><leader>tt"] = {
          ":Telescope todo-comments keywords=TODO<cr>",
          desc = "Todo Telescope - TODO",
          silent = true,
          noremap = true,
        },
        -- FIX: todo trouble - todo
        -- NOTE: todo - note
        ["<leader><leader>tn"] = {
          ":Telescope todo-comments keywords=NOTE,INFO<cr>",
          desc = "Todo Telescope - NOTE,INFO",
          silent = true,
          noremap = true,
        },

        -- NOTE: todo - warn
        ["<leader><leader>tw"] = {
          ":Telescope todo-comments keywords=WARN<cr>",
          desc = "Todo Telescope - WARN",
          silent = true,
          noremap = true,
        },

        -- INFO:  Trouble todo filter = {tag = {TODO,FIX,FIXME}}
        ["<leader><leader>tr"] = {
          ":Trouble todo filter = {tag = {TODO,FIX,FIXME}}",
          desc = "Todo Trouble - TODO,FIX",
          silent = true,
          noremap = true,
        },

        -- NOTE:  undotree
        ["<leader><leader>u"] = { ":UndotreeToggle<cr>", desc = "Undotree", silent = true },

        --FIX: change oil keyword
        -- NOTE: Oil (better explorer)
        ["<leader><leader>o"] = { ":Oil<cr>", desc = "Oil", silent = true, noremap = true },

        -- NOTE : TELESCOPE - current_buffer_fuzzy_find
        ["<leader>fz"] = {
          function() require("telescope.builtin").current_buffer_fuzzy_find() end,
          desc = "Telescope - Fuzzy Find",
          silent = true,
          noremap = true,
        },

        -- INFO: split resize
        ["<M-,>"] = { "<c-w>5<" },
        ["<M-.>"] = { "<c-w>5>" },
        ["<M-t>"] = { "<c-w>+" },
        ["<M-s>"] = { "<c-w>-" },

        --INFO: select all
        ["<leader><leader>ca"] = { "<Esc>gg<S-v>G<CR>", desc = "Select All" },

        -- INFO: neotree
        ["<leader><leader>e"] = {
          "<Esc>:Neotree position=float<CR>",
          desc = "Neotree - Float",
          noremap = true,
          silent = true,
        },
      },
      v = {
        -- NOTE: CarbonNow
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
