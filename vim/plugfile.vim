call plug#begin('~/.vim/plugged')
" Plugins go below this.

Plug 'w0rp/ale'
nnoremap <leader>. :ALEFix<cr>

let g:ale_fixers = {
\   'javascript': [
\     'prettier',
\   ],
\  'python': [
\     'black',
\  ],
\}

Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'machakann/vim-highlightedyank'
Plug 'prettier/vim-prettier'

Plug 'jonsmithers/vim-html-template-literals'
" , { 'branch': 'dev' }
Plug 'pangloss/vim-javascript'

let g:htl_css_templates = 1

" nvim-completion-manager is a bit annoying cause it steals enter key presses.
" Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'ervandew/supertab'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
set rtp+=/opt/homebrew/opt/fzf
let g:fzf_preview_window = ['hidden,right,50%', 'ctrl-]']

nnoremap <leader>f :Files<cr>
nnoremap <leader>d :Buffers<cr>

Plug 'vim-scripts/tComment'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Plugins go above this.
call plug#end()
