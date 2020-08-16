set shiftwidth=2
let b:ale_linters = ['eslint']
autocmd WinEnter * setlocal colorcolumn=100
autocmd BufRead,BufNewFile * setlocal colorcolumn=100
autocmd WinLeave * setlocal colorcolumn=
