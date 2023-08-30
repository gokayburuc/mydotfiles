require("mason").setup()
require("mason-lspconfig").setup()

-- local capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lconf = require "lspconfig"

-- LUA 
lconf.lua_ls.setup        { capabilities = capabilities,
settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }

}

-- GO 
lconf.gopls.setup         { capabilities = capabilities }

-- EMMET 
lconf.emmet_ls.setup      { capabilities = capabilities }

-- JAVASCRIPT 
lconf.eslint.setup        { capabilities = capabilities }
lconf.tsserver.setup      { capabilities = capabilities }

-- HTML 
lconf.html.setup          { capabilities = capabilities }

-- CSS 
lconf.cssls.setup         { capabilities = capabilities }
lconf.tailwindcss.setup   { capabilities = capabilities }

-- BASH 
lconf.bashls.setup        { capabilities = capabilities }

-- PYTHON 
lconf.pylsp.setup         { capabilities = capabilities }
lconf.jedi_language_server.setup         { capabilities = capabilities }



-- YAML 
lconf.yamlls.setup        { capabilities = capabilities }

-- VIM 
lconf.vimls.setup         { capabilities = capabilities }

-- RUST 
lconf.rust_analyzer.setup { capabilities = capabilities }

-- TOML 
lconf.taplo.setup         { capabilities = capabilities }

-- XML
lconf.lemminx.setup       { capabilities = capabilities }

require("luasnip.loaders.from_vscode").lazy_load()
