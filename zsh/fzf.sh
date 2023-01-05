#!/usr/bin/env bash

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --border"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
