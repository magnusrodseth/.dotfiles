#!/usr/bin/env bash

# Ensure Homebrew is installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Install Homebrew packages from Brewfile
brew bundle install

# Upgrade any already-installed formulae.
brew upgrade

# Remove outdated versions from the cellar.
brew cleanup
