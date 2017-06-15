call plug#begin('~/.vim/plugged')
" Plugins go below this.

Plug 'w0rp/ale'
Plug 'roxma/nvim-completion-manager'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
nnoremap <leader>f :FZF<cr>

Plug 'vim-scripts/tComment'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Plugins go above this.
call plug#end()
