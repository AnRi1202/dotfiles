# Neovim Plugin Usage

この設定で現在使っている主なプラグインと、よく使う操作のメモです。

## 基本

- Leader キーは `Space`
- ファイルツリーは `nvim-tree`
- コメントアウトは `Comment.nvim`

## Plugin 一覧と使い方

### catppuccin

- 役割: カラースキーム
- 現在は `catppuccin` が起動時に適用されます
- 背景は `init.lua` 側で透過設定されています

### nvim-tree

- 役割: ファイルツリー表示
- キー:
  - `Space t`: ファイルツリーの表示/非表示
- コマンド:
  - `:NvimTreeToggle`
  - `:NvimTreeOpen`
  - `:NvimTreeClose`

### Comment.nvim

- 役割: コメントアウト
- キー:
  - `gcc`: 現在行をコメント/解除
  - Visual mode で `gc`: 選択範囲をコメント/解除
  - `gbc`: 現在行をブロックコメント/解除
- 例:
  - `gcc` で 1 行コメント
  - `3gcc` で 3 行コメント
  - Visual mode で複数行選択して `gc`

### nvim-autopairs

- 役割: 括弧やクォートを自動で閉じる
- 例:
  - `(` を入力すると `()` になる
  - `"` を入力すると `""` になる
- 特別なキー操作は追加していません

### rainbow-delimiters.nvim

- 役割: 括弧ごとに色分けして見やすくする
- 特別なキー操作はありません

### mason.nvim

- 役割: LSP やツールのインストール管理
- よく使うコマンド:
  - `:Mason`
- ここから LSP サーバのインストール状況を確認できます

### mason-lspconfig.nvim

- 役割: Mason と LSP 設定の橋渡し
- 現在の対象:
  - `lua_ls`
  - `pyright`
  - `clangd`

### nvim-lspconfig

- 役割: LSP 設定
- 現在有効化している LSP:
  - `lua_ls`
  - `pyright`
  - `clangd`
- よく使うコマンド:
  - `:LspInfo`
  - `:checkhealth`

### nvim-cmp

- 役割: 補完メニュー
- キー:
  - `Ctrl-Space`: 補完候補を開く
  - `Enter`: 選択中の候補を確定
- 補完ソース:
  - LSP
  - バッファ
  - パス

### cmp-nvim-lsp

- 役割: `nvim-cmp` と LSP の補完連携
- 単体で使うキーはありません

### cmp-buffer

- 役割: 開いているバッファ内容から補完
- 単体で使うキーはありません

### cmp-path

- 役割: パス補完
- 単体で使うキーはありません

### LuaSnip

- 役割: スニペット展開の基盤
- この設定では `nvim-cmp` から利用されます
- スニペット定義はまだ追加していません

### cmp_luasnip

- 役割: `nvim-cmp` と `LuaSnip` の連携
- 単体で使うキーはありません

## よく使う操作まとめ

- `Space t`: ファイルツリーを開く/閉じる
- `gcc`: 1 行コメントアウト
- Visual mode で `gc`: 複数行コメントアウト
- `Ctrl-Space`: 補完候補を開く
- `Enter`: 補完候補を確定
- `:Mason`: LSP 管理画面を開く
- `:LspInfo`: LSP 状態確認

## 補足

- `Space t` は `git-tree` ではなく `nvim-tree` を開くキーです
- `lua/plugins/lsp.lua` と `lua/plugins/telescope.lua` はありますが、現在の `init.lua` では `lua/plugins.lua` を読んでいます
