# Dotfiles

My dotfiles repository.

## Currently managed

- zsh
- fish
- nvim
- wezterm

## Installation

```sh
git clone git@github.com:AnRi1202/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Install GNU Stow (macOS)
brew install stow

# Apply configurations
stow zsh
stow fish
stow nvim
stow wezterm

