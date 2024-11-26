
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("table", {
    t("<table>"),
    t({ "", "\t<thead>" }),
    t({ "", "\t\t<tr>" }),
    t({ "", "\t\t\t<th>" }), i(1, "Header 1"), t("</th>"),
    t({ "", "\t\t\t<th>" }), i(2, "Header 2"), t("</th>"),
    t({ "", "\t\t\t<th>" }), i(3, "Header 3"), t("</th>"),
    t({ "", "\t\t</tr>" }),
    t({ "", "\t</thead>" }),
    t({ "", "\t<tbody>" }),
    t({ "", "\t\t<tr>" }),
    t({ "", "\t\t\t<td>" }), i(4, "Row 1 Col 1"), t("</td>"),
    t({ "", "\t\t\t<td>" }), i(5, "Row 1 Col 2"), t("</td>"),
    t({ "", "\t\t\t<td>" }), i(6, "Row 1 Col 3"), t("</td>"),
    t({ "", "\t\t</tr>" }),
    t({ "", "\t\t<tr>" }),
    t({ "", "\t\t\t<td>" }), i(7, "Row 2 Col 1"), t("</td>"),
    t({ "", "\t\t\t<td>" }), i(8, "Row 2 Col 2"), t("</td>"),
    t({ "", "\t\t\t<td>" }), i(9, "Row 2 Col 3"), t("</td>"),
    t({ "", "\t\t</tr>" }),
    t({ "", "\t\t<tr>" }),
    t({ "", "\t\t\t<td>" }), i(10, "Row 3 Col 1"), t("</td>"),
    t({ "", "\t\t\t<td>" }), i(11, "Row 3 Col 2"), t("</td>"),
    t({ "", "\t\t\t<td>" }), i(12, "Row 3 Col 3"), t("</td>"),
    t({ "", "\t\t</tr>" }),
    t({ "", "\t</tbody>" }),
    t({ "", "</table>" }),
  }),
}
