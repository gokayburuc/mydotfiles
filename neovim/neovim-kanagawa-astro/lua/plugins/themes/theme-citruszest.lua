return {
  "zootedb0t/citruszest.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("citruszest").setup {
      option = {
        transparent = false,
        bold = true,
        italic = true,
      },
      style = {
        Constant = { bold = true },
        Function = { bold = true },
        Keyword = { bold = true },
        Comment = { italic = true },
        Type = { bold = true },
        Structure = { bold = true },
      },
    }
  end,
}
