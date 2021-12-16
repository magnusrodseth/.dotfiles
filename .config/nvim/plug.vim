" ----- Plugins -----
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Automatically pairs parentheses, quotes, tags, etc...
Plug 'tmsvg/pear-tree'

" Add staus line to the bottom of the file
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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

" Improves file finding
Plug 'ctrlpvim/ctrlp.vim'

" Undo history visualizer
Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()
