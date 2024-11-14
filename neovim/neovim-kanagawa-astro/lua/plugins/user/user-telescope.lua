return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-snippets.nvim",
      "norcalli/snippets.nvim",
    },
    config = function()
      require("telescope").setup {
        defaults = {
          path_display = { "truncate" },
          find_command = { "rg", "--smart-case" },
          file_ignore_patterns = {
            "node_modules",
            ".next",
            "package-lock.json",
            "yarn.lock",
            ".git",
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
          selection_caret = "🚨 ",
          entry_prefix = "🔹 ",
          layout_strategy = "flex",
          layout_config = {
            preview_cutoff = 20, -- Only show preview if window is wider than this
            width = 0.75, -- Set the width of the Telescope window
            prompt_position = "top",
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
            theme = "ivy",
          },
          live_grep = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
          current_buffer_fuzzy_find = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
          grep_string = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
          help_tags = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
          lsp_document_symbols = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
          man_pages = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
          notify = {
            theme = "ivy",
            find_command = { "rg", "--smart-case" },
          },
          fd = {
            theme = "ivy",
          },

          -- FIX: Telescope => todo comments smart paths
          ["todo-comments"] = {
            path_display = "truncate",
          },
        },
      }

      require("telescope").load_extension "emoji"
      require("telescope").load_extension "fzf"
      require("telescope").load_extension "lazygit"
      require("telescope").load_extension "notify"
      require("telescope").load_extension "snippets"
    end,
  },
}
