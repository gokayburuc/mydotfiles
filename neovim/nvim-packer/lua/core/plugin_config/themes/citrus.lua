    require("citruszest").setup({
        option = {
            transparent = true, -- Enable/Disable transparency
            italic = true,
            bold = true,
        },
        -- Override default highlight style in this table
        -- E.g If you want to override `Constant` highlight style
        style = {
        -- This will change Constant foreground color and make it bold.
        Constant = { fg = "#FFFFFF", bold = true}
        },
    })

