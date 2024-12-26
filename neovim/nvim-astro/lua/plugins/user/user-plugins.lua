return {
  { "junegunn/vim-easy-align" },
  { "mbbill/undotree" },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() require("lualine").setup {} end,
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function() require("nvim-highlight-colors").setup {} end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  { "junegunn/fzf", build = "./install --bin" },
}
