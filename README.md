# My personal `.dotfiles` configuration

## Description ✏️

My personal `.dotfiles` configuration.

Clone the repository into the `~` directory. Then, run the following:

```sh
sh install.sh
```

## Keeping the `Brewfile` up-to-date

To ensure that the [`Brewfile`](./Brewfile) is up-to-date, 
remember to do the following occasionally after installing new packages and casks:

```sh
# Update all package definitions
brew update

# Overwrite currently installed formulae/casks/etc... to Brewfile
brew bundle dump --force
```

## Setting color scheme in terminal

All downloaded color schemes are available in `~/.dotfiles/init/`.

## Setting custom fonts

All downloaded fonts are available in `~/.dotfiles/fonts/`.

## Downloading applications that require using App Store

[Click here](./APP_STORE_APPLICATIONS.md) to read more.
