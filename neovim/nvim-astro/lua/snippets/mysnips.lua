-- luasnip abbrevations

local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- =============================================================

-- NOTE: lua snippets
-- ls.add_snippets("all", {
--   s("ternary", {
--     -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
--     i(1, "cond"),
--     t " ? ",
--     i(2, "then"),
--     t " : ",
--     i(3, "else"),
--   }),
-- })

-- =============================== LUA ===============================

ls.add_snippets("lua", {
  s("note", {
    t("-- NOTE:", i(1)),
  }),
})

ls.add_snippets("lua", {
  s("todo", {
    t("-- TODO:", i(1)),
  }),
})

ls.add_snippets("lua", {
  s("fix", {
    t("-- FIX:", i(1)),
  }),
})

-- FIX: hack, warn, test, optimize

-- =============================== MARKDOWN ===============================
-- NOTE: markdown snippets

ls.add_snippets("markdown", { s("todo", { t "<!--TODO: ", i(1), t "-->" }) })
ls.add_snippets("markdown", { s("fix", { t "<!--FIX: ", i(1), t "-->" }) })
ls.add_snippets("markdown", { s("note", { t "<!--NOTE: ", i(1), t "-->" }) })
