return {
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- dark background
      vim.o.background = "dark"

      local solar = require "solarized"
      solar.setup {
        transparent = false, -- enable transparent background
        palette = "solarized", -- or selenized
        styles = {
          comments = { italic = true, bold = true },
          functions = { italic = true, bold = true },
          variables = { italic = true, bold = true },
          numbers = {},
          constants = { bold = true },
          parameters = { bold = true },
          keywords = { bold = true },
          types = { bold = true },
        },
        enables = {
          bufferline = true,
          cmp = true,
          diagnostic = true,
          dashboard = true,
          editor = true,
          gitsign = true,
          hop = true,
          indentblankline = true,
          lsp = true,
          lspsaga = true,
          navic = true,
          neogit = true,
          neotree = true,
          notify = true,
          noice = true,
          semantic = true,
          syntax = true,
          telescope = true,
          tree = true,
          treesitter = true,
          todo = true,
          whichkey = true,
          mini = true,
        },
        highlights = {},
        colors = {},
        theme = "neo", -- or 'neo' , 'default'
        autocmd = true,
      }

      -- vim.cmd.colorscheme = "solarized" -- or selenized
    end,
  },
}
