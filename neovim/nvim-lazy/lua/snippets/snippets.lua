local ls = require("luasnip")
local s = ls.snippet -- INFO: snippet options comes here
local t = ls.text_node -- INFO: text nodes starts with t
local i = ls.insert_node -- INFO : insert node comes here

-- ===================== LUA SNIPPETS =======================

ls.add_snippets("lua", { s("todo", { t("-- TODO: "), i(1) }) })
ls.add_snippets("lua", { s("fix", { t("-- FIXME: "), i(1) }) })
ls.add_snippets("lua", { s("hack", { t("-- HACK: "), i(1) }) })
ls.add_snippets("lua", { s("info", { t("-- INFO: "), i(1) }) })
ls.add_snippets("lua", { s("test", { t("-- TEST: "), i(1) }) })
ls.add_snippets("lua", { s("warn", { t("-- WARN: "), i(1) }) })
ls.add_snippets("lua", { s("warnx", { t("-- XXX: "), i(1) }) })
ls.add_snippets("lua", { s("perf", { t("-- PERF: "), i(1) }) })

-- =========================== PYTHON ============================

ls.add_snippets("python", { s("todo", { t("# TODO: "), i(1) }) })
ls.add_snippets("python", { s("fix", { t("# FIXME: "), i(1) }) })
ls.add_snippets("python", { s("hack", { t("# HACK: "), i(1) }) })
ls.add_snippets("python", { s("info", { t("# INFO: "), i(1) }) })
ls.add_snippets("python", { s("test", { t("# TEST: "), i(1) }) })
ls.add_snippets("python", { s("warn", { t("# WARN: "), i(1) }) })
ls.add_snippets("python", { s("warnx", { t("# XXX: "), i(1) }) })
ls.add_snippets("python", { s("perf", { t("# PERF: "), i(1) }) })


-- ========================== JAVASCRIPT ========================= 

ls.add_snippets("javascript", { s("todo", { t("// TODO: "), i(1) }) })
ls.add_snippets("javascript", { s("fix", { t("// FIXME: "), i(1) }) })
ls.add_snippets("javascript", { s("hack", { t("// HACK: "), i(1) }) })
ls.add_snippets("javascript", { s("info", { t("// INFO: "), i(1) }) })
ls.add_snippets("javascript", { s("test", { t("// TEST: "), i(1) }) })
ls.add_snippets("javascript", { s("warn", { t("// WARN: "), i(1) }) })
ls.add_snippets("javascript", { s("warnx", { t("// XXX: "), i(1) }) })
ls.add_snippets("javascript", { s("perf", { t("// PERF: "), i(1) }) })





-- multiline snippets
-- TODO: multiline snippet ls.parser.parse_snippet method

ls.add_snippets("python", {
	ls.parser.parse_snippet(
		"spider",
		[[

import scrapy


class VoaSpider(scrapy.Spider):
    name = "voa-css"
    start_urls = [
        "${1:args1}"
    ]

    def parse(self, response):
        content = response.css('${2:args2}')
        for c in content:
            yield {
                "title": c.css("").extract_first(),
                "link": response.urljoin(c.css("").extract_first())
            }

        # next page algorithm
        pages = response.css('div.menu-pnl__inner a::attr(href)').getall()
        for next_page in pages:
            if next_page is not None:
                next_page = response.urljoin(next_page)
                yield response.follow(next_page, callback=self.parse)
]]
	),
})

-- ============================ MARKDOWN ===============================

ls.add_snippets("markdown", {
	s("todo", {
		t("<!-- TODO:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("markdown", {
	s("fix", {
		t("<!-- FIXME:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("markdown", {
	s("hack", {
		t("<!-- HACK:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("markdown", {
	s("warning", {
		t("<!-- WARNING:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("markdown", {
	s("note", {
		t("<!-- NOTE:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("markdown", {
	s("test", {
		t("<!-- TEST:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("markdown", {
	s("perf", {
		t("<!-- PERF:"),
		i(1),
		t("-->"),
	}),
})

-- =========================== HTML ======================================

ls.add_snippets("html", {
	s("todo", {
		t("<!-- TODO:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("html", {
	s("fix", {
		t("<!-- FIXME:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("html", {
	s("hack", {
		t("<!-- HACK:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("html", {
	s("warning", {
		t("<!-- WARNING:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("html", {
	s("note", {
		t("<!-- NOTE:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("html", {
	s("test", {
		t("<!-- TEST:"),
		i(1),
		t("-->"),
	}),
})

ls.add_snippets("html", {
	s("perf", {
		t("<!-- PERF:"),
		i(1),
		t("-->"),
	}),
})

