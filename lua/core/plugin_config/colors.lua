function ColorMe(color)
    -- color = color or "gruvbox"
    -- color = color or "arctic"
    -- color = color or "NeoSolarized"
    color = color or "midnight"
    -- color = color or "github_dark_tritanopia"
    -- color = color or "nord"
    -- color = color or "dracula"
    
    -- FIXME: auto select day or night 
    -- vim.o.background="light"
    vim.o.background="dark"
    vim.cmd.colorscheme(color)

    -- FIXME: colorscheme transparency 
    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end

ColorMe()

