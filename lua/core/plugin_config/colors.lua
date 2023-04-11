function ColorMe(color)
    -- COLOR VARIABLE 
    -- color = color or "gruvbox"

    color = color or "NeoSolarized"
    vim.cmd.colorscheme(color)

    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})

end

ColorMe()
