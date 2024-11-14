return {
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  config = function()
    local ns = require "neoscroll"

    ns.setup {
      easing = "cubic",
      performance_mode = true,
    }
  end,
  enabled = true,
}
