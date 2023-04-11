require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'gruvbox',
    theme = "NeoSolarized",
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}

