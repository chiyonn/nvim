
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("table", {
    t("<table>"),
    t({ "", "\t<tr>" }),
    t({ "", "\t\t<td>" }), i(1, "Row 1 Col 1"), t("</td>"),
    t({ "", "\t\t<td>" }), i(2, "Row 1 Col 2"), t("</td>"),
    t({ "", "\t\t<td>" }), i(3, "Row 1 Col 3"), t("</td>"),
    t({ "", "\t</tr>" }),
    t({ "", "\t<tr>" }),
    t({ "", "\t\t<td>" }), i(4, "Row 2 Col 1"), t("</td>"),
    t({ "", "\t\t<td>" }), i(5, "Row 2 Col 2"), t("</td>"),
    t({ "", "\t\t<td>" }), i(6, "Row 2 Col 3"), t("</td>"),
    t({ "", "\t</tr>" }),
    t({ "", "\t<tr>" }),
    t({ "", "\t\t<td>" }), i(7, "Row 3 Col 1"), t("</td>"),
    t({ "", "\t\t<td>" }), i(8, "Row 3 Col 2"), t("</td>"),
    t({ "", "\t\t<td>" }), i(9, "Row 3 Col 3"), t("</td>"),
    t({ "", "\t</tr>" }),
    t({ "", "</table>" }),
  }),
}
