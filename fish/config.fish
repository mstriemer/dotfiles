set PATH ~/.cargo/bin ~/.mozbuild/node/bin ./node_modules/.bin $PATH
set -g EDITOR nvim
# set -g fish_user_paths "/usr/local/opt/node@8/bin" $fish_user_paths
set -x FZF_DEFAULT_COMMAND 'rg --files --follow --glob "" --ignore-file ~/.ignore'

set -g CC clang-mp-3.7
set -g CXX clang++-mp-3.7

alias g git
alias gg 'git grep'
alias gp 'git push'
alias try './mach try -b do -p linux64,macosx64,win64 -u xpcshell,mochitests,test-verify -t none'
alias tryna './mach try -b do -p linux64,macosx64,win64 -u xpcshell,mochitests,test-verify -t none --no-artifact'

alias dc docker-compose

alias e nvim

alias m './mach'
alias mbrl "./mach build faster; and ./mach run --setpref 'extensions.langpacks.signatures.required=false' --setpref 'intl.multilingual.enabled=true' --setpref 'intl.multilingual.downloadEnabled=true' --setpref 'extensions.getAddons.langpacks.url=https://mock-amo-language-tools.glitch.me/' --setpref 'intl.locale.requested=en-US'"
alias mbr './mach build faster; and ./mach run'
alias mbf './mach build faster'
alias mcb './mach clobber; and ./mach build'
alias mb './mach build'
alias mw './mach watch'
alias mt './mach test'
alias mth './mach test --headless'

bind \cd disable-exit
