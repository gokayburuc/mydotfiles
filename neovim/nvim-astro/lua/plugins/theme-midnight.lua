return {
  "dasupradyumna/midnight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local midnight = require "midnight"

    -- INFO: Color Highlighting
    -- local colors = require "midnight.colors"
    -- local p = colors.palette -- raw color palette
    -- local c = colors.components -- component color palette

    -- TODO:  color highlight in midnight lua
    midnight.setup {
      HighlightGroup = {
        -- fg = ForegroundColor, -- :h guifg
        -- bg = BackgroundColor, -- :h guibg
        -- sp = SpecialColor, -- :h guisp
        -- style = RenderStyle, -- :h attr-list
        -- -- OR
        -- link = TargetHiglightGroup -- :h :hi-link (link to "TargetHiglightGroup")
        -- -- OR
        -- clear = true -- :h :hi-clear (clear "HighlightGroup"; `false` ignores this option)
      },
    }
  end,
}
