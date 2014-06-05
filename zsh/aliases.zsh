alias t="tmux -u"
alias r="rails"

# pip
alias pi="pip install"
alias pr="pip install -r requirements.txt"
alias pf='pip freeze -r requirements.txt | grep -v "^#"'
alias pipc="pip install --no-deps --exists-action=w --download-cache=/tmp/pip-cache"

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

alias dj="./manage.py"

# zamboni
alias mkt="./manage.py --settings=settings_local_mkt"
alias mkt_test='mkt test --logging-clear-handlers --nocapture --noinput'
alias mkt_test_api='mkt_test --config=mkt/api/tests/nose.cfg'
alias amo="./manage.py --settings=settings_local_amo"
alias amo_test='amo test --logging-clear-handlers --nocapture --noinput'
alias amo_test_api='amo_test --config=mkt/api/tests/nose.cfg'

alias json-pretty="python -mjson.tool"
