#!/usr/bin/env bash

# Find the .dotfiles directory on the machine
DOTFILES_DIRECTORY="~/.dotfiles"

# Add symlinks between the .dotfiles directory and the ~ directory 
ln -s "${DOTFILES_DIRECTORY}/.vim" ~/.vim
ln -s "${DOTFILES_DIRECTORY}/.bashrc" ~/.bashrc
ln -s "${DOTFILES_DIRECTORY}/.zshrc" ~/.zshrc.pre-oh-my-zsh
ln -s "${DOTFILES_DIRECTORY}/.zshrc" ~/.zshrc
ln -s "${DOTFILES_DIRECTORY}/.profile" ~/.profile
ln -s "${DOTFILES_DIRECTORY}/.bash_profile" ~/.bash_profile
ln -s "${DOTFILES_DIRECTORY}/.oh-my-zsh" ~/.oh-my-zsh
ln -s "${DOTFILES_DIRECTORY}/.gitconfig" ~/.gitconfig
ln -s "${DOTFILES_DIRECTORY}/.config/nvim" ~/.config/nvim
