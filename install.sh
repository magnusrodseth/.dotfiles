#!/usr/bin/env bash

# Setup zsh environment
if [ ! -f ~/.zshrc ]; then
  ln -s ~/.dotfiles/.zshrc ~/.zshrc
fi
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc

# Source all scripts
for file in ./scripts/*.sh; do
  source $file
done
