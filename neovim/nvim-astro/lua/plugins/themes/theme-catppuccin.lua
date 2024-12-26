return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config = function()
      local catppuccin = require "catppuccin"

      -- local macchiato = require("catppuccin.palettes").get_palette "macchiato"

      catppuccin.setup {
        flavour = "macchiato",
        term_colors = true,
        background = { -- :h background
          light = "macchiato",
          dark = "macchiato",
        },
        transparent_background = true,

        no_italic = false,
        no_bold = false,
        no_underline = false,

        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {
          all = {
            base = "#080808",
            crust = "#080808",
          },
        },
        integrations = {
          alpha = true,
          cmp = true,
          dap = true,
          dap_ui = true,
          dashboard = true,
          diffview = false,
          flash = true,
          gitsigns = true,
          markdown = true,
          neogit = true,
          neotree = true,
          nvimtree = true,
          ufo = true,
          rainbow_delimiters = true,
          render_markdown = true,
          telescope = { enabled = true },
          treesitter_context = true,
          barbecue = {
            dim_dirname = true,
            bold_basename = true,
            dim_context = false,
            alt_background = false,
          },
        },
        highlight_overrides = {
          macchiato = function(C)
            return {
              NvimTreeNormal = { bg = C.none },
              CmpBorder = { fg = C.none },
              Pmenu = { bg = C.none },
              NormalFloat = { bg = C.none },
              WinSeparator = { bg = C.none, fg = C.none },
              TelescopeBorder = { link = "FloatBorder" },
              CursorLine = { bg = C.none },
              Cursor = { bg = "#FFFFFF" },
              LuaLine = { bg = C.none },
            }
          end,
        },
      }
    end,
  },
}
