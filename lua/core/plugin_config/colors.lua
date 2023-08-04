function ColorMe(color)

   -- COLORSCHEME 
    -- color = color or "NeoSolarized"
    color = color or "gruvbox"

    vim.o.background="dark"
    -- vim.o.background="light"
    vim.cmd.colorscheme(color)

    -- TRANSPARENT BACKGROUND
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end

ColorMe()
