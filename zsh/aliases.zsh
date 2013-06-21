alias t="tmux -u"
alias r="rails"

# pip
alias pi="pip install"
alias pr="pip install -r requirements.txt"
alias pf='pip freeze -r requirements.txt | grep -v "^#"'

# bundler
alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias ackall="ack -a --ignore-dir={log,coverage,doc,tmp,vendor}"

alias .git="git --work-tree=$HOME/.dotfiles/ --git-dir=$HOME/.dotfiles/.git"

alias a="workon ."
