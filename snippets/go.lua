local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("go", {
    s(
        "errnil",
        {
            t({"if err != nil {", "\t"}),
            t("return nil, err"),
            t({"", "}"}),
        }
    ),
})
