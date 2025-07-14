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
    # 必要ならAPIキーの設定（環境変数で管理推奨）
    # set -Ux GEMINI_API_KEY AIzaSyBdelyJxLBkW9xV8JYtqVbfIc10LcSvHI
end

