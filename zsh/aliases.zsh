alias t="tmux -u"
alias r="rails"

# pip
alias pi="pip install"
alias pr="pip install -r requirements.txt"
alias pipf='pip freeze -r requirements.txt | grep -v "^#"'
alias pipc="pip install --exists-action=w --download-cache=/tmp/pip-cache"

# bundler
alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias ackall="ack -a --ignore-dir={log,coverage,doc,tmp,vendor}"

alias .git="git --work-tree=$HOME/.dotfiles/ --git-dir=$HOME/.dotfiles/.git"

alias ls="ls -G"
alias ll="ls -al"

alias dj="python manage.py"
alias dj_test='REUSE_DB=1 python manage.py test --logging-clear-handlers --nocapture --noinput'

alias json-pretty="python -mjson.tool"

alias mutt="TERM=xterm-256color mutt"

alias mkt-fig="FIG_FILE=~/.mkt.fig.yml FIG_PROJECT_NAME=mkt fig"

alias fx18="/Applications/Firefox-18.app/Contents/MacOS/firefox-bin -P 'Firefox 18'"
alias firefox18="/Applications/Firefox-18.app/Contents/MacOS/firefox-bin -P 'Firefox 18'"

alias vim="nvim"
# alias git="gh"
