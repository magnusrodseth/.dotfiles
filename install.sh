#!/usr/bin/env bash

# Source all scripts
for file in ./scripts/*.sh; do
  source $file
done

# Setup zsh environment
if [ ! -f ~/.zshrc ]; then
  ln -s ~/.dotfiles/.zshrc ~/.zshrc
fi
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc

# Setup tmux
tmux source ~/.tmux.conf

# Fix Mac keybindings
source ~/.dotfiles/scripts/mac.sh

# Setup Neovim
nvim +PackerSync +qall
