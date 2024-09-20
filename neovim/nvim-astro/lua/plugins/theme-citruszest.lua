return {
  "zootedb0t/citruszest.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("citruszest").setup {
      option = {
        transparent = true, -- Enable/Disable transparency
        bold = true,
        italic = true,
      },
      -- Override default highlight style in this table
      -- E.g If you want to override `Constant` highlight style
      style = {
        -- This will change Constant foreground color and make it bold.
        Constant = { bold = true },
        Keyword = { bold = true },
        Function = { bold = true },
        Operator = { bold = true },
        Comment = { bold = true, italic = true }, -- fg="#FFFFFF"
      },
    }
  end,
}
