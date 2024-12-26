-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "go",
      "markdown",
      "c",
      -- add more arguments for adding more treesitter parsers
    },
    indent = {
      enable = true,
    },

    incremental_selection = {
      enable = true,
      keymaps = {
        scope_incremental = false,
      },
    },

    auto_install = true,
    additional_vim_regex_highlighting = false,
  },
}
