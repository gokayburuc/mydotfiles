return {
  "Tsuzat/NeoSolarized.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    local ok_status, NeoSolarized = pcall(require, "NeoSolarized")
    if not ok_status then return end
    -- local NeoSolarized = require "NeoSolarized"

    -- Default Setting for NeoSolarized

    NeoSolarized.setup {
      style = "dark", -- "dark" or "light"
      transparent = false, -- true/false; Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
      styles = {
        -- Style to be applied to different syntax groups
        comments = { italic = true },
        keywords = { bold = true, italic = true },
        functions = { bold = true },
        variables = { bold = true },
        string = { italic = true },
        underline = true, -- true/false; for global underline
        undercurl = true, -- true/false; for global undercurl
      },
      -- Add specific hightlight groups
      -- FIX: neosolarized => highlight
      -- on_highlights = function(highlights, colors)
      -- highlights.Include.fg = colors.red -- Using `red` foreground for Includes
      -- end,
    }
  end,
}
