local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local extras = require("luasnip.extras")
local rep = extras.rep

-- Typescript React コンポーネントスニペット
ls.add_snippets("typescriptreact", {
  -- スニペット名: component
  s("component", {
    t({"import React from 'react';"}), t({"", ""}),
    t({"import styles from './"}), 
    rep(1), -- ComponentName.module.css を自動生成
    t({".module.css';"}), t({"", ""}),
    t({"", "const "}),
    i(1, "ComponentName"), -- コンポーネント名を一箇所で定義
    t({" = (): React.ReactElement => {"}),
    t({"", "  return ("}),
    t({"", "    <div className={styles."}),
    i(2, "container"), -- CSSクラス名
    t({"}>"}),
    t({"", "      "}), i(3, "Your content here"), -- コンテンツ
    t({"", "    </div>"}),
    t({"", "  );"}),
    t({"", "};", ""}),
    t({"", "export default "}),
    rep(1), -- ComponentName を再利用
    t({";"}),
  }),
})

