# My personal `.dotfiles` configuration

## Description ✏️

My personal `.dotfiles` configuration.

## Bootstrapping the new configuration

```sh
# Ensure that Homebrew is installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install applications and tools using Homebrew
sh brew.sh

# Bootstrap shell configuration
sh bootstrap.sh
```

## Sourcing the `nvim` configuration

```sh
# Navigate to the nvim configuration directory
cd ~/.config/nvim

# Open the init.vim file
vim init.vim
```

When in the `init.vim` file, type the following commands:

```vim
" Install plugins
:PlugInstall

" Source the configuration
:source %
```

## Developer Information 🙋🏼‍♂️

Developed by Magnus Rødseth.
