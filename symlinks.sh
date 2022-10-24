#!/usr/bin/env zsh 

# Adds symlinks between directories and files
symlink() {
    from=$1
    to=$2

    # Find the .dotfiles directory on the machine
    DOTFILES_DIRECTORY="~/.dotfiles"

    ln -sf "$DOTFILES_DIRECTORY/$source" "$to"
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
symlink "~/.dotfiles/vscode/snippets" "~/Library/Application\ Support/Code/User/snippets" 
symlink "~/.dotfiles/ideavim/.ideavimrc" "~/.ideavimrc"
symlink "~/.dotfiles/delta/themes.gitconfig" "~/.themes.gitconfig"
