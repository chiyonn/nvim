local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Define snippets for markdown
ls.add_snippets("markdown", {
  -- Table snippet
  s("/table", {
    t({
      "| A | B | C |",
      "|---|---|---|",
      "| | | |",
    })
  }),

  -- Code block snippet
  s("/code", {
    t("```"), i(1, "language"), t({"", ""}),
    i(2, "code here"), t({"", "```"})
  }),

  -- Task list snippet
  s("/tasklist", {
    t({
      "- [ ] Task 1",
      "- [ ] Task 2",
      "- [ ] Task 3",
    })
  }),

  -- Quote block snippet
  s("/quote", {
    t({
      "> "}), i(1, "Your quote here")
  }),

  -- Horizontal rule snippet
  s("/hr", {
    t("---")
  }),

  -- Current date snippet
  s("/today", {
    f(function()
      return os.date("%Y-%m-%d")
    end, {})
  }),

  -- Frontmatter snippet
  s("/frontmatter", {
    t({"---", ""}),
    i(1),
    t({"", "---"})
  })
})

