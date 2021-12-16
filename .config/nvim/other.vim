" ----- Other configurations -----
" Ensure ripgrep searches from project root
if executable('rg')
    let g:rg_derive_root='true'
endif

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0


" netrx
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 85

