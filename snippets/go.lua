local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("go", {
    s(
        "errnew",
        {
            t("return nil, errors.New(\""),
            i(1),
            t("\")"),
        }
    ),
    s(
        "errf",
        {
            t("return nil, fmt.Errorf(\""),
            i(1),
            t("\")"),
        }
    ),
})
