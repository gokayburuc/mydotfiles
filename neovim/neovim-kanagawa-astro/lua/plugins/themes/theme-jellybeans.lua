return {
  "wtfox/jellybeans.nvim",
  priority = 1000,
  config = function()
    local jelly = require "jellybeans"
    jelly.setup {}

    -- lualine

    if true then return {} end
    require("lualine").setup {
      options = {
        -- theme = "jellybeans",
        theme = "auto",
      },
    }
  end,
}
