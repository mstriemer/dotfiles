if filereadable(expand("~/.dotfiles/vim/vundlerc"))
  source ~/.dotfiles/vim/vundlerc
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
