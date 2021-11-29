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
set nu
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

" ----- Mapping -----
" , : Go to end of file, go to end of line, create a new blank line
map , GA<enter>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 120<CR>
" TODO: Make vim-ripgrep work
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>def :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>fix :YcmCompleter FixIt<CR>

" ----- Section for vim-plug -----
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Automatically pairs parentheses, quotes, tags, etc...
Plug 'tmsvg/pear-tree'

" Ripgrep
Plug 'jremmen/vim-ripgrep'

" Color scheme
Plug 'joshdick/onedark.vim'

" Extension for git tools (blame, logs, etc...)
Plug 'tpope/vim-fugitive'

" Indentation and coloring for TypeScript
Plug 'leafgarland/typescript-vim'

" View man pages in vim. Grep for the man pages.
Plug 'vim-utils/vim-man'

" Rtags is great for C++
Plug 'lyuts/vim-rtags'

" Improves file finding
Plug 'ctrlpvim/ctrlp.vim'

" Autocompletion
Plug 'ycm-core/YouCompleteMe'

" Undo history visualizer
Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()

" ----- Appearance -----
colorscheme onedark

" ----- Other configurations -----
" Ensure ripgrep searches from project root
if executable('rg')
    let g:rg_derive_root='true'
endif

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

let mapleader = " "

" netrx
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
