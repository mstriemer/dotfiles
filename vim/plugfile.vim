call plug#begin('~/.vim/plugged')
" Plugins go below this.

Plug 'w0rp/ale'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" nvim-completion-manager is a bit annoying cause it steals enter key presses.
" Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'ervandew/supertab'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <leader>f :FZF<cr>
nnoremap <silent> <leader>d :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>
" nnoremap <leader>d :ls<cr>:b<space>

Plug 'vim-scripts/tComment'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Plugins go above this.
call plug#end()
