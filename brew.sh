#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install Terminal tools
brew install zsh 
brew install nvim
brew install grep
brew install openssh
brew install git

# Install third-party applications
brew install --cask adobe-acrobat-reader
brew install --cask alfred
brew install --cask bitwarden
brew install docker
brew install --cask dropbox
brew install --cask flux
brew install --cask gitkraken
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask visual-studio-code
brew install --cask microsoft-word
brew install --cask microsoft-powerpoint
brew install --cask microsoft-excel
brew install --cask onedrive
brew install --cask microsoft-remote-desktop
brew install --cask microsoft-teams
brew install --cask notion
brew install --cask discord
brew install --cask messenger
brew install --cask slack
brew install --cask zoom
brew install --cask spectacle
brew install --cask steam
brew install --cask spotify
brew install wireshark

# Run bundle, just in case
brew bundle

# Remove outdated versions from the cellar.
brew cleanup
