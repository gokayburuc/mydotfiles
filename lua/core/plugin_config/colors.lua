function ColorMe(color)
    -- color = color or "NeoSolarized"  -- color variable 
    color = color or "thematrix"  -- color variable 
    -- color = color or "rose-pine"  -- color variable 
    vim.cmd.colorscheme(color)

    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})

end

ColorMe()
