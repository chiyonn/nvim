local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
  s("new", fmt([[
        type {} struct {{
            {}
        }}

        func New{}() *{} {{
            return &{}{{}}
        }}
    ]], {
    i(1, "MyType"),    -- オブジェクト名にカーソルが当たる
    i(2, "// fields"), -- フィールド
    rep(1),            -- 関数名の NewXxx にも同じ名前を使用
    rep(1),            -- 戻り値の型も同じ
    rep(1),            -- return &Xxx{} の中も同じ
  }))
})
