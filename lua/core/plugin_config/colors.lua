function ColorMe(color)
    -- color = color or "NeoSolarized"
    -- color = color or "gruvbox"  
    -- color = color or "rose-pine"  
    -- color = color or "jellybeans-nvim"
    -- color = color or "nord"
    color = color or 'material'

    vim.cmd.colorscheme(color)

    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})

end

ColorMe()
