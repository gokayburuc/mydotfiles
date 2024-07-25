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
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        conceallevel = 1, -- sets vim.opt.conceallevel
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

        -- NOTE: todo-comments mappings
        ["<leader><leader>tq"] = {
          ":TodoQuickFix<cr> ",
          desc = "Todo - QuickFix",
          silent = true,
        },
        ["<leader><leader>tt"] = {
          ":TodoTelescope<cr>",
          desc = "Todo - Telescope",
          silent = true,
        },
        ["<leader><leader>tr"] = {
          ":TodoTrouble<cr>",
          desc = "Todo - Trouble",
          silent = true,
        },

        -- NOTE:  undotree
        ["<leader><leader>u"] = { ":UndotreeToggle<cr>", desc = "Undotree", silent = true },

        -- NOTE: Oil (better explorer)
        ["<leader><leader>o"] = { ":Oil<cr>", desc = "Oil", silent = true, noremap = true },

        -- NOTE: harpoon (quick leap from one mark to another )
        ["<leader>a"] = {
          function() require("harpoon.mark").add_file() end,
          desc = "Harpoon - Add File",
          silent = true,
          noremap = true,
        },

        ---- NOTE: harpoon menu
        ["<leader>m"] = {
          function() require("harpoon.ui").toggle_quick_menu() end,
          desc = "Harpoon - Toggle Quick Menu",
          silent = true,
          noremap = true,
        },

        -- NOTE: harpoon next
        ["<leader>d"] = {
          function() require("harpoon.ui").nav_next() end,
          desc = "Harpoon - Nav Next",
          silent = true,
          noremap = true,
        },

        -- NOTE: harpoon Previous
        ["<leader>s"] = {
          function() require("harpoon.ui").nav_next() end,
          desc = "Harpoon - Nav Previous",
          silent = true,
          noremap = true,
        },

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
        ["<C-a>"] = { "<Esc>gg<S-v>G", desc = "Select All" },
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
