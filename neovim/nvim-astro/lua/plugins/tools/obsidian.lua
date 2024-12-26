return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "programming",
        path = "~/Documents/vaults/programming/",
      },
      {
        name = "research-buruc",
        path = "~/Documents/vaults/research-buruc/",
      },
      {
        name = "languages",
        path = "~/Documents/vaults/languages/",
      },
      {
        name = "research-ottomans",
        path = "~/Documents/vaults/research-ottomans/",
      },
      {
        name = "logs",
        path = "~/Documents/vaults/logs/",
      },
      {
        name = "research-history",
        path = "~/Documents/vaults/research-history/",
      },
    },

    log_level = vim.log.levels.INFO,

    notes_subdir = "00-inbox",
    new_notes_location = "notes_subdir",

    daily_notes = {
      folder = "00-logs",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "journal", "daily", "daily-notes" },
      template = nil,
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    templates = {
      subdir = "00-templates",
      folder = "00-templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },

    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function() return require("obsidian").util.gf_passthrough() end,
        opts = { noremap = false, expr = true, buffer = true },
      },
    },
    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
      name = "telescope.nvim",
      -- Optional, configure key mappings for the picker. These are the defaults.
      -- Not all pickers support all mappings.
      note_mappings = {
        -- Create a new note from your query.
        new = "<C-x>",
        -- Insert a link to the selected note.
        insert_link = "<C-l>",
      },
      tag_mappings = {
        -- Add tag(s) to current note.
        tag_note = "<C-x>",
        -- Insert a tag at the current location.
        insert_tag = "<C-l>",
      },
    },
  },
}
