return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call

  dependencies = {
    "hrsh7th/cmp-emoji", -- add cmp source as dependency of cmp
  },
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000, max_item_count = 5 },
      { name = "luasnip", priority = 750, max_item_count = 3 },
      {
        name = "buffer",
        priority = 500,
        option = {
          get_bufnrs = function() return vim.api.nvim_list_bufs() end,
        },
      },
      { name = "path", priority = 250 },
      { name = "emoji", priority = 700 },
    }

    -- configure `cmp-cmdline` as described in their repo: https://github.com/hrsh7th/cmp-cmdline#setup
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })
    cmp.setup.cmdline(":", {
      -- mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            ignore_cmds = { "Man", "!" },
          },
        },
      }),
    })

    cmp.setup {
      performance = {
        max_view_entries = 7,
        debounce = 3,
        throttle = 3,
        fetching_timeout = 3,
        confirm_resolve_timeout = 3,
        async_budget = 3,
      },
    }
  end,
}
