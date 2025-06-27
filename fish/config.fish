if status is-interactive
    # Commands to run in interactive sessions can go here
	eval (/opt/homebrew/bin/brew shellenv)
	starship init fish | source
	set -Ux GEMINI_API_KEY AIzaSyBdelyJxLBkW9xV8JYtqVbfIc10LcSvHI
end

