#!/usr/bin/env bash

# bun completions
[ -s "/Users/magnusrodseth/.bun/_bun" ] && source "/Users/magnusrodseth/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
