" ----- Basic configuration -----
syntax on

set langmenu=en_US
let $LANG = 'en_US'

set noerrorbells
set tabstop=4 softtabstop=4
set backspace=indent,eol,start

set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set number
" Don't wrap overflowed text
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.dotfiles/.vim/undodir
set undofile
" Use incremental search
set incsearch

set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey
