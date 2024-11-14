return {
  "maxmx03/solarized.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    styles = {
      types = { italic = false, bold = false },
      functions = { italic = false, bold = true },
      parameters = { italic = false, bold = false },
      comments = { italic = true, bold = false },
      strings = { italic = false, bold = false },
      keywords = { italic = false, bold = true },
      variables = { italic = false, bold = true },
      constants = { italic = false, bold = true },
    },

    plugins = {
      treesitter = true,
      lspconfig = true,
      navic = true,
      cmp = true,
      indentblankline = true,
      neotree = true,
      nvimtree = true,
      whichkey = true,
      dashboard = true,
      gitsigns = true,
      telescope = true,
      noice = true,
      hop = true,
      ministatusline = true,
      minitabline = true,
      ministarter = true,
      minicursorword = true,
      notify = true,
      rainbowdelimiters = true,
      bufferline = true,
      lazy = true,
      rendermarkdown = true,
      ale = true,
      coc = true,
      leap = true,
      alpha = true,
      yanky = true,
      gitgutter = true,
      mason = true,
      flash = true,
    },
    error_lens = {
      text = true,
      symbol = true,
    },
    transparent = {
      enabled = false,
      pmenu = true,
      normal = true,
      normalfloat = true,
      neotree = true,
      nvimtree = true,
      whichkey = true,
      telescope = true,
      lazy = true,
    },

    on_highlights = nil,
    -- FIX: max-solarized => override the background color
    on_colors = nil,
    -- TODO: max-solarized => check the selenized color palette
    palette = "solarized", -- solarized (default) | selenized
    -- TODO: max-solarized => check the variants and get screenshoots
    variant = "spring", -- "spring" | "summer" | "autumn" | "winter" (default)
  },
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = "dark"
    require("solarized").setup(opts)
  end,
}
