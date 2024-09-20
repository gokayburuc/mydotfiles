return {
  "navarasu/onedark.nvim",
  config = function()
    local colors = require("onedark.palette").dark
    local onedark = require "onedark"

    onedark.setup {
      -- Main options --
      style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = true, -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = true, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = "italic",
        keywords = "bold,italic",
        functions = "bold,italic",
        strings = "none",
        variables = "bold",
      },

      -- Lualine options --
      lualine = {
        transparent = true, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {
        ["FloatBorder"] = { bg = colors.bg0 },
        ["NormalFloat"] = { bg = colors.bg0 },
        SignColumn = { bg = "$bg0" },
        ColorColumn = { bg = "$bg0" },
        CursorLineNr = { fg = "$orange" },
        Normal = { bg = "$none" },
        Terminal = { bg = "$bg0" },
        FoldColumn = { bg = "$bg1" },
        Folded = { bg = "$bg1" },
        GitSignsAdd = { bg = "$bg0" },
        GitSignsChange = { bg = "$bg0" },
        GitSignsDelete = { bg = "$bg0" },
        GitSignsStagedAdd = { fg = "$blue", bg = "$bg0" },
        GitSignsStagedChange = { fg = "$green", bg = "$bg0" },
        GitSignsStagedDelete = { fg = "$red", bg = "$bg0" },
        DiagnosticError = { bg = "$bg0" },
        DiagnosticWarn = { bg = "$bg0" },
        DiagnosticInfo = { bg = "$bg0" },
        DiagnosticHint = { bg = "$bg0" },
        DiagnosticVirtualTextError = { bg = "$none" },
        DiagnosticVirtualTextWarn = { bg = "$none" },
        DiagnosticVirtualTextInfo = { bg = "$none" },
        DiagnosticVirtualTextHint = { bg = "$none" },
        ["@type.qualifier"] = { fg = "$purple" },
        ["@storageClass"] = { fg = "$purple" },
        ["@interface"] = { fg = "$yellow", fmt = "bold" },
        ["@lsp.type.property"] = { fg = "$cyan" },
        ["@lsp.typemod.variable.defaultLibrary"] = { fg = "$yellow" },
        TSOperator = { fg = "$purple" },
        NvimTreeNormal = { bg = "$bg0" },
        NeoTreeNormal = { bg = "$bg0" },
        NeoTreeNormalNC = { bg = "$bg0" },
        helpCommand = { fg = "$blue" },
        helpExample = { fg = "$blue" },
        ["@label.json"] = { fg = "$blue" },
        ["@variable.member.javascript"] = { fg = "$cyan" },
        DropBarNormalFloat = { bg = "$none" },
        DropBarPreview = { bg = "$none", ctermbg = "$none" },
        DropBarCurrentContext = { bg = "$none" },
        DropBarMenuNormalFloat = { bg = "$none", ctermbg = "$none" },
        -- NormalFloat = { bg = "$none", ctermbg = "$none" },
        -- Visual = { bg = "$none", ctermbg = "$none" },
      }, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
      },
    }
  end,
}
