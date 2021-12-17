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
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 20<CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>def :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>fix :YcmCompleter FixIt<CR>

" Ensure cursor stays vertically centered
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

" fif - 'Find in files'
nnoremap <Leader>fif :Ag<CR>

" frg - 'Find using Ripgrep'
nnoremap <Leader>frg :Rg<SPACE>
