function ColorMe(color)
    color = color or "NeoSolarized"
    -- color = color or "midnight"
    -- color = color or "nord"
    -- color = color or "arctic"
    -- color = color or "gruvbox"
    -- color = color or "onedarker"
    -- color = color or "github_dark"
    -- color = color or "nightly"
    -- color = color or "zephyr"
    -- color = color or "kanagawa"
    -- color = color or "gruvbox"
    -- color = color or "monokai-pro"
    -- color = color or "citruszest"
    -- color = color or "horizon"
    -- color = color or "melange"

    -- vim.o.background="light"
    vim.o.background="dark"
    vim.cmd.colorscheme(color)

    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end

ColorMe()
