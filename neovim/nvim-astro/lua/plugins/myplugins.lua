return {
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "barrett-ruth/live-server.nvim",
    build = "pnpm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = true,
  },
  { "junegunn/vim-easy-align" },
  { "mbbill/undotree" },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() require("lualine").setup {} end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup {
        -- FIX: notify - transparent background
        background_colour = "#000000",
      }
    end,
  },
  { "ThePrimeagen/harpoon", dependencies = { "nvim-lua/plenary.nvim" } },

  {
    "ellisonleao/carbon-now.nvim",
    lazy = true,
    cmd = "CarbonNow",
    opts = {
      base_url = "https://carbon.now.sh/",
      open_cmd = "xdg-open",
      options = {
        bg = "gray",
        drop_shadow_blur = "68px",
        drop_shadow = false,
        drop_shadow_offset_y = "20px",
        font_family = "JetBrains Mono",
        font_size = "18px",
        line_height = "133%",
        line_numbers = true,
        theme = "material",
        titlebar = "Made with carbon-now.nvim",
        watermark = false,
        width = "680",
        window_theme = "sharp",
        padding_horizontal = "0px",
        padding_vertical = "0px",
      },
    },
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function() require("nvim-highlight-colors").setup {} end,
  },
  { "wakatime/vim-wakatime", lazy = false },
  { "mechatroner/rainbow_csv" },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup {}
    end,
  },
}
