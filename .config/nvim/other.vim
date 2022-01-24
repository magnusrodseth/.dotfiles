" ----- Other configurations -----
" Ensure ripgrep searches from project root
if executable('rg')
    let g:rg_derive_root='true'
endif

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Auto-format code and add missing imports. Run this automatically on save.
" autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
" autocmd BufWritePre *.go :call CocActionAsync('format')

" Get correct comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+
