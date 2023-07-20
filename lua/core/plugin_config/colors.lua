function ColorMe(color)

   -- COLORSCHEME 
    -- color = color or "melange"
    -- color = color or "oh-lucy"
    color = color or "NeoSolarized"
    -- color = color or "gruvbox"
    -- color = color or "zephyr"
    -- color = color or "ayu"
    vim.o.background="dark"
    vim.cmd.colorscheme(color)

    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end

ColorMe()
