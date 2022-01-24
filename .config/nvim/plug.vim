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

" Conquerer of Completion (COC)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Vim Commentary, for commenting out code
Plug 'tpope/vim-commentary'

" Undo history visualizer
Plug 'mbbill/undotree'

" Kotlin syntax highlighting
Plug 'udalov/kotlin-vim'

" Surround plugin
Plug 'tpope/vim-surround'

" Multiple cursors 
Plug 'terryma/vim-multiple-cursors'

" Nerdtree plugin
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" TODO: Remove this when done playing around
Plug 'ThePrimeagen/vim-be-good'

" Svelte syntax highlighting
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'jvirtanen/vim-hcl'

" Initialize plugin system
call plug#end()




