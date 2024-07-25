return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup {
      defaults = {
        path_display = { "shorten" },
        file_ignore_patterns = {
          "node_modules/",
          ".next/",
          "package-lock.json",
          "yarn.lock",
          ".git/",
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--hidden",
          "--smart-case",
          "--trim",
          "--glob",
          "!.git*",
        },
        prompt_prefix = "🔭 ",
        selection_caret = "🌟 ",
        entry_prefix = "🌠 ",

        top_pane = {
          height = 25,
          preview_cutoff = 120,
          prompt_position = "top",
        },
        layout_strategy = "horizontal",
        layout_config = {
          height = 0.95,
          prompt_position = "top",
          scroll_speed = 5,
          width = 0.95,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
        live_grep = {
          find_command = {
            "rg",
            "--smart-case",
          },
        },
        current_buffer_fuzzy_find = {
          find_command = { "rg", "--smart-case" },
        },
        grep_string = {
          find_command = { "rg", "--smart-case" },
        },
      },
    }

    require("telescope").load_extension "harpoon"
    require("telescope").load_extension "fzf"
  end,
}
