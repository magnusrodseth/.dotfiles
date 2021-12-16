" ----- Keymaps -----
" , : Go to end of file, go to end of line, create a new blank line
map , GA<enter>

let mapleader = " "
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
" Ensure cursor stays vertically centered
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz
