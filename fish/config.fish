if status is-interactive
    # macOS (brew) のみ
    if test (uname) = "Darwin"
        if type -q brew
            eval (/opt/homebrew/bin/brew shellenv)
        end
    end
    # starshipが存在する場合のみ実行
    if type -q starship
        starship init fish | source
    end
    # APIキーは環境変数で管理（set -Ux はローカルでのみ）
end

fish_add_path $HOME/.local/bin

mkdir -p ~/mnt/cadmoto-dev
sshfs cadmoto:/home/ide/dev ~/mnt/cadmoto-dev \
  -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,follow_symlinks
