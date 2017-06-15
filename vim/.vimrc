set nocompatible               " be iMproved
filetype off
let mapleader = ','
let maplocalleader = '\'

if filereadable(expand("~/.dotfiles/vim/plugfile.vim"))
  source ~/.dotfiles/vim/plugfile.vim
endif

if filereadable(expand("~/.dotfiles/vim/vimrc"))
  source ~/.dotfiles/vim/vimrc
endif

if has("gui_running") && filereadable(expand("~/.dotfiles/vim/gvimrc"))
  source ~/.dotfiles/vim/gvimrc
endif

if filereadable(expand("~/.dotfiles/vim/vimrc.local"))
  source ~/.dotfiles/vim/vimrc.local
endif
