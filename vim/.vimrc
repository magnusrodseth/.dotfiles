" ----- Basic configuration -----
syntax on

set langmenu=en_US
let $LANG = 'en_US'

set noerrorbells
set tabstop=4 softtabstop=4
set backspace=indent,eol,start
set visualbell
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set number
" Don't wrap overflowed text
set nowrap

" Wrap overflowed text only in Markdown files
augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
augroup END

set smartcase
set noswapfile
set nobackup
set undodir=~/.dotfiles/.vim/undodir
set incsearch

set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey

" ----- Plugins -----
" Ensure vim-plug is installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'

if has('ide')
    " ----- Emulated Vim plugins -----
    Plug 'tpope/vim-surround'
endif

call plug#end()

" ----- Appearance -----

" ----- Keymaps -----
" , - Go to end of file, go to end of line, create a new blank line
nmap , GA<enter>

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" Ensure cursor stays vertically centered
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

" SHIFT + Y yanks to end of line
nmap Y y$
nnoremap <leader>w<leader>s :w <bar> :source % <CR>

" ----- Other -----
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Let NERDTree display hidden files
let NERDTreeShowHidden=1
  
if has('ide')
    " ----- Keymaps -----
    map <leader>rn  <Action>(RenameElement)
endif

