#!/bin/bash
# ~/dotfiles/install.sh

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# シンリンクを張る関数
link() {
  local src="$DOTFILES_DIR/$1"
  local dst="$2"

  # 既存ファイルはバックアップ
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    mv "$dst" "${dst}.bak"
    echo "backed up: $dst → ${dst}.bak"
  fi

  ln -sfn "$src" "$dst"
  echo "linked: $dst → $src"
}

# --- ここに追加していくだけ ---
link "zsh/.zshrc"        "$HOME/.zshrc"
link "fish"              "$HOME/.config/fish"
link "nvim"              "$HOME/.config/nvim"
link "xfce/xfce4"        "$HOME/.config/xfce4"
link "plank"             "$HOME/.config/plank"
