return {
  "rebelot/kanagawa.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("kanagawa").setup {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = { bold = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      -- FIX: kanagawa => color override
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {},
        },
      },
      overrides = function(colors) -- add/modify highlights
        return {
          -- FIX: kanagawa => override colors for telescope
          -- Normal = { bg = "none" },
          -- NormalFloat = { bg = "none" },
          -- NormalNC = { bg = "none" },
          -- NormalSB = { bg = "none" },
          -- TelescopeNormal = { bg = "none" },
          -- TelescopeTitle = { bg = "none" },
          -- TelescopeBorder = { bg = "none" },
          -- cmpCompletionBorder = { bg = "none" },
        }
      end,
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus",
      },
    }
  end,
}
