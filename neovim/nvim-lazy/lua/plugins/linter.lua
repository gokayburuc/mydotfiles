return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linter_by_ft = {
            javascript = {"eslint_d"},
            elixir = {"trivy"},
            lua = {"luacheck"},
            python = {"flake8"},
        }
    end,
}

-- TODO: linter ayarlarını tekrar değerlendir
