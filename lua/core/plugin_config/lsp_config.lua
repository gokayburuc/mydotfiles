require("mason").setup()
require("mason-lspconfig").setup()

-- local capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- local lspconfig = require "lspconfig"

        require("lspconfig").lua_ls.setup        { capabilities = capabilities }
        require("lspconfig").rust_analyzer.setup { capabilities = capabilities }
        require("lspconfig").eslint.setup        { capabilities = capabilities }
        require("lspconfig").gopls.setup         { capabilities = capabilities }
        require("lspconfig").jsonls.setup        { capabilities = capabilities }
        require("lspconfig").html.setup          { capabilities = capabilities }
        require("lspconfig").emmet_ls.setup      { capabilities = capabilities }
        require("lspconfig").cssls.setup         { capabilities = capabilities }
        require("lspconfig").bashls.setup        { capabilities = capabilities }
        require("lspconfig").pylsp.setup         { capabilities = capabilities }
        require("lspconfig").yamlls.setup        { capabilities = capabilities }
        require("lspconfig").tsserver.setup      { capabilities = capabilities }
        require("lspconfig").tailwindcss.setup   { capabilities = capabilities }
        require("lspconfig").vimls.setup         { capabilities = capabilities }
require("lspconfig").rust_analyzer.setup         { capabilities = capabilities }
        require("lspconfig").taplo.setup         { capabilities = capabilities }


-- require("lspconfig").jsonlint.setup      { capabilities=capabilities }

require("luasnip.loaders.from_vscode").lazy_load()
