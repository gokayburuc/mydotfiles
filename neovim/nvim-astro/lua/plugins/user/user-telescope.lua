return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup {
        defaults = {
          path_display = { "shorten" },
          find_command = { "rg", "--smart-case" },
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
          prompt_prefix = "🔍 ",
          selection_caret = "⚡ ",
          entry_prefix = "🔌 ",

          top_pane = {
            -- height = 25,
            -- preview_cutoff = 120,
            -- prompt_position = "top",
          },
          layout_strategy = "horizontal",
          layout_config = {
            -- height = 0.95,
            -- prompt_position = "top",
            -- scroll_speed = 5,
            -- width = 0.95,
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
          emoji = {
            action = function(emoji)
              -- argument emoji is a table.
              -- {name="", value="", cagegory="", description=""}

              vim.fn.setreg("*", emoji.value)
              print([[Press p or "*p to paste this emoji]] .. emoji.value)

              -- insert emoji when picked
              vim.api.nvim_put({ emoji.value }, "c", false, true)
            end,
          },
        },
        pickers = {
          find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
            theme = "ivy", -- default, dropdown, ivy
          },
          live_grep = {
            theme = "ivy",
            find_command = {
              "rg",
              "--smart-case",
            },
          },
          current_buffer_fuzzy_find = {
            find_command = { "rg" },
            theme = "ivy",
          },
          grep_string = {
            find_command = { "rg" },
            theme = "ivy",
          },
          help_tags = {
            find_command = { "rg" },
            theme = "ivy",
          },
          lsp_document_symbols = {
            find_command = { "rg" },
          },
          man_pages = {
            find_command = { "rg" },
            theme = "ivy",
          },
          notify = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
        },
      }

      require("telescope").load_extension "lazygit"
      require("telescope").load_extension "fzf"
      require("telescope").load_extension "notify"
      require("telescope").load_extension "emoji"
    end,
  },
}
