return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      -- background_colour = "NotifyBackground",

      background_colour = "#000000",
      fps = 30,
      icons = {
        DEBUG = "",
        ERROR = "",
        INFO = "",
        TRACE = "✎",
        WARN = "",
      },
      level = 2,
      minimum_width = 50,
      render = "minimal",
      stages = "fade_in_slide_out",
      time_formats = {
        notification = "%T",
        notification_history = "%FT%T",
      },
      timeout = 1000,
      top_down = true,
    }
  end,
}
