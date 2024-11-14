return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup {
      themes = {
        "kanagawa",
        "gruvbox",
        "cyberdream",
        "nordern",
      },

      -- TODO: Themery => add more colorschemes
      livePreview = true,
    }
  end,
}
