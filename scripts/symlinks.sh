#!/bin/bash

# Adds symlinks between directories and files
symlink() {
    local from=$1
    local to=$2

    # Check if the file exists
    if [ ! -e "$from" ]; then
        echo "File $from does not exist"
        return 1
    fi

    # Check if the file is a symlink
    if [ -L "$to" ]; then
        echo "File $to is already a symlink"
        return 1
    fi

    # Check if the file is a directory
    if [ -d "$to" ]; then
        echo "File $to is a directory"
        return 1
    fi

    # Check if the file already exists
    if [ -e "$to" ]; then
        echo "File $to already exists"
        return 1
    fi

    # Create the symlink
    ln -s "$from" "$to"
}

symlink ".bashrc" "~/.bashrc"
symlink ".zshrc" "~/.zshrc.pre-oh-my-zsh"
symlink ".zshrc" "~/.zshrc"
symlink ".profile" "~/.profile"
symlink ".bash_profile" "~/.bash_profile"
symlink ".oh-my-zsh" "~/.oh-my-zsh"
symlink ".gitconfig" "~/.gitconfig"
symlink ".config/nvim" "~/.config/nvim"
symlink ".config/lazygit/config.yml" "~/Library/Application\ Support/lazygit/config.yml"
symlink ".config/lazydocker/config.yml" "~/Library/Application\ Support/lazydocker/config.yml"
symlink ".vscode" "~/.vscode"
symlink ".dotfiles/vscode/keybindings.json" "~/Library/Application\ Support/Code/User/keybindings.json"
symlink "vscode/snippets" "~/Library/Application\ Support/Code/User/snippets" 
symlink "ideavim/.ideavimrc" "~/.ideavimrc"
symlink "delta/themes.gitconfig" "~/.themes.gitconfig"
symlink ".config/alacritty/alacritty.yml" "~/.config/alacritty/alacritty.yml"
symlink ".tmux.conf" "~/.tmux.conf"
symlink "zsh" "~/zsh"
