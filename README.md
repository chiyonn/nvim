# Neovim Setup

## 前提条件

MasonでLSPサーバーを自動インストールするには、以下のツールが事前にインストールされている必要があります。

### mise でインストールするツール

```bash
mise install
```

これにより以下がインストールされます:
- `node` / `npm` - pyright, typescript-language-server, css-lsp に必要
- `go` - gopls に必要
- `ruby` - ruby-lsp に必要

### Ruby ビルドが失敗する場合

OpenSSL等のビルド依存パッケージが不足している可能性があります:

```bash
sudo apt install -y libssl-dev libreadline-dev zlib1g-dev libyaml-dev
mise install ruby
```

## トラブルシューティング

### LSPサーバーが自動インストールされない

1. `mise list` で必要なツールがインストールされているか確認
2. nvim内で `:MasonLog` を実行してエラーを確認
3. 手動インストール: `:MasonInstall pyright typescript-language-server gopls css-lsp ruby-lsp`
