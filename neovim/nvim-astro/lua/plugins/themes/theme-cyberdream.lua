return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup {
      -- Enable transparent background
      transparent = true,

      -- Enable italics comments
      italic_comments = false,

      -- Replace all fillchars with ' ' for the ultimate clean look
      hide_fillchars = false,

      -- Modern borderless telescope theme - also applies to fzf-lua
      borderless_telescope = true,

      -- Set terminal colors used in `:terminal`
      terminal_colors = true,

      -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
      cache = false,

      theme = {
        variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
        highlights = {},

        colors = {},
      },

      extensions = {
        alpha = true,
        blinkcmp = true,
        cmp = true,
        dashboard = true,
        fzflua = true,
        gitpad = true,
        gitsigns = true,
        grapple = true,
        grugfar = true,
        heirline = true,
        helpview = true,
        hop = true,
        indentblankline = true,
        kubectl = true,
        lazy = true,
        leap = true,
        markdown = true,
        markview = true,
        mini = true,
        noice = true,
        neogit = true,
        notify = true,
        rainbow_delimiters = true,
        telescope = true,
        treesitter = true,
        treesittercontext = true,
        trouble = true,
        whichkey = true,
      },
    }
  end,
}
