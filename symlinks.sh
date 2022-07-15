#!/usr/bin/env zsh 

# Find the .dotfiles directory on the machine
DOTFILES_DIRECTORY="~/.dotfiles"

# Add symlinks between the .dotfiles directory and the ~ directory 
ln -s "${DOTFILES_DIRECTORY}/.bashrc" ~/.bashrc
ln -s "${DOTFILES_DIRECTORY}/.zshrc" ~/.zshrc.pre-oh-my-zsh
ln -s "${DOTFILES_DIRECTORY}/.zshrc" ~/.zshrc
ln -s "${DOTFILES_DIRECTORY}/.profile" ~/.profile
ln -s "${DOTFILES_DIRECTORY}/.bash_profile" ~/.bash_profile
ln -s "${DOTFILES_DIRECTORY}/.oh-my-zsh" ~/.oh-my-zsh
ln -s "${DOTFILES_DIRECTORY}/.gitconfig" ~/.gitconfig
ln -s "${DOTFILES_DIRECTORY}/.config/nvim" ~/.config/nvim
ln -s "${DOTFILES_DIRECTORY}/.config/lazygit/config.yml" ~/.config/lazygit/config.yml
ln -s "${DOTFILES_DIRECTORY}/.config/lazydocker/config.yml" ~/.config/lazydocker/config.yml
ln -s "${DOTFILES_DIRECTORY}/.config/lazydocker/config.yml" /Users/magnusrodseth/Library/Application\ Support/lazydocker/config.yml
ln -s "${DOTFILES_DIRECTORY}/.ideavimrc" ~/.ideavimrc
ln -s "${DOTFILES_DIRECTORY}/.vscode" ~/.vscode
ln -s "~/.dotfiles/vscode/keybindings.json" "~/Library/Application\ Support/Code/User/keybindings.json" 
ln -s "~/.dotfiles/vscode/keybindings.json" "~/Library/Application\ Support/Code/User/keybindings.json" 
ln -s "~/.dotfiles/vscode/snippets" "~/Library/Application\ Support/Code/User/snippets" 
ln -s "~/.dotfiles/ideavim/.ideavimrc" ~/.ideavimrc
