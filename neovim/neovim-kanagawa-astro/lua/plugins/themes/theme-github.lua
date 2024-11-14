return {
  "projekt0n/github-nvim-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  -- config = function()
  --   local github = require "github-theme"
  --   github.setup {
  --     options = {
  --       transparent = true,
  --       dim_inactive = true,
  --       terminal_colors = true,
  --       styles = {
  --         comments = "italic",
  --         conditionals = "bold",
  --         constants = "bold",
  --         functions = "bold",
  --         keywords = "bold",
  --         numbers = "NONE",
  --         operators = "bold",
  --         strings = "NONE",
  --         types = "bold",
  --         variables = "bold",
  --       },
  --       darken = {
  --         floats = true,
  --         sidebars = {
  --           "terminal",
  --           "qf",
  --         },
  --       },
  --       modules = {
  --         notify = {
  --           enable = true,
  --         },
  --       },
  --     },
  --   }
  -- end,
}
