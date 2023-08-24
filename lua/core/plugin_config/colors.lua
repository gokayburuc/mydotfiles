function ColorMe(color)
    -- color = color or "gruvbox"
    -- color = color or "NeoSolarized"
    color = color or "midnight"
    -- FIXME: auto select day or night 
    -- vim.o.background="light"
    vim.o.background="dark"
    vim.cmd.colorscheme(color)

    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end

ColorMe()
