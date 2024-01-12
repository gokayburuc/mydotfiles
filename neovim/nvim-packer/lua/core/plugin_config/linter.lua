require("lint").linters_by_ft = {
	markdown = { "vale" },
	javascript = { "eslint_d" },
    python =  {"flake8"},
    lua = {"luacheck"},
    elixir = {"trivy"},
}
