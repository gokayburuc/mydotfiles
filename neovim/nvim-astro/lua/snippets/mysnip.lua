-- luasnip abbrevations

local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- =========================todo comments usage =========================
-- FIX = {
--   icon = " ", -- icon used for the sign, and in search results
--   color = "error", -- can be a hex color, or a named color (see below)
--   alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
--   -- signs = false, -- configure signs for some keywords individually
-- },
-- TODO = { icon = " ", color = "info" },
-- HACK = { icon = " ", color = "warning" },
-- WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
-- PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
-- NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
-- TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
--
--

-- TEST: this is a test note
-- PERF: this is perform
-- WARN: this is a warning
-- FIX: this is a fix
--HACK : hack the box

-- =========================== EXAMPLE ==================================

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

ls.add_snippets("lua", {
  s("hack", {
    t("-- HACK:", i(1)),
  }),
})

ls.add_snippets("lua", {
  s("note", {
    t("-- NOTE:", i(1)),
  }),
})

-- =============================== MARKDOWN ===============================
-- NOTE: markdown snippets

ls.add_snippets("markdown", { s("todo", { t "<!--TODO: ", i(1), t "-->" }) })
ls.add_snippets("markdown", { s("fix", { t "<!--FIX: ", i(1), t "-->" }) })
ls.add_snippets("markdown", { s("note", { t "<!--NOTE: ", i(1), t "-->" }) })

--- ======================== GO ===========================
ls.add_snippets("go", { s("todo", { t "// TODO: ", i(1) }) })
ls.add_snippets("go", { s("fix", { t "// FIX: ", i(1) }) })
ls.add_snippets("go", { s("note", { t "// NOTE: ", i(1) }) })

-- ========================= ALL =========================

ls.add_snippets("all", { s("sep", { t "=========================", i(1), t "=========================" }) })

-- ========================= PYTHON =========================
