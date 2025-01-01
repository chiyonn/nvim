local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
  s(
    "class", 
    fmt(
      [[
      class {}:
          def __init__(self, self):
              pass
      ]],
      {
        i(1, "ClassName")  -- クラス名
      }
    )
  )
})
