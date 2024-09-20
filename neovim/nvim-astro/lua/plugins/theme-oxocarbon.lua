return {
  "nyoom-engineering/oxocarbon.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    -- INFO: night coder
    vim.opt.background = "dark" -- set this to dark or light
    -- vim.cmd "colorscheme oxocarbon"

    -- INFO: transparent background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  end,
}
