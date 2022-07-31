# My personal `.dotfiles` configuration

## Description ✏️

My personal `.dotfiles` configuration.

## Getting started

Clone the repository into the `~` directory, in order for the symlinks below to work.

## Bootstrapping the new configuration

```sh
# Ensure that Homebrew is installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install applications and tools using Homebrew
sh brew.sh

# Run Brewfile
brew bundle

# Bootstrap shell configuration
sh bootstrap.sh

# Add symlinks
sh symlinks.sh

# Navigate to the nvim configuration directory
cd ~/.config/nvim

# Clean and install Neovim dependencies
nvim +PackerSync
```

To ensure that the [`Brewfile`](./Brewfile) is up to date, remember to do the following:

```sh
# Update all package definitions
brew update

# Write currently installed formulae/casks/etc... to Brewfile
brew bundle dump --global
```

## Downloading applications that requires using App Store

[Click here](./APP_STORE_APPLICATIONS.md) to read more.

## Developer Information 🙋🏼‍♂️

Developed by Magnus Rødseth.
