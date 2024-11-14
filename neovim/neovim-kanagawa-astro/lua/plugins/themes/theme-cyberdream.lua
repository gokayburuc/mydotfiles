return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup {
      -- Enable transparent background
      transparent = false,

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
        highlights = {
          Comment = { fg = "#696969", bg = "NONE", italic = true },
        },

        -- TODO: cyberdream => add neon colors
        -- FIX: cyberdream => add pastel colors alternatively
        colors = {
          -- @field bg "#16181a"|string
          -- @field bgAlt "#1e2124"|string
          -- @field bgHighlight "#3c4048"|string
          -- @field bg_solid? string
          -- @field fg "#ffffff"|string
          -- @field grey "#7b8496"|string
          -- @field blue "#5ea1ff"|string
          -- @field green "#5eff6c"|string
          -- @field cyan "#5ef1ff"|string
          -- @field red "#ff6e5e"|string
          -- @field yellow "#f1ff5e"|string
          -- @field magenta "#ff5ef1"|string
          -- @field pink "#ff5ea0"|string
          -- @field orange "#ffbd5e"|string
          -- @field purple "#bd5eff"|string

          -- FIX: cyberdream => colors overriding
          bg = "#0d0d0d",
          bgAlt = "#131313",
          fg = "#eaffe6",
          green = "#20df30",
          orange = "#ff661a",
          blue = "#1a8cff",
          purple = "#8833ff",
          magenta = "#f589ec",
          yellow = "#e5f25a",
        },
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

-- TODO: cyberdream => create a color palette for neon colors, pastel colors and natural colors using HSL color picker
