# dotfiles & Gemini セットアップガイド

## 1. 必要なパッケージのインストール

```bash
sudo apt update
sudo apt install -y zsh fish neovim git curl
```

## 2. dotfilesのクローン

```bash
cd ~/Documents
# 既にクローン済みの場合は不要
git clone https://github.com/AnRi1202/dotfiles.git
```

## 3. 各種設定ファイルのリンク

### zsh 設定
```bash
ln -sf ~/Documents/dotfiles/zsh/.zshrc ~/.zshrc
```

### fish 設定
```bash
mkdir -p ~/.config/fish
ln -sf ~/Documents/dotfiles/fish/config.fish ~/.config/fish/config.fish
```

shellの切り替えは`fish`,`bash`と打てばできます。
starshipをinstallすれば、シェルの見た目を変えられます。

### Neovim 設定
```bash
mkdir -p ~/.config/nvim
ln -sf ~/Documents/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/Documents/dotfiles/nvim/lazy-lock.json ~/.config/nvim/lazy-lock.json
```

---

## 4. Gemini CLI のインストール方法

### Pythonパッケージとしてインストール
```bash
pip3 install --user gemini-cli
```

### 公式リポジトリからのインストール例
```bash
# 公式: https://github.com/daangn/gemini-cli
pipx install gemini-cli  # pipx推奨
# または
pip3 install --user gemini-cli
```

### 初期セットアップ
```bash
gemini login  # APIキーなどの設定
```

---




## メモ
- dotfilesの内容は必要に応じて編集・拡張してください。
- Gemini CLIの詳細は公式リポジトリや`gemini --help`で確認できます。 