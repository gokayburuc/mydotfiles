return {
  "fcancelinha/nordern.nvim",
  branch = "master",
  priority = 1000,

  opts = {
    -- HACK:  nordern => color overrides
    -- FIX: nordern => brighter opts
    brighter_comments = false, -- changes the hue of comments to be brighter and easier to read.
    brighter_conditionals = false, -- changes the color of booleans, enums and readonly to aurora yellow from light blue.
    italic_comments = true, -- italicizes comments
    transparent = false, -- turns the background transparent (this is a WIP and there might be inconsistencies)
  },
}
