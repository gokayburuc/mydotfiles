return {
  "Tsuzat/NeoSolarized.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    local ok_status, NeoSolarized = pcall(require, "NeoSolarized")

    if not ok_status then return end

    -- FIX:color override

    -- Default Setting for NeoSolarized

    NeoSolarized.setup {
      style = "dark", -- "dark" or "light"
      transparent = false, -- true/false; Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
      styles = {
        -- Style to be applied to different syntax groups
        comments = { italic = true, bold = true },
        keywords = { italic = true, bold = true },
        functions = { bold = true },
        variables = {},
        string = { italic = true },
        underline = false, -- true/false; for global underline
        undercurl = false, -- true/false; for global undercurl
      },
    }
  end,
}
