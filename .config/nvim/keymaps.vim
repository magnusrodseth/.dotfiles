" ----- Keymaps -----
" , - Go to end of file, go to end of line, create a new blank line
map , GA<enter>

let mapleader = " "


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

" pv - 'Project view'
nnoremap <leader>pv :NERDTreeToggle<CR> 

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" Ensure cursor stays vertically centered
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

" <leader>w<leader>s - Write and source file
nnoremap <leader>w<leader>s :w <bar> :source % <CR>

" fif - 'Find in files'
nnoremap <leader>fif :Ag<CR>

" frg - 'Find using Ripgrep'
nnoremap <leader>frg :Rg<SPACE>

xmap <leader>mm <Plug>Commentary
nmap <leader>mm <Plug>Commentary
omap <leader>mm <Plug>Commentary
nmap <leader>m <Plug>CommentaryLine

" Multicursor mapping
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'gC-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-s>'
let g:multi_cursor_quit_key            = '<Esc>'
