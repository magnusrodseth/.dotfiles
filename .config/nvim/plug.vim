" ----- Plugins -----
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Automatically pairs parentheses, quotes, tags, etc...
Plug 'tmsvg/pear-tree'

" Add status line to the bottom of the file
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Ripgrep
Plug 'jremmen/vim-ripgrep'

" Color scheme
Plug 'navarasu/onedark.nvim'

" Extension for git tools (blame, logs, etc...)
Plug 'tpope/vim-fugitive'

" Indentation and coloring for TypeScript
Plug 'leafgarland/typescript-vim'

" The nvim language server protocol (LSP)
Plug 'neovim/nvim-lspconfig'

" View man pages in vim. Grep for the man pages.
Plug 'vim-utils/vim-man'

" Improves file finding
Plug 'ctrlpvim/ctrlp.vim'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Undo history visualizer
Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()
