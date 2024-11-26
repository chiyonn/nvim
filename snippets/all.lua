local ls = require("luasnip") -- LuaSnipをロード
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("hello", {
    t("println('Hello World!')"), -- クォートを修正
  }),
}
