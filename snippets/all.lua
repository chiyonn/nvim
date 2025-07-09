local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("all", {
  s("code", {
    t("```"), i(1, "language"), t({ "", "" }),
    i(2, ""),
    t({ "", "```" }),
  }),
})

